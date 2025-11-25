//==- BuiltinsRISCVXAPEX.td - RISC-V APEX Builtin database ----*- tablegen -*-==//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file defines the APEX-specific builtin function database for RISC-V.
// Users must define the BUILTIN macro to use this.
//
//===----------------------------------------------------------------------===//

let Attributes = [NoThrow] in {

//===----------------------------------------------------------------------===//
// APEX extension builtins.
//===----------------------------------------------------------------------===//

// mrbr : maps to intrinsic int_riscv_mrbr : i32(i32, i32)
def mrbr : RISCVBuiltin<"int(int, int)">;

} // Attributes = [NoThrow]