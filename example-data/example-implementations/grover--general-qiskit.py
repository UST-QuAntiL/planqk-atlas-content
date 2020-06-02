from qiskit.aqua.algorithms import Grover
from qiskit.aqua.components.oracles import TruthTableOracle


def get_circuit(**kwargs):
    oracle = kwargs["oracle"]   # input is binary String of a truth table, like '1000': A & B = 0 => f(x*) = 1

    print(oracle)
    truth_oracle = TruthTableOracle(oracle)
    grover = Grover(truth_oracle, num_iterations=5)
    grover_circuit = grover.construct_circuit(measurement=True)
    return grover_circuit
