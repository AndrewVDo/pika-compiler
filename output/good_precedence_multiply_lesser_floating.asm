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
        Label        -compare-4742-arg1        
        PushF        5.000000                  
        PushF        9.500000                  
        FMultiply                              
        Label        -compare-4742-arg2        
        PushF        4.600000                  
        Label        -compare-4742-sub         
        FSubtract                              
        JumpFNeg     -compare-4742-true        
        Jump         -compare-4742-false       
        Label        -compare-4742-true        
        PushI        1                         
        Jump         -compare-4742-join        
        Label        -compare-4742-false       
        PushI        0                         
        Jump         -compare-4742-join        
        Label        -compare-4742-join        
        JumpTrue     -print-boolean-4743-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4743-join  
        Label        -print-boolean-4743-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4743-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4744-arg1        
        PushF        9.300000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-4744-arg2        
        PushF        9.100000                  
        Label        -compare-4744-sub         
        FSubtract                              
        JumpFNeg     -compare-4744-true        
        Jump         -compare-4744-false       
        Label        -compare-4744-true        
        PushI        1                         
        Jump         -compare-4744-join        
        Label        -compare-4744-false       
        PushI        0                         
        Jump         -compare-4744-join        
        Label        -compare-4744-join        
        JumpTrue     -print-boolean-4745-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4745-join  
        Label        -print-boolean-4745-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4745-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4746-arg1        
        PushF        8.700000                  
        PushF        2.200000                  
        FMultiply                              
        Label        -compare-4746-arg2        
        PushF        4.200000                  
        Label        -compare-4746-sub         
        FSubtract                              
        JumpFNeg     -compare-4746-true        
        Jump         -compare-4746-false       
        Label        -compare-4746-true        
        PushI        1                         
        Jump         -compare-4746-join        
        Label        -compare-4746-false       
        PushI        0                         
        Jump         -compare-4746-join        
        Label        -compare-4746-join        
        JumpTrue     -print-boolean-4747-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4747-join  
        Label        -print-boolean-4747-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4747-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4748-arg1        
        PushF        3.000000                  
        PushF        3.100000                  
        FMultiply                              
        Label        -compare-4748-arg2        
        PushF        3.800000                  
        Label        -compare-4748-sub         
        FSubtract                              
        JumpFNeg     -compare-4748-true        
        Jump         -compare-4748-false       
        Label        -compare-4748-true        
        PushI        1                         
        Jump         -compare-4748-join        
        Label        -compare-4748-false       
        PushI        0                         
        Jump         -compare-4748-join        
        Label        -compare-4748-join        
        JumpTrue     -print-boolean-4749-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4749-join  
        Label        -print-boolean-4749-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4749-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4750-arg1        
        PushF        5.100000                  
        PushF        5.800000                  
        FMultiply                              
        Label        -compare-4750-arg2        
        PushF        2.300000                  
        Label        -compare-4750-sub         
        FSubtract                              
        JumpFNeg     -compare-4750-true        
        Jump         -compare-4750-false       
        Label        -compare-4750-true        
        PushI        1                         
        Jump         -compare-4750-join        
        Label        -compare-4750-false       
        PushI        0                         
        Jump         -compare-4750-join        
        Label        -compare-4750-join        
        JumpTrue     -print-boolean-4751-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4751-join  
        Label        -print-boolean-4751-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4751-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4752-arg1        
        PushF        4.200000                  
        PushF        4.400000                  
        FMultiply                              
        Label        -compare-4752-arg2        
        PushF        9.500000                  
        Label        -compare-4752-sub         
        FSubtract                              
        JumpFNeg     -compare-4752-true        
        Jump         -compare-4752-false       
        Label        -compare-4752-true        
        PushI        1                         
        Jump         -compare-4752-join        
        Label        -compare-4752-false       
        PushI        0                         
        Jump         -compare-4752-join        
        Label        -compare-4752-join        
        JumpTrue     -print-boolean-4753-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4753-join  
        Label        -print-boolean-4753-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4753-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4754-arg1        
        PushF        6.600000                  
        PushF        7.800000                  
        FMultiply                              
        Label        -compare-4754-arg2        
        PushF        6.100000                  
        Label        -compare-4754-sub         
        FSubtract                              
        JumpFNeg     -compare-4754-true        
        Jump         -compare-4754-false       
        Label        -compare-4754-true        
        PushI        1                         
        Jump         -compare-4754-join        
        Label        -compare-4754-false       
        PushI        0                         
        Jump         -compare-4754-join        
        Label        -compare-4754-join        
        JumpTrue     -print-boolean-4755-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4755-join  
        Label        -print-boolean-4755-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4755-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4756-arg1        
        PushF        7.800000                  
        PushF        5.900000                  
        FMultiply                              
        Label        -compare-4756-arg2        
        PushF        6.200000                  
        Label        -compare-4756-sub         
        FSubtract                              
        JumpFNeg     -compare-4756-true        
        Jump         -compare-4756-false       
        Label        -compare-4756-true        
        PushI        1                         
        Jump         -compare-4756-join        
        Label        -compare-4756-false       
        PushI        0                         
        Jump         -compare-4756-join        
        Label        -compare-4756-join        
        JumpTrue     -print-boolean-4757-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4757-join  
        Label        -print-boolean-4757-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4757-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4758-arg1        
        PushF        6.200000                  
        PushF        8.200000                  
        FMultiply                              
        Label        -compare-4758-arg2        
        PushF        9.800000                  
        Label        -compare-4758-sub         
        FSubtract                              
        JumpFNeg     -compare-4758-true        
        Jump         -compare-4758-false       
        Label        -compare-4758-true        
        PushI        1                         
        Jump         -compare-4758-join        
        Label        -compare-4758-false       
        PushI        0                         
        Jump         -compare-4758-join        
        Label        -compare-4758-join        
        JumpTrue     -print-boolean-4759-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4759-join  
        Label        -print-boolean-4759-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4759-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4760-arg1        
        PushF        2.500000                  
        PushF        5.800000                  
        FMultiply                              
        Label        -compare-4760-arg2        
        PushF        3.500000                  
        Label        -compare-4760-sub         
        FSubtract                              
        JumpFNeg     -compare-4760-true        
        Jump         -compare-4760-false       
        Label        -compare-4760-true        
        PushI        1                         
        Jump         -compare-4760-join        
        Label        -compare-4760-false       
        PushI        0                         
        Jump         -compare-4760-join        
        Label        -compare-4760-join        
        JumpTrue     -print-boolean-4761-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4761-join  
        Label        -print-boolean-4761-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4761-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4762-arg1        
        PushF        8.200000                  
        PushF        9.600000                  
        FMultiply                              
        Label        -compare-4762-arg2        
        PushF        3.000000                  
        Label        -compare-4762-sub         
        FSubtract                              
        JumpFNeg     -compare-4762-true        
        Jump         -compare-4762-false       
        Label        -compare-4762-true        
        PushI        1                         
        Jump         -compare-4762-join        
        Label        -compare-4762-false       
        PushI        0                         
        Jump         -compare-4762-join        
        Label        -compare-4762-join        
        JumpTrue     -print-boolean-4763-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4763-join  
        Label        -print-boolean-4763-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4763-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4764-arg1        
        PushF        5.700000                  
        PushF        8.900000                  
        FMultiply                              
        Label        -compare-4764-arg2        
        PushF        2.400000                  
        Label        -compare-4764-sub         
        FSubtract                              
        JumpFNeg     -compare-4764-true        
        Jump         -compare-4764-false       
        Label        -compare-4764-true        
        PushI        1                         
        Jump         -compare-4764-join        
        Label        -compare-4764-false       
        PushI        0                         
        Jump         -compare-4764-join        
        Label        -compare-4764-join        
        JumpTrue     -print-boolean-4765-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4765-join  
        Label        -print-boolean-4765-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4765-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4766-arg1        
        PushF        4.900000                  
        Label        -compare-4766-arg2        
        PushF        5.600000                  
        PushF        7.600000                  
        FMultiply                              
        Label        -compare-4766-sub         
        FSubtract                              
        JumpFNeg     -compare-4766-true        
        Jump         -compare-4766-false       
        Label        -compare-4766-true        
        PushI        1                         
        Jump         -compare-4766-join        
        Label        -compare-4766-false       
        PushI        0                         
        Jump         -compare-4766-join        
        Label        -compare-4766-join        
        JumpTrue     -print-boolean-4767-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4767-join  
        Label        -print-boolean-4767-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4767-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4768-arg1        
        PushF        7.000000                  
        Label        -compare-4768-arg2        
        PushF        7.300000                  
        PushF        3.400000                  
        FMultiply                              
        Label        -compare-4768-sub         
        FSubtract                              
        JumpFNeg     -compare-4768-true        
        Jump         -compare-4768-false       
        Label        -compare-4768-true        
        PushI        1                         
        Jump         -compare-4768-join        
        Label        -compare-4768-false       
        PushI        0                         
        Jump         -compare-4768-join        
        Label        -compare-4768-join        
        JumpTrue     -print-boolean-4769-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4769-join  
        Label        -print-boolean-4769-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4769-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4770-arg1        
        PushF        2.800000                  
        Label        -compare-4770-arg2        
        PushF        5.000000                  
        PushF        1.700000                  
        FMultiply                              
        Label        -compare-4770-sub         
        FSubtract                              
        JumpFNeg     -compare-4770-true        
        Jump         -compare-4770-false       
        Label        -compare-4770-true        
        PushI        1                         
        Jump         -compare-4770-join        
        Label        -compare-4770-false       
        PushI        0                         
        Jump         -compare-4770-join        
        Label        -compare-4770-join        
        JumpTrue     -print-boolean-4771-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4771-join  
        Label        -print-boolean-4771-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4771-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4772-arg1        
        PushF        9.600000                  
        Label        -compare-4772-arg2        
        PushF        4.100000                  
        PushF        1.100000                  
        FMultiply                              
        Label        -compare-4772-sub         
        FSubtract                              
        JumpFNeg     -compare-4772-true        
        Jump         -compare-4772-false       
        Label        -compare-4772-true        
        PushI        1                         
        Jump         -compare-4772-join        
        Label        -compare-4772-false       
        PushI        0                         
        Jump         -compare-4772-join        
        Label        -compare-4772-join        
        JumpTrue     -print-boolean-4773-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4773-join  
        Label        -print-boolean-4773-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4773-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4774-arg1        
        PushF        1.900000                  
        Label        -compare-4774-arg2        
        PushF        9.900000                  
        PushF        6.700000                  
        FMultiply                              
        Label        -compare-4774-sub         
        FSubtract                              
        JumpFNeg     -compare-4774-true        
        Jump         -compare-4774-false       
        Label        -compare-4774-true        
        PushI        1                         
        Jump         -compare-4774-join        
        Label        -compare-4774-false       
        PushI        0                         
        Jump         -compare-4774-join        
        Label        -compare-4774-join        
        JumpTrue     -print-boolean-4775-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4775-join  
        Label        -print-boolean-4775-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4775-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4776-arg1        
        PushF        7.200000                  
        Label        -compare-4776-arg2        
        PushF        4.700000                  
        PushF        3.800000                  
        FMultiply                              
        Label        -compare-4776-sub         
        FSubtract                              
        JumpFNeg     -compare-4776-true        
        Jump         -compare-4776-false       
        Label        -compare-4776-true        
        PushI        1                         
        Jump         -compare-4776-join        
        Label        -compare-4776-false       
        PushI        0                         
        Jump         -compare-4776-join        
        Label        -compare-4776-join        
        JumpTrue     -print-boolean-4777-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4777-join  
        Label        -print-boolean-4777-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4777-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4778-arg1        
        PushF        3.500000                  
        Label        -compare-4778-arg2        
        PushF        6.000000                  
        PushF        2.500000                  
        FMultiply                              
        Label        -compare-4778-sub         
        FSubtract                              
        JumpFNeg     -compare-4778-true        
        Jump         -compare-4778-false       
        Label        -compare-4778-true        
        PushI        1                         
        Jump         -compare-4778-join        
        Label        -compare-4778-false       
        PushI        0                         
        Jump         -compare-4778-join        
        Label        -compare-4778-join        
        JumpTrue     -print-boolean-4779-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4779-join  
        Label        -print-boolean-4779-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4779-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4780-arg1        
        PushF        7.000000                  
        Label        -compare-4780-arg2        
        PushF        9.900000                  
        PushF        4.500000                  
        FMultiply                              
        Label        -compare-4780-sub         
        FSubtract                              
        JumpFNeg     -compare-4780-true        
        Jump         -compare-4780-false       
        Label        -compare-4780-true        
        PushI        1                         
        Jump         -compare-4780-join        
        Label        -compare-4780-false       
        PushI        0                         
        Jump         -compare-4780-join        
        Label        -compare-4780-join        
        JumpTrue     -print-boolean-4781-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4781-join  
        Label        -print-boolean-4781-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4781-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4782-arg1        
        PushF        1.500000                  
        Label        -compare-4782-arg2        
        PushF        3.800000                  
        PushF        3.700000                  
        FMultiply                              
        Label        -compare-4782-sub         
        FSubtract                              
        JumpFNeg     -compare-4782-true        
        Jump         -compare-4782-false       
        Label        -compare-4782-true        
        PushI        1                         
        Jump         -compare-4782-join        
        Label        -compare-4782-false       
        PushI        0                         
        Jump         -compare-4782-join        
        Label        -compare-4782-join        
        JumpTrue     -print-boolean-4783-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4783-join  
        Label        -print-boolean-4783-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4783-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4784-arg1        
        PushF        8.900000                  
        Label        -compare-4784-arg2        
        PushF        9.800000                  
        PushF        6.400000                  
        FMultiply                              
        Label        -compare-4784-sub         
        FSubtract                              
        JumpFNeg     -compare-4784-true        
        Jump         -compare-4784-false       
        Label        -compare-4784-true        
        PushI        1                         
        Jump         -compare-4784-join        
        Label        -compare-4784-false       
        PushI        0                         
        Jump         -compare-4784-join        
        Label        -compare-4784-join        
        JumpTrue     -print-boolean-4785-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4785-join  
        Label        -print-boolean-4785-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4785-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4786-arg1        
        PushF        4.700000                  
        Label        -compare-4786-arg2        
        PushF        7.700000                  
        PushF        6.200000                  
        FMultiply                              
        Label        -compare-4786-sub         
        FSubtract                              
        JumpFNeg     -compare-4786-true        
        Jump         -compare-4786-false       
        Label        -compare-4786-true        
        PushI        1                         
        Jump         -compare-4786-join        
        Label        -compare-4786-false       
        PushI        0                         
        Jump         -compare-4786-join        
        Label        -compare-4786-join        
        JumpTrue     -print-boolean-4787-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4787-join  
        Label        -print-boolean-4787-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4787-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4788-arg1        
        PushF        6.700000                  
        Label        -compare-4788-arg2        
        PushF        8.200000                  
        PushF        2.100000                  
        FMultiply                              
        Label        -compare-4788-sub         
        FSubtract                              
        JumpFNeg     -compare-4788-true        
        Jump         -compare-4788-false       
        Label        -compare-4788-true        
        PushI        1                         
        Jump         -compare-4788-join        
        Label        -compare-4788-false       
        PushI        0                         
        Jump         -compare-4788-join        
        Label        -compare-4788-join        
        JumpTrue     -print-boolean-4789-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4789-join  
        Label        -print-boolean-4789-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4789-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4790-arg1        
        PushF        7.200000                  
        PushF        4.900000                  
        FMultiply                              
        Label        -compare-4790-arg2        
        PushF        3.800000                  
        PushF        4.800000                  
        FMultiply                              
        Label        -compare-4790-sub         
        FSubtract                              
        JumpFNeg     -compare-4790-true        
        Jump         -compare-4790-false       
        Label        -compare-4790-true        
        PushI        1                         
        Jump         -compare-4790-join        
        Label        -compare-4790-false       
        PushI        0                         
        Jump         -compare-4790-join        
        Label        -compare-4790-join        
        JumpTrue     -print-boolean-4791-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4791-join  
        Label        -print-boolean-4791-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4791-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4792-arg1        
        PushF        6.800000                  
        PushF        9.100000                  
        FMultiply                              
        Label        -compare-4792-arg2        
        PushF        1.400000                  
        PushF        5.700000                  
        FMultiply                              
        Label        -compare-4792-sub         
        FSubtract                              
        JumpFNeg     -compare-4792-true        
        Jump         -compare-4792-false       
        Label        -compare-4792-true        
        PushI        1                         
        Jump         -compare-4792-join        
        Label        -compare-4792-false       
        PushI        0                         
        Jump         -compare-4792-join        
        Label        -compare-4792-join        
        JumpTrue     -print-boolean-4793-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4793-join  
        Label        -print-boolean-4793-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4793-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4794-arg1        
        PushF        3.300000                  
        PushF        2.500000                  
        FMultiply                              
        Label        -compare-4794-arg2        
        PushF        1.300000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-4794-sub         
        FSubtract                              
        JumpFNeg     -compare-4794-true        
        Jump         -compare-4794-false       
        Label        -compare-4794-true        
        PushI        1                         
        Jump         -compare-4794-join        
        Label        -compare-4794-false       
        PushI        0                         
        Jump         -compare-4794-join        
        Label        -compare-4794-join        
        JumpTrue     -print-boolean-4795-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4795-join  
        Label        -print-boolean-4795-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4795-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4796-arg1        
        PushF        8.500000                  
        PushF        4.400000                  
        FMultiply                              
        Label        -compare-4796-arg2        
        PushF        8.900000                  
        PushF        8.000000                  
        FMultiply                              
        Label        -compare-4796-sub         
        FSubtract                              
        JumpFNeg     -compare-4796-true        
        Jump         -compare-4796-false       
        Label        -compare-4796-true        
        PushI        1                         
        Jump         -compare-4796-join        
        Label        -compare-4796-false       
        PushI        0                         
        Jump         -compare-4796-join        
        Label        -compare-4796-join        
        JumpTrue     -print-boolean-4797-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4797-join  
        Label        -print-boolean-4797-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4797-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4798-arg1        
        PushF        2.400000                  
        PushF        5.500000                  
        FMultiply                              
        Label        -compare-4798-arg2        
        PushF        8.700000                  
        PushF        9.200000                  
        FMultiply                              
        Label        -compare-4798-sub         
        FSubtract                              
        JumpFNeg     -compare-4798-true        
        Jump         -compare-4798-false       
        Label        -compare-4798-true        
        PushI        1                         
        Jump         -compare-4798-join        
        Label        -compare-4798-false       
        PushI        0                         
        Jump         -compare-4798-join        
        Label        -compare-4798-join        
        JumpTrue     -print-boolean-4799-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4799-join  
        Label        -print-boolean-4799-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4799-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4800-arg1        
        PushF        7.100000                  
        PushF        5.600000                  
        FMultiply                              
        Label        -compare-4800-arg2        
        PushF        6.000000                  
        PushF        9.300000                  
        FMultiply                              
        Label        -compare-4800-sub         
        FSubtract                              
        JumpFNeg     -compare-4800-true        
        Jump         -compare-4800-false       
        Label        -compare-4800-true        
        PushI        1                         
        Jump         -compare-4800-join        
        Label        -compare-4800-false       
        PushI        0                         
        Jump         -compare-4800-join        
        Label        -compare-4800-join        
        JumpTrue     -print-boolean-4801-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4801-join  
        Label        -print-boolean-4801-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4801-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4802-arg1        
        PushF        1.900000                  
        PushF        5.100000                  
        FMultiply                              
        Label        -compare-4802-arg2        
        PushF        7.500000                  
        PushF        9.500000                  
        FMultiply                              
        Label        -compare-4802-sub         
        FSubtract                              
        JumpFNeg     -compare-4802-true        
        Jump         -compare-4802-false       
        Label        -compare-4802-true        
        PushI        1                         
        Jump         -compare-4802-join        
        Label        -compare-4802-false       
        PushI        0                         
        Jump         -compare-4802-join        
        Label        -compare-4802-join        
        JumpTrue     -print-boolean-4803-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4803-join  
        Label        -print-boolean-4803-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4803-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4804-arg1        
        PushF        4.800000                  
        PushF        6.000000                  
        FMultiply                              
        Label        -compare-4804-arg2        
        PushF        2.900000                  
        PushF        5.300000                  
        FMultiply                              
        Label        -compare-4804-sub         
        FSubtract                              
        JumpFNeg     -compare-4804-true        
        Jump         -compare-4804-false       
        Label        -compare-4804-true        
        PushI        1                         
        Jump         -compare-4804-join        
        Label        -compare-4804-false       
        PushI        0                         
        Jump         -compare-4804-join        
        Label        -compare-4804-join        
        JumpTrue     -print-boolean-4805-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4805-join  
        Label        -print-boolean-4805-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4805-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4806-arg1        
        PushF        4.200000                  
        PushF        1.400000                  
        FMultiply                              
        Label        -compare-4806-arg2        
        PushF        9.800000                  
        PushF        1.500000                  
        FMultiply                              
        Label        -compare-4806-sub         
        FSubtract                              
        JumpFNeg     -compare-4806-true        
        Jump         -compare-4806-false       
        Label        -compare-4806-true        
        PushI        1                         
        Jump         -compare-4806-join        
        Label        -compare-4806-false       
        PushI        0                         
        Jump         -compare-4806-join        
        Label        -compare-4806-join        
        JumpTrue     -print-boolean-4807-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4807-join  
        Label        -print-boolean-4807-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4807-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4808-arg1        
        PushF        8.500000                  
        PushF        6.900000                  
        FMultiply                              
        Label        -compare-4808-arg2        
        PushF        4.100000                  
        PushF        1.200000                  
        FMultiply                              
        Label        -compare-4808-sub         
        FSubtract                              
        JumpFNeg     -compare-4808-true        
        Jump         -compare-4808-false       
        Label        -compare-4808-true        
        PushI        1                         
        Jump         -compare-4808-join        
        Label        -compare-4808-false       
        PushI        0                         
        Jump         -compare-4808-join        
        Label        -compare-4808-join        
        JumpTrue     -print-boolean-4809-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4809-join  
        Label        -print-boolean-4809-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4809-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4810-arg1        
        PushF        7.200000                  
        PushF        4.700000                  
        FMultiply                              
        Label        -compare-4810-arg2        
        PushF        4.800000                  
        PushF        4.500000                  
        FMultiply                              
        Label        -compare-4810-sub         
        FSubtract                              
        JumpFNeg     -compare-4810-true        
        Jump         -compare-4810-false       
        Label        -compare-4810-true        
        PushI        1                         
        Jump         -compare-4810-join        
        Label        -compare-4810-false       
        PushI        0                         
        Jump         -compare-4810-join        
        Label        -compare-4810-join        
        JumpTrue     -print-boolean-4811-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4811-join  
        Label        -print-boolean-4811-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4811-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4812-arg1        
        PushF        7.000000                  
        PushF        9.200000                  
        FMultiply                              
        Label        -compare-4812-arg2        
        PushF        8.500000                  
        PushF        5.900000                  
        FMultiply                              
        Label        -compare-4812-sub         
        FSubtract                              
        JumpFNeg     -compare-4812-true        
        Jump         -compare-4812-false       
        Label        -compare-4812-true        
        PushI        1                         
        Jump         -compare-4812-join        
        Label        -compare-4812-false       
        PushI        0                         
        Jump         -compare-4812-join        
        Label        -compare-4812-join        
        JumpTrue     -print-boolean-4813-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4813-join  
        Label        -print-boolean-4813-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4813-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
