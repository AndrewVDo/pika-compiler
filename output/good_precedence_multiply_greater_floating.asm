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
        Label        -compare-4441-arg1        
        PushF        9.300000                  
        PushF        8.800000                  
        FMultiply                              
        Label        -compare-4441-arg2        
        PushF        7.100000                  
        Label        -compare-4441-sub         
        FSubtract                              
        JumpFPos     -compare-4441-true        
        Jump         -compare-4441-false       
        Label        -compare-4441-true        
        PushI        1                         
        Jump         -compare-4441-join        
        Label        -compare-4441-false       
        PushI        0                         
        Jump         -compare-4441-join        
        Label        -compare-4441-join        
        JumpTrue     -print-boolean-4442-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4442-join  
        Label        -print-boolean-4442-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4442-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4443-arg1        
        PushF        8.400000                  
        PushF        3.200000                  
        FMultiply                              
        Label        -compare-4443-arg2        
        PushF        7.800000                  
        Label        -compare-4443-sub         
        FSubtract                              
        JumpFPos     -compare-4443-true        
        Jump         -compare-4443-false       
        Label        -compare-4443-true        
        PushI        1                         
        Jump         -compare-4443-join        
        Label        -compare-4443-false       
        PushI        0                         
        Jump         -compare-4443-join        
        Label        -compare-4443-join        
        JumpTrue     -print-boolean-4444-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4444-join  
        Label        -print-boolean-4444-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4444-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4445-arg1        
        PushF        6.300000                  
        PushF        9.800000                  
        FMultiply                              
        Label        -compare-4445-arg2        
        PushF        3.700000                  
        Label        -compare-4445-sub         
        FSubtract                              
        JumpFPos     -compare-4445-true        
        Jump         -compare-4445-false       
        Label        -compare-4445-true        
        PushI        1                         
        Jump         -compare-4445-join        
        Label        -compare-4445-false       
        PushI        0                         
        Jump         -compare-4445-join        
        Label        -compare-4445-join        
        JumpTrue     -print-boolean-4446-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4446-join  
        Label        -print-boolean-4446-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4446-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4447-arg1        
        PushF        1.300000                  
        PushF        9.800000                  
        FMultiply                              
        Label        -compare-4447-arg2        
        PushF        3.000000                  
        Label        -compare-4447-sub         
        FSubtract                              
        JumpFPos     -compare-4447-true        
        Jump         -compare-4447-false       
        Label        -compare-4447-true        
        PushI        1                         
        Jump         -compare-4447-join        
        Label        -compare-4447-false       
        PushI        0                         
        Jump         -compare-4447-join        
        Label        -compare-4447-join        
        JumpTrue     -print-boolean-4448-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4448-join  
        Label        -print-boolean-4448-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4448-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4449-arg1        
        PushF        5.700000                  
        PushF        4.900000                  
        FMultiply                              
        Label        -compare-4449-arg2        
        PushF        4.800000                  
        Label        -compare-4449-sub         
        FSubtract                              
        JumpFPos     -compare-4449-true        
        Jump         -compare-4449-false       
        Label        -compare-4449-true        
        PushI        1                         
        Jump         -compare-4449-join        
        Label        -compare-4449-false       
        PushI        0                         
        Jump         -compare-4449-join        
        Label        -compare-4449-join        
        JumpTrue     -print-boolean-4450-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4450-join  
        Label        -print-boolean-4450-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4450-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4451-arg1        
        PushF        6.700000                  
        PushF        9.900000                  
        FMultiply                              
        Label        -compare-4451-arg2        
        PushF        5.400000                  
        Label        -compare-4451-sub         
        FSubtract                              
        JumpFPos     -compare-4451-true        
        Jump         -compare-4451-false       
        Label        -compare-4451-true        
        PushI        1                         
        Jump         -compare-4451-join        
        Label        -compare-4451-false       
        PushI        0                         
        Jump         -compare-4451-join        
        Label        -compare-4451-join        
        JumpTrue     -print-boolean-4452-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4452-join  
        Label        -print-boolean-4452-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4452-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4453-arg1        
        PushF        1.700000                  
        PushF        4.600000                  
        FMultiply                              
        Label        -compare-4453-arg2        
        PushF        5.600000                  
        Label        -compare-4453-sub         
        FSubtract                              
        JumpFPos     -compare-4453-true        
        Jump         -compare-4453-false       
        Label        -compare-4453-true        
        PushI        1                         
        Jump         -compare-4453-join        
        Label        -compare-4453-false       
        PushI        0                         
        Jump         -compare-4453-join        
        Label        -compare-4453-join        
        JumpTrue     -print-boolean-4454-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4454-join  
        Label        -print-boolean-4454-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4454-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4455-arg1        
        PushF        1.500000                  
        PushF        8.700000                  
        FMultiply                              
        Label        -compare-4455-arg2        
        PushF        6.500000                  
        Label        -compare-4455-sub         
        FSubtract                              
        JumpFPos     -compare-4455-true        
        Jump         -compare-4455-false       
        Label        -compare-4455-true        
        PushI        1                         
        Jump         -compare-4455-join        
        Label        -compare-4455-false       
        PushI        0                         
        Jump         -compare-4455-join        
        Label        -compare-4455-join        
        JumpTrue     -print-boolean-4456-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4456-join  
        Label        -print-boolean-4456-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4456-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4457-arg1        
        PushF        1.200000                  
        PushF        7.400000                  
        FMultiply                              
        Label        -compare-4457-arg2        
        PushF        7.000000                  
        Label        -compare-4457-sub         
        FSubtract                              
        JumpFPos     -compare-4457-true        
        Jump         -compare-4457-false       
        Label        -compare-4457-true        
        PushI        1                         
        Jump         -compare-4457-join        
        Label        -compare-4457-false       
        PushI        0                         
        Jump         -compare-4457-join        
        Label        -compare-4457-join        
        JumpTrue     -print-boolean-4458-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4458-join  
        Label        -print-boolean-4458-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4458-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4459-arg1        
        PushF        5.700000                  
        PushF        1.800000                  
        FMultiply                              
        Label        -compare-4459-arg2        
        PushF        3.600000                  
        Label        -compare-4459-sub         
        FSubtract                              
        JumpFPos     -compare-4459-true        
        Jump         -compare-4459-false       
        Label        -compare-4459-true        
        PushI        1                         
        Jump         -compare-4459-join        
        Label        -compare-4459-false       
        PushI        0                         
        Jump         -compare-4459-join        
        Label        -compare-4459-join        
        JumpTrue     -print-boolean-4460-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4460-join  
        Label        -print-boolean-4460-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4460-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4461-arg1        
        PushF        3.400000                  
        PushF        2.300000                  
        FMultiply                              
        Label        -compare-4461-arg2        
        PushF        1.800000                  
        Label        -compare-4461-sub         
        FSubtract                              
        JumpFPos     -compare-4461-true        
        Jump         -compare-4461-false       
        Label        -compare-4461-true        
        PushI        1                         
        Jump         -compare-4461-join        
        Label        -compare-4461-false       
        PushI        0                         
        Jump         -compare-4461-join        
        Label        -compare-4461-join        
        JumpTrue     -print-boolean-4462-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4462-join  
        Label        -print-boolean-4462-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4462-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4463-arg1        
        PushF        9.500000                  
        PushF        2.900000                  
        FMultiply                              
        Label        -compare-4463-arg2        
        PushF        5.600000                  
        Label        -compare-4463-sub         
        FSubtract                              
        JumpFPos     -compare-4463-true        
        Jump         -compare-4463-false       
        Label        -compare-4463-true        
        PushI        1                         
        Jump         -compare-4463-join        
        Label        -compare-4463-false       
        PushI        0                         
        Jump         -compare-4463-join        
        Label        -compare-4463-join        
        JumpTrue     -print-boolean-4464-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4464-join  
        Label        -print-boolean-4464-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4464-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4465-arg1        
        PushF        5.400000                  
        Label        -compare-4465-arg2        
        PushF        6.000000                  
        PushF        5.100000                  
        FMultiply                              
        Label        -compare-4465-sub         
        FSubtract                              
        JumpFPos     -compare-4465-true        
        Jump         -compare-4465-false       
        Label        -compare-4465-true        
        PushI        1                         
        Jump         -compare-4465-join        
        Label        -compare-4465-false       
        PushI        0                         
        Jump         -compare-4465-join        
        Label        -compare-4465-join        
        JumpTrue     -print-boolean-4466-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4466-join  
        Label        -print-boolean-4466-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4466-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4467-arg1        
        PushF        8.800000                  
        Label        -compare-4467-arg2        
        PushF        5.700000                  
        PushF        9.400000                  
        FMultiply                              
        Label        -compare-4467-sub         
        FSubtract                              
        JumpFPos     -compare-4467-true        
        Jump         -compare-4467-false       
        Label        -compare-4467-true        
        PushI        1                         
        Jump         -compare-4467-join        
        Label        -compare-4467-false       
        PushI        0                         
        Jump         -compare-4467-join        
        Label        -compare-4467-join        
        JumpTrue     -print-boolean-4468-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4468-join  
        Label        -print-boolean-4468-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4468-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4469-arg1        
        PushF        9.400000                  
        Label        -compare-4469-arg2        
        PushF        8.300000                  
        PushF        3.600000                  
        FMultiply                              
        Label        -compare-4469-sub         
        FSubtract                              
        JumpFPos     -compare-4469-true        
        Jump         -compare-4469-false       
        Label        -compare-4469-true        
        PushI        1                         
        Jump         -compare-4469-join        
        Label        -compare-4469-false       
        PushI        0                         
        Jump         -compare-4469-join        
        Label        -compare-4469-join        
        JumpTrue     -print-boolean-4470-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4470-join  
        Label        -print-boolean-4470-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4470-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4471-arg1        
        PushF        3.100000                  
        Label        -compare-4471-arg2        
        PushF        8.900000                  
        PushF        9.700000                  
        FMultiply                              
        Label        -compare-4471-sub         
        FSubtract                              
        JumpFPos     -compare-4471-true        
        Jump         -compare-4471-false       
        Label        -compare-4471-true        
        PushI        1                         
        Jump         -compare-4471-join        
        Label        -compare-4471-false       
        PushI        0                         
        Jump         -compare-4471-join        
        Label        -compare-4471-join        
        JumpTrue     -print-boolean-4472-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4472-join  
        Label        -print-boolean-4472-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4472-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4473-arg1        
        PushF        3.100000                  
        Label        -compare-4473-arg2        
        PushF        5.800000                  
        PushF        1.300000                  
        FMultiply                              
        Label        -compare-4473-sub         
        FSubtract                              
        JumpFPos     -compare-4473-true        
        Jump         -compare-4473-false       
        Label        -compare-4473-true        
        PushI        1                         
        Jump         -compare-4473-join        
        Label        -compare-4473-false       
        PushI        0                         
        Jump         -compare-4473-join        
        Label        -compare-4473-join        
        JumpTrue     -print-boolean-4474-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4474-join  
        Label        -print-boolean-4474-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4474-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4475-arg1        
        PushF        4.000000                  
        Label        -compare-4475-arg2        
        PushF        6.300000                  
        PushF        2.200000                  
        FMultiply                              
        Label        -compare-4475-sub         
        FSubtract                              
        JumpFPos     -compare-4475-true        
        Jump         -compare-4475-false       
        Label        -compare-4475-true        
        PushI        1                         
        Jump         -compare-4475-join        
        Label        -compare-4475-false       
        PushI        0                         
        Jump         -compare-4475-join        
        Label        -compare-4475-join        
        JumpTrue     -print-boolean-4476-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4476-join  
        Label        -print-boolean-4476-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4476-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4477-arg1        
        PushF        9.100000                  
        Label        -compare-4477-arg2        
        PushF        5.200000                  
        PushF        4.700000                  
        FMultiply                              
        Label        -compare-4477-sub         
        FSubtract                              
        JumpFPos     -compare-4477-true        
        Jump         -compare-4477-false       
        Label        -compare-4477-true        
        PushI        1                         
        Jump         -compare-4477-join        
        Label        -compare-4477-false       
        PushI        0                         
        Jump         -compare-4477-join        
        Label        -compare-4477-join        
        JumpTrue     -print-boolean-4478-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4478-join  
        Label        -print-boolean-4478-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4478-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4479-arg1        
        PushF        2.600000                  
        Label        -compare-4479-arg2        
        PushF        8.200000                  
        PushF        4.600000                  
        FMultiply                              
        Label        -compare-4479-sub         
        FSubtract                              
        JumpFPos     -compare-4479-true        
        Jump         -compare-4479-false       
        Label        -compare-4479-true        
        PushI        1                         
        Jump         -compare-4479-join        
        Label        -compare-4479-false       
        PushI        0                         
        Jump         -compare-4479-join        
        Label        -compare-4479-join        
        JumpTrue     -print-boolean-4480-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4480-join  
        Label        -print-boolean-4480-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4480-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4481-arg1        
        PushF        9.500000                  
        Label        -compare-4481-arg2        
        PushF        1.100000                  
        PushF        3.000000                  
        FMultiply                              
        Label        -compare-4481-sub         
        FSubtract                              
        JumpFPos     -compare-4481-true        
        Jump         -compare-4481-false       
        Label        -compare-4481-true        
        PushI        1                         
        Jump         -compare-4481-join        
        Label        -compare-4481-false       
        PushI        0                         
        Jump         -compare-4481-join        
        Label        -compare-4481-join        
        JumpTrue     -print-boolean-4482-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4482-join  
        Label        -print-boolean-4482-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4482-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4483-arg1        
        PushF        2.500000                  
        Label        -compare-4483-arg2        
        PushF        5.200000                  
        PushF        4.800000                  
        FMultiply                              
        Label        -compare-4483-sub         
        FSubtract                              
        JumpFPos     -compare-4483-true        
        Jump         -compare-4483-false       
        Label        -compare-4483-true        
        PushI        1                         
        Jump         -compare-4483-join        
        Label        -compare-4483-false       
        PushI        0                         
        Jump         -compare-4483-join        
        Label        -compare-4483-join        
        JumpTrue     -print-boolean-4484-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4484-join  
        Label        -print-boolean-4484-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4484-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4485-arg1        
        PushF        1.500000                  
        Label        -compare-4485-arg2        
        PushF        8.800000                  
        PushF        3.200000                  
        FMultiply                              
        Label        -compare-4485-sub         
        FSubtract                              
        JumpFPos     -compare-4485-true        
        Jump         -compare-4485-false       
        Label        -compare-4485-true        
        PushI        1                         
        Jump         -compare-4485-join        
        Label        -compare-4485-false       
        PushI        0                         
        Jump         -compare-4485-join        
        Label        -compare-4485-join        
        JumpTrue     -print-boolean-4486-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4486-join  
        Label        -print-boolean-4486-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4486-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4487-arg1        
        PushF        2.300000                  
        Label        -compare-4487-arg2        
        PushF        5.100000                  
        PushF        6.600000                  
        FMultiply                              
        Label        -compare-4487-sub         
        FSubtract                              
        JumpFPos     -compare-4487-true        
        Jump         -compare-4487-false       
        Label        -compare-4487-true        
        PushI        1                         
        Jump         -compare-4487-join        
        Label        -compare-4487-false       
        PushI        0                         
        Jump         -compare-4487-join        
        Label        -compare-4487-join        
        JumpTrue     -print-boolean-4488-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4488-join  
        Label        -print-boolean-4488-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4488-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4489-arg1        
        PushF        1.600000                  
        PushF        7.900000                  
        FMultiply                              
        Label        -compare-4489-arg2        
        PushF        2.600000                  
        PushF        8.000000                  
        FMultiply                              
        Label        -compare-4489-sub         
        FSubtract                              
        JumpFPos     -compare-4489-true        
        Jump         -compare-4489-false       
        Label        -compare-4489-true        
        PushI        1                         
        Jump         -compare-4489-join        
        Label        -compare-4489-false       
        PushI        0                         
        Jump         -compare-4489-join        
        Label        -compare-4489-join        
        JumpTrue     -print-boolean-4490-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4490-join  
        Label        -print-boolean-4490-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4490-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4491-arg1        
        PushF        7.200000                  
        PushF        4.900000                  
        FMultiply                              
        Label        -compare-4491-arg2        
        PushF        2.700000                  
        PushF        6.200000                  
        FMultiply                              
        Label        -compare-4491-sub         
        FSubtract                              
        JumpFPos     -compare-4491-true        
        Jump         -compare-4491-false       
        Label        -compare-4491-true        
        PushI        1                         
        Jump         -compare-4491-join        
        Label        -compare-4491-false       
        PushI        0                         
        Jump         -compare-4491-join        
        Label        -compare-4491-join        
        JumpTrue     -print-boolean-4492-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4492-join  
        Label        -print-boolean-4492-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4492-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4493-arg1        
        PushF        7.400000                  
        PushF        9.200000                  
        FMultiply                              
        Label        -compare-4493-arg2        
        PushF        9.200000                  
        PushF        9.600000                  
        FMultiply                              
        Label        -compare-4493-sub         
        FSubtract                              
        JumpFPos     -compare-4493-true        
        Jump         -compare-4493-false       
        Label        -compare-4493-true        
        PushI        1                         
        Jump         -compare-4493-join        
        Label        -compare-4493-false       
        PushI        0                         
        Jump         -compare-4493-join        
        Label        -compare-4493-join        
        JumpTrue     -print-boolean-4494-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4494-join  
        Label        -print-boolean-4494-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4494-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4495-arg1        
        PushF        4.100000                  
        PushF        2.600000                  
        FMultiply                              
        Label        -compare-4495-arg2        
        PushF        4.800000                  
        PushF        3.800000                  
        FMultiply                              
        Label        -compare-4495-sub         
        FSubtract                              
        JumpFPos     -compare-4495-true        
        Jump         -compare-4495-false       
        Label        -compare-4495-true        
        PushI        1                         
        Jump         -compare-4495-join        
        Label        -compare-4495-false       
        PushI        0                         
        Jump         -compare-4495-join        
        Label        -compare-4495-join        
        JumpTrue     -print-boolean-4496-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4496-join  
        Label        -print-boolean-4496-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4496-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4497-arg1        
        PushF        1.500000                  
        PushF        5.000000                  
        FMultiply                              
        Label        -compare-4497-arg2        
        PushF        3.400000                  
        PushF        2.200000                  
        FMultiply                              
        Label        -compare-4497-sub         
        FSubtract                              
        JumpFPos     -compare-4497-true        
        Jump         -compare-4497-false       
        Label        -compare-4497-true        
        PushI        1                         
        Jump         -compare-4497-join        
        Label        -compare-4497-false       
        PushI        0                         
        Jump         -compare-4497-join        
        Label        -compare-4497-join        
        JumpTrue     -print-boolean-4498-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4498-join  
        Label        -print-boolean-4498-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4498-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4499-arg1        
        PushF        6.900000                  
        PushF        4.400000                  
        FMultiply                              
        Label        -compare-4499-arg2        
        PushF        8.600000                  
        PushF        8.400000                  
        FMultiply                              
        Label        -compare-4499-sub         
        FSubtract                              
        JumpFPos     -compare-4499-true        
        Jump         -compare-4499-false       
        Label        -compare-4499-true        
        PushI        1                         
        Jump         -compare-4499-join        
        Label        -compare-4499-false       
        PushI        0                         
        Jump         -compare-4499-join        
        Label        -compare-4499-join        
        JumpTrue     -print-boolean-4500-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4500-join  
        Label        -print-boolean-4500-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4500-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4501-arg1        
        PushF        4.300000                  
        PushF        5.500000                  
        FMultiply                              
        Label        -compare-4501-arg2        
        PushF        8.800000                  
        PushF        6.000000                  
        FMultiply                              
        Label        -compare-4501-sub         
        FSubtract                              
        JumpFPos     -compare-4501-true        
        Jump         -compare-4501-false       
        Label        -compare-4501-true        
        PushI        1                         
        Jump         -compare-4501-join        
        Label        -compare-4501-false       
        PushI        0                         
        Jump         -compare-4501-join        
        Label        -compare-4501-join        
        JumpTrue     -print-boolean-4502-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4502-join  
        Label        -print-boolean-4502-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4502-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4503-arg1        
        PushF        2.300000                  
        PushF        9.600000                  
        FMultiply                              
        Label        -compare-4503-arg2        
        PushF        9.900000                  
        PushF        9.100000                  
        FMultiply                              
        Label        -compare-4503-sub         
        FSubtract                              
        JumpFPos     -compare-4503-true        
        Jump         -compare-4503-false       
        Label        -compare-4503-true        
        PushI        1                         
        Jump         -compare-4503-join        
        Label        -compare-4503-false       
        PushI        0                         
        Jump         -compare-4503-join        
        Label        -compare-4503-join        
        JumpTrue     -print-boolean-4504-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4504-join  
        Label        -print-boolean-4504-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4504-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4505-arg1        
        PushF        6.500000                  
        PushF        3.300000                  
        FMultiply                              
        Label        -compare-4505-arg2        
        PushF        9.600000                  
        PushF        7.900000                  
        FMultiply                              
        Label        -compare-4505-sub         
        FSubtract                              
        JumpFPos     -compare-4505-true        
        Jump         -compare-4505-false       
        Label        -compare-4505-true        
        PushI        1                         
        Jump         -compare-4505-join        
        Label        -compare-4505-false       
        PushI        0                         
        Jump         -compare-4505-join        
        Label        -compare-4505-join        
        JumpTrue     -print-boolean-4506-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4506-join  
        Label        -print-boolean-4506-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4506-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4507-arg1        
        PushF        1.300000                  
        PushF        7.200000                  
        FMultiply                              
        Label        -compare-4507-arg2        
        PushF        6.600000                  
        PushF        9.900000                  
        FMultiply                              
        Label        -compare-4507-sub         
        FSubtract                              
        JumpFPos     -compare-4507-true        
        Jump         -compare-4507-false       
        Label        -compare-4507-true        
        PushI        1                         
        Jump         -compare-4507-join        
        Label        -compare-4507-false       
        PushI        0                         
        Jump         -compare-4507-join        
        Label        -compare-4507-join        
        JumpTrue     -print-boolean-4508-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4508-join  
        Label        -print-boolean-4508-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4508-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4509-arg1        
        PushF        5.500000                  
        PushF        1.800000                  
        FMultiply                              
        Label        -compare-4509-arg2        
        PushF        7.700000                  
        PushF        6.900000                  
        FMultiply                              
        Label        -compare-4509-sub         
        FSubtract                              
        JumpFPos     -compare-4509-true        
        Jump         -compare-4509-false       
        Label        -compare-4509-true        
        PushI        1                         
        Jump         -compare-4509-join        
        Label        -compare-4509-false       
        PushI        0                         
        Jump         -compare-4509-join        
        Label        -compare-4509-join        
        JumpTrue     -print-boolean-4510-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4510-join  
        Label        -print-boolean-4510-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4510-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4511-arg1        
        PushF        9.600000                  
        PushF        5.200000                  
        FMultiply                              
        Label        -compare-4511-arg2        
        PushF        5.000000                  
        PushF        9.100000                  
        FMultiply                              
        Label        -compare-4511-sub         
        FSubtract                              
        JumpFPos     -compare-4511-true        
        Jump         -compare-4511-false       
        Label        -compare-4511-true        
        PushI        1                         
        Jump         -compare-4511-join        
        Label        -compare-4511-false       
        PushI        0                         
        Jump         -compare-4511-join        
        Label        -compare-4511-join        
        JumpTrue     -print-boolean-4512-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4512-join  
        Label        -print-boolean-4512-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4512-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
