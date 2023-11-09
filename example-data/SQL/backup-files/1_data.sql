--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Debian 12.5-1.pgdg100+1)
-- Dumped by pg_dump version 16.0

-- Started on 2023-11-09 14:09:14 CET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3328 (class 0 OID 16481)
-- Dependencies: 224
-- Data for Name: knowledge_artifact; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('379ec44e-1ce5-11eb-adf2-0242ac160002', '2020-11-02 08:27:17.116336', '2020-11-02 08:27:17.116336');
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('b61578ed-df66-44ec-954c-9bcf9906f490', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('4ab28e22-cdf9-45f8-b872-f4d9d2757b6d', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('16aa96c5-b668-4df9-a03f-96d323708676', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('9aa16271-6ea1-4e15-ad9d-6e6e264a0ad0', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('b3b616b6-6e4a-49b1-baf7-f08fa962a441', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('170eff66-733f-4043-a56b-3189bf474d62', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('1066e01c-e3ac-4830-b610-eb613187850c', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('f05c9136-2f9f-433f-9c35-85009111ee3c', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('3c7722e2-09c3-4667-9a0d-a45d3ddc42ae', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('8179d686-afa1-4f03-8ec9-95899002488a', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('7de45de7-aca2-4966-a5f9-8ef018688722', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('0e5af2cf-f3c8-48dd-9743-cfdea65f320f', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('10bc87a9-9317-41c8-8d19-fc6594d23383', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('e7a33256-0ab4-4baa-a805-0296b97960d6', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('c293bbf4-b8cf-4393-a403-a359a77b868c', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('816a96fc-696d-419f-8bd4-98752cc72aac', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('871f7eea-4722-4728-8cd9-1e61fe2dd285', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('649859eb-7709-4beb-9738-d57f11d80455', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('0f6587f3-6b6b-4dd4-98aa-b464913b8c14', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('03223c33-7cd2-4496-84c9-c654da405b19', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('14c120d2-f16e-42d0-a280-3d8857c8e7be', NULL, NULL);


--
-- TOC entry 3306 (class 0 OID 16394)
-- Dependencies: 202
-- Data for Name: algorithm; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES ('VQE', '* Anz. Qubits/Breite ($w$) des Schaltkreises: $w=n$
 * Tiefe ($d$) des Schaltkreises: abhängig von der gewählten Verschränkungsmethode, exemplarisch für die besprochene:

\$\$
d_{ent} = (2n+1)m~,~d_{rot} = m+1
\Rightarrow d = d_{ent} + d_{rot} = 2m(n+1)
\$\$', NULL, 1, '* quadratische $n\times n$ Matrix A (als Ausgangspunkt)
* Gewünschte Anzahl von Verschränkungen $m$
* $n(m+1)$ Drehwinkel
* Anzahl klassischer Optimierungsschritte $k$', '>Der VQE Algorithmus [[1]](https://arxiv.org/abs/1304.3061)[[2]](https://arxiv.org/abs/1304.3061) ist ein heuristischer hybrider Quanten-Algorithmus, mit welchem der kleinste (oder größte) Eigenwert inklusive Eigenvektor einer (meist) großen Matrix sehr gut angenähert werden kann. Hierbei wird ein quantenmechanischer Zustand auf einem NISQ-Rechner auf Basis von vorgegebenen Parametern präpariert und in der computational basis ($|0\rangle$ und  $|1\rangle$) gemessen. Das Ergebnis kann durch eine Kosten-Funktion ein Wert zugeordnet werden, welchen es zu minimieren  (oder maximieren) gilt. Ein klassischer Optimierungsalgorithmus verändert auf Grundlage des Wertes der Kosten-Funktion die gegebenen Parameter, durch welche wiederum ein Zustand auf dem Quantencomputer vorbereitet wird. Durch geeignetes Vorgehen bei der Zustandspräparierung und der klassischen Optimierung können Speedups erreicht werden.', 'Variational Quantum Eigensolver', '* n-dimensionaler Vektor $|\psi_F\rangle$ (von zuletzt erhaltenen Optimierungsparametern abhängige Wellenfunktion)
* Skalarer Eigenwert durch Berechnung des Erwartungswertes $\langle\psi_F|A|\psi_F\rangle$', 'Viele wirtschaftlich relevante Fragestellungen der Neuzeit lassen sich als Optimierungsprobleme auffassen. So behandelt man beim Traveling-Salesman-Problem (TSP) die Aufgabe, eine Person zwischen verschiedenen Standorten mit gegebenen Distanzen möglichst effizient (z.B. möglichst schnell) reisen zu lassen. Solche und ähnliche Fragestellungen können als sogenanntes *Eigenwert-Problem* kodiert werden, in welchem bei gegebener Matrix $A$ Zahlen $\lambda_i$ und Vektoren $v_i$ gefunden werden sollen, sodass Folgendes gilt:
\$\$
Av_i = \lambda_iv_i
\$\$
Bei Optimierungsproblemen kann dies oft auf das Finden des größten bzw. kleinsten Eigenwertes und des dazugehörigen Eigenvektors beschränkt werden. Der Einsatz von variationellen Methoden wie dem VQE kann vor Allem bei quantenmechanischen Problemen, beispielsweise bei der Simulation von Molekülen in der Medikamentenforschung eingesetzt werden. [[3]](https://www.nature.com/articles/s41467-019-10988-2)
Quantenmechanisch übersetzt, wird der VQE dafür genutzt, den Energie-Grundzustand (niedrigster Eigenwert) eines Hamiltonoperators (Matrix) zu berechnen, welcher das System beschreibt. In der folgenden Beschreibung des Algorithmus'' wird auch auf die Mathematik und auf ein spezielles Vorgehen beim Präparierungsprozess eingegangen.', '## *Beschreibung des Algorithmus*
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
* [4] Kandala, A. et. al., https://www.nature.com/articles/s41467-019-10988-2 (2017)', '379ec44e-1ce5-11eb-adf2-0242ac160002');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, 'N: N > 0, N odd', NULL, 1, 'N: Integer', 'Integer factorization', 'Shor', 'Factors: Integer Array', 'The algorithm of Shor is a ploynomial-time quantum computer algorithm for factorizing integers. It solves the following problem: GIven an integer N, find its prime factors. The American mathematician Peter Shor invented the algorithm in 1994.', NULL, 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES ('QPE', 'U: Unitary Matrix; Eigenvector: Eigenvector of U', NULL, 1, 'U: Float Array; Eigenvector: Integer Array', 'Estimates eigenvalues, or phase, of an eigenvector of a unitary matrix', 'Quantum Phase Estimation', 'Eigenvalue: Float', 'The quantum phase estimation algorithm estimates the eigenvalues, or phase, of an eigenvector of a unitary matrix. It is frequently used as a subroutine in other quantum algorithms, such as the algorithm of Shor.', NULL, 'b61578ed-df66-44ec-954c-9bcf9906f490');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES ('QRL1', NULL, NULL, 1, NULL, 'Reinforcement learning', 'Quantum Reinforcement Learning 1', NULL, 'With this algorithm, Dong et al. introduce an approach to quantum reinforcement learning (QRL) that takes advantage of effects from quantum physics and works fundamentally different than any classical RL method, however, some similarities still remain. For example, QRL, like classical RL methods, also contain a policy, reward function and an environment. However, Dong et al. note that their QRL algorithm differs to classical RL algorithms in intrinsic parts like representation, policy, parallelism and update operation. States and actions are also different in both approaches. In this QRL method, states are referred to as eigen states and actions as eigen actions and are able to be in a superposition state. Superposition allows the algorithm, among other things, to better balance exploration and exploitation. Recall that in quantum physics, whenever a qubit in superposition is measured, it collapses and takes on one state according to some probability. The algorithm takes advantage of this behaviour in the action selection policy. More specifically, an action is measured in relation to some state and hence collapses to one of its eigen actions according to some probability this action is then selected. This means that the probability of actions that are considered good should be amplified. The probability amplitudes must be updated throughout the algorithm. The method to update the probability amplitude is based on the Grover iteration from Grover’s algorithm, a famous quantum algorithm for database search. The method contains a oracle or black box that is used to tell whether an action is good or bad. Loosely formulated, the complete algorithm works as follows. The first step is to initialize the state and action. After this an action is observed and executed to receive the next state and reward. Then the state value and probability amplitudes are updated accordingly. The probability amplitudes are updated in such a way that the probability for good actions is amplified and shrunk for bad ones. This process is done repeatedly. And so, after a number of episodes, the algorithm is able to learn a policy.', NULL, '4ab28e22-cdf9-45f8-b872-f4d9d2757b6d');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES ('QSVM1', NULL, NULL, 1, NULL, 'Classification', 'Quantum Support Vector Machine 1', NULL, 'Havlicek et al. show that a quantum version of the SVM can be implemented in the following way. Two distinct approaches are available for this problem. The first method uses a variational circuit to compute the separating hyperplane while the second method estimates the kernel function in order to optimize the classifier directly. The latter method is then used used as part of a conventional SVM. In both methods the data is provided classically while the quantum state space is used as the feature space. It is furthermore noted that in order to obtain a quantum advantage, the kernel cannot be estimated classically, i.e., if the kernel is too simple, the quantum SVM does not show a quantum advantage over a normal SVM. [Supervised learning with quantum enhanced feature spaces, Havlicek et al.]', NULL, '16aa96c5-b668-4df9-a03f-96d323708676');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES ('QSVM2', NULL, NULL, 1, NULL, 'Classification', 'Quantum Support Vector Machine 2', NULL, 'The training of quantum support vector machines (QSVM) can also be run on a quantum annealer, as demonstrated by Willsch et al. in a recent paper. To achieve this, the problem, like any problem solved via quantum annealing (QA), must first be formulated as a QUBO. However, the training of SVMs entails solving equations that contain real numbers whereas a QUBO consists of binary values. Willsch et al. use a special encoding to overcome this and thus are able to formulate the problem as a QUBO. Willsch et al. investigate the performance of their QSVM on a DW2000Q quantum annealer. They note that the quantum annealer returns in addition to the global optimum, a range of solutions that are close to the optimal. They furthermore note that this is advantageous as the generalization ability may potentially be improved by using a combination of the produced solutions. In summary, a QVSM can be trained using via QA by formulating the problem as a QUBO. A QA device, such as the DW2000Q, produces optimal and near-optimal solutions and a combination of these solutions can potentially improve the generalization behaviour.', NULL, '9aa16271-6ea1-4e15-ad9d-6e6e264a0ad0');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Grover-SAT', NULL, NULL, NULL, '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Grover-Truthtable', NULL, NULL, NULL, '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Simon', NULL, NULL, NULL, '871f7eea-4722-4728-8cd9-1e61fe2dd285');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES ('QAOA', NULL, NULL, 2, NULL, NULL, 'Quantum Approximate Optimization Algorithm', NULL, NULL, NULL, '0f6587f3-6b6b-4dd4-98aa-b464913b8c14');


--
-- TOC entry 3313 (class 0 OID 16418)
-- Dependencies: 209
-- Data for Name: application_area; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.application_area (id, name) VALUES ('ce597b06-c55e-46ce-976c-8de398e049b9', 'Cryptography');
INSERT INTO public.application_area (id, name) VALUES ('12b0d326-8b6a-4f7c-8717-d9cc5eb4a567', 'Classification');
INSERT INTO public.application_area (id, name) VALUES ('da982d08-30a8-48f7-8db1-204c0b4f1865', 'Machine Learning');


--
-- TOC entry 3307 (class 0 OID 16400)
-- Dependencies: 203
-- Data for Name: algorithm_application_area; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', 'ce597b06-c55e-46ce-976c-8de398e049b9');
INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('b61578ed-df66-44ec-954c-9bcf9906f490', 'ce597b06-c55e-46ce-976c-8de398e049b9');
INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('4ab28e22-cdf9-45f8-b872-f4d9d2757b6d', 'da982d08-30a8-48f7-8db1-204c0b4f1865');
INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('16aa96c5-b668-4df9-a03f-96d323708676', 'da982d08-30a8-48f7-8db1-204c0b4f1865');
INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('16aa96c5-b668-4df9-a03f-96d323708676', '12b0d326-8b6a-4f7c-8717-d9cc5eb4a567');
INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('9aa16271-6ea1-4e15-ad9d-6e6e264a0ad0', 'da982d08-30a8-48f7-8db1-204c0b4f1865');
INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('9aa16271-6ea1-4e15-ad9d-6e6e264a0ad0', '12b0d326-8b6a-4f7c-8717-d9cc5eb4a567');


--
-- TOC entry 3351 (class 0 OID 17609)
-- Dependencies: 247
-- Data for Name: learning_method; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3341 (class 0 OID 17541)
-- Dependencies: 237
-- Data for Name: algorithm_learning_method; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3331 (class 0 OID 16493)
-- Dependencies: 227
-- Data for Name: problem_type; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.problem_type (id, name, parent_problem_type) VALUES ('76d773b5-4635-4d67-877c-e565b9f08496', 'Integer Factorization', NULL);


--
-- TOC entry 3308 (class 0 OID 16403)
-- Dependencies: 204
-- Data for Name: algorithm_problem_type; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_problem_type (algorithm_id, problem_type_id) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', '76d773b5-4635-4d67-877c-e565b9f08496');


--
-- TOC entry 3332 (class 0 OID 16496)
-- Dependencies: 228
-- Data for Name: publication; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1137/S0097539795293172', 'Polynomial-Time Algorithms for Prime Factorization and Discrete Logarithms on a Quantum Computer', 'https://arxiv.org/abs/quant-ph/9508027', 'f05c9136-2f9f-433f-9c35-85009111ee3c');
INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1109/TSMCB.2008.925743', 'Quantum reinforcement learning', 'https://arxiv.org/abs/0810.3828', '87d697a4-6256-4f84-b545-c2024ab380c2');
INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1038/s41586-019-0980-2', 'Supervised learning with quantum enhanced feature spaces', 'https://arxiv.org/abs/1804.11326', '3aac6a37-10de-4a95-a2bd-381d357df2a4');
INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1016/j.cpc.2019.107006', 'Support vector machines on the D-Wave quantum annealer', 'https://arxiv.org/abs/1906.06283', 'ae6bdf6f-2656-45bd-9b96-0820eea3cdab');


--
-- TOC entry 3309 (class 0 OID 16406)
-- Dependencies: 205
-- Data for Name: algorithm_publication; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_publication (algorithm_id, publication_id) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', 'f05c9136-2f9f-433f-9c35-85009111ee3c');
INSERT INTO public.algorithm_publication (algorithm_id, publication_id) VALUES ('b61578ed-df66-44ec-954c-9bcf9906f490', 'f05c9136-2f9f-433f-9c35-85009111ee3c');
INSERT INTO public.algorithm_publication (algorithm_id, publication_id) VALUES ('4ab28e22-cdf9-45f8-b872-f4d9d2757b6d', '87d697a4-6256-4f84-b545-c2024ab380c2');
INSERT INTO public.algorithm_publication (algorithm_id, publication_id) VALUES ('16aa96c5-b668-4df9-a03f-96d323708676', '3aac6a37-10de-4a95-a2bd-381d357df2a4');
INSERT INTO public.algorithm_publication (algorithm_id, publication_id) VALUES ('9aa16271-6ea1-4e15-ad9d-6e6e264a0ad0', 'ae6bdf6f-2656-45bd-9b96-0820eea3cdab');


--
-- TOC entry 3311 (class 0 OID 16412)
-- Dependencies: 207
-- Data for Name: algorithm_relation_type; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3310 (class 0 OID 16409)
-- Dependencies: 206
-- Data for Name: algorithm_relation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3356 (class 0 OID 17640)
-- Dependencies: 252
-- Data for Name: revinfo; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.revinfo (rev, revtstmp) VALUES (2, 1699534064433);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (3, 1699534071271);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (4, 1699534089664);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (5, 1699535001297);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (6, 1699535041915);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (7, 1699535068636);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (8, 1699535114399);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (9, 1699535127869);


--
-- TOC entry 3350 (class 0 OID 17604)
-- Dependencies: 246
-- Data for Name: knowledge_artifact_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('0f6587f3-6b6b-4dd4-98aa-b464913b8c14', 2, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('0f6587f3-6b6b-4dd4-98aa-b464913b8c14', 3, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('03223c33-7cd2-4496-84c9-c654da405b19', 4, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('03223c33-7cd2-4496-84c9-c654da405b19', 5, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('03223c33-7cd2-4496-84c9-c654da405b19', 6, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('03223c33-7cd2-4496-84c9-c654da405b19', 7, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('03223c33-7cd2-4496-84c9-c654da405b19', 8, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('03223c33-7cd2-4496-84c9-c654da405b19', 9, 1, NULL, NULL);


--
-- TOC entry 3342 (class 0 OID 17546)
-- Dependencies: 238
-- Data for Name: algorithm_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('0f6587f3-6b6b-4dd4-98aa-b464913b8c14', 2, NULL, NULL, NULL, 2, NULL, NULL, 'Quantum Approximate Optimization Algorithm', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('0f6587f3-6b6b-4dd4-98aa-b464913b8c14', 3, 'QAOA', NULL, NULL, 2, NULL, NULL, 'Quantum Approximate Optimization Algorithm', NULL, NULL, NULL);


--
-- TOC entry 3340 (class 0 OID 16529)
-- Dependencies: 236
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.tag (value, category) VALUES ('Phase Estimation', 'Subroutine');
INSERT INTO public.tag (value, category) VALUES ('Reinforcement learning', 'Algorithm class');
INSERT INTO public.tag (value, category) VALUES ('Classification', 'Algorithm class');
INSERT INTO public.tag (value, category) VALUES ('Factorization', 'Algorithm class');


--
-- TOC entry 3312 (class 0 OID 16415)
-- Dependencies: 208
-- Data for Name: algorithm_tag; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_tag (algorithm_id, tag_value) VALUES ('b61578ed-df66-44ec-954c-9bcf9906f490', 'Phase Estimation');
INSERT INTO public.algorithm_tag (algorithm_id, tag_value) VALUES ('4ab28e22-cdf9-45f8-b872-f4d9d2757b6d', 'Reinforcement learning');
INSERT INTO public.algorithm_tag (algorithm_id, tag_value) VALUES ('16aa96c5-b668-4df9-a03f-96d323708676', 'Classification');
INSERT INTO public.algorithm_tag (algorithm_id, tag_value) VALUES ('9aa16271-6ea1-4e15-ad9d-6e6e264a0ad0', 'Classification');
INSERT INTO public.algorithm_tag (algorithm_id, tag_value) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', 'Factorization');


--
-- TOC entry 3314 (class 0 OID 16421)
-- Dependencies: 210
-- Data for Name: classic_algorithm; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3343 (class 0 OID 17557)
-- Dependencies: 239
-- Data for Name: classic_algorithm_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3324 (class 0 OID 16466)
-- Dependencies: 220
-- Data for Name: implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, 'Python3', NULL, 'U: Float Array; Precision: Integer', NULL, NULL, 'forest-qpe', NULL, 'Eigenvalue: Integer Array', 'U: unitary matrix; precision: precision > 0', NULL, NULL, 'b3b616b6-6e4a-49b1-baf7-f08fa962a441', 'b61578ed-df66-44ec-954c-9bcf9906f490');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, 'Python3', NULL, 'N: Integer', NULL, NULL, 'forest-shor', NULL, 'Factors: Integer Array', 'N: N > 2', NULL, NULL, 'e07898e3-280f-4701-9d54-7d051af8d448', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, 'Python3', NULL, 'N: Integer', NULL, NULL, 'qiskit-aqua-shor', NULL, 'Factors: Integer Array', 'N: N > 2', NULL, NULL, '170eff66-733f-4043-a56b-3189bf474d62', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, 'Python3', NULL, NULL, NULL, NULL, 'qiskit-qpe', NULL, NULL, NULL, NULL, NULL, '1066e01c-e3ac-4830-b610-eb613187850c', 'b61578ed-df66-44ec-954c-9bcf9906f490');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-sat-qiskit', NULL, NULL, NULL, NULL, NULL, '8179d686-afa1-4f03-8ec9-95899002488a', '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-general-sat-qiskit', NULL, NULL, NULL, NULL, NULL, '7de45de7-aca2-4966-a5f9-8ef018688722', '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-truthtable-qiskit', NULL, NULL, NULL, NULL, NULL, '10bc87a9-9317-41c8-8d19-fc6594d23383', '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-general-truthtable-qiskit', NULL, NULL, NULL, NULL, NULL, 'e7a33256-0ab4-4baa-a805-0296b97960d6', '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shor-fix-15-qiskit', NULL, NULL, NULL, NULL, NULL, 'c293bbf4-b8cf-4393-a403-a359a77b868c', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shor-general-qiskit', NULL, NULL, NULL, NULL, NULL, '816a96fc-696d-419f-8bd4-98752cc72aac', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'simon-general-qiskit', NULL, NULL, NULL, NULL, NULL, '649859eb-7709-4beb-9738-d57f11d80455', '871f7eea-4722-4728-8cd9-1e61fe2dd285');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'QAOA_workflow_implementation', NULL, NULL, NULL, NULL, NULL, '03223c33-7cd2-4496-84c9-c654da405b19', '0f6587f3-6b6b-4dd4-98aa-b464913b8c14');


--
-- TOC entry 3315 (class 0 OID 16424)
-- Dependencies: 211
-- Data for Name: classic_implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3347 (class 0 OID 17583)
-- Dependencies: 243
-- Data for Name: implementation_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('03223c33-7cd2-4496-84c9-c654da405b19', 4, NULL, NULL, NULL, NULL, NULL, NULL, 'QAOA_workflow_implementation', NULL, NULL, NULL, NULL, NULL, '0f6587f3-6b6b-4dd4-98aa-b464913b8c14');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('03223c33-7cd2-4496-84c9-c654da405b19', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'QAOA_workflow_implementation', NULL, NULL, NULL, NULL, NULL, '0f6587f3-6b6b-4dd4-98aa-b464913b8c14');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('03223c33-7cd2-4496-84c9-c654da405b19', 6, NULL, NULL, NULL, NULL, NULL, NULL, 'QAOA_workflow_implementation', NULL, NULL, NULL, NULL, NULL, '0f6587f3-6b6b-4dd4-98aa-b464913b8c14');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('03223c33-7cd2-4496-84c9-c654da405b19', 7, NULL, NULL, NULL, NULL, NULL, NULL, 'QAOA_workflow_implementation', NULL, NULL, NULL, NULL, NULL, '0f6587f3-6b6b-4dd4-98aa-b464913b8c14');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('03223c33-7cd2-4496-84c9-c654da405b19', 8, NULL, NULL, NULL, NULL, NULL, NULL, 'QAOA_workflow_implementation', NULL, NULL, NULL, NULL, NULL, '0f6587f3-6b6b-4dd4-98aa-b464913b8c14');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('03223c33-7cd2-4496-84c9-c654da405b19', 9, NULL, NULL, NULL, NULL, NULL, NULL, 'QAOA_workflow_implementation', NULL, NULL, NULL, NULL, NULL, '0f6587f3-6b6b-4dd4-98aa-b464913b8c14');


--
-- TOC entry 3344 (class 0 OID 17562)
-- Dependencies: 240
-- Data for Name: classic_implementation_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3316 (class 0 OID 16427)
-- Dependencies: 212
-- Data for Name: cloud_service; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.cloud_service (id, cost_model, description, name, provider, url) VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', NULL, NULL, 'IBMQ', 'IBM', 'https://quantum-computing.ibm.com/');
INSERT INTO public.cloud_service (id, cost_model, description, name, provider, url) VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', NULL, NULL, 'Rigetti', 'Rigetti', 'https://www.rigetti.com/');


--
-- TOC entry 3318 (class 0 OID 16436)
-- Dependencies: 214
-- Data for Name: compute_resource; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'faea0025-9096-4582-b2f9-93096358dbc2', 'ibmq_16_melbourne', 0, '', 'IBMQ', NULL);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c0fc8141-4d19-4654-910b-109882b4b99b', 'ibmqx2', 0, NULL, 'IBMQ', NULL);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2e683cee-8363-4327-8765-3b5f957acc90', 'Rigetti 19Q', 0, 'Superconducting', 'Rigetti', NULL);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '82df8861-b7de-464d-9dab-4adabbe78cd2', 'Rigetti 8Q', 0, 'Superconducting', 'Rigetti', NULL);


--
-- TOC entry 3317 (class 0 OID 16433)
-- Dependencies: 213
-- Data for Name: cloud_services_compute_resources; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', 'faea0025-9096-4582-b2f9-93096358dbc2');
INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', '2e683cee-8363-4327-8765-3b5f957acc90');
INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', 'c0fc8141-4d19-4654-910b-109882b4b99b');
INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', '82df8861-b7de-464d-9dab-4adabbe78cd2');


--
-- TOC entry 3320 (class 0 OID 16445)
-- Dependencies: 216
-- Data for Name: compute_resource_property_type; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.compute_resource_property_type (id, datatype, description, name) VALUES ('e658e9bb-ca15-4b3a-9dd2-833ccd144e50', 0, '', 'Number of Qubits');
INSERT INTO public.compute_resource_property_type (id, datatype, description, name) VALUES ('6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', 2, '', 't1');
INSERT INTO public.compute_resource_property_type (id, datatype, description, name) VALUES ('ff58dc2e-b805-4d32-b2ac-a059464e5102', 0, '', 'Max gate time');


--
-- TOC entry 3319 (class 0 OID 16442)
-- Dependencies: 215
-- Data for Name: compute_resource_property; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('92376664-12fc-4143-9ce3-0ce2a7372e05', '15', NULL, 'faea0025-9096-4582-b2f9-93096358dbc2', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('f052fab4-8fa7-4b20-a053-a655f362e5b7', '50063.8361', NULL, 'faea0025-9096-4582-b2f9-93096358dbc2', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('5d57ecb5-f071-472f-a0c3-213d99569f8e', '1043', NULL, 'faea0025-9096-4582-b2f9-93096358dbc2', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('29d3b8b6-9523-4610-9587-98a1019035e0', '5', NULL, 'c0fc8141-4d19-4654-910b-109882b4b99b', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('039b068c-cadd-4a95-a408-e3f058a540e2', '62104.6608', NULL, 'c0fc8141-4d19-4654-910b-109882b4b99b', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('428ac66a-c08d-441c-96a7-3c5976daa08d', '391', NULL, 'c0fc8141-4d19-4654-910b-109882b4b99b', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('79834b76-82d5-4962-b78a-012f374fe4b1', '20', NULL, '2e683cee-8363-4327-8765-3b5f957acc90', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('064f93f4-d50a-49ae-a7e4-ea36fc67a662', '20330', NULL, '2e683cee-8363-4327-8765-3b5f957acc90', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('51d3b698-0698-4058-bb9b-2de809a3a704', '214', NULL, '2e683cee-8363-4327-8765-3b5f957acc90', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('486fbc6f-20b2-4247-8742-b36cfd5b3c44', '8', NULL, '82df8861-b7de-464d-9dab-4adabbe78cd2', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('d772d10b-0614-480a-b2ec-b33a32d74e42', '13406.25', NULL, '82df8861-b7de-464d-9dab-4adabbe78cd2', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('dde0fa28-a69d-4e51-83c7-5e23d06aeb2a', '198', NULL, '82df8861-b7de-464d-9dab-4adabbe78cd2', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);


--
-- TOC entry 3322 (class 0 OID 16454)
-- Dependencies: 218
-- Data for Name: discussion_topic; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3321 (class 0 OID 16451)
-- Dependencies: 217
-- Data for Name: discussion_comment; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3345 (class 0 OID 17567)
-- Dependencies: 241
-- Data for Name: file; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.file (fileurl, mime_type, name, id) VALUES ('workflow_quantme4vqa_case_study.bpmn', 'application/octet-stream', 'workflow_quantme4vqa_case_study.bpmn', '14c120d2-f16e-42d0-a280-3d8857c8e7be');


--
-- TOC entry 3346 (class 0 OID 17575)
-- Dependencies: 242
-- Data for Name: file_data; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.file_data (id, data, file_id) VALUES ('897f6dfe-cb7a-4341-85b7-873424cf05bc', '\x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d225554462d38223f3e0a3c62706d6e3a646566696e6974696f6e7320786d6c6e733a62706d6e3d22687474703a2f2f7777772e6f6d672e6f72672f737065632f42504d4e2f32303130303532342f4d4f44454c2220786d6c6e733a62706d6e64693d22687474703a2f2f7777772e6f6d672e6f72672f737065632f42504d4e2f32303130303532342f44492220786d6c6e733a64633d22687474703a2f2f7777772e6f6d672e6f72672f737065632f44442f32303130303532342f44432220786d6c6e733a7175616e746d653d2268747470733a2f2f6769746875622e636f6d2f5553542d5175416e74694c2f5175616e744d452d5175616e74756d3442504d4e2220786d6c6e733a64693d22687474703a2f2f7777772e6f6d672e6f72672f737065632f44442f32303130303532342f44492220786d6c6e733a7873693d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d612d696e7374616e63652220786d6c6e733a63616d756e64613d22687474703a2f2f63616d756e64612e6f72672f736368656d612f312e302f62706d6e222069643d22446566696e6974696f6e735f30777a6b63306222207461726765744e616d6573706163653d22687474703a2f2f62706d6e2e696f2f736368656d612f62706d6e22206578706f727465723d225175616e744d45204d6f64656c657222206578706f7274657256657273696f6e3d22342e352e302d6e696768746c792e3230323330313236223e0a20203c62706d6e3a70726f636573732069643d2250726f636573735f3037306d3570312220697345786563757461626c653d2274727565223e0a202020203c7175616e746d653a6369726375697443757474696e6753756270726f636573732069643d225461736b5f3133646f633735222063757474696e674d6574686f643d227169736b697422206d61785375624369726375697457696474683d22323222206d61784e756d6265724f66437574733d223222206d61784e756d53756243697263756974733d2232223e0a2020202020203c62706d6e3a696e636f6d696e673e53657175656e6365466c6f775f306363333968373c2f62706d6e3a696e636f6d696e673e0a2020202020203c62706d6e3a6f7574676f696e673e53657175656e6365466c6f775f316972327a386e3c2f62706d6e3a6f7574676f696e673e0a2020202020203c62706d6e3a656e644576656e742069643d22456e644576656e745f3164757a733377223e0a20202020202020203c62706d6e3a696e636f6d696e673e53657175656e6365466c6f775f31346c6d636a643c2f62706d6e3a696e636f6d696e673e0a2020202020203c2f62706d6e3a656e644576656e743e0a2020202020203c62706d6e3a73657175656e6365466c6f772069643d2253657175656e6365466c6f775f307276616839782220736f757263655265663d225461736b5f3169356a62736722207461726765745265663d225461736b5f303030787a663922202f3e0a2020202020203c62706d6e3a73746172744576656e742069643d2253746172744576656e745f31223e0a20202020202020203c62706d6e3a6f7574676f696e673e53657175656e6365466c6f775f30713534696c6b3c2f62706d6e3a6f7574676f696e673e0a2020202020203c2f62706d6e3a73746172744576656e743e0a2020202020203c62706d6e3a73657175656e6365466c6f772069643d2253657175656e6365466c6f775f30713534696c6b2220736f757263655265663d2253746172744576656e745f3122207461726765745265663d224578636c7573697665476174657761795f306c6f3432656e22202f3e0a2020202020203c7175616e746d653a7175616e74756d43697263756974457865637574696f6e5461736b2069643d225461736b5f3169356a62736722206e616d653d22457865637574652051414f412043697263756974222070726f76696465723d2269626d22207170753d226165725f7161736d5f73696d756c61746f72222073686f74733d2232303030222070726f6772616d6d696e674c616e67756167653d227169736b6974223e0a20202020202020203c62706d6e3a696e636f6d696e673e53657175656e6365466c6f775f3167346e7966713c2f62706d6e3a696e636f6d696e673e0a20202020202020203c62706d6e3a6f7574676f696e673e53657175656e6365466c6f775f307276616839783c2f62706d6e3a6f7574676f696e673e0a2020202020203c2f7175616e746d653a7175616e74756d43697263756974457865637574696f6e5461736b3e0a2020202020203c62706d6e3a6578636c7573697665476174657761792069643d224578636c7573697665476174657761795f31786e6865707222206e616d653d22436f6e7665726765643f223e0a20202020202020203c62706d6e3a696e636f6d696e673e53657175656e6365466c6f775f303364307a6c623c2f62706d6e3a696e636f6d696e673e0a20202020202020203c62706d6e3a6f7574676f696e673e53657175656e6365466c6f775f31346c6d636a643c2f62706d6e3a6f7574676f696e673e0a20202020202020203c62706d6e3a6f7574676f696e673e53657175656e6365466c6f775f3132336d6265393c2f62706d6e3a6f7574676f696e673e0a2020202020203c2f62706d6e3a6578636c7573697665476174657761793e0a2020202020203c62706d6e3a73657175656e6365466c6f772069643d2253657175656e6365466c6f775f31346c6d636a6422206e616d653d225965732220736f757263655265663d224578636c7573697665476174657761795f31786e6865707222207461726765745265663d22456e644576656e745f3164757a733377223e0a20202020202020203c62706d6e3a636f6e646974696f6e45787072657373696f6e207873693a747970653d2262706d6e3a74466f726d616c45787072657373696f6e223e247b20657865637574696f6e2e6765745661726961626c652827636f6e7665726765642729213d206e756c6c2026616d703b26616d703b20657865637574696f6e2e6765745661726961626c652827636f6e7665726765642729203d3d202774727565277d3c2f62706d6e3a636f6e646974696f6e45787072657373696f6e3e0a2020202020203c2f62706d6e3a73657175656e6365466c6f773e0a2020202020203c62706d6e3a73657175656e6365466c6f772069643d2253657175656e6365466c6f775f3132336d62653922206e616d653d224e6f2220736f757263655265663d224578636c7573697665476174657761795f31786e6865707222207461726765745265663d225461736b5f303078636f6b6c223e0a20202020202020203c62706d6e3a636f6e646974696f6e45787072657373696f6e207873693a747970653d2262706d6e3a74466f726d616c45787072657373696f6e223e247b20657865637574696f6e2e6765745661726961626c652827636f6e76657267656427293d3d206e756c6c207c7c20657865637574696f6e2e6765745661726961626c652827636f6e7665726765642729203d3d202766616c7365277d3c2f62706d6e3a636f6e646974696f6e45787072657373696f6e3e0a2020202020203c2f62706d6e3a73657175656e6365466c6f773e0a2020202020203c62706d6e3a73657175656e6365466c6f772069643d2253657175656e6365466c6f775f303364307a6c622220736f757263655265663d225461736b5f303030787a663922207461726765745265663d224578636c7573697665476174657761795f31786e6865707222202f3e0a2020202020203c7175616e746d653a726573756c744576616c756174696f6e5461736b2069643d225461736b5f303030787a663922206e616d653d224576616c7561746520526573756c747322206f626a65637469766546756e6374696f6e3d226578706563746174696f6e56616c75652220636f737446756e6374696f6e3d226d6178637574223e0a20202020202020203c62706d6e3a696e636f6d696e673e53657175656e6365466c6f775f307276616839783c2f62706d6e3a696e636f6d696e673e0a20202020202020203c62706d6e3a6f7574676f696e673e53657175656e6365466c6f775f303364307a6c623c2f62706d6e3a6f7574676f696e673e0a2020202020203c2f7175616e746d653a726573756c744576616c756174696f6e5461736b3e0a2020202020203c7175616e746d653a706172616d657465724f7074696d697a6174696f6e5461736b2069643d225461736b5f303078636f6b6c22206e616d653d224f7074696d697a652051414f4120506172616d657465727322206f7074696d697a65723d22636f62796c61223e0a20202020202020203c62706d6e3a696e636f6d696e673e53657175656e6365466c6f775f3132336d6265393c2f62706d6e3a696e636f6d696e673e0a20202020202020203c62706d6e3a6f7574676f696e673e53657175656e6365466c6f775f307767677167663c2f62706d6e3a6f7574676f696e673e0a2020202020203c2f7175616e746d653a706172616d657465724f7074696d697a6174696f6e5461736b3e0a2020202020203c62706d6e3a6578636c7573697665476174657761792069643d224578636c7573697665476174657761795f306c6f3432656e223e0a20202020202020203c62706d6e3a696e636f6d696e673e53657175656e6365466c6f775f30713534696c6b3c2f62706d6e3a696e636f6d696e673e0a20202020202020203c62706d6e3a696e636f6d696e673e53657175656e6365466c6f775f307767677167663c2f62706d6e3a696e636f6d696e673e0a20202020202020203c62706d6e3a6f7574676f696e673e53657175656e6365466c6f775f3167346e7966713c2f62706d6e3a6f7574676f696e673e0a2020202020203c2f62706d6e3a6578636c7573697665476174657761793e0a2020202020203c62706d6e3a73657175656e6365466c6f772069643d2253657175656e6365466c6f775f3167346e7966712220736f757263655265663d224578636c7573697665476174657761795f306c6f3432656e22207461726765745265663d225461736b5f3169356a62736722202f3e0a2020202020203c62706d6e3a73657175656e6365466c6f772069643d2253657175656e6365466c6f775f307767677167662220736f757263655265663d225461736b5f303078636f6b6c22207461726765745265663d224578636c7573697665476174657761795f306c6f3432656e22202f3e0a202020203c2f7175616e746d653a6369726375697443757474696e6753756270726f636573733e0a202020203c62706d6e3a656e644576656e742069643d22456e644576656e745f30706a71376672223e0a2020202020203c62706d6e3a696e636f6d696e673e53657175656e6365466c6f775f313334677967613c2f62706d6e3a696e636f6d696e673e0a202020203c2f62706d6e3a656e644576656e743e0a202020203c62706d6e3a73746172744576656e742069643d2253746172744576656e745f30656a366c7762223e0a2020202020203c62706d6e3a657874656e73696f6e456c656d656e74733e0a20202020202020203c63616d756e64613a666f726d446174613e0a202020202020202020203c63616d756e64613a666f726d4669656c642069643d2261646a4d617472697822206c6162656c3d22417272617920636f6e7461696e696e672061646a5f6d61747269782220747970653d22737472696e67222064656661756c7456616c75653d225b5b302c332c332c362c392c315d2c5b332c302c342c342c2d382c345d2c5b332c342c302c332c2d372c315d2c5b362c342c332c302c2d372c365d2c5b392c2d382c2d372c2d372c302c2d355d2c5b312c342c312c362c2d352c305d5d22202f3e0a202020202020202020203c63616d756e64613a666f726d4669656c642069643d22746f6b656e22206c6162656c3d2249424d5120546f6b656e2220747970653d22737472696e6722202f3e0a202020202020202020203c63616d756e64613a666f726d4669656c642069643d2268756222206c6162656c3d2249424d51204875622220747970653d22737472696e67222064656661756c7456616c75653d2269626d2d7122202f3e0a202020202020202020203c63616d756e64613a666f726d4669656c642069643d2267726f757022206c6162656c3d2249424d512047726f75702220747970653d22737472696e67222064656661756c7456616c75653d226f70656e22202f3e0a202020202020202020203c63616d756e64613a666f726d4669656c642069643d2270726f6a65637422206c6162656c3d2249424d512050726f6a6563742220747970653d22737472696e67222064656661756c7456616c75653d226d61696e22202f3e0a202020202020202020203c63616d756e64613a666f726d4669656c642069643d2269626d7155726c22206c6162656c3d2249424d512055524c2220747970653d22737472696e67222064656661756c7456616c75653d2268747470733a2f2f617574682e7175616e74756d2d636f6d707574696e672e69626d2e636f6d2f61706922202f3e0a202020202020202020203c63616d756e64613a666f726d4669656c642069643d2271707522206c6162656c3d2249424d51204261636b656e64206e616d652220747970653d22737472696e67222064656661756c7456616c75653d2273696d756c61746f7222202f3e0a202020202020202020203c63616d756e64613a666f726d4669656c642069643d226e6f6973654d6f64656c22206c6162656c3d224e6f697365204d6f64656c2220747970653d22737472696e6722202f3e0a202020202020202020203c63616d756e64613a666f726d4669656c642069643d226f6e6c794d6561737572656d656e744572726f727322206c6162656c3d224e6f697365204d6f64656c20636f6e7461696e73206f6e6c79206d6561737572656d656e74206572726f72732220747970653d22626f6f6c65616e22202f3e0a202020202020202020203c63616d756e64613a666f726d4669656c642069643d2267616d6d617322206c6162656c3d2267616d6d61732220747970653d22737472696e67222064656661756c7456616c75653d225b315d22202f3e0a202020202020202020203c63616d756e64613a666f726d4669656c642069643d22626574617322206c6162656c3d2262657461732220747970653d22737472696e67222064656661756c7456616c75653d225b315d22202f3e0a202020202020202020203c63616d756e64613a666f726d4669656c642069643d227022206c6162656c3d22702220747970653d22737472696e67222064656661756c7456616c75653d223122202f3e0a20202020202020203c2f63616d756e64613a666f726d446174613e0a2020202020203c2f62706d6e3a657874656e73696f6e456c656d656e74733e0a2020202020203c62706d6e3a6f7574676f696e673e53657175656e6365466c6f775f3131343630306c3c2f62706d6e3a6f7574676f696e673e0a202020203c2f62706d6e3a73746172744576656e743e0a202020203c62706d6e3a73657175656e6365466c6f772069643d2253657175656e6365466c6f775f3131343630306c2220736f757263655265663d2253746172744576656e745f30656a366c776222207461726765745265663d225461736b5f3079307435636422202f3e0a202020203c62706d6e3a73657175656e6365466c6f772069643d2253657175656e6365466c6f775f306363333968372220736f757263655265663d225461736b5f3030396873726b22207461726765745265663d225461736b5f3133646f63373522202f3e0a202020203c62706d6e3a73657175656e6365466c6f772069643d2253657175656e6365466c6f775f316972327a386e2220736f757263655265663d225461736b5f3133646f63373522207461726765745265663d225461736b5f3168383864646622202f3e0a202020203c7175616e746d653a7175616e74756d436972637569744c6f6164696e675461736b2069643d225461736b5f3030396873726b22206e616d653d2247656e65726174652051414f412043697263756974222075726c3d2271756f6b6b612f6d6178637574223e0a2020202020203c62706d6e3a696e636f6d696e673e53657175656e6365466c6f775f3066636d32616b3c2f62706d6e3a696e636f6d696e673e0a2020202020203c62706d6e3a6f7574676f696e673e53657175656e6365466c6f775f306363333968373c2f62706d6e3a6f7574676f696e673e0a202020203c2f7175616e746d653a7175616e74756d436972637569744c6f6164696e675461736b3e0a202020203c62706d6e3a73657175656e6365466c6f772069643d2253657175656e6365466c6f775f3066636d32616b2220736f757263655265663d225461736b5f3079307435636422207461726765745265663d225461736b5f3030396873726b22202f3e0a202020203c7175616e746d653a7761726d5374617274696e675461736b2069643d225461736b5f3079307435636422206e616d653d22417070726f78696d617465204d617843757422207761726d5374617274696e674d6574686f643d22696e697469616c53746174655761726d5374617274456767657222207175616e74756d416c676f726974686d3d2251414f412220636c6173736963616c416c676f726974686d3d226777222072657065746974696f6e733d223130223e0a2020202020203c62706d6e3a696e636f6d696e673e53657175656e6365466c6f775f3131343630306c3c2f62706d6e3a696e636f6d696e673e0a2020202020203c62706d6e3a6f7574676f696e673e53657175656e6365466c6f775f3066636d32616b3c2f62706d6e3a6f7574676f696e673e0a202020203c2f7175616e746d653a7761726d5374617274696e675461736b3e0a202020203c62706d6e3a73657175656e6365466c6f772069643d2253657175656e6365466c6f775f313334677967612220736f757263655265663d225461736b5f3168383864646622207461726765745265663d22456e644576656e745f30706a7137667222202f3e0a202020203c62706d6e3a757365725461736b2069643d225461736b5f3168383864646622206e616d653d22416e616c797a6520526573756c7473223e0a2020202020203c62706d6e3a657874656e73696f6e456c656d656e74733e0a20202020202020203c63616d756e64613a666f726d446174613e0a202020202020202020203c63616d756e64613a666f726d4669656c642069643d22706c6f7455726c22206c6162656c3d22526573756c7420496d6167652055524c2220747970653d22737472696e67223e0a2020202020202020202020203c63616d756e64613a70726f706572746965733e0a20202020202020202020202020203c63616d756e64613a70726f70657274792069643d2250726f70657274795f3339706764343222202f3e0a2020202020202020202020203c2f63616d756e64613a70726f706572746965733e0a2020202020202020202020203c63616d756e64613a76616c69646174696f6e3e0a20202020202020202020202020203c63616d756e64613a636f6e73747261696e74206e616d653d22726561646f6e6c7922202f3e0a2020202020202020202020203c2f63616d756e64613a76616c69646174696f6e3e0a202020202020202020203c2f63616d756e64613a666f726d4669656c643e0a20202020202020203c2f63616d756e64613a666f726d446174613e0a2020202020203c2f62706d6e3a657874656e73696f6e456c656d656e74733e0a2020202020203c62706d6e3a696e636f6d696e673e53657175656e6365466c6f775f316972327a386e3c2f62706d6e3a696e636f6d696e673e0a2020202020203c62706d6e3a6f7574676f696e673e53657175656e6365466c6f775f313334677967613c2f62706d6e3a6f7574676f696e673e0a202020203c2f62706d6e3a757365725461736b3e0a20203c2f62706d6e3a70726f636573733e0a20203c62706d6e64693a42504d4e4469616772616d2069643d2242504d4e4469616772616d5f31223e0a202020203c62706d6e64693a42504d4e506c616e652069643d2242504d4e506c616e655f31222062706d6e456c656d656e743d2250726f636573735f3037306d357031223e0a2020202020203c62706d6e64693a42504d4e456467652069643d2253657175656e6365466c6f775f313334677967615f6469222062706d6e456c656d656e743d2253657175656e6365466c6f775f31333467796761223e0a20202020202020203c64693a776179706f696e7420783d22313237302220793d2232323522202f3e0a20202020202020203c64693a776179706f696e7420783d22313331322220793d2232323522202f3e0a2020202020203c2f62706d6e64693a42504d4e456467653e0a2020202020203c62706d6e64693a42504d4e456467652069643d2253657175656e6365466c6f775f3066636d32616b5f6469222062706d6e456c656d656e743d2253657175656e6365466c6f775f3066636d32616b223e0a20202020202020203c64693a776179706f696e7420783d223333302220793d2232323522202f3e0a20202020202020203c64693a776179706f696e7420783d223337302220793d2232323522202f3e0a2020202020203c2f62706d6e64693a42504d4e456467653e0a2020202020203c62706d6e64693a42504d4e456467652069643d2253657175656e6365466c6f775f316972327a386e5f6469222062706d6e456c656d656e743d2253657175656e6365466c6f775f316972327a386e223e0a20202020202020203c64693a776179706f696e7420783d22313133302220793d2232323522202f3e0a20202020202020203c64693a776179706f696e7420783d22313137302220793d2232323522202f3e0a2020202020203c2f62706d6e64693a42504d4e456467653e0a2020202020203c62706d6e64693a42504d4e456467652069643d2253657175656e6365466c6f775f306363333968375f6469222062706d6e456c656d656e743d2253657175656e6365466c6f775f30636333396837223e0a20202020202020203c64693a776179706f696e7420783d223437302220793d2232323522202f3e0a20202020202020203c64693a776179706f696e7420783d223533302220793d2232323522202f3e0a2020202020203c2f62706d6e64693a42504d4e456467653e0a2020202020203c62706d6e64693a42504d4e456467652069643d2253657175656e6365466c6f775f3131343630306c5f6469222062706d6e456c656d656e743d2253657175656e6365466c6f775f3131343630306c223e0a20202020202020203c64693a776179706f696e7420783d223138382220793d2232323522202f3e0a20202020202020203c64693a776179706f696e7420783d223233302220793d2232323522202f3e0a2020202020203c2f62706d6e64693a42504d4e456467653e0a2020202020203c62706d6e64693a42504d4e53686170652069643d224369726375697443757474696e6753756270726f636573735f3168796a3669725f6469222062706d6e456c656d656e743d225461736b5f3133646f63373522206973457870616e6465643d2274727565223e0a20202020202020203c64633a426f756e647320783d223533302220793d223830222077696474683d2236303022206865696768743d2232383022202f3e0a2020202020203c2f62706d6e64693a42504d4e53686170653e0a2020202020203c62706d6e64693a42504d4e456467652069643d2253657175656e6365466c6f775f307767677167665f6469222062706d6e456c656d656e743d2253657175656e6365466c6f775f30776767716766223e0a20202020202020203c64693a776179706f696e7420783d223733302220793d2231353022202f3e0a20202020202020203c64693a776179706f696e7420783d223633302220793d2231353022202f3e0a20202020202020203c64693a776179706f696e7420783d223633302220793d2232363522202f3e0a2020202020203c2f62706d6e64693a42504d4e456467653e0a2020202020203c62706d6e64693a42504d4e456467652069643d2253657175656e6365466c6f775f3167346e7966715f6469222062706d6e456c656d656e743d2253657175656e6365466c6f775f3167346e796671223e0a20202020202020203c64693a776179706f696e7420783d223635352220793d2232393022202f3e0a20202020202020203c64693a776179706f696e7420783d223638302220793d2232393022202f3e0a2020202020203c2f62706d6e64693a42504d4e456467653e0a2020202020203c62706d6e64693a42504d4e456467652069643d2253657175656e6365466c6f775f303364307a6c625f6469222062706d6e456c656d656e743d2253657175656e6365466c6f775f303364307a6c62223e0a20202020202020203c64693a776179706f696e7420783d223932302220793d2232393022202f3e0a20202020202020203c64693a776179706f696e7420783d223936352220793d2232393022202f3e0a2020202020203c2f62706d6e64693a42504d4e456467653e0a2020202020203c62706d6e64693a42504d4e456467652069643d2253657175656e6365466c6f775f3132336d6265395f6469222062706d6e456c656d656e743d2253657175656e6365466c6f775f3132336d626539223e0a20202020202020203c64693a776179706f696e7420783d223939302220793d2232363522202f3e0a20202020202020203c64693a776179706f696e7420783d223939302220793d2231353022202f3e0a20202020202020203c64693a776179706f696e7420783d223833302220793d2231353022202f3e0a20202020202020203c62706d6e64693a42504d4e4c6162656c3e0a202020202020202020203c64633a426f756e647320783d223939382220793d22323035222077696474683d22313522206865696768743d22313422202f3e0a20202020202020203c2f62706d6e64693a42504d4e4c6162656c3e0a2020202020203c2f62706d6e64693a42504d4e456467653e0a2020202020203c62706d6e64693a42504d4e456467652069643d2253657175656e6365466c6f775f31346c6d636a645f6469222062706d6e456c656d656e743d2253657175656e6365466c6f775f31346c6d636a64223e0a20202020202020203c64693a776179706f696e7420783d22313031352220793d2232393022202f3e0a20202020202020203c64693a776179706f696e7420783d22313035322220793d2232393022202f3e0a20202020202020203c62706d6e64693a42504d4e4c6162656c3e0a202020202020202020203c64633a426f756e647320783d22313032352220793d22323732222077696474683d22313822206865696768743d22313422202f3e0a20202020202020203c2f62706d6e64693a42504d4e4c6162656c3e0a2020202020203c2f62706d6e64693a42504d4e456467653e0a2020202020203c62706d6e64693a42504d4e456467652069643d2253657175656e6365466c6f775f30713534696c6b5f6469222062706d6e456c656d656e743d2253657175656e6365466c6f775f30713534696c6b223e0a20202020202020203c64693a776179706f696e7420783d223538382220793d2232393022202f3e0a20202020202020203c64693a776179706f696e7420783d223630352220793d2232393022202f3e0a2020202020203c2f62706d6e64693a42504d4e456467653e0a2020202020203c62706d6e64693a42504d4e456467652069643d2253657175656e6365466c6f775f307276616839785f6469222062706d6e456c656d656e743d2253657175656e6365466c6f775f30727661683978223e0a20202020202020203c64693a776179706f696e7420783d223738302220793d2232393022202f3e0a20202020202020203c64693a776179706f696e7420783d223832302220793d2232393022202f3e0a2020202020203c2f62706d6e64693a42504d4e456467653e0a2020202020203c62706d6e64693a42504d4e53686170652069643d22456e644576656e745f3164757a7333775f6469222062706d6e456c656d656e743d22456e644576656e745f3164757a733377223e0a20202020202020203c64633a426f756e647320783d22313035322220793d22323732222077696474683d22333622206865696768743d22333622202f3e0a2020202020203c2f62706d6e64693a42504d4e53686170653e0a2020202020203c62706d6e64693a42504d4e53686170652069643d225f42504d4e53686170655f53746172744576656e745f32222062706d6e456c656d656e743d2253746172744576656e745f31223e0a20202020202020203c64633a426f756e647320783d223535322220793d22323732222077696474683d22333622206865696768743d22333622202f3e0a2020202020203c2f62706d6e64693a42504d4e53686170653e0a2020202020203c62706d6e64693a42504d4e53686170652069643d225175616e74756d43697263756974457865637574696f6e5461736b5f3067616e7876705f6469222062706d6e456c656d656e743d225461736b5f3169356a627367223e0a20202020202020203c64633a426f756e647320783d223638302220793d22323530222077696474683d2231303022206865696768743d22383022202f3e0a2020202020203c2f62706d6e64693a42504d4e53686170653e0a2020202020203c62706d6e64693a42504d4e53686170652069643d224578636c7573697665476174657761795f31786e686570725f6469222062706d6e456c656d656e743d224578636c7573697665476174657761795f31786e68657072222069734d61726b657256697369626c653d2274727565223e0a20202020202020203c64633a426f756e647320783d223936352220793d22323635222077696474683d22353022206865696768743d22353022202f3e0a20202020202020203c62706d6e64693a42504d4e4c6162656c3e0a202020202020202020203c64633a426f756e647320783d223936302220793d22333232222077696474683d22363022206865696768743d22313422202f3e0a20202020202020203c2f62706d6e64693a42504d4e4c6162656c3e0a2020202020203c2f62706d6e64693a42504d4e53686170653e0a2020202020203c62706d6e64693a42504d4e53686170652069643d22526573756c744576616c756174696f6e5461736b5f316a6f31377a365f6469222062706d6e456c656d656e743d225461736b5f303030787a6639223e0a20202020202020203c64633a426f756e647320783d223832302220793d22323530222077696474683d2231303022206865696768743d22383022202f3e0a2020202020203c2f62706d6e64693a42504d4e53686170653e0a2020202020203c62706d6e64693a42504d4e53686170652069643d22506172616d657465724f7074696d697a6174696f6e5461736b5f313732317869645f6469222062706d6e456c656d656e743d225461736b5f303078636f6b6c223e0a20202020202020203c64633a426f756e647320783d223733302220793d22313130222077696474683d2231303022206865696768743d22383022202f3e0a2020202020203c2f62706d6e64693a42504d4e53686170653e0a2020202020203c62706d6e64693a42504d4e53686170652069643d224578636c7573697665476174657761795f306c6f3432656e5f6469222062706d6e456c656d656e743d224578636c7573697665476174657761795f306c6f3432656e222069734d61726b657256697369626c653d2274727565223e0a20202020202020203c64633a426f756e647320783d223630352220793d22323635222077696474683d22353022206865696768743d22353022202f3e0a2020202020203c2f62706d6e64693a42504d4e53686170653e0a2020202020203c62706d6e64693a42504d4e53686170652069643d22456e644576656e745f30706a713766725f6469222062706d6e456c656d656e743d22456e644576656e745f30706a71376672223e0a20202020202020203c64633a426f756e647320783d22313331322220793d22323037222077696474683d22333622206865696768743d22333622202f3e0a2020202020203c2f62706d6e64693a42504d4e53686170653e0a2020202020203c62706d6e64693a42504d4e53686170652069643d2253746172744576656e745f30656a366c77625f6469222062706d6e456c656d656e743d2253746172744576656e745f30656a366c7762223e0a20202020202020203c64633a426f756e647320783d223135322220793d22323037222077696474683d22333622206865696768743d22333622202f3e0a2020202020203c2f62706d6e64693a42504d4e53686170653e0a2020202020203c62706d6e64693a42504d4e53686170652069643d225175616e74756d436972637569744c6f6164696e675461736b5f31706d797939615f6469222062706d6e456c656d656e743d225461736b5f3030396873726b223e0a20202020202020203c64633a426f756e647320783d223337302220793d22313835222077696474683d2231303022206865696768743d22383022202f3e0a2020202020203c2f62706d6e64693a42504d4e53686170653e0a2020202020203c62706d6e64693a42504d4e53686170652069643d225761726d5374617274696e675461736b5f313534343030625f6469222062706d6e456c656d656e743d225461736b5f30793074356364223e0a20202020202020203c64633a426f756e647320783d223233302220793d22313835222077696474683d2231303022206865696768743d22383022202f3e0a2020202020203c2f62706d6e64693a42504d4e53686170653e0a2020202020203c62706d6e64693a42504d4e53686170652069643d22557365725461736b5f303661777865395f6469222062706d6e456c656d656e743d225461736b5f31683838646466223e0a20202020202020203c64633a426f756e647320783d22313137302220793d22313835222077696474683d2231303022206865696768743d22383022202f3e0a2020202020203c2f62706d6e64693a42504d4e53686170653e0a202020203c2f62706d6e64693a42504d4e506c616e653e0a20203c2f62706d6e64693a42504d4e4469616772616d3e0a3c2f62706d6e3a646566696e6974696f6e733e0a', '14c120d2-f16e-42d0-a280-3d8857c8e7be');


--
-- TOC entry 3336 (class 0 OID 16511)
-- Dependencies: 232
-- Data for Name: sketch; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3323 (class 0 OID 16460)
-- Dependencies: 219
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3348 (class 0 OID 17591)
-- Dependencies: 244
-- Data for Name: implementation_package; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_package (dtype, id, description, name, package_type, implementation_id) VALUES ('FileImplementationPackage', 'da162ba5-8b1f-4f0a-aa32-11334a50cf30', 'QAOA BPMN workflow', 'QAOA_workflow_implementation_package', 0, '03223c33-7cd2-4496-84c9-c654da405b19');


--
-- TOC entry 3349 (class 0 OID 17599)
-- Dependencies: 245
-- Data for Name: implementation_package_file; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_package_file (file_id, implementation_package_id) VALUES ('14c120d2-f16e-42d0-a280-3d8857c8e7be', 'da162ba5-8b1f-4f0a-aa32-11334a50cf30');


--
-- TOC entry 3325 (class 0 OID 16472)
-- Dependencies: 221
-- Data for Name: implementation_publication; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_publication (implementation_id, publication_id) VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', 'f05c9136-2f9f-433f-9c35-85009111ee3c');
INSERT INTO public.implementation_publication (implementation_id, publication_id) VALUES ('170eff66-733f-4043-a56b-3189bf474d62', 'f05c9136-2f9f-433f-9c35-85009111ee3c');


--
-- TOC entry 3337 (class 0 OID 16517)
-- Dependencies: 233
-- Data for Name: software_platform; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.software_platform (id, licence, link, name, version) VALUES ('7c2c4b2e-5b4e-421c-a487-54fd897bfe41', 'Apache-2.0 License', 'https://pyquil-docs.rigetti.com/en/stable/', 'Forest', NULL);
INSERT INTO public.software_platform (id, licence, link, name, version) VALUES ('41299c3c-297a-4d61-be24-cc957186306e', 'Apache-2.0 License', 'https://github.com/Qiskit/qiskit', 'Qiskit', '0.21.0');


--
-- TOC entry 3326 (class 0 OID 16475)
-- Dependencies: 222
-- Data for Name: implementation_software_platforms; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('b3b616b6-6e4a-49b1-baf7-f08fa962a441', '7c2c4b2e-5b4e-421c-a487-54fd897bfe41');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', '7c2c4b2e-5b4e-421c-a487-54fd897bfe41');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('170eff66-733f-4043-a56b-3189bf474d62', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('1066e01c-e3ac-4830-b610-eb613187850c', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('8179d686-afa1-4f03-8ec9-95899002488a', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('7de45de7-aca2-4966-a5f9-8ef018688722', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('10bc87a9-9317-41c8-8d19-fc6594d23383', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('e7a33256-0ab4-4baa-a805-0296b97960d6', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('c293bbf4-b8cf-4393-a403-a359a77b868c', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('816a96fc-696d-419f-8bd4-98752cc72aac', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('649859eb-7709-4beb-9738-d57f11d80455', '41299c3c-297a-4d61-be24-cc957186306e');


--
-- TOC entry 3327 (class 0 OID 16478)
-- Dependencies: 223
-- Data for Name: implementation_tag; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_tag (implementation_id, tag_value) VALUES ('b3b616b6-6e4a-49b1-baf7-f08fa962a441', 'Phase Estimation');
INSERT INTO public.implementation_tag (implementation_id, tag_value) VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', 'Factorization');
INSERT INTO public.implementation_tag (implementation_id, tag_value) VALUES ('170eff66-733f-4043-a56b-3189bf474d62', 'Factorization');
INSERT INTO public.implementation_tag (implementation_id, tag_value) VALUES ('1066e01c-e3ac-4830-b610-eb613187850c', 'Phase Estimation');


--
-- TOC entry 3330 (class 0 OID 16490)
-- Dependencies: 226
-- Data for Name: pattern_relation_type; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3329 (class 0 OID 16484)
-- Dependencies: 225
-- Data for Name: pattern_relation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3352 (class 0 OID 17614)
-- Dependencies: 248
-- Data for Name: pattern_uris; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.pattern_uris (implementation_id, pattern_uri) VALUES ('03223c33-7cd2-4496-84c9-c654da405b19', '\xaced00057372000c6a6176612e6e65742e555249ac01782e439e49ab0300014c0006737472696e677400124c6a6176612f6c616e672f537472696e673b787074005b7061747465726e2d6c616e6775616765732f61663737383064352d316639372d343533362d386461372d3431393462303933616231642f64613933663931352d376634632d343964662d393964302d38306439316632366133333778');


--
-- TOC entry 3353 (class 0 OID 17622)
-- Dependencies: 249
-- Data for Name: pattern_uris_aud; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.pattern_uris_aud (rev, implementation_id, pattern_uri, revtype) VALUES (5, '03223c33-7cd2-4496-84c9-c654da405b19', '\xaced00057372000c6a6176612e6e65742e555249ac01782e439e49ab0300014c0006737472696e677400124c6a6176612f6c616e672f537472696e673b787074007f68747470733a2f2f7061747465726e732e706c6174666f726d2e706c616e716b2e64652f7061747465726e2d6c616e6775616765732f61663737383064352d316639372d343533362d386461372d3431393462303933616231642f64613933663931352d376634632d343964662d393964302d38306439316632366133333778', 0);
INSERT INTO public.pattern_uris_aud (rev, implementation_id, pattern_uri, revtype) VALUES (6, '03223c33-7cd2-4496-84c9-c654da405b19', '\xaced00057372000c6a6176612e6e65742e555249ac01782e439e49ab0300014c0006737472696e677400124c6a6176612f6c616e672f537472696e673b787074007f68747470733a2f2f7061747465726e732e706c6174666f726d2e706c616e716b2e64652f7061747465726e2d6c616e6775616765732f61663737383064352d316639372d343533362d386461372d3431393462303933616231642f64613933663931352d376634632d343964662d393964302d38306439316632366133333778', 2);
INSERT INTO public.pattern_uris_aud (rev, implementation_id, pattern_uri, revtype) VALUES (7, '03223c33-7cd2-4496-84c9-c654da405b19', '\xaced00057372000c6a6176612e6e65742e555249ac01782e439e49ab0300014c0006737472696e677400124c6a6176612f6c616e672f537472696e673b787074005c2f7061747465726e2d6c616e6775616765732f61663737383064352d316639372d343533362d386461372d3431393462303933616231642f64613933663931352d376634632d343964662d393964302d38306439316632366133333778', 0);
INSERT INTO public.pattern_uris_aud (rev, implementation_id, pattern_uri, revtype) VALUES (8, '03223c33-7cd2-4496-84c9-c654da405b19', '\xaced00057372000c6a6176612e6e65742e555249ac01782e439e49ab0300014c0006737472696e677400124c6a6176612f6c616e672f537472696e673b787074005c2f7061747465726e2d6c616e6775616765732f61663737383064352d316639372d343533362d386461372d3431393462303933616231642f64613933663931352d376634632d343964662d393964302d38306439316632366133333778', 2);
INSERT INTO public.pattern_uris_aud (rev, implementation_id, pattern_uri, revtype) VALUES (9, '03223c33-7cd2-4496-84c9-c654da405b19', '\xaced00057372000c6a6176612e6e65742e555249ac01782e439e49ab0300014c0006737472696e677400124c6a6176612f6c616e672f537472696e673b787074005b7061747465726e2d6c616e6775616765732f61663737383064352d316639372d343533362d386461372d3431393462303933616231642f64613933663931352d376634632d343964662d393964302d38306439316632366133333778', 0);


--
-- TOC entry 3333 (class 0 OID 16502)
-- Dependencies: 229
-- Data for Name: publication_authors; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.publication_authors (publication_id, authors) VALUES ('f05c9136-2f9f-433f-9c35-85009111ee3c', 'Peter W. Shor');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Daoyl Dong');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Chunlin Chen');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Hanxiong Li');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Tzyh-Jong Tarn');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Vojtech Havlicek');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Antionio D. Córcoles');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Kristian Temme');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Aram W. Harrow');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Abhinav Kandala');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Jerry M. Chow');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Jay M. Gambetta');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Dennis Willsch');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Madita Willsch');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Hans De Raedt');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Kristel Michielsen');


--
-- TOC entry 3334 (class 0 OID 16505)
-- Dependencies: 230
-- Data for Name: quantum_algorithm; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (true, NULL, NULL, '379ec44e-1ce5-11eb-adf2-0242ac160002');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, 'b61578ed-df66-44ec-954c-9bcf9906f490');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '4ab28e22-cdf9-45f8-b872-f4d9d2757b6d');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '16aa96c5-b668-4df9-a03f-96d323708676');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 2, NULL, '9aa16271-6ea1-4e15-ad9d-6e6e264a0ad0');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, 'exponential', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '871f7eea-4722-4728-8cd9-1e61fe2dd285');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '0f6587f3-6b6b-4dd4-98aa-b464913b8c14');


--
-- TOC entry 3354 (class 0 OID 17630)
-- Dependencies: 250
-- Data for Name: quantum_algorithm_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('0f6587f3-6b6b-4dd4-98aa-b464913b8c14', 2, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('0f6587f3-6b6b-4dd4-98aa-b464913b8c14', 3, false, 0, NULL);


--
-- TOC entry 3335 (class 0 OID 16508)
-- Dependencies: 231
-- Data for Name: quantum_implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3355 (class 0 OID 17635)
-- Dependencies: 251
-- Data for Name: quantum_implementation_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3338 (class 0 OID 16523)
-- Dependencies: 234
-- Data for Name: software_platform_cloud_services; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3339 (class 0 OID 16526)
-- Dependencies: 235
-- Data for Name: software_platforms_compute_resources; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3358 (class 0 OID 17653)
-- Dependencies: 254
-- Data for Name: tosca_application; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3357 (class 0 OID 17645)
-- Dependencies: 253
-- Data for Name: tosca_application_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 255
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: planqk
--

SELECT pg_catalog.setval('public.hibernate_sequence', 9, true);


-- Completed on 2023-11-09 14:09:14 CET

--
-- PostgreSQL database dump complete
--

