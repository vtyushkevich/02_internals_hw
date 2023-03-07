Description
This repository contains the following three patches that add new features to the Python language:

new_opcode.patch This patch adds the new LOAD_OTUS opcode (Python bytecode instruction, see https://docs.python.org/2.7/library/dis.html). LOAD_OTUS opcode combines existing LOAD_FAST and LOAD_CONST opcodes as follows:

LOAD_OTUS c
is equivalent to:

LOAD_FAST 0
LOAD_CONST c
where c is the integer argument.

Since the above combination of LOAD_FAST and LOAD_CONST is relatively common, this change is intended to speed up bytecode execution and make dis.dis() output a little more compact.
