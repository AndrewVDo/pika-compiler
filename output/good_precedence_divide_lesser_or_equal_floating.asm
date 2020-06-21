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
        Label        -compare-3686-arg1        
        PushF        9.100000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3686-arg2        
        PushF        9.300000                  
        Label        -compare-3686-sub         
        FSubtract                              
        JumpFPos     -compare-3686-false       
        Jump         -compare-3686-true        
        Label        -compare-3686-true        
        PushI        1                         
        Jump         -compare-3686-join        
        Label        -compare-3686-false       
        PushI        0                         
        Jump         -compare-3686-join        
        Label        -compare-3686-join        
        JumpTrue     -print-boolean-3687-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3687-join  
        Label        -print-boolean-3687-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3687-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3688-arg1        
        PushF        1.200000                  
        PushF        7.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3688-arg2        
        PushF        4.500000                  
        Label        -compare-3688-sub         
        FSubtract                              
        JumpFPos     -compare-3688-false       
        Jump         -compare-3688-true        
        Label        -compare-3688-true        
        PushI        1                         
        Jump         -compare-3688-join        
        Label        -compare-3688-false       
        PushI        0                         
        Jump         -compare-3688-join        
        Label        -compare-3688-join        
        JumpTrue     -print-boolean-3689-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3689-join  
        Label        -print-boolean-3689-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3689-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3690-arg1        
        PushF        9.300000                  
        PushF        5.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3690-arg2        
        PushF        9.400000                  
        Label        -compare-3690-sub         
        FSubtract                              
        JumpFPos     -compare-3690-false       
        Jump         -compare-3690-true        
        Label        -compare-3690-true        
        PushI        1                         
        Jump         -compare-3690-join        
        Label        -compare-3690-false       
        PushI        0                         
        Jump         -compare-3690-join        
        Label        -compare-3690-join        
        JumpTrue     -print-boolean-3691-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3691-join  
        Label        -print-boolean-3691-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3691-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3692-arg1        
        PushF        2.300000                  
        PushF        8.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3692-arg2        
        PushF        1.500000                  
        Label        -compare-3692-sub         
        FSubtract                              
        JumpFPos     -compare-3692-false       
        Jump         -compare-3692-true        
        Label        -compare-3692-true        
        PushI        1                         
        Jump         -compare-3692-join        
        Label        -compare-3692-false       
        PushI        0                         
        Jump         -compare-3692-join        
        Label        -compare-3692-join        
        JumpTrue     -print-boolean-3693-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3693-join  
        Label        -print-boolean-3693-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3693-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3694-arg1        
        PushF        6.500000                  
        PushF        1.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3694-arg2        
        PushF        7.300000                  
        Label        -compare-3694-sub         
        FSubtract                              
        JumpFPos     -compare-3694-false       
        Jump         -compare-3694-true        
        Label        -compare-3694-true        
        PushI        1                         
        Jump         -compare-3694-join        
        Label        -compare-3694-false       
        PushI        0                         
        Jump         -compare-3694-join        
        Label        -compare-3694-join        
        JumpTrue     -print-boolean-3695-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3695-join  
        Label        -print-boolean-3695-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3695-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3696-arg1        
        PushF        3.000000                  
        PushF        3.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3696-arg2        
        PushF        2.800000                  
        Label        -compare-3696-sub         
        FSubtract                              
        JumpFPos     -compare-3696-false       
        Jump         -compare-3696-true        
        Label        -compare-3696-true        
        PushI        1                         
        Jump         -compare-3696-join        
        Label        -compare-3696-false       
        PushI        0                         
        Jump         -compare-3696-join        
        Label        -compare-3696-join        
        JumpTrue     -print-boolean-3697-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3697-join  
        Label        -print-boolean-3697-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3697-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3698-arg1        
        PushF        3.600000                  
        PushF        3.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3698-arg2        
        PushF        8.700000                  
        Label        -compare-3698-sub         
        FSubtract                              
        JumpFPos     -compare-3698-false       
        Jump         -compare-3698-true        
        Label        -compare-3698-true        
        PushI        1                         
        Jump         -compare-3698-join        
        Label        -compare-3698-false       
        PushI        0                         
        Jump         -compare-3698-join        
        Label        -compare-3698-join        
        JumpTrue     -print-boolean-3699-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3699-join  
        Label        -print-boolean-3699-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3699-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3700-arg1        
        PushF        7.300000                  
        PushF        5.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3700-arg2        
        PushF        8.800000                  
        Label        -compare-3700-sub         
        FSubtract                              
        JumpFPos     -compare-3700-false       
        Jump         -compare-3700-true        
        Label        -compare-3700-true        
        PushI        1                         
        Jump         -compare-3700-join        
        Label        -compare-3700-false       
        PushI        0                         
        Jump         -compare-3700-join        
        Label        -compare-3700-join        
        JumpTrue     -print-boolean-3701-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3701-join  
        Label        -print-boolean-3701-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3701-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3702-arg1        
        PushF        8.400000                  
        PushF        4.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3702-arg2        
        PushF        5.500000                  
        Label        -compare-3702-sub         
        FSubtract                              
        JumpFPos     -compare-3702-false       
        Jump         -compare-3702-true        
        Label        -compare-3702-true        
        PushI        1                         
        Jump         -compare-3702-join        
        Label        -compare-3702-false       
        PushI        0                         
        Jump         -compare-3702-join        
        Label        -compare-3702-join        
        JumpTrue     -print-boolean-3703-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3703-join  
        Label        -print-boolean-3703-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3703-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3704-arg1        
        PushF        4.100000                  
        PushF        4.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3704-arg2        
        PushF        3.300000                  
        Label        -compare-3704-sub         
        FSubtract                              
        JumpFPos     -compare-3704-false       
        Jump         -compare-3704-true        
        Label        -compare-3704-true        
        PushI        1                         
        Jump         -compare-3704-join        
        Label        -compare-3704-false       
        PushI        0                         
        Jump         -compare-3704-join        
        Label        -compare-3704-join        
        JumpTrue     -print-boolean-3705-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3705-join  
        Label        -print-boolean-3705-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3705-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3706-arg1        
        PushF        8.500000                  
        PushF        1.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3706-arg2        
        PushF        7.900000                  
        Label        -compare-3706-sub         
        FSubtract                              
        JumpFPos     -compare-3706-false       
        Jump         -compare-3706-true        
        Label        -compare-3706-true        
        PushI        1                         
        Jump         -compare-3706-join        
        Label        -compare-3706-false       
        PushI        0                         
        Jump         -compare-3706-join        
        Label        -compare-3706-join        
        JumpTrue     -print-boolean-3707-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3707-join  
        Label        -print-boolean-3707-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3707-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3708-arg1        
        PushF        2.700000                  
        PushF        4.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3708-arg2        
        PushF        7.800000                  
        Label        -compare-3708-sub         
        FSubtract                              
        JumpFPos     -compare-3708-false       
        Jump         -compare-3708-true        
        Label        -compare-3708-true        
        PushI        1                         
        Jump         -compare-3708-join        
        Label        -compare-3708-false       
        PushI        0                         
        Jump         -compare-3708-join        
        Label        -compare-3708-join        
        JumpTrue     -print-boolean-3709-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3709-join  
        Label        -print-boolean-3709-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3709-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3710-arg1        
        PushF        4.900000                  
        Label        -compare-3710-arg2        
        PushF        2.700000                  
        PushF        3.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3710-sub         
        FSubtract                              
        JumpFPos     -compare-3710-false       
        Jump         -compare-3710-true        
        Label        -compare-3710-true        
        PushI        1                         
        Jump         -compare-3710-join        
        Label        -compare-3710-false       
        PushI        0                         
        Jump         -compare-3710-join        
        Label        -compare-3710-join        
        JumpTrue     -print-boolean-3711-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3711-join  
        Label        -print-boolean-3711-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3711-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3712-arg1        
        PushF        4.900000                  
        Label        -compare-3712-arg2        
        PushF        6.000000                  
        PushF        6.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3712-sub         
        FSubtract                              
        JumpFPos     -compare-3712-false       
        Jump         -compare-3712-true        
        Label        -compare-3712-true        
        PushI        1                         
        Jump         -compare-3712-join        
        Label        -compare-3712-false       
        PushI        0                         
        Jump         -compare-3712-join        
        Label        -compare-3712-join        
        JumpTrue     -print-boolean-3713-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3713-join  
        Label        -print-boolean-3713-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3713-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3714-arg1        
        PushF        2.300000                  
        Label        -compare-3714-arg2        
        PushF        1.800000                  
        PushF        5.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3714-sub         
        FSubtract                              
        JumpFPos     -compare-3714-false       
        Jump         -compare-3714-true        
        Label        -compare-3714-true        
        PushI        1                         
        Jump         -compare-3714-join        
        Label        -compare-3714-false       
        PushI        0                         
        Jump         -compare-3714-join        
        Label        -compare-3714-join        
        JumpTrue     -print-boolean-3715-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3715-join  
        Label        -print-boolean-3715-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3715-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3716-arg1        
        PushF        2.900000                  
        Label        -compare-3716-arg2        
        PushF        5.000000                  
        PushF        8.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3716-sub         
        FSubtract                              
        JumpFPos     -compare-3716-false       
        Jump         -compare-3716-true        
        Label        -compare-3716-true        
        PushI        1                         
        Jump         -compare-3716-join        
        Label        -compare-3716-false       
        PushI        0                         
        Jump         -compare-3716-join        
        Label        -compare-3716-join        
        JumpTrue     -print-boolean-3717-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3717-join  
        Label        -print-boolean-3717-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3717-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3718-arg1        
        PushF        6.600000                  
        Label        -compare-3718-arg2        
        PushF        9.600000                  
        PushF        8.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3718-sub         
        FSubtract                              
        JumpFPos     -compare-3718-false       
        Jump         -compare-3718-true        
        Label        -compare-3718-true        
        PushI        1                         
        Jump         -compare-3718-join        
        Label        -compare-3718-false       
        PushI        0                         
        Jump         -compare-3718-join        
        Label        -compare-3718-join        
        JumpTrue     -print-boolean-3719-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3719-join  
        Label        -print-boolean-3719-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3719-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3720-arg1        
        PushF        9.000000                  
        Label        -compare-3720-arg2        
        PushF        5.000000                  
        PushF        6.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3720-sub         
        FSubtract                              
        JumpFPos     -compare-3720-false       
        Jump         -compare-3720-true        
        Label        -compare-3720-true        
        PushI        1                         
        Jump         -compare-3720-join        
        Label        -compare-3720-false       
        PushI        0                         
        Jump         -compare-3720-join        
        Label        -compare-3720-join        
        JumpTrue     -print-boolean-3721-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3721-join  
        Label        -print-boolean-3721-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3721-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3722-arg1        
        PushF        1.000000                  
        Label        -compare-3722-arg2        
        PushF        7.600000                  
        PushF        8.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3722-sub         
        FSubtract                              
        JumpFPos     -compare-3722-false       
        Jump         -compare-3722-true        
        Label        -compare-3722-true        
        PushI        1                         
        Jump         -compare-3722-join        
        Label        -compare-3722-false       
        PushI        0                         
        Jump         -compare-3722-join        
        Label        -compare-3722-join        
        JumpTrue     -print-boolean-3723-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3723-join  
        Label        -print-boolean-3723-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3723-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3724-arg1        
        PushF        9.800000                  
        Label        -compare-3724-arg2        
        PushF        1.400000                  
        PushF        8.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3724-sub         
        FSubtract                              
        JumpFPos     -compare-3724-false       
        Jump         -compare-3724-true        
        Label        -compare-3724-true        
        PushI        1                         
        Jump         -compare-3724-join        
        Label        -compare-3724-false       
        PushI        0                         
        Jump         -compare-3724-join        
        Label        -compare-3724-join        
        JumpTrue     -print-boolean-3725-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3725-join  
        Label        -print-boolean-3725-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3725-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3726-arg1        
        PushF        3.600000                  
        Label        -compare-3726-arg2        
        PushF        9.400000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3726-sub         
        FSubtract                              
        JumpFPos     -compare-3726-false       
        Jump         -compare-3726-true        
        Label        -compare-3726-true        
        PushI        1                         
        Jump         -compare-3726-join        
        Label        -compare-3726-false       
        PushI        0                         
        Jump         -compare-3726-join        
        Label        -compare-3726-join        
        JumpTrue     -print-boolean-3727-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3727-join  
        Label        -print-boolean-3727-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3727-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3728-arg1        
        PushF        9.500000                  
        Label        -compare-3728-arg2        
        PushF        8.300000                  
        PushF        5.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3728-sub         
        FSubtract                              
        JumpFPos     -compare-3728-false       
        Jump         -compare-3728-true        
        Label        -compare-3728-true        
        PushI        1                         
        Jump         -compare-3728-join        
        Label        -compare-3728-false       
        PushI        0                         
        Jump         -compare-3728-join        
        Label        -compare-3728-join        
        JumpTrue     -print-boolean-3729-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3729-join  
        Label        -print-boolean-3729-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3729-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3730-arg1        
        PushF        1.100000                  
        Label        -compare-3730-arg2        
        PushF        6.200000                  
        PushF        3.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3730-sub         
        FSubtract                              
        JumpFPos     -compare-3730-false       
        Jump         -compare-3730-true        
        Label        -compare-3730-true        
        PushI        1                         
        Jump         -compare-3730-join        
        Label        -compare-3730-false       
        PushI        0                         
        Jump         -compare-3730-join        
        Label        -compare-3730-join        
        JumpTrue     -print-boolean-3731-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3731-join  
        Label        -print-boolean-3731-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3731-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3732-arg1        
        PushF        1.500000                  
        Label        -compare-3732-arg2        
        PushF        3.200000                  
        PushF        5.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3732-sub         
        FSubtract                              
        JumpFPos     -compare-3732-false       
        Jump         -compare-3732-true        
        Label        -compare-3732-true        
        PushI        1                         
        Jump         -compare-3732-join        
        Label        -compare-3732-false       
        PushI        0                         
        Jump         -compare-3732-join        
        Label        -compare-3732-join        
        JumpTrue     -print-boolean-3733-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3733-join  
        Label        -print-boolean-3733-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3733-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3734-arg1        
        PushF        8.500000                  
        PushF        6.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3734-arg2        
        PushF        5.300000                  
        PushF        2.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3734-sub         
        FSubtract                              
        JumpFPos     -compare-3734-false       
        Jump         -compare-3734-true        
        Label        -compare-3734-true        
        PushI        1                         
        Jump         -compare-3734-join        
        Label        -compare-3734-false       
        PushI        0                         
        Jump         -compare-3734-join        
        Label        -compare-3734-join        
        JumpTrue     -print-boolean-3735-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3735-join  
        Label        -print-boolean-3735-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3735-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3736-arg1        
        PushF        2.700000                  
        PushF        2.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3736-arg2        
        PushF        1.600000                  
        PushF        4.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3736-sub         
        FSubtract                              
        JumpFPos     -compare-3736-false       
        Jump         -compare-3736-true        
        Label        -compare-3736-true        
        PushI        1                         
        Jump         -compare-3736-join        
        Label        -compare-3736-false       
        PushI        0                         
        Jump         -compare-3736-join        
        Label        -compare-3736-join        
        JumpTrue     -print-boolean-3737-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3737-join  
        Label        -print-boolean-3737-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3737-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3738-arg1        
        PushF        4.600000                  
        PushF        5.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3738-arg2        
        PushF        4.000000                  
        PushF        3.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3738-sub         
        FSubtract                              
        JumpFPos     -compare-3738-false       
        Jump         -compare-3738-true        
        Label        -compare-3738-true        
        PushI        1                         
        Jump         -compare-3738-join        
        Label        -compare-3738-false       
        PushI        0                         
        Jump         -compare-3738-join        
        Label        -compare-3738-join        
        JumpTrue     -print-boolean-3739-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3739-join  
        Label        -print-boolean-3739-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3739-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3740-arg1        
        PushF        4.100000                  
        PushF        7.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3740-arg2        
        PushF        5.200000                  
        PushF        1.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3740-sub         
        FSubtract                              
        JumpFPos     -compare-3740-false       
        Jump         -compare-3740-true        
        Label        -compare-3740-true        
        PushI        1                         
        Jump         -compare-3740-join        
        Label        -compare-3740-false       
        PushI        0                         
        Jump         -compare-3740-join        
        Label        -compare-3740-join        
        JumpTrue     -print-boolean-3741-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3741-join  
        Label        -print-boolean-3741-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3741-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3742-arg1        
        PushF        6.600000                  
        PushF        7.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3742-arg2        
        PushF        9.800000                  
        PushF        5.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3742-sub         
        FSubtract                              
        JumpFPos     -compare-3742-false       
        Jump         -compare-3742-true        
        Label        -compare-3742-true        
        PushI        1                         
        Jump         -compare-3742-join        
        Label        -compare-3742-false       
        PushI        0                         
        Jump         -compare-3742-join        
        Label        -compare-3742-join        
        JumpTrue     -print-boolean-3743-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3743-join  
        Label        -print-boolean-3743-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3743-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3744-arg1        
        PushF        3.500000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3744-arg2        
        PushF        2.100000                  
        PushF        6.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3744-sub         
        FSubtract                              
        JumpFPos     -compare-3744-false       
        Jump         -compare-3744-true        
        Label        -compare-3744-true        
        PushI        1                         
        Jump         -compare-3744-join        
        Label        -compare-3744-false       
        PushI        0                         
        Jump         -compare-3744-join        
        Label        -compare-3744-join        
        JumpTrue     -print-boolean-3745-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3745-join  
        Label        -print-boolean-3745-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3745-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3746-arg1        
        PushF        7.500000                  
        PushF        1.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3746-arg2        
        PushF        5.100000                  
        PushF        5.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3746-sub         
        FSubtract                              
        JumpFPos     -compare-3746-false       
        Jump         -compare-3746-true        
        Label        -compare-3746-true        
        PushI        1                         
        Jump         -compare-3746-join        
        Label        -compare-3746-false       
        PushI        0                         
        Jump         -compare-3746-join        
        Label        -compare-3746-join        
        JumpTrue     -print-boolean-3747-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3747-join  
        Label        -print-boolean-3747-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3747-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3748-arg1        
        PushF        6.600000                  
        PushF        1.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3748-arg2        
        PushF        4.700000                  
        PushF        2.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3748-sub         
        FSubtract                              
        JumpFPos     -compare-3748-false       
        Jump         -compare-3748-true        
        Label        -compare-3748-true        
        PushI        1                         
        Jump         -compare-3748-join        
        Label        -compare-3748-false       
        PushI        0                         
        Jump         -compare-3748-join        
        Label        -compare-3748-join        
        JumpTrue     -print-boolean-3749-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3749-join  
        Label        -print-boolean-3749-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3749-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3750-arg1        
        PushF        7.500000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3750-arg2        
        PushF        6.700000                  
        PushF        2.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3750-sub         
        FSubtract                              
        JumpFPos     -compare-3750-false       
        Jump         -compare-3750-true        
        Label        -compare-3750-true        
        PushI        1                         
        Jump         -compare-3750-join        
        Label        -compare-3750-false       
        PushI        0                         
        Jump         -compare-3750-join        
        Label        -compare-3750-join        
        JumpTrue     -print-boolean-3751-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3751-join  
        Label        -print-boolean-3751-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3751-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3752-arg1        
        PushF        3.200000                  
        PushF        1.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3752-arg2        
        PushF        4.000000                  
        PushF        8.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3752-sub         
        FSubtract                              
        JumpFPos     -compare-3752-false       
        Jump         -compare-3752-true        
        Label        -compare-3752-true        
        PushI        1                         
        Jump         -compare-3752-join        
        Label        -compare-3752-false       
        PushI        0                         
        Jump         -compare-3752-join        
        Label        -compare-3752-join        
        JumpTrue     -print-boolean-3753-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3753-join  
        Label        -print-boolean-3753-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3753-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3754-arg1        
        PushF        9.500000                  
        PushF        3.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3754-arg2        
        PushF        6.300000                  
        PushF        1.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3754-sub         
        FSubtract                              
        JumpFPos     -compare-3754-false       
        Jump         -compare-3754-true        
        Label        -compare-3754-true        
        PushI        1                         
        Jump         -compare-3754-join        
        Label        -compare-3754-false       
        PushI        0                         
        Jump         -compare-3754-join        
        Label        -compare-3754-join        
        JumpTrue     -print-boolean-3755-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3755-join  
        Label        -print-boolean-3755-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3755-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3756-arg1        
        PushF        6.100000                  
        PushF        4.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3756-arg2        
        PushF        4.200000                  
        PushF        9.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3756-sub         
        FSubtract                              
        JumpFPos     -compare-3756-false       
        Jump         -compare-3756-true        
        Label        -compare-3756-true        
        PushI        1                         
        Jump         -compare-3756-join        
        Label        -compare-3756-false       
        PushI        0                         
        Jump         -compare-3756-join        
        Label        -compare-3756-join        
        JumpTrue     -print-boolean-3757-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3757-join  
        Label        -print-boolean-3757-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3757-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
