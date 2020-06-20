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
        Label        -compare-5497-arg1        
        PushF        4.400000                  
        PushF        6.700000                  
        FSubtract                              
        Label        -compare-5497-arg2        
        PushF        8.500000                  
        Label        -compare-5497-sub         
        FSubtract                              
        JumpFZero    -compare-5497-true        
        Jump         -compare-5497-false       
        Label        -compare-5497-true        
        PushI        1                         
        Jump         -compare-5497-join        
        Label        -compare-5497-false       
        PushI        0                         
        Jump         -compare-5497-join        
        Label        -compare-5497-join        
        JumpTrue     -print-boolean-5498-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5498-join  
        Label        -print-boolean-5498-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5498-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5499-arg1        
        PushF        6.700000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-5499-arg2        
        PushF        1.000000                  
        Label        -compare-5499-sub         
        FSubtract                              
        JumpFZero    -compare-5499-true        
        Jump         -compare-5499-false       
        Label        -compare-5499-true        
        PushI        1                         
        Jump         -compare-5499-join        
        Label        -compare-5499-false       
        PushI        0                         
        Jump         -compare-5499-join        
        Label        -compare-5499-join        
        JumpTrue     -print-boolean-5500-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5500-join  
        Label        -print-boolean-5500-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5500-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5501-arg1        
        PushF        4.200000                  
        PushF        5.700000                  
        FSubtract                              
        Label        -compare-5501-arg2        
        PushF        6.400000                  
        Label        -compare-5501-sub         
        FSubtract                              
        JumpFZero    -compare-5501-true        
        Jump         -compare-5501-false       
        Label        -compare-5501-true        
        PushI        1                         
        Jump         -compare-5501-join        
        Label        -compare-5501-false       
        PushI        0                         
        Jump         -compare-5501-join        
        Label        -compare-5501-join        
        JumpTrue     -print-boolean-5502-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5502-join  
        Label        -print-boolean-5502-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5502-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5503-arg1        
        PushF        9.300000                  
        PushF        4.500000                  
        FSubtract                              
        Label        -compare-5503-arg2        
        PushF        1.400000                  
        Label        -compare-5503-sub         
        FSubtract                              
        JumpFZero    -compare-5503-true        
        Jump         -compare-5503-false       
        Label        -compare-5503-true        
        PushI        1                         
        Jump         -compare-5503-join        
        Label        -compare-5503-false       
        PushI        0                         
        Jump         -compare-5503-join        
        Label        -compare-5503-join        
        JumpTrue     -print-boolean-5504-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5504-join  
        Label        -print-boolean-5504-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5504-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5505-arg1        
        PushF        8.200000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-5505-arg2        
        PushF        7.600000                  
        Label        -compare-5505-sub         
        FSubtract                              
        JumpFZero    -compare-5505-true        
        Jump         -compare-5505-false       
        Label        -compare-5505-true        
        PushI        1                         
        Jump         -compare-5505-join        
        Label        -compare-5505-false       
        PushI        0                         
        Jump         -compare-5505-join        
        Label        -compare-5505-join        
        JumpTrue     -print-boolean-5506-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5506-join  
        Label        -print-boolean-5506-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5506-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5507-arg1        
        PushF        4.400000                  
        PushF        4.500000                  
        FSubtract                              
        Label        -compare-5507-arg2        
        PushF        4.600000                  
        Label        -compare-5507-sub         
        FSubtract                              
        JumpFZero    -compare-5507-true        
        Jump         -compare-5507-false       
        Label        -compare-5507-true        
        PushI        1                         
        Jump         -compare-5507-join        
        Label        -compare-5507-false       
        PushI        0                         
        Jump         -compare-5507-join        
        Label        -compare-5507-join        
        JumpTrue     -print-boolean-5508-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5508-join  
        Label        -print-boolean-5508-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5508-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5509-arg1        
        PushF        8.200000                  
        PushF        6.500000                  
        FSubtract                              
        Label        -compare-5509-arg2        
        PushF        7.700000                  
        Label        -compare-5509-sub         
        FSubtract                              
        JumpFZero    -compare-5509-true        
        Jump         -compare-5509-false       
        Label        -compare-5509-true        
        PushI        1                         
        Jump         -compare-5509-join        
        Label        -compare-5509-false       
        PushI        0                         
        Jump         -compare-5509-join        
        Label        -compare-5509-join        
        JumpTrue     -print-boolean-5510-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5510-join  
        Label        -print-boolean-5510-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5510-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5511-arg1        
        PushF        5.900000                  
        PushF        4.900000                  
        FSubtract                              
        Label        -compare-5511-arg2        
        PushF        7.100000                  
        Label        -compare-5511-sub         
        FSubtract                              
        JumpFZero    -compare-5511-true        
        Jump         -compare-5511-false       
        Label        -compare-5511-true        
        PushI        1                         
        Jump         -compare-5511-join        
        Label        -compare-5511-false       
        PushI        0                         
        Jump         -compare-5511-join        
        Label        -compare-5511-join        
        JumpTrue     -print-boolean-5512-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5512-join  
        Label        -print-boolean-5512-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5512-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5513-arg1        
        PushF        1.000000                  
        PushF        2.400000                  
        FSubtract                              
        Label        -compare-5513-arg2        
        PushF        3.700000                  
        Label        -compare-5513-sub         
        FSubtract                              
        JumpFZero    -compare-5513-true        
        Jump         -compare-5513-false       
        Label        -compare-5513-true        
        PushI        1                         
        Jump         -compare-5513-join        
        Label        -compare-5513-false       
        PushI        0                         
        Jump         -compare-5513-join        
        Label        -compare-5513-join        
        JumpTrue     -print-boolean-5514-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5514-join  
        Label        -print-boolean-5514-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5514-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5515-arg1        
        PushF        2.100000                  
        PushF        2.800000                  
        FSubtract                              
        Label        -compare-5515-arg2        
        PushF        4.600000                  
        Label        -compare-5515-sub         
        FSubtract                              
        JumpFZero    -compare-5515-true        
        Jump         -compare-5515-false       
        Label        -compare-5515-true        
        PushI        1                         
        Jump         -compare-5515-join        
        Label        -compare-5515-false       
        PushI        0                         
        Jump         -compare-5515-join        
        Label        -compare-5515-join        
        JumpTrue     -print-boolean-5516-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5516-join  
        Label        -print-boolean-5516-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5516-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5517-arg1        
        PushF        6.700000                  
        PushF        9.300000                  
        FSubtract                              
        Label        -compare-5517-arg2        
        PushF        2.700000                  
        Label        -compare-5517-sub         
        FSubtract                              
        JumpFZero    -compare-5517-true        
        Jump         -compare-5517-false       
        Label        -compare-5517-true        
        PushI        1                         
        Jump         -compare-5517-join        
        Label        -compare-5517-false       
        PushI        0                         
        Jump         -compare-5517-join        
        Label        -compare-5517-join        
        JumpTrue     -print-boolean-5518-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5518-join  
        Label        -print-boolean-5518-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5518-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5519-arg1        
        PushF        2.100000                  
        PushF        6.900000                  
        FSubtract                              
        Label        -compare-5519-arg2        
        PushF        4.500000                  
        Label        -compare-5519-sub         
        FSubtract                              
        JumpFZero    -compare-5519-true        
        Jump         -compare-5519-false       
        Label        -compare-5519-true        
        PushI        1                         
        Jump         -compare-5519-join        
        Label        -compare-5519-false       
        PushI        0                         
        Jump         -compare-5519-join        
        Label        -compare-5519-join        
        JumpTrue     -print-boolean-5520-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5520-join  
        Label        -print-boolean-5520-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5520-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5521-arg1        
        PushF        2.300000                  
        Label        -compare-5521-arg2        
        PushF        9.500000                  
        PushF        6.000000                  
        FSubtract                              
        Label        -compare-5521-sub         
        FSubtract                              
        JumpFZero    -compare-5521-true        
        Jump         -compare-5521-false       
        Label        -compare-5521-true        
        PushI        1                         
        Jump         -compare-5521-join        
        Label        -compare-5521-false       
        PushI        0                         
        Jump         -compare-5521-join        
        Label        -compare-5521-join        
        JumpTrue     -print-boolean-5522-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5522-join  
        Label        -print-boolean-5522-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5522-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5523-arg1        
        PushF        9.500000                  
        Label        -compare-5523-arg2        
        PushF        7.000000                  
        PushF        3.200000                  
        FSubtract                              
        Label        -compare-5523-sub         
        FSubtract                              
        JumpFZero    -compare-5523-true        
        Jump         -compare-5523-false       
        Label        -compare-5523-true        
        PushI        1                         
        Jump         -compare-5523-join        
        Label        -compare-5523-false       
        PushI        0                         
        Jump         -compare-5523-join        
        Label        -compare-5523-join        
        JumpTrue     -print-boolean-5524-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5524-join  
        Label        -print-boolean-5524-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5524-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5525-arg1        
        PushF        9.100000                  
        Label        -compare-5525-arg2        
        PushF        1.900000                  
        PushF        4.500000                  
        FSubtract                              
        Label        -compare-5525-sub         
        FSubtract                              
        JumpFZero    -compare-5525-true        
        Jump         -compare-5525-false       
        Label        -compare-5525-true        
        PushI        1                         
        Jump         -compare-5525-join        
        Label        -compare-5525-false       
        PushI        0                         
        Jump         -compare-5525-join        
        Label        -compare-5525-join        
        JumpTrue     -print-boolean-5526-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5526-join  
        Label        -print-boolean-5526-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5526-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5527-arg1        
        PushF        3.900000                  
        Label        -compare-5527-arg2        
        PushF        4.100000                  
        PushF        6.800000                  
        FSubtract                              
        Label        -compare-5527-sub         
        FSubtract                              
        JumpFZero    -compare-5527-true        
        Jump         -compare-5527-false       
        Label        -compare-5527-true        
        PushI        1                         
        Jump         -compare-5527-join        
        Label        -compare-5527-false       
        PushI        0                         
        Jump         -compare-5527-join        
        Label        -compare-5527-join        
        JumpTrue     -print-boolean-5528-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5528-join  
        Label        -print-boolean-5528-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5528-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5529-arg1        
        PushF        5.900000                  
        Label        -compare-5529-arg2        
        PushF        8.600000                  
        PushF        7.900000                  
        FSubtract                              
        Label        -compare-5529-sub         
        FSubtract                              
        JumpFZero    -compare-5529-true        
        Jump         -compare-5529-false       
        Label        -compare-5529-true        
        PushI        1                         
        Jump         -compare-5529-join        
        Label        -compare-5529-false       
        PushI        0                         
        Jump         -compare-5529-join        
        Label        -compare-5529-join        
        JumpTrue     -print-boolean-5530-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5530-join  
        Label        -print-boolean-5530-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5530-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5531-arg1        
        PushF        4.300000                  
        Label        -compare-5531-arg2        
        PushF        4.000000                  
        PushF        3.500000                  
        FSubtract                              
        Label        -compare-5531-sub         
        FSubtract                              
        JumpFZero    -compare-5531-true        
        Jump         -compare-5531-false       
        Label        -compare-5531-true        
        PushI        1                         
        Jump         -compare-5531-join        
        Label        -compare-5531-false       
        PushI        0                         
        Jump         -compare-5531-join        
        Label        -compare-5531-join        
        JumpTrue     -print-boolean-5532-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5532-join  
        Label        -print-boolean-5532-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5532-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5533-arg1        
        PushF        7.700000                  
        Label        -compare-5533-arg2        
        PushF        7.100000                  
        PushF        4.100000                  
        FSubtract                              
        Label        -compare-5533-sub         
        FSubtract                              
        JumpFZero    -compare-5533-true        
        Jump         -compare-5533-false       
        Label        -compare-5533-true        
        PushI        1                         
        Jump         -compare-5533-join        
        Label        -compare-5533-false       
        PushI        0                         
        Jump         -compare-5533-join        
        Label        -compare-5533-join        
        JumpTrue     -print-boolean-5534-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5534-join  
        Label        -print-boolean-5534-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5534-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5535-arg1        
        PushF        5.800000                  
        Label        -compare-5535-arg2        
        PushF        5.600000                  
        PushF        3.400000                  
        FSubtract                              
        Label        -compare-5535-sub         
        FSubtract                              
        JumpFZero    -compare-5535-true        
        Jump         -compare-5535-false       
        Label        -compare-5535-true        
        PushI        1                         
        Jump         -compare-5535-join        
        Label        -compare-5535-false       
        PushI        0                         
        Jump         -compare-5535-join        
        Label        -compare-5535-join        
        JumpTrue     -print-boolean-5536-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5536-join  
        Label        -print-boolean-5536-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5536-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5537-arg1        
        PushF        4.700000                  
        Label        -compare-5537-arg2        
        PushF        8.900000                  
        PushF        8.300000                  
        FSubtract                              
        Label        -compare-5537-sub         
        FSubtract                              
        JumpFZero    -compare-5537-true        
        Jump         -compare-5537-false       
        Label        -compare-5537-true        
        PushI        1                         
        Jump         -compare-5537-join        
        Label        -compare-5537-false       
        PushI        0                         
        Jump         -compare-5537-join        
        Label        -compare-5537-join        
        JumpTrue     -print-boolean-5538-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5538-join  
        Label        -print-boolean-5538-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5538-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5539-arg1        
        PushF        4.500000                  
        Label        -compare-5539-arg2        
        PushF        6.700000                  
        PushF        9.800000                  
        FSubtract                              
        Label        -compare-5539-sub         
        FSubtract                              
        JumpFZero    -compare-5539-true        
        Jump         -compare-5539-false       
        Label        -compare-5539-true        
        PushI        1                         
        Jump         -compare-5539-join        
        Label        -compare-5539-false       
        PushI        0                         
        Jump         -compare-5539-join        
        Label        -compare-5539-join        
        JumpTrue     -print-boolean-5540-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5540-join  
        Label        -print-boolean-5540-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5540-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5541-arg1        
        PushF        3.100000                  
        Label        -compare-5541-arg2        
        PushF        4.700000                  
        PushF        6.400000                  
        FSubtract                              
        Label        -compare-5541-sub         
        FSubtract                              
        JumpFZero    -compare-5541-true        
        Jump         -compare-5541-false       
        Label        -compare-5541-true        
        PushI        1                         
        Jump         -compare-5541-join        
        Label        -compare-5541-false       
        PushI        0                         
        Jump         -compare-5541-join        
        Label        -compare-5541-join        
        JumpTrue     -print-boolean-5542-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5542-join  
        Label        -print-boolean-5542-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5542-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5543-arg1        
        PushF        7.500000                  
        Label        -compare-5543-arg2        
        PushF        4.500000                  
        PushF        7.300000                  
        FSubtract                              
        Label        -compare-5543-sub         
        FSubtract                              
        JumpFZero    -compare-5543-true        
        Jump         -compare-5543-false       
        Label        -compare-5543-true        
        PushI        1                         
        Jump         -compare-5543-join        
        Label        -compare-5543-false       
        PushI        0                         
        Jump         -compare-5543-join        
        Label        -compare-5543-join        
        JumpTrue     -print-boolean-5544-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5544-join  
        Label        -print-boolean-5544-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5544-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5545-arg1        
        PushF        9.700000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-5545-arg2        
        PushF        4.200000                  
        PushF        7.200000                  
        FSubtract                              
        Label        -compare-5545-sub         
        FSubtract                              
        JumpFZero    -compare-5545-true        
        Jump         -compare-5545-false       
        Label        -compare-5545-true        
        PushI        1                         
        Jump         -compare-5545-join        
        Label        -compare-5545-false       
        PushI        0                         
        Jump         -compare-5545-join        
        Label        -compare-5545-join        
        JumpTrue     -print-boolean-5546-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5546-join  
        Label        -print-boolean-5546-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5546-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5547-arg1        
        PushF        9.600000                  
        PushF        8.600000                  
        FSubtract                              
        Label        -compare-5547-arg2        
        PushF        4.100000                  
        PushF        1.000000                  
        FSubtract                              
        Label        -compare-5547-sub         
        FSubtract                              
        JumpFZero    -compare-5547-true        
        Jump         -compare-5547-false       
        Label        -compare-5547-true        
        PushI        1                         
        Jump         -compare-5547-join        
        Label        -compare-5547-false       
        PushI        0                         
        Jump         -compare-5547-join        
        Label        -compare-5547-join        
        JumpTrue     -print-boolean-5548-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5548-join  
        Label        -print-boolean-5548-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5548-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5549-arg1        
        PushF        5.900000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-5549-arg2        
        PushF        3.300000                  
        PushF        7.300000                  
        FSubtract                              
        Label        -compare-5549-sub         
        FSubtract                              
        JumpFZero    -compare-5549-true        
        Jump         -compare-5549-false       
        Label        -compare-5549-true        
        PushI        1                         
        Jump         -compare-5549-join        
        Label        -compare-5549-false       
        PushI        0                         
        Jump         -compare-5549-join        
        Label        -compare-5549-join        
        JumpTrue     -print-boolean-5550-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5550-join  
        Label        -print-boolean-5550-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5550-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5551-arg1        
        PushF        4.200000                  
        PushF        4.600000                  
        FSubtract                              
        Label        -compare-5551-arg2        
        PushF        9.000000                  
        PushF        2.100000                  
        FSubtract                              
        Label        -compare-5551-sub         
        FSubtract                              
        JumpFZero    -compare-5551-true        
        Jump         -compare-5551-false       
        Label        -compare-5551-true        
        PushI        1                         
        Jump         -compare-5551-join        
        Label        -compare-5551-false       
        PushI        0                         
        Jump         -compare-5551-join        
        Label        -compare-5551-join        
        JumpTrue     -print-boolean-5552-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5552-join  
        Label        -print-boolean-5552-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5552-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5553-arg1        
        PushF        4.400000                  
        PushF        9.200000                  
        FSubtract                              
        Label        -compare-5553-arg2        
        PushF        2.900000                  
        PushF        5.900000                  
        FSubtract                              
        Label        -compare-5553-sub         
        FSubtract                              
        JumpFZero    -compare-5553-true        
        Jump         -compare-5553-false       
        Label        -compare-5553-true        
        PushI        1                         
        Jump         -compare-5553-join        
        Label        -compare-5553-false       
        PushI        0                         
        Jump         -compare-5553-join        
        Label        -compare-5553-join        
        JumpTrue     -print-boolean-5554-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5554-join  
        Label        -print-boolean-5554-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5554-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5555-arg1        
        PushF        9.300000                  
        PushF        4.600000                  
        FSubtract                              
        Label        -compare-5555-arg2        
        PushF        4.300000                  
        PushF        7.000000                  
        FSubtract                              
        Label        -compare-5555-sub         
        FSubtract                              
        JumpFZero    -compare-5555-true        
        Jump         -compare-5555-false       
        Label        -compare-5555-true        
        PushI        1                         
        Jump         -compare-5555-join        
        Label        -compare-5555-false       
        PushI        0                         
        Jump         -compare-5555-join        
        Label        -compare-5555-join        
        JumpTrue     -print-boolean-5556-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5556-join  
        Label        -print-boolean-5556-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5556-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5557-arg1        
        PushF        1.000000                  
        PushF        3.000000                  
        FSubtract                              
        Label        -compare-5557-arg2        
        PushF        6.300000                  
        PushF        5.300000                  
        FSubtract                              
        Label        -compare-5557-sub         
        FSubtract                              
        JumpFZero    -compare-5557-true        
        Jump         -compare-5557-false       
        Label        -compare-5557-true        
        PushI        1                         
        Jump         -compare-5557-join        
        Label        -compare-5557-false       
        PushI        0                         
        Jump         -compare-5557-join        
        Label        -compare-5557-join        
        JumpTrue     -print-boolean-5558-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5558-join  
        Label        -print-boolean-5558-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5558-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5559-arg1        
        PushF        6.000000                  
        PushF        2.200000                  
        FSubtract                              
        Label        -compare-5559-arg2        
        PushF        4.000000                  
        PushF        8.000000                  
        FSubtract                              
        Label        -compare-5559-sub         
        FSubtract                              
        JumpFZero    -compare-5559-true        
        Jump         -compare-5559-false       
        Label        -compare-5559-true        
        PushI        1                         
        Jump         -compare-5559-join        
        Label        -compare-5559-false       
        PushI        0                         
        Jump         -compare-5559-join        
        Label        -compare-5559-join        
        JumpTrue     -print-boolean-5560-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5560-join  
        Label        -print-boolean-5560-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5560-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5561-arg1        
        PushF        4.000000                  
        PushF        8.000000                  
        FSubtract                              
        Label        -compare-5561-arg2        
        PushF        5.700000                  
        PushF        3.700000                  
        FSubtract                              
        Label        -compare-5561-sub         
        FSubtract                              
        JumpFZero    -compare-5561-true        
        Jump         -compare-5561-false       
        Label        -compare-5561-true        
        PushI        1                         
        Jump         -compare-5561-join        
        Label        -compare-5561-false       
        PushI        0                         
        Jump         -compare-5561-join        
        Label        -compare-5561-join        
        JumpTrue     -print-boolean-5562-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5562-join  
        Label        -print-boolean-5562-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5562-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5563-arg1        
        PushF        4.300000                  
        PushF        3.000000                  
        FSubtract                              
        Label        -compare-5563-arg2        
        PushF        3.800000                  
        PushF        4.200000                  
        FSubtract                              
        Label        -compare-5563-sub         
        FSubtract                              
        JumpFZero    -compare-5563-true        
        Jump         -compare-5563-false       
        Label        -compare-5563-true        
        PushI        1                         
        Jump         -compare-5563-join        
        Label        -compare-5563-false       
        PushI        0                         
        Jump         -compare-5563-join        
        Label        -compare-5563-join        
        JumpTrue     -print-boolean-5564-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5564-join  
        Label        -print-boolean-5564-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5564-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5565-arg1        
        PushF        5.700000                  
        PushF        7.700000                  
        FSubtract                              
        Label        -compare-5565-arg2        
        PushF        3.100000                  
        PushF        7.100000                  
        FSubtract                              
        Label        -compare-5565-sub         
        FSubtract                              
        JumpFZero    -compare-5565-true        
        Jump         -compare-5565-false       
        Label        -compare-5565-true        
        PushI        1                         
        Jump         -compare-5565-join        
        Label        -compare-5565-false       
        PushI        0                         
        Jump         -compare-5565-join        
        Label        -compare-5565-join        
        JumpTrue     -print-boolean-5566-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5566-join  
        Label        -print-boolean-5566-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5566-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5567-arg1        
        PushF        8.500000                  
        PushF        1.200000                  
        FSubtract                              
        Label        -compare-5567-arg2        
        PushF        5.700000                  
        PushF        6.600000                  
        FSubtract                              
        Label        -compare-5567-sub         
        FSubtract                              
        JumpFZero    -compare-5567-true        
        Jump         -compare-5567-false       
        Label        -compare-5567-true        
        PushI        1                         
        Jump         -compare-5567-join        
        Label        -compare-5567-false       
        PushI        0                         
        Jump         -compare-5567-join        
        Label        -compare-5567-join        
        JumpTrue     -print-boolean-5568-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5568-join  
        Label        -print-boolean-5568-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5568-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
