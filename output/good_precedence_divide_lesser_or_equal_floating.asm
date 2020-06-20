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
        Label        -compare-3673-arg1        
        PushF        9.100000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3673-arg2        
        PushF        9.300000                  
        Label        -compare-3673-sub         
        FSubtract                              
        JumpFPos     -compare-3673-false       
        Jump         -compare-3673-true        
        Label        -compare-3673-true        
        PushI        1                         
        Jump         -compare-3673-join        
        Label        -compare-3673-false       
        PushI        0                         
        Jump         -compare-3673-join        
        Label        -compare-3673-join        
        JumpTrue     -print-boolean-3674-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3674-join  
        Label        -print-boolean-3674-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3674-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3675-arg1        
        PushF        1.200000                  
        PushF        7.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3675-arg2        
        PushF        4.500000                  
        Label        -compare-3675-sub         
        FSubtract                              
        JumpFPos     -compare-3675-false       
        Jump         -compare-3675-true        
        Label        -compare-3675-true        
        PushI        1                         
        Jump         -compare-3675-join        
        Label        -compare-3675-false       
        PushI        0                         
        Jump         -compare-3675-join        
        Label        -compare-3675-join        
        JumpTrue     -print-boolean-3676-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3676-join  
        Label        -print-boolean-3676-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3676-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3677-arg1        
        PushF        9.300000                  
        PushF        5.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3677-arg2        
        PushF        9.400000                  
        Label        -compare-3677-sub         
        FSubtract                              
        JumpFPos     -compare-3677-false       
        Jump         -compare-3677-true        
        Label        -compare-3677-true        
        PushI        1                         
        Jump         -compare-3677-join        
        Label        -compare-3677-false       
        PushI        0                         
        Jump         -compare-3677-join        
        Label        -compare-3677-join        
        JumpTrue     -print-boolean-3678-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3678-join  
        Label        -print-boolean-3678-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3678-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3679-arg1        
        PushF        2.300000                  
        PushF        8.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3679-arg2        
        PushF        1.500000                  
        Label        -compare-3679-sub         
        FSubtract                              
        JumpFPos     -compare-3679-false       
        Jump         -compare-3679-true        
        Label        -compare-3679-true        
        PushI        1                         
        Jump         -compare-3679-join        
        Label        -compare-3679-false       
        PushI        0                         
        Jump         -compare-3679-join        
        Label        -compare-3679-join        
        JumpTrue     -print-boolean-3680-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3680-join  
        Label        -print-boolean-3680-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3680-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3681-arg1        
        PushF        6.500000                  
        PushF        1.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3681-arg2        
        PushF        7.300000                  
        Label        -compare-3681-sub         
        FSubtract                              
        JumpFPos     -compare-3681-false       
        Jump         -compare-3681-true        
        Label        -compare-3681-true        
        PushI        1                         
        Jump         -compare-3681-join        
        Label        -compare-3681-false       
        PushI        0                         
        Jump         -compare-3681-join        
        Label        -compare-3681-join        
        JumpTrue     -print-boolean-3682-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3682-join  
        Label        -print-boolean-3682-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3682-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3683-arg1        
        PushF        3.000000                  
        PushF        3.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3683-arg2        
        PushF        2.800000                  
        Label        -compare-3683-sub         
        FSubtract                              
        JumpFPos     -compare-3683-false       
        Jump         -compare-3683-true        
        Label        -compare-3683-true        
        PushI        1                         
        Jump         -compare-3683-join        
        Label        -compare-3683-false       
        PushI        0                         
        Jump         -compare-3683-join        
        Label        -compare-3683-join        
        JumpTrue     -print-boolean-3684-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3684-join  
        Label        -print-boolean-3684-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3684-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3685-arg1        
        PushF        3.600000                  
        PushF        3.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3685-arg2        
        PushF        8.700000                  
        Label        -compare-3685-sub         
        FSubtract                              
        JumpFPos     -compare-3685-false       
        Jump         -compare-3685-true        
        Label        -compare-3685-true        
        PushI        1                         
        Jump         -compare-3685-join        
        Label        -compare-3685-false       
        PushI        0                         
        Jump         -compare-3685-join        
        Label        -compare-3685-join        
        JumpTrue     -print-boolean-3686-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3686-join  
        Label        -print-boolean-3686-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3686-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3687-arg1        
        PushF        7.300000                  
        PushF        5.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3687-arg2        
        PushF        8.800000                  
        Label        -compare-3687-sub         
        FSubtract                              
        JumpFPos     -compare-3687-false       
        Jump         -compare-3687-true        
        Label        -compare-3687-true        
        PushI        1                         
        Jump         -compare-3687-join        
        Label        -compare-3687-false       
        PushI        0                         
        Jump         -compare-3687-join        
        Label        -compare-3687-join        
        JumpTrue     -print-boolean-3688-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3688-join  
        Label        -print-boolean-3688-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3688-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3689-arg1        
        PushF        8.400000                  
        PushF        4.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3689-arg2        
        PushF        5.500000                  
        Label        -compare-3689-sub         
        FSubtract                              
        JumpFPos     -compare-3689-false       
        Jump         -compare-3689-true        
        Label        -compare-3689-true        
        PushI        1                         
        Jump         -compare-3689-join        
        Label        -compare-3689-false       
        PushI        0                         
        Jump         -compare-3689-join        
        Label        -compare-3689-join        
        JumpTrue     -print-boolean-3690-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3690-join  
        Label        -print-boolean-3690-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3690-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3691-arg1        
        PushF        4.100000                  
        PushF        4.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3691-arg2        
        PushF        3.300000                  
        Label        -compare-3691-sub         
        FSubtract                              
        JumpFPos     -compare-3691-false       
        Jump         -compare-3691-true        
        Label        -compare-3691-true        
        PushI        1                         
        Jump         -compare-3691-join        
        Label        -compare-3691-false       
        PushI        0                         
        Jump         -compare-3691-join        
        Label        -compare-3691-join        
        JumpTrue     -print-boolean-3692-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3692-join  
        Label        -print-boolean-3692-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3692-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3693-arg1        
        PushF        8.500000                  
        PushF        1.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3693-arg2        
        PushF        7.900000                  
        Label        -compare-3693-sub         
        FSubtract                              
        JumpFPos     -compare-3693-false       
        Jump         -compare-3693-true        
        Label        -compare-3693-true        
        PushI        1                         
        Jump         -compare-3693-join        
        Label        -compare-3693-false       
        PushI        0                         
        Jump         -compare-3693-join        
        Label        -compare-3693-join        
        JumpTrue     -print-boolean-3694-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3694-join  
        Label        -print-boolean-3694-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3694-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3695-arg1        
        PushF        2.700000                  
        PushF        4.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3695-arg2        
        PushF        7.800000                  
        Label        -compare-3695-sub         
        FSubtract                              
        JumpFPos     -compare-3695-false       
        Jump         -compare-3695-true        
        Label        -compare-3695-true        
        PushI        1                         
        Jump         -compare-3695-join        
        Label        -compare-3695-false       
        PushI        0                         
        Jump         -compare-3695-join        
        Label        -compare-3695-join        
        JumpTrue     -print-boolean-3696-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3696-join  
        Label        -print-boolean-3696-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3696-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3697-arg1        
        PushF        4.900000                  
        Label        -compare-3697-arg2        
        PushF        2.700000                  
        PushF        3.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3697-sub         
        FSubtract                              
        JumpFPos     -compare-3697-false       
        Jump         -compare-3697-true        
        Label        -compare-3697-true        
        PushI        1                         
        Jump         -compare-3697-join        
        Label        -compare-3697-false       
        PushI        0                         
        Jump         -compare-3697-join        
        Label        -compare-3697-join        
        JumpTrue     -print-boolean-3698-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3698-join  
        Label        -print-boolean-3698-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3698-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3699-arg1        
        PushF        4.900000                  
        Label        -compare-3699-arg2        
        PushF        6.000000                  
        PushF        6.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3699-sub         
        FSubtract                              
        JumpFPos     -compare-3699-false       
        Jump         -compare-3699-true        
        Label        -compare-3699-true        
        PushI        1                         
        Jump         -compare-3699-join        
        Label        -compare-3699-false       
        PushI        0                         
        Jump         -compare-3699-join        
        Label        -compare-3699-join        
        JumpTrue     -print-boolean-3700-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3700-join  
        Label        -print-boolean-3700-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3700-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3701-arg1        
        PushF        2.300000                  
        Label        -compare-3701-arg2        
        PushF        1.800000                  
        PushF        5.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3701-sub         
        FSubtract                              
        JumpFPos     -compare-3701-false       
        Jump         -compare-3701-true        
        Label        -compare-3701-true        
        PushI        1                         
        Jump         -compare-3701-join        
        Label        -compare-3701-false       
        PushI        0                         
        Jump         -compare-3701-join        
        Label        -compare-3701-join        
        JumpTrue     -print-boolean-3702-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3702-join  
        Label        -print-boolean-3702-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3702-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3703-arg1        
        PushF        2.900000                  
        Label        -compare-3703-arg2        
        PushF        5.000000                  
        PushF        8.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3703-sub         
        FSubtract                              
        JumpFPos     -compare-3703-false       
        Jump         -compare-3703-true        
        Label        -compare-3703-true        
        PushI        1                         
        Jump         -compare-3703-join        
        Label        -compare-3703-false       
        PushI        0                         
        Jump         -compare-3703-join        
        Label        -compare-3703-join        
        JumpTrue     -print-boolean-3704-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3704-join  
        Label        -print-boolean-3704-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3704-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3705-arg1        
        PushF        6.600000                  
        Label        -compare-3705-arg2        
        PushF        9.600000                  
        PushF        8.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3705-sub         
        FSubtract                              
        JumpFPos     -compare-3705-false       
        Jump         -compare-3705-true        
        Label        -compare-3705-true        
        PushI        1                         
        Jump         -compare-3705-join        
        Label        -compare-3705-false       
        PushI        0                         
        Jump         -compare-3705-join        
        Label        -compare-3705-join        
        JumpTrue     -print-boolean-3706-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3706-join  
        Label        -print-boolean-3706-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3706-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3707-arg1        
        PushF        9.000000                  
        Label        -compare-3707-arg2        
        PushF        5.000000                  
        PushF        6.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3707-sub         
        FSubtract                              
        JumpFPos     -compare-3707-false       
        Jump         -compare-3707-true        
        Label        -compare-3707-true        
        PushI        1                         
        Jump         -compare-3707-join        
        Label        -compare-3707-false       
        PushI        0                         
        Jump         -compare-3707-join        
        Label        -compare-3707-join        
        JumpTrue     -print-boolean-3708-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3708-join  
        Label        -print-boolean-3708-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3708-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3709-arg1        
        PushF        1.000000                  
        Label        -compare-3709-arg2        
        PushF        7.600000                  
        PushF        8.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3709-sub         
        FSubtract                              
        JumpFPos     -compare-3709-false       
        Jump         -compare-3709-true        
        Label        -compare-3709-true        
        PushI        1                         
        Jump         -compare-3709-join        
        Label        -compare-3709-false       
        PushI        0                         
        Jump         -compare-3709-join        
        Label        -compare-3709-join        
        JumpTrue     -print-boolean-3710-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3710-join  
        Label        -print-boolean-3710-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3710-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3711-arg1        
        PushF        9.800000                  
        Label        -compare-3711-arg2        
        PushF        1.400000                  
        PushF        8.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3711-sub         
        FSubtract                              
        JumpFPos     -compare-3711-false       
        Jump         -compare-3711-true        
        Label        -compare-3711-true        
        PushI        1                         
        Jump         -compare-3711-join        
        Label        -compare-3711-false       
        PushI        0                         
        Jump         -compare-3711-join        
        Label        -compare-3711-join        
        JumpTrue     -print-boolean-3712-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3712-join  
        Label        -print-boolean-3712-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3712-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3713-arg1        
        PushF        3.600000                  
        Label        -compare-3713-arg2        
        PushF        9.400000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3713-sub         
        FSubtract                              
        JumpFPos     -compare-3713-false       
        Jump         -compare-3713-true        
        Label        -compare-3713-true        
        PushI        1                         
        Jump         -compare-3713-join        
        Label        -compare-3713-false       
        PushI        0                         
        Jump         -compare-3713-join        
        Label        -compare-3713-join        
        JumpTrue     -print-boolean-3714-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3714-join  
        Label        -print-boolean-3714-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3714-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3715-arg1        
        PushF        9.500000                  
        Label        -compare-3715-arg2        
        PushF        8.300000                  
        PushF        5.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3715-sub         
        FSubtract                              
        JumpFPos     -compare-3715-false       
        Jump         -compare-3715-true        
        Label        -compare-3715-true        
        PushI        1                         
        Jump         -compare-3715-join        
        Label        -compare-3715-false       
        PushI        0                         
        Jump         -compare-3715-join        
        Label        -compare-3715-join        
        JumpTrue     -print-boolean-3716-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3716-join  
        Label        -print-boolean-3716-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3716-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3717-arg1        
        PushF        1.100000                  
        Label        -compare-3717-arg2        
        PushF        6.200000                  
        PushF        3.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3717-sub         
        FSubtract                              
        JumpFPos     -compare-3717-false       
        Jump         -compare-3717-true        
        Label        -compare-3717-true        
        PushI        1                         
        Jump         -compare-3717-join        
        Label        -compare-3717-false       
        PushI        0                         
        Jump         -compare-3717-join        
        Label        -compare-3717-join        
        JumpTrue     -print-boolean-3718-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3718-join  
        Label        -print-boolean-3718-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3718-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3719-arg1        
        PushF        1.500000                  
        Label        -compare-3719-arg2        
        PushF        3.200000                  
        PushF        5.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3719-sub         
        FSubtract                              
        JumpFPos     -compare-3719-false       
        Jump         -compare-3719-true        
        Label        -compare-3719-true        
        PushI        1                         
        Jump         -compare-3719-join        
        Label        -compare-3719-false       
        PushI        0                         
        Jump         -compare-3719-join        
        Label        -compare-3719-join        
        JumpTrue     -print-boolean-3720-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3720-join  
        Label        -print-boolean-3720-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3720-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3721-arg1        
        PushF        8.500000                  
        PushF        6.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3721-arg2        
        PushF        5.300000                  
        PushF        2.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3721-sub         
        FSubtract                              
        JumpFPos     -compare-3721-false       
        Jump         -compare-3721-true        
        Label        -compare-3721-true        
        PushI        1                         
        Jump         -compare-3721-join        
        Label        -compare-3721-false       
        PushI        0                         
        Jump         -compare-3721-join        
        Label        -compare-3721-join        
        JumpTrue     -print-boolean-3722-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3722-join  
        Label        -print-boolean-3722-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3722-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3723-arg1        
        PushF        2.700000                  
        PushF        2.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3723-arg2        
        PushF        1.600000                  
        PushF        4.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3723-sub         
        FSubtract                              
        JumpFPos     -compare-3723-false       
        Jump         -compare-3723-true        
        Label        -compare-3723-true        
        PushI        1                         
        Jump         -compare-3723-join        
        Label        -compare-3723-false       
        PushI        0                         
        Jump         -compare-3723-join        
        Label        -compare-3723-join        
        JumpTrue     -print-boolean-3724-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3724-join  
        Label        -print-boolean-3724-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3724-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3725-arg1        
        PushF        4.600000                  
        PushF        5.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3725-arg2        
        PushF        4.000000                  
        PushF        3.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3725-sub         
        FSubtract                              
        JumpFPos     -compare-3725-false       
        Jump         -compare-3725-true        
        Label        -compare-3725-true        
        PushI        1                         
        Jump         -compare-3725-join        
        Label        -compare-3725-false       
        PushI        0                         
        Jump         -compare-3725-join        
        Label        -compare-3725-join        
        JumpTrue     -print-boolean-3726-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3726-join  
        Label        -print-boolean-3726-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3726-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3727-arg1        
        PushF        4.100000                  
        PushF        7.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3727-arg2        
        PushF        5.200000                  
        PushF        1.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3727-sub         
        FSubtract                              
        JumpFPos     -compare-3727-false       
        Jump         -compare-3727-true        
        Label        -compare-3727-true        
        PushI        1                         
        Jump         -compare-3727-join        
        Label        -compare-3727-false       
        PushI        0                         
        Jump         -compare-3727-join        
        Label        -compare-3727-join        
        JumpTrue     -print-boolean-3728-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3728-join  
        Label        -print-boolean-3728-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3728-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3729-arg1        
        PushF        6.600000                  
        PushF        7.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3729-arg2        
        PushF        9.800000                  
        PushF        5.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3729-sub         
        FSubtract                              
        JumpFPos     -compare-3729-false       
        Jump         -compare-3729-true        
        Label        -compare-3729-true        
        PushI        1                         
        Jump         -compare-3729-join        
        Label        -compare-3729-false       
        PushI        0                         
        Jump         -compare-3729-join        
        Label        -compare-3729-join        
        JumpTrue     -print-boolean-3730-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3730-join  
        Label        -print-boolean-3730-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3730-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3731-arg1        
        PushF        3.500000                  
        PushF        6.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3731-arg2        
        PushF        2.100000                  
        PushF        6.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3731-sub         
        FSubtract                              
        JumpFPos     -compare-3731-false       
        Jump         -compare-3731-true        
        Label        -compare-3731-true        
        PushI        1                         
        Jump         -compare-3731-join        
        Label        -compare-3731-false       
        PushI        0                         
        Jump         -compare-3731-join        
        Label        -compare-3731-join        
        JumpTrue     -print-boolean-3732-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3732-join  
        Label        -print-boolean-3732-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3732-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3733-arg1        
        PushF        7.500000                  
        PushF        1.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3733-arg2        
        PushF        5.100000                  
        PushF        5.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3733-sub         
        FSubtract                              
        JumpFPos     -compare-3733-false       
        Jump         -compare-3733-true        
        Label        -compare-3733-true        
        PushI        1                         
        Jump         -compare-3733-join        
        Label        -compare-3733-false       
        PushI        0                         
        Jump         -compare-3733-join        
        Label        -compare-3733-join        
        JumpTrue     -print-boolean-3734-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3734-join  
        Label        -print-boolean-3734-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3734-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3735-arg1        
        PushF        6.600000                  
        PushF        1.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3735-arg2        
        PushF        4.700000                  
        PushF        2.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3735-sub         
        FSubtract                              
        JumpFPos     -compare-3735-false       
        Jump         -compare-3735-true        
        Label        -compare-3735-true        
        PushI        1                         
        Jump         -compare-3735-join        
        Label        -compare-3735-false       
        PushI        0                         
        Jump         -compare-3735-join        
        Label        -compare-3735-join        
        JumpTrue     -print-boolean-3736-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3736-join  
        Label        -print-boolean-3736-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3736-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3737-arg1        
        PushF        7.500000                  
        PushF        9.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3737-arg2        
        PushF        6.700000                  
        PushF        2.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3737-sub         
        FSubtract                              
        JumpFPos     -compare-3737-false       
        Jump         -compare-3737-true        
        Label        -compare-3737-true        
        PushI        1                         
        Jump         -compare-3737-join        
        Label        -compare-3737-false       
        PushI        0                         
        Jump         -compare-3737-join        
        Label        -compare-3737-join        
        JumpTrue     -print-boolean-3738-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3738-join  
        Label        -print-boolean-3738-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3738-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3739-arg1        
        PushF        3.200000                  
        PushF        1.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3739-arg2        
        PushF        4.000000                  
        PushF        8.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3739-sub         
        FSubtract                              
        JumpFPos     -compare-3739-false       
        Jump         -compare-3739-true        
        Label        -compare-3739-true        
        PushI        1                         
        Jump         -compare-3739-join        
        Label        -compare-3739-false       
        PushI        0                         
        Jump         -compare-3739-join        
        Label        -compare-3739-join        
        JumpTrue     -print-boolean-3740-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3740-join  
        Label        -print-boolean-3740-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3740-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3741-arg1        
        PushF        9.500000                  
        PushF        3.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3741-arg2        
        PushF        6.300000                  
        PushF        1.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3741-sub         
        FSubtract                              
        JumpFPos     -compare-3741-false       
        Jump         -compare-3741-true        
        Label        -compare-3741-true        
        PushI        1                         
        Jump         -compare-3741-join        
        Label        -compare-3741-false       
        PushI        0                         
        Jump         -compare-3741-join        
        Label        -compare-3741-join        
        JumpTrue     -print-boolean-3742-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3742-join  
        Label        -print-boolean-3742-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3742-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3743-arg1        
        PushF        6.100000                  
        PushF        4.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3743-arg2        
        PushF        4.200000                  
        PushF        9.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3743-sub         
        FSubtract                              
        JumpFPos     -compare-3743-false       
        Jump         -compare-3743-true        
        Label        -compare-3743-true        
        PushI        1                         
        Jump         -compare-3743-join        
        Label        -compare-3743-false       
        PushI        0                         
        Jump         -compare-3743-join        
        Label        -compare-3743-join        
        JumpTrue     -print-boolean-3744-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3744-join  
        Label        -print-boolean-3744-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3744-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
