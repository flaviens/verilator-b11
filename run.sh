rm -rf obj_dir_fnoacycsimp        && mkdir -p obj_dir_fnoacycsimp       
rm -rf obj_dir_fnoassemble        && mkdir -p obj_dir_fnoassemble       
rm -rf obj_dir_fnocase            && mkdir -p obj_dir_fnocase           
rm -rf obj_dir_fnocombine         && mkdir -p obj_dir_fnocombine        
rm -rf obj_dir_fnoconst           && mkdir -p obj_dir_fnoconst          
rm -rf obj_dir_fnoconstbitoptree  && mkdir -p obj_dir_fnoconstbitoptree 
rm -rf obj_dir_fnodedup           && mkdir -p obj_dir_fnodedup          
rm -rf obj_dir_fnodfg             && mkdir -p obj_dir_fnodfg            
rm -rf obj_dir_fnodfgpeephole     && mkdir -p obj_dir_fnodfgpeephole    
rm -rf obj_dir_fnodfgpreinline    && mkdir -p obj_dir_fnodfgpreinline   
rm -rf obj_dir_fnodfgpostinline   && mkdir -p obj_dir_fnodfgpostinline  
rm -rf obj_dir_fnoexpand          && mkdir -p obj_dir_fnoexpand         
rm -rf obj_dir_fnogate            && mkdir -p obj_dir_fnogate           
rm -rf obj_dir_fnoinline          && mkdir -p obj_dir_fnoinline         
rm -rf obj_dir_fnolife            && mkdir -p obj_dir_fnolife           
rm -rf obj_dir_fnolifepost        && mkdir -p obj_dir_fnolifepost       
rm -rf obj_dir_fnolocalize        && mkdir -p obj_dir_fnolocalize       
rm -rf obj_dir_fnomergecond       && mkdir -p obj_dir_fnomergecond      
rm -rf obj_dir_fnomergecondmotion && mkdir -p obj_dir_fnomergecondmotion
rm -rf obj_dir_fnomergeconstpool  && mkdir -p obj_dir_fnomergeconstpool 
rm -rf obj_dir_fnoreloop          && mkdir -p obj_dir_fnoreloop         
rm -rf obj_dir_fnoreorder         && mkdir -p obj_dir_fnoreorder        
rm -rf obj_dir_fnosplit           && mkdir -p obj_dir_fnosplit          
rm -rf obj_dir_fnosubst           && mkdir -p obj_dir_fnosubst          
rm -rf obj_dir_fnosubstconst      && mkdir -p obj_dir_fnosubstconst     
rm -rf obj_dir_fnotable           && mkdir -p obj_dir_fnotable          

verilator --cc -fno-acyc-simp         --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnoacycsimp        --build-jobs 32 &
verilator --cc -fno-assemble          --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnoassemble        --build-jobs 32 &
verilator --cc -fno-case              --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnocase            --build-jobs 32 &
verilator --cc -fno-combine           --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnocombine         --build-jobs 32 &
verilator --cc -fno-const             --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnoconst           --build-jobs 32 &
verilator --cc -fno-const-bit-op-tree --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnoconstbitoptree  --build-jobs 32 &
verilator --cc -fno-dedup             --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnodedup           --build-jobs 32 &
verilator --cc -fno-dfg               --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnodfg             --build-jobs 32 &
verilator --cc -fno-dfg-peephole      --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnodfgpeephole     --build-jobs 32 &
verilator --cc -fno-dfg-pre-inline    --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnodfgpreinline    --build-jobs 32 &
verilator --cc -fno-dfg-post-inline   --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnodfgpostinline   --build-jobs 32 &
verilator --cc -fno-expand            --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnoexpand          --build-jobs 32 &
verilator --cc -fno-gate              --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnogate            --build-jobs 32 &
verilator --cc -fno-inline            --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnoinline          --build-jobs 32 &
verilator --cc -fno-life              --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnolife            --build-jobs 32 &
verilator --cc -fno-life-post         --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnolifepost        --build-jobs 32 &
verilator --cc -fno-localize          --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnolocalize        --build-jobs 32 &
verilator --cc -fno-merge-cond        --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnomergecond       --build-jobs 32 &
verilator --cc -fno-merge-cond-motion --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnomergecondmotion --build-jobs 32 &
verilator --cc -fno-merge-const-pool  --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnomergeconstpool  --build-jobs 32 &
verilator --cc -fno-reloop            --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnoreloop          --build-jobs 32 &
verilator --cc -fno-reorder           --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnoreorder         --build-jobs 32 &
verilator --cc -fno-split             --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnosplit           --build-jobs 32 &
verilator --cc -fno-subst             --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnosubst           --build-jobs 32 &
verilator --cc -fno-subst-const       --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnosubstconst      --build-jobs 32 &
verilator --cc -fno-table             --exe -Wno-MULTIDRIVEN --Wno-UNOPTFLAT -Wno-WIDTHTRUNC --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_fnotable           --build-jobs 32

echo -fno-acyc-simp
TRACEFILE=fnoacycsimp_trace.vcd        obj_dir_fnoacycsimp/Vtop       
echo -fno-assemble
TRACEFILE=fnoassemble_trace.vcd        obj_dir_fnoassemble/Vtop       
echo -fno-case
TRACEFILE=fnocase_trace.vcd            obj_dir_fnocase/Vtop           
echo -fno-combine
TRACEFILE=fnocombine_trace.vcd         obj_dir_fnocombine/Vtop        
echo -fno-const
TRACEFILE=fnoconst_trace.vcd           obj_dir_fnoconst/Vtop          
echo -fno-const-bit-op-tree
TRACEFILE=fnoconstbitoptree_trace.vcd  obj_dir_fnoconstbitoptree/Vtop 
echo -fno-dedup
TRACEFILE=fnodedup_trace.vcd           obj_dir_fnodedup/Vtop          
echo -fno-dfg
TRACEFILE=fnodfg_trace.vcd             obj_dir_fnodfg/Vtop            
echo -fno-dfg-peephole
TRACEFILE=fnodfgpeephole_trace.vcd     obj_dir_fnodfgpeephole/Vtop    
echo -fno-dfg-pre-inline
TRACEFILE=fnodfgpreinline_trace.vcd    obj_dir_fnodfgpreinline/Vtop   
echo -fno-dfg-post-inline
TRACEFILE=fnodfgpostinline_trace.vcd   obj_dir_fnodfgpostinline/Vtop  
echo -fno-expand
TRACEFILE=fnoexpand_trace.vcd          obj_dir_fnoexpand/Vtop         
echo -fno-gate
TRACEFILE=fnogate_trace.vcd            obj_dir_fnogate/Vtop           
echo -fno-inline
TRACEFILE=fnoinline_trace.vcd          obj_dir_fnoinline/Vtop         
echo -fno-life
TRACEFILE=fnolife_trace.vcd            obj_dir_fnolife/Vtop           
echo -fno-life-post
TRACEFILE=fnolifepost_trace.vcd        obj_dir_fnolifepost/Vtop       
echo -fno-localize
TRACEFILE=fnolocalize_trace.vcd        obj_dir_fnolocalize/Vtop       
echo -fno-merge-cond
TRACEFILE=fnomergecond_trace.vcd       obj_dir_fnomergecond/Vtop      
echo -fno-merge-cond-motion
TRACEFILE=fnomergecondmotion_trace.vcd obj_dir_fnomergecondmotion/Vtop
echo -fno-merge-const-pool
TRACEFILE=fnomergeconstpool_trace.vcd  obj_dir_fnomergeconstpool/Vtop 
echo -fno-reloop
TRACEFILE=fnoreloop_trace.vcd          obj_dir_fnoreloop/Vtop         
echo -fno-reorder
TRACEFILE=fnoreorder_trace.vcd         obj_dir_fnoreorder/Vtop        
echo -fno-split
TRACEFILE=fnosplit_trace.vcd           obj_dir_fnosplit/Vtop          
echo -fno-subst
TRACEFILE=fnosubst_trace.vcd           obj_dir_fnosubst/Vtop          
echo -fno-subst-const
TRACEFILE=fnosubstconst_trace.vcd      obj_dir_fnosubstconst/Vtop     
echo -fno-table
TRACEFILE=fnotable_trace.vcd           obj_dir_fnotable/Vtop          