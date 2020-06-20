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
        Label        -compare-3241-arg1        
        PushF        8.600000                  
        PushF        4.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3241-arg2        
        PushF        5.500000                  
        Label        -compare-3241-sub         
        FSubtract                              
        JumpFPos     -compare-3241-true        
        Jump         -compare-3241-false       
        Label        -compare-3241-true        
        PushI        1                         
        Jump         -compare-3241-join        
        Label        -compare-3241-false       
        PushI        0                         
        Jump         -compare-3241-join        
        Label        -compare-3241-join        
        JumpTrue     -print-boolean-3242-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3242-join  
        Label        -print-boolean-3242-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3242-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3243-arg1        
        PushF        4.200000                  
        PushF        5.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3243-arg2        
        PushF        3.700000                  
        Label        -compare-3243-sub         
        FSubtract                              
        JumpFPos     -compare-3243-true        
        Jump         -compare-3243-false       
        Label        -compare-3243-true        
        PushI        1                         
        Jump         -compare-3243-join        
        Label        -compare-3243-false       
        PushI        0                         
        Jump         -compare-3243-join        
        Label        -compare-3243-join        
        JumpTrue     -print-boolean-3244-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3244-join  
        Label        -print-boolean-3244-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3244-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3245-arg1        
        PushF        8.800000                  
        PushF        9.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3245-arg2        
        PushF        9.900000                  
        Label        -compare-3245-sub         
        FSubtract                              
        JumpFPos     -compare-3245-true        
        Jump         -compare-3245-false       
        Label        -compare-3245-true        
        PushI        1                         
        Jump         -compare-3245-join        
        Label        -compare-3245-false       
        PushI        0                         
        Jump         -compare-3245-join        
        Label        -compare-3245-join        
        JumpTrue     -print-boolean-3246-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3246-join  
        Label        -print-boolean-3246-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3246-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3247-arg1        
        PushF        4.800000                  
        PushF        2.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3247-arg2        
        PushF        7.000000                  
        Label        -compare-3247-sub         
        FSubtract                              
        JumpFPos     -compare-3247-true        
        Jump         -compare-3247-false       
        Label        -compare-3247-true        
        PushI        1                         
        Jump         -compare-3247-join        
        Label        -compare-3247-false       
        PushI        0                         
        Jump         -compare-3247-join        
        Label        -compare-3247-join        
        JumpTrue     -print-boolean-3248-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3248-join  
        Label        -print-boolean-3248-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3248-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3249-arg1        
        PushF        4.600000                  
        PushF        4.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3249-arg2        
        PushF        1.400000                  
        Label        -compare-3249-sub         
        FSubtract                              
        JumpFPos     -compare-3249-true        
        Jump         -compare-3249-false       
        Label        -compare-3249-true        
        PushI        1                         
        Jump         -compare-3249-join        
        Label        -compare-3249-false       
        PushI        0                         
        Jump         -compare-3249-join        
        Label        -compare-3249-join        
        JumpTrue     -print-boolean-3250-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3250-join  
        Label        -print-boolean-3250-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3250-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3251-arg1        
        PushF        8.500000                  
        PushF        1.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3251-arg2        
        PushF        5.100000                  
        Label        -compare-3251-sub         
        FSubtract                              
        JumpFPos     -compare-3251-true        
        Jump         -compare-3251-false       
        Label        -compare-3251-true        
        PushI        1                         
        Jump         -compare-3251-join        
        Label        -compare-3251-false       
        PushI        0                         
        Jump         -compare-3251-join        
        Label        -compare-3251-join        
        JumpTrue     -print-boolean-3252-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3252-join  
        Label        -print-boolean-3252-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3252-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3253-arg1        
        PushF        6.000000                  
        PushF        2.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3253-arg2        
        PushF        2.600000                  
        Label        -compare-3253-sub         
        FSubtract                              
        JumpFPos     -compare-3253-true        
        Jump         -compare-3253-false       
        Label        -compare-3253-true        
        PushI        1                         
        Jump         -compare-3253-join        
        Label        -compare-3253-false       
        PushI        0                         
        Jump         -compare-3253-join        
        Label        -compare-3253-join        
        JumpTrue     -print-boolean-3254-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3254-join  
        Label        -print-boolean-3254-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3254-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3255-arg1        
        PushF        4.800000                  
        PushF        9.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3255-arg2        
        PushF        3.100000                  
        Label        -compare-3255-sub         
        FSubtract                              
        JumpFPos     -compare-3255-true        
        Jump         -compare-3255-false       
        Label        -compare-3255-true        
        PushI        1                         
        Jump         -compare-3255-join        
        Label        -compare-3255-false       
        PushI        0                         
        Jump         -compare-3255-join        
        Label        -compare-3255-join        
        JumpTrue     -print-boolean-3256-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3256-join  
        Label        -print-boolean-3256-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3256-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3257-arg1        
        PushF        9.600000                  
        PushF        5.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3257-arg2        
        PushF        8.000000                  
        Label        -compare-3257-sub         
        FSubtract                              
        JumpFPos     -compare-3257-true        
        Jump         -compare-3257-false       
        Label        -compare-3257-true        
        PushI        1                         
        Jump         -compare-3257-join        
        Label        -compare-3257-false       
        PushI        0                         
        Jump         -compare-3257-join        
        Label        -compare-3257-join        
        JumpTrue     -print-boolean-3258-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3258-join  
        Label        -print-boolean-3258-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3258-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3259-arg1        
        PushF        9.000000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3259-arg2        
        PushF        4.200000                  
        Label        -compare-3259-sub         
        FSubtract                              
        JumpFPos     -compare-3259-true        
        Jump         -compare-3259-false       
        Label        -compare-3259-true        
        PushI        1                         
        Jump         -compare-3259-join        
        Label        -compare-3259-false       
        PushI        0                         
        Jump         -compare-3259-join        
        Label        -compare-3259-join        
        JumpTrue     -print-boolean-3260-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3260-join  
        Label        -print-boolean-3260-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3260-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3261-arg1        
        PushF        2.000000                  
        PushF        3.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3261-arg2        
        PushF        4.600000                  
        Label        -compare-3261-sub         
        FSubtract                              
        JumpFPos     -compare-3261-true        
        Jump         -compare-3261-false       
        Label        -compare-3261-true        
        PushI        1                         
        Jump         -compare-3261-join        
        Label        -compare-3261-false       
        PushI        0                         
        Jump         -compare-3261-join        
        Label        -compare-3261-join        
        JumpTrue     -print-boolean-3262-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3262-join  
        Label        -print-boolean-3262-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3262-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3263-arg1        
        PushF        4.200000                  
        PushF        5.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3263-arg2        
        PushF        8.800000                  
        Label        -compare-3263-sub         
        FSubtract                              
        JumpFPos     -compare-3263-true        
        Jump         -compare-3263-false       
        Label        -compare-3263-true        
        PushI        1                         
        Jump         -compare-3263-join        
        Label        -compare-3263-false       
        PushI        0                         
        Jump         -compare-3263-join        
        Label        -compare-3263-join        
        JumpTrue     -print-boolean-3264-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3264-join  
        Label        -print-boolean-3264-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3264-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3265-arg1        
        PushF        2.200000                  
        Label        -compare-3265-arg2        
        PushF        8.200000                  
        PushF        2.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3265-sub         
        FSubtract                              
        JumpFPos     -compare-3265-true        
        Jump         -compare-3265-false       
        Label        -compare-3265-true        
        PushI        1                         
        Jump         -compare-3265-join        
        Label        -compare-3265-false       
        PushI        0                         
        Jump         -compare-3265-join        
        Label        -compare-3265-join        
        JumpTrue     -print-boolean-3266-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3266-join  
        Label        -print-boolean-3266-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3266-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3267-arg1        
        PushF        8.700000                  
        Label        -compare-3267-arg2        
        PushF        5.400000                  
        PushF        8.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3267-sub         
        FSubtract                              
        JumpFPos     -compare-3267-true        
        Jump         -compare-3267-false       
        Label        -compare-3267-true        
        PushI        1                         
        Jump         -compare-3267-join        
        Label        -compare-3267-false       
        PushI        0                         
        Jump         -compare-3267-join        
        Label        -compare-3267-join        
        JumpTrue     -print-boolean-3268-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3268-join  
        Label        -print-boolean-3268-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3268-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3269-arg1        
        PushF        3.000000                  
        Label        -compare-3269-arg2        
        PushF        3.200000                  
        PushF        7.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3269-sub         
        FSubtract                              
        JumpFPos     -compare-3269-true        
        Jump         -compare-3269-false       
        Label        -compare-3269-true        
        PushI        1                         
        Jump         -compare-3269-join        
        Label        -compare-3269-false       
        PushI        0                         
        Jump         -compare-3269-join        
        Label        -compare-3269-join        
        JumpTrue     -print-boolean-3270-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3270-join  
        Label        -print-boolean-3270-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3270-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3271-arg1        
        PushF        9.100000                  
        Label        -compare-3271-arg2        
        PushF        8.100000                  
        PushF        7.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3271-sub         
        FSubtract                              
        JumpFPos     -compare-3271-true        
        Jump         -compare-3271-false       
        Label        -compare-3271-true        
        PushI        1                         
        Jump         -compare-3271-join        
        Label        -compare-3271-false       
        PushI        0                         
        Jump         -compare-3271-join        
        Label        -compare-3271-join        
        JumpTrue     -print-boolean-3272-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3272-join  
        Label        -print-boolean-3272-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3272-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3273-arg1        
        PushF        4.000000                  
        Label        -compare-3273-arg2        
        PushF        1.300000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3273-sub         
        FSubtract                              
        JumpFPos     -compare-3273-true        
        Jump         -compare-3273-false       
        Label        -compare-3273-true        
        PushI        1                         
        Jump         -compare-3273-join        
        Label        -compare-3273-false       
        PushI        0                         
        Jump         -compare-3273-join        
        Label        -compare-3273-join        
        JumpTrue     -print-boolean-3274-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3274-join  
        Label        -print-boolean-3274-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3274-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3275-arg1        
        PushF        8.400000                  
        Label        -compare-3275-arg2        
        PushF        1.400000                  
        PushF        6.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3275-sub         
        FSubtract                              
        JumpFPos     -compare-3275-true        
        Jump         -compare-3275-false       
        Label        -compare-3275-true        
        PushI        1                         
        Jump         -compare-3275-join        
        Label        -compare-3275-false       
        PushI        0                         
        Jump         -compare-3275-join        
        Label        -compare-3275-join        
        JumpTrue     -print-boolean-3276-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3276-join  
        Label        -print-boolean-3276-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3276-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3277-arg1        
        PushF        3.300000                  
        Label        -compare-3277-arg2        
        PushF        4.300000                  
        PushF        7.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3277-sub         
        FSubtract                              
        JumpFPos     -compare-3277-true        
        Jump         -compare-3277-false       
        Label        -compare-3277-true        
        PushI        1                         
        Jump         -compare-3277-join        
        Label        -compare-3277-false       
        PushI        0                         
        Jump         -compare-3277-join        
        Label        -compare-3277-join        
        JumpTrue     -print-boolean-3278-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3278-join  
        Label        -print-boolean-3278-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3278-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3279-arg1        
        PushF        4.700000                  
        Label        -compare-3279-arg2        
        PushF        8.100000                  
        PushF        5.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3279-sub         
        FSubtract                              
        JumpFPos     -compare-3279-true        
        Jump         -compare-3279-false       
        Label        -compare-3279-true        
        PushI        1                         
        Jump         -compare-3279-join        
        Label        -compare-3279-false       
        PushI        0                         
        Jump         -compare-3279-join        
        Label        -compare-3279-join        
        JumpTrue     -print-boolean-3280-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3280-join  
        Label        -print-boolean-3280-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3280-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3281-arg1        
        PushF        4.300000                  
        Label        -compare-3281-arg2        
        PushF        5.100000                  
        PushF        4.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3281-sub         
        FSubtract                              
        JumpFPos     -compare-3281-true        
        Jump         -compare-3281-false       
        Label        -compare-3281-true        
        PushI        1                         
        Jump         -compare-3281-join        
        Label        -compare-3281-false       
        PushI        0                         
        Jump         -compare-3281-join        
        Label        -compare-3281-join        
        JumpTrue     -print-boolean-3282-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3282-join  
        Label        -print-boolean-3282-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3282-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3283-arg1        
        PushF        1.700000                  
        Label        -compare-3283-arg2        
        PushF        1.900000                  
        PushF        9.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3283-sub         
        FSubtract                              
        JumpFPos     -compare-3283-true        
        Jump         -compare-3283-false       
        Label        -compare-3283-true        
        PushI        1                         
        Jump         -compare-3283-join        
        Label        -compare-3283-false       
        PushI        0                         
        Jump         -compare-3283-join        
        Label        -compare-3283-join        
        JumpTrue     -print-boolean-3284-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3284-join  
        Label        -print-boolean-3284-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3284-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3285-arg1        
        PushF        2.500000                  
        Label        -compare-3285-arg2        
        PushF        1.900000                  
        PushF        9.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3285-sub         
        FSubtract                              
        JumpFPos     -compare-3285-true        
        Jump         -compare-3285-false       
        Label        -compare-3285-true        
        PushI        1                         
        Jump         -compare-3285-join        
        Label        -compare-3285-false       
        PushI        0                         
        Jump         -compare-3285-join        
        Label        -compare-3285-join        
        JumpTrue     -print-boolean-3286-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3286-join  
        Label        -print-boolean-3286-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3286-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3287-arg1        
        PushF        1.700000                  
        Label        -compare-3287-arg2        
        PushF        2.100000                  
        PushF        1.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3287-sub         
        FSubtract                              
        JumpFPos     -compare-3287-true        
        Jump         -compare-3287-false       
        Label        -compare-3287-true        
        PushI        1                         
        Jump         -compare-3287-join        
        Label        -compare-3287-false       
        PushI        0                         
        Jump         -compare-3287-join        
        Label        -compare-3287-join        
        JumpTrue     -print-boolean-3288-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3288-join  
        Label        -print-boolean-3288-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3288-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3289-arg1        
        PushF        3.600000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3289-arg2        
        PushF        2.300000                  
        PushF        3.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3289-sub         
        FSubtract                              
        JumpFPos     -compare-3289-true        
        Jump         -compare-3289-false       
        Label        -compare-3289-true        
        PushI        1                         
        Jump         -compare-3289-join        
        Label        -compare-3289-false       
        PushI        0                         
        Jump         -compare-3289-join        
        Label        -compare-3289-join        
        JumpTrue     -print-boolean-3290-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3290-join  
        Label        -print-boolean-3290-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3290-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3291-arg1        
        PushF        8.400000                  
        PushF        7.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3291-arg2        
        PushF        6.900000                  
        PushF        3.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3291-sub         
        FSubtract                              
        JumpFPos     -compare-3291-true        
        Jump         -compare-3291-false       
        Label        -compare-3291-true        
        PushI        1                         
        Jump         -compare-3291-join        
        Label        -compare-3291-false       
        PushI        0                         
        Jump         -compare-3291-join        
        Label        -compare-3291-join        
        JumpTrue     -print-boolean-3292-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3292-join  
        Label        -print-boolean-3292-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3292-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3293-arg1        
        PushF        2.000000                  
        PushF        8.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3293-arg2        
        PushF        9.900000                  
        PushF        6.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3293-sub         
        FSubtract                              
        JumpFPos     -compare-3293-true        
        Jump         -compare-3293-false       
        Label        -compare-3293-true        
        PushI        1                         
        Jump         -compare-3293-join        
        Label        -compare-3293-false       
        PushI        0                         
        Jump         -compare-3293-join        
        Label        -compare-3293-join        
        JumpTrue     -print-boolean-3294-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3294-join  
        Label        -print-boolean-3294-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3294-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3295-arg1        
        PushF        1.500000                  
        PushF        2.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3295-arg2        
        PushF        7.800000                  
        PushF        9.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3295-sub         
        FSubtract                              
        JumpFPos     -compare-3295-true        
        Jump         -compare-3295-false       
        Label        -compare-3295-true        
        PushI        1                         
        Jump         -compare-3295-join        
        Label        -compare-3295-false       
        PushI        0                         
        Jump         -compare-3295-join        
        Label        -compare-3295-join        
        JumpTrue     -print-boolean-3296-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3296-join  
        Label        -print-boolean-3296-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3296-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3297-arg1        
        PushF        6.000000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3297-arg2        
        PushF        6.400000                  
        PushF        8.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3297-sub         
        FSubtract                              
        JumpFPos     -compare-3297-true        
        Jump         -compare-3297-false       
        Label        -compare-3297-true        
        PushI        1                         
        Jump         -compare-3297-join        
        Label        -compare-3297-false       
        PushI        0                         
        Jump         -compare-3297-join        
        Label        -compare-3297-join        
        JumpTrue     -print-boolean-3298-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3298-join  
        Label        -print-boolean-3298-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3298-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3299-arg1        
        PushF        8.000000                  
        PushF        6.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3299-arg2        
        PushF        3.700000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3299-sub         
        FSubtract                              
        JumpFPos     -compare-3299-true        
        Jump         -compare-3299-false       
        Label        -compare-3299-true        
        PushI        1                         
        Jump         -compare-3299-join        
        Label        -compare-3299-false       
        PushI        0                         
        Jump         -compare-3299-join        
        Label        -compare-3299-join        
        JumpTrue     -print-boolean-3300-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3300-join  
        Label        -print-boolean-3300-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3300-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3301-arg1        
        PushF        7.900000                  
        PushF        7.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3301-arg2        
        PushF        3.100000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3301-sub         
        FSubtract                              
        JumpFPos     -compare-3301-true        
        Jump         -compare-3301-false       
        Label        -compare-3301-true        
        PushI        1                         
        Jump         -compare-3301-join        
        Label        -compare-3301-false       
        PushI        0                         
        Jump         -compare-3301-join        
        Label        -compare-3301-join        
        JumpTrue     -print-boolean-3302-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3302-join  
        Label        -print-boolean-3302-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3302-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3303-arg1        
        PushF        6.300000                  
        PushF        9.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3303-arg2        
        PushF        8.700000                  
        PushF        4.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3303-sub         
        FSubtract                              
        JumpFPos     -compare-3303-true        
        Jump         -compare-3303-false       
        Label        -compare-3303-true        
        PushI        1                         
        Jump         -compare-3303-join        
        Label        -compare-3303-false       
        PushI        0                         
        Jump         -compare-3303-join        
        Label        -compare-3303-join        
        JumpTrue     -print-boolean-3304-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3304-join  
        Label        -print-boolean-3304-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3304-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3305-arg1        
        PushF        3.100000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3305-arg2        
        PushF        9.200000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3305-sub         
        FSubtract                              
        JumpFPos     -compare-3305-true        
        Jump         -compare-3305-false       
        Label        -compare-3305-true        
        PushI        1                         
        Jump         -compare-3305-join        
        Label        -compare-3305-false       
        PushI        0                         
        Jump         -compare-3305-join        
        Label        -compare-3305-join        
        JumpTrue     -print-boolean-3306-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3306-join  
        Label        -print-boolean-3306-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3306-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3307-arg1        
        PushF        5.400000                  
        PushF        2.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3307-arg2        
        PushF        6.000000                  
        PushF        2.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3307-sub         
        FSubtract                              
        JumpFPos     -compare-3307-true        
        Jump         -compare-3307-false       
        Label        -compare-3307-true        
        PushI        1                         
        Jump         -compare-3307-join        
        Label        -compare-3307-false       
        PushI        0                         
        Jump         -compare-3307-join        
        Label        -compare-3307-join        
        JumpTrue     -print-boolean-3308-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3308-join  
        Label        -print-boolean-3308-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3308-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3309-arg1        
        PushF        6.200000                  
        PushF        1.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3309-arg2        
        PushF        3.900000                  
        PushF        3.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3309-sub         
        FSubtract                              
        JumpFPos     -compare-3309-true        
        Jump         -compare-3309-false       
        Label        -compare-3309-true        
        PushI        1                         
        Jump         -compare-3309-join        
        Label        -compare-3309-false       
        PushI        0                         
        Jump         -compare-3309-join        
        Label        -compare-3309-join        
        JumpTrue     -print-boolean-3310-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3310-join  
        Label        -print-boolean-3310-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3310-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3311-arg1        
        PushF        4.700000                  
        PushF        1.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3311-arg2        
        PushF        2.200000                  
        PushF        5.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3311-sub         
        FSubtract                              
        JumpFPos     -compare-3311-true        
        Jump         -compare-3311-false       
        Label        -compare-3311-true        
        PushI        1                         
        Jump         -compare-3311-join        
        Label        -compare-3311-false       
        PushI        0                         
        Jump         -compare-3311-join        
        Label        -compare-3311-join        
        JumpTrue     -print-boolean-3312-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3312-join  
        Label        -print-boolean-3312-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3312-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
