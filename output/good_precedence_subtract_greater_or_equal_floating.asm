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
        Label        -compare-5798-arg1        
        PushF        3.300000                  
        PushF        4.500000                  
        FSubtract                              
        Label        -compare-5798-arg2        
        PushF        3.400000                  
        Label        -compare-5798-sub         
        FSubtract                              
        JumpFNeg     -compare-5798-false       
        Jump         -compare-5798-true        
        Label        -compare-5798-true        
        PushI        1                         
        Jump         -compare-5798-join        
        Label        -compare-5798-false       
        PushI        0                         
        Jump         -compare-5798-join        
        Label        -compare-5798-join        
        JumpTrue     -print-boolean-5799-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5799-join  
        Label        -print-boolean-5799-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5799-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5800-arg1        
        PushF        7.200000                  
        PushF        4.800000                  
        FSubtract                              
        Label        -compare-5800-arg2        
        PushF        1.100000                  
        Label        -compare-5800-sub         
        FSubtract                              
        JumpFNeg     -compare-5800-false       
        Jump         -compare-5800-true        
        Label        -compare-5800-true        
        PushI        1                         
        Jump         -compare-5800-join        
        Label        -compare-5800-false       
        PushI        0                         
        Jump         -compare-5800-join        
        Label        -compare-5800-join        
        JumpTrue     -print-boolean-5801-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5801-join  
        Label        -print-boolean-5801-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5801-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5802-arg1        
        PushF        6.900000                  
        PushF        9.800000                  
        FSubtract                              
        Label        -compare-5802-arg2        
        PushF        8.900000                  
        Label        -compare-5802-sub         
        FSubtract                              
        JumpFNeg     -compare-5802-false       
        Jump         -compare-5802-true        
        Label        -compare-5802-true        
        PushI        1                         
        Jump         -compare-5802-join        
        Label        -compare-5802-false       
        PushI        0                         
        Jump         -compare-5802-join        
        Label        -compare-5802-join        
        JumpTrue     -print-boolean-5803-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5803-join  
        Label        -print-boolean-5803-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5803-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5804-arg1        
        PushF        9.500000                  
        PushF        9.300000                  
        FSubtract                              
        Label        -compare-5804-arg2        
        PushF        8.700000                  
        Label        -compare-5804-sub         
        FSubtract                              
        JumpFNeg     -compare-5804-false       
        Jump         -compare-5804-true        
        Label        -compare-5804-true        
        PushI        1                         
        Jump         -compare-5804-join        
        Label        -compare-5804-false       
        PushI        0                         
        Jump         -compare-5804-join        
        Label        -compare-5804-join        
        JumpTrue     -print-boolean-5805-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5805-join  
        Label        -print-boolean-5805-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5805-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5806-arg1        
        PushF        6.600000                  
        PushF        1.900000                  
        FSubtract                              
        Label        -compare-5806-arg2        
        PushF        2.200000                  
        Label        -compare-5806-sub         
        FSubtract                              
        JumpFNeg     -compare-5806-false       
        Jump         -compare-5806-true        
        Label        -compare-5806-true        
        PushI        1                         
        Jump         -compare-5806-join        
        Label        -compare-5806-false       
        PushI        0                         
        Jump         -compare-5806-join        
        Label        -compare-5806-join        
        JumpTrue     -print-boolean-5807-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5807-join  
        Label        -print-boolean-5807-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5807-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5808-arg1        
        PushF        1.300000                  
        PushF        2.500000                  
        FSubtract                              
        Label        -compare-5808-arg2        
        PushF        8.900000                  
        Label        -compare-5808-sub         
        FSubtract                              
        JumpFNeg     -compare-5808-false       
        Jump         -compare-5808-true        
        Label        -compare-5808-true        
        PushI        1                         
        Jump         -compare-5808-join        
        Label        -compare-5808-false       
        PushI        0                         
        Jump         -compare-5808-join        
        Label        -compare-5808-join        
        JumpTrue     -print-boolean-5809-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5809-join  
        Label        -print-boolean-5809-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5809-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5810-arg1        
        PushF        6.300000                  
        PushF        3.900000                  
        FSubtract                              
        Label        -compare-5810-arg2        
        PushF        7.300000                  
        Label        -compare-5810-sub         
        FSubtract                              
        JumpFNeg     -compare-5810-false       
        Jump         -compare-5810-true        
        Label        -compare-5810-true        
        PushI        1                         
        Jump         -compare-5810-join        
        Label        -compare-5810-false       
        PushI        0                         
        Jump         -compare-5810-join        
        Label        -compare-5810-join        
        JumpTrue     -print-boolean-5811-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5811-join  
        Label        -print-boolean-5811-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5811-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5812-arg1        
        PushF        4.700000                  
        PushF        9.900000                  
        FSubtract                              
        Label        -compare-5812-arg2        
        PushF        2.900000                  
        Label        -compare-5812-sub         
        FSubtract                              
        JumpFNeg     -compare-5812-false       
        Jump         -compare-5812-true        
        Label        -compare-5812-true        
        PushI        1                         
        Jump         -compare-5812-join        
        Label        -compare-5812-false       
        PushI        0                         
        Jump         -compare-5812-join        
        Label        -compare-5812-join        
        JumpTrue     -print-boolean-5813-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5813-join  
        Label        -print-boolean-5813-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5813-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5814-arg1        
        PushF        8.300000                  
        PushF        1.000000                  
        FSubtract                              
        Label        -compare-5814-arg2        
        PushF        7.600000                  
        Label        -compare-5814-sub         
        FSubtract                              
        JumpFNeg     -compare-5814-false       
        Jump         -compare-5814-true        
        Label        -compare-5814-true        
        PushI        1                         
        Jump         -compare-5814-join        
        Label        -compare-5814-false       
        PushI        0                         
        Jump         -compare-5814-join        
        Label        -compare-5814-join        
        JumpTrue     -print-boolean-5815-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5815-join  
        Label        -print-boolean-5815-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5815-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5816-arg1        
        PushF        2.200000                  
        PushF        8.300000                  
        FSubtract                              
        Label        -compare-5816-arg2        
        PushF        5.800000                  
        Label        -compare-5816-sub         
        FSubtract                              
        JumpFNeg     -compare-5816-false       
        Jump         -compare-5816-true        
        Label        -compare-5816-true        
        PushI        1                         
        Jump         -compare-5816-join        
        Label        -compare-5816-false       
        PushI        0                         
        Jump         -compare-5816-join        
        Label        -compare-5816-join        
        JumpTrue     -print-boolean-5817-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5817-join  
        Label        -print-boolean-5817-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5817-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5818-arg1        
        PushF        6.300000                  
        PushF        9.100000                  
        FSubtract                              
        Label        -compare-5818-arg2        
        PushF        6.900000                  
        Label        -compare-5818-sub         
        FSubtract                              
        JumpFNeg     -compare-5818-false       
        Jump         -compare-5818-true        
        Label        -compare-5818-true        
        PushI        1                         
        Jump         -compare-5818-join        
        Label        -compare-5818-false       
        PushI        0                         
        Jump         -compare-5818-join        
        Label        -compare-5818-join        
        JumpTrue     -print-boolean-5819-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5819-join  
        Label        -print-boolean-5819-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5819-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5820-arg1        
        PushF        7.700000                  
        PushF        6.900000                  
        FSubtract                              
        Label        -compare-5820-arg2        
        PushF        8.400000                  
        Label        -compare-5820-sub         
        FSubtract                              
        JumpFNeg     -compare-5820-false       
        Jump         -compare-5820-true        
        Label        -compare-5820-true        
        PushI        1                         
        Jump         -compare-5820-join        
        Label        -compare-5820-false       
        PushI        0                         
        Jump         -compare-5820-join        
        Label        -compare-5820-join        
        JumpTrue     -print-boolean-5821-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5821-join  
        Label        -print-boolean-5821-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5821-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5822-arg1        
        PushF        3.800000                  
        Label        -compare-5822-arg2        
        PushF        6.800000                  
        PushF        6.700000                  
        FSubtract                              
        Label        -compare-5822-sub         
        FSubtract                              
        JumpFNeg     -compare-5822-false       
        Jump         -compare-5822-true        
        Label        -compare-5822-true        
        PushI        1                         
        Jump         -compare-5822-join        
        Label        -compare-5822-false       
        PushI        0                         
        Jump         -compare-5822-join        
        Label        -compare-5822-join        
        JumpTrue     -print-boolean-5823-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5823-join  
        Label        -print-boolean-5823-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5823-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5824-arg1        
        PushF        5.600000                  
        Label        -compare-5824-arg2        
        PushF        5.000000                  
        PushF        5.000000                  
        FSubtract                              
        Label        -compare-5824-sub         
        FSubtract                              
        JumpFNeg     -compare-5824-false       
        Jump         -compare-5824-true        
        Label        -compare-5824-true        
        PushI        1                         
        Jump         -compare-5824-join        
        Label        -compare-5824-false       
        PushI        0                         
        Jump         -compare-5824-join        
        Label        -compare-5824-join        
        JumpTrue     -print-boolean-5825-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5825-join  
        Label        -print-boolean-5825-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5825-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5826-arg1        
        PushF        7.000000                  
        Label        -compare-5826-arg2        
        PushF        7.600000                  
        PushF        3.000000                  
        FSubtract                              
        Label        -compare-5826-sub         
        FSubtract                              
        JumpFNeg     -compare-5826-false       
        Jump         -compare-5826-true        
        Label        -compare-5826-true        
        PushI        1                         
        Jump         -compare-5826-join        
        Label        -compare-5826-false       
        PushI        0                         
        Jump         -compare-5826-join        
        Label        -compare-5826-join        
        JumpTrue     -print-boolean-5827-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5827-join  
        Label        -print-boolean-5827-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5827-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5828-arg1        
        PushF        5.800000                  
        Label        -compare-5828-arg2        
        PushF        5.900000                  
        PushF        1.900000                  
        FSubtract                              
        Label        -compare-5828-sub         
        FSubtract                              
        JumpFNeg     -compare-5828-false       
        Jump         -compare-5828-true        
        Label        -compare-5828-true        
        PushI        1                         
        Jump         -compare-5828-join        
        Label        -compare-5828-false       
        PushI        0                         
        Jump         -compare-5828-join        
        Label        -compare-5828-join        
        JumpTrue     -print-boolean-5829-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5829-join  
        Label        -print-boolean-5829-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5829-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5830-arg1        
        PushF        5.900000                  
        Label        -compare-5830-arg2        
        PushF        1.700000                  
        PushF        1.200000                  
        FSubtract                              
        Label        -compare-5830-sub         
        FSubtract                              
        JumpFNeg     -compare-5830-false       
        Jump         -compare-5830-true        
        Label        -compare-5830-true        
        PushI        1                         
        Jump         -compare-5830-join        
        Label        -compare-5830-false       
        PushI        0                         
        Jump         -compare-5830-join        
        Label        -compare-5830-join        
        JumpTrue     -print-boolean-5831-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5831-join  
        Label        -print-boolean-5831-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5831-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5832-arg1        
        PushF        8.500000                  
        Label        -compare-5832-arg2        
        PushF        8.400000                  
        PushF        6.000000                  
        FSubtract                              
        Label        -compare-5832-sub         
        FSubtract                              
        JumpFNeg     -compare-5832-false       
        Jump         -compare-5832-true        
        Label        -compare-5832-true        
        PushI        1                         
        Jump         -compare-5832-join        
        Label        -compare-5832-false       
        PushI        0                         
        Jump         -compare-5832-join        
        Label        -compare-5832-join        
        JumpTrue     -print-boolean-5833-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5833-join  
        Label        -print-boolean-5833-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5833-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5834-arg1        
        PushF        7.300000                  
        Label        -compare-5834-arg2        
        PushF        1.300000                  
        PushF        5.800000                  
        FSubtract                              
        Label        -compare-5834-sub         
        FSubtract                              
        JumpFNeg     -compare-5834-false       
        Jump         -compare-5834-true        
        Label        -compare-5834-true        
        PushI        1                         
        Jump         -compare-5834-join        
        Label        -compare-5834-false       
        PushI        0                         
        Jump         -compare-5834-join        
        Label        -compare-5834-join        
        JumpTrue     -print-boolean-5835-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5835-join  
        Label        -print-boolean-5835-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5835-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5836-arg1        
        PushF        4.800000                  
        Label        -compare-5836-arg2        
        PushF        3.900000                  
        PushF        2.800000                  
        FSubtract                              
        Label        -compare-5836-sub         
        FSubtract                              
        JumpFNeg     -compare-5836-false       
        Jump         -compare-5836-true        
        Label        -compare-5836-true        
        PushI        1                         
        Jump         -compare-5836-join        
        Label        -compare-5836-false       
        PushI        0                         
        Jump         -compare-5836-join        
        Label        -compare-5836-join        
        JumpTrue     -print-boolean-5837-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5837-join  
        Label        -print-boolean-5837-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5837-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5838-arg1        
        PushF        3.000000                  
        Label        -compare-5838-arg2        
        PushF        4.200000                  
        PushF        3.900000                  
        FSubtract                              
        Label        -compare-5838-sub         
        FSubtract                              
        JumpFNeg     -compare-5838-false       
        Jump         -compare-5838-true        
        Label        -compare-5838-true        
        PushI        1                         
        Jump         -compare-5838-join        
        Label        -compare-5838-false       
        PushI        0                         
        Jump         -compare-5838-join        
        Label        -compare-5838-join        
        JumpTrue     -print-boolean-5839-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5839-join  
        Label        -print-boolean-5839-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5839-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5840-arg1        
        PushF        9.500000                  
        Label        -compare-5840-arg2        
        PushF        9.900000                  
        PushF        3.200000                  
        FSubtract                              
        Label        -compare-5840-sub         
        FSubtract                              
        JumpFNeg     -compare-5840-false       
        Jump         -compare-5840-true        
        Label        -compare-5840-true        
        PushI        1                         
        Jump         -compare-5840-join        
        Label        -compare-5840-false       
        PushI        0                         
        Jump         -compare-5840-join        
        Label        -compare-5840-join        
        JumpTrue     -print-boolean-5841-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5841-join  
        Label        -print-boolean-5841-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5841-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5842-arg1        
        PushF        5.800000                  
        Label        -compare-5842-arg2        
        PushF        3.300000                  
        PushF        3.300000                  
        FSubtract                              
        Label        -compare-5842-sub         
        FSubtract                              
        JumpFNeg     -compare-5842-false       
        Jump         -compare-5842-true        
        Label        -compare-5842-true        
        PushI        1                         
        Jump         -compare-5842-join        
        Label        -compare-5842-false       
        PushI        0                         
        Jump         -compare-5842-join        
        Label        -compare-5842-join        
        JumpTrue     -print-boolean-5843-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5843-join  
        Label        -print-boolean-5843-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5843-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5844-arg1        
        PushF        7.400000                  
        Label        -compare-5844-arg2        
        PushF        4.400000                  
        PushF        6.800000                  
        FSubtract                              
        Label        -compare-5844-sub         
        FSubtract                              
        JumpFNeg     -compare-5844-false       
        Jump         -compare-5844-true        
        Label        -compare-5844-true        
        PushI        1                         
        Jump         -compare-5844-join        
        Label        -compare-5844-false       
        PushI        0                         
        Jump         -compare-5844-join        
        Label        -compare-5844-join        
        JumpTrue     -print-boolean-5845-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5845-join  
        Label        -print-boolean-5845-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5845-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5846-arg1        
        PushF        7.200000                  
        PushF        4.900000                  
        FSubtract                              
        Label        -compare-5846-arg2        
        PushF        2.700000                  
        PushF        3.400000                  
        FSubtract                              
        Label        -compare-5846-sub         
        FSubtract                              
        JumpFNeg     -compare-5846-false       
        Jump         -compare-5846-true        
        Label        -compare-5846-true        
        PushI        1                         
        Jump         -compare-5846-join        
        Label        -compare-5846-false       
        PushI        0                         
        Jump         -compare-5846-join        
        Label        -compare-5846-join        
        JumpTrue     -print-boolean-5847-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5847-join  
        Label        -print-boolean-5847-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5847-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5848-arg1        
        PushF        5.300000                  
        PushF        2.700000                  
        FSubtract                              
        Label        -compare-5848-arg2        
        PushF        9.300000                  
        PushF        3.100000                  
        FSubtract                              
        Label        -compare-5848-sub         
        FSubtract                              
        JumpFNeg     -compare-5848-false       
        Jump         -compare-5848-true        
        Label        -compare-5848-true        
        PushI        1                         
        Jump         -compare-5848-join        
        Label        -compare-5848-false       
        PushI        0                         
        Jump         -compare-5848-join        
        Label        -compare-5848-join        
        JumpTrue     -print-boolean-5849-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5849-join  
        Label        -print-boolean-5849-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5849-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5850-arg1        
        PushF        6.000000                  
        PushF        7.400000                  
        FSubtract                              
        Label        -compare-5850-arg2        
        PushF        9.300000                  
        PushF        1.200000                  
        FSubtract                              
        Label        -compare-5850-sub         
        FSubtract                              
        JumpFNeg     -compare-5850-false       
        Jump         -compare-5850-true        
        Label        -compare-5850-true        
        PushI        1                         
        Jump         -compare-5850-join        
        Label        -compare-5850-false       
        PushI        0                         
        Jump         -compare-5850-join        
        Label        -compare-5850-join        
        JumpTrue     -print-boolean-5851-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5851-join  
        Label        -print-boolean-5851-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5851-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5852-arg1        
        PushF        8.100000                  
        PushF        5.700000                  
        FSubtract                              
        Label        -compare-5852-arg2        
        PushF        2.400000                  
        PushF        2.500000                  
        FSubtract                              
        Label        -compare-5852-sub         
        FSubtract                              
        JumpFNeg     -compare-5852-false       
        Jump         -compare-5852-true        
        Label        -compare-5852-true        
        PushI        1                         
        Jump         -compare-5852-join        
        Label        -compare-5852-false       
        PushI        0                         
        Jump         -compare-5852-join        
        Label        -compare-5852-join        
        JumpTrue     -print-boolean-5853-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5853-join  
        Label        -print-boolean-5853-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5853-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5854-arg1        
        PushF        6.800000                  
        PushF        8.200000                  
        FSubtract                              
        Label        -compare-5854-arg2        
        PushF        1.500000                  
        PushF        8.000000                  
        FSubtract                              
        Label        -compare-5854-sub         
        FSubtract                              
        JumpFNeg     -compare-5854-false       
        Jump         -compare-5854-true        
        Label        -compare-5854-true        
        PushI        1                         
        Jump         -compare-5854-join        
        Label        -compare-5854-false       
        PushI        0                         
        Jump         -compare-5854-join        
        Label        -compare-5854-join        
        JumpTrue     -print-boolean-5855-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5855-join  
        Label        -print-boolean-5855-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5855-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5856-arg1        
        PushF        5.000000                  
        PushF        9.600000                  
        FSubtract                              
        Label        -compare-5856-arg2        
        PushF        1.300000                  
        PushF        9.100000                  
        FSubtract                              
        Label        -compare-5856-sub         
        FSubtract                              
        JumpFNeg     -compare-5856-false       
        Jump         -compare-5856-true        
        Label        -compare-5856-true        
        PushI        1                         
        Jump         -compare-5856-join        
        Label        -compare-5856-false       
        PushI        0                         
        Jump         -compare-5856-join        
        Label        -compare-5856-join        
        JumpTrue     -print-boolean-5857-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5857-join  
        Label        -print-boolean-5857-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5857-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5858-arg1        
        PushF        3.700000                  
        PushF        3.200000                  
        FSubtract                              
        Label        -compare-5858-arg2        
        PushF        8.400000                  
        PushF        1.300000                  
        FSubtract                              
        Label        -compare-5858-sub         
        FSubtract                              
        JumpFNeg     -compare-5858-false       
        Jump         -compare-5858-true        
        Label        -compare-5858-true        
        PushI        1                         
        Jump         -compare-5858-join        
        Label        -compare-5858-false       
        PushI        0                         
        Jump         -compare-5858-join        
        Label        -compare-5858-join        
        JumpTrue     -print-boolean-5859-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5859-join  
        Label        -print-boolean-5859-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5859-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5860-arg1        
        PushF        4.500000                  
        PushF        2.400000                  
        FSubtract                              
        Label        -compare-5860-arg2        
        PushF        5.300000                  
        PushF        2.900000                  
        FSubtract                              
        Label        -compare-5860-sub         
        FSubtract                              
        JumpFNeg     -compare-5860-false       
        Jump         -compare-5860-true        
        Label        -compare-5860-true        
        PushI        1                         
        Jump         -compare-5860-join        
        Label        -compare-5860-false       
        PushI        0                         
        Jump         -compare-5860-join        
        Label        -compare-5860-join        
        JumpTrue     -print-boolean-5861-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5861-join  
        Label        -print-boolean-5861-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5861-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5862-arg1        
        PushF        1.500000                  
        PushF        6.900000                  
        FSubtract                              
        Label        -compare-5862-arg2        
        PushF        6.100000                  
        PushF        7.100000                  
        FSubtract                              
        Label        -compare-5862-sub         
        FSubtract                              
        JumpFNeg     -compare-5862-false       
        Jump         -compare-5862-true        
        Label        -compare-5862-true        
        PushI        1                         
        Jump         -compare-5862-join        
        Label        -compare-5862-false       
        PushI        0                         
        Jump         -compare-5862-join        
        Label        -compare-5862-join        
        JumpTrue     -print-boolean-5863-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5863-join  
        Label        -print-boolean-5863-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5863-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5864-arg1        
        PushF        2.800000                  
        PushF        6.800000                  
        FSubtract                              
        Label        -compare-5864-arg2        
        PushF        6.900000                  
        PushF        7.700000                  
        FSubtract                              
        Label        -compare-5864-sub         
        FSubtract                              
        JumpFNeg     -compare-5864-false       
        Jump         -compare-5864-true        
        Label        -compare-5864-true        
        PushI        1                         
        Jump         -compare-5864-join        
        Label        -compare-5864-false       
        PushI        0                         
        Jump         -compare-5864-join        
        Label        -compare-5864-join        
        JumpTrue     -print-boolean-5865-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5865-join  
        Label        -print-boolean-5865-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5865-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5866-arg1        
        PushF        7.900000                  
        PushF        1.800000                  
        FSubtract                              
        Label        -compare-5866-arg2        
        PushF        3.400000                  
        PushF        5.300000                  
        FSubtract                              
        Label        -compare-5866-sub         
        FSubtract                              
        JumpFNeg     -compare-5866-false       
        Jump         -compare-5866-true        
        Label        -compare-5866-true        
        PushI        1                         
        Jump         -compare-5866-join        
        Label        -compare-5866-false       
        PushI        0                         
        Jump         -compare-5866-join        
        Label        -compare-5866-join        
        JumpTrue     -print-boolean-5867-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5867-join  
        Label        -print-boolean-5867-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5867-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5868-arg1        
        PushF        4.400000                  
        PushF        2.300000                  
        FSubtract                              
        Label        -compare-5868-arg2        
        PushF        7.000000                  
        PushF        3.900000                  
        FSubtract                              
        Label        -compare-5868-sub         
        FSubtract                              
        JumpFNeg     -compare-5868-false       
        Jump         -compare-5868-true        
        Label        -compare-5868-true        
        PushI        1                         
        Jump         -compare-5868-join        
        Label        -compare-5868-false       
        PushI        0                         
        Jump         -compare-5868-join        
        Label        -compare-5868-join        
        JumpTrue     -print-boolean-5869-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5869-join  
        Label        -print-boolean-5869-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5869-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
