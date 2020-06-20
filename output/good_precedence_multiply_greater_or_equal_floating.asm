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
        Label        -compare-4585-arg1        
        PushF        8.400000                  
        PushF        5.900000                  
        FMultiply                              
        Label        -compare-4585-arg2        
        PushF        7.600000                  
        Label        -compare-4585-sub         
        FSubtract                              
        JumpFNeg     -compare-4585-false       
        Jump         -compare-4585-true        
        Label        -compare-4585-true        
        PushI        1                         
        Jump         -compare-4585-join        
        Label        -compare-4585-false       
        PushI        0                         
        Jump         -compare-4585-join        
        Label        -compare-4585-join        
        JumpTrue     -print-boolean-4586-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4586-join  
        Label        -print-boolean-4586-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4586-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4587-arg1        
        PushF        7.900000                  
        PushF        3.300000                  
        FMultiply                              
        Label        -compare-4587-arg2        
        PushF        4.200000                  
        Label        -compare-4587-sub         
        FSubtract                              
        JumpFNeg     -compare-4587-false       
        Jump         -compare-4587-true        
        Label        -compare-4587-true        
        PushI        1                         
        Jump         -compare-4587-join        
        Label        -compare-4587-false       
        PushI        0                         
        Jump         -compare-4587-join        
        Label        -compare-4587-join        
        JumpTrue     -print-boolean-4588-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4588-join  
        Label        -print-boolean-4588-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4588-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4589-arg1        
        PushF        2.300000                  
        PushF        2.300000                  
        FMultiply                              
        Label        -compare-4589-arg2        
        PushF        7.400000                  
        Label        -compare-4589-sub         
        FSubtract                              
        JumpFNeg     -compare-4589-false       
        Jump         -compare-4589-true        
        Label        -compare-4589-true        
        PushI        1                         
        Jump         -compare-4589-join        
        Label        -compare-4589-false       
        PushI        0                         
        Jump         -compare-4589-join        
        Label        -compare-4589-join        
        JumpTrue     -print-boolean-4590-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4590-join  
        Label        -print-boolean-4590-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4590-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4591-arg1        
        PushF        4.000000                  
        PushF        2.200000                  
        FMultiply                              
        Label        -compare-4591-arg2        
        PushF        7.900000                  
        Label        -compare-4591-sub         
        FSubtract                              
        JumpFNeg     -compare-4591-false       
        Jump         -compare-4591-true        
        Label        -compare-4591-true        
        PushI        1                         
        Jump         -compare-4591-join        
        Label        -compare-4591-false       
        PushI        0                         
        Jump         -compare-4591-join        
        Label        -compare-4591-join        
        JumpTrue     -print-boolean-4592-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4592-join  
        Label        -print-boolean-4592-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4592-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4593-arg1        
        PushF        6.600000                  
        PushF        3.700000                  
        FMultiply                              
        Label        -compare-4593-arg2        
        PushF        8.900000                  
        Label        -compare-4593-sub         
        FSubtract                              
        JumpFNeg     -compare-4593-false       
        Jump         -compare-4593-true        
        Label        -compare-4593-true        
        PushI        1                         
        Jump         -compare-4593-join        
        Label        -compare-4593-false       
        PushI        0                         
        Jump         -compare-4593-join        
        Label        -compare-4593-join        
        JumpTrue     -print-boolean-4594-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4594-join  
        Label        -print-boolean-4594-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4594-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4595-arg1        
        PushF        8.200000                  
        PushF        7.500000                  
        FMultiply                              
        Label        -compare-4595-arg2        
        PushF        1.900000                  
        Label        -compare-4595-sub         
        FSubtract                              
        JumpFNeg     -compare-4595-false       
        Jump         -compare-4595-true        
        Label        -compare-4595-true        
        PushI        1                         
        Jump         -compare-4595-join        
        Label        -compare-4595-false       
        PushI        0                         
        Jump         -compare-4595-join        
        Label        -compare-4595-join        
        JumpTrue     -print-boolean-4596-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4596-join  
        Label        -print-boolean-4596-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4596-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4597-arg1        
        PushF        5.600000                  
        PushF        6.900000                  
        FMultiply                              
        Label        -compare-4597-arg2        
        PushF        4.300000                  
        Label        -compare-4597-sub         
        FSubtract                              
        JumpFNeg     -compare-4597-false       
        Jump         -compare-4597-true        
        Label        -compare-4597-true        
        PushI        1                         
        Jump         -compare-4597-join        
        Label        -compare-4597-false       
        PushI        0                         
        Jump         -compare-4597-join        
        Label        -compare-4597-join        
        JumpTrue     -print-boolean-4598-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4598-join  
        Label        -print-boolean-4598-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4598-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4599-arg1        
        PushF        5.400000                  
        PushF        2.900000                  
        FMultiply                              
        Label        -compare-4599-arg2        
        PushF        9.900000                  
        Label        -compare-4599-sub         
        FSubtract                              
        JumpFNeg     -compare-4599-false       
        Jump         -compare-4599-true        
        Label        -compare-4599-true        
        PushI        1                         
        Jump         -compare-4599-join        
        Label        -compare-4599-false       
        PushI        0                         
        Jump         -compare-4599-join        
        Label        -compare-4599-join        
        JumpTrue     -print-boolean-4600-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4600-join  
        Label        -print-boolean-4600-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4600-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4601-arg1        
        PushF        6.400000                  
        PushF        1.600000                  
        FMultiply                              
        Label        -compare-4601-arg2        
        PushF        2.000000                  
        Label        -compare-4601-sub         
        FSubtract                              
        JumpFNeg     -compare-4601-false       
        Jump         -compare-4601-true        
        Label        -compare-4601-true        
        PushI        1                         
        Jump         -compare-4601-join        
        Label        -compare-4601-false       
        PushI        0                         
        Jump         -compare-4601-join        
        Label        -compare-4601-join        
        JumpTrue     -print-boolean-4602-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4602-join  
        Label        -print-boolean-4602-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4602-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4603-arg1        
        PushF        3.700000                  
        PushF        1.000000                  
        FMultiply                              
        Label        -compare-4603-arg2        
        PushF        6.000000                  
        Label        -compare-4603-sub         
        FSubtract                              
        JumpFNeg     -compare-4603-false       
        Jump         -compare-4603-true        
        Label        -compare-4603-true        
        PushI        1                         
        Jump         -compare-4603-join        
        Label        -compare-4603-false       
        PushI        0                         
        Jump         -compare-4603-join        
        Label        -compare-4603-join        
        JumpTrue     -print-boolean-4604-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4604-join  
        Label        -print-boolean-4604-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4604-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4605-arg1        
        PushF        9.300000                  
        PushF        5.200000                  
        FMultiply                              
        Label        -compare-4605-arg2        
        PushF        6.800000                  
        Label        -compare-4605-sub         
        FSubtract                              
        JumpFNeg     -compare-4605-false       
        Jump         -compare-4605-true        
        Label        -compare-4605-true        
        PushI        1                         
        Jump         -compare-4605-join        
        Label        -compare-4605-false       
        PushI        0                         
        Jump         -compare-4605-join        
        Label        -compare-4605-join        
        JumpTrue     -print-boolean-4606-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4606-join  
        Label        -print-boolean-4606-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4606-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4607-arg1        
        PushF        2.400000                  
        PushF        5.300000                  
        FMultiply                              
        Label        -compare-4607-arg2        
        PushF        4.100000                  
        Label        -compare-4607-sub         
        FSubtract                              
        JumpFNeg     -compare-4607-false       
        Jump         -compare-4607-true        
        Label        -compare-4607-true        
        PushI        1                         
        Jump         -compare-4607-join        
        Label        -compare-4607-false       
        PushI        0                         
        Jump         -compare-4607-join        
        Label        -compare-4607-join        
        JumpTrue     -print-boolean-4608-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4608-join  
        Label        -print-boolean-4608-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4608-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4609-arg1        
        PushF        3.800000                  
        Label        -compare-4609-arg2        
        PushF        7.200000                  
        PushF        8.300000                  
        FMultiply                              
        Label        -compare-4609-sub         
        FSubtract                              
        JumpFNeg     -compare-4609-false       
        Jump         -compare-4609-true        
        Label        -compare-4609-true        
        PushI        1                         
        Jump         -compare-4609-join        
        Label        -compare-4609-false       
        PushI        0                         
        Jump         -compare-4609-join        
        Label        -compare-4609-join        
        JumpTrue     -print-boolean-4610-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4610-join  
        Label        -print-boolean-4610-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4610-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4611-arg1        
        PushF        4.900000                  
        Label        -compare-4611-arg2        
        PushF        3.700000                  
        PushF        4.100000                  
        FMultiply                              
        Label        -compare-4611-sub         
        FSubtract                              
        JumpFNeg     -compare-4611-false       
        Jump         -compare-4611-true        
        Label        -compare-4611-true        
        PushI        1                         
        Jump         -compare-4611-join        
        Label        -compare-4611-false       
        PushI        0                         
        Jump         -compare-4611-join        
        Label        -compare-4611-join        
        JumpTrue     -print-boolean-4612-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4612-join  
        Label        -print-boolean-4612-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4612-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4613-arg1        
        PushF        4.900000                  
        Label        -compare-4613-arg2        
        PushF        2.400000                  
        PushF        5.500000                  
        FMultiply                              
        Label        -compare-4613-sub         
        FSubtract                              
        JumpFNeg     -compare-4613-false       
        Jump         -compare-4613-true        
        Label        -compare-4613-true        
        PushI        1                         
        Jump         -compare-4613-join        
        Label        -compare-4613-false       
        PushI        0                         
        Jump         -compare-4613-join        
        Label        -compare-4613-join        
        JumpTrue     -print-boolean-4614-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4614-join  
        Label        -print-boolean-4614-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4614-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4615-arg1        
        PushF        5.800000                  
        Label        -compare-4615-arg2        
        PushF        2.200000                  
        PushF        7.300000                  
        FMultiply                              
        Label        -compare-4615-sub         
        FSubtract                              
        JumpFNeg     -compare-4615-false       
        Jump         -compare-4615-true        
        Label        -compare-4615-true        
        PushI        1                         
        Jump         -compare-4615-join        
        Label        -compare-4615-false       
        PushI        0                         
        Jump         -compare-4615-join        
        Label        -compare-4615-join        
        JumpTrue     -print-boolean-4616-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4616-join  
        Label        -print-boolean-4616-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4616-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4617-arg1        
        PushF        7.300000                  
        Label        -compare-4617-arg2        
        PushF        1.600000                  
        PushF        6.900000                  
        FMultiply                              
        Label        -compare-4617-sub         
        FSubtract                              
        JumpFNeg     -compare-4617-false       
        Jump         -compare-4617-true        
        Label        -compare-4617-true        
        PushI        1                         
        Jump         -compare-4617-join        
        Label        -compare-4617-false       
        PushI        0                         
        Jump         -compare-4617-join        
        Label        -compare-4617-join        
        JumpTrue     -print-boolean-4618-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4618-join  
        Label        -print-boolean-4618-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4618-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4619-arg1        
        PushF        7.200000                  
        Label        -compare-4619-arg2        
        PushF        9.400000                  
        PushF        2.700000                  
        FMultiply                              
        Label        -compare-4619-sub         
        FSubtract                              
        JumpFNeg     -compare-4619-false       
        Jump         -compare-4619-true        
        Label        -compare-4619-true        
        PushI        1                         
        Jump         -compare-4619-join        
        Label        -compare-4619-false       
        PushI        0                         
        Jump         -compare-4619-join        
        Label        -compare-4619-join        
        JumpTrue     -print-boolean-4620-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4620-join  
        Label        -print-boolean-4620-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4620-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4621-arg1        
        PushF        9.400000                  
        Label        -compare-4621-arg2        
        PushF        4.400000                  
        PushF        6.200000                  
        FMultiply                              
        Label        -compare-4621-sub         
        FSubtract                              
        JumpFNeg     -compare-4621-false       
        Jump         -compare-4621-true        
        Label        -compare-4621-true        
        PushI        1                         
        Jump         -compare-4621-join        
        Label        -compare-4621-false       
        PushI        0                         
        Jump         -compare-4621-join        
        Label        -compare-4621-join        
        JumpTrue     -print-boolean-4622-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4622-join  
        Label        -print-boolean-4622-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4622-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4623-arg1        
        PushF        4.000000                  
        Label        -compare-4623-arg2        
        PushF        8.300000                  
        PushF        4.800000                  
        FMultiply                              
        Label        -compare-4623-sub         
        FSubtract                              
        JumpFNeg     -compare-4623-false       
        Jump         -compare-4623-true        
        Label        -compare-4623-true        
        PushI        1                         
        Jump         -compare-4623-join        
        Label        -compare-4623-false       
        PushI        0                         
        Jump         -compare-4623-join        
        Label        -compare-4623-join        
        JumpTrue     -print-boolean-4624-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4624-join  
        Label        -print-boolean-4624-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4624-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4625-arg1        
        PushF        9.800000                  
        Label        -compare-4625-arg2        
        PushF        5.300000                  
        PushF        5.400000                  
        FMultiply                              
        Label        -compare-4625-sub         
        FSubtract                              
        JumpFNeg     -compare-4625-false       
        Jump         -compare-4625-true        
        Label        -compare-4625-true        
        PushI        1                         
        Jump         -compare-4625-join        
        Label        -compare-4625-false       
        PushI        0                         
        Jump         -compare-4625-join        
        Label        -compare-4625-join        
        JumpTrue     -print-boolean-4626-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4626-join  
        Label        -print-boolean-4626-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4626-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4627-arg1        
        PushF        1.700000                  
        Label        -compare-4627-arg2        
        PushF        9.300000                  
        PushF        5.400000                  
        FMultiply                              
        Label        -compare-4627-sub         
        FSubtract                              
        JumpFNeg     -compare-4627-false       
        Jump         -compare-4627-true        
        Label        -compare-4627-true        
        PushI        1                         
        Jump         -compare-4627-join        
        Label        -compare-4627-false       
        PushI        0                         
        Jump         -compare-4627-join        
        Label        -compare-4627-join        
        JumpTrue     -print-boolean-4628-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4628-join  
        Label        -print-boolean-4628-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4628-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4629-arg1        
        PushF        5.200000                  
        Label        -compare-4629-arg2        
        PushF        3.400000                  
        PushF        6.100000                  
        FMultiply                              
        Label        -compare-4629-sub         
        FSubtract                              
        JumpFNeg     -compare-4629-false       
        Jump         -compare-4629-true        
        Label        -compare-4629-true        
        PushI        1                         
        Jump         -compare-4629-join        
        Label        -compare-4629-false       
        PushI        0                         
        Jump         -compare-4629-join        
        Label        -compare-4629-join        
        JumpTrue     -print-boolean-4630-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4630-join  
        Label        -print-boolean-4630-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4630-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4631-arg1        
        PushF        5.700000                  
        Label        -compare-4631-arg2        
        PushF        3.400000                  
        PushF        4.200000                  
        FMultiply                              
        Label        -compare-4631-sub         
        FSubtract                              
        JumpFNeg     -compare-4631-false       
        Jump         -compare-4631-true        
        Label        -compare-4631-true        
        PushI        1                         
        Jump         -compare-4631-join        
        Label        -compare-4631-false       
        PushI        0                         
        Jump         -compare-4631-join        
        Label        -compare-4631-join        
        JumpTrue     -print-boolean-4632-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4632-join  
        Label        -print-boolean-4632-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4632-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4633-arg1        
        PushF        3.200000                  
        PushF        3.200000                  
        FMultiply                              
        Label        -compare-4633-arg2        
        PushF        8.900000                  
        PushF        7.000000                  
        FMultiply                              
        Label        -compare-4633-sub         
        FSubtract                              
        JumpFNeg     -compare-4633-false       
        Jump         -compare-4633-true        
        Label        -compare-4633-true        
        PushI        1                         
        Jump         -compare-4633-join        
        Label        -compare-4633-false       
        PushI        0                         
        Jump         -compare-4633-join        
        Label        -compare-4633-join        
        JumpTrue     -print-boolean-4634-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4634-join  
        Label        -print-boolean-4634-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4634-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4635-arg1        
        PushF        8.500000                  
        PushF        2.600000                  
        FMultiply                              
        Label        -compare-4635-arg2        
        PushF        2.500000                  
        PushF        9.600000                  
        FMultiply                              
        Label        -compare-4635-sub         
        FSubtract                              
        JumpFNeg     -compare-4635-false       
        Jump         -compare-4635-true        
        Label        -compare-4635-true        
        PushI        1                         
        Jump         -compare-4635-join        
        Label        -compare-4635-false       
        PushI        0                         
        Jump         -compare-4635-join        
        Label        -compare-4635-join        
        JumpTrue     -print-boolean-4636-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4636-join  
        Label        -print-boolean-4636-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4636-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4637-arg1        
        PushF        5.900000                  
        PushF        5.800000                  
        FMultiply                              
        Label        -compare-4637-arg2        
        PushF        7.700000                  
        PushF        9.200000                  
        FMultiply                              
        Label        -compare-4637-sub         
        FSubtract                              
        JumpFNeg     -compare-4637-false       
        Jump         -compare-4637-true        
        Label        -compare-4637-true        
        PushI        1                         
        Jump         -compare-4637-join        
        Label        -compare-4637-false       
        PushI        0                         
        Jump         -compare-4637-join        
        Label        -compare-4637-join        
        JumpTrue     -print-boolean-4638-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4638-join  
        Label        -print-boolean-4638-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4638-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4639-arg1        
        PushF        4.600000                  
        PushF        4.400000                  
        FMultiply                              
        Label        -compare-4639-arg2        
        PushF        4.100000                  
        PushF        5.900000                  
        FMultiply                              
        Label        -compare-4639-sub         
        FSubtract                              
        JumpFNeg     -compare-4639-false       
        Jump         -compare-4639-true        
        Label        -compare-4639-true        
        PushI        1                         
        Jump         -compare-4639-join        
        Label        -compare-4639-false       
        PushI        0                         
        Jump         -compare-4639-join        
        Label        -compare-4639-join        
        JumpTrue     -print-boolean-4640-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4640-join  
        Label        -print-boolean-4640-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4640-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4641-arg1        
        PushF        1.000000                  
        PushF        7.800000                  
        FMultiply                              
        Label        -compare-4641-arg2        
        PushF        3.900000                  
        PushF        3.300000                  
        FMultiply                              
        Label        -compare-4641-sub         
        FSubtract                              
        JumpFNeg     -compare-4641-false       
        Jump         -compare-4641-true        
        Label        -compare-4641-true        
        PushI        1                         
        Jump         -compare-4641-join        
        Label        -compare-4641-false       
        PushI        0                         
        Jump         -compare-4641-join        
        Label        -compare-4641-join        
        JumpTrue     -print-boolean-4642-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4642-join  
        Label        -print-boolean-4642-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4642-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4643-arg1        
        PushF        9.800000                  
        PushF        5.300000                  
        FMultiply                              
        Label        -compare-4643-arg2        
        PushF        6.700000                  
        PushF        2.800000                  
        FMultiply                              
        Label        -compare-4643-sub         
        FSubtract                              
        JumpFNeg     -compare-4643-false       
        Jump         -compare-4643-true        
        Label        -compare-4643-true        
        PushI        1                         
        Jump         -compare-4643-join        
        Label        -compare-4643-false       
        PushI        0                         
        Jump         -compare-4643-join        
        Label        -compare-4643-join        
        JumpTrue     -print-boolean-4644-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4644-join  
        Label        -print-boolean-4644-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4644-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4645-arg1        
        PushF        2.200000                  
        PushF        9.500000                  
        FMultiply                              
        Label        -compare-4645-arg2        
        PushF        4.100000                  
        PushF        2.600000                  
        FMultiply                              
        Label        -compare-4645-sub         
        FSubtract                              
        JumpFNeg     -compare-4645-false       
        Jump         -compare-4645-true        
        Label        -compare-4645-true        
        PushI        1                         
        Jump         -compare-4645-join        
        Label        -compare-4645-false       
        PushI        0                         
        Jump         -compare-4645-join        
        Label        -compare-4645-join        
        JumpTrue     -print-boolean-4646-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4646-join  
        Label        -print-boolean-4646-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4646-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4647-arg1        
        PushF        1.600000                  
        PushF        6.100000                  
        FMultiply                              
        Label        -compare-4647-arg2        
        PushF        9.200000                  
        PushF        3.100000                  
        FMultiply                              
        Label        -compare-4647-sub         
        FSubtract                              
        JumpFNeg     -compare-4647-false       
        Jump         -compare-4647-true        
        Label        -compare-4647-true        
        PushI        1                         
        Jump         -compare-4647-join        
        Label        -compare-4647-false       
        PushI        0                         
        Jump         -compare-4647-join        
        Label        -compare-4647-join        
        JumpTrue     -print-boolean-4648-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4648-join  
        Label        -print-boolean-4648-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4648-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4649-arg1        
        PushF        7.800000                  
        PushF        2.400000                  
        FMultiply                              
        Label        -compare-4649-arg2        
        PushF        2.700000                  
        PushF        2.100000                  
        FMultiply                              
        Label        -compare-4649-sub         
        FSubtract                              
        JumpFNeg     -compare-4649-false       
        Jump         -compare-4649-true        
        Label        -compare-4649-true        
        PushI        1                         
        Jump         -compare-4649-join        
        Label        -compare-4649-false       
        PushI        0                         
        Jump         -compare-4649-join        
        Label        -compare-4649-join        
        JumpTrue     -print-boolean-4650-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4650-join  
        Label        -print-boolean-4650-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4650-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4651-arg1        
        PushF        4.600000                  
        PushF        4.500000                  
        FMultiply                              
        Label        -compare-4651-arg2        
        PushF        4.000000                  
        PushF        7.900000                  
        FMultiply                              
        Label        -compare-4651-sub         
        FSubtract                              
        JumpFNeg     -compare-4651-false       
        Jump         -compare-4651-true        
        Label        -compare-4651-true        
        PushI        1                         
        Jump         -compare-4651-join        
        Label        -compare-4651-false       
        PushI        0                         
        Jump         -compare-4651-join        
        Label        -compare-4651-join        
        JumpTrue     -print-boolean-4652-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4652-join  
        Label        -print-boolean-4652-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4652-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4653-arg1        
        PushF        3.800000                  
        PushF        7.000000                  
        FMultiply                              
        Label        -compare-4653-arg2        
        PushF        1.400000                  
        PushF        6.600000                  
        FMultiply                              
        Label        -compare-4653-sub         
        FSubtract                              
        JumpFNeg     -compare-4653-false       
        Jump         -compare-4653-true        
        Label        -compare-4653-true        
        PushI        1                         
        Jump         -compare-4653-join        
        Label        -compare-4653-false       
        PushI        0                         
        Jump         -compare-4653-join        
        Label        -compare-4653-join        
        JumpTrue     -print-boolean-4654-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4654-join  
        Label        -print-boolean-4654-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4654-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4655-arg1        
        PushF        8.300000                  
        PushF        4.700000                  
        FMultiply                              
        Label        -compare-4655-arg2        
        PushF        5.700000                  
        PushF        6.400000                  
        FMultiply                              
        Label        -compare-4655-sub         
        FSubtract                              
        JumpFNeg     -compare-4655-false       
        Jump         -compare-4655-true        
        Label        -compare-4655-true        
        PushI        1                         
        Jump         -compare-4655-join        
        Label        -compare-4655-false       
        PushI        0                         
        Jump         -compare-4655-join        
        Label        -compare-4655-join        
        JumpTrue     -print-boolean-4656-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4656-join  
        Label        -print-boolean-4656-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4656-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
