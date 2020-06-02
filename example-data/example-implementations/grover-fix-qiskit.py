from qiskit import QuantumRegister, ClassicalRegister
from qiskit import QuantumCircuit

# https://quantum-circuit.com/app_details/about/LFQv9PKwerh3EzrLw
# searched oracle element is '0010'

qc = QuantumCircuit()

q = QuantumRegister(4, 'q')
ro = ClassicalRegister(4, 'ro')

qc.add_register(q)
qc.add_register(ro)

qc.h(q[0])
qc.h(q[1])
qc.h(q[2])
qc.h(q[3])
qc.x(q[0])
qc.x(q[2])
qc.x(q[3])
qc.crz(0.785398163397, q[0], q[3])
qc.cx(q[0], q[1])
qc.crz(-0.785398163397, q[1], q[3])
qc.cx(q[0], q[1])
qc.crz(0.785398163397, q[1], q[3])
qc.cx(q[1], q[2])
qc.crz(-0.785398163397, q[2], q[3])
qc.cx(q[0], q[2])
qc.crz(0.785398163397, q[2], q[3])
qc.cx(q[1], q[2])
qc.crz(-0.785398163397, q[2], q[3])
qc.cx(q[0], q[2])
qc.crz(0.785398163397, q[2], q[3])
qc.x(q[0])
qc.x(q[2])
qc.x(q[3])
qc.h(q[0])
qc.h(q[1])
qc.h(q[2])
qc.h(q[3])
qc.x(q[0])
qc.x(q[1])
qc.x(q[2])
qc.x(q[3])
qc.crz(0.785398163397, q[0], q[3])
qc.cx(q[0], q[1])
qc.crz(-0.785398163397, q[1], q[3])
qc.cx(q[0], q[1])
qc.crz(0.785398163397, q[1], q[3])
qc.cx(q[1], q[2])
qc.crz(-0.785398163397, q[2], q[3])
qc.cx(q[0], q[2])
qc.crz(0.785398163397, q[2], q[3])
qc.cx(q[1], q[2])
qc.crz(-0.785398163397, q[2], q[3])
qc.cx(q[0], q[2])
qc.crz(0.785398163397, q[2], q[3])
qc.x(q[0])
qc.x(q[1])
qc.x(q[2])
qc.x(q[3])
qc.h(q[0])
qc.h(q[1])
qc.h(q[2])
qc.h(q[3])
qc.measure(q[0], ro[0])
qc.measure(q[1], ro[1])
qc.measure(q[2], ro[2])
qc.measure(q[3], ro[3])


def get_circuit(**kwargs):
    return qc
