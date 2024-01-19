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

  my_module->in_data[0] = 0xbcbfd95d;
  my_module->in_data[1] = 0x154dab50;
  my_module->in_data[2] = 0xf98f8276;

  my_module->eval();

  uint32_t out_0 = my_module->out_data[0];

#if VM_TRACE
      trace_->dump(0);
      trace_->flush();
#endif // VM_TRACE

  std::cout << "Output[1:0]: " << (out_0 & 0b11) << std::endl;

  delete my_module;
  exit(0);
}
