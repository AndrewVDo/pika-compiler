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
        Label        -compare-4598-arg1        
        PushF        8.400000                  
        PushF        5.900000                  
        FMultiply                              
        Label        -compare-4598-arg2        
        PushF        7.600000                  
        Label        -compare-4598-sub         
        FSubtract                              
        JumpFNeg     -compare-4598-false       
        Jump         -compare-4598-true        
        Label        -compare-4598-true        
        PushI        1                         
        Jump         -compare-4598-join        
        Label        -compare-4598-false       
        PushI        0                         
        Jump         -compare-4598-join        
        Label        -compare-4598-join        
        JumpTrue     -print-boolean-4599-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4599-join  
        Label        -print-boolean-4599-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4599-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4600-arg1        
        PushF        7.900000                  
        PushF        3.300000                  
        FMultiply                              
        Label        -compare-4600-arg2        
        PushF        4.200000                  
        Label        -compare-4600-sub         
        FSubtract                              
        JumpFNeg     -compare-4600-false       
        Jump         -compare-4600-true        
        Label        -compare-4600-true        
        PushI        1                         
        Jump         -compare-4600-join        
        Label        -compare-4600-false       
        PushI        0                         
        Jump         -compare-4600-join        
        Label        -compare-4600-join        
        JumpTrue     -print-boolean-4601-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4601-join  
        Label        -print-boolean-4601-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4601-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4602-arg1        
        PushF        2.300000                  
        PushF        2.300000                  
        FMultiply                              
        Label        -compare-4602-arg2        
        PushF        7.400000                  
        Label        -compare-4602-sub         
        FSubtract                              
        JumpFNeg     -compare-4602-false       
        Jump         -compare-4602-true        
        Label        -compare-4602-true        
        PushI        1                         
        Jump         -compare-4602-join        
        Label        -compare-4602-false       
        PushI        0                         
        Jump         -compare-4602-join        
        Label        -compare-4602-join        
        JumpTrue     -print-boolean-4603-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4603-join  
        Label        -print-boolean-4603-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4603-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4604-arg1        
        PushF        4.000000                  
        PushF        2.200000                  
        FMultiply                              
        Label        -compare-4604-arg2        
        PushF        7.900000                  
        Label        -compare-4604-sub         
        FSubtract                              
        JumpFNeg     -compare-4604-false       
        Jump         -compare-4604-true        
        Label        -compare-4604-true        
        PushI        1                         
        Jump         -compare-4604-join        
        Label        -compare-4604-false       
        PushI        0                         
        Jump         -compare-4604-join        
        Label        -compare-4604-join        
        JumpTrue     -print-boolean-4605-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4605-join  
        Label        -print-boolean-4605-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4605-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4606-arg1        
        PushF        6.600000                  
        PushF        3.700000                  
        FMultiply                              
        Label        -compare-4606-arg2        
        PushF        8.900000                  
        Label        -compare-4606-sub         
        FSubtract                              
        JumpFNeg     -compare-4606-false       
        Jump         -compare-4606-true        
        Label        -compare-4606-true        
        PushI        1                         
        Jump         -compare-4606-join        
        Label        -compare-4606-false       
        PushI        0                         
        Jump         -compare-4606-join        
        Label        -compare-4606-join        
        JumpTrue     -print-boolean-4607-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4607-join  
        Label        -print-boolean-4607-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4607-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4608-arg1        
        PushF        8.200000                  
        PushF        7.500000                  
        FMultiply                              
        Label        -compare-4608-arg2        
        PushF        1.900000                  
        Label        -compare-4608-sub         
        FSubtract                              
        JumpFNeg     -compare-4608-false       
        Jump         -compare-4608-true        
        Label        -compare-4608-true        
        PushI        1                         
        Jump         -compare-4608-join        
        Label        -compare-4608-false       
        PushI        0                         
        Jump         -compare-4608-join        
        Label        -compare-4608-join        
        JumpTrue     -print-boolean-4609-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4609-join  
        Label        -print-boolean-4609-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4609-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4610-arg1        
        PushF        5.600000                  
        PushF        6.900000                  
        FMultiply                              
        Label        -compare-4610-arg2        
        PushF        4.300000                  
        Label        -compare-4610-sub         
        FSubtract                              
        JumpFNeg     -compare-4610-false       
        Jump         -compare-4610-true        
        Label        -compare-4610-true        
        PushI        1                         
        Jump         -compare-4610-join        
        Label        -compare-4610-false       
        PushI        0                         
        Jump         -compare-4610-join        
        Label        -compare-4610-join        
        JumpTrue     -print-boolean-4611-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4611-join  
        Label        -print-boolean-4611-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4611-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4612-arg1        
        PushF        5.400000                  
        PushF        2.900000                  
        FMultiply                              
        Label        -compare-4612-arg2        
        PushF        9.900000                  
        Label        -compare-4612-sub         
        FSubtract                              
        JumpFNeg     -compare-4612-false       
        Jump         -compare-4612-true        
        Label        -compare-4612-true        
        PushI        1                         
        Jump         -compare-4612-join        
        Label        -compare-4612-false       
        PushI        0                         
        Jump         -compare-4612-join        
        Label        -compare-4612-join        
        JumpTrue     -print-boolean-4613-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4613-join  
        Label        -print-boolean-4613-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4613-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4614-arg1        
        PushF        6.400000                  
        PushF        1.600000                  
        FMultiply                              
        Label        -compare-4614-arg2        
        PushF        2.000000                  
        Label        -compare-4614-sub         
        FSubtract                              
        JumpFNeg     -compare-4614-false       
        Jump         -compare-4614-true        
        Label        -compare-4614-true        
        PushI        1                         
        Jump         -compare-4614-join        
        Label        -compare-4614-false       
        PushI        0                         
        Jump         -compare-4614-join        
        Label        -compare-4614-join        
        JumpTrue     -print-boolean-4615-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4615-join  
        Label        -print-boolean-4615-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4615-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4616-arg1        
        PushF        3.700000                  
        PushF        1.000000                  
        FMultiply                              
        Label        -compare-4616-arg2        
        PushF        6.000000                  
        Label        -compare-4616-sub         
        FSubtract                              
        JumpFNeg     -compare-4616-false       
        Jump         -compare-4616-true        
        Label        -compare-4616-true        
        PushI        1                         
        Jump         -compare-4616-join        
        Label        -compare-4616-false       
        PushI        0                         
        Jump         -compare-4616-join        
        Label        -compare-4616-join        
        JumpTrue     -print-boolean-4617-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4617-join  
        Label        -print-boolean-4617-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4617-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4618-arg1        
        PushF        9.300000                  
        PushF        5.200000                  
        FMultiply                              
        Label        -compare-4618-arg2        
        PushF        6.800000                  
        Label        -compare-4618-sub         
        FSubtract                              
        JumpFNeg     -compare-4618-false       
        Jump         -compare-4618-true        
        Label        -compare-4618-true        
        PushI        1                         
        Jump         -compare-4618-join        
        Label        -compare-4618-false       
        PushI        0                         
        Jump         -compare-4618-join        
        Label        -compare-4618-join        
        JumpTrue     -print-boolean-4619-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4619-join  
        Label        -print-boolean-4619-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4619-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4620-arg1        
        PushF        2.400000                  
        PushF        5.300000                  
        FMultiply                              
        Label        -compare-4620-arg2        
        PushF        4.100000                  
        Label        -compare-4620-sub         
        FSubtract                              
        JumpFNeg     -compare-4620-false       
        Jump         -compare-4620-true        
        Label        -compare-4620-true        
        PushI        1                         
        Jump         -compare-4620-join        
        Label        -compare-4620-false       
        PushI        0                         
        Jump         -compare-4620-join        
        Label        -compare-4620-join        
        JumpTrue     -print-boolean-4621-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4621-join  
        Label        -print-boolean-4621-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4621-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4622-arg1        
        PushF        3.800000                  
        Label        -compare-4622-arg2        
        PushF        7.200000                  
        PushF        8.300000                  
        FMultiply                              
        Label        -compare-4622-sub         
        FSubtract                              
        JumpFNeg     -compare-4622-false       
        Jump         -compare-4622-true        
        Label        -compare-4622-true        
        PushI        1                         
        Jump         -compare-4622-join        
        Label        -compare-4622-false       
        PushI        0                         
        Jump         -compare-4622-join        
        Label        -compare-4622-join        
        JumpTrue     -print-boolean-4623-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4623-join  
        Label        -print-boolean-4623-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4623-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4624-arg1        
        PushF        4.900000                  
        Label        -compare-4624-arg2        
        PushF        3.700000                  
        PushF        4.100000                  
        FMultiply                              
        Label        -compare-4624-sub         
        FSubtract                              
        JumpFNeg     -compare-4624-false       
        Jump         -compare-4624-true        
        Label        -compare-4624-true        
        PushI        1                         
        Jump         -compare-4624-join        
        Label        -compare-4624-false       
        PushI        0                         
        Jump         -compare-4624-join        
        Label        -compare-4624-join        
        JumpTrue     -print-boolean-4625-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4625-join  
        Label        -print-boolean-4625-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4625-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4626-arg1        
        PushF        4.900000                  
        Label        -compare-4626-arg2        
        PushF        2.400000                  
        PushF        5.500000                  
        FMultiply                              
        Label        -compare-4626-sub         
        FSubtract                              
        JumpFNeg     -compare-4626-false       
        Jump         -compare-4626-true        
        Label        -compare-4626-true        
        PushI        1                         
        Jump         -compare-4626-join        
        Label        -compare-4626-false       
        PushI        0                         
        Jump         -compare-4626-join        
        Label        -compare-4626-join        
        JumpTrue     -print-boolean-4627-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4627-join  
        Label        -print-boolean-4627-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4627-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4628-arg1        
        PushF        5.800000                  
        Label        -compare-4628-arg2        
        PushF        2.200000                  
        PushF        7.300000                  
        FMultiply                              
        Label        -compare-4628-sub         
        FSubtract                              
        JumpFNeg     -compare-4628-false       
        Jump         -compare-4628-true        
        Label        -compare-4628-true        
        PushI        1                         
        Jump         -compare-4628-join        
        Label        -compare-4628-false       
        PushI        0                         
        Jump         -compare-4628-join        
        Label        -compare-4628-join        
        JumpTrue     -print-boolean-4629-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4629-join  
        Label        -print-boolean-4629-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4629-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4630-arg1        
        PushF        7.300000                  
        Label        -compare-4630-arg2        
        PushF        1.600000                  
        PushF        6.900000                  
        FMultiply                              
        Label        -compare-4630-sub         
        FSubtract                              
        JumpFNeg     -compare-4630-false       
        Jump         -compare-4630-true        
        Label        -compare-4630-true        
        PushI        1                         
        Jump         -compare-4630-join        
        Label        -compare-4630-false       
        PushI        0                         
        Jump         -compare-4630-join        
        Label        -compare-4630-join        
        JumpTrue     -print-boolean-4631-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4631-join  
        Label        -print-boolean-4631-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4631-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4632-arg1        
        PushF        7.200000                  
        Label        -compare-4632-arg2        
        PushF        9.400000                  
        PushF        2.700000                  
        FMultiply                              
        Label        -compare-4632-sub         
        FSubtract                              
        JumpFNeg     -compare-4632-false       
        Jump         -compare-4632-true        
        Label        -compare-4632-true        
        PushI        1                         
        Jump         -compare-4632-join        
        Label        -compare-4632-false       
        PushI        0                         
        Jump         -compare-4632-join        
        Label        -compare-4632-join        
        JumpTrue     -print-boolean-4633-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4633-join  
        Label        -print-boolean-4633-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4633-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4634-arg1        
        PushF        9.400000                  
        Label        -compare-4634-arg2        
        PushF        4.400000                  
        PushF        6.200000                  
        FMultiply                              
        Label        -compare-4634-sub         
        FSubtract                              
        JumpFNeg     -compare-4634-false       
        Jump         -compare-4634-true        
        Label        -compare-4634-true        
        PushI        1                         
        Jump         -compare-4634-join        
        Label        -compare-4634-false       
        PushI        0                         
        Jump         -compare-4634-join        
        Label        -compare-4634-join        
        JumpTrue     -print-boolean-4635-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4635-join  
        Label        -print-boolean-4635-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4635-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4636-arg1        
        PushF        4.000000                  
        Label        -compare-4636-arg2        
        PushF        8.300000                  
        PushF        4.800000                  
        FMultiply                              
        Label        -compare-4636-sub         
        FSubtract                              
        JumpFNeg     -compare-4636-false       
        Jump         -compare-4636-true        
        Label        -compare-4636-true        
        PushI        1                         
        Jump         -compare-4636-join        
        Label        -compare-4636-false       
        PushI        0                         
        Jump         -compare-4636-join        
        Label        -compare-4636-join        
        JumpTrue     -print-boolean-4637-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4637-join  
        Label        -print-boolean-4637-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4637-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4638-arg1        
        PushF        9.800000                  
        Label        -compare-4638-arg2        
        PushF        5.300000                  
        PushF        5.400000                  
        FMultiply                              
        Label        -compare-4638-sub         
        FSubtract                              
        JumpFNeg     -compare-4638-false       
        Jump         -compare-4638-true        
        Label        -compare-4638-true        
        PushI        1                         
        Jump         -compare-4638-join        
        Label        -compare-4638-false       
        PushI        0                         
        Jump         -compare-4638-join        
        Label        -compare-4638-join        
        JumpTrue     -print-boolean-4639-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4639-join  
        Label        -print-boolean-4639-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4639-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4640-arg1        
        PushF        1.700000                  
        Label        -compare-4640-arg2        
        PushF        9.300000                  
        PushF        5.400000                  
        FMultiply                              
        Label        -compare-4640-sub         
        FSubtract                              
        JumpFNeg     -compare-4640-false       
        Jump         -compare-4640-true        
        Label        -compare-4640-true        
        PushI        1                         
        Jump         -compare-4640-join        
        Label        -compare-4640-false       
        PushI        0                         
        Jump         -compare-4640-join        
        Label        -compare-4640-join        
        JumpTrue     -print-boolean-4641-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4641-join  
        Label        -print-boolean-4641-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4641-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4642-arg1        
        PushF        5.200000                  
        Label        -compare-4642-arg2        
        PushF        3.400000                  
        PushF        6.100000                  
        FMultiply                              
        Label        -compare-4642-sub         
        FSubtract                              
        JumpFNeg     -compare-4642-false       
        Jump         -compare-4642-true        
        Label        -compare-4642-true        
        PushI        1                         
        Jump         -compare-4642-join        
        Label        -compare-4642-false       
        PushI        0                         
        Jump         -compare-4642-join        
        Label        -compare-4642-join        
        JumpTrue     -print-boolean-4643-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4643-join  
        Label        -print-boolean-4643-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4643-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4644-arg1        
        PushF        5.700000                  
        Label        -compare-4644-arg2        
        PushF        3.400000                  
        PushF        4.200000                  
        FMultiply                              
        Label        -compare-4644-sub         
        FSubtract                              
        JumpFNeg     -compare-4644-false       
        Jump         -compare-4644-true        
        Label        -compare-4644-true        
        PushI        1                         
        Jump         -compare-4644-join        
        Label        -compare-4644-false       
        PushI        0                         
        Jump         -compare-4644-join        
        Label        -compare-4644-join        
        JumpTrue     -print-boolean-4645-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4645-join  
        Label        -print-boolean-4645-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4645-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4646-arg1        
        PushF        3.200000                  
        PushF        3.200000                  
        FMultiply                              
        Label        -compare-4646-arg2        
        PushF        8.900000                  
        PushF        7.000000                  
        FMultiply                              
        Label        -compare-4646-sub         
        FSubtract                              
        JumpFNeg     -compare-4646-false       
        Jump         -compare-4646-true        
        Label        -compare-4646-true        
        PushI        1                         
        Jump         -compare-4646-join        
        Label        -compare-4646-false       
        PushI        0                         
        Jump         -compare-4646-join        
        Label        -compare-4646-join        
        JumpTrue     -print-boolean-4647-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4647-join  
        Label        -print-boolean-4647-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4647-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4648-arg1        
        PushF        8.500000                  
        PushF        2.600000                  
        FMultiply                              
        Label        -compare-4648-arg2        
        PushF        2.500000                  
        PushF        9.600000                  
        FMultiply                              
        Label        -compare-4648-sub         
        FSubtract                              
        JumpFNeg     -compare-4648-false       
        Jump         -compare-4648-true        
        Label        -compare-4648-true        
        PushI        1                         
        Jump         -compare-4648-join        
        Label        -compare-4648-false       
        PushI        0                         
        Jump         -compare-4648-join        
        Label        -compare-4648-join        
        JumpTrue     -print-boolean-4649-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4649-join  
        Label        -print-boolean-4649-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4649-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4650-arg1        
        PushF        5.900000                  
        PushF        5.800000                  
        FMultiply                              
        Label        -compare-4650-arg2        
        PushF        7.700000                  
        PushF        9.200000                  
        FMultiply                              
        Label        -compare-4650-sub         
        FSubtract                              
        JumpFNeg     -compare-4650-false       
        Jump         -compare-4650-true        
        Label        -compare-4650-true        
        PushI        1                         
        Jump         -compare-4650-join        
        Label        -compare-4650-false       
        PushI        0                         
        Jump         -compare-4650-join        
        Label        -compare-4650-join        
        JumpTrue     -print-boolean-4651-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4651-join  
        Label        -print-boolean-4651-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4651-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4652-arg1        
        PushF        4.600000                  
        PushF        4.400000                  
        FMultiply                              
        Label        -compare-4652-arg2        
        PushF        4.100000                  
        PushF        5.900000                  
        FMultiply                              
        Label        -compare-4652-sub         
        FSubtract                              
        JumpFNeg     -compare-4652-false       
        Jump         -compare-4652-true        
        Label        -compare-4652-true        
        PushI        1                         
        Jump         -compare-4652-join        
        Label        -compare-4652-false       
        PushI        0                         
        Jump         -compare-4652-join        
        Label        -compare-4652-join        
        JumpTrue     -print-boolean-4653-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4653-join  
        Label        -print-boolean-4653-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4653-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4654-arg1        
        PushF        1.000000                  
        PushF        7.800000                  
        FMultiply                              
        Label        -compare-4654-arg2        
        PushF        3.900000                  
        PushF        3.300000                  
        FMultiply                              
        Label        -compare-4654-sub         
        FSubtract                              
        JumpFNeg     -compare-4654-false       
        Jump         -compare-4654-true        
        Label        -compare-4654-true        
        PushI        1                         
        Jump         -compare-4654-join        
        Label        -compare-4654-false       
        PushI        0                         
        Jump         -compare-4654-join        
        Label        -compare-4654-join        
        JumpTrue     -print-boolean-4655-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4655-join  
        Label        -print-boolean-4655-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4655-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4656-arg1        
        PushF        9.800000                  
        PushF        5.300000                  
        FMultiply                              
        Label        -compare-4656-arg2        
        PushF        6.700000                  
        PushF        2.800000                  
        FMultiply                              
        Label        -compare-4656-sub         
        FSubtract                              
        JumpFNeg     -compare-4656-false       
        Jump         -compare-4656-true        
        Label        -compare-4656-true        
        PushI        1                         
        Jump         -compare-4656-join        
        Label        -compare-4656-false       
        PushI        0                         
        Jump         -compare-4656-join        
        Label        -compare-4656-join        
        JumpTrue     -print-boolean-4657-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4657-join  
        Label        -print-boolean-4657-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4657-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4658-arg1        
        PushF        2.200000                  
        PushF        9.500000                  
        FMultiply                              
        Label        -compare-4658-arg2        
        PushF        4.100000                  
        PushF        2.600000                  
        FMultiply                              
        Label        -compare-4658-sub         
        FSubtract                              
        JumpFNeg     -compare-4658-false       
        Jump         -compare-4658-true        
        Label        -compare-4658-true        
        PushI        1                         
        Jump         -compare-4658-join        
        Label        -compare-4658-false       
        PushI        0                         
        Jump         -compare-4658-join        
        Label        -compare-4658-join        
        JumpTrue     -print-boolean-4659-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4659-join  
        Label        -print-boolean-4659-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4659-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4660-arg1        
        PushF        1.600000                  
        PushF        6.100000                  
        FMultiply                              
        Label        -compare-4660-arg2        
        PushF        9.200000                  
        PushF        3.100000                  
        FMultiply                              
        Label        -compare-4660-sub         
        FSubtract                              
        JumpFNeg     -compare-4660-false       
        Jump         -compare-4660-true        
        Label        -compare-4660-true        
        PushI        1                         
        Jump         -compare-4660-join        
        Label        -compare-4660-false       
        PushI        0                         
        Jump         -compare-4660-join        
        Label        -compare-4660-join        
        JumpTrue     -print-boolean-4661-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4661-join  
        Label        -print-boolean-4661-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4661-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4662-arg1        
        PushF        7.800000                  
        PushF        2.400000                  
        FMultiply                              
        Label        -compare-4662-arg2        
        PushF        2.700000                  
        PushF        2.100000                  
        FMultiply                              
        Label        -compare-4662-sub         
        FSubtract                              
        JumpFNeg     -compare-4662-false       
        Jump         -compare-4662-true        
        Label        -compare-4662-true        
        PushI        1                         
        Jump         -compare-4662-join        
        Label        -compare-4662-false       
        PushI        0                         
        Jump         -compare-4662-join        
        Label        -compare-4662-join        
        JumpTrue     -print-boolean-4663-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4663-join  
        Label        -print-boolean-4663-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4663-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4664-arg1        
        PushF        4.600000                  
        PushF        4.500000                  
        FMultiply                              
        Label        -compare-4664-arg2        
        PushF        4.000000                  
        PushF        7.900000                  
        FMultiply                              
        Label        -compare-4664-sub         
        FSubtract                              
        JumpFNeg     -compare-4664-false       
        Jump         -compare-4664-true        
        Label        -compare-4664-true        
        PushI        1                         
        Jump         -compare-4664-join        
        Label        -compare-4664-false       
        PushI        0                         
        Jump         -compare-4664-join        
        Label        -compare-4664-join        
        JumpTrue     -print-boolean-4665-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4665-join  
        Label        -print-boolean-4665-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4665-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4666-arg1        
        PushF        3.800000                  
        PushF        7.000000                  
        FMultiply                              
        Label        -compare-4666-arg2        
        PushF        1.400000                  
        PushF        6.600000                  
        FMultiply                              
        Label        -compare-4666-sub         
        FSubtract                              
        JumpFNeg     -compare-4666-false       
        Jump         -compare-4666-true        
        Label        -compare-4666-true        
        PushI        1                         
        Jump         -compare-4666-join        
        Label        -compare-4666-false       
        PushI        0                         
        Jump         -compare-4666-join        
        Label        -compare-4666-join        
        JumpTrue     -print-boolean-4667-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4667-join  
        Label        -print-boolean-4667-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4667-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4668-arg1        
        PushF        8.300000                  
        PushF        4.700000                  
        FMultiply                              
        Label        -compare-4668-arg2        
        PushF        5.700000                  
        PushF        6.400000                  
        FMultiply                              
        Label        -compare-4668-sub         
        FSubtract                              
        JumpFNeg     -compare-4668-false       
        Jump         -compare-4668-true        
        Label        -compare-4668-true        
        PushI        1                         
        Jump         -compare-4668-join        
        Label        -compare-4668-false       
        PushI        0                         
        Jump         -compare-4668-join        
        Label        -compare-4668-join        
        JumpTrue     -print-boolean-4669-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4669-join  
        Label        -print-boolean-4669-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4669-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
