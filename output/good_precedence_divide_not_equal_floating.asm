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
        Label        -compare-3830-arg1        
        PushF        5.200000                  
        PushF        9.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3830-arg2        
        PushF        2.900000                  
        Label        -compare-3830-sub         
        FSubtract                              
        JumpFZero    -compare-3830-false       
        Jump         -compare-3830-true        
        Label        -compare-3830-true        
        PushI        1                         
        Jump         -compare-3830-join        
        Label        -compare-3830-false       
        PushI        0                         
        Jump         -compare-3830-join        
        Label        -compare-3830-join        
        JumpTrue     -print-boolean-3831-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3831-join  
        Label        -print-boolean-3831-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3831-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3832-arg1        
        PushF        9.400000                  
        PushF        6.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3832-arg2        
        PushF        2.800000                  
        Label        -compare-3832-sub         
        FSubtract                              
        JumpFZero    -compare-3832-false       
        Jump         -compare-3832-true        
        Label        -compare-3832-true        
        PushI        1                         
        Jump         -compare-3832-join        
        Label        -compare-3832-false       
        PushI        0                         
        Jump         -compare-3832-join        
        Label        -compare-3832-join        
        JumpTrue     -print-boolean-3833-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3833-join  
        Label        -print-boolean-3833-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3833-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3834-arg1        
        PushF        2.200000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3834-arg2        
        PushF        3.700000                  
        Label        -compare-3834-sub         
        FSubtract                              
        JumpFZero    -compare-3834-false       
        Jump         -compare-3834-true        
        Label        -compare-3834-true        
        PushI        1                         
        Jump         -compare-3834-join        
        Label        -compare-3834-false       
        PushI        0                         
        Jump         -compare-3834-join        
        Label        -compare-3834-join        
        JumpTrue     -print-boolean-3835-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3835-join  
        Label        -print-boolean-3835-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3835-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3836-arg1        
        PushF        3.300000                  
        PushF        5.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3836-arg2        
        PushF        5.900000                  
        Label        -compare-3836-sub         
        FSubtract                              
        JumpFZero    -compare-3836-false       
        Jump         -compare-3836-true        
        Label        -compare-3836-true        
        PushI        1                         
        Jump         -compare-3836-join        
        Label        -compare-3836-false       
        PushI        0                         
        Jump         -compare-3836-join        
        Label        -compare-3836-join        
        JumpTrue     -print-boolean-3837-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3837-join  
        Label        -print-boolean-3837-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3837-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3838-arg1        
        PushF        9.000000                  
        PushF        7.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3838-arg2        
        PushF        7.000000                  
        Label        -compare-3838-sub         
        FSubtract                              
        JumpFZero    -compare-3838-false       
        Jump         -compare-3838-true        
        Label        -compare-3838-true        
        PushI        1                         
        Jump         -compare-3838-join        
        Label        -compare-3838-false       
        PushI        0                         
        Jump         -compare-3838-join        
        Label        -compare-3838-join        
        JumpTrue     -print-boolean-3839-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3839-join  
        Label        -print-boolean-3839-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3839-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3840-arg1        
        PushF        8.600000                  
        PushF        4.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3840-arg2        
        PushF        4.800000                  
        Label        -compare-3840-sub         
        FSubtract                              
        JumpFZero    -compare-3840-false       
        Jump         -compare-3840-true        
        Label        -compare-3840-true        
        PushI        1                         
        Jump         -compare-3840-join        
        Label        -compare-3840-false       
        PushI        0                         
        Jump         -compare-3840-join        
        Label        -compare-3840-join        
        JumpTrue     -print-boolean-3841-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3841-join  
        Label        -print-boolean-3841-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3841-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3842-arg1        
        PushF        7.600000                  
        PushF        4.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3842-arg2        
        PushF        2.400000                  
        Label        -compare-3842-sub         
        FSubtract                              
        JumpFZero    -compare-3842-false       
        Jump         -compare-3842-true        
        Label        -compare-3842-true        
        PushI        1                         
        Jump         -compare-3842-join        
        Label        -compare-3842-false       
        PushI        0                         
        Jump         -compare-3842-join        
        Label        -compare-3842-join        
        JumpTrue     -print-boolean-3843-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3843-join  
        Label        -print-boolean-3843-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3843-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3844-arg1        
        PushF        6.700000                  
        PushF        1.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3844-arg2        
        PushF        3.500000                  
        Label        -compare-3844-sub         
        FSubtract                              
        JumpFZero    -compare-3844-false       
        Jump         -compare-3844-true        
        Label        -compare-3844-true        
        PushI        1                         
        Jump         -compare-3844-join        
        Label        -compare-3844-false       
        PushI        0                         
        Jump         -compare-3844-join        
        Label        -compare-3844-join        
        JumpTrue     -print-boolean-3845-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3845-join  
        Label        -print-boolean-3845-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3845-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3846-arg1        
        PushF        9.300000                  
        PushF        2.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3846-arg2        
        PushF        9.500000                  
        Label        -compare-3846-sub         
        FSubtract                              
        JumpFZero    -compare-3846-false       
        Jump         -compare-3846-true        
        Label        -compare-3846-true        
        PushI        1                         
        Jump         -compare-3846-join        
        Label        -compare-3846-false       
        PushI        0                         
        Jump         -compare-3846-join        
        Label        -compare-3846-join        
        JumpTrue     -print-boolean-3847-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3847-join  
        Label        -print-boolean-3847-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3847-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3848-arg1        
        PushF        2.800000                  
        PushF        3.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3848-arg2        
        PushF        6.200000                  
        Label        -compare-3848-sub         
        FSubtract                              
        JumpFZero    -compare-3848-false       
        Jump         -compare-3848-true        
        Label        -compare-3848-true        
        PushI        1                         
        Jump         -compare-3848-join        
        Label        -compare-3848-false       
        PushI        0                         
        Jump         -compare-3848-join        
        Label        -compare-3848-join        
        JumpTrue     -print-boolean-3849-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3849-join  
        Label        -print-boolean-3849-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3849-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3850-arg1        
        PushF        9.100000                  
        PushF        5.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3850-arg2        
        PushF        1.300000                  
        Label        -compare-3850-sub         
        FSubtract                              
        JumpFZero    -compare-3850-false       
        Jump         -compare-3850-true        
        Label        -compare-3850-true        
        PushI        1                         
        Jump         -compare-3850-join        
        Label        -compare-3850-false       
        PushI        0                         
        Jump         -compare-3850-join        
        Label        -compare-3850-join        
        JumpTrue     -print-boolean-3851-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3851-join  
        Label        -print-boolean-3851-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3851-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3852-arg1        
        PushF        3.700000                  
        PushF        9.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3852-arg2        
        PushF        9.600000                  
        Label        -compare-3852-sub         
        FSubtract                              
        JumpFZero    -compare-3852-false       
        Jump         -compare-3852-true        
        Label        -compare-3852-true        
        PushI        1                         
        Jump         -compare-3852-join        
        Label        -compare-3852-false       
        PushI        0                         
        Jump         -compare-3852-join        
        Label        -compare-3852-join        
        JumpTrue     -print-boolean-3853-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3853-join  
        Label        -print-boolean-3853-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3853-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3854-arg1        
        PushF        9.500000                  
        Label        -compare-3854-arg2        
        PushF        6.600000                  
        PushF        8.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3854-sub         
        FSubtract                              
        JumpFZero    -compare-3854-false       
        Jump         -compare-3854-true        
        Label        -compare-3854-true        
        PushI        1                         
        Jump         -compare-3854-join        
        Label        -compare-3854-false       
        PushI        0                         
        Jump         -compare-3854-join        
        Label        -compare-3854-join        
        JumpTrue     -print-boolean-3855-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3855-join  
        Label        -print-boolean-3855-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3855-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3856-arg1        
        PushF        1.200000                  
        Label        -compare-3856-arg2        
        PushF        8.900000                  
        PushF        2.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3856-sub         
        FSubtract                              
        JumpFZero    -compare-3856-false       
        Jump         -compare-3856-true        
        Label        -compare-3856-true        
        PushI        1                         
        Jump         -compare-3856-join        
        Label        -compare-3856-false       
        PushI        0                         
        Jump         -compare-3856-join        
        Label        -compare-3856-join        
        JumpTrue     -print-boolean-3857-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3857-join  
        Label        -print-boolean-3857-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3857-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3858-arg1        
        PushF        9.500000                  
        Label        -compare-3858-arg2        
        PushF        1.800000                  
        PushF        3.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3858-sub         
        FSubtract                              
        JumpFZero    -compare-3858-false       
        Jump         -compare-3858-true        
        Label        -compare-3858-true        
        PushI        1                         
        Jump         -compare-3858-join        
        Label        -compare-3858-false       
        PushI        0                         
        Jump         -compare-3858-join        
        Label        -compare-3858-join        
        JumpTrue     -print-boolean-3859-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3859-join  
        Label        -print-boolean-3859-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3859-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3860-arg1        
        PushF        7.800000                  
        Label        -compare-3860-arg2        
        PushF        4.800000                  
        PushF        9.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3860-sub         
        FSubtract                              
        JumpFZero    -compare-3860-false       
        Jump         -compare-3860-true        
        Label        -compare-3860-true        
        PushI        1                         
        Jump         -compare-3860-join        
        Label        -compare-3860-false       
        PushI        0                         
        Jump         -compare-3860-join        
        Label        -compare-3860-join        
        JumpTrue     -print-boolean-3861-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3861-join  
        Label        -print-boolean-3861-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3861-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3862-arg1        
        PushF        4.000000                  
        Label        -compare-3862-arg2        
        PushF        5.000000                  
        PushF        2.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3862-sub         
        FSubtract                              
        JumpFZero    -compare-3862-false       
        Jump         -compare-3862-true        
        Label        -compare-3862-true        
        PushI        1                         
        Jump         -compare-3862-join        
        Label        -compare-3862-false       
        PushI        0                         
        Jump         -compare-3862-join        
        Label        -compare-3862-join        
        JumpTrue     -print-boolean-3863-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3863-join  
        Label        -print-boolean-3863-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3863-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3864-arg1        
        PushF        2.500000                  
        Label        -compare-3864-arg2        
        PushF        9.700000                  
        PushF        3.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3864-sub         
        FSubtract                              
        JumpFZero    -compare-3864-false       
        Jump         -compare-3864-true        
        Label        -compare-3864-true        
        PushI        1                         
        Jump         -compare-3864-join        
        Label        -compare-3864-false       
        PushI        0                         
        Jump         -compare-3864-join        
        Label        -compare-3864-join        
        JumpTrue     -print-boolean-3865-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3865-join  
        Label        -print-boolean-3865-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3865-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3866-arg1        
        PushF        5.300000                  
        Label        -compare-3866-arg2        
        PushF        8.400000                  
        PushF        1.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3866-sub         
        FSubtract                              
        JumpFZero    -compare-3866-false       
        Jump         -compare-3866-true        
        Label        -compare-3866-true        
        PushI        1                         
        Jump         -compare-3866-join        
        Label        -compare-3866-false       
        PushI        0                         
        Jump         -compare-3866-join        
        Label        -compare-3866-join        
        JumpTrue     -print-boolean-3867-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3867-join  
        Label        -print-boolean-3867-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3867-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3868-arg1        
        PushF        8.600000                  
        Label        -compare-3868-arg2        
        PushF        8.700000                  
        PushF        5.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3868-sub         
        FSubtract                              
        JumpFZero    -compare-3868-false       
        Jump         -compare-3868-true        
        Label        -compare-3868-true        
        PushI        1                         
        Jump         -compare-3868-join        
        Label        -compare-3868-false       
        PushI        0                         
        Jump         -compare-3868-join        
        Label        -compare-3868-join        
        JumpTrue     -print-boolean-3869-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3869-join  
        Label        -print-boolean-3869-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3869-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3870-arg1        
        PushF        8.200000                  
        Label        -compare-3870-arg2        
        PushF        1.200000                  
        PushF        1.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3870-sub         
        FSubtract                              
        JumpFZero    -compare-3870-false       
        Jump         -compare-3870-true        
        Label        -compare-3870-true        
        PushI        1                         
        Jump         -compare-3870-join        
        Label        -compare-3870-false       
        PushI        0                         
        Jump         -compare-3870-join        
        Label        -compare-3870-join        
        JumpTrue     -print-boolean-3871-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3871-join  
        Label        -print-boolean-3871-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3871-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3872-arg1        
        PushF        2.200000                  
        Label        -compare-3872-arg2        
        PushF        4.500000                  
        PushF        5.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3872-sub         
        FSubtract                              
        JumpFZero    -compare-3872-false       
        Jump         -compare-3872-true        
        Label        -compare-3872-true        
        PushI        1                         
        Jump         -compare-3872-join        
        Label        -compare-3872-false       
        PushI        0                         
        Jump         -compare-3872-join        
        Label        -compare-3872-join        
        JumpTrue     -print-boolean-3873-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3873-join  
        Label        -print-boolean-3873-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3873-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3874-arg1        
        PushF        9.700000                  
        Label        -compare-3874-arg2        
        PushF        1.800000                  
        PushF        1.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3874-sub         
        FSubtract                              
        JumpFZero    -compare-3874-false       
        Jump         -compare-3874-true        
        Label        -compare-3874-true        
        PushI        1                         
        Jump         -compare-3874-join        
        Label        -compare-3874-false       
        PushI        0                         
        Jump         -compare-3874-join        
        Label        -compare-3874-join        
        JumpTrue     -print-boolean-3875-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3875-join  
        Label        -print-boolean-3875-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3875-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3876-arg1        
        PushF        6.000000                  
        Label        -compare-3876-arg2        
        PushF        9.300000                  
        PushF        8.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3876-sub         
        FSubtract                              
        JumpFZero    -compare-3876-false       
        Jump         -compare-3876-true        
        Label        -compare-3876-true        
        PushI        1                         
        Jump         -compare-3876-join        
        Label        -compare-3876-false       
        PushI        0                         
        Jump         -compare-3876-join        
        Label        -compare-3876-join        
        JumpTrue     -print-boolean-3877-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3877-join  
        Label        -print-boolean-3877-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3877-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3878-arg1        
        PushF        7.900000                  
        PushF        7.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3878-arg2        
        PushF        4.800000                  
        PushF        9.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3878-sub         
        FSubtract                              
        JumpFZero    -compare-3878-false       
        Jump         -compare-3878-true        
        Label        -compare-3878-true        
        PushI        1                         
        Jump         -compare-3878-join        
        Label        -compare-3878-false       
        PushI        0                         
        Jump         -compare-3878-join        
        Label        -compare-3878-join        
        JumpTrue     -print-boolean-3879-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3879-join  
        Label        -print-boolean-3879-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3879-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3880-arg1        
        PushF        3.700000                  
        PushF        7.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3880-arg2        
        PushF        1.300000                  
        PushF        6.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3880-sub         
        FSubtract                              
        JumpFZero    -compare-3880-false       
        Jump         -compare-3880-true        
        Label        -compare-3880-true        
        PushI        1                         
        Jump         -compare-3880-join        
        Label        -compare-3880-false       
        PushI        0                         
        Jump         -compare-3880-join        
        Label        -compare-3880-join        
        JumpTrue     -print-boolean-3881-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3881-join  
        Label        -print-boolean-3881-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3881-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3882-arg1        
        PushF        3.300000                  
        PushF        7.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3882-arg2        
        PushF        6.500000                  
        PushF        8.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3882-sub         
        FSubtract                              
        JumpFZero    -compare-3882-false       
        Jump         -compare-3882-true        
        Label        -compare-3882-true        
        PushI        1                         
        Jump         -compare-3882-join        
        Label        -compare-3882-false       
        PushI        0                         
        Jump         -compare-3882-join        
        Label        -compare-3882-join        
        JumpTrue     -print-boolean-3883-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3883-join  
        Label        -print-boolean-3883-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3883-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3884-arg1        
        PushF        1.800000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3884-arg2        
        PushF        6.100000                  
        PushF        6.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3884-sub         
        FSubtract                              
        JumpFZero    -compare-3884-false       
        Jump         -compare-3884-true        
        Label        -compare-3884-true        
        PushI        1                         
        Jump         -compare-3884-join        
        Label        -compare-3884-false       
        PushI        0                         
        Jump         -compare-3884-join        
        Label        -compare-3884-join        
        JumpTrue     -print-boolean-3885-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3885-join  
        Label        -print-boolean-3885-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3885-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3886-arg1        
        PushF        3.000000                  
        PushF        3.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3886-arg2        
        PushF        1.400000                  
        PushF        1.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3886-sub         
        FSubtract                              
        JumpFZero    -compare-3886-false       
        Jump         -compare-3886-true        
        Label        -compare-3886-true        
        PushI        1                         
        Jump         -compare-3886-join        
        Label        -compare-3886-false       
        PushI        0                         
        Jump         -compare-3886-join        
        Label        -compare-3886-join        
        JumpTrue     -print-boolean-3887-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3887-join  
        Label        -print-boolean-3887-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3887-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3888-arg1        
        PushF        2.600000                  
        PushF        4.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3888-arg2        
        PushF        2.500000                  
        PushF        7.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3888-sub         
        FSubtract                              
        JumpFZero    -compare-3888-false       
        Jump         -compare-3888-true        
        Label        -compare-3888-true        
        PushI        1                         
        Jump         -compare-3888-join        
        Label        -compare-3888-false       
        PushI        0                         
        Jump         -compare-3888-join        
        Label        -compare-3888-join        
        JumpTrue     -print-boolean-3889-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3889-join  
        Label        -print-boolean-3889-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3889-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3890-arg1        
        PushF        3.100000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3890-arg2        
        PushF        5.700000                  
        PushF        6.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3890-sub         
        FSubtract                              
        JumpFZero    -compare-3890-false       
        Jump         -compare-3890-true        
        Label        -compare-3890-true        
        PushI        1                         
        Jump         -compare-3890-join        
        Label        -compare-3890-false       
        PushI        0                         
        Jump         -compare-3890-join        
        Label        -compare-3890-join        
        JumpTrue     -print-boolean-3891-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3891-join  
        Label        -print-boolean-3891-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3891-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3892-arg1        
        PushF        1.800000                  
        PushF        5.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3892-arg2        
        PushF        8.500000                  
        PushF        7.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3892-sub         
        FSubtract                              
        JumpFZero    -compare-3892-false       
        Jump         -compare-3892-true        
        Label        -compare-3892-true        
        PushI        1                         
        Jump         -compare-3892-join        
        Label        -compare-3892-false       
        PushI        0                         
        Jump         -compare-3892-join        
        Label        -compare-3892-join        
        JumpTrue     -print-boolean-3893-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3893-join  
        Label        -print-boolean-3893-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3893-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3894-arg1        
        PushF        4.400000                  
        PushF        9.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3894-arg2        
        PushF        6.400000                  
        PushF        7.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3894-sub         
        FSubtract                              
        JumpFZero    -compare-3894-false       
        Jump         -compare-3894-true        
        Label        -compare-3894-true        
        PushI        1                         
        Jump         -compare-3894-join        
        Label        -compare-3894-false       
        PushI        0                         
        Jump         -compare-3894-join        
        Label        -compare-3894-join        
        JumpTrue     -print-boolean-3895-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3895-join  
        Label        -print-boolean-3895-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3895-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3896-arg1        
        PushF        8.000000                  
        PushF        6.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3896-arg2        
        PushF        7.100000                  
        PushF        8.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3896-sub         
        FSubtract                              
        JumpFZero    -compare-3896-false       
        Jump         -compare-3896-true        
        Label        -compare-3896-true        
        PushI        1                         
        Jump         -compare-3896-join        
        Label        -compare-3896-false       
        PushI        0                         
        Jump         -compare-3896-join        
        Label        -compare-3896-join        
        JumpTrue     -print-boolean-3897-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3897-join  
        Label        -print-boolean-3897-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3897-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3898-arg1        
        PushF        9.300000                  
        PushF        8.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3898-arg2        
        PushF        7.100000                  
        PushF        2.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3898-sub         
        FSubtract                              
        JumpFZero    -compare-3898-false       
        Jump         -compare-3898-true        
        Label        -compare-3898-true        
        PushI        1                         
        Jump         -compare-3898-join        
        Label        -compare-3898-false       
        PushI        0                         
        Jump         -compare-3898-join        
        Label        -compare-3898-join        
        JumpTrue     -print-boolean-3899-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3899-join  
        Label        -print-boolean-3899-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3899-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3900-arg1        
        PushF        1.800000                  
        PushF        4.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3900-arg2        
        PushF        6.400000                  
        PushF        6.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3900-sub         
        FSubtract                              
        JumpFZero    -compare-3900-false       
        Jump         -compare-3900-true        
        Label        -compare-3900-true        
        PushI        1                         
        Jump         -compare-3900-join        
        Label        -compare-3900-false       
        PushI        0                         
        Jump         -compare-3900-join        
        Label        -compare-3900-join        
        JumpTrue     -print-boolean-3901-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3901-join  
        Label        -print-boolean-3901-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3901-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
