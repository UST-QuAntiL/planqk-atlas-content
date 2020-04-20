from qiskit.aqua.algorithms.single_sample import Shor


def get_circuit_for_input(n):
    """Get circuit of Shor with input n."""
    shor = Shor(n)
    shor_circuit = shor.construct_circuit()
    return shor_circuit
