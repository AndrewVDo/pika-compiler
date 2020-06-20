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
        Label        -compare-3529-arg1        
        PushF        7.900000                  
        PushF        3.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3529-arg2        
        PushF        8.500000                  
        Label        -compare-3529-sub         
        FSubtract                              
        JumpFNeg     -compare-3529-true        
        Jump         -compare-3529-false       
        Label        -compare-3529-true        
        PushI        1                         
        Jump         -compare-3529-join        
        Label        -compare-3529-false       
        PushI        0                         
        Jump         -compare-3529-join        
        Label        -compare-3529-join        
        JumpTrue     -print-boolean-3530-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3530-join  
        Label        -print-boolean-3530-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3530-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3531-arg1        
        PushF        1.700000                  
        PushF        8.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3531-arg2        
        PushF        2.800000                  
        Label        -compare-3531-sub         
        FSubtract                              
        JumpFNeg     -compare-3531-true        
        Jump         -compare-3531-false       
        Label        -compare-3531-true        
        PushI        1                         
        Jump         -compare-3531-join        
        Label        -compare-3531-false       
        PushI        0                         
        Jump         -compare-3531-join        
        Label        -compare-3531-join        
        JumpTrue     -print-boolean-3532-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3532-join  
        Label        -print-boolean-3532-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3532-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3533-arg1        
        PushF        3.600000                  
        PushF        3.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3533-arg2        
        PushF        6.800000                  
        Label        -compare-3533-sub         
        FSubtract                              
        JumpFNeg     -compare-3533-true        
        Jump         -compare-3533-false       
        Label        -compare-3533-true        
        PushI        1                         
        Jump         -compare-3533-join        
        Label        -compare-3533-false       
        PushI        0                         
        Jump         -compare-3533-join        
        Label        -compare-3533-join        
        JumpTrue     -print-boolean-3534-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3534-join  
        Label        -print-boolean-3534-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3534-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3535-arg1        
        PushF        5.100000                  
        PushF        8.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3535-arg2        
        PushF        8.000000                  
        Label        -compare-3535-sub         
        FSubtract                              
        JumpFNeg     -compare-3535-true        
        Jump         -compare-3535-false       
        Label        -compare-3535-true        
        PushI        1                         
        Jump         -compare-3535-join        
        Label        -compare-3535-false       
        PushI        0                         
        Jump         -compare-3535-join        
        Label        -compare-3535-join        
        JumpTrue     -print-boolean-3536-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3536-join  
        Label        -print-boolean-3536-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3536-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3537-arg1        
        PushF        5.300000                  
        PushF        2.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3537-arg2        
        PushF        2.400000                  
        Label        -compare-3537-sub         
        FSubtract                              
        JumpFNeg     -compare-3537-true        
        Jump         -compare-3537-false       
        Label        -compare-3537-true        
        PushI        1                         
        Jump         -compare-3537-join        
        Label        -compare-3537-false       
        PushI        0                         
        Jump         -compare-3537-join        
        Label        -compare-3537-join        
        JumpTrue     -print-boolean-3538-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3538-join  
        Label        -print-boolean-3538-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3538-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3539-arg1        
        PushF        4.500000                  
        PushF        1.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3539-arg2        
        PushF        8.200000                  
        Label        -compare-3539-sub         
        FSubtract                              
        JumpFNeg     -compare-3539-true        
        Jump         -compare-3539-false       
        Label        -compare-3539-true        
        PushI        1                         
        Jump         -compare-3539-join        
        Label        -compare-3539-false       
        PushI        0                         
        Jump         -compare-3539-join        
        Label        -compare-3539-join        
        JumpTrue     -print-boolean-3540-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3540-join  
        Label        -print-boolean-3540-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3540-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3541-arg1        
        PushF        5.000000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3541-arg2        
        PushF        3.500000                  
        Label        -compare-3541-sub         
        FSubtract                              
        JumpFNeg     -compare-3541-true        
        Jump         -compare-3541-false       
        Label        -compare-3541-true        
        PushI        1                         
        Jump         -compare-3541-join        
        Label        -compare-3541-false       
        PushI        0                         
        Jump         -compare-3541-join        
        Label        -compare-3541-join        
        JumpTrue     -print-boolean-3542-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3542-join  
        Label        -print-boolean-3542-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3542-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3543-arg1        
        PushF        9.300000                  
        PushF        9.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3543-arg2        
        PushF        5.000000                  
        Label        -compare-3543-sub         
        FSubtract                              
        JumpFNeg     -compare-3543-true        
        Jump         -compare-3543-false       
        Label        -compare-3543-true        
        PushI        1                         
        Jump         -compare-3543-join        
        Label        -compare-3543-false       
        PushI        0                         
        Jump         -compare-3543-join        
        Label        -compare-3543-join        
        JumpTrue     -print-boolean-3544-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3544-join  
        Label        -print-boolean-3544-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3544-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3545-arg1        
        PushF        5.400000                  
        PushF        3.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3545-arg2        
        PushF        5.500000                  
        Label        -compare-3545-sub         
        FSubtract                              
        JumpFNeg     -compare-3545-true        
        Jump         -compare-3545-false       
        Label        -compare-3545-true        
        PushI        1                         
        Jump         -compare-3545-join        
        Label        -compare-3545-false       
        PushI        0                         
        Jump         -compare-3545-join        
        Label        -compare-3545-join        
        JumpTrue     -print-boolean-3546-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3546-join  
        Label        -print-boolean-3546-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3546-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3547-arg1        
        PushF        4.500000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3547-arg2        
        PushF        5.400000                  
        Label        -compare-3547-sub         
        FSubtract                              
        JumpFNeg     -compare-3547-true        
        Jump         -compare-3547-false       
        Label        -compare-3547-true        
        PushI        1                         
        Jump         -compare-3547-join        
        Label        -compare-3547-false       
        PushI        0                         
        Jump         -compare-3547-join        
        Label        -compare-3547-join        
        JumpTrue     -print-boolean-3548-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3548-join  
        Label        -print-boolean-3548-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3548-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3549-arg1        
        PushF        7.500000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3549-arg2        
        PushF        9.200000                  
        Label        -compare-3549-sub         
        FSubtract                              
        JumpFNeg     -compare-3549-true        
        Jump         -compare-3549-false       
        Label        -compare-3549-true        
        PushI        1                         
        Jump         -compare-3549-join        
        Label        -compare-3549-false       
        PushI        0                         
        Jump         -compare-3549-join        
        Label        -compare-3549-join        
        JumpTrue     -print-boolean-3550-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3550-join  
        Label        -print-boolean-3550-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3550-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3551-arg1        
        PushF        8.200000                  
        PushF        6.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3551-arg2        
        PushF        1.500000                  
        Label        -compare-3551-sub         
        FSubtract                              
        JumpFNeg     -compare-3551-true        
        Jump         -compare-3551-false       
        Label        -compare-3551-true        
        PushI        1                         
        Jump         -compare-3551-join        
        Label        -compare-3551-false       
        PushI        0                         
        Jump         -compare-3551-join        
        Label        -compare-3551-join        
        JumpTrue     -print-boolean-3552-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3552-join  
        Label        -print-boolean-3552-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3552-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3553-arg1        
        PushF        8.100000                  
        Label        -compare-3553-arg2        
        PushF        1.200000                  
        PushF        6.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3553-sub         
        FSubtract                              
        JumpFNeg     -compare-3553-true        
        Jump         -compare-3553-false       
        Label        -compare-3553-true        
        PushI        1                         
        Jump         -compare-3553-join        
        Label        -compare-3553-false       
        PushI        0                         
        Jump         -compare-3553-join        
        Label        -compare-3553-join        
        JumpTrue     -print-boolean-3554-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3554-join  
        Label        -print-boolean-3554-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3554-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3555-arg1        
        PushF        5.300000                  
        Label        -compare-3555-arg2        
        PushF        6.200000                  
        PushF        7.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3555-sub         
        FSubtract                              
        JumpFNeg     -compare-3555-true        
        Jump         -compare-3555-false       
        Label        -compare-3555-true        
        PushI        1                         
        Jump         -compare-3555-join        
        Label        -compare-3555-false       
        PushI        0                         
        Jump         -compare-3555-join        
        Label        -compare-3555-join        
        JumpTrue     -print-boolean-3556-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3556-join  
        Label        -print-boolean-3556-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3556-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3557-arg1        
        PushF        4.100000                  
        Label        -compare-3557-arg2        
        PushF        1.700000                  
        PushF        2.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3557-sub         
        FSubtract                              
        JumpFNeg     -compare-3557-true        
        Jump         -compare-3557-false       
        Label        -compare-3557-true        
        PushI        1                         
        Jump         -compare-3557-join        
        Label        -compare-3557-false       
        PushI        0                         
        Jump         -compare-3557-join        
        Label        -compare-3557-join        
        JumpTrue     -print-boolean-3558-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3558-join  
        Label        -print-boolean-3558-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3558-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3559-arg1        
        PushF        8.500000                  
        Label        -compare-3559-arg2        
        PushF        5.300000                  
        PushF        4.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3559-sub         
        FSubtract                              
        JumpFNeg     -compare-3559-true        
        Jump         -compare-3559-false       
        Label        -compare-3559-true        
        PushI        1                         
        Jump         -compare-3559-join        
        Label        -compare-3559-false       
        PushI        0                         
        Jump         -compare-3559-join        
        Label        -compare-3559-join        
        JumpTrue     -print-boolean-3560-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3560-join  
        Label        -print-boolean-3560-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3560-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3561-arg1        
        PushF        1.200000                  
        Label        -compare-3561-arg2        
        PushF        4.000000                  
        PushF        8.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3561-sub         
        FSubtract                              
        JumpFNeg     -compare-3561-true        
        Jump         -compare-3561-false       
        Label        -compare-3561-true        
        PushI        1                         
        Jump         -compare-3561-join        
        Label        -compare-3561-false       
        PushI        0                         
        Jump         -compare-3561-join        
        Label        -compare-3561-join        
        JumpTrue     -print-boolean-3562-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3562-join  
        Label        -print-boolean-3562-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3562-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3563-arg1        
        PushF        7.900000                  
        Label        -compare-3563-arg2        
        PushF        2.000000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3563-sub         
        FSubtract                              
        JumpFNeg     -compare-3563-true        
        Jump         -compare-3563-false       
        Label        -compare-3563-true        
        PushI        1                         
        Jump         -compare-3563-join        
        Label        -compare-3563-false       
        PushI        0                         
        Jump         -compare-3563-join        
        Label        -compare-3563-join        
        JumpTrue     -print-boolean-3564-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3564-join  
        Label        -print-boolean-3564-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3564-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3565-arg1        
        PushF        2.800000                  
        Label        -compare-3565-arg2        
        PushF        3.500000                  
        PushF        6.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3565-sub         
        FSubtract                              
        JumpFNeg     -compare-3565-true        
        Jump         -compare-3565-false       
        Label        -compare-3565-true        
        PushI        1                         
        Jump         -compare-3565-join        
        Label        -compare-3565-false       
        PushI        0                         
        Jump         -compare-3565-join        
        Label        -compare-3565-join        
        JumpTrue     -print-boolean-3566-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3566-join  
        Label        -print-boolean-3566-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3566-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3567-arg1        
        PushF        9.900000                  
        Label        -compare-3567-arg2        
        PushF        4.900000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3567-sub         
        FSubtract                              
        JumpFNeg     -compare-3567-true        
        Jump         -compare-3567-false       
        Label        -compare-3567-true        
        PushI        1                         
        Jump         -compare-3567-join        
        Label        -compare-3567-false       
        PushI        0                         
        Jump         -compare-3567-join        
        Label        -compare-3567-join        
        JumpTrue     -print-boolean-3568-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3568-join  
        Label        -print-boolean-3568-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3568-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3569-arg1        
        PushF        3.600000                  
        Label        -compare-3569-arg2        
        PushF        7.300000                  
        PushF        1.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3569-sub         
        FSubtract                              
        JumpFNeg     -compare-3569-true        
        Jump         -compare-3569-false       
        Label        -compare-3569-true        
        PushI        1                         
        Jump         -compare-3569-join        
        Label        -compare-3569-false       
        PushI        0                         
        Jump         -compare-3569-join        
        Label        -compare-3569-join        
        JumpTrue     -print-boolean-3570-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3570-join  
        Label        -print-boolean-3570-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3570-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3571-arg1        
        PushF        9.000000                  
        Label        -compare-3571-arg2        
        PushF        6.800000                  
        PushF        1.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3571-sub         
        FSubtract                              
        JumpFNeg     -compare-3571-true        
        Jump         -compare-3571-false       
        Label        -compare-3571-true        
        PushI        1                         
        Jump         -compare-3571-join        
        Label        -compare-3571-false       
        PushI        0                         
        Jump         -compare-3571-join        
        Label        -compare-3571-join        
        JumpTrue     -print-boolean-3572-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3572-join  
        Label        -print-boolean-3572-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3572-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3573-arg1        
        PushF        7.000000                  
        Label        -compare-3573-arg2        
        PushF        7.600000                  
        PushF        8.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3573-sub         
        FSubtract                              
        JumpFNeg     -compare-3573-true        
        Jump         -compare-3573-false       
        Label        -compare-3573-true        
        PushI        1                         
        Jump         -compare-3573-join        
        Label        -compare-3573-false       
        PushI        0                         
        Jump         -compare-3573-join        
        Label        -compare-3573-join        
        JumpTrue     -print-boolean-3574-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3574-join  
        Label        -print-boolean-3574-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3574-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3575-arg1        
        PushF        7.300000                  
        Label        -compare-3575-arg2        
        PushF        6.900000                  
        PushF        6.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3575-sub         
        FSubtract                              
        JumpFNeg     -compare-3575-true        
        Jump         -compare-3575-false       
        Label        -compare-3575-true        
        PushI        1                         
        Jump         -compare-3575-join        
        Label        -compare-3575-false       
        PushI        0                         
        Jump         -compare-3575-join        
        Label        -compare-3575-join        
        JumpTrue     -print-boolean-3576-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3576-join  
        Label        -print-boolean-3576-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3576-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3577-arg1        
        PushF        1.800000                  
        PushF        6.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3577-arg2        
        PushF        3.700000                  
        PushF        7.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3577-sub         
        FSubtract                              
        JumpFNeg     -compare-3577-true        
        Jump         -compare-3577-false       
        Label        -compare-3577-true        
        PushI        1                         
        Jump         -compare-3577-join        
        Label        -compare-3577-false       
        PushI        0                         
        Jump         -compare-3577-join        
        Label        -compare-3577-join        
        JumpTrue     -print-boolean-3578-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3578-join  
        Label        -print-boolean-3578-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3578-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3579-arg1        
        PushF        4.200000                  
        PushF        5.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3579-arg2        
        PushF        8.200000                  
        PushF        4.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3579-sub         
        FSubtract                              
        JumpFNeg     -compare-3579-true        
        Jump         -compare-3579-false       
        Label        -compare-3579-true        
        PushI        1                         
        Jump         -compare-3579-join        
        Label        -compare-3579-false       
        PushI        0                         
        Jump         -compare-3579-join        
        Label        -compare-3579-join        
        JumpTrue     -print-boolean-3580-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3580-join  
        Label        -print-boolean-3580-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3580-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3581-arg1        
        PushF        6.300000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3581-arg2        
        PushF        5.400000                  
        PushF        7.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3581-sub         
        FSubtract                              
        JumpFNeg     -compare-3581-true        
        Jump         -compare-3581-false       
        Label        -compare-3581-true        
        PushI        1                         
        Jump         -compare-3581-join        
        Label        -compare-3581-false       
        PushI        0                         
        Jump         -compare-3581-join        
        Label        -compare-3581-join        
        JumpTrue     -print-boolean-3582-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3582-join  
        Label        -print-boolean-3582-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3582-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3583-arg1        
        PushF        7.600000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3583-arg2        
        PushF        4.300000                  
        PushF        3.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3583-sub         
        FSubtract                              
        JumpFNeg     -compare-3583-true        
        Jump         -compare-3583-false       
        Label        -compare-3583-true        
        PushI        1                         
        Jump         -compare-3583-join        
        Label        -compare-3583-false       
        PushI        0                         
        Jump         -compare-3583-join        
        Label        -compare-3583-join        
        JumpTrue     -print-boolean-3584-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3584-join  
        Label        -print-boolean-3584-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3584-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3585-arg1        
        PushF        9.900000                  
        PushF        5.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3585-arg2        
        PushF        7.800000                  
        PushF        6.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3585-sub         
        FSubtract                              
        JumpFNeg     -compare-3585-true        
        Jump         -compare-3585-false       
        Label        -compare-3585-true        
        PushI        1                         
        Jump         -compare-3585-join        
        Label        -compare-3585-false       
        PushI        0                         
        Jump         -compare-3585-join        
        Label        -compare-3585-join        
        JumpTrue     -print-boolean-3586-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3586-join  
        Label        -print-boolean-3586-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3586-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3587-arg1        
        PushF        4.900000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3587-arg2        
        PushF        5.300000                  
        PushF        5.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3587-sub         
        FSubtract                              
        JumpFNeg     -compare-3587-true        
        Jump         -compare-3587-false       
        Label        -compare-3587-true        
        PushI        1                         
        Jump         -compare-3587-join        
        Label        -compare-3587-false       
        PushI        0                         
        Jump         -compare-3587-join        
        Label        -compare-3587-join        
        JumpTrue     -print-boolean-3588-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3588-join  
        Label        -print-boolean-3588-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3588-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3589-arg1        
        PushF        3.200000                  
        PushF        5.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3589-arg2        
        PushF        1.500000                  
        PushF        7.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3589-sub         
        FSubtract                              
        JumpFNeg     -compare-3589-true        
        Jump         -compare-3589-false       
        Label        -compare-3589-true        
        PushI        1                         
        Jump         -compare-3589-join        
        Label        -compare-3589-false       
        PushI        0                         
        Jump         -compare-3589-join        
        Label        -compare-3589-join        
        JumpTrue     -print-boolean-3590-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3590-join  
        Label        -print-boolean-3590-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3590-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3591-arg1        
        PushF        5.500000                  
        PushF        8.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3591-arg2        
        PushF        9.100000                  
        PushF        9.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3591-sub         
        FSubtract                              
        JumpFNeg     -compare-3591-true        
        Jump         -compare-3591-false       
        Label        -compare-3591-true        
        PushI        1                         
        Jump         -compare-3591-join        
        Label        -compare-3591-false       
        PushI        0                         
        Jump         -compare-3591-join        
        Label        -compare-3591-join        
        JumpTrue     -print-boolean-3592-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3592-join  
        Label        -print-boolean-3592-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3592-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3593-arg1        
        PushF        5.100000                  
        PushF        2.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3593-arg2        
        PushF        4.400000                  
        PushF        3.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3593-sub         
        FSubtract                              
        JumpFNeg     -compare-3593-true        
        Jump         -compare-3593-false       
        Label        -compare-3593-true        
        PushI        1                         
        Jump         -compare-3593-join        
        Label        -compare-3593-false       
        PushI        0                         
        Jump         -compare-3593-join        
        Label        -compare-3593-join        
        JumpTrue     -print-boolean-3594-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3594-join  
        Label        -print-boolean-3594-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3594-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3595-arg1        
        PushF        4.900000                  
        PushF        8.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3595-arg2        
        PushF        6.500000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3595-sub         
        FSubtract                              
        JumpFNeg     -compare-3595-true        
        Jump         -compare-3595-false       
        Label        -compare-3595-true        
        PushI        1                         
        Jump         -compare-3595-join        
        Label        -compare-3595-false       
        PushI        0                         
        Jump         -compare-3595-join        
        Label        -compare-3595-join        
        JumpTrue     -print-boolean-3596-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3596-join  
        Label        -print-boolean-3596-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3596-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3597-arg1        
        PushF        7.100000                  
        PushF        6.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3597-arg2        
        PushF        1.700000                  
        PushF        9.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3597-sub         
        FSubtract                              
        JumpFNeg     -compare-3597-true        
        Jump         -compare-3597-false       
        Label        -compare-3597-true        
        PushI        1                         
        Jump         -compare-3597-join        
        Label        -compare-3597-false       
        PushI        0                         
        Jump         -compare-3597-join        
        Label        -compare-3597-join        
        JumpTrue     -print-boolean-3598-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3598-join  
        Label        -print-boolean-3598-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3598-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3599-arg1        
        PushF        3.600000                  
        PushF        6.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3599-arg2        
        PushF        4.300000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3599-sub         
        FSubtract                              
        JumpFNeg     -compare-3599-true        
        Jump         -compare-3599-false       
        Label        -compare-3599-true        
        PushI        1                         
        Jump         -compare-3599-join        
        Label        -compare-3599-false       
        PushI        0                         
        Jump         -compare-3599-join        
        Label        -compare-3599-join        
        JumpTrue     -print-boolean-3600-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3600-join  
        Label        -print-boolean-3600-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3600-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
