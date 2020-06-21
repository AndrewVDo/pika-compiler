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
        Label        -compare-3542-arg1        
        PushF        7.900000                  
        PushF        3.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3542-arg2        
        PushF        8.500000                  
        Label        -compare-3542-sub         
        FSubtract                              
        JumpFNeg     -compare-3542-true        
        Jump         -compare-3542-false       
        Label        -compare-3542-true        
        PushI        1                         
        Jump         -compare-3542-join        
        Label        -compare-3542-false       
        PushI        0                         
        Jump         -compare-3542-join        
        Label        -compare-3542-join        
        JumpTrue     -print-boolean-3543-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3543-join  
        Label        -print-boolean-3543-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3543-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3544-arg1        
        PushF        1.700000                  
        PushF        8.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3544-arg2        
        PushF        2.800000                  
        Label        -compare-3544-sub         
        FSubtract                              
        JumpFNeg     -compare-3544-true        
        Jump         -compare-3544-false       
        Label        -compare-3544-true        
        PushI        1                         
        Jump         -compare-3544-join        
        Label        -compare-3544-false       
        PushI        0                         
        Jump         -compare-3544-join        
        Label        -compare-3544-join        
        JumpTrue     -print-boolean-3545-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3545-join  
        Label        -print-boolean-3545-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3545-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3546-arg1        
        PushF        3.600000                  
        PushF        3.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3546-arg2        
        PushF        6.800000                  
        Label        -compare-3546-sub         
        FSubtract                              
        JumpFNeg     -compare-3546-true        
        Jump         -compare-3546-false       
        Label        -compare-3546-true        
        PushI        1                         
        Jump         -compare-3546-join        
        Label        -compare-3546-false       
        PushI        0                         
        Jump         -compare-3546-join        
        Label        -compare-3546-join        
        JumpTrue     -print-boolean-3547-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3547-join  
        Label        -print-boolean-3547-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3547-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3548-arg1        
        PushF        5.100000                  
        PushF        8.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3548-arg2        
        PushF        8.000000                  
        Label        -compare-3548-sub         
        FSubtract                              
        JumpFNeg     -compare-3548-true        
        Jump         -compare-3548-false       
        Label        -compare-3548-true        
        PushI        1                         
        Jump         -compare-3548-join        
        Label        -compare-3548-false       
        PushI        0                         
        Jump         -compare-3548-join        
        Label        -compare-3548-join        
        JumpTrue     -print-boolean-3549-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3549-join  
        Label        -print-boolean-3549-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3549-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3550-arg1        
        PushF        5.300000                  
        PushF        2.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3550-arg2        
        PushF        2.400000                  
        Label        -compare-3550-sub         
        FSubtract                              
        JumpFNeg     -compare-3550-true        
        Jump         -compare-3550-false       
        Label        -compare-3550-true        
        PushI        1                         
        Jump         -compare-3550-join        
        Label        -compare-3550-false       
        PushI        0                         
        Jump         -compare-3550-join        
        Label        -compare-3550-join        
        JumpTrue     -print-boolean-3551-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3551-join  
        Label        -print-boolean-3551-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3551-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3552-arg1        
        PushF        4.500000                  
        PushF        1.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3552-arg2        
        PushF        8.200000                  
        Label        -compare-3552-sub         
        FSubtract                              
        JumpFNeg     -compare-3552-true        
        Jump         -compare-3552-false       
        Label        -compare-3552-true        
        PushI        1                         
        Jump         -compare-3552-join        
        Label        -compare-3552-false       
        PushI        0                         
        Jump         -compare-3552-join        
        Label        -compare-3552-join        
        JumpTrue     -print-boolean-3553-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3553-join  
        Label        -print-boolean-3553-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3553-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3554-arg1        
        PushF        5.000000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3554-arg2        
        PushF        3.500000                  
        Label        -compare-3554-sub         
        FSubtract                              
        JumpFNeg     -compare-3554-true        
        Jump         -compare-3554-false       
        Label        -compare-3554-true        
        PushI        1                         
        Jump         -compare-3554-join        
        Label        -compare-3554-false       
        PushI        0                         
        Jump         -compare-3554-join        
        Label        -compare-3554-join        
        JumpTrue     -print-boolean-3555-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3555-join  
        Label        -print-boolean-3555-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3555-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3556-arg1        
        PushF        9.300000                  
        PushF        9.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3556-arg2        
        PushF        5.000000                  
        Label        -compare-3556-sub         
        FSubtract                              
        JumpFNeg     -compare-3556-true        
        Jump         -compare-3556-false       
        Label        -compare-3556-true        
        PushI        1                         
        Jump         -compare-3556-join        
        Label        -compare-3556-false       
        PushI        0                         
        Jump         -compare-3556-join        
        Label        -compare-3556-join        
        JumpTrue     -print-boolean-3557-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3557-join  
        Label        -print-boolean-3557-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3557-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3558-arg1        
        PushF        5.400000                  
        PushF        3.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3558-arg2        
        PushF        5.500000                  
        Label        -compare-3558-sub         
        FSubtract                              
        JumpFNeg     -compare-3558-true        
        Jump         -compare-3558-false       
        Label        -compare-3558-true        
        PushI        1                         
        Jump         -compare-3558-join        
        Label        -compare-3558-false       
        PushI        0                         
        Jump         -compare-3558-join        
        Label        -compare-3558-join        
        JumpTrue     -print-boolean-3559-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3559-join  
        Label        -print-boolean-3559-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3559-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3560-arg1        
        PushF        4.500000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3560-arg2        
        PushF        5.400000                  
        Label        -compare-3560-sub         
        FSubtract                              
        JumpFNeg     -compare-3560-true        
        Jump         -compare-3560-false       
        Label        -compare-3560-true        
        PushI        1                         
        Jump         -compare-3560-join        
        Label        -compare-3560-false       
        PushI        0                         
        Jump         -compare-3560-join        
        Label        -compare-3560-join        
        JumpTrue     -print-boolean-3561-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3561-join  
        Label        -print-boolean-3561-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3561-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3562-arg1        
        PushF        7.500000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3562-arg2        
        PushF        9.200000                  
        Label        -compare-3562-sub         
        FSubtract                              
        JumpFNeg     -compare-3562-true        
        Jump         -compare-3562-false       
        Label        -compare-3562-true        
        PushI        1                         
        Jump         -compare-3562-join        
        Label        -compare-3562-false       
        PushI        0                         
        Jump         -compare-3562-join        
        Label        -compare-3562-join        
        JumpTrue     -print-boolean-3563-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3563-join  
        Label        -print-boolean-3563-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3563-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3564-arg1        
        PushF        8.200000                  
        PushF        6.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3564-arg2        
        PushF        1.500000                  
        Label        -compare-3564-sub         
        FSubtract                              
        JumpFNeg     -compare-3564-true        
        Jump         -compare-3564-false       
        Label        -compare-3564-true        
        PushI        1                         
        Jump         -compare-3564-join        
        Label        -compare-3564-false       
        PushI        0                         
        Jump         -compare-3564-join        
        Label        -compare-3564-join        
        JumpTrue     -print-boolean-3565-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3565-join  
        Label        -print-boolean-3565-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3565-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3566-arg1        
        PushF        8.100000                  
        Label        -compare-3566-arg2        
        PushF        1.200000                  
        PushF        6.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3566-sub         
        FSubtract                              
        JumpFNeg     -compare-3566-true        
        Jump         -compare-3566-false       
        Label        -compare-3566-true        
        PushI        1                         
        Jump         -compare-3566-join        
        Label        -compare-3566-false       
        PushI        0                         
        Jump         -compare-3566-join        
        Label        -compare-3566-join        
        JumpTrue     -print-boolean-3567-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3567-join  
        Label        -print-boolean-3567-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3567-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3568-arg1        
        PushF        5.300000                  
        Label        -compare-3568-arg2        
        PushF        6.200000                  
        PushF        7.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3568-sub         
        FSubtract                              
        JumpFNeg     -compare-3568-true        
        Jump         -compare-3568-false       
        Label        -compare-3568-true        
        PushI        1                         
        Jump         -compare-3568-join        
        Label        -compare-3568-false       
        PushI        0                         
        Jump         -compare-3568-join        
        Label        -compare-3568-join        
        JumpTrue     -print-boolean-3569-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3569-join  
        Label        -print-boolean-3569-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3569-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3570-arg1        
        PushF        4.100000                  
        Label        -compare-3570-arg2        
        PushF        1.700000                  
        PushF        2.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3570-sub         
        FSubtract                              
        JumpFNeg     -compare-3570-true        
        Jump         -compare-3570-false       
        Label        -compare-3570-true        
        PushI        1                         
        Jump         -compare-3570-join        
        Label        -compare-3570-false       
        PushI        0                         
        Jump         -compare-3570-join        
        Label        -compare-3570-join        
        JumpTrue     -print-boolean-3571-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3571-join  
        Label        -print-boolean-3571-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3571-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3572-arg1        
        PushF        8.500000                  
        Label        -compare-3572-arg2        
        PushF        5.300000                  
        PushF        4.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3572-sub         
        FSubtract                              
        JumpFNeg     -compare-3572-true        
        Jump         -compare-3572-false       
        Label        -compare-3572-true        
        PushI        1                         
        Jump         -compare-3572-join        
        Label        -compare-3572-false       
        PushI        0                         
        Jump         -compare-3572-join        
        Label        -compare-3572-join        
        JumpTrue     -print-boolean-3573-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3573-join  
        Label        -print-boolean-3573-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3573-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3574-arg1        
        PushF        1.200000                  
        Label        -compare-3574-arg2        
        PushF        4.000000                  
        PushF        8.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3574-sub         
        FSubtract                              
        JumpFNeg     -compare-3574-true        
        Jump         -compare-3574-false       
        Label        -compare-3574-true        
        PushI        1                         
        Jump         -compare-3574-join        
        Label        -compare-3574-false       
        PushI        0                         
        Jump         -compare-3574-join        
        Label        -compare-3574-join        
        JumpTrue     -print-boolean-3575-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3575-join  
        Label        -print-boolean-3575-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3575-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3576-arg1        
        PushF        7.900000                  
        Label        -compare-3576-arg2        
        PushF        2.000000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3576-sub         
        FSubtract                              
        JumpFNeg     -compare-3576-true        
        Jump         -compare-3576-false       
        Label        -compare-3576-true        
        PushI        1                         
        Jump         -compare-3576-join        
        Label        -compare-3576-false       
        PushI        0                         
        Jump         -compare-3576-join        
        Label        -compare-3576-join        
        JumpTrue     -print-boolean-3577-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3577-join  
        Label        -print-boolean-3577-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3577-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3578-arg1        
        PushF        2.800000                  
        Label        -compare-3578-arg2        
        PushF        3.500000                  
        PushF        6.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3578-sub         
        FSubtract                              
        JumpFNeg     -compare-3578-true        
        Jump         -compare-3578-false       
        Label        -compare-3578-true        
        PushI        1                         
        Jump         -compare-3578-join        
        Label        -compare-3578-false       
        PushI        0                         
        Jump         -compare-3578-join        
        Label        -compare-3578-join        
        JumpTrue     -print-boolean-3579-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3579-join  
        Label        -print-boolean-3579-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3579-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3580-arg1        
        PushF        9.900000                  
        Label        -compare-3580-arg2        
        PushF        4.900000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3580-sub         
        FSubtract                              
        JumpFNeg     -compare-3580-true        
        Jump         -compare-3580-false       
        Label        -compare-3580-true        
        PushI        1                         
        Jump         -compare-3580-join        
        Label        -compare-3580-false       
        PushI        0                         
        Jump         -compare-3580-join        
        Label        -compare-3580-join        
        JumpTrue     -print-boolean-3581-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3581-join  
        Label        -print-boolean-3581-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3581-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3582-arg1        
        PushF        3.600000                  
        Label        -compare-3582-arg2        
        PushF        7.300000                  
        PushF        1.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3582-sub         
        FSubtract                              
        JumpFNeg     -compare-3582-true        
        Jump         -compare-3582-false       
        Label        -compare-3582-true        
        PushI        1                         
        Jump         -compare-3582-join        
        Label        -compare-3582-false       
        PushI        0                         
        Jump         -compare-3582-join        
        Label        -compare-3582-join        
        JumpTrue     -print-boolean-3583-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3583-join  
        Label        -print-boolean-3583-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3583-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3584-arg1        
        PushF        9.000000                  
        Label        -compare-3584-arg2        
        PushF        6.800000                  
        PushF        1.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3584-sub         
        FSubtract                              
        JumpFNeg     -compare-3584-true        
        Jump         -compare-3584-false       
        Label        -compare-3584-true        
        PushI        1                         
        Jump         -compare-3584-join        
        Label        -compare-3584-false       
        PushI        0                         
        Jump         -compare-3584-join        
        Label        -compare-3584-join        
        JumpTrue     -print-boolean-3585-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3585-join  
        Label        -print-boolean-3585-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3585-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3586-arg1        
        PushF        7.000000                  
        Label        -compare-3586-arg2        
        PushF        7.600000                  
        PushF        8.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3586-sub         
        FSubtract                              
        JumpFNeg     -compare-3586-true        
        Jump         -compare-3586-false       
        Label        -compare-3586-true        
        PushI        1                         
        Jump         -compare-3586-join        
        Label        -compare-3586-false       
        PushI        0                         
        Jump         -compare-3586-join        
        Label        -compare-3586-join        
        JumpTrue     -print-boolean-3587-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3587-join  
        Label        -print-boolean-3587-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3587-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3588-arg1        
        PushF        7.300000                  
        Label        -compare-3588-arg2        
        PushF        6.900000                  
        PushF        6.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3588-sub         
        FSubtract                              
        JumpFNeg     -compare-3588-true        
        Jump         -compare-3588-false       
        Label        -compare-3588-true        
        PushI        1                         
        Jump         -compare-3588-join        
        Label        -compare-3588-false       
        PushI        0                         
        Jump         -compare-3588-join        
        Label        -compare-3588-join        
        JumpTrue     -print-boolean-3589-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3589-join  
        Label        -print-boolean-3589-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3589-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3590-arg1        
        PushF        1.800000                  
        PushF        6.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3590-arg2        
        PushF        3.700000                  
        PushF        7.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3590-sub         
        FSubtract                              
        JumpFNeg     -compare-3590-true        
        Jump         -compare-3590-false       
        Label        -compare-3590-true        
        PushI        1                         
        Jump         -compare-3590-join        
        Label        -compare-3590-false       
        PushI        0                         
        Jump         -compare-3590-join        
        Label        -compare-3590-join        
        JumpTrue     -print-boolean-3591-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3591-join  
        Label        -print-boolean-3591-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3591-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3592-arg1        
        PushF        4.200000                  
        PushF        5.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3592-arg2        
        PushF        8.200000                  
        PushF        4.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3592-sub         
        FSubtract                              
        JumpFNeg     -compare-3592-true        
        Jump         -compare-3592-false       
        Label        -compare-3592-true        
        PushI        1                         
        Jump         -compare-3592-join        
        Label        -compare-3592-false       
        PushI        0                         
        Jump         -compare-3592-join        
        Label        -compare-3592-join        
        JumpTrue     -print-boolean-3593-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3593-join  
        Label        -print-boolean-3593-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3593-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3594-arg1        
        PushF        6.300000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3594-arg2        
        PushF        5.400000                  
        PushF        7.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3594-sub         
        FSubtract                              
        JumpFNeg     -compare-3594-true        
        Jump         -compare-3594-false       
        Label        -compare-3594-true        
        PushI        1                         
        Jump         -compare-3594-join        
        Label        -compare-3594-false       
        PushI        0                         
        Jump         -compare-3594-join        
        Label        -compare-3594-join        
        JumpTrue     -print-boolean-3595-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3595-join  
        Label        -print-boolean-3595-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3595-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3596-arg1        
        PushF        7.600000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3596-arg2        
        PushF        4.300000                  
        PushF        3.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3596-sub         
        FSubtract                              
        JumpFNeg     -compare-3596-true        
        Jump         -compare-3596-false       
        Label        -compare-3596-true        
        PushI        1                         
        Jump         -compare-3596-join        
        Label        -compare-3596-false       
        PushI        0                         
        Jump         -compare-3596-join        
        Label        -compare-3596-join        
        JumpTrue     -print-boolean-3597-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3597-join  
        Label        -print-boolean-3597-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3597-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3598-arg1        
        PushF        9.900000                  
        PushF        5.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3598-arg2        
        PushF        7.800000                  
        PushF        6.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3598-sub         
        FSubtract                              
        JumpFNeg     -compare-3598-true        
        Jump         -compare-3598-false       
        Label        -compare-3598-true        
        PushI        1                         
        Jump         -compare-3598-join        
        Label        -compare-3598-false       
        PushI        0                         
        Jump         -compare-3598-join        
        Label        -compare-3598-join        
        JumpTrue     -print-boolean-3599-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3599-join  
        Label        -print-boolean-3599-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3599-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3600-arg1        
        PushF        4.900000                  
        PushF        9.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3600-arg2        
        PushF        5.300000                  
        PushF        5.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3600-sub         
        FSubtract                              
        JumpFNeg     -compare-3600-true        
        Jump         -compare-3600-false       
        Label        -compare-3600-true        
        PushI        1                         
        Jump         -compare-3600-join        
        Label        -compare-3600-false       
        PushI        0                         
        Jump         -compare-3600-join        
        Label        -compare-3600-join        
        JumpTrue     -print-boolean-3601-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3601-join  
        Label        -print-boolean-3601-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3601-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3602-arg1        
        PushF        3.200000                  
        PushF        5.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3602-arg2        
        PushF        1.500000                  
        PushF        7.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3602-sub         
        FSubtract                              
        JumpFNeg     -compare-3602-true        
        Jump         -compare-3602-false       
        Label        -compare-3602-true        
        PushI        1                         
        Jump         -compare-3602-join        
        Label        -compare-3602-false       
        PushI        0                         
        Jump         -compare-3602-join        
        Label        -compare-3602-join        
        JumpTrue     -print-boolean-3603-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3603-join  
        Label        -print-boolean-3603-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3603-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3604-arg1        
        PushF        5.500000                  
        PushF        8.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3604-arg2        
        PushF        9.100000                  
        PushF        9.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3604-sub         
        FSubtract                              
        JumpFNeg     -compare-3604-true        
        Jump         -compare-3604-false       
        Label        -compare-3604-true        
        PushI        1                         
        Jump         -compare-3604-join        
        Label        -compare-3604-false       
        PushI        0                         
        Jump         -compare-3604-join        
        Label        -compare-3604-join        
        JumpTrue     -print-boolean-3605-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3605-join  
        Label        -print-boolean-3605-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3605-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3606-arg1        
        PushF        5.100000                  
        PushF        2.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3606-arg2        
        PushF        4.400000                  
        PushF        3.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3606-sub         
        FSubtract                              
        JumpFNeg     -compare-3606-true        
        Jump         -compare-3606-false       
        Label        -compare-3606-true        
        PushI        1                         
        Jump         -compare-3606-join        
        Label        -compare-3606-false       
        PushI        0                         
        Jump         -compare-3606-join        
        Label        -compare-3606-join        
        JumpTrue     -print-boolean-3607-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3607-join  
        Label        -print-boolean-3607-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3607-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3608-arg1        
        PushF        4.900000                  
        PushF        8.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3608-arg2        
        PushF        6.500000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3608-sub         
        FSubtract                              
        JumpFNeg     -compare-3608-true        
        Jump         -compare-3608-false       
        Label        -compare-3608-true        
        PushI        1                         
        Jump         -compare-3608-join        
        Label        -compare-3608-false       
        PushI        0                         
        Jump         -compare-3608-join        
        Label        -compare-3608-join        
        JumpTrue     -print-boolean-3609-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3609-join  
        Label        -print-boolean-3609-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3609-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3610-arg1        
        PushF        7.100000                  
        PushF        6.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3610-arg2        
        PushF        1.700000                  
        PushF        9.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3610-sub         
        FSubtract                              
        JumpFNeg     -compare-3610-true        
        Jump         -compare-3610-false       
        Label        -compare-3610-true        
        PushI        1                         
        Jump         -compare-3610-join        
        Label        -compare-3610-false       
        PushI        0                         
        Jump         -compare-3610-join        
        Label        -compare-3610-join        
        JumpTrue     -print-boolean-3611-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3611-join  
        Label        -print-boolean-3611-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3611-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3612-arg1        
        PushF        3.600000                  
        PushF        6.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3612-arg2        
        PushF        4.300000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3612-sub         
        FSubtract                              
        JumpFNeg     -compare-3612-true        
        Jump         -compare-3612-false       
        Label        -compare-3612-true        
        PushI        1                         
        Jump         -compare-3612-join        
        Label        -compare-3612-false       
        PushI        0                         
        Jump         -compare-3612-join        
        Label        -compare-3612-join        
        JumpTrue     -print-boolean-3613-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3613-join  
        Label        -print-boolean-3613-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3613-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
