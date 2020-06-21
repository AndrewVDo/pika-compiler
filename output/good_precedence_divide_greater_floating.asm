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
        Label        -compare-3254-arg1        
        PushF        8.600000                  
        PushF        4.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3254-arg2        
        PushF        5.500000                  
        Label        -compare-3254-sub         
        FSubtract                              
        JumpFPos     -compare-3254-true        
        Jump         -compare-3254-false       
        Label        -compare-3254-true        
        PushI        1                         
        Jump         -compare-3254-join        
        Label        -compare-3254-false       
        PushI        0                         
        Jump         -compare-3254-join        
        Label        -compare-3254-join        
        JumpTrue     -print-boolean-3255-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3255-join  
        Label        -print-boolean-3255-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3255-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3256-arg1        
        PushF        4.200000                  
        PushF        5.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3256-arg2        
        PushF        3.700000                  
        Label        -compare-3256-sub         
        FSubtract                              
        JumpFPos     -compare-3256-true        
        Jump         -compare-3256-false       
        Label        -compare-3256-true        
        PushI        1                         
        Jump         -compare-3256-join        
        Label        -compare-3256-false       
        PushI        0                         
        Jump         -compare-3256-join        
        Label        -compare-3256-join        
        JumpTrue     -print-boolean-3257-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3257-join  
        Label        -print-boolean-3257-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3257-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3258-arg1        
        PushF        8.800000                  
        PushF        9.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3258-arg2        
        PushF        9.900000                  
        Label        -compare-3258-sub         
        FSubtract                              
        JumpFPos     -compare-3258-true        
        Jump         -compare-3258-false       
        Label        -compare-3258-true        
        PushI        1                         
        Jump         -compare-3258-join        
        Label        -compare-3258-false       
        PushI        0                         
        Jump         -compare-3258-join        
        Label        -compare-3258-join        
        JumpTrue     -print-boolean-3259-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3259-join  
        Label        -print-boolean-3259-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3259-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3260-arg1        
        PushF        4.800000                  
        PushF        2.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3260-arg2        
        PushF        7.000000                  
        Label        -compare-3260-sub         
        FSubtract                              
        JumpFPos     -compare-3260-true        
        Jump         -compare-3260-false       
        Label        -compare-3260-true        
        PushI        1                         
        Jump         -compare-3260-join        
        Label        -compare-3260-false       
        PushI        0                         
        Jump         -compare-3260-join        
        Label        -compare-3260-join        
        JumpTrue     -print-boolean-3261-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3261-join  
        Label        -print-boolean-3261-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3261-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3262-arg1        
        PushF        4.600000                  
        PushF        4.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3262-arg2        
        PushF        1.400000                  
        Label        -compare-3262-sub         
        FSubtract                              
        JumpFPos     -compare-3262-true        
        Jump         -compare-3262-false       
        Label        -compare-3262-true        
        PushI        1                         
        Jump         -compare-3262-join        
        Label        -compare-3262-false       
        PushI        0                         
        Jump         -compare-3262-join        
        Label        -compare-3262-join        
        JumpTrue     -print-boolean-3263-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3263-join  
        Label        -print-boolean-3263-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3263-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3264-arg1        
        PushF        8.500000                  
        PushF        1.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3264-arg2        
        PushF        5.100000                  
        Label        -compare-3264-sub         
        FSubtract                              
        JumpFPos     -compare-3264-true        
        Jump         -compare-3264-false       
        Label        -compare-3264-true        
        PushI        1                         
        Jump         -compare-3264-join        
        Label        -compare-3264-false       
        PushI        0                         
        Jump         -compare-3264-join        
        Label        -compare-3264-join        
        JumpTrue     -print-boolean-3265-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3265-join  
        Label        -print-boolean-3265-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3265-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3266-arg1        
        PushF        6.000000                  
        PushF        2.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3266-arg2        
        PushF        2.600000                  
        Label        -compare-3266-sub         
        FSubtract                              
        JumpFPos     -compare-3266-true        
        Jump         -compare-3266-false       
        Label        -compare-3266-true        
        PushI        1                         
        Jump         -compare-3266-join        
        Label        -compare-3266-false       
        PushI        0                         
        Jump         -compare-3266-join        
        Label        -compare-3266-join        
        JumpTrue     -print-boolean-3267-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3267-join  
        Label        -print-boolean-3267-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3267-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3268-arg1        
        PushF        4.800000                  
        PushF        9.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3268-arg2        
        PushF        3.100000                  
        Label        -compare-3268-sub         
        FSubtract                              
        JumpFPos     -compare-3268-true        
        Jump         -compare-3268-false       
        Label        -compare-3268-true        
        PushI        1                         
        Jump         -compare-3268-join        
        Label        -compare-3268-false       
        PushI        0                         
        Jump         -compare-3268-join        
        Label        -compare-3268-join        
        JumpTrue     -print-boolean-3269-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3269-join  
        Label        -print-boolean-3269-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3269-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3270-arg1        
        PushF        9.600000                  
        PushF        5.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3270-arg2        
        PushF        8.000000                  
        Label        -compare-3270-sub         
        FSubtract                              
        JumpFPos     -compare-3270-true        
        Jump         -compare-3270-false       
        Label        -compare-3270-true        
        PushI        1                         
        Jump         -compare-3270-join        
        Label        -compare-3270-false       
        PushI        0                         
        Jump         -compare-3270-join        
        Label        -compare-3270-join        
        JumpTrue     -print-boolean-3271-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3271-join  
        Label        -print-boolean-3271-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3271-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3272-arg1        
        PushF        9.000000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3272-arg2        
        PushF        4.200000                  
        Label        -compare-3272-sub         
        FSubtract                              
        JumpFPos     -compare-3272-true        
        Jump         -compare-3272-false       
        Label        -compare-3272-true        
        PushI        1                         
        Jump         -compare-3272-join        
        Label        -compare-3272-false       
        PushI        0                         
        Jump         -compare-3272-join        
        Label        -compare-3272-join        
        JumpTrue     -print-boolean-3273-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3273-join  
        Label        -print-boolean-3273-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3273-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3274-arg1        
        PushF        2.000000                  
        PushF        3.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3274-arg2        
        PushF        4.600000                  
        Label        -compare-3274-sub         
        FSubtract                              
        JumpFPos     -compare-3274-true        
        Jump         -compare-3274-false       
        Label        -compare-3274-true        
        PushI        1                         
        Jump         -compare-3274-join        
        Label        -compare-3274-false       
        PushI        0                         
        Jump         -compare-3274-join        
        Label        -compare-3274-join        
        JumpTrue     -print-boolean-3275-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3275-join  
        Label        -print-boolean-3275-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3275-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3276-arg1        
        PushF        4.200000                  
        PushF        5.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3276-arg2        
        PushF        8.800000                  
        Label        -compare-3276-sub         
        FSubtract                              
        JumpFPos     -compare-3276-true        
        Jump         -compare-3276-false       
        Label        -compare-3276-true        
        PushI        1                         
        Jump         -compare-3276-join        
        Label        -compare-3276-false       
        PushI        0                         
        Jump         -compare-3276-join        
        Label        -compare-3276-join        
        JumpTrue     -print-boolean-3277-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3277-join  
        Label        -print-boolean-3277-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3277-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3278-arg1        
        PushF        2.200000                  
        Label        -compare-3278-arg2        
        PushF        8.200000                  
        PushF        2.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3278-sub         
        FSubtract                              
        JumpFPos     -compare-3278-true        
        Jump         -compare-3278-false       
        Label        -compare-3278-true        
        PushI        1                         
        Jump         -compare-3278-join        
        Label        -compare-3278-false       
        PushI        0                         
        Jump         -compare-3278-join        
        Label        -compare-3278-join        
        JumpTrue     -print-boolean-3279-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3279-join  
        Label        -print-boolean-3279-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3279-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3280-arg1        
        PushF        8.700000                  
        Label        -compare-3280-arg2        
        PushF        5.400000                  
        PushF        8.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3280-sub         
        FSubtract                              
        JumpFPos     -compare-3280-true        
        Jump         -compare-3280-false       
        Label        -compare-3280-true        
        PushI        1                         
        Jump         -compare-3280-join        
        Label        -compare-3280-false       
        PushI        0                         
        Jump         -compare-3280-join        
        Label        -compare-3280-join        
        JumpTrue     -print-boolean-3281-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3281-join  
        Label        -print-boolean-3281-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3281-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3282-arg1        
        PushF        3.000000                  
        Label        -compare-3282-arg2        
        PushF        3.200000                  
        PushF        7.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3282-sub         
        FSubtract                              
        JumpFPos     -compare-3282-true        
        Jump         -compare-3282-false       
        Label        -compare-3282-true        
        PushI        1                         
        Jump         -compare-3282-join        
        Label        -compare-3282-false       
        PushI        0                         
        Jump         -compare-3282-join        
        Label        -compare-3282-join        
        JumpTrue     -print-boolean-3283-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3283-join  
        Label        -print-boolean-3283-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3283-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3284-arg1        
        PushF        9.100000                  
        Label        -compare-3284-arg2        
        PushF        8.100000                  
        PushF        7.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3284-sub         
        FSubtract                              
        JumpFPos     -compare-3284-true        
        Jump         -compare-3284-false       
        Label        -compare-3284-true        
        PushI        1                         
        Jump         -compare-3284-join        
        Label        -compare-3284-false       
        PushI        0                         
        Jump         -compare-3284-join        
        Label        -compare-3284-join        
        JumpTrue     -print-boolean-3285-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3285-join  
        Label        -print-boolean-3285-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3285-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3286-arg1        
        PushF        4.000000                  
        Label        -compare-3286-arg2        
        PushF        1.300000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3286-sub         
        FSubtract                              
        JumpFPos     -compare-3286-true        
        Jump         -compare-3286-false       
        Label        -compare-3286-true        
        PushI        1                         
        Jump         -compare-3286-join        
        Label        -compare-3286-false       
        PushI        0                         
        Jump         -compare-3286-join        
        Label        -compare-3286-join        
        JumpTrue     -print-boolean-3287-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3287-join  
        Label        -print-boolean-3287-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3287-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3288-arg1        
        PushF        8.400000                  
        Label        -compare-3288-arg2        
        PushF        1.400000                  
        PushF        6.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3288-sub         
        FSubtract                              
        JumpFPos     -compare-3288-true        
        Jump         -compare-3288-false       
        Label        -compare-3288-true        
        PushI        1                         
        Jump         -compare-3288-join        
        Label        -compare-3288-false       
        PushI        0                         
        Jump         -compare-3288-join        
        Label        -compare-3288-join        
        JumpTrue     -print-boolean-3289-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3289-join  
        Label        -print-boolean-3289-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3289-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3290-arg1        
        PushF        3.300000                  
        Label        -compare-3290-arg2        
        PushF        4.300000                  
        PushF        7.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3290-sub         
        FSubtract                              
        JumpFPos     -compare-3290-true        
        Jump         -compare-3290-false       
        Label        -compare-3290-true        
        PushI        1                         
        Jump         -compare-3290-join        
        Label        -compare-3290-false       
        PushI        0                         
        Jump         -compare-3290-join        
        Label        -compare-3290-join        
        JumpTrue     -print-boolean-3291-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3291-join  
        Label        -print-boolean-3291-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3291-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3292-arg1        
        PushF        4.700000                  
        Label        -compare-3292-arg2        
        PushF        8.100000                  
        PushF        5.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3292-sub         
        FSubtract                              
        JumpFPos     -compare-3292-true        
        Jump         -compare-3292-false       
        Label        -compare-3292-true        
        PushI        1                         
        Jump         -compare-3292-join        
        Label        -compare-3292-false       
        PushI        0                         
        Jump         -compare-3292-join        
        Label        -compare-3292-join        
        JumpTrue     -print-boolean-3293-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3293-join  
        Label        -print-boolean-3293-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3293-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3294-arg1        
        PushF        4.300000                  
        Label        -compare-3294-arg2        
        PushF        5.100000                  
        PushF        4.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3294-sub         
        FSubtract                              
        JumpFPos     -compare-3294-true        
        Jump         -compare-3294-false       
        Label        -compare-3294-true        
        PushI        1                         
        Jump         -compare-3294-join        
        Label        -compare-3294-false       
        PushI        0                         
        Jump         -compare-3294-join        
        Label        -compare-3294-join        
        JumpTrue     -print-boolean-3295-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3295-join  
        Label        -print-boolean-3295-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3295-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3296-arg1        
        PushF        1.700000                  
        Label        -compare-3296-arg2        
        PushF        1.900000                  
        PushF        9.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3296-sub         
        FSubtract                              
        JumpFPos     -compare-3296-true        
        Jump         -compare-3296-false       
        Label        -compare-3296-true        
        PushI        1                         
        Jump         -compare-3296-join        
        Label        -compare-3296-false       
        PushI        0                         
        Jump         -compare-3296-join        
        Label        -compare-3296-join        
        JumpTrue     -print-boolean-3297-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3297-join  
        Label        -print-boolean-3297-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3297-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3298-arg1        
        PushF        2.500000                  
        Label        -compare-3298-arg2        
        PushF        1.900000                  
        PushF        9.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3298-sub         
        FSubtract                              
        JumpFPos     -compare-3298-true        
        Jump         -compare-3298-false       
        Label        -compare-3298-true        
        PushI        1                         
        Jump         -compare-3298-join        
        Label        -compare-3298-false       
        PushI        0                         
        Jump         -compare-3298-join        
        Label        -compare-3298-join        
        JumpTrue     -print-boolean-3299-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3299-join  
        Label        -print-boolean-3299-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3299-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3300-arg1        
        PushF        1.700000                  
        Label        -compare-3300-arg2        
        PushF        2.100000                  
        PushF        1.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3300-sub         
        FSubtract                              
        JumpFPos     -compare-3300-true        
        Jump         -compare-3300-false       
        Label        -compare-3300-true        
        PushI        1                         
        Jump         -compare-3300-join        
        Label        -compare-3300-false       
        PushI        0                         
        Jump         -compare-3300-join        
        Label        -compare-3300-join        
        JumpTrue     -print-boolean-3301-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3301-join  
        Label        -print-boolean-3301-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3301-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3302-arg1        
        PushF        3.600000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3302-arg2        
        PushF        2.300000                  
        PushF        3.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3302-sub         
        FSubtract                              
        JumpFPos     -compare-3302-true        
        Jump         -compare-3302-false       
        Label        -compare-3302-true        
        PushI        1                         
        Jump         -compare-3302-join        
        Label        -compare-3302-false       
        PushI        0                         
        Jump         -compare-3302-join        
        Label        -compare-3302-join        
        JumpTrue     -print-boolean-3303-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3303-join  
        Label        -print-boolean-3303-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3303-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3304-arg1        
        PushF        8.400000                  
        PushF        7.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3304-arg2        
        PushF        6.900000                  
        PushF        3.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3304-sub         
        FSubtract                              
        JumpFPos     -compare-3304-true        
        Jump         -compare-3304-false       
        Label        -compare-3304-true        
        PushI        1                         
        Jump         -compare-3304-join        
        Label        -compare-3304-false       
        PushI        0                         
        Jump         -compare-3304-join        
        Label        -compare-3304-join        
        JumpTrue     -print-boolean-3305-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3305-join  
        Label        -print-boolean-3305-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3305-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3306-arg1        
        PushF        2.000000                  
        PushF        8.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3306-arg2        
        PushF        9.900000                  
        PushF        6.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3306-sub         
        FSubtract                              
        JumpFPos     -compare-3306-true        
        Jump         -compare-3306-false       
        Label        -compare-3306-true        
        PushI        1                         
        Jump         -compare-3306-join        
        Label        -compare-3306-false       
        PushI        0                         
        Jump         -compare-3306-join        
        Label        -compare-3306-join        
        JumpTrue     -print-boolean-3307-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3307-join  
        Label        -print-boolean-3307-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3307-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3308-arg1        
        PushF        1.500000                  
        PushF        2.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3308-arg2        
        PushF        7.800000                  
        PushF        9.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3308-sub         
        FSubtract                              
        JumpFPos     -compare-3308-true        
        Jump         -compare-3308-false       
        Label        -compare-3308-true        
        PushI        1                         
        Jump         -compare-3308-join        
        Label        -compare-3308-false       
        PushI        0                         
        Jump         -compare-3308-join        
        Label        -compare-3308-join        
        JumpTrue     -print-boolean-3309-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3309-join  
        Label        -print-boolean-3309-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3309-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3310-arg1        
        PushF        6.000000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3310-arg2        
        PushF        6.400000                  
        PushF        8.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3310-sub         
        FSubtract                              
        JumpFPos     -compare-3310-true        
        Jump         -compare-3310-false       
        Label        -compare-3310-true        
        PushI        1                         
        Jump         -compare-3310-join        
        Label        -compare-3310-false       
        PushI        0                         
        Jump         -compare-3310-join        
        Label        -compare-3310-join        
        JumpTrue     -print-boolean-3311-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3311-join  
        Label        -print-boolean-3311-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3311-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3312-arg1        
        PushF        8.000000                  
        PushF        6.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3312-arg2        
        PushF        3.700000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3312-sub         
        FSubtract                              
        JumpFPos     -compare-3312-true        
        Jump         -compare-3312-false       
        Label        -compare-3312-true        
        PushI        1                         
        Jump         -compare-3312-join        
        Label        -compare-3312-false       
        PushI        0                         
        Jump         -compare-3312-join        
        Label        -compare-3312-join        
        JumpTrue     -print-boolean-3313-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3313-join  
        Label        -print-boolean-3313-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3313-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3314-arg1        
        PushF        7.900000                  
        PushF        7.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3314-arg2        
        PushF        3.100000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3314-sub         
        FSubtract                              
        JumpFPos     -compare-3314-true        
        Jump         -compare-3314-false       
        Label        -compare-3314-true        
        PushI        1                         
        Jump         -compare-3314-join        
        Label        -compare-3314-false       
        PushI        0                         
        Jump         -compare-3314-join        
        Label        -compare-3314-join        
        JumpTrue     -print-boolean-3315-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3315-join  
        Label        -print-boolean-3315-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3315-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3316-arg1        
        PushF        6.300000                  
        PushF        9.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3316-arg2        
        PushF        8.700000                  
        PushF        4.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3316-sub         
        FSubtract                              
        JumpFPos     -compare-3316-true        
        Jump         -compare-3316-false       
        Label        -compare-3316-true        
        PushI        1                         
        Jump         -compare-3316-join        
        Label        -compare-3316-false       
        PushI        0                         
        Jump         -compare-3316-join        
        Label        -compare-3316-join        
        JumpTrue     -print-boolean-3317-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3317-join  
        Label        -print-boolean-3317-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3317-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3318-arg1        
        PushF        3.100000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3318-arg2        
        PushF        9.200000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3318-sub         
        FSubtract                              
        JumpFPos     -compare-3318-true        
        Jump         -compare-3318-false       
        Label        -compare-3318-true        
        PushI        1                         
        Jump         -compare-3318-join        
        Label        -compare-3318-false       
        PushI        0                         
        Jump         -compare-3318-join        
        Label        -compare-3318-join        
        JumpTrue     -print-boolean-3319-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3319-join  
        Label        -print-boolean-3319-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3319-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3320-arg1        
        PushF        5.400000                  
        PushF        2.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3320-arg2        
        PushF        6.000000                  
        PushF        2.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3320-sub         
        FSubtract                              
        JumpFPos     -compare-3320-true        
        Jump         -compare-3320-false       
        Label        -compare-3320-true        
        PushI        1                         
        Jump         -compare-3320-join        
        Label        -compare-3320-false       
        PushI        0                         
        Jump         -compare-3320-join        
        Label        -compare-3320-join        
        JumpTrue     -print-boolean-3321-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3321-join  
        Label        -print-boolean-3321-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3321-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3322-arg1        
        PushF        6.200000                  
        PushF        1.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3322-arg2        
        PushF        3.900000                  
        PushF        3.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3322-sub         
        FSubtract                              
        JumpFPos     -compare-3322-true        
        Jump         -compare-3322-false       
        Label        -compare-3322-true        
        PushI        1                         
        Jump         -compare-3322-join        
        Label        -compare-3322-false       
        PushI        0                         
        Jump         -compare-3322-join        
        Label        -compare-3322-join        
        JumpTrue     -print-boolean-3323-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3323-join  
        Label        -print-boolean-3323-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3323-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3324-arg1        
        PushF        4.700000                  
        PushF        1.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3324-arg2        
        PushF        2.200000                  
        PushF        5.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3324-sub         
        FSubtract                              
        JumpFPos     -compare-3324-true        
        Jump         -compare-3324-false       
        Label        -compare-3324-true        
        PushI        1                         
        Jump         -compare-3324-join        
        Label        -compare-3324-false       
        PushI        0                         
        Jump         -compare-3324-join        
        Label        -compare-3324-join        
        JumpTrue     -print-boolean-3325-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3325-join  
        Label        -print-boolean-3325-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3325-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
