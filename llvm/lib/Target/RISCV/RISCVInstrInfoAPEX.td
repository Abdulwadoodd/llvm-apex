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
  def MRDR : RVInstR<
    /*funct7=*/0b0000000,
    /*funct3=*/0b000,
    /*opcode=*/OPC_APEX,
    /*outs=*/(outs GPR:$rd),
    /*ins=*/(ins GPR:$rs1),
    /*opcodestr=*/"apex.mrdr",
    /*argstr=*/"$rd, $rs1"
  > {
    // Set the bits directly without using the field variables
    let Inst{24-20} = 0;  // rs2 = 0
  }
}

// bfly2 rd, rs1, rs2; rd=rs3
let hasSideEffects = 0, mayLoad = 0, mayStore = 0 in {
  def BFLY2_R3 : RVInstR<
    /*funct7=*/0b0000000,
    /*funct3=*/ 0b001,
    OPC_APEX,
    (outs GPR:$rd),
    (ins GPR:$rs1, GPR:$rs2),
    "apex.bfly2",
    "$rd, $rs1, $rs2"
  >;
}

// bfly4 rd, rs1, rs2; rd=rs3
let hasSideEffects = 0, mayLoad = 0, mayStore = 0 in {
  def BFLY4_R3 : RVInstR<
    /*funct7=*/0b0000000,
    /*funct3=*/ 0b101,
    OPC_APEX,
    (outs GPR:$rd),
    (ins GPR:$rs1, GPR:$rs2),
    "apex.bfly4",
    "$rd, $rs1, $rs2"
  >;
}

// sw.set
let hasSideEffects = 0, mayLoad = 0, mayStore = 0 in {
  def APEX_SW_SET : RVInstR4<
    /*funct2=*/ 0b00,
    /*funct3=*/ 0b010,
    OPC_APEX,
    (outs),
    (ins),
    "apex.sw.set",
    ""
  > {
    // Set the bits directly without using the field variables
    let Inst{31-27} = 0;  // rs3 = 0
    let Inst{24-20} = 0;  // rs2 = 0
    let Inst{19-15} = 0;  // rs1 = 0
    let Inst{11-7}  = 0;  // rd = 0
  }
}

// sw.reset
let hasSideEffects = 0, mayLoad = 0, mayStore = 0 in {
  def APEX_SW_RESET : RVInstR4<
    /*funct2=*/ 0b00,
    /*funct3=*/ 0b011,
    OPC_APEX,
    (outs),
    (ins),
    "apex.sw.reset",
    ""
  > {
    // Set the bits directly without using the field variables
    let Inst{31-27} = 0;  // rs3 = 0
    let Inst{24-20} = 0;  // rs2 = 0
    let Inst{19-15} = 0;  // rs1 = 0
    let Inst{11-7}  = 0;  // rd = 0
  }
}

// bfly2.r4 rd, rs1, rs2, rs3
let hasSideEffects = 0, mayLoad = 0, mayStore = 0 in {
  def BFLY2_R4 : RVInstR4<
    /*funct2=*/ 0b00,
    /*funct3=*/ 0b100,
    OPC_APEX,
    (outs GPR:$rd),
    (ins GPR:$rs1, GPR:$rs2, GPR:$rs3),
    "bfly2.r4",
    "$rd, $rs1, $rs2, $rs3"
  >;
}
