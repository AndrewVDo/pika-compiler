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
        Label        -compare-4886-arg1        
        PushF        1.300000                  
        PushF        2.700000                  
        FMultiply                              
        Label        -compare-4886-arg2        
        PushF        2.300000                  
        Label        -compare-4886-sub         
        FSubtract                              
        JumpFPos     -compare-4886-false       
        Jump         -compare-4886-true        
        Label        -compare-4886-true        
        PushI        1                         
        Jump         -compare-4886-join        
        Label        -compare-4886-false       
        PushI        0                         
        Jump         -compare-4886-join        
        Label        -compare-4886-join        
        JumpTrue     -print-boolean-4887-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4887-join  
        Label        -print-boolean-4887-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4887-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4888-arg1        
        PushF        4.600000                  
        PushF        7.400000                  
        FMultiply                              
        Label        -compare-4888-arg2        
        PushF        6.900000                  
        Label        -compare-4888-sub         
        FSubtract                              
        JumpFPos     -compare-4888-false       
        Jump         -compare-4888-true        
        Label        -compare-4888-true        
        PushI        1                         
        Jump         -compare-4888-join        
        Label        -compare-4888-false       
        PushI        0                         
        Jump         -compare-4888-join        
        Label        -compare-4888-join        
        JumpTrue     -print-boolean-4889-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4889-join  
        Label        -print-boolean-4889-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4889-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4890-arg1        
        PushF        3.700000                  
        PushF        2.100000                  
        FMultiply                              
        Label        -compare-4890-arg2        
        PushF        9.500000                  
        Label        -compare-4890-sub         
        FSubtract                              
        JumpFPos     -compare-4890-false       
        Jump         -compare-4890-true        
        Label        -compare-4890-true        
        PushI        1                         
        Jump         -compare-4890-join        
        Label        -compare-4890-false       
        PushI        0                         
        Jump         -compare-4890-join        
        Label        -compare-4890-join        
        JumpTrue     -print-boolean-4891-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4891-join  
        Label        -print-boolean-4891-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4891-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4892-arg1        
        PushF        7.200000                  
        PushF        9.100000                  
        FMultiply                              
        Label        -compare-4892-arg2        
        PushF        8.600000                  
        Label        -compare-4892-sub         
        FSubtract                              
        JumpFPos     -compare-4892-false       
        Jump         -compare-4892-true        
        Label        -compare-4892-true        
        PushI        1                         
        Jump         -compare-4892-join        
        Label        -compare-4892-false       
        PushI        0                         
        Jump         -compare-4892-join        
        Label        -compare-4892-join        
        JumpTrue     -print-boolean-4893-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4893-join  
        Label        -print-boolean-4893-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4893-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4894-arg1        
        PushF        3.700000                  
        PushF        2.900000                  
        FMultiply                              
        Label        -compare-4894-arg2        
        PushF        8.900000                  
        Label        -compare-4894-sub         
        FSubtract                              
        JumpFPos     -compare-4894-false       
        Jump         -compare-4894-true        
        Label        -compare-4894-true        
        PushI        1                         
        Jump         -compare-4894-join        
        Label        -compare-4894-false       
        PushI        0                         
        Jump         -compare-4894-join        
        Label        -compare-4894-join        
        JumpTrue     -print-boolean-4895-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4895-join  
        Label        -print-boolean-4895-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4895-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4896-arg1        
        PushF        7.700000                  
        PushF        5.800000                  
        FMultiply                              
        Label        -compare-4896-arg2        
        PushF        9.000000                  
        Label        -compare-4896-sub         
        FSubtract                              
        JumpFPos     -compare-4896-false       
        Jump         -compare-4896-true        
        Label        -compare-4896-true        
        PushI        1                         
        Jump         -compare-4896-join        
        Label        -compare-4896-false       
        PushI        0                         
        Jump         -compare-4896-join        
        Label        -compare-4896-join        
        JumpTrue     -print-boolean-4897-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4897-join  
        Label        -print-boolean-4897-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4897-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4898-arg1        
        PushF        3.400000                  
        PushF        6.200000                  
        FMultiply                              
        Label        -compare-4898-arg2        
        PushF        2.600000                  
        Label        -compare-4898-sub         
        FSubtract                              
        JumpFPos     -compare-4898-false       
        Jump         -compare-4898-true        
        Label        -compare-4898-true        
        PushI        1                         
        Jump         -compare-4898-join        
        Label        -compare-4898-false       
        PushI        0                         
        Jump         -compare-4898-join        
        Label        -compare-4898-join        
        JumpTrue     -print-boolean-4899-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4899-join  
        Label        -print-boolean-4899-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4899-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4900-arg1        
        PushF        3.400000                  
        PushF        3.400000                  
        FMultiply                              
        Label        -compare-4900-arg2        
        PushF        4.400000                  
        Label        -compare-4900-sub         
        FSubtract                              
        JumpFPos     -compare-4900-false       
        Jump         -compare-4900-true        
        Label        -compare-4900-true        
        PushI        1                         
        Jump         -compare-4900-join        
        Label        -compare-4900-false       
        PushI        0                         
        Jump         -compare-4900-join        
        Label        -compare-4900-join        
        JumpTrue     -print-boolean-4901-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4901-join  
        Label        -print-boolean-4901-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4901-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4902-arg1        
        PushF        1.100000                  
        PushF        3.500000                  
        FMultiply                              
        Label        -compare-4902-arg2        
        PushF        9.000000                  
        Label        -compare-4902-sub         
        FSubtract                              
        JumpFPos     -compare-4902-false       
        Jump         -compare-4902-true        
        Label        -compare-4902-true        
        PushI        1                         
        Jump         -compare-4902-join        
        Label        -compare-4902-false       
        PushI        0                         
        Jump         -compare-4902-join        
        Label        -compare-4902-join        
        JumpTrue     -print-boolean-4903-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4903-join  
        Label        -print-boolean-4903-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4903-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4904-arg1        
        PushF        4.600000                  
        PushF        7.600000                  
        FMultiply                              
        Label        -compare-4904-arg2        
        PushF        6.000000                  
        Label        -compare-4904-sub         
        FSubtract                              
        JumpFPos     -compare-4904-false       
        Jump         -compare-4904-true        
        Label        -compare-4904-true        
        PushI        1                         
        Jump         -compare-4904-join        
        Label        -compare-4904-false       
        PushI        0                         
        Jump         -compare-4904-join        
        Label        -compare-4904-join        
        JumpTrue     -print-boolean-4905-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4905-join  
        Label        -print-boolean-4905-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4905-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4906-arg1        
        PushF        9.900000                  
        PushF        4.100000                  
        FMultiply                              
        Label        -compare-4906-arg2        
        PushF        6.500000                  
        Label        -compare-4906-sub         
        FSubtract                              
        JumpFPos     -compare-4906-false       
        Jump         -compare-4906-true        
        Label        -compare-4906-true        
        PushI        1                         
        Jump         -compare-4906-join        
        Label        -compare-4906-false       
        PushI        0                         
        Jump         -compare-4906-join        
        Label        -compare-4906-join        
        JumpTrue     -print-boolean-4907-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4907-join  
        Label        -print-boolean-4907-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4907-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4908-arg1        
        PushF        4.000000                  
        PushF        9.900000                  
        FMultiply                              
        Label        -compare-4908-arg2        
        PushF        7.900000                  
        Label        -compare-4908-sub         
        FSubtract                              
        JumpFPos     -compare-4908-false       
        Jump         -compare-4908-true        
        Label        -compare-4908-true        
        PushI        1                         
        Jump         -compare-4908-join        
        Label        -compare-4908-false       
        PushI        0                         
        Jump         -compare-4908-join        
        Label        -compare-4908-join        
        JumpTrue     -print-boolean-4909-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4909-join  
        Label        -print-boolean-4909-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4909-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4910-arg1        
        PushF        5.400000                  
        Label        -compare-4910-arg2        
        PushF        2.700000                  
        PushF        8.800000                  
        FMultiply                              
        Label        -compare-4910-sub         
        FSubtract                              
        JumpFPos     -compare-4910-false       
        Jump         -compare-4910-true        
        Label        -compare-4910-true        
        PushI        1                         
        Jump         -compare-4910-join        
        Label        -compare-4910-false       
        PushI        0                         
        Jump         -compare-4910-join        
        Label        -compare-4910-join        
        JumpTrue     -print-boolean-4911-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4911-join  
        Label        -print-boolean-4911-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4911-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4912-arg1        
        PushF        4.500000                  
        Label        -compare-4912-arg2        
        PushF        8.200000                  
        PushF        8.200000                  
        FMultiply                              
        Label        -compare-4912-sub         
        FSubtract                              
        JumpFPos     -compare-4912-false       
        Jump         -compare-4912-true        
        Label        -compare-4912-true        
        PushI        1                         
        Jump         -compare-4912-join        
        Label        -compare-4912-false       
        PushI        0                         
        Jump         -compare-4912-join        
        Label        -compare-4912-join        
        JumpTrue     -print-boolean-4913-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4913-join  
        Label        -print-boolean-4913-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4913-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4914-arg1        
        PushF        3.300000                  
        Label        -compare-4914-arg2        
        PushF        6.200000                  
        PushF        4.200000                  
        FMultiply                              
        Label        -compare-4914-sub         
        FSubtract                              
        JumpFPos     -compare-4914-false       
        Jump         -compare-4914-true        
        Label        -compare-4914-true        
        PushI        1                         
        Jump         -compare-4914-join        
        Label        -compare-4914-false       
        PushI        0                         
        Jump         -compare-4914-join        
        Label        -compare-4914-join        
        JumpTrue     -print-boolean-4915-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4915-join  
        Label        -print-boolean-4915-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4915-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4916-arg1        
        PushF        9.800000                  
        Label        -compare-4916-arg2        
        PushF        3.100000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-4916-sub         
        FSubtract                              
        JumpFPos     -compare-4916-false       
        Jump         -compare-4916-true        
        Label        -compare-4916-true        
        PushI        1                         
        Jump         -compare-4916-join        
        Label        -compare-4916-false       
        PushI        0                         
        Jump         -compare-4916-join        
        Label        -compare-4916-join        
        JumpTrue     -print-boolean-4917-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4917-join  
        Label        -print-boolean-4917-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4917-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4918-arg1        
        PushF        6.000000                  
        Label        -compare-4918-arg2        
        PushF        4.200000                  
        PushF        6.500000                  
        FMultiply                              
        Label        -compare-4918-sub         
        FSubtract                              
        JumpFPos     -compare-4918-false       
        Jump         -compare-4918-true        
        Label        -compare-4918-true        
        PushI        1                         
        Jump         -compare-4918-join        
        Label        -compare-4918-false       
        PushI        0                         
        Jump         -compare-4918-join        
        Label        -compare-4918-join        
        JumpTrue     -print-boolean-4919-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4919-join  
        Label        -print-boolean-4919-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4919-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4920-arg1        
        PushF        1.000000                  
        Label        -compare-4920-arg2        
        PushF        5.900000                  
        PushF        7.500000                  
        FMultiply                              
        Label        -compare-4920-sub         
        FSubtract                              
        JumpFPos     -compare-4920-false       
        Jump         -compare-4920-true        
        Label        -compare-4920-true        
        PushI        1                         
        Jump         -compare-4920-join        
        Label        -compare-4920-false       
        PushI        0                         
        Jump         -compare-4920-join        
        Label        -compare-4920-join        
        JumpTrue     -print-boolean-4921-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4921-join  
        Label        -print-boolean-4921-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4921-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4922-arg1        
        PushF        7.000000                  
        Label        -compare-4922-arg2        
        PushF        9.600000                  
        PushF        6.300000                  
        FMultiply                              
        Label        -compare-4922-sub         
        FSubtract                              
        JumpFPos     -compare-4922-false       
        Jump         -compare-4922-true        
        Label        -compare-4922-true        
        PushI        1                         
        Jump         -compare-4922-join        
        Label        -compare-4922-false       
        PushI        0                         
        Jump         -compare-4922-join        
        Label        -compare-4922-join        
        JumpTrue     -print-boolean-4923-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4923-join  
        Label        -print-boolean-4923-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4923-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4924-arg1        
        PushF        3.100000                  
        Label        -compare-4924-arg2        
        PushF        8.700000                  
        PushF        5.200000                  
        FMultiply                              
        Label        -compare-4924-sub         
        FSubtract                              
        JumpFPos     -compare-4924-false       
        Jump         -compare-4924-true        
        Label        -compare-4924-true        
        PushI        1                         
        Jump         -compare-4924-join        
        Label        -compare-4924-false       
        PushI        0                         
        Jump         -compare-4924-join        
        Label        -compare-4924-join        
        JumpTrue     -print-boolean-4925-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4925-join  
        Label        -print-boolean-4925-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4925-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4926-arg1        
        PushF        4.500000                  
        Label        -compare-4926-arg2        
        PushF        9.700000                  
        PushF        4.600000                  
        FMultiply                              
        Label        -compare-4926-sub         
        FSubtract                              
        JumpFPos     -compare-4926-false       
        Jump         -compare-4926-true        
        Label        -compare-4926-true        
        PushI        1                         
        Jump         -compare-4926-join        
        Label        -compare-4926-false       
        PushI        0                         
        Jump         -compare-4926-join        
        Label        -compare-4926-join        
        JumpTrue     -print-boolean-4927-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4927-join  
        Label        -print-boolean-4927-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4927-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4928-arg1        
        PushF        3.700000                  
        Label        -compare-4928-arg2        
        PushF        9.400000                  
        PushF        4.300000                  
        FMultiply                              
        Label        -compare-4928-sub         
        FSubtract                              
        JumpFPos     -compare-4928-false       
        Jump         -compare-4928-true        
        Label        -compare-4928-true        
        PushI        1                         
        Jump         -compare-4928-join        
        Label        -compare-4928-false       
        PushI        0                         
        Jump         -compare-4928-join        
        Label        -compare-4928-join        
        JumpTrue     -print-boolean-4929-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4929-join  
        Label        -print-boolean-4929-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4929-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4930-arg1        
        PushF        4.600000                  
        Label        -compare-4930-arg2        
        PushF        2.400000                  
        PushF        2.300000                  
        FMultiply                              
        Label        -compare-4930-sub         
        FSubtract                              
        JumpFPos     -compare-4930-false       
        Jump         -compare-4930-true        
        Label        -compare-4930-true        
        PushI        1                         
        Jump         -compare-4930-join        
        Label        -compare-4930-false       
        PushI        0                         
        Jump         -compare-4930-join        
        Label        -compare-4930-join        
        JumpTrue     -print-boolean-4931-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4931-join  
        Label        -print-boolean-4931-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4931-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4932-arg1        
        PushF        8.500000                  
        Label        -compare-4932-arg2        
        PushF        7.700000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-4932-sub         
        FSubtract                              
        JumpFPos     -compare-4932-false       
        Jump         -compare-4932-true        
        Label        -compare-4932-true        
        PushI        1                         
        Jump         -compare-4932-join        
        Label        -compare-4932-false       
        PushI        0                         
        Jump         -compare-4932-join        
        Label        -compare-4932-join        
        JumpTrue     -print-boolean-4933-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4933-join  
        Label        -print-boolean-4933-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4933-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4934-arg1        
        PushF        3.200000                  
        PushF        6.500000                  
        FMultiply                              
        Label        -compare-4934-arg2        
        PushF        7.400000                  
        PushF        5.200000                  
        FMultiply                              
        Label        -compare-4934-sub         
        FSubtract                              
        JumpFPos     -compare-4934-false       
        Jump         -compare-4934-true        
        Label        -compare-4934-true        
        PushI        1                         
        Jump         -compare-4934-join        
        Label        -compare-4934-false       
        PushI        0                         
        Jump         -compare-4934-join        
        Label        -compare-4934-join        
        JumpTrue     -print-boolean-4935-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4935-join  
        Label        -print-boolean-4935-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4935-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4936-arg1        
        PushF        9.500000                  
        PushF        8.800000                  
        FMultiply                              
        Label        -compare-4936-arg2        
        PushF        6.500000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-4936-sub         
        FSubtract                              
        JumpFPos     -compare-4936-false       
        Jump         -compare-4936-true        
        Label        -compare-4936-true        
        PushI        1                         
        Jump         -compare-4936-join        
        Label        -compare-4936-false       
        PushI        0                         
        Jump         -compare-4936-join        
        Label        -compare-4936-join        
        JumpTrue     -print-boolean-4937-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4937-join  
        Label        -print-boolean-4937-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4937-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4938-arg1        
        PushF        6.700000                  
        PushF        5.600000                  
        FMultiply                              
        Label        -compare-4938-arg2        
        PushF        3.400000                  
        PushF        2.300000                  
        FMultiply                              
        Label        -compare-4938-sub         
        FSubtract                              
        JumpFPos     -compare-4938-false       
        Jump         -compare-4938-true        
        Label        -compare-4938-true        
        PushI        1                         
        Jump         -compare-4938-join        
        Label        -compare-4938-false       
        PushI        0                         
        Jump         -compare-4938-join        
        Label        -compare-4938-join        
        JumpTrue     -print-boolean-4939-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4939-join  
        Label        -print-boolean-4939-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4939-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4940-arg1        
        PushF        9.900000                  
        PushF        5.200000                  
        FMultiply                              
        Label        -compare-4940-arg2        
        PushF        7.200000                  
        PushF        2.400000                  
        FMultiply                              
        Label        -compare-4940-sub         
        FSubtract                              
        JumpFPos     -compare-4940-false       
        Jump         -compare-4940-true        
        Label        -compare-4940-true        
        PushI        1                         
        Jump         -compare-4940-join        
        Label        -compare-4940-false       
        PushI        0                         
        Jump         -compare-4940-join        
        Label        -compare-4940-join        
        JumpTrue     -print-boolean-4941-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4941-join  
        Label        -print-boolean-4941-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4941-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4942-arg1        
        PushF        1.500000                  
        PushF        8.400000                  
        FMultiply                              
        Label        -compare-4942-arg2        
        PushF        8.700000                  
        PushF        9.600000                  
        FMultiply                              
        Label        -compare-4942-sub         
        FSubtract                              
        JumpFPos     -compare-4942-false       
        Jump         -compare-4942-true        
        Label        -compare-4942-true        
        PushI        1                         
        Jump         -compare-4942-join        
        Label        -compare-4942-false       
        PushI        0                         
        Jump         -compare-4942-join        
        Label        -compare-4942-join        
        JumpTrue     -print-boolean-4943-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4943-join  
        Label        -print-boolean-4943-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4943-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4944-arg1        
        PushF        1.500000                  
        PushF        7.900000                  
        FMultiply                              
        Label        -compare-4944-arg2        
        PushF        9.400000                  
        PushF        9.900000                  
        FMultiply                              
        Label        -compare-4944-sub         
        FSubtract                              
        JumpFPos     -compare-4944-false       
        Jump         -compare-4944-true        
        Label        -compare-4944-true        
        PushI        1                         
        Jump         -compare-4944-join        
        Label        -compare-4944-false       
        PushI        0                         
        Jump         -compare-4944-join        
        Label        -compare-4944-join        
        JumpTrue     -print-boolean-4945-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4945-join  
        Label        -print-boolean-4945-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4945-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4946-arg1        
        PushF        3.800000                  
        PushF        5.400000                  
        FMultiply                              
        Label        -compare-4946-arg2        
        PushF        1.400000                  
        PushF        4.600000                  
        FMultiply                              
        Label        -compare-4946-sub         
        FSubtract                              
        JumpFPos     -compare-4946-false       
        Jump         -compare-4946-true        
        Label        -compare-4946-true        
        PushI        1                         
        Jump         -compare-4946-join        
        Label        -compare-4946-false       
        PushI        0                         
        Jump         -compare-4946-join        
        Label        -compare-4946-join        
        JumpTrue     -print-boolean-4947-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4947-join  
        Label        -print-boolean-4947-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4947-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4948-arg1        
        PushF        2.200000                  
        PushF        9.700000                  
        FMultiply                              
        Label        -compare-4948-arg2        
        PushF        2.800000                  
        PushF        6.900000                  
        FMultiply                              
        Label        -compare-4948-sub         
        FSubtract                              
        JumpFPos     -compare-4948-false       
        Jump         -compare-4948-true        
        Label        -compare-4948-true        
        PushI        1                         
        Jump         -compare-4948-join        
        Label        -compare-4948-false       
        PushI        0                         
        Jump         -compare-4948-join        
        Label        -compare-4948-join        
        JumpTrue     -print-boolean-4949-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4949-join  
        Label        -print-boolean-4949-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4949-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4950-arg1        
        PushF        6.700000                  
        PushF        4.000000                  
        FMultiply                              
        Label        -compare-4950-arg2        
        PushF        3.600000                  
        PushF        5.200000                  
        FMultiply                              
        Label        -compare-4950-sub         
        FSubtract                              
        JumpFPos     -compare-4950-false       
        Jump         -compare-4950-true        
        Label        -compare-4950-true        
        PushI        1                         
        Jump         -compare-4950-join        
        Label        -compare-4950-false       
        PushI        0                         
        Jump         -compare-4950-join        
        Label        -compare-4950-join        
        JumpTrue     -print-boolean-4951-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4951-join  
        Label        -print-boolean-4951-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4951-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4952-arg1        
        PushF        6.800000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-4952-arg2        
        PushF        9.100000                  
        PushF        8.700000                  
        FMultiply                              
        Label        -compare-4952-sub         
        FSubtract                              
        JumpFPos     -compare-4952-false       
        Jump         -compare-4952-true        
        Label        -compare-4952-true        
        PushI        1                         
        Jump         -compare-4952-join        
        Label        -compare-4952-false       
        PushI        0                         
        Jump         -compare-4952-join        
        Label        -compare-4952-join        
        JumpTrue     -print-boolean-4953-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4953-join  
        Label        -print-boolean-4953-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4953-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4954-arg1        
        PushF        7.600000                  
        PushF        5.600000                  
        FMultiply                              
        Label        -compare-4954-arg2        
        PushF        5.000000                  
        PushF        5.000000                  
        FMultiply                              
        Label        -compare-4954-sub         
        FSubtract                              
        JumpFPos     -compare-4954-false       
        Jump         -compare-4954-true        
        Label        -compare-4954-true        
        PushI        1                         
        Jump         -compare-4954-join        
        Label        -compare-4954-false       
        PushI        0                         
        Jump         -compare-4954-join        
        Label        -compare-4954-join        
        JumpTrue     -print-boolean-4955-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4955-join  
        Label        -print-boolean-4955-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4955-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4956-arg1        
        PushF        9.200000                  
        PushF        6.300000                  
        FMultiply                              
        Label        -compare-4956-arg2        
        PushF        1.200000                  
        PushF        5.400000                  
        FMultiply                              
        Label        -compare-4956-sub         
        FSubtract                              
        JumpFPos     -compare-4956-false       
        Jump         -compare-4956-true        
        Label        -compare-4956-true        
        PushI        1                         
        Jump         -compare-4956-join        
        Label        -compare-4956-false       
        PushI        0                         
        Jump         -compare-4956-join        
        Label        -compare-4956-join        
        JumpTrue     -print-boolean-4957-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4957-join  
        Label        -print-boolean-4957-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4957-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
