CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- algo 1
DO $$
DECLARE
    my_id1 uuid = uuid_generate_v1();
BEGIN
    INSERT INTO knowledge_artifact(id, creation_date, last_modified_at)
    VALUES (my_id1, current_timestamp , current_timestamp );

    -- algorithm
    INSERT INTO algorithm (id, name, acronym, computation_model, intent, problem, input_format, algo_parameter, output_format, solution)
    VALUES
-- algorithm 1
(my_id1,
 'Variational Quantum Eigensolver',
 'VQE',
 1,
 '>Der VQE Algorithmus [[1]](https://arxiv.org/abs/1304.3061)[[2]](https://arxiv.org/abs/1304.3061) ist ein heuristischer hybrider Quanten-Algorithmus, mit welchem der kleinste (oder größte) Eigenwert inklusive Eigenvektor einer (meist) großen Matrix sehr gut angenähert werden kann. Hierbei wird ein quantenmechanischer Zustand auf einem NISQ-Rechner auf Basis von vorgegebenen Parametern präpariert und in der computational basis ($|0\rangle$ und  $|1\rangle$) gemessen. Das Ergebnis kann durch eine Kosten-Funktion ein Wert zugeordnet werden, welchen es zu minimieren  (oder maximieren) gilt. Ein klassischer Optimierungsalgorithmus verändert auf Grundlage des Wertes der Kosten-Funktion die gegebenen Parameter, durch welche wiederum ein Zustand auf dem Quantencomputer vorbereitet wird. Durch geeignetes Vorgehen bei der Zustandspräparierung und der klassischen Optimierung können Speedups erreicht werden.'
    ,
 'Viele wirtschaftlich relevante Fragestellungen der Neuzeit lassen sich als Optimierungsprobleme auffassen. So behandelt man beim Traveling-Salesman-Problem (TSP) die Aufgabe, eine Person zwischen verschiedenen Standorten mit gegebenen Distanzen möglichst effizient (z.B. möglichst schnell) reisen zu lassen. Solche und ähnliche Fragestellungen können als sogenanntes *Eigenwert-Problem* kodiert werden, in welchem bei gegebener Matrix $A$ Zahlen $\lambda_i$ und Vektoren $v_i$ gefunden werden sollen, sodass Folgendes gilt:
\$\$
Av_i = \lambda_iv_i
\$\$
Bei Optimierungsproblemen kann dies oft auf das Finden des größten bzw. kleinsten Eigenwertes und des dazugehörigen Eigenvektors beschränkt werden. Der Einsatz von variationellen Methoden wie dem VQE kann vor Allem bei quantenmechanischen Problemen, beispielsweise bei der Simulation von Molekülen in der Medikamentenforschung eingesetzt werden. [[3]](https://www.nature.com/articles/s41467-019-10988-2)
Quantenmechanisch übersetzt, wird der VQE dafür genutzt, den Energie-Grundzustand (niedrigster Eigenwert) eines Hamiltonoperators (Matrix) zu berechnen, welcher das System beschreibt. In der folgenden Beschreibung des Algorithmus'' wird auch auf die Mathematik und auf ein spezielles Vorgehen beim Präparierungsprozess eingegangen.',
 '* quadratische $n\times n$ Matrix A (als Ausgangspunkt)
* Gewünschte Anzahl von Verschränkungen $m$
* $n(m+1)$ Drehwinkel
* Anzahl klassischer Optimierungsschritte $k$',
 '* Anz. Qubits/Breite ($w$) des Schaltkreises: $w=n$
 * Tiefe ($d$) des Schaltkreises: abhängig von der gewählten Verschränkungsmethode, exemplarisch für die besprochene:

\$\$
d_{ent} = (2n+1)m~,~d_{rot} = m+1
\Rightarrow d = d_{ent} + d_{rot} = 2m(n+1)
\$\$',
 '* n-dimensionaler Vektor $|\psi_F\rangle$ (von zuletzt erhaltenen Optimierungsparametern abhängige Wellenfunktion)
* Skalarer Eigenwert durch Berechnung des Erwartungswertes $\langle\psi_F|A|\psi_F\rangle$',

 '## *Beschreibung des Algorithmus*
Der Algorithmus besteht aus der häufigen Wiederholung der folgenden Schritte, wobei QC quantenmechanische und PC klassische Anteile des Algorithmus beschreibt:
1. Präparierung eines Zustandes auf Grundlage von (Anfangs-)Parametern (QC)
2. Messung des Zustandes in der computational basis (QC)
3. Berechnung des Energie-Erwartungswertes mit diesem Zustand (PC)
4. Klassische Optimierung der Parameter basierend auf den Ergebnissen aus Schritt 3. (PC)

Auf Schritt 4 folgt wiederum Schritt 1 mit den neu erhaltenen Parametern.
### 1. Präparierung
Schon der erste Schritt beinhaltet seine Tücken. Die Zustandspräparierung ist nämlich der wichtigste Teil, durch welchen Speedups des Algorithmus'' gegenüber klassischer Alternativen erreicht werden könnten. In diesem Abschnitt wird eine sehr generische Zustandspräparierung behandelt, anhand derer das Konzept verdeutlicht werden soll. Die hier vorgestellte Zustandspräparierung von $n$ Qubits sieht wie folgt aus:

\$\$
|\psi\rangle = \big(U_\text{ent}U_\text{rot}(\vec{\theta})\big)^m|0\rangle^n
\$\$

Hierbei ist $U_\text{ent}$ ein Verschränkungsoperator, $U_\text{rot}$ ein Rotationsoperator und $m$ die (variable) Anzahl von (erneuten) Verschränkungen/Rotationen. Wie bei universellen Quantencomputern üblich, wird davon ausgegangen, dass die Qubits alle im Zustand $|0\rangle$ initialisiert werden können. Auf die einzelnen Bestandteile des Algorithmus wird im Folgenden eingegangen.<br><br>
#### Verschränkung $U_{ent}$
Quantencomputer haben unter anderem den Vorteil, dass durch Verschränkung ein hohe Anzahl parallel ausführbarer Operationen ermöglicht wird. Das wird auch hier bei der Zustandspräparierung ausgenutzt, bei welcher alle beteiligten Qubits miteinander verschränkt werden sollen. Formal ist die leichteste Form der Verschränkung zweier Qubits im $|0\rangle$-Zustand durch die Hintereinanderausführung eines Hadamard-Gatters auf das Control-Qubit und eines CNOT-Gatters zu realisieren:

\$\$
C_N(H\otimes\mathbb{I})|00\rangle=\frac{1}{\sqrt{2}}\big(|00\rangle+|11\rangle\big)\Rightarrow~\text{test}
\$\$

Bei mehreren Qubits gibt es verschiedenste Arten, diese miteinander zu verschränken. Hier soll eine ''lineare Verschränkung'' zwischen den Qubits gezeigt werden, bei welcher q0 mit q1, q1 mit q2 usw. verschränkt wird. In einem Quantenschaltkreis mit 4 Qubits könnte das wie folgt aussehen (die Hadamard-Gatter am Ende des Schaltkreises dienen lediglich dazu, den Basiswechsel vollständig auszuführen):

\begin{quantikz}
\lstick{$q_0:~\ket{0}$}\slice[style = black]{} & \gate{H} & \ctrl{1} &\qw &\qw &\qw &\qw & \gate{H}\slice[style = black]{} & \qw\\
\lstick{$q_1:~\ket{0}$} & \qw  & \targ{} & \gate{H} & \ctrl{1} &\qw &\qw & \gate{H} & \qw\\
\lstick{$q_2:~\ket{0}$} &\qw &\qw &\qw & \targ{} & \gate{H} & \ctrl{1} & \gate{H} & \qw \\
\lstick{$q_3:~\ket{0}$} &\qw &\qw &\qw &\qw &\qw & \targ{} & \qw & \qw
\end{quantikz}

Abhängig von der gewählten Tiefe $m$ wird die gewählte Verschränkung dementsprechend wiederholt.
#### Rotation $U_{rot}$
Die Matrizen, die Drehungen (auf der Blochsphäre) der einzelnen Qubits beschreiben, stellen den eigentlich zu optimierenden Teil dar. Diese Drehungen hängen von Winkeln ab, welche die zu optimierenden Parameter sind. In diesem Beispiel werden 1-Qubit $R_Y$-Dreh-Matrizen verwendet, welche wie folgt aussehen:

\$\$
R_Y(\theta)=\exp\big(-i\theta\sigma_y/2\big)=\cos(\theta/2)\mathbb{1}-i\sin(\theta/2)\sigma_y=\begin{pmatrix}
\cos(\theta/2) & -\sin(\theta/2) \\ \sin(\theta/2) & \cos(\theta/2)
\end{pmatrix}
\$\$

$\sigma_y$ bezeichnet die Pauli-y-Matrix und kann für analoge Drehungen um x- und z-Achse durch eben jene ersetzt werden. In diesem Beispiel wurde eine Drehung um die y-Achse der Bloch-Sphäre gewählt, da die dabei entstehenden Drehmatrizen keine komplexen Einträge enthalten, die bei der Berechnung eines reellen Erwartungswertes hinderlich sein könnten.
Um die Verschränkung vollständig nutzen zu können, werden sowohl vor, als auch nach dieser Drehungen stattfinden, weswegen bei der Tiefe $m$ des Schaltkreises $n(m+1)$ Winkel bzw. Parameter gebraucht werden. Für $m=1$ und $n=4$ werden somit 8 Winkel benötigt und die Implementierung in den Schaltkreis kann in folgender Grafik gesehen werden:

\begin{quantikz}
\lstick{$q_0:~\ket{0}$} & \gate{R_Y(\theta_1)}\slice[style = black]{} & \gate{H} & \ctrl{1} &\qw &\qw &\qw &\qw & \gate{H}\slice[style = black]{} & \gate{R_Y(\theta_5)} &\qw\\
\lstick{$q_1:~\ket{0}$} & \gate{R_Y(\theta_2)} & \qw  & \targ{} & \gate{H} & \ctrl{1} &\qw &\qw & \gate{H} & \gate{R_Y(\theta_6)} & \qw\\
\lstick{$q_2:~\ket{0}$} & \gate{R_Y(\theta_3)} &\qw &\qw &\qw & \targ{} & \gate{H} & \ctrl{1} & \gate{H} & \gate{R_Y(\theta_7)} & \qw \\
\lstick{$q_3:~\ket{0}$} & \gate{R_Y(\theta_4)} &\qw &\qw &\qw &\qw &\qw & \targ{} & \qw & \gate{R_Y(\theta_8)} &\qw
\end{quantikz}

### 2. - 4. Messung, Erwartungswertberechnung und Optimierung
Die Messung des Zustandes erfolgt in der computational basis und hängt von der ausgewählten Optimierungsstrategie ab. Im Fall des Einsatzes von *simultaneous perturbation stochastic approximation* (SPSA) [[4]](https://arxiv.org/abs/1704.05018) werden für einen Optimierungsschritt der Parameter zwei Zustände und die dazugehörigen Erwartungswerte benötigt, weshalb für einen Durchlauf des Algorithmus'' Schritt 1,2 und 3 zweimal ausgeführt werden müssen, bevor die eigentliche Optimierung stattfinden kann.
Nach der gewünschten Anzahl der Iterationsschritte (für die klassische Optimierung) erhält man ein finales Set von Parametern $\theta_F$, welche für die Berechnung der finalen Wellenfunktion $|\psi_F\rangle$ genutzt wird. Diese ist dann (bei genügend Iterationsschritten und bei vernünftiger Berechnung) ein Eigenzustand/-vektor der Matrix $A$. Der dazugehörige (minimalste) Eigenwert berechnet sich durch den Erwartungswert $\lambda_{min}=\langle\psi_F|A|\psi_F\rangle$.

### Referenzen
* [1] Peruzzo, A. et. al., https://arxiv.org/abs/1304.3061 (2013)
* [2] McClear, J.R. et. al., https://arxiv.org/abs/1509.04279 (2015)
* [3] Grimsle, H.R. et. al., https://www.nature.com/articles/s41467-019-10988-2 (2019)
* [4] Kandala, A. et. al., https://www.nature.com/articles/s41467-019-10988-2 (2017)');

INSERT INTO quantum_algorithm(id, nisq_ready) VALUES (my_id1, true);
END $$;






