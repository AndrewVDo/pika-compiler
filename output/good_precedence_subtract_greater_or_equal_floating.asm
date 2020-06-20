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
        Label        -compare-5785-arg1        
        PushF        3.300000                  
        PushF        4.500000                  
        FSubtract                              
        Label        -compare-5785-arg2        
        PushF        3.400000                  
        Label        -compare-5785-sub         
        FSubtract                              
        JumpFNeg     -compare-5785-false       
        Jump         -compare-5785-true        
        Label        -compare-5785-true        
        PushI        1                         
        Jump         -compare-5785-join        
        Label        -compare-5785-false       
        PushI        0                         
        Jump         -compare-5785-join        
        Label        -compare-5785-join        
        JumpTrue     -print-boolean-5786-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5786-join  
        Label        -print-boolean-5786-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5786-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5787-arg1        
        PushF        7.200000                  
        PushF        4.800000                  
        FSubtract                              
        Label        -compare-5787-arg2        
        PushF        1.100000                  
        Label        -compare-5787-sub         
        FSubtract                              
        JumpFNeg     -compare-5787-false       
        Jump         -compare-5787-true        
        Label        -compare-5787-true        
        PushI        1                         
        Jump         -compare-5787-join        
        Label        -compare-5787-false       
        PushI        0                         
        Jump         -compare-5787-join        
        Label        -compare-5787-join        
        JumpTrue     -print-boolean-5788-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5788-join  
        Label        -print-boolean-5788-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5788-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5789-arg1        
        PushF        6.900000                  
        PushF        9.800000                  
        FSubtract                              
        Label        -compare-5789-arg2        
        PushF        8.900000                  
        Label        -compare-5789-sub         
        FSubtract                              
        JumpFNeg     -compare-5789-false       
        Jump         -compare-5789-true        
        Label        -compare-5789-true        
        PushI        1                         
        Jump         -compare-5789-join        
        Label        -compare-5789-false       
        PushI        0                         
        Jump         -compare-5789-join        
        Label        -compare-5789-join        
        JumpTrue     -print-boolean-5790-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5790-join  
        Label        -print-boolean-5790-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5790-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5791-arg1        
        PushF        9.500000                  
        PushF        9.300000                  
        FSubtract                              
        Label        -compare-5791-arg2        
        PushF        8.700000                  
        Label        -compare-5791-sub         
        FSubtract                              
        JumpFNeg     -compare-5791-false       
        Jump         -compare-5791-true        
        Label        -compare-5791-true        
        PushI        1                         
        Jump         -compare-5791-join        
        Label        -compare-5791-false       
        PushI        0                         
        Jump         -compare-5791-join        
        Label        -compare-5791-join        
        JumpTrue     -print-boolean-5792-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5792-join  
        Label        -print-boolean-5792-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5792-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5793-arg1        
        PushF        6.600000                  
        PushF        1.900000                  
        FSubtract                              
        Label        -compare-5793-arg2        
        PushF        2.200000                  
        Label        -compare-5793-sub         
        FSubtract                              
        JumpFNeg     -compare-5793-false       
        Jump         -compare-5793-true        
        Label        -compare-5793-true        
        PushI        1                         
        Jump         -compare-5793-join        
        Label        -compare-5793-false       
        PushI        0                         
        Jump         -compare-5793-join        
        Label        -compare-5793-join        
        JumpTrue     -print-boolean-5794-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5794-join  
        Label        -print-boolean-5794-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5794-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5795-arg1        
        PushF        1.300000                  
        PushF        2.500000                  
        FSubtract                              
        Label        -compare-5795-arg2        
        PushF        8.900000                  
        Label        -compare-5795-sub         
        FSubtract                              
        JumpFNeg     -compare-5795-false       
        Jump         -compare-5795-true        
        Label        -compare-5795-true        
        PushI        1                         
        Jump         -compare-5795-join        
        Label        -compare-5795-false       
        PushI        0                         
        Jump         -compare-5795-join        
        Label        -compare-5795-join        
        JumpTrue     -print-boolean-5796-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5796-join  
        Label        -print-boolean-5796-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5796-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5797-arg1        
        PushF        6.300000                  
        PushF        3.900000                  
        FSubtract                              
        Label        -compare-5797-arg2        
        PushF        7.300000                  
        Label        -compare-5797-sub         
        FSubtract                              
        JumpFNeg     -compare-5797-false       
        Jump         -compare-5797-true        
        Label        -compare-5797-true        
        PushI        1                         
        Jump         -compare-5797-join        
        Label        -compare-5797-false       
        PushI        0                         
        Jump         -compare-5797-join        
        Label        -compare-5797-join        
        JumpTrue     -print-boolean-5798-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5798-join  
        Label        -print-boolean-5798-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5798-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5799-arg1        
        PushF        4.700000                  
        PushF        9.900000                  
        FSubtract                              
        Label        -compare-5799-arg2        
        PushF        2.900000                  
        Label        -compare-5799-sub         
        FSubtract                              
        JumpFNeg     -compare-5799-false       
        Jump         -compare-5799-true        
        Label        -compare-5799-true        
        PushI        1                         
        Jump         -compare-5799-join        
        Label        -compare-5799-false       
        PushI        0                         
        Jump         -compare-5799-join        
        Label        -compare-5799-join        
        JumpTrue     -print-boolean-5800-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5800-join  
        Label        -print-boolean-5800-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5800-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5801-arg1        
        PushF        8.300000                  
        PushF        1.000000                  
        FSubtract                              
        Label        -compare-5801-arg2        
        PushF        7.600000                  
        Label        -compare-5801-sub         
        FSubtract                              
        JumpFNeg     -compare-5801-false       
        Jump         -compare-5801-true        
        Label        -compare-5801-true        
        PushI        1                         
        Jump         -compare-5801-join        
        Label        -compare-5801-false       
        PushI        0                         
        Jump         -compare-5801-join        
        Label        -compare-5801-join        
        JumpTrue     -print-boolean-5802-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5802-join  
        Label        -print-boolean-5802-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5802-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5803-arg1        
        PushF        2.200000                  
        PushF        8.300000                  
        FSubtract                              
        Label        -compare-5803-arg2        
        PushF        5.800000                  
        Label        -compare-5803-sub         
        FSubtract                              
        JumpFNeg     -compare-5803-false       
        Jump         -compare-5803-true        
        Label        -compare-5803-true        
        PushI        1                         
        Jump         -compare-5803-join        
        Label        -compare-5803-false       
        PushI        0                         
        Jump         -compare-5803-join        
        Label        -compare-5803-join        
        JumpTrue     -print-boolean-5804-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5804-join  
        Label        -print-boolean-5804-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5804-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5805-arg1        
        PushF        6.300000                  
        PushF        9.100000                  
        FSubtract                              
        Label        -compare-5805-arg2        
        PushF        6.900000                  
        Label        -compare-5805-sub         
        FSubtract                              
        JumpFNeg     -compare-5805-false       
        Jump         -compare-5805-true        
        Label        -compare-5805-true        
        PushI        1                         
        Jump         -compare-5805-join        
        Label        -compare-5805-false       
        PushI        0                         
        Jump         -compare-5805-join        
        Label        -compare-5805-join        
        JumpTrue     -print-boolean-5806-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5806-join  
        Label        -print-boolean-5806-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5806-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5807-arg1        
        PushF        7.700000                  
        PushF        6.900000                  
        FSubtract                              
        Label        -compare-5807-arg2        
        PushF        8.400000                  
        Label        -compare-5807-sub         
        FSubtract                              
        JumpFNeg     -compare-5807-false       
        Jump         -compare-5807-true        
        Label        -compare-5807-true        
        PushI        1                         
        Jump         -compare-5807-join        
        Label        -compare-5807-false       
        PushI        0                         
        Jump         -compare-5807-join        
        Label        -compare-5807-join        
        JumpTrue     -print-boolean-5808-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5808-join  
        Label        -print-boolean-5808-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5808-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5809-arg1        
        PushF        3.800000                  
        Label        -compare-5809-arg2        
        PushF        6.800000                  
        PushF        6.700000                  
        FSubtract                              
        Label        -compare-5809-sub         
        FSubtract                              
        JumpFNeg     -compare-5809-false       
        Jump         -compare-5809-true        
        Label        -compare-5809-true        
        PushI        1                         
        Jump         -compare-5809-join        
        Label        -compare-5809-false       
        PushI        0                         
        Jump         -compare-5809-join        
        Label        -compare-5809-join        
        JumpTrue     -print-boolean-5810-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5810-join  
        Label        -print-boolean-5810-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5810-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5811-arg1        
        PushF        5.600000                  
        Label        -compare-5811-arg2        
        PushF        5.000000                  
        PushF        5.000000                  
        FSubtract                              
        Label        -compare-5811-sub         
        FSubtract                              
        JumpFNeg     -compare-5811-false       
        Jump         -compare-5811-true        
        Label        -compare-5811-true        
        PushI        1                         
        Jump         -compare-5811-join        
        Label        -compare-5811-false       
        PushI        0                         
        Jump         -compare-5811-join        
        Label        -compare-5811-join        
        JumpTrue     -print-boolean-5812-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5812-join  
        Label        -print-boolean-5812-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5812-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5813-arg1        
        PushF        7.000000                  
        Label        -compare-5813-arg2        
        PushF        7.600000                  
        PushF        3.000000                  
        FSubtract                              
        Label        -compare-5813-sub         
        FSubtract                              
        JumpFNeg     -compare-5813-false       
        Jump         -compare-5813-true        
        Label        -compare-5813-true        
        PushI        1                         
        Jump         -compare-5813-join        
        Label        -compare-5813-false       
        PushI        0                         
        Jump         -compare-5813-join        
        Label        -compare-5813-join        
        JumpTrue     -print-boolean-5814-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5814-join  
        Label        -print-boolean-5814-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5814-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5815-arg1        
        PushF        5.800000                  
        Label        -compare-5815-arg2        
        PushF        5.900000                  
        PushF        1.900000                  
        FSubtract                              
        Label        -compare-5815-sub         
        FSubtract                              
        JumpFNeg     -compare-5815-false       
        Jump         -compare-5815-true        
        Label        -compare-5815-true        
        PushI        1                         
        Jump         -compare-5815-join        
        Label        -compare-5815-false       
        PushI        0                         
        Jump         -compare-5815-join        
        Label        -compare-5815-join        
        JumpTrue     -print-boolean-5816-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5816-join  
        Label        -print-boolean-5816-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5816-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5817-arg1        
        PushF        5.900000                  
        Label        -compare-5817-arg2        
        PushF        1.700000                  
        PushF        1.200000                  
        FSubtract                              
        Label        -compare-5817-sub         
        FSubtract                              
        JumpFNeg     -compare-5817-false       
        Jump         -compare-5817-true        
        Label        -compare-5817-true        
        PushI        1                         
        Jump         -compare-5817-join        
        Label        -compare-5817-false       
        PushI        0                         
        Jump         -compare-5817-join        
        Label        -compare-5817-join        
        JumpTrue     -print-boolean-5818-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5818-join  
        Label        -print-boolean-5818-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5818-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5819-arg1        
        PushF        8.500000                  
        Label        -compare-5819-arg2        
        PushF        8.400000                  
        PushF        6.000000                  
        FSubtract                              
        Label        -compare-5819-sub         
        FSubtract                              
        JumpFNeg     -compare-5819-false       
        Jump         -compare-5819-true        
        Label        -compare-5819-true        
        PushI        1                         
        Jump         -compare-5819-join        
        Label        -compare-5819-false       
        PushI        0                         
        Jump         -compare-5819-join        
        Label        -compare-5819-join        
        JumpTrue     -print-boolean-5820-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5820-join  
        Label        -print-boolean-5820-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5820-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5821-arg1        
        PushF        7.300000                  
        Label        -compare-5821-arg2        
        PushF        1.300000                  
        PushF        5.800000                  
        FSubtract                              
        Label        -compare-5821-sub         
        FSubtract                              
        JumpFNeg     -compare-5821-false       
        Jump         -compare-5821-true        
        Label        -compare-5821-true        
        PushI        1                         
        Jump         -compare-5821-join        
        Label        -compare-5821-false       
        PushI        0                         
        Jump         -compare-5821-join        
        Label        -compare-5821-join        
        JumpTrue     -print-boolean-5822-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5822-join  
        Label        -print-boolean-5822-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5822-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5823-arg1        
        PushF        4.800000                  
        Label        -compare-5823-arg2        
        PushF        3.900000                  
        PushF        2.800000                  
        FSubtract                              
        Label        -compare-5823-sub         
        FSubtract                              
        JumpFNeg     -compare-5823-false       
        Jump         -compare-5823-true        
        Label        -compare-5823-true        
        PushI        1                         
        Jump         -compare-5823-join        
        Label        -compare-5823-false       
        PushI        0                         
        Jump         -compare-5823-join        
        Label        -compare-5823-join        
        JumpTrue     -print-boolean-5824-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5824-join  
        Label        -print-boolean-5824-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5824-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5825-arg1        
        PushF        3.000000                  
        Label        -compare-5825-arg2        
        PushF        4.200000                  
        PushF        3.900000                  
        FSubtract                              
        Label        -compare-5825-sub         
        FSubtract                              
        JumpFNeg     -compare-5825-false       
        Jump         -compare-5825-true        
        Label        -compare-5825-true        
        PushI        1                         
        Jump         -compare-5825-join        
        Label        -compare-5825-false       
        PushI        0                         
        Jump         -compare-5825-join        
        Label        -compare-5825-join        
        JumpTrue     -print-boolean-5826-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5826-join  
        Label        -print-boolean-5826-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5826-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5827-arg1        
        PushF        9.500000                  
        Label        -compare-5827-arg2        
        PushF        9.900000                  
        PushF        3.200000                  
        FSubtract                              
        Label        -compare-5827-sub         
        FSubtract                              
        JumpFNeg     -compare-5827-false       
        Jump         -compare-5827-true        
        Label        -compare-5827-true        
        PushI        1                         
        Jump         -compare-5827-join        
        Label        -compare-5827-false       
        PushI        0                         
        Jump         -compare-5827-join        
        Label        -compare-5827-join        
        JumpTrue     -print-boolean-5828-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5828-join  
        Label        -print-boolean-5828-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5828-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5829-arg1        
        PushF        5.800000                  
        Label        -compare-5829-arg2        
        PushF        3.300000                  
        PushF        3.300000                  
        FSubtract                              
        Label        -compare-5829-sub         
        FSubtract                              
        JumpFNeg     -compare-5829-false       
        Jump         -compare-5829-true        
        Label        -compare-5829-true        
        PushI        1                         
        Jump         -compare-5829-join        
        Label        -compare-5829-false       
        PushI        0                         
        Jump         -compare-5829-join        
        Label        -compare-5829-join        
        JumpTrue     -print-boolean-5830-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5830-join  
        Label        -print-boolean-5830-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5830-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5831-arg1        
        PushF        7.400000                  
        Label        -compare-5831-arg2        
        PushF        4.400000                  
        PushF        6.800000                  
        FSubtract                              
        Label        -compare-5831-sub         
        FSubtract                              
        JumpFNeg     -compare-5831-false       
        Jump         -compare-5831-true        
        Label        -compare-5831-true        
        PushI        1                         
        Jump         -compare-5831-join        
        Label        -compare-5831-false       
        PushI        0                         
        Jump         -compare-5831-join        
        Label        -compare-5831-join        
        JumpTrue     -print-boolean-5832-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5832-join  
        Label        -print-boolean-5832-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5832-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5833-arg1        
        PushF        7.200000                  
        PushF        4.900000                  
        FSubtract                              
        Label        -compare-5833-arg2        
        PushF        2.700000                  
        PushF        3.400000                  
        FSubtract                              
        Label        -compare-5833-sub         
        FSubtract                              
        JumpFNeg     -compare-5833-false       
        Jump         -compare-5833-true        
        Label        -compare-5833-true        
        PushI        1                         
        Jump         -compare-5833-join        
        Label        -compare-5833-false       
        PushI        0                         
        Jump         -compare-5833-join        
        Label        -compare-5833-join        
        JumpTrue     -print-boolean-5834-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5834-join  
        Label        -print-boolean-5834-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5834-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5835-arg1        
        PushF        5.300000                  
        PushF        2.700000                  
        FSubtract                              
        Label        -compare-5835-arg2        
        PushF        9.300000                  
        PushF        3.100000                  
        FSubtract                              
        Label        -compare-5835-sub         
        FSubtract                              
        JumpFNeg     -compare-5835-false       
        Jump         -compare-5835-true        
        Label        -compare-5835-true        
        PushI        1                         
        Jump         -compare-5835-join        
        Label        -compare-5835-false       
        PushI        0                         
        Jump         -compare-5835-join        
        Label        -compare-5835-join        
        JumpTrue     -print-boolean-5836-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5836-join  
        Label        -print-boolean-5836-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5836-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5837-arg1        
        PushF        6.000000                  
        PushF        7.400000                  
        FSubtract                              
        Label        -compare-5837-arg2        
        PushF        9.300000                  
        PushF        1.200000                  
        FSubtract                              
        Label        -compare-5837-sub         
        FSubtract                              
        JumpFNeg     -compare-5837-false       
        Jump         -compare-5837-true        
        Label        -compare-5837-true        
        PushI        1                         
        Jump         -compare-5837-join        
        Label        -compare-5837-false       
        PushI        0                         
        Jump         -compare-5837-join        
        Label        -compare-5837-join        
        JumpTrue     -print-boolean-5838-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5838-join  
        Label        -print-boolean-5838-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5838-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5839-arg1        
        PushF        8.100000                  
        PushF        5.700000                  
        FSubtract                              
        Label        -compare-5839-arg2        
        PushF        2.400000                  
        PushF        2.500000                  
        FSubtract                              
        Label        -compare-5839-sub         
        FSubtract                              
        JumpFNeg     -compare-5839-false       
        Jump         -compare-5839-true        
        Label        -compare-5839-true        
        PushI        1                         
        Jump         -compare-5839-join        
        Label        -compare-5839-false       
        PushI        0                         
        Jump         -compare-5839-join        
        Label        -compare-5839-join        
        JumpTrue     -print-boolean-5840-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5840-join  
        Label        -print-boolean-5840-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5840-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5841-arg1        
        PushF        6.800000                  
        PushF        8.200000                  
        FSubtract                              
        Label        -compare-5841-arg2        
        PushF        1.500000                  
        PushF        8.000000                  
        FSubtract                              
        Label        -compare-5841-sub         
        FSubtract                              
        JumpFNeg     -compare-5841-false       
        Jump         -compare-5841-true        
        Label        -compare-5841-true        
        PushI        1                         
        Jump         -compare-5841-join        
        Label        -compare-5841-false       
        PushI        0                         
        Jump         -compare-5841-join        
        Label        -compare-5841-join        
        JumpTrue     -print-boolean-5842-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5842-join  
        Label        -print-boolean-5842-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5842-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5843-arg1        
        PushF        5.000000                  
        PushF        9.600000                  
        FSubtract                              
        Label        -compare-5843-arg2        
        PushF        1.300000                  
        PushF        9.100000                  
        FSubtract                              
        Label        -compare-5843-sub         
        FSubtract                              
        JumpFNeg     -compare-5843-false       
        Jump         -compare-5843-true        
        Label        -compare-5843-true        
        PushI        1                         
        Jump         -compare-5843-join        
        Label        -compare-5843-false       
        PushI        0                         
        Jump         -compare-5843-join        
        Label        -compare-5843-join        
        JumpTrue     -print-boolean-5844-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5844-join  
        Label        -print-boolean-5844-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5844-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5845-arg1        
        PushF        3.700000                  
        PushF        3.200000                  
        FSubtract                              
        Label        -compare-5845-arg2        
        PushF        8.400000                  
        PushF        1.300000                  
        FSubtract                              
        Label        -compare-5845-sub         
        FSubtract                              
        JumpFNeg     -compare-5845-false       
        Jump         -compare-5845-true        
        Label        -compare-5845-true        
        PushI        1                         
        Jump         -compare-5845-join        
        Label        -compare-5845-false       
        PushI        0                         
        Jump         -compare-5845-join        
        Label        -compare-5845-join        
        JumpTrue     -print-boolean-5846-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5846-join  
        Label        -print-boolean-5846-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5846-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5847-arg1        
        PushF        4.500000                  
        PushF        2.400000                  
        FSubtract                              
        Label        -compare-5847-arg2        
        PushF        5.300000                  
        PushF        2.900000                  
        FSubtract                              
        Label        -compare-5847-sub         
        FSubtract                              
        JumpFNeg     -compare-5847-false       
        Jump         -compare-5847-true        
        Label        -compare-5847-true        
        PushI        1                         
        Jump         -compare-5847-join        
        Label        -compare-5847-false       
        PushI        0                         
        Jump         -compare-5847-join        
        Label        -compare-5847-join        
        JumpTrue     -print-boolean-5848-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5848-join  
        Label        -print-boolean-5848-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5848-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5849-arg1        
        PushF        1.500000                  
        PushF        6.900000                  
        FSubtract                              
        Label        -compare-5849-arg2        
        PushF        6.100000                  
        PushF        7.100000                  
        FSubtract                              
        Label        -compare-5849-sub         
        FSubtract                              
        JumpFNeg     -compare-5849-false       
        Jump         -compare-5849-true        
        Label        -compare-5849-true        
        PushI        1                         
        Jump         -compare-5849-join        
        Label        -compare-5849-false       
        PushI        0                         
        Jump         -compare-5849-join        
        Label        -compare-5849-join        
        JumpTrue     -print-boolean-5850-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5850-join  
        Label        -print-boolean-5850-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5850-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5851-arg1        
        PushF        2.800000                  
        PushF        6.800000                  
        FSubtract                              
        Label        -compare-5851-arg2        
        PushF        6.900000                  
        PushF        7.700000                  
        FSubtract                              
        Label        -compare-5851-sub         
        FSubtract                              
        JumpFNeg     -compare-5851-false       
        Jump         -compare-5851-true        
        Label        -compare-5851-true        
        PushI        1                         
        Jump         -compare-5851-join        
        Label        -compare-5851-false       
        PushI        0                         
        Jump         -compare-5851-join        
        Label        -compare-5851-join        
        JumpTrue     -print-boolean-5852-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5852-join  
        Label        -print-boolean-5852-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5852-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5853-arg1        
        PushF        7.900000                  
        PushF        1.800000                  
        FSubtract                              
        Label        -compare-5853-arg2        
        PushF        3.400000                  
        PushF        5.300000                  
        FSubtract                              
        Label        -compare-5853-sub         
        FSubtract                              
        JumpFNeg     -compare-5853-false       
        Jump         -compare-5853-true        
        Label        -compare-5853-true        
        PushI        1                         
        Jump         -compare-5853-join        
        Label        -compare-5853-false       
        PushI        0                         
        Jump         -compare-5853-join        
        Label        -compare-5853-join        
        JumpTrue     -print-boolean-5854-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5854-join  
        Label        -print-boolean-5854-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5854-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5855-arg1        
        PushF        4.400000                  
        PushF        2.300000                  
        FSubtract                              
        Label        -compare-5855-arg2        
        PushF        7.000000                  
        PushF        3.900000                  
        FSubtract                              
        Label        -compare-5855-sub         
        FSubtract                              
        JumpFNeg     -compare-5855-false       
        Jump         -compare-5855-true        
        Label        -compare-5855-true        
        PushI        1                         
        Jump         -compare-5855-join        
        Label        -compare-5855-false       
        PushI        0                         
        Jump         -compare-5855-join        
        Label        -compare-5855-join        
        JumpTrue     -print-boolean-5856-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5856-join  
        Label        -print-boolean-5856-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5856-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
