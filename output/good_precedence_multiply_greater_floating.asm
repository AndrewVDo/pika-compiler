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
        Label        -compare-4454-arg1        
        PushF        9.300000                  
        PushF        8.800000                  
        FMultiply                              
        Label        -compare-4454-arg2        
        PushF        7.100000                  
        Label        -compare-4454-sub         
        FSubtract                              
        JumpFPos     -compare-4454-true        
        Jump         -compare-4454-false       
        Label        -compare-4454-true        
        PushI        1                         
        Jump         -compare-4454-join        
        Label        -compare-4454-false       
        PushI        0                         
        Jump         -compare-4454-join        
        Label        -compare-4454-join        
        JumpTrue     -print-boolean-4455-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4455-join  
        Label        -print-boolean-4455-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4455-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4456-arg1        
        PushF        8.400000                  
        PushF        3.200000                  
        FMultiply                              
        Label        -compare-4456-arg2        
        PushF        7.800000                  
        Label        -compare-4456-sub         
        FSubtract                              
        JumpFPos     -compare-4456-true        
        Jump         -compare-4456-false       
        Label        -compare-4456-true        
        PushI        1                         
        Jump         -compare-4456-join        
        Label        -compare-4456-false       
        PushI        0                         
        Jump         -compare-4456-join        
        Label        -compare-4456-join        
        JumpTrue     -print-boolean-4457-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4457-join  
        Label        -print-boolean-4457-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4457-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4458-arg1        
        PushF        6.300000                  
        PushF        9.800000                  
        FMultiply                              
        Label        -compare-4458-arg2        
        PushF        3.700000                  
        Label        -compare-4458-sub         
        FSubtract                              
        JumpFPos     -compare-4458-true        
        Jump         -compare-4458-false       
        Label        -compare-4458-true        
        PushI        1                         
        Jump         -compare-4458-join        
        Label        -compare-4458-false       
        PushI        0                         
        Jump         -compare-4458-join        
        Label        -compare-4458-join        
        JumpTrue     -print-boolean-4459-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4459-join  
        Label        -print-boolean-4459-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4459-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4460-arg1        
        PushF        1.300000                  
        PushF        9.800000                  
        FMultiply                              
        Label        -compare-4460-arg2        
        PushF        3.000000                  
        Label        -compare-4460-sub         
        FSubtract                              
        JumpFPos     -compare-4460-true        
        Jump         -compare-4460-false       
        Label        -compare-4460-true        
        PushI        1                         
        Jump         -compare-4460-join        
        Label        -compare-4460-false       
        PushI        0                         
        Jump         -compare-4460-join        
        Label        -compare-4460-join        
        JumpTrue     -print-boolean-4461-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4461-join  
        Label        -print-boolean-4461-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4461-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4462-arg1        
        PushF        5.700000                  
        PushF        4.900000                  
        FMultiply                              
        Label        -compare-4462-arg2        
        PushF        4.800000                  
        Label        -compare-4462-sub         
        FSubtract                              
        JumpFPos     -compare-4462-true        
        Jump         -compare-4462-false       
        Label        -compare-4462-true        
        PushI        1                         
        Jump         -compare-4462-join        
        Label        -compare-4462-false       
        PushI        0                         
        Jump         -compare-4462-join        
        Label        -compare-4462-join        
        JumpTrue     -print-boolean-4463-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4463-join  
        Label        -print-boolean-4463-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4463-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4464-arg1        
        PushF        6.700000                  
        PushF        9.900000                  
        FMultiply                              
        Label        -compare-4464-arg2        
        PushF        5.400000                  
        Label        -compare-4464-sub         
        FSubtract                              
        JumpFPos     -compare-4464-true        
        Jump         -compare-4464-false       
        Label        -compare-4464-true        
        PushI        1                         
        Jump         -compare-4464-join        
        Label        -compare-4464-false       
        PushI        0                         
        Jump         -compare-4464-join        
        Label        -compare-4464-join        
        JumpTrue     -print-boolean-4465-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4465-join  
        Label        -print-boolean-4465-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4465-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4466-arg1        
        PushF        1.700000                  
        PushF        4.600000                  
        FMultiply                              
        Label        -compare-4466-arg2        
        PushF        5.600000                  
        Label        -compare-4466-sub         
        FSubtract                              
        JumpFPos     -compare-4466-true        
        Jump         -compare-4466-false       
        Label        -compare-4466-true        
        PushI        1                         
        Jump         -compare-4466-join        
        Label        -compare-4466-false       
        PushI        0                         
        Jump         -compare-4466-join        
        Label        -compare-4466-join        
        JumpTrue     -print-boolean-4467-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4467-join  
        Label        -print-boolean-4467-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4467-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4468-arg1        
        PushF        1.500000                  
        PushF        8.700000                  
        FMultiply                              
        Label        -compare-4468-arg2        
        PushF        6.500000                  
        Label        -compare-4468-sub         
        FSubtract                              
        JumpFPos     -compare-4468-true        
        Jump         -compare-4468-false       
        Label        -compare-4468-true        
        PushI        1                         
        Jump         -compare-4468-join        
        Label        -compare-4468-false       
        PushI        0                         
        Jump         -compare-4468-join        
        Label        -compare-4468-join        
        JumpTrue     -print-boolean-4469-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4469-join  
        Label        -print-boolean-4469-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4469-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4470-arg1        
        PushF        1.200000                  
        PushF        7.400000                  
        FMultiply                              
        Label        -compare-4470-arg2        
        PushF        7.000000                  
        Label        -compare-4470-sub         
        FSubtract                              
        JumpFPos     -compare-4470-true        
        Jump         -compare-4470-false       
        Label        -compare-4470-true        
        PushI        1                         
        Jump         -compare-4470-join        
        Label        -compare-4470-false       
        PushI        0                         
        Jump         -compare-4470-join        
        Label        -compare-4470-join        
        JumpTrue     -print-boolean-4471-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4471-join  
        Label        -print-boolean-4471-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4471-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4472-arg1        
        PushF        5.700000                  
        PushF        1.800000                  
        FMultiply                              
        Label        -compare-4472-arg2        
        PushF        3.600000                  
        Label        -compare-4472-sub         
        FSubtract                              
        JumpFPos     -compare-4472-true        
        Jump         -compare-4472-false       
        Label        -compare-4472-true        
        PushI        1                         
        Jump         -compare-4472-join        
        Label        -compare-4472-false       
        PushI        0                         
        Jump         -compare-4472-join        
        Label        -compare-4472-join        
        JumpTrue     -print-boolean-4473-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4473-join  
        Label        -print-boolean-4473-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4473-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4474-arg1        
        PushF        3.400000                  
        PushF        2.300000                  
        FMultiply                              
        Label        -compare-4474-arg2        
        PushF        1.800000                  
        Label        -compare-4474-sub         
        FSubtract                              
        JumpFPos     -compare-4474-true        
        Jump         -compare-4474-false       
        Label        -compare-4474-true        
        PushI        1                         
        Jump         -compare-4474-join        
        Label        -compare-4474-false       
        PushI        0                         
        Jump         -compare-4474-join        
        Label        -compare-4474-join        
        JumpTrue     -print-boolean-4475-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4475-join  
        Label        -print-boolean-4475-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4475-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4476-arg1        
        PushF        9.500000                  
        PushF        2.900000                  
        FMultiply                              
        Label        -compare-4476-arg2        
        PushF        5.600000                  
        Label        -compare-4476-sub         
        FSubtract                              
        JumpFPos     -compare-4476-true        
        Jump         -compare-4476-false       
        Label        -compare-4476-true        
        PushI        1                         
        Jump         -compare-4476-join        
        Label        -compare-4476-false       
        PushI        0                         
        Jump         -compare-4476-join        
        Label        -compare-4476-join        
        JumpTrue     -print-boolean-4477-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4477-join  
        Label        -print-boolean-4477-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4477-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4478-arg1        
        PushF        5.400000                  
        Label        -compare-4478-arg2        
        PushF        6.000000                  
        PushF        5.100000                  
        FMultiply                              
        Label        -compare-4478-sub         
        FSubtract                              
        JumpFPos     -compare-4478-true        
        Jump         -compare-4478-false       
        Label        -compare-4478-true        
        PushI        1                         
        Jump         -compare-4478-join        
        Label        -compare-4478-false       
        PushI        0                         
        Jump         -compare-4478-join        
        Label        -compare-4478-join        
        JumpTrue     -print-boolean-4479-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4479-join  
        Label        -print-boolean-4479-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4479-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4480-arg1        
        PushF        8.800000                  
        Label        -compare-4480-arg2        
        PushF        5.700000                  
        PushF        9.400000                  
        FMultiply                              
        Label        -compare-4480-sub         
        FSubtract                              
        JumpFPos     -compare-4480-true        
        Jump         -compare-4480-false       
        Label        -compare-4480-true        
        PushI        1                         
        Jump         -compare-4480-join        
        Label        -compare-4480-false       
        PushI        0                         
        Jump         -compare-4480-join        
        Label        -compare-4480-join        
        JumpTrue     -print-boolean-4481-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4481-join  
        Label        -print-boolean-4481-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4481-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4482-arg1        
        PushF        9.400000                  
        Label        -compare-4482-arg2        
        PushF        8.300000                  
        PushF        3.600000                  
        FMultiply                              
        Label        -compare-4482-sub         
        FSubtract                              
        JumpFPos     -compare-4482-true        
        Jump         -compare-4482-false       
        Label        -compare-4482-true        
        PushI        1                         
        Jump         -compare-4482-join        
        Label        -compare-4482-false       
        PushI        0                         
        Jump         -compare-4482-join        
        Label        -compare-4482-join        
        JumpTrue     -print-boolean-4483-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4483-join  
        Label        -print-boolean-4483-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4483-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4484-arg1        
        PushF        3.100000                  
        Label        -compare-4484-arg2        
        PushF        8.900000                  
        PushF        9.700000                  
        FMultiply                              
        Label        -compare-4484-sub         
        FSubtract                              
        JumpFPos     -compare-4484-true        
        Jump         -compare-4484-false       
        Label        -compare-4484-true        
        PushI        1                         
        Jump         -compare-4484-join        
        Label        -compare-4484-false       
        PushI        0                         
        Jump         -compare-4484-join        
        Label        -compare-4484-join        
        JumpTrue     -print-boolean-4485-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4485-join  
        Label        -print-boolean-4485-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4485-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4486-arg1        
        PushF        3.100000                  
        Label        -compare-4486-arg2        
        PushF        5.800000                  
        PushF        1.300000                  
        FMultiply                              
        Label        -compare-4486-sub         
        FSubtract                              
        JumpFPos     -compare-4486-true        
        Jump         -compare-4486-false       
        Label        -compare-4486-true        
        PushI        1                         
        Jump         -compare-4486-join        
        Label        -compare-4486-false       
        PushI        0                         
        Jump         -compare-4486-join        
        Label        -compare-4486-join        
        JumpTrue     -print-boolean-4487-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4487-join  
        Label        -print-boolean-4487-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4487-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4488-arg1        
        PushF        4.000000                  
        Label        -compare-4488-arg2        
        PushF        6.300000                  
        PushF        2.200000                  
        FMultiply                              
        Label        -compare-4488-sub         
        FSubtract                              
        JumpFPos     -compare-4488-true        
        Jump         -compare-4488-false       
        Label        -compare-4488-true        
        PushI        1                         
        Jump         -compare-4488-join        
        Label        -compare-4488-false       
        PushI        0                         
        Jump         -compare-4488-join        
        Label        -compare-4488-join        
        JumpTrue     -print-boolean-4489-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4489-join  
        Label        -print-boolean-4489-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4489-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4490-arg1        
        PushF        9.100000                  
        Label        -compare-4490-arg2        
        PushF        5.200000                  
        PushF        4.700000                  
        FMultiply                              
        Label        -compare-4490-sub         
        FSubtract                              
        JumpFPos     -compare-4490-true        
        Jump         -compare-4490-false       
        Label        -compare-4490-true        
        PushI        1                         
        Jump         -compare-4490-join        
        Label        -compare-4490-false       
        PushI        0                         
        Jump         -compare-4490-join        
        Label        -compare-4490-join        
        JumpTrue     -print-boolean-4491-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4491-join  
        Label        -print-boolean-4491-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4491-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4492-arg1        
        PushF        2.600000                  
        Label        -compare-4492-arg2        
        PushF        8.200000                  
        PushF        4.600000                  
        FMultiply                              
        Label        -compare-4492-sub         
        FSubtract                              
        JumpFPos     -compare-4492-true        
        Jump         -compare-4492-false       
        Label        -compare-4492-true        
        PushI        1                         
        Jump         -compare-4492-join        
        Label        -compare-4492-false       
        PushI        0                         
        Jump         -compare-4492-join        
        Label        -compare-4492-join        
        JumpTrue     -print-boolean-4493-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4493-join  
        Label        -print-boolean-4493-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4493-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4494-arg1        
        PushF        9.500000                  
        Label        -compare-4494-arg2        
        PushF        1.100000                  
        PushF        3.000000                  
        FMultiply                              
        Label        -compare-4494-sub         
        FSubtract                              
        JumpFPos     -compare-4494-true        
        Jump         -compare-4494-false       
        Label        -compare-4494-true        
        PushI        1                         
        Jump         -compare-4494-join        
        Label        -compare-4494-false       
        PushI        0                         
        Jump         -compare-4494-join        
        Label        -compare-4494-join        
        JumpTrue     -print-boolean-4495-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4495-join  
        Label        -print-boolean-4495-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4495-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4496-arg1        
        PushF        2.500000                  
        Label        -compare-4496-arg2        
        PushF        5.200000                  
        PushF        4.800000                  
        FMultiply                              
        Label        -compare-4496-sub         
        FSubtract                              
        JumpFPos     -compare-4496-true        
        Jump         -compare-4496-false       
        Label        -compare-4496-true        
        PushI        1                         
        Jump         -compare-4496-join        
        Label        -compare-4496-false       
        PushI        0                         
        Jump         -compare-4496-join        
        Label        -compare-4496-join        
        JumpTrue     -print-boolean-4497-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4497-join  
        Label        -print-boolean-4497-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4497-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4498-arg1        
        PushF        1.500000                  
        Label        -compare-4498-arg2        
        PushF        8.800000                  
        PushF        3.200000                  
        FMultiply                              
        Label        -compare-4498-sub         
        FSubtract                              
        JumpFPos     -compare-4498-true        
        Jump         -compare-4498-false       
        Label        -compare-4498-true        
        PushI        1                         
        Jump         -compare-4498-join        
        Label        -compare-4498-false       
        PushI        0                         
        Jump         -compare-4498-join        
        Label        -compare-4498-join        
        JumpTrue     -print-boolean-4499-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4499-join  
        Label        -print-boolean-4499-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4499-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4500-arg1        
        PushF        2.300000                  
        Label        -compare-4500-arg2        
        PushF        5.100000                  
        PushF        6.600000                  
        FMultiply                              
        Label        -compare-4500-sub         
        FSubtract                              
        JumpFPos     -compare-4500-true        
        Jump         -compare-4500-false       
        Label        -compare-4500-true        
        PushI        1                         
        Jump         -compare-4500-join        
        Label        -compare-4500-false       
        PushI        0                         
        Jump         -compare-4500-join        
        Label        -compare-4500-join        
        JumpTrue     -print-boolean-4501-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4501-join  
        Label        -print-boolean-4501-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4501-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4502-arg1        
        PushF        1.600000                  
        PushF        7.900000                  
        FMultiply                              
        Label        -compare-4502-arg2        
        PushF        2.600000                  
        PushF        8.000000                  
        FMultiply                              
        Label        -compare-4502-sub         
        FSubtract                              
        JumpFPos     -compare-4502-true        
        Jump         -compare-4502-false       
        Label        -compare-4502-true        
        PushI        1                         
        Jump         -compare-4502-join        
        Label        -compare-4502-false       
        PushI        0                         
        Jump         -compare-4502-join        
        Label        -compare-4502-join        
        JumpTrue     -print-boolean-4503-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4503-join  
        Label        -print-boolean-4503-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4503-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4504-arg1        
        PushF        7.200000                  
        PushF        4.900000                  
        FMultiply                              
        Label        -compare-4504-arg2        
        PushF        2.700000                  
        PushF        6.200000                  
        FMultiply                              
        Label        -compare-4504-sub         
        FSubtract                              
        JumpFPos     -compare-4504-true        
        Jump         -compare-4504-false       
        Label        -compare-4504-true        
        PushI        1                         
        Jump         -compare-4504-join        
        Label        -compare-4504-false       
        PushI        0                         
        Jump         -compare-4504-join        
        Label        -compare-4504-join        
        JumpTrue     -print-boolean-4505-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4505-join  
        Label        -print-boolean-4505-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4505-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4506-arg1        
        PushF        7.400000                  
        PushF        9.200000                  
        FMultiply                              
        Label        -compare-4506-arg2        
        PushF        9.200000                  
        PushF        9.600000                  
        FMultiply                              
        Label        -compare-4506-sub         
        FSubtract                              
        JumpFPos     -compare-4506-true        
        Jump         -compare-4506-false       
        Label        -compare-4506-true        
        PushI        1                         
        Jump         -compare-4506-join        
        Label        -compare-4506-false       
        PushI        0                         
        Jump         -compare-4506-join        
        Label        -compare-4506-join        
        JumpTrue     -print-boolean-4507-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4507-join  
        Label        -print-boolean-4507-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4507-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4508-arg1        
        PushF        4.100000                  
        PushF        2.600000                  
        FMultiply                              
        Label        -compare-4508-arg2        
        PushF        4.800000                  
        PushF        3.800000                  
        FMultiply                              
        Label        -compare-4508-sub         
        FSubtract                              
        JumpFPos     -compare-4508-true        
        Jump         -compare-4508-false       
        Label        -compare-4508-true        
        PushI        1                         
        Jump         -compare-4508-join        
        Label        -compare-4508-false       
        PushI        0                         
        Jump         -compare-4508-join        
        Label        -compare-4508-join        
        JumpTrue     -print-boolean-4509-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4509-join  
        Label        -print-boolean-4509-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4509-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4510-arg1        
        PushF        1.500000                  
        PushF        5.000000                  
        FMultiply                              
        Label        -compare-4510-arg2        
        PushF        3.400000                  
        PushF        2.200000                  
        FMultiply                              
        Label        -compare-4510-sub         
        FSubtract                              
        JumpFPos     -compare-4510-true        
        Jump         -compare-4510-false       
        Label        -compare-4510-true        
        PushI        1                         
        Jump         -compare-4510-join        
        Label        -compare-4510-false       
        PushI        0                         
        Jump         -compare-4510-join        
        Label        -compare-4510-join        
        JumpTrue     -print-boolean-4511-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4511-join  
        Label        -print-boolean-4511-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4511-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4512-arg1        
        PushF        6.900000                  
        PushF        4.400000                  
        FMultiply                              
        Label        -compare-4512-arg2        
        PushF        8.600000                  
        PushF        8.400000                  
        FMultiply                              
        Label        -compare-4512-sub         
        FSubtract                              
        JumpFPos     -compare-4512-true        
        Jump         -compare-4512-false       
        Label        -compare-4512-true        
        PushI        1                         
        Jump         -compare-4512-join        
        Label        -compare-4512-false       
        PushI        0                         
        Jump         -compare-4512-join        
        Label        -compare-4512-join        
        JumpTrue     -print-boolean-4513-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4513-join  
        Label        -print-boolean-4513-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4513-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4514-arg1        
        PushF        4.300000                  
        PushF        5.500000                  
        FMultiply                              
        Label        -compare-4514-arg2        
        PushF        8.800000                  
        PushF        6.000000                  
        FMultiply                              
        Label        -compare-4514-sub         
        FSubtract                              
        JumpFPos     -compare-4514-true        
        Jump         -compare-4514-false       
        Label        -compare-4514-true        
        PushI        1                         
        Jump         -compare-4514-join        
        Label        -compare-4514-false       
        PushI        0                         
        Jump         -compare-4514-join        
        Label        -compare-4514-join        
        JumpTrue     -print-boolean-4515-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4515-join  
        Label        -print-boolean-4515-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4515-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4516-arg1        
        PushF        2.300000                  
        PushF        9.600000                  
        FMultiply                              
        Label        -compare-4516-arg2        
        PushF        9.900000                  
        PushF        9.100000                  
        FMultiply                              
        Label        -compare-4516-sub         
        FSubtract                              
        JumpFPos     -compare-4516-true        
        Jump         -compare-4516-false       
        Label        -compare-4516-true        
        PushI        1                         
        Jump         -compare-4516-join        
        Label        -compare-4516-false       
        PushI        0                         
        Jump         -compare-4516-join        
        Label        -compare-4516-join        
        JumpTrue     -print-boolean-4517-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4517-join  
        Label        -print-boolean-4517-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4517-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4518-arg1        
        PushF        6.500000                  
        PushF        3.300000                  
        FMultiply                              
        Label        -compare-4518-arg2        
        PushF        9.600000                  
        PushF        7.900000                  
        FMultiply                              
        Label        -compare-4518-sub         
        FSubtract                              
        JumpFPos     -compare-4518-true        
        Jump         -compare-4518-false       
        Label        -compare-4518-true        
        PushI        1                         
        Jump         -compare-4518-join        
        Label        -compare-4518-false       
        PushI        0                         
        Jump         -compare-4518-join        
        Label        -compare-4518-join        
        JumpTrue     -print-boolean-4519-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4519-join  
        Label        -print-boolean-4519-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4519-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4520-arg1        
        PushF        1.300000                  
        PushF        7.200000                  
        FMultiply                              
        Label        -compare-4520-arg2        
        PushF        6.600000                  
        PushF        9.900000                  
        FMultiply                              
        Label        -compare-4520-sub         
        FSubtract                              
        JumpFPos     -compare-4520-true        
        Jump         -compare-4520-false       
        Label        -compare-4520-true        
        PushI        1                         
        Jump         -compare-4520-join        
        Label        -compare-4520-false       
        PushI        0                         
        Jump         -compare-4520-join        
        Label        -compare-4520-join        
        JumpTrue     -print-boolean-4521-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4521-join  
        Label        -print-boolean-4521-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4521-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4522-arg1        
        PushF        5.500000                  
        PushF        1.800000                  
        FMultiply                              
        Label        -compare-4522-arg2        
        PushF        7.700000                  
        PushF        6.900000                  
        FMultiply                              
        Label        -compare-4522-sub         
        FSubtract                              
        JumpFPos     -compare-4522-true        
        Jump         -compare-4522-false       
        Label        -compare-4522-true        
        PushI        1                         
        Jump         -compare-4522-join        
        Label        -compare-4522-false       
        PushI        0                         
        Jump         -compare-4522-join        
        Label        -compare-4522-join        
        JumpTrue     -print-boolean-4523-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4523-join  
        Label        -print-boolean-4523-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4523-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4524-arg1        
        PushF        9.600000                  
        PushF        5.200000                  
        FMultiply                              
        Label        -compare-4524-arg2        
        PushF        5.000000                  
        PushF        9.100000                  
        FMultiply                              
        Label        -compare-4524-sub         
        FSubtract                              
        JumpFPos     -compare-4524-true        
        Jump         -compare-4524-false       
        Label        -compare-4524-true        
        PushI        1                         
        Jump         -compare-4524-join        
        Label        -compare-4524-false       
        PushI        0                         
        Jump         -compare-4524-join        
        Label        -compare-4524-join        
        JumpTrue     -print-boolean-4525-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4525-join  
        Label        -print-boolean-4525-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4525-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
