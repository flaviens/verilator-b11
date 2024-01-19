# Bug in Verilator that leads to a wrong runtime value.

To reproduce, please have Verilator installed and run:
```
bash run.sh
```

The signal `celloutsig_1z` is `2'b11` and `out_data[1:0]` is assigned to `celloutsig_1z`.
Yet some optimizations mistakenly cause `out_data[1:0] = 2'b01`.

I tried with many different optimization flags to get a better idea and here are the results:

Expected output:
```
-fno-assemble                     
Output[1:0]: 3                                                                                                                               
-fno-case     
Output[1:0]: 3
-fno-combine                      
Output[1:0]: 3                                                                                                                               
-fno-const    
Output[1:0]: 3
-fno-const-bit-op-tree
Output[1:0]: 3  
-fno-dedup            
Output[1:0]: 3
-fno-dfg      
Output[1:0]: 3                                                        
-fno-dfg-peephole                                                     
Output[1:0]: 3                                                        
-fno-dfg-pre-inline                                                   
Output[1:0]: 3                                                        
-fno-dfg-post-inline                                                  
Output[1:0]: 3                                                        
-fno-expand                                                           
Output[1:0]: 3                                                        
-fno-gate                                                             
Output[1:0]: 3                                                        
-fno-inline                                                           
Output[1:0]: 3                                                        
-fno-life                                                             
Output[1:0]: 3                                                        
-fno-life-post                                                        
Output[1:0]: 3                                                        
-fno-localize                                                         
Output[1:0]: 3                                                        
-fno-merge-cond                                                       
Output[1:0]: 3                                                        
-fno-merge-cond-motion                                                
Output[1:0]: 3                                                        
-fno-merge-const-pool                                                 
Output[1:0]: 3                                                        
-fno-reloop                                                           
Output[1:0]: 3                                                        
-fno-reorder                                                          
Output[1:0]: 3                                                        
-fno-split                                                            
Output[1:0]: 3                                                        
-fno-subst                                                            
Output[1:0]: 3                                                        
-fno-subst-const                                                      
Output[1:0]: 3                                                        
-fno-table                                                            
Output[1:0]: 3                                                        
```

Actual output:
```
-fno-assemble                     
Output[1:0]: 1                                                                                                                               
-fno-case     
Output[1:0]: 1
-fno-combine                      
Output[1:0]: 1                                                                                                                               
-fno-const    
Output[1:0]: 1
-fno-const-bit-op-tree
Output[1:0]: 3  
-fno-dedup            
Output[1:0]: 1
-fno-dfg      
Output[1:0]: 1                                                        
-fno-dfg-peephole                                                     
Output[1:0]: 1                                                        
-fno-dfg-pre-inline                                                   
Output[1:0]: 1                                                        
-fno-dfg-post-inline                                                  
Output[1:0]: 1                                                        
-fno-expand                                                           
Output[1:0]: 3                                                        
-fno-gate                                                             
Output[1:0]: 1                                                        
-fno-inline                                                           
Output[1:0]: 1                                                        
-fno-life                                                             
Output[1:0]: 1                                                        
-fno-life-post                                                        
Output[1:0]: 1                                                        
-fno-localize                                                         
Output[1:0]: 1                                                        
-fno-merge-cond                                                       
Output[1:0]: 1                                                        
-fno-merge-cond-motion                                                
Output[1:0]: 1                                                        
-fno-merge-const-pool                                                 
Output[1:0]: 1                                                        
-fno-reloop                                                           
Output[1:0]: 1                                                        
-fno-reorder                                                          
Output[1:0]: 1                                                        
-fno-split                                                            
Output[1:0]: 1                                                        
-fno-subst                                                            
Output[1:0]: 3                                                        
-fno-subst-const                                                      
Output[1:0]: 3                                                        
-fno-table                                                            
Output[1:0]: 1                                                        
```

In summary, the following individual flags correct the bug:
`-fno-const-bit-op-tree`
`-fno-expand`
`-fno-subst`
`-fno-subst-const`
