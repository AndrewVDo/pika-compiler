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
        Label        -compare-3398-arg1        
        PushF        5.100000                  
        PushF        1.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3398-arg2        
        PushF        4.800000                  
        Label        -compare-3398-sub         
        FSubtract                              
        JumpFNeg     -compare-3398-false       
        Jump         -compare-3398-true        
        Label        -compare-3398-true        
        PushI        1                         
        Jump         -compare-3398-join        
        Label        -compare-3398-false       
        PushI        0                         
        Jump         -compare-3398-join        
        Label        -compare-3398-join        
        JumpTrue     -print-boolean-3399-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3399-join  
        Label        -print-boolean-3399-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3399-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3400-arg1        
        PushF        1.200000                  
        PushF        2.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3400-arg2        
        PushF        2.900000                  
        Label        -compare-3400-sub         
        FSubtract                              
        JumpFNeg     -compare-3400-false       
        Jump         -compare-3400-true        
        Label        -compare-3400-true        
        PushI        1                         
        Jump         -compare-3400-join        
        Label        -compare-3400-false       
        PushI        0                         
        Jump         -compare-3400-join        
        Label        -compare-3400-join        
        JumpTrue     -print-boolean-3401-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3401-join  
        Label        -print-boolean-3401-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3401-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3402-arg1        
        PushF        5.800000                  
        PushF        1.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3402-arg2        
        PushF        4.000000                  
        Label        -compare-3402-sub         
        FSubtract                              
        JumpFNeg     -compare-3402-false       
        Jump         -compare-3402-true        
        Label        -compare-3402-true        
        PushI        1                         
        Jump         -compare-3402-join        
        Label        -compare-3402-false       
        PushI        0                         
        Jump         -compare-3402-join        
        Label        -compare-3402-join        
        JumpTrue     -print-boolean-3403-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3403-join  
        Label        -print-boolean-3403-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3403-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3404-arg1        
        PushF        7.500000                  
        PushF        7.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3404-arg2        
        PushF        4.200000                  
        Label        -compare-3404-sub         
        FSubtract                              
        JumpFNeg     -compare-3404-false       
        Jump         -compare-3404-true        
        Label        -compare-3404-true        
        PushI        1                         
        Jump         -compare-3404-join        
        Label        -compare-3404-false       
        PushI        0                         
        Jump         -compare-3404-join        
        Label        -compare-3404-join        
        JumpTrue     -print-boolean-3405-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3405-join  
        Label        -print-boolean-3405-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3405-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3406-arg1        
        PushF        3.000000                  
        PushF        4.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3406-arg2        
        PushF        6.600000                  
        Label        -compare-3406-sub         
        FSubtract                              
        JumpFNeg     -compare-3406-false       
        Jump         -compare-3406-true        
        Label        -compare-3406-true        
        PushI        1                         
        Jump         -compare-3406-join        
        Label        -compare-3406-false       
        PushI        0                         
        Jump         -compare-3406-join        
        Label        -compare-3406-join        
        JumpTrue     -print-boolean-3407-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3407-join  
        Label        -print-boolean-3407-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3407-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3408-arg1        
        PushF        8.700000                  
        PushF        5.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3408-arg2        
        PushF        9.500000                  
        Label        -compare-3408-sub         
        FSubtract                              
        JumpFNeg     -compare-3408-false       
        Jump         -compare-3408-true        
        Label        -compare-3408-true        
        PushI        1                         
        Jump         -compare-3408-join        
        Label        -compare-3408-false       
        PushI        0                         
        Jump         -compare-3408-join        
        Label        -compare-3408-join        
        JumpTrue     -print-boolean-3409-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3409-join  
        Label        -print-boolean-3409-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3409-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3410-arg1        
        PushF        1.300000                  
        PushF        5.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3410-arg2        
        PushF        9.200000                  
        Label        -compare-3410-sub         
        FSubtract                              
        JumpFNeg     -compare-3410-false       
        Jump         -compare-3410-true        
        Label        -compare-3410-true        
        PushI        1                         
        Jump         -compare-3410-join        
        Label        -compare-3410-false       
        PushI        0                         
        Jump         -compare-3410-join        
        Label        -compare-3410-join        
        JumpTrue     -print-boolean-3411-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3411-join  
        Label        -print-boolean-3411-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3411-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3412-arg1        
        PushF        5.700000                  
        PushF        2.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3412-arg2        
        PushF        5.800000                  
        Label        -compare-3412-sub         
        FSubtract                              
        JumpFNeg     -compare-3412-false       
        Jump         -compare-3412-true        
        Label        -compare-3412-true        
        PushI        1                         
        Jump         -compare-3412-join        
        Label        -compare-3412-false       
        PushI        0                         
        Jump         -compare-3412-join        
        Label        -compare-3412-join        
        JumpTrue     -print-boolean-3413-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3413-join  
        Label        -print-boolean-3413-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3413-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3414-arg1        
        PushF        1.600000                  
        PushF        8.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3414-arg2        
        PushF        1.200000                  
        Label        -compare-3414-sub         
        FSubtract                              
        JumpFNeg     -compare-3414-false       
        Jump         -compare-3414-true        
        Label        -compare-3414-true        
        PushI        1                         
        Jump         -compare-3414-join        
        Label        -compare-3414-false       
        PushI        0                         
        Jump         -compare-3414-join        
        Label        -compare-3414-join        
        JumpTrue     -print-boolean-3415-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3415-join  
        Label        -print-boolean-3415-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3415-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3416-arg1        
        PushF        9.100000                  
        PushF        5.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3416-arg2        
        PushF        1.300000                  
        Label        -compare-3416-sub         
        FSubtract                              
        JumpFNeg     -compare-3416-false       
        Jump         -compare-3416-true        
        Label        -compare-3416-true        
        PushI        1                         
        Jump         -compare-3416-join        
        Label        -compare-3416-false       
        PushI        0                         
        Jump         -compare-3416-join        
        Label        -compare-3416-join        
        JumpTrue     -print-boolean-3417-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3417-join  
        Label        -print-boolean-3417-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3417-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3418-arg1        
        PushF        1.900000                  
        PushF        4.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3418-arg2        
        PushF        3.000000                  
        Label        -compare-3418-sub         
        FSubtract                              
        JumpFNeg     -compare-3418-false       
        Jump         -compare-3418-true        
        Label        -compare-3418-true        
        PushI        1                         
        Jump         -compare-3418-join        
        Label        -compare-3418-false       
        PushI        0                         
        Jump         -compare-3418-join        
        Label        -compare-3418-join        
        JumpTrue     -print-boolean-3419-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3419-join  
        Label        -print-boolean-3419-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3419-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3420-arg1        
        PushF        8.900000                  
        PushF        7.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3420-arg2        
        PushF        1.000000                  
        Label        -compare-3420-sub         
        FSubtract                              
        JumpFNeg     -compare-3420-false       
        Jump         -compare-3420-true        
        Label        -compare-3420-true        
        PushI        1                         
        Jump         -compare-3420-join        
        Label        -compare-3420-false       
        PushI        0                         
        Jump         -compare-3420-join        
        Label        -compare-3420-join        
        JumpTrue     -print-boolean-3421-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3421-join  
        Label        -print-boolean-3421-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3421-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3422-arg1        
        PushF        8.400000                  
        Label        -compare-3422-arg2        
        PushF        3.100000                  
        PushF        7.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3422-sub         
        FSubtract                              
        JumpFNeg     -compare-3422-false       
        Jump         -compare-3422-true        
        Label        -compare-3422-true        
        PushI        1                         
        Jump         -compare-3422-join        
        Label        -compare-3422-false       
        PushI        0                         
        Jump         -compare-3422-join        
        Label        -compare-3422-join        
        JumpTrue     -print-boolean-3423-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3423-join  
        Label        -print-boolean-3423-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3423-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3424-arg1        
        PushF        3.500000                  
        Label        -compare-3424-arg2        
        PushF        1.800000                  
        PushF        8.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3424-sub         
        FSubtract                              
        JumpFNeg     -compare-3424-false       
        Jump         -compare-3424-true        
        Label        -compare-3424-true        
        PushI        1                         
        Jump         -compare-3424-join        
        Label        -compare-3424-false       
        PushI        0                         
        Jump         -compare-3424-join        
        Label        -compare-3424-join        
        JumpTrue     -print-boolean-3425-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3425-join  
        Label        -print-boolean-3425-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3425-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3426-arg1        
        PushF        8.200000                  
        Label        -compare-3426-arg2        
        PushF        5.000000                  
        PushF        1.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3426-sub         
        FSubtract                              
        JumpFNeg     -compare-3426-false       
        Jump         -compare-3426-true        
        Label        -compare-3426-true        
        PushI        1                         
        Jump         -compare-3426-join        
        Label        -compare-3426-false       
        PushI        0                         
        Jump         -compare-3426-join        
        Label        -compare-3426-join        
        JumpTrue     -print-boolean-3427-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3427-join  
        Label        -print-boolean-3427-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3427-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3428-arg1        
        PushF        3.300000                  
        Label        -compare-3428-arg2        
        PushF        9.700000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3428-sub         
        FSubtract                              
        JumpFNeg     -compare-3428-false       
        Jump         -compare-3428-true        
        Label        -compare-3428-true        
        PushI        1                         
        Jump         -compare-3428-join        
        Label        -compare-3428-false       
        PushI        0                         
        Jump         -compare-3428-join        
        Label        -compare-3428-join        
        JumpTrue     -print-boolean-3429-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3429-join  
        Label        -print-boolean-3429-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3429-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3430-arg1        
        PushF        9.700000                  
        Label        -compare-3430-arg2        
        PushF        3.500000                  
        PushF        6.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3430-sub         
        FSubtract                              
        JumpFNeg     -compare-3430-false       
        Jump         -compare-3430-true        
        Label        -compare-3430-true        
        PushI        1                         
        Jump         -compare-3430-join        
        Label        -compare-3430-false       
        PushI        0                         
        Jump         -compare-3430-join        
        Label        -compare-3430-join        
        JumpTrue     -print-boolean-3431-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3431-join  
        Label        -print-boolean-3431-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3431-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3432-arg1        
        PushF        7.100000                  
        Label        -compare-3432-arg2        
        PushF        2.800000                  
        PushF        4.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3432-sub         
        FSubtract                              
        JumpFNeg     -compare-3432-false       
        Jump         -compare-3432-true        
        Label        -compare-3432-true        
        PushI        1                         
        Jump         -compare-3432-join        
        Label        -compare-3432-false       
        PushI        0                         
        Jump         -compare-3432-join        
        Label        -compare-3432-join        
        JumpTrue     -print-boolean-3433-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3433-join  
        Label        -print-boolean-3433-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3433-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3434-arg1        
        PushF        1.100000                  
        Label        -compare-3434-arg2        
        PushF        4.600000                  
        PushF        1.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3434-sub         
        FSubtract                              
        JumpFNeg     -compare-3434-false       
        Jump         -compare-3434-true        
        Label        -compare-3434-true        
        PushI        1                         
        Jump         -compare-3434-join        
        Label        -compare-3434-false       
        PushI        0                         
        Jump         -compare-3434-join        
        Label        -compare-3434-join        
        JumpTrue     -print-boolean-3435-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3435-join  
        Label        -print-boolean-3435-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3435-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3436-arg1        
        PushF        2.800000                  
        Label        -compare-3436-arg2        
        PushF        5.200000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3436-sub         
        FSubtract                              
        JumpFNeg     -compare-3436-false       
        Jump         -compare-3436-true        
        Label        -compare-3436-true        
        PushI        1                         
        Jump         -compare-3436-join        
        Label        -compare-3436-false       
        PushI        0                         
        Jump         -compare-3436-join        
        Label        -compare-3436-join        
        JumpTrue     -print-boolean-3437-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3437-join  
        Label        -print-boolean-3437-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3437-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3438-arg1        
        PushF        1.000000                  
        Label        -compare-3438-arg2        
        PushF        7.100000                  
        PushF        3.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3438-sub         
        FSubtract                              
        JumpFNeg     -compare-3438-false       
        Jump         -compare-3438-true        
        Label        -compare-3438-true        
        PushI        1                         
        Jump         -compare-3438-join        
        Label        -compare-3438-false       
        PushI        0                         
        Jump         -compare-3438-join        
        Label        -compare-3438-join        
        JumpTrue     -print-boolean-3439-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3439-join  
        Label        -print-boolean-3439-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3439-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3440-arg1        
        PushF        6.800000                  
        Label        -compare-3440-arg2        
        PushF        6.400000                  
        PushF        8.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3440-sub         
        FSubtract                              
        JumpFNeg     -compare-3440-false       
        Jump         -compare-3440-true        
        Label        -compare-3440-true        
        PushI        1                         
        Jump         -compare-3440-join        
        Label        -compare-3440-false       
        PushI        0                         
        Jump         -compare-3440-join        
        Label        -compare-3440-join        
        JumpTrue     -print-boolean-3441-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3441-join  
        Label        -print-boolean-3441-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3441-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3442-arg1        
        PushF        5.900000                  
        Label        -compare-3442-arg2        
        PushF        2.700000                  
        PushF        3.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3442-sub         
        FSubtract                              
        JumpFNeg     -compare-3442-false       
        Jump         -compare-3442-true        
        Label        -compare-3442-true        
        PushI        1                         
        Jump         -compare-3442-join        
        Label        -compare-3442-false       
        PushI        0                         
        Jump         -compare-3442-join        
        Label        -compare-3442-join        
        JumpTrue     -print-boolean-3443-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3443-join  
        Label        -print-boolean-3443-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3443-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3444-arg1        
        PushF        9.600000                  
        Label        -compare-3444-arg2        
        PushF        6.800000                  
        PushF        5.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3444-sub         
        FSubtract                              
        JumpFNeg     -compare-3444-false       
        Jump         -compare-3444-true        
        Label        -compare-3444-true        
        PushI        1                         
        Jump         -compare-3444-join        
        Label        -compare-3444-false       
        PushI        0                         
        Jump         -compare-3444-join        
        Label        -compare-3444-join        
        JumpTrue     -print-boolean-3445-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3445-join  
        Label        -print-boolean-3445-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3445-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3446-arg1        
        PushF        2.900000                  
        PushF        5.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3446-arg2        
        PushF        2.400000                  
        PushF        3.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3446-sub         
        FSubtract                              
        JumpFNeg     -compare-3446-false       
        Jump         -compare-3446-true        
        Label        -compare-3446-true        
        PushI        1                         
        Jump         -compare-3446-join        
        Label        -compare-3446-false       
        PushI        0                         
        Jump         -compare-3446-join        
        Label        -compare-3446-join        
        JumpTrue     -print-boolean-3447-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3447-join  
        Label        -print-boolean-3447-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3447-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3448-arg1        
        PushF        8.800000                  
        PushF        2.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3448-arg2        
        PushF        4.800000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3448-sub         
        FSubtract                              
        JumpFNeg     -compare-3448-false       
        Jump         -compare-3448-true        
        Label        -compare-3448-true        
        PushI        1                         
        Jump         -compare-3448-join        
        Label        -compare-3448-false       
        PushI        0                         
        Jump         -compare-3448-join        
        Label        -compare-3448-join        
        JumpTrue     -print-boolean-3449-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3449-join  
        Label        -print-boolean-3449-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3449-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3450-arg1        
        PushF        4.600000                  
        PushF        6.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3450-arg2        
        PushF        9.100000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3450-sub         
        FSubtract                              
        JumpFNeg     -compare-3450-false       
        Jump         -compare-3450-true        
        Label        -compare-3450-true        
        PushI        1                         
        Jump         -compare-3450-join        
        Label        -compare-3450-false       
        PushI        0                         
        Jump         -compare-3450-join        
        Label        -compare-3450-join        
        JumpTrue     -print-boolean-3451-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3451-join  
        Label        -print-boolean-3451-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3451-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3452-arg1        
        PushF        1.300000                  
        PushF        4.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3452-arg2        
        PushF        7.100000                  
        PushF        9.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3452-sub         
        FSubtract                              
        JumpFNeg     -compare-3452-false       
        Jump         -compare-3452-true        
        Label        -compare-3452-true        
        PushI        1                         
        Jump         -compare-3452-join        
        Label        -compare-3452-false       
        PushI        0                         
        Jump         -compare-3452-join        
        Label        -compare-3452-join        
        JumpTrue     -print-boolean-3453-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3453-join  
        Label        -print-boolean-3453-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3453-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3454-arg1        
        PushF        8.000000                  
        PushF        1.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3454-arg2        
        PushF        9.600000                  
        PushF        4.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3454-sub         
        FSubtract                              
        JumpFNeg     -compare-3454-false       
        Jump         -compare-3454-true        
        Label        -compare-3454-true        
        PushI        1                         
        Jump         -compare-3454-join        
        Label        -compare-3454-false       
        PushI        0                         
        Jump         -compare-3454-join        
        Label        -compare-3454-join        
        JumpTrue     -print-boolean-3455-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3455-join  
        Label        -print-boolean-3455-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3455-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3456-arg1        
        PushF        5.700000                  
        PushF        1.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3456-arg2        
        PushF        7.600000                  
        PushF        7.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3456-sub         
        FSubtract                              
        JumpFNeg     -compare-3456-false       
        Jump         -compare-3456-true        
        Label        -compare-3456-true        
        PushI        1                         
        Jump         -compare-3456-join        
        Label        -compare-3456-false       
        PushI        0                         
        Jump         -compare-3456-join        
        Label        -compare-3456-join        
        JumpTrue     -print-boolean-3457-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3457-join  
        Label        -print-boolean-3457-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3457-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3458-arg1        
        PushF        3.400000                  
        PushF        1.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3458-arg2        
        PushF        3.600000                  
        PushF        8.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3458-sub         
        FSubtract                              
        JumpFNeg     -compare-3458-false       
        Jump         -compare-3458-true        
        Label        -compare-3458-true        
        PushI        1                         
        Jump         -compare-3458-join        
        Label        -compare-3458-false       
        PushI        0                         
        Jump         -compare-3458-join        
        Label        -compare-3458-join        
        JumpTrue     -print-boolean-3459-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3459-join  
        Label        -print-boolean-3459-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3459-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3460-arg1        
        PushF        9.800000                  
        PushF        8.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3460-arg2        
        PushF        5.600000                  
        PushF        2.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3460-sub         
        FSubtract                              
        JumpFNeg     -compare-3460-false       
        Jump         -compare-3460-true        
        Label        -compare-3460-true        
        PushI        1                         
        Jump         -compare-3460-join        
        Label        -compare-3460-false       
        PushI        0                         
        Jump         -compare-3460-join        
        Label        -compare-3460-join        
        JumpTrue     -print-boolean-3461-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3461-join  
        Label        -print-boolean-3461-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3461-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3462-arg1        
        PushF        8.800000                  
        PushF        5.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3462-arg2        
        PushF        8.700000                  
        PushF        9.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3462-sub         
        FSubtract                              
        JumpFNeg     -compare-3462-false       
        Jump         -compare-3462-true        
        Label        -compare-3462-true        
        PushI        1                         
        Jump         -compare-3462-join        
        Label        -compare-3462-false       
        PushI        0                         
        Jump         -compare-3462-join        
        Label        -compare-3462-join        
        JumpTrue     -print-boolean-3463-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3463-join  
        Label        -print-boolean-3463-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3463-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3464-arg1        
        PushF        4.000000                  
        PushF        8.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3464-arg2        
        PushF        5.300000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3464-sub         
        FSubtract                              
        JumpFNeg     -compare-3464-false       
        Jump         -compare-3464-true        
        Label        -compare-3464-true        
        PushI        1                         
        Jump         -compare-3464-join        
        Label        -compare-3464-false       
        PushI        0                         
        Jump         -compare-3464-join        
        Label        -compare-3464-join        
        JumpTrue     -print-boolean-3465-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3465-join  
        Label        -print-boolean-3465-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3465-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3466-arg1        
        PushF        2.900000                  
        PushF        4.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3466-arg2        
        PushF        1.600000                  
        PushF        4.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3466-sub         
        FSubtract                              
        JumpFNeg     -compare-3466-false       
        Jump         -compare-3466-true        
        Label        -compare-3466-true        
        PushI        1                         
        Jump         -compare-3466-join        
        Label        -compare-3466-false       
        PushI        0                         
        Jump         -compare-3466-join        
        Label        -compare-3466-join        
        JumpTrue     -print-boolean-3467-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3467-join  
        Label        -print-boolean-3467-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3467-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3468-arg1        
        PushF        5.500000                  
        PushF        8.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3468-arg2        
        PushF        4.900000                  
        PushF        4.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3468-sub         
        FSubtract                              
        JumpFNeg     -compare-3468-false       
        Jump         -compare-3468-true        
        Label        -compare-3468-true        
        PushI        1                         
        Jump         -compare-3468-join        
        Label        -compare-3468-false       
        PushI        0                         
        Jump         -compare-3468-join        
        Label        -compare-3468-join        
        JumpTrue     -print-boolean-3469-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3469-join  
        Label        -print-boolean-3469-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3469-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
