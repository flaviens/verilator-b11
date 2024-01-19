// Copyright 2023 Flavien Solt, ETH Zurich.
// Licensed under the General Public License, Version 3.0, see LICENSE for details.
// SPDX-License-Identifier: GPL-3.0-only

#include "Vtop.h"
#include "verilated.h"

#include <iostream>
#include <stdlib.h>

#if VM_TRACE
#if VM_TRACE_FST
#include <verilated_fst_c.h>
#else
#include <verilated_vcd_c.h>
#endif // VM_TRACE_FST
#endif // VM_TRACE

#if VM_TRACE
const int kTraceLevel = 6;
#if VM_TRACE_FST
  VerilatedFstC *trace_;
#else
  VerilatedVcdC *trace_;
#endif // VM_TRACE_FST
#endif // VM_TRACE

typedef Vtop Module;

int main(int argc, char **argv, char **env) {

  Verilated::commandArgs(argc, argv);
  Verilated::traceEverOn(VM_TRACE);

  ////////
  // Instantiate the module.
  ////////

  Module *my_module = new Module;


#if VM_TRACE
  std::string vcd_filepath = "trace.vcd";
#if VM_TRACE_FST
    trace_ = new VerilatedFstC;
#else
    trace_ = new VerilatedVcdC;
#endif // VM_TRACE_FST
    my_module->trace(trace_, kTraceLevel);
    trace_->open(vcd_filepath.c_str());
    size_t tick_count_ = 0;
#endif // VM_TRACE

  my_module->in_data[0] = 0xaba273d2;
  my_module->in_data[1] = 0xc7e07fd0;
  my_module->in_data[2] = 0xa6ff357c;

  my_module->eval();

  uint32_t out_1 = my_module->out_data[1];

#if VM_TRACE
      trace_->dump(0);
      trace_->flush();
#endif // VM_TRACE

  std::cout << "Output[33] " << ((out_1 & 0b10) >> 1) << std::endl;

  delete my_module;
  exit(0);
}
