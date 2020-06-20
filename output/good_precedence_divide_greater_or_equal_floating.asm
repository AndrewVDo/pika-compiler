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
        Label        -compare-3385-arg1        
        PushF        5.100000                  
        PushF        1.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3385-arg2        
        PushF        4.800000                  
        Label        -compare-3385-sub         
        FSubtract                              
        JumpFNeg     -compare-3385-false       
        Jump         -compare-3385-true        
        Label        -compare-3385-true        
        PushI        1                         
        Jump         -compare-3385-join        
        Label        -compare-3385-false       
        PushI        0                         
        Jump         -compare-3385-join        
        Label        -compare-3385-join        
        JumpTrue     -print-boolean-3386-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3386-join  
        Label        -print-boolean-3386-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3386-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3387-arg1        
        PushF        1.200000                  
        PushF        2.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3387-arg2        
        PushF        2.900000                  
        Label        -compare-3387-sub         
        FSubtract                              
        JumpFNeg     -compare-3387-false       
        Jump         -compare-3387-true        
        Label        -compare-3387-true        
        PushI        1                         
        Jump         -compare-3387-join        
        Label        -compare-3387-false       
        PushI        0                         
        Jump         -compare-3387-join        
        Label        -compare-3387-join        
        JumpTrue     -print-boolean-3388-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3388-join  
        Label        -print-boolean-3388-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3388-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3389-arg1        
        PushF        5.800000                  
        PushF        1.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3389-arg2        
        PushF        4.000000                  
        Label        -compare-3389-sub         
        FSubtract                              
        JumpFNeg     -compare-3389-false       
        Jump         -compare-3389-true        
        Label        -compare-3389-true        
        PushI        1                         
        Jump         -compare-3389-join        
        Label        -compare-3389-false       
        PushI        0                         
        Jump         -compare-3389-join        
        Label        -compare-3389-join        
        JumpTrue     -print-boolean-3390-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3390-join  
        Label        -print-boolean-3390-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3390-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3391-arg1        
        PushF        7.500000                  
        PushF        7.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3391-arg2        
        PushF        4.200000                  
        Label        -compare-3391-sub         
        FSubtract                              
        JumpFNeg     -compare-3391-false       
        Jump         -compare-3391-true        
        Label        -compare-3391-true        
        PushI        1                         
        Jump         -compare-3391-join        
        Label        -compare-3391-false       
        PushI        0                         
        Jump         -compare-3391-join        
        Label        -compare-3391-join        
        JumpTrue     -print-boolean-3392-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3392-join  
        Label        -print-boolean-3392-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3392-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3393-arg1        
        PushF        3.000000                  
        PushF        4.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3393-arg2        
        PushF        6.600000                  
        Label        -compare-3393-sub         
        FSubtract                              
        JumpFNeg     -compare-3393-false       
        Jump         -compare-3393-true        
        Label        -compare-3393-true        
        PushI        1                         
        Jump         -compare-3393-join        
        Label        -compare-3393-false       
        PushI        0                         
        Jump         -compare-3393-join        
        Label        -compare-3393-join        
        JumpTrue     -print-boolean-3394-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3394-join  
        Label        -print-boolean-3394-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3394-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3395-arg1        
        PushF        8.700000                  
        PushF        5.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3395-arg2        
        PushF        9.500000                  
        Label        -compare-3395-sub         
        FSubtract                              
        JumpFNeg     -compare-3395-false       
        Jump         -compare-3395-true        
        Label        -compare-3395-true        
        PushI        1                         
        Jump         -compare-3395-join        
        Label        -compare-3395-false       
        PushI        0                         
        Jump         -compare-3395-join        
        Label        -compare-3395-join        
        JumpTrue     -print-boolean-3396-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3396-join  
        Label        -print-boolean-3396-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3396-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3397-arg1        
        PushF        1.300000                  
        PushF        5.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3397-arg2        
        PushF        9.200000                  
        Label        -compare-3397-sub         
        FSubtract                              
        JumpFNeg     -compare-3397-false       
        Jump         -compare-3397-true        
        Label        -compare-3397-true        
        PushI        1                         
        Jump         -compare-3397-join        
        Label        -compare-3397-false       
        PushI        0                         
        Jump         -compare-3397-join        
        Label        -compare-3397-join        
        JumpTrue     -print-boolean-3398-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3398-join  
        Label        -print-boolean-3398-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3398-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3399-arg1        
        PushF        5.700000                  
        PushF        2.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3399-arg2        
        PushF        5.800000                  
        Label        -compare-3399-sub         
        FSubtract                              
        JumpFNeg     -compare-3399-false       
        Jump         -compare-3399-true        
        Label        -compare-3399-true        
        PushI        1                         
        Jump         -compare-3399-join        
        Label        -compare-3399-false       
        PushI        0                         
        Jump         -compare-3399-join        
        Label        -compare-3399-join        
        JumpTrue     -print-boolean-3400-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3400-join  
        Label        -print-boolean-3400-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3400-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3401-arg1        
        PushF        1.600000                  
        PushF        8.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3401-arg2        
        PushF        1.200000                  
        Label        -compare-3401-sub         
        FSubtract                              
        JumpFNeg     -compare-3401-false       
        Jump         -compare-3401-true        
        Label        -compare-3401-true        
        PushI        1                         
        Jump         -compare-3401-join        
        Label        -compare-3401-false       
        PushI        0                         
        Jump         -compare-3401-join        
        Label        -compare-3401-join        
        JumpTrue     -print-boolean-3402-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3402-join  
        Label        -print-boolean-3402-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3402-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3403-arg1        
        PushF        9.100000                  
        PushF        5.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3403-arg2        
        PushF        1.300000                  
        Label        -compare-3403-sub         
        FSubtract                              
        JumpFNeg     -compare-3403-false       
        Jump         -compare-3403-true        
        Label        -compare-3403-true        
        PushI        1                         
        Jump         -compare-3403-join        
        Label        -compare-3403-false       
        PushI        0                         
        Jump         -compare-3403-join        
        Label        -compare-3403-join        
        JumpTrue     -print-boolean-3404-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3404-join  
        Label        -print-boolean-3404-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3404-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3405-arg1        
        PushF        1.900000                  
        PushF        4.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3405-arg2        
        PushF        3.000000                  
        Label        -compare-3405-sub         
        FSubtract                              
        JumpFNeg     -compare-3405-false       
        Jump         -compare-3405-true        
        Label        -compare-3405-true        
        PushI        1                         
        Jump         -compare-3405-join        
        Label        -compare-3405-false       
        PushI        0                         
        Jump         -compare-3405-join        
        Label        -compare-3405-join        
        JumpTrue     -print-boolean-3406-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3406-join  
        Label        -print-boolean-3406-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3406-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3407-arg1        
        PushF        8.900000                  
        PushF        7.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3407-arg2        
        PushF        1.000000                  
        Label        -compare-3407-sub         
        FSubtract                              
        JumpFNeg     -compare-3407-false       
        Jump         -compare-3407-true        
        Label        -compare-3407-true        
        PushI        1                         
        Jump         -compare-3407-join        
        Label        -compare-3407-false       
        PushI        0                         
        Jump         -compare-3407-join        
        Label        -compare-3407-join        
        JumpTrue     -print-boolean-3408-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3408-join  
        Label        -print-boolean-3408-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3408-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3409-arg1        
        PushF        8.400000                  
        Label        -compare-3409-arg2        
        PushF        3.100000                  
        PushF        7.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3409-sub         
        FSubtract                              
        JumpFNeg     -compare-3409-false       
        Jump         -compare-3409-true        
        Label        -compare-3409-true        
        PushI        1                         
        Jump         -compare-3409-join        
        Label        -compare-3409-false       
        PushI        0                         
        Jump         -compare-3409-join        
        Label        -compare-3409-join        
        JumpTrue     -print-boolean-3410-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3410-join  
        Label        -print-boolean-3410-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3410-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3411-arg1        
        PushF        3.500000                  
        Label        -compare-3411-arg2        
        PushF        1.800000                  
        PushF        8.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3411-sub         
        FSubtract                              
        JumpFNeg     -compare-3411-false       
        Jump         -compare-3411-true        
        Label        -compare-3411-true        
        PushI        1                         
        Jump         -compare-3411-join        
        Label        -compare-3411-false       
        PushI        0                         
        Jump         -compare-3411-join        
        Label        -compare-3411-join        
        JumpTrue     -print-boolean-3412-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3412-join  
        Label        -print-boolean-3412-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3412-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3413-arg1        
        PushF        8.200000                  
        Label        -compare-3413-arg2        
        PushF        5.000000                  
        PushF        1.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3413-sub         
        FSubtract                              
        JumpFNeg     -compare-3413-false       
        Jump         -compare-3413-true        
        Label        -compare-3413-true        
        PushI        1                         
        Jump         -compare-3413-join        
        Label        -compare-3413-false       
        PushI        0                         
        Jump         -compare-3413-join        
        Label        -compare-3413-join        
        JumpTrue     -print-boolean-3414-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3414-join  
        Label        -print-boolean-3414-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3414-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3415-arg1        
        PushF        3.300000                  
        Label        -compare-3415-arg2        
        PushF        9.700000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3415-sub         
        FSubtract                              
        JumpFNeg     -compare-3415-false       
        Jump         -compare-3415-true        
        Label        -compare-3415-true        
        PushI        1                         
        Jump         -compare-3415-join        
        Label        -compare-3415-false       
        PushI        0                         
        Jump         -compare-3415-join        
        Label        -compare-3415-join        
        JumpTrue     -print-boolean-3416-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3416-join  
        Label        -print-boolean-3416-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3416-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3417-arg1        
        PushF        9.700000                  
        Label        -compare-3417-arg2        
        PushF        3.500000                  
        PushF        6.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3417-sub         
        FSubtract                              
        JumpFNeg     -compare-3417-false       
        Jump         -compare-3417-true        
        Label        -compare-3417-true        
        PushI        1                         
        Jump         -compare-3417-join        
        Label        -compare-3417-false       
        PushI        0                         
        Jump         -compare-3417-join        
        Label        -compare-3417-join        
        JumpTrue     -print-boolean-3418-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3418-join  
        Label        -print-boolean-3418-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3418-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3419-arg1        
        PushF        7.100000                  
        Label        -compare-3419-arg2        
        PushF        2.800000                  
        PushF        4.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3419-sub         
        FSubtract                              
        JumpFNeg     -compare-3419-false       
        Jump         -compare-3419-true        
        Label        -compare-3419-true        
        PushI        1                         
        Jump         -compare-3419-join        
        Label        -compare-3419-false       
        PushI        0                         
        Jump         -compare-3419-join        
        Label        -compare-3419-join        
        JumpTrue     -print-boolean-3420-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3420-join  
        Label        -print-boolean-3420-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3420-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3421-arg1        
        PushF        1.100000                  
        Label        -compare-3421-arg2        
        PushF        4.600000                  
        PushF        1.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3421-sub         
        FSubtract                              
        JumpFNeg     -compare-3421-false       
        Jump         -compare-3421-true        
        Label        -compare-3421-true        
        PushI        1                         
        Jump         -compare-3421-join        
        Label        -compare-3421-false       
        PushI        0                         
        Jump         -compare-3421-join        
        Label        -compare-3421-join        
        JumpTrue     -print-boolean-3422-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3422-join  
        Label        -print-boolean-3422-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3422-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3423-arg1        
        PushF        2.800000                  
        Label        -compare-3423-arg2        
        PushF        5.200000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3423-sub         
        FSubtract                              
        JumpFNeg     -compare-3423-false       
        Jump         -compare-3423-true        
        Label        -compare-3423-true        
        PushI        1                         
        Jump         -compare-3423-join        
        Label        -compare-3423-false       
        PushI        0                         
        Jump         -compare-3423-join        
        Label        -compare-3423-join        
        JumpTrue     -print-boolean-3424-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3424-join  
        Label        -print-boolean-3424-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3424-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3425-arg1        
        PushF        1.000000                  
        Label        -compare-3425-arg2        
        PushF        7.100000                  
        PushF        3.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3425-sub         
        FSubtract                              
        JumpFNeg     -compare-3425-false       
        Jump         -compare-3425-true        
        Label        -compare-3425-true        
        PushI        1                         
        Jump         -compare-3425-join        
        Label        -compare-3425-false       
        PushI        0                         
        Jump         -compare-3425-join        
        Label        -compare-3425-join        
        JumpTrue     -print-boolean-3426-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3426-join  
        Label        -print-boolean-3426-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3426-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3427-arg1        
        PushF        6.800000                  
        Label        -compare-3427-arg2        
        PushF        6.400000                  
        PushF        8.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3427-sub         
        FSubtract                              
        JumpFNeg     -compare-3427-false       
        Jump         -compare-3427-true        
        Label        -compare-3427-true        
        PushI        1                         
        Jump         -compare-3427-join        
        Label        -compare-3427-false       
        PushI        0                         
        Jump         -compare-3427-join        
        Label        -compare-3427-join        
        JumpTrue     -print-boolean-3428-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3428-join  
        Label        -print-boolean-3428-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3428-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3429-arg1        
        PushF        5.900000                  
        Label        -compare-3429-arg2        
        PushF        2.700000                  
        PushF        3.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3429-sub         
        FSubtract                              
        JumpFNeg     -compare-3429-false       
        Jump         -compare-3429-true        
        Label        -compare-3429-true        
        PushI        1                         
        Jump         -compare-3429-join        
        Label        -compare-3429-false       
        PushI        0                         
        Jump         -compare-3429-join        
        Label        -compare-3429-join        
        JumpTrue     -print-boolean-3430-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3430-join  
        Label        -print-boolean-3430-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3430-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3431-arg1        
        PushF        9.600000                  
        Label        -compare-3431-arg2        
        PushF        6.800000                  
        PushF        5.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3431-sub         
        FSubtract                              
        JumpFNeg     -compare-3431-false       
        Jump         -compare-3431-true        
        Label        -compare-3431-true        
        PushI        1                         
        Jump         -compare-3431-join        
        Label        -compare-3431-false       
        PushI        0                         
        Jump         -compare-3431-join        
        Label        -compare-3431-join        
        JumpTrue     -print-boolean-3432-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3432-join  
        Label        -print-boolean-3432-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3432-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3433-arg1        
        PushF        2.900000                  
        PushF        5.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3433-arg2        
        PushF        2.400000                  
        PushF        3.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3433-sub         
        FSubtract                              
        JumpFNeg     -compare-3433-false       
        Jump         -compare-3433-true        
        Label        -compare-3433-true        
        PushI        1                         
        Jump         -compare-3433-join        
        Label        -compare-3433-false       
        PushI        0                         
        Jump         -compare-3433-join        
        Label        -compare-3433-join        
        JumpTrue     -print-boolean-3434-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3434-join  
        Label        -print-boolean-3434-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3434-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3435-arg1        
        PushF        8.800000                  
        PushF        2.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3435-arg2        
        PushF        4.800000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3435-sub         
        FSubtract                              
        JumpFNeg     -compare-3435-false       
        Jump         -compare-3435-true        
        Label        -compare-3435-true        
        PushI        1                         
        Jump         -compare-3435-join        
        Label        -compare-3435-false       
        PushI        0                         
        Jump         -compare-3435-join        
        Label        -compare-3435-join        
        JumpTrue     -print-boolean-3436-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3436-join  
        Label        -print-boolean-3436-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3436-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3437-arg1        
        PushF        4.600000                  
        PushF        6.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3437-arg2        
        PushF        9.100000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3437-sub         
        FSubtract                              
        JumpFNeg     -compare-3437-false       
        Jump         -compare-3437-true        
        Label        -compare-3437-true        
        PushI        1                         
        Jump         -compare-3437-join        
        Label        -compare-3437-false       
        PushI        0                         
        Jump         -compare-3437-join        
        Label        -compare-3437-join        
        JumpTrue     -print-boolean-3438-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3438-join  
        Label        -print-boolean-3438-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3438-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3439-arg1        
        PushF        1.300000                  
        PushF        4.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3439-arg2        
        PushF        7.100000                  
        PushF        9.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3439-sub         
        FSubtract                              
        JumpFNeg     -compare-3439-false       
        Jump         -compare-3439-true        
        Label        -compare-3439-true        
        PushI        1                         
        Jump         -compare-3439-join        
        Label        -compare-3439-false       
        PushI        0                         
        Jump         -compare-3439-join        
        Label        -compare-3439-join        
        JumpTrue     -print-boolean-3440-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3440-join  
        Label        -print-boolean-3440-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3440-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3441-arg1        
        PushF        8.000000                  
        PushF        1.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3441-arg2        
        PushF        9.600000                  
        PushF        4.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3441-sub         
        FSubtract                              
        JumpFNeg     -compare-3441-false       
        Jump         -compare-3441-true        
        Label        -compare-3441-true        
        PushI        1                         
        Jump         -compare-3441-join        
        Label        -compare-3441-false       
        PushI        0                         
        Jump         -compare-3441-join        
        Label        -compare-3441-join        
        JumpTrue     -print-boolean-3442-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3442-join  
        Label        -print-boolean-3442-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3442-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3443-arg1        
        PushF        5.700000                  
        PushF        1.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3443-arg2        
        PushF        7.600000                  
        PushF        7.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3443-sub         
        FSubtract                              
        JumpFNeg     -compare-3443-false       
        Jump         -compare-3443-true        
        Label        -compare-3443-true        
        PushI        1                         
        Jump         -compare-3443-join        
        Label        -compare-3443-false       
        PushI        0                         
        Jump         -compare-3443-join        
        Label        -compare-3443-join        
        JumpTrue     -print-boolean-3444-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3444-join  
        Label        -print-boolean-3444-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3444-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3445-arg1        
        PushF        3.400000                  
        PushF        1.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3445-arg2        
        PushF        3.600000                  
        PushF        8.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3445-sub         
        FSubtract                              
        JumpFNeg     -compare-3445-false       
        Jump         -compare-3445-true        
        Label        -compare-3445-true        
        PushI        1                         
        Jump         -compare-3445-join        
        Label        -compare-3445-false       
        PushI        0                         
        Jump         -compare-3445-join        
        Label        -compare-3445-join        
        JumpTrue     -print-boolean-3446-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3446-join  
        Label        -print-boolean-3446-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3446-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3447-arg1        
        PushF        9.800000                  
        PushF        8.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3447-arg2        
        PushF        5.600000                  
        PushF        2.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3447-sub         
        FSubtract                              
        JumpFNeg     -compare-3447-false       
        Jump         -compare-3447-true        
        Label        -compare-3447-true        
        PushI        1                         
        Jump         -compare-3447-join        
        Label        -compare-3447-false       
        PushI        0                         
        Jump         -compare-3447-join        
        Label        -compare-3447-join        
        JumpTrue     -print-boolean-3448-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3448-join  
        Label        -print-boolean-3448-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3448-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3449-arg1        
        PushF        8.800000                  
        PushF        5.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3449-arg2        
        PushF        8.700000                  
        PushF        9.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3449-sub         
        FSubtract                              
        JumpFNeg     -compare-3449-false       
        Jump         -compare-3449-true        
        Label        -compare-3449-true        
        PushI        1                         
        Jump         -compare-3449-join        
        Label        -compare-3449-false       
        PushI        0                         
        Jump         -compare-3449-join        
        Label        -compare-3449-join        
        JumpTrue     -print-boolean-3450-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3450-join  
        Label        -print-boolean-3450-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3450-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3451-arg1        
        PushF        4.000000                  
        PushF        8.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3451-arg2        
        PushF        5.300000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3451-sub         
        FSubtract                              
        JumpFNeg     -compare-3451-false       
        Jump         -compare-3451-true        
        Label        -compare-3451-true        
        PushI        1                         
        Jump         -compare-3451-join        
        Label        -compare-3451-false       
        PushI        0                         
        Jump         -compare-3451-join        
        Label        -compare-3451-join        
        JumpTrue     -print-boolean-3452-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3452-join  
        Label        -print-boolean-3452-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3452-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3453-arg1        
        PushF        2.900000                  
        PushF        4.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3453-arg2        
        PushF        1.600000                  
        PushF        4.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3453-sub         
        FSubtract                              
        JumpFNeg     -compare-3453-false       
        Jump         -compare-3453-true        
        Label        -compare-3453-true        
        PushI        1                         
        Jump         -compare-3453-join        
        Label        -compare-3453-false       
        PushI        0                         
        Jump         -compare-3453-join        
        Label        -compare-3453-join        
        JumpTrue     -print-boolean-3454-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3454-join  
        Label        -print-boolean-3454-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3454-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3455-arg1        
        PushF        5.500000                  
        PushF        8.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3455-arg2        
        PushF        4.900000                  
        PushF        4.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3455-sub         
        FSubtract                              
        JumpFNeg     -compare-3455-false       
        Jump         -compare-3455-true        
        Label        -compare-3455-true        
        PushI        1                         
        Jump         -compare-3455-join        
        Label        -compare-3455-false       
        PushI        0                         
        Jump         -compare-3455-join        
        Label        -compare-3455-join        
        JumpTrue     -print-boolean-3456-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3456-join  
        Label        -print-boolean-3456-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3456-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
