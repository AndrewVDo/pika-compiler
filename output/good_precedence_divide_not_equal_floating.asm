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
        Label        -compare-3817-arg1        
        PushF        5.200000                  
        PushF        9.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3817-arg2        
        PushF        2.900000                  
        Label        -compare-3817-sub         
        FSubtract                              
        JumpFZero    -compare-3817-false       
        Jump         -compare-3817-true        
        Label        -compare-3817-true        
        PushI        1                         
        Jump         -compare-3817-join        
        Label        -compare-3817-false       
        PushI        0                         
        Jump         -compare-3817-join        
        Label        -compare-3817-join        
        JumpTrue     -print-boolean-3818-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3818-join  
        Label        -print-boolean-3818-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3818-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3819-arg1        
        PushF        9.400000                  
        PushF        6.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3819-arg2        
        PushF        2.800000                  
        Label        -compare-3819-sub         
        FSubtract                              
        JumpFZero    -compare-3819-false       
        Jump         -compare-3819-true        
        Label        -compare-3819-true        
        PushI        1                         
        Jump         -compare-3819-join        
        Label        -compare-3819-false       
        PushI        0                         
        Jump         -compare-3819-join        
        Label        -compare-3819-join        
        JumpTrue     -print-boolean-3820-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3820-join  
        Label        -print-boolean-3820-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3820-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3821-arg1        
        PushF        2.200000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3821-arg2        
        PushF        3.700000                  
        Label        -compare-3821-sub         
        FSubtract                              
        JumpFZero    -compare-3821-false       
        Jump         -compare-3821-true        
        Label        -compare-3821-true        
        PushI        1                         
        Jump         -compare-3821-join        
        Label        -compare-3821-false       
        PushI        0                         
        Jump         -compare-3821-join        
        Label        -compare-3821-join        
        JumpTrue     -print-boolean-3822-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3822-join  
        Label        -print-boolean-3822-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3822-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3823-arg1        
        PushF        3.300000                  
        PushF        5.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3823-arg2        
        PushF        5.900000                  
        Label        -compare-3823-sub         
        FSubtract                              
        JumpFZero    -compare-3823-false       
        Jump         -compare-3823-true        
        Label        -compare-3823-true        
        PushI        1                         
        Jump         -compare-3823-join        
        Label        -compare-3823-false       
        PushI        0                         
        Jump         -compare-3823-join        
        Label        -compare-3823-join        
        JumpTrue     -print-boolean-3824-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3824-join  
        Label        -print-boolean-3824-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3824-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3825-arg1        
        PushF        9.000000                  
        PushF        7.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3825-arg2        
        PushF        7.000000                  
        Label        -compare-3825-sub         
        FSubtract                              
        JumpFZero    -compare-3825-false       
        Jump         -compare-3825-true        
        Label        -compare-3825-true        
        PushI        1                         
        Jump         -compare-3825-join        
        Label        -compare-3825-false       
        PushI        0                         
        Jump         -compare-3825-join        
        Label        -compare-3825-join        
        JumpTrue     -print-boolean-3826-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3826-join  
        Label        -print-boolean-3826-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3826-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3827-arg1        
        PushF        8.600000                  
        PushF        4.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3827-arg2        
        PushF        4.800000                  
        Label        -compare-3827-sub         
        FSubtract                              
        JumpFZero    -compare-3827-false       
        Jump         -compare-3827-true        
        Label        -compare-3827-true        
        PushI        1                         
        Jump         -compare-3827-join        
        Label        -compare-3827-false       
        PushI        0                         
        Jump         -compare-3827-join        
        Label        -compare-3827-join        
        JumpTrue     -print-boolean-3828-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3828-join  
        Label        -print-boolean-3828-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3828-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3829-arg1        
        PushF        7.600000                  
        PushF        4.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3829-arg2        
        PushF        2.400000                  
        Label        -compare-3829-sub         
        FSubtract                              
        JumpFZero    -compare-3829-false       
        Jump         -compare-3829-true        
        Label        -compare-3829-true        
        PushI        1                         
        Jump         -compare-3829-join        
        Label        -compare-3829-false       
        PushI        0                         
        Jump         -compare-3829-join        
        Label        -compare-3829-join        
        JumpTrue     -print-boolean-3830-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3830-join  
        Label        -print-boolean-3830-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3830-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3831-arg1        
        PushF        6.700000                  
        PushF        1.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3831-arg2        
        PushF        3.500000                  
        Label        -compare-3831-sub         
        FSubtract                              
        JumpFZero    -compare-3831-false       
        Jump         -compare-3831-true        
        Label        -compare-3831-true        
        PushI        1                         
        Jump         -compare-3831-join        
        Label        -compare-3831-false       
        PushI        0                         
        Jump         -compare-3831-join        
        Label        -compare-3831-join        
        JumpTrue     -print-boolean-3832-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3832-join  
        Label        -print-boolean-3832-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3832-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3833-arg1        
        PushF        9.300000                  
        PushF        2.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3833-arg2        
        PushF        9.500000                  
        Label        -compare-3833-sub         
        FSubtract                              
        JumpFZero    -compare-3833-false       
        Jump         -compare-3833-true        
        Label        -compare-3833-true        
        PushI        1                         
        Jump         -compare-3833-join        
        Label        -compare-3833-false       
        PushI        0                         
        Jump         -compare-3833-join        
        Label        -compare-3833-join        
        JumpTrue     -print-boolean-3834-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3834-join  
        Label        -print-boolean-3834-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3834-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3835-arg1        
        PushF        2.800000                  
        PushF        3.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3835-arg2        
        PushF        6.200000                  
        Label        -compare-3835-sub         
        FSubtract                              
        JumpFZero    -compare-3835-false       
        Jump         -compare-3835-true        
        Label        -compare-3835-true        
        PushI        1                         
        Jump         -compare-3835-join        
        Label        -compare-3835-false       
        PushI        0                         
        Jump         -compare-3835-join        
        Label        -compare-3835-join        
        JumpTrue     -print-boolean-3836-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3836-join  
        Label        -print-boolean-3836-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3836-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3837-arg1        
        PushF        9.100000                  
        PushF        5.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3837-arg2        
        PushF        1.300000                  
        Label        -compare-3837-sub         
        FSubtract                              
        JumpFZero    -compare-3837-false       
        Jump         -compare-3837-true        
        Label        -compare-3837-true        
        PushI        1                         
        Jump         -compare-3837-join        
        Label        -compare-3837-false       
        PushI        0                         
        Jump         -compare-3837-join        
        Label        -compare-3837-join        
        JumpTrue     -print-boolean-3838-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3838-join  
        Label        -print-boolean-3838-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3838-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3839-arg1        
        PushF        3.700000                  
        PushF        9.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3839-arg2        
        PushF        9.600000                  
        Label        -compare-3839-sub         
        FSubtract                              
        JumpFZero    -compare-3839-false       
        Jump         -compare-3839-true        
        Label        -compare-3839-true        
        PushI        1                         
        Jump         -compare-3839-join        
        Label        -compare-3839-false       
        PushI        0                         
        Jump         -compare-3839-join        
        Label        -compare-3839-join        
        JumpTrue     -print-boolean-3840-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3840-join  
        Label        -print-boolean-3840-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3840-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3841-arg1        
        PushF        9.500000                  
        Label        -compare-3841-arg2        
        PushF        6.600000                  
        PushF        8.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3841-sub         
        FSubtract                              
        JumpFZero    -compare-3841-false       
        Jump         -compare-3841-true        
        Label        -compare-3841-true        
        PushI        1                         
        Jump         -compare-3841-join        
        Label        -compare-3841-false       
        PushI        0                         
        Jump         -compare-3841-join        
        Label        -compare-3841-join        
        JumpTrue     -print-boolean-3842-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3842-join  
        Label        -print-boolean-3842-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3842-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3843-arg1        
        PushF        1.200000                  
        Label        -compare-3843-arg2        
        PushF        8.900000                  
        PushF        2.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3843-sub         
        FSubtract                              
        JumpFZero    -compare-3843-false       
        Jump         -compare-3843-true        
        Label        -compare-3843-true        
        PushI        1                         
        Jump         -compare-3843-join        
        Label        -compare-3843-false       
        PushI        0                         
        Jump         -compare-3843-join        
        Label        -compare-3843-join        
        JumpTrue     -print-boolean-3844-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3844-join  
        Label        -print-boolean-3844-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3844-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3845-arg1        
        PushF        9.500000                  
        Label        -compare-3845-arg2        
        PushF        1.800000                  
        PushF        3.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3845-sub         
        FSubtract                              
        JumpFZero    -compare-3845-false       
        Jump         -compare-3845-true        
        Label        -compare-3845-true        
        PushI        1                         
        Jump         -compare-3845-join        
        Label        -compare-3845-false       
        PushI        0                         
        Jump         -compare-3845-join        
        Label        -compare-3845-join        
        JumpTrue     -print-boolean-3846-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3846-join  
        Label        -print-boolean-3846-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3846-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3847-arg1        
        PushF        7.800000                  
        Label        -compare-3847-arg2        
        PushF        4.800000                  
        PushF        9.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3847-sub         
        FSubtract                              
        JumpFZero    -compare-3847-false       
        Jump         -compare-3847-true        
        Label        -compare-3847-true        
        PushI        1                         
        Jump         -compare-3847-join        
        Label        -compare-3847-false       
        PushI        0                         
        Jump         -compare-3847-join        
        Label        -compare-3847-join        
        JumpTrue     -print-boolean-3848-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3848-join  
        Label        -print-boolean-3848-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3848-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3849-arg1        
        PushF        4.000000                  
        Label        -compare-3849-arg2        
        PushF        5.000000                  
        PushF        2.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3849-sub         
        FSubtract                              
        JumpFZero    -compare-3849-false       
        Jump         -compare-3849-true        
        Label        -compare-3849-true        
        PushI        1                         
        Jump         -compare-3849-join        
        Label        -compare-3849-false       
        PushI        0                         
        Jump         -compare-3849-join        
        Label        -compare-3849-join        
        JumpTrue     -print-boolean-3850-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3850-join  
        Label        -print-boolean-3850-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3850-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3851-arg1        
        PushF        2.500000                  
        Label        -compare-3851-arg2        
        PushF        9.700000                  
        PushF        3.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3851-sub         
        FSubtract                              
        JumpFZero    -compare-3851-false       
        Jump         -compare-3851-true        
        Label        -compare-3851-true        
        PushI        1                         
        Jump         -compare-3851-join        
        Label        -compare-3851-false       
        PushI        0                         
        Jump         -compare-3851-join        
        Label        -compare-3851-join        
        JumpTrue     -print-boolean-3852-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3852-join  
        Label        -print-boolean-3852-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3852-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3853-arg1        
        PushF        5.300000                  
        Label        -compare-3853-arg2        
        PushF        8.400000                  
        PushF        1.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3853-sub         
        FSubtract                              
        JumpFZero    -compare-3853-false       
        Jump         -compare-3853-true        
        Label        -compare-3853-true        
        PushI        1                         
        Jump         -compare-3853-join        
        Label        -compare-3853-false       
        PushI        0                         
        Jump         -compare-3853-join        
        Label        -compare-3853-join        
        JumpTrue     -print-boolean-3854-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3854-join  
        Label        -print-boolean-3854-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3854-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3855-arg1        
        PushF        8.600000                  
        Label        -compare-3855-arg2        
        PushF        8.700000                  
        PushF        5.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3855-sub         
        FSubtract                              
        JumpFZero    -compare-3855-false       
        Jump         -compare-3855-true        
        Label        -compare-3855-true        
        PushI        1                         
        Jump         -compare-3855-join        
        Label        -compare-3855-false       
        PushI        0                         
        Jump         -compare-3855-join        
        Label        -compare-3855-join        
        JumpTrue     -print-boolean-3856-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3856-join  
        Label        -print-boolean-3856-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3856-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3857-arg1        
        PushF        8.200000                  
        Label        -compare-3857-arg2        
        PushF        1.200000                  
        PushF        1.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3857-sub         
        FSubtract                              
        JumpFZero    -compare-3857-false       
        Jump         -compare-3857-true        
        Label        -compare-3857-true        
        PushI        1                         
        Jump         -compare-3857-join        
        Label        -compare-3857-false       
        PushI        0                         
        Jump         -compare-3857-join        
        Label        -compare-3857-join        
        JumpTrue     -print-boolean-3858-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3858-join  
        Label        -print-boolean-3858-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3858-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3859-arg1        
        PushF        2.200000                  
        Label        -compare-3859-arg2        
        PushF        4.500000                  
        PushF        5.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3859-sub         
        FSubtract                              
        JumpFZero    -compare-3859-false       
        Jump         -compare-3859-true        
        Label        -compare-3859-true        
        PushI        1                         
        Jump         -compare-3859-join        
        Label        -compare-3859-false       
        PushI        0                         
        Jump         -compare-3859-join        
        Label        -compare-3859-join        
        JumpTrue     -print-boolean-3860-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3860-join  
        Label        -print-boolean-3860-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3860-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3861-arg1        
        PushF        9.700000                  
        Label        -compare-3861-arg2        
        PushF        1.800000                  
        PushF        1.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3861-sub         
        FSubtract                              
        JumpFZero    -compare-3861-false       
        Jump         -compare-3861-true        
        Label        -compare-3861-true        
        PushI        1                         
        Jump         -compare-3861-join        
        Label        -compare-3861-false       
        PushI        0                         
        Jump         -compare-3861-join        
        Label        -compare-3861-join        
        JumpTrue     -print-boolean-3862-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3862-join  
        Label        -print-boolean-3862-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3862-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3863-arg1        
        PushF        6.000000                  
        Label        -compare-3863-arg2        
        PushF        9.300000                  
        PushF        8.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3863-sub         
        FSubtract                              
        JumpFZero    -compare-3863-false       
        Jump         -compare-3863-true        
        Label        -compare-3863-true        
        PushI        1                         
        Jump         -compare-3863-join        
        Label        -compare-3863-false       
        PushI        0                         
        Jump         -compare-3863-join        
        Label        -compare-3863-join        
        JumpTrue     -print-boolean-3864-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3864-join  
        Label        -print-boolean-3864-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3864-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3865-arg1        
        PushF        7.900000                  
        PushF        7.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3865-arg2        
        PushF        4.800000                  
        PushF        9.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3865-sub         
        FSubtract                              
        JumpFZero    -compare-3865-false       
        Jump         -compare-3865-true        
        Label        -compare-3865-true        
        PushI        1                         
        Jump         -compare-3865-join        
        Label        -compare-3865-false       
        PushI        0                         
        Jump         -compare-3865-join        
        Label        -compare-3865-join        
        JumpTrue     -print-boolean-3866-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3866-join  
        Label        -print-boolean-3866-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3866-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3867-arg1        
        PushF        3.700000                  
        PushF        7.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3867-arg2        
        PushF        1.300000                  
        PushF        6.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3867-sub         
        FSubtract                              
        JumpFZero    -compare-3867-false       
        Jump         -compare-3867-true        
        Label        -compare-3867-true        
        PushI        1                         
        Jump         -compare-3867-join        
        Label        -compare-3867-false       
        PushI        0                         
        Jump         -compare-3867-join        
        Label        -compare-3867-join        
        JumpTrue     -print-boolean-3868-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3868-join  
        Label        -print-boolean-3868-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3868-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3869-arg1        
        PushF        3.300000                  
        PushF        7.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3869-arg2        
        PushF        6.500000                  
        PushF        8.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3869-sub         
        FSubtract                              
        JumpFZero    -compare-3869-false       
        Jump         -compare-3869-true        
        Label        -compare-3869-true        
        PushI        1                         
        Jump         -compare-3869-join        
        Label        -compare-3869-false       
        PushI        0                         
        Jump         -compare-3869-join        
        Label        -compare-3869-join        
        JumpTrue     -print-boolean-3870-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3870-join  
        Label        -print-boolean-3870-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3870-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3871-arg1        
        PushF        1.800000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3871-arg2        
        PushF        6.100000                  
        PushF        6.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3871-sub         
        FSubtract                              
        JumpFZero    -compare-3871-false       
        Jump         -compare-3871-true        
        Label        -compare-3871-true        
        PushI        1                         
        Jump         -compare-3871-join        
        Label        -compare-3871-false       
        PushI        0                         
        Jump         -compare-3871-join        
        Label        -compare-3871-join        
        JumpTrue     -print-boolean-3872-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3872-join  
        Label        -print-boolean-3872-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3872-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3873-arg1        
        PushF        3.000000                  
        PushF        3.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3873-arg2        
        PushF        1.400000                  
        PushF        1.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3873-sub         
        FSubtract                              
        JumpFZero    -compare-3873-false       
        Jump         -compare-3873-true        
        Label        -compare-3873-true        
        PushI        1                         
        Jump         -compare-3873-join        
        Label        -compare-3873-false       
        PushI        0                         
        Jump         -compare-3873-join        
        Label        -compare-3873-join        
        JumpTrue     -print-boolean-3874-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3874-join  
        Label        -print-boolean-3874-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3874-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3875-arg1        
        PushF        2.600000                  
        PushF        4.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3875-arg2        
        PushF        2.500000                  
        PushF        7.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3875-sub         
        FSubtract                              
        JumpFZero    -compare-3875-false       
        Jump         -compare-3875-true        
        Label        -compare-3875-true        
        PushI        1                         
        Jump         -compare-3875-join        
        Label        -compare-3875-false       
        PushI        0                         
        Jump         -compare-3875-join        
        Label        -compare-3875-join        
        JumpTrue     -print-boolean-3876-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3876-join  
        Label        -print-boolean-3876-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3876-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3877-arg1        
        PushF        3.100000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3877-arg2        
        PushF        5.700000                  
        PushF        6.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3877-sub         
        FSubtract                              
        JumpFZero    -compare-3877-false       
        Jump         -compare-3877-true        
        Label        -compare-3877-true        
        PushI        1                         
        Jump         -compare-3877-join        
        Label        -compare-3877-false       
        PushI        0                         
        Jump         -compare-3877-join        
        Label        -compare-3877-join        
        JumpTrue     -print-boolean-3878-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3878-join  
        Label        -print-boolean-3878-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3878-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3879-arg1        
        PushF        1.800000                  
        PushF        5.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3879-arg2        
        PushF        8.500000                  
        PushF        7.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3879-sub         
        FSubtract                              
        JumpFZero    -compare-3879-false       
        Jump         -compare-3879-true        
        Label        -compare-3879-true        
        PushI        1                         
        Jump         -compare-3879-join        
        Label        -compare-3879-false       
        PushI        0                         
        Jump         -compare-3879-join        
        Label        -compare-3879-join        
        JumpTrue     -print-boolean-3880-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3880-join  
        Label        -print-boolean-3880-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3880-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3881-arg1        
        PushF        4.400000                  
        PushF        9.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3881-arg2        
        PushF        6.400000                  
        PushF        7.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3881-sub         
        FSubtract                              
        JumpFZero    -compare-3881-false       
        Jump         -compare-3881-true        
        Label        -compare-3881-true        
        PushI        1                         
        Jump         -compare-3881-join        
        Label        -compare-3881-false       
        PushI        0                         
        Jump         -compare-3881-join        
        Label        -compare-3881-join        
        JumpTrue     -print-boolean-3882-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3882-join  
        Label        -print-boolean-3882-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3882-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3883-arg1        
        PushF        8.000000                  
        PushF        6.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3883-arg2        
        PushF        7.100000                  
        PushF        8.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3883-sub         
        FSubtract                              
        JumpFZero    -compare-3883-false       
        Jump         -compare-3883-true        
        Label        -compare-3883-true        
        PushI        1                         
        Jump         -compare-3883-join        
        Label        -compare-3883-false       
        PushI        0                         
        Jump         -compare-3883-join        
        Label        -compare-3883-join        
        JumpTrue     -print-boolean-3884-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3884-join  
        Label        -print-boolean-3884-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3884-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3885-arg1        
        PushF        9.300000                  
        PushF        8.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3885-arg2        
        PushF        7.100000                  
        PushF        2.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3885-sub         
        FSubtract                              
        JumpFZero    -compare-3885-false       
        Jump         -compare-3885-true        
        Label        -compare-3885-true        
        PushI        1                         
        Jump         -compare-3885-join        
        Label        -compare-3885-false       
        PushI        0                         
        Jump         -compare-3885-join        
        Label        -compare-3885-join        
        JumpTrue     -print-boolean-3886-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3886-join  
        Label        -print-boolean-3886-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3886-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3887-arg1        
        PushF        1.800000                  
        PushF        4.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3887-arg2        
        PushF        6.400000                  
        PushF        6.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3887-sub         
        FSubtract                              
        JumpFZero    -compare-3887-false       
        Jump         -compare-3887-true        
        Label        -compare-3887-true        
        PushI        1                         
        Jump         -compare-3887-join        
        Label        -compare-3887-false       
        PushI        0                         
        Jump         -compare-3887-join        
        Label        -compare-3887-join        
        JumpTrue     -print-boolean-3888-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3888-join  
        Label        -print-boolean-3888-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3888-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
