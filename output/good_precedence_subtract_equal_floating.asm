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
        Label        -compare-5510-arg1        
        PushF        4.400000                  
        PushF        6.700000                  
        FSubtract                              
        Label        -compare-5510-arg2        
        PushF        8.500000                  
        Label        -compare-5510-sub         
        FSubtract                              
        JumpFZero    -compare-5510-true        
        Jump         -compare-5510-false       
        Label        -compare-5510-true        
        PushI        1                         
        Jump         -compare-5510-join        
        Label        -compare-5510-false       
        PushI        0                         
        Jump         -compare-5510-join        
        Label        -compare-5510-join        
        JumpTrue     -print-boolean-5511-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5511-join  
        Label        -print-boolean-5511-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5511-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5512-arg1        
        PushF        6.700000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-5512-arg2        
        PushF        1.000000                  
        Label        -compare-5512-sub         
        FSubtract                              
        JumpFZero    -compare-5512-true        
        Jump         -compare-5512-false       
        Label        -compare-5512-true        
        PushI        1                         
        Jump         -compare-5512-join        
        Label        -compare-5512-false       
        PushI        0                         
        Jump         -compare-5512-join        
        Label        -compare-5512-join        
        JumpTrue     -print-boolean-5513-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5513-join  
        Label        -print-boolean-5513-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5513-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5514-arg1        
        PushF        4.200000                  
        PushF        5.700000                  
        FSubtract                              
        Label        -compare-5514-arg2        
        PushF        6.400000                  
        Label        -compare-5514-sub         
        FSubtract                              
        JumpFZero    -compare-5514-true        
        Jump         -compare-5514-false       
        Label        -compare-5514-true        
        PushI        1                         
        Jump         -compare-5514-join        
        Label        -compare-5514-false       
        PushI        0                         
        Jump         -compare-5514-join        
        Label        -compare-5514-join        
        JumpTrue     -print-boolean-5515-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5515-join  
        Label        -print-boolean-5515-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5515-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5516-arg1        
        PushF        9.300000                  
        PushF        4.500000                  
        FSubtract                              
        Label        -compare-5516-arg2        
        PushF        1.400000                  
        Label        -compare-5516-sub         
        FSubtract                              
        JumpFZero    -compare-5516-true        
        Jump         -compare-5516-false       
        Label        -compare-5516-true        
        PushI        1                         
        Jump         -compare-5516-join        
        Label        -compare-5516-false       
        PushI        0                         
        Jump         -compare-5516-join        
        Label        -compare-5516-join        
        JumpTrue     -print-boolean-5517-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5517-join  
        Label        -print-boolean-5517-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5517-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5518-arg1        
        PushF        8.200000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-5518-arg2        
        PushF        7.600000                  
        Label        -compare-5518-sub         
        FSubtract                              
        JumpFZero    -compare-5518-true        
        Jump         -compare-5518-false       
        Label        -compare-5518-true        
        PushI        1                         
        Jump         -compare-5518-join        
        Label        -compare-5518-false       
        PushI        0                         
        Jump         -compare-5518-join        
        Label        -compare-5518-join        
        JumpTrue     -print-boolean-5519-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5519-join  
        Label        -print-boolean-5519-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5519-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5520-arg1        
        PushF        4.400000                  
        PushF        4.500000                  
        FSubtract                              
        Label        -compare-5520-arg2        
        PushF        4.600000                  
        Label        -compare-5520-sub         
        FSubtract                              
        JumpFZero    -compare-5520-true        
        Jump         -compare-5520-false       
        Label        -compare-5520-true        
        PushI        1                         
        Jump         -compare-5520-join        
        Label        -compare-5520-false       
        PushI        0                         
        Jump         -compare-5520-join        
        Label        -compare-5520-join        
        JumpTrue     -print-boolean-5521-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5521-join  
        Label        -print-boolean-5521-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5521-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5522-arg1        
        PushF        8.200000                  
        PushF        6.500000                  
        FSubtract                              
        Label        -compare-5522-arg2        
        PushF        7.700000                  
        Label        -compare-5522-sub         
        FSubtract                              
        JumpFZero    -compare-5522-true        
        Jump         -compare-5522-false       
        Label        -compare-5522-true        
        PushI        1                         
        Jump         -compare-5522-join        
        Label        -compare-5522-false       
        PushI        0                         
        Jump         -compare-5522-join        
        Label        -compare-5522-join        
        JumpTrue     -print-boolean-5523-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5523-join  
        Label        -print-boolean-5523-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5523-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5524-arg1        
        PushF        5.900000                  
        PushF        4.900000                  
        FSubtract                              
        Label        -compare-5524-arg2        
        PushF        7.100000                  
        Label        -compare-5524-sub         
        FSubtract                              
        JumpFZero    -compare-5524-true        
        Jump         -compare-5524-false       
        Label        -compare-5524-true        
        PushI        1                         
        Jump         -compare-5524-join        
        Label        -compare-5524-false       
        PushI        0                         
        Jump         -compare-5524-join        
        Label        -compare-5524-join        
        JumpTrue     -print-boolean-5525-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5525-join  
        Label        -print-boolean-5525-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5525-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5526-arg1        
        PushF        1.000000                  
        PushF        2.400000                  
        FSubtract                              
        Label        -compare-5526-arg2        
        PushF        3.700000                  
        Label        -compare-5526-sub         
        FSubtract                              
        JumpFZero    -compare-5526-true        
        Jump         -compare-5526-false       
        Label        -compare-5526-true        
        PushI        1                         
        Jump         -compare-5526-join        
        Label        -compare-5526-false       
        PushI        0                         
        Jump         -compare-5526-join        
        Label        -compare-5526-join        
        JumpTrue     -print-boolean-5527-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5527-join  
        Label        -print-boolean-5527-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5527-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5528-arg1        
        PushF        2.100000                  
        PushF        2.800000                  
        FSubtract                              
        Label        -compare-5528-arg2        
        PushF        4.600000                  
        Label        -compare-5528-sub         
        FSubtract                              
        JumpFZero    -compare-5528-true        
        Jump         -compare-5528-false       
        Label        -compare-5528-true        
        PushI        1                         
        Jump         -compare-5528-join        
        Label        -compare-5528-false       
        PushI        0                         
        Jump         -compare-5528-join        
        Label        -compare-5528-join        
        JumpTrue     -print-boolean-5529-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5529-join  
        Label        -print-boolean-5529-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5529-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5530-arg1        
        PushF        6.700000                  
        PushF        9.300000                  
        FSubtract                              
        Label        -compare-5530-arg2        
        PushF        2.700000                  
        Label        -compare-5530-sub         
        FSubtract                              
        JumpFZero    -compare-5530-true        
        Jump         -compare-5530-false       
        Label        -compare-5530-true        
        PushI        1                         
        Jump         -compare-5530-join        
        Label        -compare-5530-false       
        PushI        0                         
        Jump         -compare-5530-join        
        Label        -compare-5530-join        
        JumpTrue     -print-boolean-5531-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5531-join  
        Label        -print-boolean-5531-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5531-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5532-arg1        
        PushF        2.100000                  
        PushF        6.900000                  
        FSubtract                              
        Label        -compare-5532-arg2        
        PushF        4.500000                  
        Label        -compare-5532-sub         
        FSubtract                              
        JumpFZero    -compare-5532-true        
        Jump         -compare-5532-false       
        Label        -compare-5532-true        
        PushI        1                         
        Jump         -compare-5532-join        
        Label        -compare-5532-false       
        PushI        0                         
        Jump         -compare-5532-join        
        Label        -compare-5532-join        
        JumpTrue     -print-boolean-5533-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5533-join  
        Label        -print-boolean-5533-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5533-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5534-arg1        
        PushF        2.300000                  
        Label        -compare-5534-arg2        
        PushF        9.500000                  
        PushF        6.000000                  
        FSubtract                              
        Label        -compare-5534-sub         
        FSubtract                              
        JumpFZero    -compare-5534-true        
        Jump         -compare-5534-false       
        Label        -compare-5534-true        
        PushI        1                         
        Jump         -compare-5534-join        
        Label        -compare-5534-false       
        PushI        0                         
        Jump         -compare-5534-join        
        Label        -compare-5534-join        
        JumpTrue     -print-boolean-5535-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5535-join  
        Label        -print-boolean-5535-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5535-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5536-arg1        
        PushF        9.500000                  
        Label        -compare-5536-arg2        
        PushF        7.000000                  
        PushF        3.200000                  
        FSubtract                              
        Label        -compare-5536-sub         
        FSubtract                              
        JumpFZero    -compare-5536-true        
        Jump         -compare-5536-false       
        Label        -compare-5536-true        
        PushI        1                         
        Jump         -compare-5536-join        
        Label        -compare-5536-false       
        PushI        0                         
        Jump         -compare-5536-join        
        Label        -compare-5536-join        
        JumpTrue     -print-boolean-5537-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5537-join  
        Label        -print-boolean-5537-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5537-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5538-arg1        
        PushF        9.100000                  
        Label        -compare-5538-arg2        
        PushF        1.900000                  
        PushF        4.500000                  
        FSubtract                              
        Label        -compare-5538-sub         
        FSubtract                              
        JumpFZero    -compare-5538-true        
        Jump         -compare-5538-false       
        Label        -compare-5538-true        
        PushI        1                         
        Jump         -compare-5538-join        
        Label        -compare-5538-false       
        PushI        0                         
        Jump         -compare-5538-join        
        Label        -compare-5538-join        
        JumpTrue     -print-boolean-5539-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5539-join  
        Label        -print-boolean-5539-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5539-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5540-arg1        
        PushF        3.900000                  
        Label        -compare-5540-arg2        
        PushF        4.100000                  
        PushF        6.800000                  
        FSubtract                              
        Label        -compare-5540-sub         
        FSubtract                              
        JumpFZero    -compare-5540-true        
        Jump         -compare-5540-false       
        Label        -compare-5540-true        
        PushI        1                         
        Jump         -compare-5540-join        
        Label        -compare-5540-false       
        PushI        0                         
        Jump         -compare-5540-join        
        Label        -compare-5540-join        
        JumpTrue     -print-boolean-5541-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5541-join  
        Label        -print-boolean-5541-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5541-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5542-arg1        
        PushF        5.900000                  
        Label        -compare-5542-arg2        
        PushF        8.600000                  
        PushF        7.900000                  
        FSubtract                              
        Label        -compare-5542-sub         
        FSubtract                              
        JumpFZero    -compare-5542-true        
        Jump         -compare-5542-false       
        Label        -compare-5542-true        
        PushI        1                         
        Jump         -compare-5542-join        
        Label        -compare-5542-false       
        PushI        0                         
        Jump         -compare-5542-join        
        Label        -compare-5542-join        
        JumpTrue     -print-boolean-5543-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5543-join  
        Label        -print-boolean-5543-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5543-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5544-arg1        
        PushF        4.300000                  
        Label        -compare-5544-arg2        
        PushF        4.000000                  
        PushF        3.500000                  
        FSubtract                              
        Label        -compare-5544-sub         
        FSubtract                              
        JumpFZero    -compare-5544-true        
        Jump         -compare-5544-false       
        Label        -compare-5544-true        
        PushI        1                         
        Jump         -compare-5544-join        
        Label        -compare-5544-false       
        PushI        0                         
        Jump         -compare-5544-join        
        Label        -compare-5544-join        
        JumpTrue     -print-boolean-5545-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5545-join  
        Label        -print-boolean-5545-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5545-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5546-arg1        
        PushF        7.700000                  
        Label        -compare-5546-arg2        
        PushF        7.100000                  
        PushF        4.100000                  
        FSubtract                              
        Label        -compare-5546-sub         
        FSubtract                              
        JumpFZero    -compare-5546-true        
        Jump         -compare-5546-false       
        Label        -compare-5546-true        
        PushI        1                         
        Jump         -compare-5546-join        
        Label        -compare-5546-false       
        PushI        0                         
        Jump         -compare-5546-join        
        Label        -compare-5546-join        
        JumpTrue     -print-boolean-5547-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5547-join  
        Label        -print-boolean-5547-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5547-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5548-arg1        
        PushF        5.800000                  
        Label        -compare-5548-arg2        
        PushF        5.600000                  
        PushF        3.400000                  
        FSubtract                              
        Label        -compare-5548-sub         
        FSubtract                              
        JumpFZero    -compare-5548-true        
        Jump         -compare-5548-false       
        Label        -compare-5548-true        
        PushI        1                         
        Jump         -compare-5548-join        
        Label        -compare-5548-false       
        PushI        0                         
        Jump         -compare-5548-join        
        Label        -compare-5548-join        
        JumpTrue     -print-boolean-5549-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5549-join  
        Label        -print-boolean-5549-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5549-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5550-arg1        
        PushF        4.700000                  
        Label        -compare-5550-arg2        
        PushF        8.900000                  
        PushF        8.300000                  
        FSubtract                              
        Label        -compare-5550-sub         
        FSubtract                              
        JumpFZero    -compare-5550-true        
        Jump         -compare-5550-false       
        Label        -compare-5550-true        
        PushI        1                         
        Jump         -compare-5550-join        
        Label        -compare-5550-false       
        PushI        0                         
        Jump         -compare-5550-join        
        Label        -compare-5550-join        
        JumpTrue     -print-boolean-5551-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5551-join  
        Label        -print-boolean-5551-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5551-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5552-arg1        
        PushF        4.500000                  
        Label        -compare-5552-arg2        
        PushF        6.700000                  
        PushF        9.800000                  
        FSubtract                              
        Label        -compare-5552-sub         
        FSubtract                              
        JumpFZero    -compare-5552-true        
        Jump         -compare-5552-false       
        Label        -compare-5552-true        
        PushI        1                         
        Jump         -compare-5552-join        
        Label        -compare-5552-false       
        PushI        0                         
        Jump         -compare-5552-join        
        Label        -compare-5552-join        
        JumpTrue     -print-boolean-5553-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5553-join  
        Label        -print-boolean-5553-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5553-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5554-arg1        
        PushF        3.100000                  
        Label        -compare-5554-arg2        
        PushF        4.700000                  
        PushF        6.400000                  
        FSubtract                              
        Label        -compare-5554-sub         
        FSubtract                              
        JumpFZero    -compare-5554-true        
        Jump         -compare-5554-false       
        Label        -compare-5554-true        
        PushI        1                         
        Jump         -compare-5554-join        
        Label        -compare-5554-false       
        PushI        0                         
        Jump         -compare-5554-join        
        Label        -compare-5554-join        
        JumpTrue     -print-boolean-5555-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5555-join  
        Label        -print-boolean-5555-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5555-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5556-arg1        
        PushF        7.500000                  
        Label        -compare-5556-arg2        
        PushF        4.500000                  
        PushF        7.300000                  
        FSubtract                              
        Label        -compare-5556-sub         
        FSubtract                              
        JumpFZero    -compare-5556-true        
        Jump         -compare-5556-false       
        Label        -compare-5556-true        
        PushI        1                         
        Jump         -compare-5556-join        
        Label        -compare-5556-false       
        PushI        0                         
        Jump         -compare-5556-join        
        Label        -compare-5556-join        
        JumpTrue     -print-boolean-5557-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5557-join  
        Label        -print-boolean-5557-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5557-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5558-arg1        
        PushF        9.700000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-5558-arg2        
        PushF        4.200000                  
        PushF        7.200000                  
        FSubtract                              
        Label        -compare-5558-sub         
        FSubtract                              
        JumpFZero    -compare-5558-true        
        Jump         -compare-5558-false       
        Label        -compare-5558-true        
        PushI        1                         
        Jump         -compare-5558-join        
        Label        -compare-5558-false       
        PushI        0                         
        Jump         -compare-5558-join        
        Label        -compare-5558-join        
        JumpTrue     -print-boolean-5559-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5559-join  
        Label        -print-boolean-5559-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5559-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5560-arg1        
        PushF        9.600000                  
        PushF        8.600000                  
        FSubtract                              
        Label        -compare-5560-arg2        
        PushF        4.100000                  
        PushF        1.000000                  
        FSubtract                              
        Label        -compare-5560-sub         
        FSubtract                              
        JumpFZero    -compare-5560-true        
        Jump         -compare-5560-false       
        Label        -compare-5560-true        
        PushI        1                         
        Jump         -compare-5560-join        
        Label        -compare-5560-false       
        PushI        0                         
        Jump         -compare-5560-join        
        Label        -compare-5560-join        
        JumpTrue     -print-boolean-5561-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5561-join  
        Label        -print-boolean-5561-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5561-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5562-arg1        
        PushF        5.900000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-5562-arg2        
        PushF        3.300000                  
        PushF        7.300000                  
        FSubtract                              
        Label        -compare-5562-sub         
        FSubtract                              
        JumpFZero    -compare-5562-true        
        Jump         -compare-5562-false       
        Label        -compare-5562-true        
        PushI        1                         
        Jump         -compare-5562-join        
        Label        -compare-5562-false       
        PushI        0                         
        Jump         -compare-5562-join        
        Label        -compare-5562-join        
        JumpTrue     -print-boolean-5563-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5563-join  
        Label        -print-boolean-5563-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5563-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5564-arg1        
        PushF        4.200000                  
        PushF        4.600000                  
        FSubtract                              
        Label        -compare-5564-arg2        
        PushF        9.000000                  
        PushF        2.100000                  
        FSubtract                              
        Label        -compare-5564-sub         
        FSubtract                              
        JumpFZero    -compare-5564-true        
        Jump         -compare-5564-false       
        Label        -compare-5564-true        
        PushI        1                         
        Jump         -compare-5564-join        
        Label        -compare-5564-false       
        PushI        0                         
        Jump         -compare-5564-join        
        Label        -compare-5564-join        
        JumpTrue     -print-boolean-5565-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5565-join  
        Label        -print-boolean-5565-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5565-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5566-arg1        
        PushF        4.400000                  
        PushF        9.200000                  
        FSubtract                              
        Label        -compare-5566-arg2        
        PushF        2.900000                  
        PushF        5.900000                  
        FSubtract                              
        Label        -compare-5566-sub         
        FSubtract                              
        JumpFZero    -compare-5566-true        
        Jump         -compare-5566-false       
        Label        -compare-5566-true        
        PushI        1                         
        Jump         -compare-5566-join        
        Label        -compare-5566-false       
        PushI        0                         
        Jump         -compare-5566-join        
        Label        -compare-5566-join        
        JumpTrue     -print-boolean-5567-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5567-join  
        Label        -print-boolean-5567-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5567-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5568-arg1        
        PushF        9.300000                  
        PushF        4.600000                  
        FSubtract                              
        Label        -compare-5568-arg2        
        PushF        4.300000                  
        PushF        7.000000                  
        FSubtract                              
        Label        -compare-5568-sub         
        FSubtract                              
        JumpFZero    -compare-5568-true        
        Jump         -compare-5568-false       
        Label        -compare-5568-true        
        PushI        1                         
        Jump         -compare-5568-join        
        Label        -compare-5568-false       
        PushI        0                         
        Jump         -compare-5568-join        
        Label        -compare-5568-join        
        JumpTrue     -print-boolean-5569-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5569-join  
        Label        -print-boolean-5569-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5569-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5570-arg1        
        PushF        1.000000                  
        PushF        3.000000                  
        FSubtract                              
        Label        -compare-5570-arg2        
        PushF        6.300000                  
        PushF        5.300000                  
        FSubtract                              
        Label        -compare-5570-sub         
        FSubtract                              
        JumpFZero    -compare-5570-true        
        Jump         -compare-5570-false       
        Label        -compare-5570-true        
        PushI        1                         
        Jump         -compare-5570-join        
        Label        -compare-5570-false       
        PushI        0                         
        Jump         -compare-5570-join        
        Label        -compare-5570-join        
        JumpTrue     -print-boolean-5571-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5571-join  
        Label        -print-boolean-5571-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5571-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5572-arg1        
        PushF        6.000000                  
        PushF        2.200000                  
        FSubtract                              
        Label        -compare-5572-arg2        
        PushF        4.000000                  
        PushF        8.000000                  
        FSubtract                              
        Label        -compare-5572-sub         
        FSubtract                              
        JumpFZero    -compare-5572-true        
        Jump         -compare-5572-false       
        Label        -compare-5572-true        
        PushI        1                         
        Jump         -compare-5572-join        
        Label        -compare-5572-false       
        PushI        0                         
        Jump         -compare-5572-join        
        Label        -compare-5572-join        
        JumpTrue     -print-boolean-5573-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5573-join  
        Label        -print-boolean-5573-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5573-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5574-arg1        
        PushF        4.000000                  
        PushF        8.000000                  
        FSubtract                              
        Label        -compare-5574-arg2        
        PushF        5.700000                  
        PushF        3.700000                  
        FSubtract                              
        Label        -compare-5574-sub         
        FSubtract                              
        JumpFZero    -compare-5574-true        
        Jump         -compare-5574-false       
        Label        -compare-5574-true        
        PushI        1                         
        Jump         -compare-5574-join        
        Label        -compare-5574-false       
        PushI        0                         
        Jump         -compare-5574-join        
        Label        -compare-5574-join        
        JumpTrue     -print-boolean-5575-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5575-join  
        Label        -print-boolean-5575-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5575-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5576-arg1        
        PushF        4.300000                  
        PushF        3.000000                  
        FSubtract                              
        Label        -compare-5576-arg2        
        PushF        3.800000                  
        PushF        4.200000                  
        FSubtract                              
        Label        -compare-5576-sub         
        FSubtract                              
        JumpFZero    -compare-5576-true        
        Jump         -compare-5576-false       
        Label        -compare-5576-true        
        PushI        1                         
        Jump         -compare-5576-join        
        Label        -compare-5576-false       
        PushI        0                         
        Jump         -compare-5576-join        
        Label        -compare-5576-join        
        JumpTrue     -print-boolean-5577-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5577-join  
        Label        -print-boolean-5577-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5577-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5578-arg1        
        PushF        5.700000                  
        PushF        7.700000                  
        FSubtract                              
        Label        -compare-5578-arg2        
        PushF        3.100000                  
        PushF        7.100000                  
        FSubtract                              
        Label        -compare-5578-sub         
        FSubtract                              
        JumpFZero    -compare-5578-true        
        Jump         -compare-5578-false       
        Label        -compare-5578-true        
        PushI        1                         
        Jump         -compare-5578-join        
        Label        -compare-5578-false       
        PushI        0                         
        Jump         -compare-5578-join        
        Label        -compare-5578-join        
        JumpTrue     -print-boolean-5579-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5579-join  
        Label        -print-boolean-5579-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5579-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5580-arg1        
        PushF        8.500000                  
        PushF        1.200000                  
        FSubtract                              
        Label        -compare-5580-arg2        
        PushF        5.700000                  
        PushF        6.600000                  
        FSubtract                              
        Label        -compare-5580-sub         
        FSubtract                              
        JumpFZero    -compare-5580-true        
        Jump         -compare-5580-false       
        Label        -compare-5580-true        
        PushI        1                         
        Jump         -compare-5580-join        
        Label        -compare-5580-false       
        PushI        0                         
        Jump         -compare-5580-join        
        Label        -compare-5580-join        
        JumpTrue     -print-boolean-5581-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5581-join  
        Label        -print-boolean-5581-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5581-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
