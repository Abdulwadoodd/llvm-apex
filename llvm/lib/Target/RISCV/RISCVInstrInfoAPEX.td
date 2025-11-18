//===-- RISCVInstrInfoAPEX.td - RISC-V 'APEX Co-processor' instructions -------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the RISC-V instructions from APEX co-processor instruction,
//
//===----------------------------------------------------------------------===//

let mayLoad = 0, mayStore = 0, hasSideEffects = 0 in {
  def MRBR : RVInstR<
    /*funct7=*/0b0000000,
    /*funct3=*/0b000,
    /*opcode=*/OPC_APEX,
    /*outs=*/(outs GPR:$rd),
    /*ins=*/(ins GPR:$rs1, GPR:$rs2),
    /*opcodestr=*/"mrbr",
    /*argstr=*/"$rd, $rs1, $rs2"
  >;
}