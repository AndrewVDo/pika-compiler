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
        Label        -compare-4729-arg1        
        PushF        5.000000                  
        PushF        9.500000                  
        FMultiply                              
        Label        -compare-4729-arg2        
        PushF        4.600000                  
        Label        -compare-4729-sub         
        FSubtract                              
        JumpFNeg     -compare-4729-true        
        Jump         -compare-4729-false       
        Label        -compare-4729-true        
        PushI        1                         
        Jump         -compare-4729-join        
        Label        -compare-4729-false       
        PushI        0                         
        Jump         -compare-4729-join        
        Label        -compare-4729-join        
        JumpTrue     -print-boolean-4730-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4730-join  
        Label        -print-boolean-4730-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4730-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4731-arg1        
        PushF        9.300000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-4731-arg2        
        PushF        9.100000                  
        Label        -compare-4731-sub         
        FSubtract                              
        JumpFNeg     -compare-4731-true        
        Jump         -compare-4731-false       
        Label        -compare-4731-true        
        PushI        1                         
        Jump         -compare-4731-join        
        Label        -compare-4731-false       
        PushI        0                         
        Jump         -compare-4731-join        
        Label        -compare-4731-join        
        JumpTrue     -print-boolean-4732-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4732-join  
        Label        -print-boolean-4732-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4732-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4733-arg1        
        PushF        8.700000                  
        PushF        2.200000                  
        FMultiply                              
        Label        -compare-4733-arg2        
        PushF        4.200000                  
        Label        -compare-4733-sub         
        FSubtract                              
        JumpFNeg     -compare-4733-true        
        Jump         -compare-4733-false       
        Label        -compare-4733-true        
        PushI        1                         
        Jump         -compare-4733-join        
        Label        -compare-4733-false       
        PushI        0                         
        Jump         -compare-4733-join        
        Label        -compare-4733-join        
        JumpTrue     -print-boolean-4734-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4734-join  
        Label        -print-boolean-4734-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4734-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4735-arg1        
        PushF        3.000000                  
        PushF        3.100000                  
        FMultiply                              
        Label        -compare-4735-arg2        
        PushF        3.800000                  
        Label        -compare-4735-sub         
        FSubtract                              
        JumpFNeg     -compare-4735-true        
        Jump         -compare-4735-false       
        Label        -compare-4735-true        
        PushI        1                         
        Jump         -compare-4735-join        
        Label        -compare-4735-false       
        PushI        0                         
        Jump         -compare-4735-join        
        Label        -compare-4735-join        
        JumpTrue     -print-boolean-4736-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4736-join  
        Label        -print-boolean-4736-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4736-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4737-arg1        
        PushF        5.100000                  
        PushF        5.800000                  
        FMultiply                              
        Label        -compare-4737-arg2        
        PushF        2.300000                  
        Label        -compare-4737-sub         
        FSubtract                              
        JumpFNeg     -compare-4737-true        
        Jump         -compare-4737-false       
        Label        -compare-4737-true        
        PushI        1                         
        Jump         -compare-4737-join        
        Label        -compare-4737-false       
        PushI        0                         
        Jump         -compare-4737-join        
        Label        -compare-4737-join        
        JumpTrue     -print-boolean-4738-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4738-join  
        Label        -print-boolean-4738-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4738-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4739-arg1        
        PushF        4.200000                  
        PushF        4.400000                  
        FMultiply                              
        Label        -compare-4739-arg2        
        PushF        9.500000                  
        Label        -compare-4739-sub         
        FSubtract                              
        JumpFNeg     -compare-4739-true        
        Jump         -compare-4739-false       
        Label        -compare-4739-true        
        PushI        1                         
        Jump         -compare-4739-join        
        Label        -compare-4739-false       
        PushI        0                         
        Jump         -compare-4739-join        
        Label        -compare-4739-join        
        JumpTrue     -print-boolean-4740-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4740-join  
        Label        -print-boolean-4740-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4740-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4741-arg1        
        PushF        6.600000                  
        PushF        7.800000                  
        FMultiply                              
        Label        -compare-4741-arg2        
        PushF        6.100000                  
        Label        -compare-4741-sub         
        FSubtract                              
        JumpFNeg     -compare-4741-true        
        Jump         -compare-4741-false       
        Label        -compare-4741-true        
        PushI        1                         
        Jump         -compare-4741-join        
        Label        -compare-4741-false       
        PushI        0                         
        Jump         -compare-4741-join        
        Label        -compare-4741-join        
        JumpTrue     -print-boolean-4742-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4742-join  
        Label        -print-boolean-4742-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4742-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4743-arg1        
        PushF        7.800000                  
        PushF        5.900000                  
        FMultiply                              
        Label        -compare-4743-arg2        
        PushF        6.200000                  
        Label        -compare-4743-sub         
        FSubtract                              
        JumpFNeg     -compare-4743-true        
        Jump         -compare-4743-false       
        Label        -compare-4743-true        
        PushI        1                         
        Jump         -compare-4743-join        
        Label        -compare-4743-false       
        PushI        0                         
        Jump         -compare-4743-join        
        Label        -compare-4743-join        
        JumpTrue     -print-boolean-4744-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4744-join  
        Label        -print-boolean-4744-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4744-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4745-arg1        
        PushF        6.200000                  
        PushF        8.200000                  
        FMultiply                              
        Label        -compare-4745-arg2        
        PushF        9.800000                  
        Label        -compare-4745-sub         
        FSubtract                              
        JumpFNeg     -compare-4745-true        
        Jump         -compare-4745-false       
        Label        -compare-4745-true        
        PushI        1                         
        Jump         -compare-4745-join        
        Label        -compare-4745-false       
        PushI        0                         
        Jump         -compare-4745-join        
        Label        -compare-4745-join        
        JumpTrue     -print-boolean-4746-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4746-join  
        Label        -print-boolean-4746-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4746-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4747-arg1        
        PushF        2.500000                  
        PushF        5.800000                  
        FMultiply                              
        Label        -compare-4747-arg2        
        PushF        3.500000                  
        Label        -compare-4747-sub         
        FSubtract                              
        JumpFNeg     -compare-4747-true        
        Jump         -compare-4747-false       
        Label        -compare-4747-true        
        PushI        1                         
        Jump         -compare-4747-join        
        Label        -compare-4747-false       
        PushI        0                         
        Jump         -compare-4747-join        
        Label        -compare-4747-join        
        JumpTrue     -print-boolean-4748-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4748-join  
        Label        -print-boolean-4748-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4748-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4749-arg1        
        PushF        8.200000                  
        PushF        9.600000                  
        FMultiply                              
        Label        -compare-4749-arg2        
        PushF        3.000000                  
        Label        -compare-4749-sub         
        FSubtract                              
        JumpFNeg     -compare-4749-true        
        Jump         -compare-4749-false       
        Label        -compare-4749-true        
        PushI        1                         
        Jump         -compare-4749-join        
        Label        -compare-4749-false       
        PushI        0                         
        Jump         -compare-4749-join        
        Label        -compare-4749-join        
        JumpTrue     -print-boolean-4750-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4750-join  
        Label        -print-boolean-4750-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4750-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4751-arg1        
        PushF        5.700000                  
        PushF        8.900000                  
        FMultiply                              
        Label        -compare-4751-arg2        
        PushF        2.400000                  
        Label        -compare-4751-sub         
        FSubtract                              
        JumpFNeg     -compare-4751-true        
        Jump         -compare-4751-false       
        Label        -compare-4751-true        
        PushI        1                         
        Jump         -compare-4751-join        
        Label        -compare-4751-false       
        PushI        0                         
        Jump         -compare-4751-join        
        Label        -compare-4751-join        
        JumpTrue     -print-boolean-4752-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4752-join  
        Label        -print-boolean-4752-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4752-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4753-arg1        
        PushF        4.900000                  
        Label        -compare-4753-arg2        
        PushF        5.600000                  
        PushF        7.600000                  
        FMultiply                              
        Label        -compare-4753-sub         
        FSubtract                              
        JumpFNeg     -compare-4753-true        
        Jump         -compare-4753-false       
        Label        -compare-4753-true        
        PushI        1                         
        Jump         -compare-4753-join        
        Label        -compare-4753-false       
        PushI        0                         
        Jump         -compare-4753-join        
        Label        -compare-4753-join        
        JumpTrue     -print-boolean-4754-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4754-join  
        Label        -print-boolean-4754-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4754-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4755-arg1        
        PushF        7.000000                  
        Label        -compare-4755-arg2        
        PushF        7.300000                  
        PushF        3.400000                  
        FMultiply                              
        Label        -compare-4755-sub         
        FSubtract                              
        JumpFNeg     -compare-4755-true        
        Jump         -compare-4755-false       
        Label        -compare-4755-true        
        PushI        1                         
        Jump         -compare-4755-join        
        Label        -compare-4755-false       
        PushI        0                         
        Jump         -compare-4755-join        
        Label        -compare-4755-join        
        JumpTrue     -print-boolean-4756-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4756-join  
        Label        -print-boolean-4756-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4756-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4757-arg1        
        PushF        2.800000                  
        Label        -compare-4757-arg2        
        PushF        5.000000                  
        PushF        1.700000                  
        FMultiply                              
        Label        -compare-4757-sub         
        FSubtract                              
        JumpFNeg     -compare-4757-true        
        Jump         -compare-4757-false       
        Label        -compare-4757-true        
        PushI        1                         
        Jump         -compare-4757-join        
        Label        -compare-4757-false       
        PushI        0                         
        Jump         -compare-4757-join        
        Label        -compare-4757-join        
        JumpTrue     -print-boolean-4758-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4758-join  
        Label        -print-boolean-4758-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4758-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4759-arg1        
        PushF        9.600000                  
        Label        -compare-4759-arg2        
        PushF        4.100000                  
        PushF        1.100000                  
        FMultiply                              
        Label        -compare-4759-sub         
        FSubtract                              
        JumpFNeg     -compare-4759-true        
        Jump         -compare-4759-false       
        Label        -compare-4759-true        
        PushI        1                         
        Jump         -compare-4759-join        
        Label        -compare-4759-false       
        PushI        0                         
        Jump         -compare-4759-join        
        Label        -compare-4759-join        
        JumpTrue     -print-boolean-4760-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4760-join  
        Label        -print-boolean-4760-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4760-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4761-arg1        
        PushF        1.900000                  
        Label        -compare-4761-arg2        
        PushF        9.900000                  
        PushF        6.700000                  
        FMultiply                              
        Label        -compare-4761-sub         
        FSubtract                              
        JumpFNeg     -compare-4761-true        
        Jump         -compare-4761-false       
        Label        -compare-4761-true        
        PushI        1                         
        Jump         -compare-4761-join        
        Label        -compare-4761-false       
        PushI        0                         
        Jump         -compare-4761-join        
        Label        -compare-4761-join        
        JumpTrue     -print-boolean-4762-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4762-join  
        Label        -print-boolean-4762-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4762-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4763-arg1        
        PushF        7.200000                  
        Label        -compare-4763-arg2        
        PushF        4.700000                  
        PushF        3.800000                  
        FMultiply                              
        Label        -compare-4763-sub         
        FSubtract                              
        JumpFNeg     -compare-4763-true        
        Jump         -compare-4763-false       
        Label        -compare-4763-true        
        PushI        1                         
        Jump         -compare-4763-join        
        Label        -compare-4763-false       
        PushI        0                         
        Jump         -compare-4763-join        
        Label        -compare-4763-join        
        JumpTrue     -print-boolean-4764-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4764-join  
        Label        -print-boolean-4764-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4764-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4765-arg1        
        PushF        3.500000                  
        Label        -compare-4765-arg2        
        PushF        6.000000                  
        PushF        2.500000                  
        FMultiply                              
        Label        -compare-4765-sub         
        FSubtract                              
        JumpFNeg     -compare-4765-true        
        Jump         -compare-4765-false       
        Label        -compare-4765-true        
        PushI        1                         
        Jump         -compare-4765-join        
        Label        -compare-4765-false       
        PushI        0                         
        Jump         -compare-4765-join        
        Label        -compare-4765-join        
        JumpTrue     -print-boolean-4766-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4766-join  
        Label        -print-boolean-4766-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4766-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4767-arg1        
        PushF        7.000000                  
        Label        -compare-4767-arg2        
        PushF        9.900000                  
        PushF        4.500000                  
        FMultiply                              
        Label        -compare-4767-sub         
        FSubtract                              
        JumpFNeg     -compare-4767-true        
        Jump         -compare-4767-false       
        Label        -compare-4767-true        
        PushI        1                         
        Jump         -compare-4767-join        
        Label        -compare-4767-false       
        PushI        0                         
        Jump         -compare-4767-join        
        Label        -compare-4767-join        
        JumpTrue     -print-boolean-4768-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4768-join  
        Label        -print-boolean-4768-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4768-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4769-arg1        
        PushF        1.500000                  
        Label        -compare-4769-arg2        
        PushF        3.800000                  
        PushF        3.700000                  
        FMultiply                              
        Label        -compare-4769-sub         
        FSubtract                              
        JumpFNeg     -compare-4769-true        
        Jump         -compare-4769-false       
        Label        -compare-4769-true        
        PushI        1                         
        Jump         -compare-4769-join        
        Label        -compare-4769-false       
        PushI        0                         
        Jump         -compare-4769-join        
        Label        -compare-4769-join        
        JumpTrue     -print-boolean-4770-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4770-join  
        Label        -print-boolean-4770-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4770-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4771-arg1        
        PushF        8.900000                  
        Label        -compare-4771-arg2        
        PushF        9.800000                  
        PushF        6.400000                  
        FMultiply                              
        Label        -compare-4771-sub         
        FSubtract                              
        JumpFNeg     -compare-4771-true        
        Jump         -compare-4771-false       
        Label        -compare-4771-true        
        PushI        1                         
        Jump         -compare-4771-join        
        Label        -compare-4771-false       
        PushI        0                         
        Jump         -compare-4771-join        
        Label        -compare-4771-join        
        JumpTrue     -print-boolean-4772-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4772-join  
        Label        -print-boolean-4772-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4772-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4773-arg1        
        PushF        4.700000                  
        Label        -compare-4773-arg2        
        PushF        7.700000                  
        PushF        6.200000                  
        FMultiply                              
        Label        -compare-4773-sub         
        FSubtract                              
        JumpFNeg     -compare-4773-true        
        Jump         -compare-4773-false       
        Label        -compare-4773-true        
        PushI        1                         
        Jump         -compare-4773-join        
        Label        -compare-4773-false       
        PushI        0                         
        Jump         -compare-4773-join        
        Label        -compare-4773-join        
        JumpTrue     -print-boolean-4774-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4774-join  
        Label        -print-boolean-4774-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4774-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4775-arg1        
        PushF        6.700000                  
        Label        -compare-4775-arg2        
        PushF        8.200000                  
        PushF        2.100000                  
        FMultiply                              
        Label        -compare-4775-sub         
        FSubtract                              
        JumpFNeg     -compare-4775-true        
        Jump         -compare-4775-false       
        Label        -compare-4775-true        
        PushI        1                         
        Jump         -compare-4775-join        
        Label        -compare-4775-false       
        PushI        0                         
        Jump         -compare-4775-join        
        Label        -compare-4775-join        
        JumpTrue     -print-boolean-4776-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4776-join  
        Label        -print-boolean-4776-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4776-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4777-arg1        
        PushF        7.200000                  
        PushF        4.900000                  
        FMultiply                              
        Label        -compare-4777-arg2        
        PushF        3.800000                  
        PushF        4.800000                  
        FMultiply                              
        Label        -compare-4777-sub         
        FSubtract                              
        JumpFNeg     -compare-4777-true        
        Jump         -compare-4777-false       
        Label        -compare-4777-true        
        PushI        1                         
        Jump         -compare-4777-join        
        Label        -compare-4777-false       
        PushI        0                         
        Jump         -compare-4777-join        
        Label        -compare-4777-join        
        JumpTrue     -print-boolean-4778-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4778-join  
        Label        -print-boolean-4778-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4778-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4779-arg1        
        PushF        6.800000                  
        PushF        9.100000                  
        FMultiply                              
        Label        -compare-4779-arg2        
        PushF        1.400000                  
        PushF        5.700000                  
        FMultiply                              
        Label        -compare-4779-sub         
        FSubtract                              
        JumpFNeg     -compare-4779-true        
        Jump         -compare-4779-false       
        Label        -compare-4779-true        
        PushI        1                         
        Jump         -compare-4779-join        
        Label        -compare-4779-false       
        PushI        0                         
        Jump         -compare-4779-join        
        Label        -compare-4779-join        
        JumpTrue     -print-boolean-4780-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4780-join  
        Label        -print-boolean-4780-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4780-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4781-arg1        
        PushF        3.300000                  
        PushF        2.500000                  
        FMultiply                              
        Label        -compare-4781-arg2        
        PushF        1.300000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-4781-sub         
        FSubtract                              
        JumpFNeg     -compare-4781-true        
        Jump         -compare-4781-false       
        Label        -compare-4781-true        
        PushI        1                         
        Jump         -compare-4781-join        
        Label        -compare-4781-false       
        PushI        0                         
        Jump         -compare-4781-join        
        Label        -compare-4781-join        
        JumpTrue     -print-boolean-4782-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4782-join  
        Label        -print-boolean-4782-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4782-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4783-arg1        
        PushF        8.500000                  
        PushF        4.400000                  
        FMultiply                              
        Label        -compare-4783-arg2        
        PushF        8.900000                  
        PushF        8.000000                  
        FMultiply                              
        Label        -compare-4783-sub         
        FSubtract                              
        JumpFNeg     -compare-4783-true        
        Jump         -compare-4783-false       
        Label        -compare-4783-true        
        PushI        1                         
        Jump         -compare-4783-join        
        Label        -compare-4783-false       
        PushI        0                         
        Jump         -compare-4783-join        
        Label        -compare-4783-join        
        JumpTrue     -print-boolean-4784-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4784-join  
        Label        -print-boolean-4784-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4784-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4785-arg1        
        PushF        2.400000                  
        PushF        5.500000                  
        FMultiply                              
        Label        -compare-4785-arg2        
        PushF        8.700000                  
        PushF        9.200000                  
        FMultiply                              
        Label        -compare-4785-sub         
        FSubtract                              
        JumpFNeg     -compare-4785-true        
        Jump         -compare-4785-false       
        Label        -compare-4785-true        
        PushI        1                         
        Jump         -compare-4785-join        
        Label        -compare-4785-false       
        PushI        0                         
        Jump         -compare-4785-join        
        Label        -compare-4785-join        
        JumpTrue     -print-boolean-4786-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4786-join  
        Label        -print-boolean-4786-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4786-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4787-arg1        
        PushF        7.100000                  
        PushF        5.600000                  
        FMultiply                              
        Label        -compare-4787-arg2        
        PushF        6.000000                  
        PushF        9.300000                  
        FMultiply                              
        Label        -compare-4787-sub         
        FSubtract                              
        JumpFNeg     -compare-4787-true        
        Jump         -compare-4787-false       
        Label        -compare-4787-true        
        PushI        1                         
        Jump         -compare-4787-join        
        Label        -compare-4787-false       
        PushI        0                         
        Jump         -compare-4787-join        
        Label        -compare-4787-join        
        JumpTrue     -print-boolean-4788-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4788-join  
        Label        -print-boolean-4788-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4788-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4789-arg1        
        PushF        1.900000                  
        PushF        5.100000                  
        FMultiply                              
        Label        -compare-4789-arg2        
        PushF        7.500000                  
        PushF        9.500000                  
        FMultiply                              
        Label        -compare-4789-sub         
        FSubtract                              
        JumpFNeg     -compare-4789-true        
        Jump         -compare-4789-false       
        Label        -compare-4789-true        
        PushI        1                         
        Jump         -compare-4789-join        
        Label        -compare-4789-false       
        PushI        0                         
        Jump         -compare-4789-join        
        Label        -compare-4789-join        
        JumpTrue     -print-boolean-4790-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4790-join  
        Label        -print-boolean-4790-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4790-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4791-arg1        
        PushF        4.800000                  
        PushF        6.000000                  
        FMultiply                              
        Label        -compare-4791-arg2        
        PushF        2.900000                  
        PushF        5.300000                  
        FMultiply                              
        Label        -compare-4791-sub         
        FSubtract                              
        JumpFNeg     -compare-4791-true        
        Jump         -compare-4791-false       
        Label        -compare-4791-true        
        PushI        1                         
        Jump         -compare-4791-join        
        Label        -compare-4791-false       
        PushI        0                         
        Jump         -compare-4791-join        
        Label        -compare-4791-join        
        JumpTrue     -print-boolean-4792-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4792-join  
        Label        -print-boolean-4792-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4792-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4793-arg1        
        PushF        4.200000                  
        PushF        1.400000                  
        FMultiply                              
        Label        -compare-4793-arg2        
        PushF        9.800000                  
        PushF        1.500000                  
        FMultiply                              
        Label        -compare-4793-sub         
        FSubtract                              
        JumpFNeg     -compare-4793-true        
        Jump         -compare-4793-false       
        Label        -compare-4793-true        
        PushI        1                         
        Jump         -compare-4793-join        
        Label        -compare-4793-false       
        PushI        0                         
        Jump         -compare-4793-join        
        Label        -compare-4793-join        
        JumpTrue     -print-boolean-4794-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4794-join  
        Label        -print-boolean-4794-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4794-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4795-arg1        
        PushF        8.500000                  
        PushF        6.900000                  
        FMultiply                              
        Label        -compare-4795-arg2        
        PushF        4.100000                  
        PushF        1.200000                  
        FMultiply                              
        Label        -compare-4795-sub         
        FSubtract                              
        JumpFNeg     -compare-4795-true        
        Jump         -compare-4795-false       
        Label        -compare-4795-true        
        PushI        1                         
        Jump         -compare-4795-join        
        Label        -compare-4795-false       
        PushI        0                         
        Jump         -compare-4795-join        
        Label        -compare-4795-join        
        JumpTrue     -print-boolean-4796-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4796-join  
        Label        -print-boolean-4796-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4796-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4797-arg1        
        PushF        7.200000                  
        PushF        4.700000                  
        FMultiply                              
        Label        -compare-4797-arg2        
        PushF        4.800000                  
        PushF        4.500000                  
        FMultiply                              
        Label        -compare-4797-sub         
        FSubtract                              
        JumpFNeg     -compare-4797-true        
        Jump         -compare-4797-false       
        Label        -compare-4797-true        
        PushI        1                         
        Jump         -compare-4797-join        
        Label        -compare-4797-false       
        PushI        0                         
        Jump         -compare-4797-join        
        Label        -compare-4797-join        
        JumpTrue     -print-boolean-4798-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4798-join  
        Label        -print-boolean-4798-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4798-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4799-arg1        
        PushF        7.000000                  
        PushF        9.200000                  
        FMultiply                              
        Label        -compare-4799-arg2        
        PushF        8.500000                  
        PushF        5.900000                  
        FMultiply                              
        Label        -compare-4799-sub         
        FSubtract                              
        JumpFNeg     -compare-4799-true        
        Jump         -compare-4799-false       
        Label        -compare-4799-true        
        PushI        1                         
        Jump         -compare-4799-join        
        Label        -compare-4799-false       
        PushI        0                         
        Jump         -compare-4799-join        
        Label        -compare-4799-join        
        JumpTrue     -print-boolean-4800-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4800-join  
        Label        -print-boolean-4800-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4800-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
