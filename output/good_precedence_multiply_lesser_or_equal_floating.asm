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
        Label        -compare-4873-arg1        
        PushF        1.300000                  
        PushF        2.700000                  
        FMultiply                              
        Label        -compare-4873-arg2        
        PushF        2.300000                  
        Label        -compare-4873-sub         
        FSubtract                              
        JumpFPos     -compare-4873-false       
        Jump         -compare-4873-true        
        Label        -compare-4873-true        
        PushI        1                         
        Jump         -compare-4873-join        
        Label        -compare-4873-false       
        PushI        0                         
        Jump         -compare-4873-join        
        Label        -compare-4873-join        
        JumpTrue     -print-boolean-4874-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4874-join  
        Label        -print-boolean-4874-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4874-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4875-arg1        
        PushF        4.600000                  
        PushF        7.400000                  
        FMultiply                              
        Label        -compare-4875-arg2        
        PushF        6.900000                  
        Label        -compare-4875-sub         
        FSubtract                              
        JumpFPos     -compare-4875-false       
        Jump         -compare-4875-true        
        Label        -compare-4875-true        
        PushI        1                         
        Jump         -compare-4875-join        
        Label        -compare-4875-false       
        PushI        0                         
        Jump         -compare-4875-join        
        Label        -compare-4875-join        
        JumpTrue     -print-boolean-4876-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4876-join  
        Label        -print-boolean-4876-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4876-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4877-arg1        
        PushF        3.700000                  
        PushF        2.100000                  
        FMultiply                              
        Label        -compare-4877-arg2        
        PushF        9.500000                  
        Label        -compare-4877-sub         
        FSubtract                              
        JumpFPos     -compare-4877-false       
        Jump         -compare-4877-true        
        Label        -compare-4877-true        
        PushI        1                         
        Jump         -compare-4877-join        
        Label        -compare-4877-false       
        PushI        0                         
        Jump         -compare-4877-join        
        Label        -compare-4877-join        
        JumpTrue     -print-boolean-4878-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4878-join  
        Label        -print-boolean-4878-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4878-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4879-arg1        
        PushF        7.200000                  
        PushF        9.100000                  
        FMultiply                              
        Label        -compare-4879-arg2        
        PushF        8.600000                  
        Label        -compare-4879-sub         
        FSubtract                              
        JumpFPos     -compare-4879-false       
        Jump         -compare-4879-true        
        Label        -compare-4879-true        
        PushI        1                         
        Jump         -compare-4879-join        
        Label        -compare-4879-false       
        PushI        0                         
        Jump         -compare-4879-join        
        Label        -compare-4879-join        
        JumpTrue     -print-boolean-4880-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4880-join  
        Label        -print-boolean-4880-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4880-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4881-arg1        
        PushF        3.700000                  
        PushF        2.900000                  
        FMultiply                              
        Label        -compare-4881-arg2        
        PushF        8.900000                  
        Label        -compare-4881-sub         
        FSubtract                              
        JumpFPos     -compare-4881-false       
        Jump         -compare-4881-true        
        Label        -compare-4881-true        
        PushI        1                         
        Jump         -compare-4881-join        
        Label        -compare-4881-false       
        PushI        0                         
        Jump         -compare-4881-join        
        Label        -compare-4881-join        
        JumpTrue     -print-boolean-4882-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4882-join  
        Label        -print-boolean-4882-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4882-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4883-arg1        
        PushF        7.700000                  
        PushF        5.800000                  
        FMultiply                              
        Label        -compare-4883-arg2        
        PushF        9.000000                  
        Label        -compare-4883-sub         
        FSubtract                              
        JumpFPos     -compare-4883-false       
        Jump         -compare-4883-true        
        Label        -compare-4883-true        
        PushI        1                         
        Jump         -compare-4883-join        
        Label        -compare-4883-false       
        PushI        0                         
        Jump         -compare-4883-join        
        Label        -compare-4883-join        
        JumpTrue     -print-boolean-4884-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4884-join  
        Label        -print-boolean-4884-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4884-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4885-arg1        
        PushF        3.400000                  
        PushF        6.200000                  
        FMultiply                              
        Label        -compare-4885-arg2        
        PushF        2.600000                  
        Label        -compare-4885-sub         
        FSubtract                              
        JumpFPos     -compare-4885-false       
        Jump         -compare-4885-true        
        Label        -compare-4885-true        
        PushI        1                         
        Jump         -compare-4885-join        
        Label        -compare-4885-false       
        PushI        0                         
        Jump         -compare-4885-join        
        Label        -compare-4885-join        
        JumpTrue     -print-boolean-4886-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4886-join  
        Label        -print-boolean-4886-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4886-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4887-arg1        
        PushF        3.400000                  
        PushF        3.400000                  
        FMultiply                              
        Label        -compare-4887-arg2        
        PushF        4.400000                  
        Label        -compare-4887-sub         
        FSubtract                              
        JumpFPos     -compare-4887-false       
        Jump         -compare-4887-true        
        Label        -compare-4887-true        
        PushI        1                         
        Jump         -compare-4887-join        
        Label        -compare-4887-false       
        PushI        0                         
        Jump         -compare-4887-join        
        Label        -compare-4887-join        
        JumpTrue     -print-boolean-4888-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4888-join  
        Label        -print-boolean-4888-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4888-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4889-arg1        
        PushF        1.100000                  
        PushF        3.500000                  
        FMultiply                              
        Label        -compare-4889-arg2        
        PushF        9.000000                  
        Label        -compare-4889-sub         
        FSubtract                              
        JumpFPos     -compare-4889-false       
        Jump         -compare-4889-true        
        Label        -compare-4889-true        
        PushI        1                         
        Jump         -compare-4889-join        
        Label        -compare-4889-false       
        PushI        0                         
        Jump         -compare-4889-join        
        Label        -compare-4889-join        
        JumpTrue     -print-boolean-4890-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4890-join  
        Label        -print-boolean-4890-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4890-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4891-arg1        
        PushF        4.600000                  
        PushF        7.600000                  
        FMultiply                              
        Label        -compare-4891-arg2        
        PushF        6.000000                  
        Label        -compare-4891-sub         
        FSubtract                              
        JumpFPos     -compare-4891-false       
        Jump         -compare-4891-true        
        Label        -compare-4891-true        
        PushI        1                         
        Jump         -compare-4891-join        
        Label        -compare-4891-false       
        PushI        0                         
        Jump         -compare-4891-join        
        Label        -compare-4891-join        
        JumpTrue     -print-boolean-4892-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4892-join  
        Label        -print-boolean-4892-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4892-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4893-arg1        
        PushF        9.900000                  
        PushF        4.100000                  
        FMultiply                              
        Label        -compare-4893-arg2        
        PushF        6.500000                  
        Label        -compare-4893-sub         
        FSubtract                              
        JumpFPos     -compare-4893-false       
        Jump         -compare-4893-true        
        Label        -compare-4893-true        
        PushI        1                         
        Jump         -compare-4893-join        
        Label        -compare-4893-false       
        PushI        0                         
        Jump         -compare-4893-join        
        Label        -compare-4893-join        
        JumpTrue     -print-boolean-4894-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4894-join  
        Label        -print-boolean-4894-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4894-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4895-arg1        
        PushF        4.000000                  
        PushF        9.900000                  
        FMultiply                              
        Label        -compare-4895-arg2        
        PushF        7.900000                  
        Label        -compare-4895-sub         
        FSubtract                              
        JumpFPos     -compare-4895-false       
        Jump         -compare-4895-true        
        Label        -compare-4895-true        
        PushI        1                         
        Jump         -compare-4895-join        
        Label        -compare-4895-false       
        PushI        0                         
        Jump         -compare-4895-join        
        Label        -compare-4895-join        
        JumpTrue     -print-boolean-4896-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4896-join  
        Label        -print-boolean-4896-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4896-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4897-arg1        
        PushF        5.400000                  
        Label        -compare-4897-arg2        
        PushF        2.700000                  
        PushF        8.800000                  
        FMultiply                              
        Label        -compare-4897-sub         
        FSubtract                              
        JumpFPos     -compare-4897-false       
        Jump         -compare-4897-true        
        Label        -compare-4897-true        
        PushI        1                         
        Jump         -compare-4897-join        
        Label        -compare-4897-false       
        PushI        0                         
        Jump         -compare-4897-join        
        Label        -compare-4897-join        
        JumpTrue     -print-boolean-4898-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4898-join  
        Label        -print-boolean-4898-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4898-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4899-arg1        
        PushF        4.500000                  
        Label        -compare-4899-arg2        
        PushF        8.200000                  
        PushF        8.200000                  
        FMultiply                              
        Label        -compare-4899-sub         
        FSubtract                              
        JumpFPos     -compare-4899-false       
        Jump         -compare-4899-true        
        Label        -compare-4899-true        
        PushI        1                         
        Jump         -compare-4899-join        
        Label        -compare-4899-false       
        PushI        0                         
        Jump         -compare-4899-join        
        Label        -compare-4899-join        
        JumpTrue     -print-boolean-4900-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4900-join  
        Label        -print-boolean-4900-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4900-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4901-arg1        
        PushF        3.300000                  
        Label        -compare-4901-arg2        
        PushF        6.200000                  
        PushF        4.200000                  
        FMultiply                              
        Label        -compare-4901-sub         
        FSubtract                              
        JumpFPos     -compare-4901-false       
        Jump         -compare-4901-true        
        Label        -compare-4901-true        
        PushI        1                         
        Jump         -compare-4901-join        
        Label        -compare-4901-false       
        PushI        0                         
        Jump         -compare-4901-join        
        Label        -compare-4901-join        
        JumpTrue     -print-boolean-4902-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4902-join  
        Label        -print-boolean-4902-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4902-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4903-arg1        
        PushF        9.800000                  
        Label        -compare-4903-arg2        
        PushF        3.100000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-4903-sub         
        FSubtract                              
        JumpFPos     -compare-4903-false       
        Jump         -compare-4903-true        
        Label        -compare-4903-true        
        PushI        1                         
        Jump         -compare-4903-join        
        Label        -compare-4903-false       
        PushI        0                         
        Jump         -compare-4903-join        
        Label        -compare-4903-join        
        JumpTrue     -print-boolean-4904-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4904-join  
        Label        -print-boolean-4904-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4904-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4905-arg1        
        PushF        6.000000                  
        Label        -compare-4905-arg2        
        PushF        4.200000                  
        PushF        6.500000                  
        FMultiply                              
        Label        -compare-4905-sub         
        FSubtract                              
        JumpFPos     -compare-4905-false       
        Jump         -compare-4905-true        
        Label        -compare-4905-true        
        PushI        1                         
        Jump         -compare-4905-join        
        Label        -compare-4905-false       
        PushI        0                         
        Jump         -compare-4905-join        
        Label        -compare-4905-join        
        JumpTrue     -print-boolean-4906-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4906-join  
        Label        -print-boolean-4906-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4906-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4907-arg1        
        PushF        1.000000                  
        Label        -compare-4907-arg2        
        PushF        5.900000                  
        PushF        7.500000                  
        FMultiply                              
        Label        -compare-4907-sub         
        FSubtract                              
        JumpFPos     -compare-4907-false       
        Jump         -compare-4907-true        
        Label        -compare-4907-true        
        PushI        1                         
        Jump         -compare-4907-join        
        Label        -compare-4907-false       
        PushI        0                         
        Jump         -compare-4907-join        
        Label        -compare-4907-join        
        JumpTrue     -print-boolean-4908-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4908-join  
        Label        -print-boolean-4908-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4908-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4909-arg1        
        PushF        7.000000                  
        Label        -compare-4909-arg2        
        PushF        9.600000                  
        PushF        6.300000                  
        FMultiply                              
        Label        -compare-4909-sub         
        FSubtract                              
        JumpFPos     -compare-4909-false       
        Jump         -compare-4909-true        
        Label        -compare-4909-true        
        PushI        1                         
        Jump         -compare-4909-join        
        Label        -compare-4909-false       
        PushI        0                         
        Jump         -compare-4909-join        
        Label        -compare-4909-join        
        JumpTrue     -print-boolean-4910-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4910-join  
        Label        -print-boolean-4910-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4910-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4911-arg1        
        PushF        3.100000                  
        Label        -compare-4911-arg2        
        PushF        8.700000                  
        PushF        5.200000                  
        FMultiply                              
        Label        -compare-4911-sub         
        FSubtract                              
        JumpFPos     -compare-4911-false       
        Jump         -compare-4911-true        
        Label        -compare-4911-true        
        PushI        1                         
        Jump         -compare-4911-join        
        Label        -compare-4911-false       
        PushI        0                         
        Jump         -compare-4911-join        
        Label        -compare-4911-join        
        JumpTrue     -print-boolean-4912-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4912-join  
        Label        -print-boolean-4912-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4912-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4913-arg1        
        PushF        4.500000                  
        Label        -compare-4913-arg2        
        PushF        9.700000                  
        PushF        4.600000                  
        FMultiply                              
        Label        -compare-4913-sub         
        FSubtract                              
        JumpFPos     -compare-4913-false       
        Jump         -compare-4913-true        
        Label        -compare-4913-true        
        PushI        1                         
        Jump         -compare-4913-join        
        Label        -compare-4913-false       
        PushI        0                         
        Jump         -compare-4913-join        
        Label        -compare-4913-join        
        JumpTrue     -print-boolean-4914-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4914-join  
        Label        -print-boolean-4914-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4914-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4915-arg1        
        PushF        3.700000                  
        Label        -compare-4915-arg2        
        PushF        9.400000                  
        PushF        4.300000                  
        FMultiply                              
        Label        -compare-4915-sub         
        FSubtract                              
        JumpFPos     -compare-4915-false       
        Jump         -compare-4915-true        
        Label        -compare-4915-true        
        PushI        1                         
        Jump         -compare-4915-join        
        Label        -compare-4915-false       
        PushI        0                         
        Jump         -compare-4915-join        
        Label        -compare-4915-join        
        JumpTrue     -print-boolean-4916-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4916-join  
        Label        -print-boolean-4916-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4916-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4917-arg1        
        PushF        4.600000                  
        Label        -compare-4917-arg2        
        PushF        2.400000                  
        PushF        2.300000                  
        FMultiply                              
        Label        -compare-4917-sub         
        FSubtract                              
        JumpFPos     -compare-4917-false       
        Jump         -compare-4917-true        
        Label        -compare-4917-true        
        PushI        1                         
        Jump         -compare-4917-join        
        Label        -compare-4917-false       
        PushI        0                         
        Jump         -compare-4917-join        
        Label        -compare-4917-join        
        JumpTrue     -print-boolean-4918-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4918-join  
        Label        -print-boolean-4918-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4918-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4919-arg1        
        PushF        8.500000                  
        Label        -compare-4919-arg2        
        PushF        7.700000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-4919-sub         
        FSubtract                              
        JumpFPos     -compare-4919-false       
        Jump         -compare-4919-true        
        Label        -compare-4919-true        
        PushI        1                         
        Jump         -compare-4919-join        
        Label        -compare-4919-false       
        PushI        0                         
        Jump         -compare-4919-join        
        Label        -compare-4919-join        
        JumpTrue     -print-boolean-4920-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4920-join  
        Label        -print-boolean-4920-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4920-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4921-arg1        
        PushF        3.200000                  
        PushF        6.500000                  
        FMultiply                              
        Label        -compare-4921-arg2        
        PushF        7.400000                  
        PushF        5.200000                  
        FMultiply                              
        Label        -compare-4921-sub         
        FSubtract                              
        JumpFPos     -compare-4921-false       
        Jump         -compare-4921-true        
        Label        -compare-4921-true        
        PushI        1                         
        Jump         -compare-4921-join        
        Label        -compare-4921-false       
        PushI        0                         
        Jump         -compare-4921-join        
        Label        -compare-4921-join        
        JumpTrue     -print-boolean-4922-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4922-join  
        Label        -print-boolean-4922-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4922-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4923-arg1        
        PushF        9.500000                  
        PushF        8.800000                  
        FMultiply                              
        Label        -compare-4923-arg2        
        PushF        6.500000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-4923-sub         
        FSubtract                              
        JumpFPos     -compare-4923-false       
        Jump         -compare-4923-true        
        Label        -compare-4923-true        
        PushI        1                         
        Jump         -compare-4923-join        
        Label        -compare-4923-false       
        PushI        0                         
        Jump         -compare-4923-join        
        Label        -compare-4923-join        
        JumpTrue     -print-boolean-4924-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4924-join  
        Label        -print-boolean-4924-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4924-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4925-arg1        
        PushF        6.700000                  
        PushF        5.600000                  
        FMultiply                              
        Label        -compare-4925-arg2        
        PushF        3.400000                  
        PushF        2.300000                  
        FMultiply                              
        Label        -compare-4925-sub         
        FSubtract                              
        JumpFPos     -compare-4925-false       
        Jump         -compare-4925-true        
        Label        -compare-4925-true        
        PushI        1                         
        Jump         -compare-4925-join        
        Label        -compare-4925-false       
        PushI        0                         
        Jump         -compare-4925-join        
        Label        -compare-4925-join        
        JumpTrue     -print-boolean-4926-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4926-join  
        Label        -print-boolean-4926-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4926-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4927-arg1        
        PushF        9.900000                  
        PushF        5.200000                  
        FMultiply                              
        Label        -compare-4927-arg2        
        PushF        7.200000                  
        PushF        2.400000                  
        FMultiply                              
        Label        -compare-4927-sub         
        FSubtract                              
        JumpFPos     -compare-4927-false       
        Jump         -compare-4927-true        
        Label        -compare-4927-true        
        PushI        1                         
        Jump         -compare-4927-join        
        Label        -compare-4927-false       
        PushI        0                         
        Jump         -compare-4927-join        
        Label        -compare-4927-join        
        JumpTrue     -print-boolean-4928-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4928-join  
        Label        -print-boolean-4928-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4928-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4929-arg1        
        PushF        1.500000                  
        PushF        8.400000                  
        FMultiply                              
        Label        -compare-4929-arg2        
        PushF        8.700000                  
        PushF        9.600000                  
        FMultiply                              
        Label        -compare-4929-sub         
        FSubtract                              
        JumpFPos     -compare-4929-false       
        Jump         -compare-4929-true        
        Label        -compare-4929-true        
        PushI        1                         
        Jump         -compare-4929-join        
        Label        -compare-4929-false       
        PushI        0                         
        Jump         -compare-4929-join        
        Label        -compare-4929-join        
        JumpTrue     -print-boolean-4930-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4930-join  
        Label        -print-boolean-4930-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4930-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4931-arg1        
        PushF        1.500000                  
        PushF        7.900000                  
        FMultiply                              
        Label        -compare-4931-arg2        
        PushF        9.400000                  
        PushF        9.900000                  
        FMultiply                              
        Label        -compare-4931-sub         
        FSubtract                              
        JumpFPos     -compare-4931-false       
        Jump         -compare-4931-true        
        Label        -compare-4931-true        
        PushI        1                         
        Jump         -compare-4931-join        
        Label        -compare-4931-false       
        PushI        0                         
        Jump         -compare-4931-join        
        Label        -compare-4931-join        
        JumpTrue     -print-boolean-4932-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4932-join  
        Label        -print-boolean-4932-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4932-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4933-arg1        
        PushF        3.800000                  
        PushF        5.400000                  
        FMultiply                              
        Label        -compare-4933-arg2        
        PushF        1.400000                  
        PushF        4.600000                  
        FMultiply                              
        Label        -compare-4933-sub         
        FSubtract                              
        JumpFPos     -compare-4933-false       
        Jump         -compare-4933-true        
        Label        -compare-4933-true        
        PushI        1                         
        Jump         -compare-4933-join        
        Label        -compare-4933-false       
        PushI        0                         
        Jump         -compare-4933-join        
        Label        -compare-4933-join        
        JumpTrue     -print-boolean-4934-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4934-join  
        Label        -print-boolean-4934-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4934-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4935-arg1        
        PushF        2.200000                  
        PushF        9.700000                  
        FMultiply                              
        Label        -compare-4935-arg2        
        PushF        2.800000                  
        PushF        6.900000                  
        FMultiply                              
        Label        -compare-4935-sub         
        FSubtract                              
        JumpFPos     -compare-4935-false       
        Jump         -compare-4935-true        
        Label        -compare-4935-true        
        PushI        1                         
        Jump         -compare-4935-join        
        Label        -compare-4935-false       
        PushI        0                         
        Jump         -compare-4935-join        
        Label        -compare-4935-join        
        JumpTrue     -print-boolean-4936-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4936-join  
        Label        -print-boolean-4936-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4936-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4937-arg1        
        PushF        6.700000                  
        PushF        4.000000                  
        FMultiply                              
        Label        -compare-4937-arg2        
        PushF        3.600000                  
        PushF        5.200000                  
        FMultiply                              
        Label        -compare-4937-sub         
        FSubtract                              
        JumpFPos     -compare-4937-false       
        Jump         -compare-4937-true        
        Label        -compare-4937-true        
        PushI        1                         
        Jump         -compare-4937-join        
        Label        -compare-4937-false       
        PushI        0                         
        Jump         -compare-4937-join        
        Label        -compare-4937-join        
        JumpTrue     -print-boolean-4938-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4938-join  
        Label        -print-boolean-4938-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4938-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4939-arg1        
        PushF        6.800000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-4939-arg2        
        PushF        9.100000                  
        PushF        8.700000                  
        FMultiply                              
        Label        -compare-4939-sub         
        FSubtract                              
        JumpFPos     -compare-4939-false       
        Jump         -compare-4939-true        
        Label        -compare-4939-true        
        PushI        1                         
        Jump         -compare-4939-join        
        Label        -compare-4939-false       
        PushI        0                         
        Jump         -compare-4939-join        
        Label        -compare-4939-join        
        JumpTrue     -print-boolean-4940-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4940-join  
        Label        -print-boolean-4940-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4940-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4941-arg1        
        PushF        7.600000                  
        PushF        5.600000                  
        FMultiply                              
        Label        -compare-4941-arg2        
        PushF        5.000000                  
        PushF        5.000000                  
        FMultiply                              
        Label        -compare-4941-sub         
        FSubtract                              
        JumpFPos     -compare-4941-false       
        Jump         -compare-4941-true        
        Label        -compare-4941-true        
        PushI        1                         
        Jump         -compare-4941-join        
        Label        -compare-4941-false       
        PushI        0                         
        Jump         -compare-4941-join        
        Label        -compare-4941-join        
        JumpTrue     -print-boolean-4942-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4942-join  
        Label        -print-boolean-4942-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4942-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4943-arg1        
        PushF        9.200000                  
        PushF        6.300000                  
        FMultiply                              
        Label        -compare-4943-arg2        
        PushF        1.200000                  
        PushF        5.400000                  
        FMultiply                              
        Label        -compare-4943-sub         
        FSubtract                              
        JumpFPos     -compare-4943-false       
        Jump         -compare-4943-true        
        Label        -compare-4943-true        
        PushI        1                         
        Jump         -compare-4943-join        
        Label        -compare-4943-false       
        PushI        0                         
        Jump         -compare-4943-join        
        Label        -compare-4943-join        
        JumpTrue     -print-boolean-4944-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4944-join  
        Label        -print-boolean-4944-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4944-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
