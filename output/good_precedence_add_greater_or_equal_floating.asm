        Jump         $$main                    
        DLabel       $eat-location-zero        
        DataZ        8                         
        DLabel       $print-format-integer     
        DataC        37                        %% "%d"
        DataC        100                       
        DataC        0                         
        DLabel       $print-format-floating    
        DataC        37                        %% "%g"
        DataC        103                       
        DataC        0                         
        DLabel       $print-format-boolean     
        DataC        37                        %% "%s"
        DataC        115                       
        DataC        0                         
        DLabel       $print-format-character   
        DataC        37                        %% "%c"
        DataC        99                        
        DataC        0                         
        DLabel       $print-format-string      
        DataC        37                        %% "%s"
        DataC        115                       
        DataC        0                         
        DLabel       $print-format-newline     
        DataC        10                        %% "\n"
        DataC        0                         
        DLabel       $print-format-tab         
        DataC        9                         %% "\t"
        DataC        0                         
        DLabel       $print-format-space       
        DataC        32                        %% " "
        DataC        0                         
        DLabel       $boolean-true-string      
        DataC        116                       %% "true"
        DataC        114                       
        DataC        117                       
        DataC        101                       
        DataC        0                         
        DLabel       $boolean-false-string     
        DataC        102                       %% "false"
        DataC        97                        
        DataC        108                       
        DataC        115                       
        DataC        101                       
        DataC        0                         
        DLabel       $errors-general-message   
        DataC        82                        %% "Runtime error: %s\n"
        DataC        117                       
        DataC        110                       
        DataC        116                       
        DataC        105                       
        DataC        109                       
        DataC        101                       
        DataC        32                        
        DataC        101                       
        DataC        114                       
        DataC        114                       
        DataC        111                       
        DataC        114                       
        DataC        58                        
        DataC        32                        
        DataC        37                        
        DataC        115                       
        DataC        10                        
        DataC        0                         
        Label        $$general-runtime-error   
        PushD        $errors-general-message   
        Printf                                 
        Halt                                   
        DLabel       $errors-int-divide-by-zero 
        DataC        105                       %% "integer divide by zero"
        DataC        110                       
        DataC        116                       
        DataC        101                       
        DataC        103                       
        DataC        101                       
        DataC        114                       
        DataC        32                        
        DataC        100                       
        DataC        105                       
        DataC        118                       
        DataC        105                       
        DataC        100                       
        DataC        101                       
        DataC        32                        
        DataC        98                        
        DataC        121                       
        DataC        32                        
        DataC        122                       
        DataC        101                       
        DataC        114                       
        DataC        111                       
        DataC        0                         
        Label        $$i-divide-by-zero        
        PushD        $errors-int-divide-by-zero 
        Jump         $$general-runtime-error   
        DLabel       $errors-float-divide-by-zero 
        DataC        102                       %% "floating divide by zero"
        DataC        108                       
        DataC        111                       
        DataC        97                        
        DataC        116                       
        DataC        105                       
        DataC        110                       
        DataC        103                       
        DataC        32                        
        DataC        100                       
        DataC        105                       
        DataC        118                       
        DataC        105                       
        DataC        100                       
        DataC        101                       
        DataC        32                        
        DataC        98                        
        DataC        121                       
        DataC        32                        
        DataC        122                       
        DataC        101                       
        DataC        114                       
        DataC        111                       
        DataC        0                         
        Label        $$f-divide-by-zero        
        PushD        $errors-float-divide-by-zero 
        Jump         $$general-runtime-error   
        DLabel       $usable-memory-start      
        DLabel       $global-memory-block      
        DataZ        0                         
        Label        $$main                    
        Label        -compare-510-arg1         
        PushF        7.300000                  
        PushF        1.400000                  
        FAdd                                   
        Label        -compare-510-arg2         
        PushF        9.400000                  
        Label        -compare-510-sub          
        FSubtract                              
        JumpFNeg     -compare-510-false        
        Jump         -compare-510-true         
        Label        -compare-510-true         
        PushI        1                         
        Jump         -compare-510-join         
        Label        -compare-510-false        
        PushI        0                         
        Jump         -compare-510-join         
        Label        -compare-510-join         
        JumpTrue     -print-boolean-511-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-511-join   
        Label        -print-boolean-511-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-511-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-512-arg1         
        PushF        8.000000                  
        PushF        7.500000                  
        FAdd                                   
        Label        -compare-512-arg2         
        PushF        7.100000                  
        Label        -compare-512-sub          
        FSubtract                              
        JumpFNeg     -compare-512-false        
        Jump         -compare-512-true         
        Label        -compare-512-true         
        PushI        1                         
        Jump         -compare-512-join         
        Label        -compare-512-false        
        PushI        0                         
        Jump         -compare-512-join         
        Label        -compare-512-join         
        JumpTrue     -print-boolean-513-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-513-join   
        Label        -print-boolean-513-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-513-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-514-arg1         
        PushF        8.200000                  
        PushF        1.400000                  
        FAdd                                   
        Label        -compare-514-arg2         
        PushF        2.300000                  
        Label        -compare-514-sub          
        FSubtract                              
        JumpFNeg     -compare-514-false        
        Jump         -compare-514-true         
        Label        -compare-514-true         
        PushI        1                         
        Jump         -compare-514-join         
        Label        -compare-514-false        
        PushI        0                         
        Jump         -compare-514-join         
        Label        -compare-514-join         
        JumpTrue     -print-boolean-515-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-515-join   
        Label        -print-boolean-515-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-515-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-516-arg1         
        PushF        3.900000                  
        PushF        6.000000                  
        FAdd                                   
        Label        -compare-516-arg2         
        PushF        5.100000                  
        Label        -compare-516-sub          
        FSubtract                              
        JumpFNeg     -compare-516-false        
        Jump         -compare-516-true         
        Label        -compare-516-true         
        PushI        1                         
        Jump         -compare-516-join         
        Label        -compare-516-false        
        PushI        0                         
        Jump         -compare-516-join         
        Label        -compare-516-join         
        JumpTrue     -print-boolean-517-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-517-join   
        Label        -print-boolean-517-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-517-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-518-arg1         
        PushF        3.700000                  
        PushF        7.000000                  
        FAdd                                   
        Label        -compare-518-arg2         
        PushF        5.500000                  
        Label        -compare-518-sub          
        FSubtract                              
        JumpFNeg     -compare-518-false        
        Jump         -compare-518-true         
        Label        -compare-518-true         
        PushI        1                         
        Jump         -compare-518-join         
        Label        -compare-518-false        
        PushI        0                         
        Jump         -compare-518-join         
        Label        -compare-518-join         
        JumpTrue     -print-boolean-519-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-519-join   
        Label        -print-boolean-519-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-519-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-520-arg1         
        PushF        6.400000                  
        PushF        5.200000                  
        FAdd                                   
        Label        -compare-520-arg2         
        PushF        3.000000                  
        Label        -compare-520-sub          
        FSubtract                              
        JumpFNeg     -compare-520-false        
        Jump         -compare-520-true         
        Label        -compare-520-true         
        PushI        1                         
        Jump         -compare-520-join         
        Label        -compare-520-false        
        PushI        0                         
        Jump         -compare-520-join         
        Label        -compare-520-join         
        JumpTrue     -print-boolean-521-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-521-join   
        Label        -print-boolean-521-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-521-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-522-arg1         
        PushF        1.600000                  
        PushF        5.500000                  
        FAdd                                   
        Label        -compare-522-arg2         
        PushF        3.500000                  
        Label        -compare-522-sub          
        FSubtract                              
        JumpFNeg     -compare-522-false        
        Jump         -compare-522-true         
        Label        -compare-522-true         
        PushI        1                         
        Jump         -compare-522-join         
        Label        -compare-522-false        
        PushI        0                         
        Jump         -compare-522-join         
        Label        -compare-522-join         
        JumpTrue     -print-boolean-523-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-523-join   
        Label        -print-boolean-523-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-523-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-524-arg1         
        PushF        8.000000                  
        PushF        3.400000                  
        FAdd                                   
        Label        -compare-524-arg2         
        PushF        4.400000                  
        Label        -compare-524-sub          
        FSubtract                              
        JumpFNeg     -compare-524-false        
        Jump         -compare-524-true         
        Label        -compare-524-true         
        PushI        1                         
        Jump         -compare-524-join         
        Label        -compare-524-false        
        PushI        0                         
        Jump         -compare-524-join         
        Label        -compare-524-join         
        JumpTrue     -print-boolean-525-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-525-join   
        Label        -print-boolean-525-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-525-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-526-arg1         
        PushF        3.700000                  
        PushF        1.500000                  
        FAdd                                   
        Label        -compare-526-arg2         
        PushF        8.000000                  
        Label        -compare-526-sub          
        FSubtract                              
        JumpFNeg     -compare-526-false        
        Jump         -compare-526-true         
        Label        -compare-526-true         
        PushI        1                         
        Jump         -compare-526-join         
        Label        -compare-526-false        
        PushI        0                         
        Jump         -compare-526-join         
        Label        -compare-526-join         
        JumpTrue     -print-boolean-527-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-527-join   
        Label        -print-boolean-527-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-527-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-528-arg1         
        PushF        3.200000                  
        PushF        2.200000                  
        FAdd                                   
        Label        -compare-528-arg2         
        PushF        7.300000                  
        Label        -compare-528-sub          
        FSubtract                              
        JumpFNeg     -compare-528-false        
        Jump         -compare-528-true         
        Label        -compare-528-true         
        PushI        1                         
        Jump         -compare-528-join         
        Label        -compare-528-false        
        PushI        0                         
        Jump         -compare-528-join         
        Label        -compare-528-join         
        JumpTrue     -print-boolean-529-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-529-join   
        Label        -print-boolean-529-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-529-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-530-arg1         
        PushF        4.300000                  
        PushF        7.500000                  
        FAdd                                   
        Label        -compare-530-arg2         
        PushF        8.400000                  
        Label        -compare-530-sub          
        FSubtract                              
        JumpFNeg     -compare-530-false        
        Jump         -compare-530-true         
        Label        -compare-530-true         
        PushI        1                         
        Jump         -compare-530-join         
        Label        -compare-530-false        
        PushI        0                         
        Jump         -compare-530-join         
        Label        -compare-530-join         
        JumpTrue     -print-boolean-531-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-531-join   
        Label        -print-boolean-531-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-531-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-532-arg1         
        PushF        7.500000                  
        PushF        7.900000                  
        FAdd                                   
        Label        -compare-532-arg2         
        PushF        3.700000                  
        Label        -compare-532-sub          
        FSubtract                              
        JumpFNeg     -compare-532-false        
        Jump         -compare-532-true         
        Label        -compare-532-true         
        PushI        1                         
        Jump         -compare-532-join         
        Label        -compare-532-false        
        PushI        0                         
        Jump         -compare-532-join         
        Label        -compare-532-join         
        JumpTrue     -print-boolean-533-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-533-join   
        Label        -print-boolean-533-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-533-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-534-arg1         
        PushF        7.900000                  
        Label        -compare-534-arg2         
        PushF        1.700000                  
        PushF        4.700000                  
        FAdd                                   
        Label        -compare-534-sub          
        FSubtract                              
        JumpFNeg     -compare-534-false        
        Jump         -compare-534-true         
        Label        -compare-534-true         
        PushI        1                         
        Jump         -compare-534-join         
        Label        -compare-534-false        
        PushI        0                         
        Jump         -compare-534-join         
        Label        -compare-534-join         
        JumpTrue     -print-boolean-535-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-535-join   
        Label        -print-boolean-535-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-535-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-536-arg1         
        PushF        5.700000                  
        Label        -compare-536-arg2         
        PushF        1.200000                  
        PushF        9.600000                  
        FAdd                                   
        Label        -compare-536-sub          
        FSubtract                              
        JumpFNeg     -compare-536-false        
        Jump         -compare-536-true         
        Label        -compare-536-true         
        PushI        1                         
        Jump         -compare-536-join         
        Label        -compare-536-false        
        PushI        0                         
        Jump         -compare-536-join         
        Label        -compare-536-join         
        JumpTrue     -print-boolean-537-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-537-join   
        Label        -print-boolean-537-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-537-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-538-arg1         
        PushF        5.500000                  
        Label        -compare-538-arg2         
        PushF        2.600000                  
        PushF        4.200000                  
        FAdd                                   
        Label        -compare-538-sub          
        FSubtract                              
        JumpFNeg     -compare-538-false        
        Jump         -compare-538-true         
        Label        -compare-538-true         
        PushI        1                         
        Jump         -compare-538-join         
        Label        -compare-538-false        
        PushI        0                         
        Jump         -compare-538-join         
        Label        -compare-538-join         
        JumpTrue     -print-boolean-539-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-539-join   
        Label        -print-boolean-539-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-539-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-540-arg1         
        PushF        2.900000                  
        Label        -compare-540-arg2         
        PushF        6.300000                  
        PushF        1.700000                  
        FAdd                                   
        Label        -compare-540-sub          
        FSubtract                              
        JumpFNeg     -compare-540-false        
        Jump         -compare-540-true         
        Label        -compare-540-true         
        PushI        1                         
        Jump         -compare-540-join         
        Label        -compare-540-false        
        PushI        0                         
        Jump         -compare-540-join         
        Label        -compare-540-join         
        JumpTrue     -print-boolean-541-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-541-join   
        Label        -print-boolean-541-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-541-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-542-arg1         
        PushF        6.900000                  
        Label        -compare-542-arg2         
        PushF        6.600000                  
        PushF        3.400000                  
        FAdd                                   
        Label        -compare-542-sub          
        FSubtract                              
        JumpFNeg     -compare-542-false        
        Jump         -compare-542-true         
        Label        -compare-542-true         
        PushI        1                         
        Jump         -compare-542-join         
        Label        -compare-542-false        
        PushI        0                         
        Jump         -compare-542-join         
        Label        -compare-542-join         
        JumpTrue     -print-boolean-543-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-543-join   
        Label        -print-boolean-543-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-543-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-544-arg1         
        PushF        8.700000                  
        Label        -compare-544-arg2         
        PushF        7.100000                  
        PushF        7.100000                  
        FAdd                                   
        Label        -compare-544-sub          
        FSubtract                              
        JumpFNeg     -compare-544-false        
        Jump         -compare-544-true         
        Label        -compare-544-true         
        PushI        1                         
        Jump         -compare-544-join         
        Label        -compare-544-false        
        PushI        0                         
        Jump         -compare-544-join         
        Label        -compare-544-join         
        JumpTrue     -print-boolean-545-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-545-join   
        Label        -print-boolean-545-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-545-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-546-arg1         
        PushF        4.900000                  
        Label        -compare-546-arg2         
        PushF        8.700000                  
        PushF        7.200000                  
        FAdd                                   
        Label        -compare-546-sub          
        FSubtract                              
        JumpFNeg     -compare-546-false        
        Jump         -compare-546-true         
        Label        -compare-546-true         
        PushI        1                         
        Jump         -compare-546-join         
        Label        -compare-546-false        
        PushI        0                         
        Jump         -compare-546-join         
        Label        -compare-546-join         
        JumpTrue     -print-boolean-547-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-547-join   
        Label        -print-boolean-547-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-547-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-548-arg1         
        PushF        6.200000                  
        Label        -compare-548-arg2         
        PushF        4.600000                  
        PushF        5.800000                  
        FAdd                                   
        Label        -compare-548-sub          
        FSubtract                              
        JumpFNeg     -compare-548-false        
        Jump         -compare-548-true         
        Label        -compare-548-true         
        PushI        1                         
        Jump         -compare-548-join         
        Label        -compare-548-false        
        PushI        0                         
        Jump         -compare-548-join         
        Label        -compare-548-join         
        JumpTrue     -print-boolean-549-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-549-join   
        Label        -print-boolean-549-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-549-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-550-arg1         
        PushF        2.300000                  
        Label        -compare-550-arg2         
        PushF        3.000000                  
        PushF        7.900000                  
        FAdd                                   
        Label        -compare-550-sub          
        FSubtract                              
        JumpFNeg     -compare-550-false        
        Jump         -compare-550-true         
        Label        -compare-550-true         
        PushI        1                         
        Jump         -compare-550-join         
        Label        -compare-550-false        
        PushI        0                         
        Jump         -compare-550-join         
        Label        -compare-550-join         
        JumpTrue     -print-boolean-551-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-551-join   
        Label        -print-boolean-551-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-551-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-552-arg1         
        PushF        4.200000                  
        Label        -compare-552-arg2         
        PushF        3.100000                  
        PushF        8.200000                  
        FAdd                                   
        Label        -compare-552-sub          
        FSubtract                              
        JumpFNeg     -compare-552-false        
        Jump         -compare-552-true         
        Label        -compare-552-true         
        PushI        1                         
        Jump         -compare-552-join         
        Label        -compare-552-false        
        PushI        0                         
        Jump         -compare-552-join         
        Label        -compare-552-join         
        JumpTrue     -print-boolean-553-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-553-join   
        Label        -print-boolean-553-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-553-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-554-arg1         
        PushF        2.900000                  
        Label        -compare-554-arg2         
        PushF        3.000000                  
        PushF        9.600000                  
        FAdd                                   
        Label        -compare-554-sub          
        FSubtract                              
        JumpFNeg     -compare-554-false        
        Jump         -compare-554-true         
        Label        -compare-554-true         
        PushI        1                         
        Jump         -compare-554-join         
        Label        -compare-554-false        
        PushI        0                         
        Jump         -compare-554-join         
        Label        -compare-554-join         
        JumpTrue     -print-boolean-555-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-555-join   
        Label        -print-boolean-555-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-555-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-556-arg1         
        PushF        7.700000                  
        Label        -compare-556-arg2         
        PushF        3.000000                  
        PushF        9.900000                  
        FAdd                                   
        Label        -compare-556-sub          
        FSubtract                              
        JumpFNeg     -compare-556-false        
        Jump         -compare-556-true         
        Label        -compare-556-true         
        PushI        1                         
        Jump         -compare-556-join         
        Label        -compare-556-false        
        PushI        0                         
        Jump         -compare-556-join         
        Label        -compare-556-join         
        JumpTrue     -print-boolean-557-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-557-join   
        Label        -print-boolean-557-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-557-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-558-arg1         
        PushF        2.600000                  
        PushF        6.400000                  
        FAdd                                   
        Label        -compare-558-arg2         
        PushF        2.400000                  
        PushF        9.100000                  
        FAdd                                   
        Label        -compare-558-sub          
        FSubtract                              
        JumpFNeg     -compare-558-false        
        Jump         -compare-558-true         
        Label        -compare-558-true         
        PushI        1                         
        Jump         -compare-558-join         
        Label        -compare-558-false        
        PushI        0                         
        Jump         -compare-558-join         
        Label        -compare-558-join         
        JumpTrue     -print-boolean-559-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-559-join   
        Label        -print-boolean-559-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-559-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-560-arg1         
        PushF        9.100000                  
        PushF        3.500000                  
        FAdd                                   
        Label        -compare-560-arg2         
        PushF        2.200000                  
        PushF        8.500000                  
        FAdd                                   
        Label        -compare-560-sub          
        FSubtract                              
        JumpFNeg     -compare-560-false        
        Jump         -compare-560-true         
        Label        -compare-560-true         
        PushI        1                         
        Jump         -compare-560-join         
        Label        -compare-560-false        
        PushI        0                         
        Jump         -compare-560-join         
        Label        -compare-560-join         
        JumpTrue     -print-boolean-561-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-561-join   
        Label        -print-boolean-561-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-561-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-562-arg1         
        PushF        4.000000                  
        PushF        7.600000                  
        FAdd                                   
        Label        -compare-562-arg2         
        PushF        1.800000                  
        PushF        9.300000                  
        FAdd                                   
        Label        -compare-562-sub          
        FSubtract                              
        JumpFNeg     -compare-562-false        
        Jump         -compare-562-true         
        Label        -compare-562-true         
        PushI        1                         
        Jump         -compare-562-join         
        Label        -compare-562-false        
        PushI        0                         
        Jump         -compare-562-join         
        Label        -compare-562-join         
        JumpTrue     -print-boolean-563-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-563-join   
        Label        -print-boolean-563-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-563-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-564-arg1         
        PushF        9.700000                  
        PushF        6.200000                  
        FAdd                                   
        Label        -compare-564-arg2         
        PushF        7.300000                  
        PushF        2.700000                  
        FAdd                                   
        Label        -compare-564-sub          
        FSubtract                              
        JumpFNeg     -compare-564-false        
        Jump         -compare-564-true         
        Label        -compare-564-true         
        PushI        1                         
        Jump         -compare-564-join         
        Label        -compare-564-false        
        PushI        0                         
        Jump         -compare-564-join         
        Label        -compare-564-join         
        JumpTrue     -print-boolean-565-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-565-join   
        Label        -print-boolean-565-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-565-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-566-arg1         
        PushF        4.500000                  
        PushF        9.600000                  
        FAdd                                   
        Label        -compare-566-arg2         
        PushF        4.100000                  
        PushF        7.100000                  
        FAdd                                   
        Label        -compare-566-sub          
        FSubtract                              
        JumpFNeg     -compare-566-false        
        Jump         -compare-566-true         
        Label        -compare-566-true         
        PushI        1                         
        Jump         -compare-566-join         
        Label        -compare-566-false        
        PushI        0                         
        Jump         -compare-566-join         
        Label        -compare-566-join         
        JumpTrue     -print-boolean-567-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-567-join   
        Label        -print-boolean-567-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-567-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-568-arg1         
        PushF        5.900000                  
        PushF        3.400000                  
        FAdd                                   
        Label        -compare-568-arg2         
        PushF        7.800000                  
        PushF        7.800000                  
        FAdd                                   
        Label        -compare-568-sub          
        FSubtract                              
        JumpFNeg     -compare-568-false        
        Jump         -compare-568-true         
        Label        -compare-568-true         
        PushI        1                         
        Jump         -compare-568-join         
        Label        -compare-568-false        
        PushI        0                         
        Jump         -compare-568-join         
        Label        -compare-568-join         
        JumpTrue     -print-boolean-569-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-569-join   
        Label        -print-boolean-569-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-569-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-570-arg1         
        PushF        5.900000                  
        PushF        4.300000                  
        FAdd                                   
        Label        -compare-570-arg2         
        PushF        3.700000                  
        PushF        9.000000                  
        FAdd                                   
        Label        -compare-570-sub          
        FSubtract                              
        JumpFNeg     -compare-570-false        
        Jump         -compare-570-true         
        Label        -compare-570-true         
        PushI        1                         
        Jump         -compare-570-join         
        Label        -compare-570-false        
        PushI        0                         
        Jump         -compare-570-join         
        Label        -compare-570-join         
        JumpTrue     -print-boolean-571-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-571-join   
        Label        -print-boolean-571-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-571-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-572-arg1         
        PushF        7.800000                  
        PushF        5.400000                  
        FAdd                                   
        Label        -compare-572-arg2         
        PushF        6.400000                  
        PushF        6.600000                  
        FAdd                                   
        Label        -compare-572-sub          
        FSubtract                              
        JumpFNeg     -compare-572-false        
        Jump         -compare-572-true         
        Label        -compare-572-true         
        PushI        1                         
        Jump         -compare-572-join         
        Label        -compare-572-false        
        PushI        0                         
        Jump         -compare-572-join         
        Label        -compare-572-join         
        JumpTrue     -print-boolean-573-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-573-join   
        Label        -print-boolean-573-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-573-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-574-arg1         
        PushF        5.700000                  
        PushF        6.200000                  
        FAdd                                   
        Label        -compare-574-arg2         
        PushF        8.900000                  
        PushF        4.000000                  
        FAdd                                   
        Label        -compare-574-sub          
        FSubtract                              
        JumpFNeg     -compare-574-false        
        Jump         -compare-574-true         
        Label        -compare-574-true         
        PushI        1                         
        Jump         -compare-574-join         
        Label        -compare-574-false        
        PushI        0                         
        Jump         -compare-574-join         
        Label        -compare-574-join         
        JumpTrue     -print-boolean-575-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-575-join   
        Label        -print-boolean-575-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-575-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-576-arg1         
        PushF        1.900000                  
        PushF        1.500000                  
        FAdd                                   
        Label        -compare-576-arg2         
        PushF        9.300000                  
        PushF        3.200000                  
        FAdd                                   
        Label        -compare-576-sub          
        FSubtract                              
        JumpFNeg     -compare-576-false        
        Jump         -compare-576-true         
        Label        -compare-576-true         
        PushI        1                         
        Jump         -compare-576-join         
        Label        -compare-576-false        
        PushI        0                         
        Jump         -compare-576-join         
        Label        -compare-576-join         
        JumpTrue     -print-boolean-577-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-577-join   
        Label        -print-boolean-577-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-577-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-578-arg1         
        PushF        8.000000                  
        PushF        3.200000                  
        FAdd                                   
        Label        -compare-578-arg2         
        PushF        9.400000                  
        PushF        8.100000                  
        FAdd                                   
        Label        -compare-578-sub          
        FSubtract                              
        JumpFNeg     -compare-578-false        
        Jump         -compare-578-true         
        Label        -compare-578-true         
        PushI        1                         
        Jump         -compare-578-join         
        Label        -compare-578-false        
        PushI        0                         
        Jump         -compare-578-join         
        Label        -compare-578-join         
        JumpTrue     -print-boolean-579-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-579-join   
        Label        -print-boolean-579-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-579-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-580-arg1         
        PushF        7.200000                  
        PushF        1.400000                  
        FAdd                                   
        Label        -compare-580-arg2         
        PushF        4.400000                  
        PushF        4.800000                  
        FAdd                                   
        Label        -compare-580-sub          
        FSubtract                              
        JumpFNeg     -compare-580-false        
        Jump         -compare-580-true         
        Label        -compare-580-true         
        PushI        1                         
        Jump         -compare-580-join         
        Label        -compare-580-false        
        PushI        0                         
        Jump         -compare-580-join         
        Label        -compare-580-join         
        JumpTrue     -print-boolean-581-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-581-join   
        Label        -print-boolean-581-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-581-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
