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
        Label        -compare-4310-arg1        
        PushF        3.200000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-4310-arg2        
        PushF        8.600000                  
        Label        -compare-4310-sub         
        FSubtract                              
        JumpFZero    -compare-4310-true        
        Jump         -compare-4310-false       
        Label        -compare-4310-true        
        PushI        1                         
        Jump         -compare-4310-join        
        Label        -compare-4310-false       
        PushI        0                         
        Jump         -compare-4310-join        
        Label        -compare-4310-join        
        JumpTrue     -print-boolean-4311-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4311-join  
        Label        -print-boolean-4311-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4311-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4312-arg1        
        PushF        6.800000                  
        PushF        3.200000                  
        FMultiply                              
        Label        -compare-4312-arg2        
        PushF        7.000000                  
        Label        -compare-4312-sub         
        FSubtract                              
        JumpFZero    -compare-4312-true        
        Jump         -compare-4312-false       
        Label        -compare-4312-true        
        PushI        1                         
        Jump         -compare-4312-join        
        Label        -compare-4312-false       
        PushI        0                         
        Jump         -compare-4312-join        
        Label        -compare-4312-join        
        JumpTrue     -print-boolean-4313-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4313-join  
        Label        -print-boolean-4313-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4313-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4314-arg1        
        PushF        9.400000                  
        PushF        8.500000                  
        FMultiply                              
        Label        -compare-4314-arg2        
        PushF        6.700000                  
        Label        -compare-4314-sub         
        FSubtract                              
        JumpFZero    -compare-4314-true        
        Jump         -compare-4314-false       
        Label        -compare-4314-true        
        PushI        1                         
        Jump         -compare-4314-join        
        Label        -compare-4314-false       
        PushI        0                         
        Jump         -compare-4314-join        
        Label        -compare-4314-join        
        JumpTrue     -print-boolean-4315-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4315-join  
        Label        -print-boolean-4315-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4315-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4316-arg1        
        PushF        8.800000                  
        PushF        4.000000                  
        FMultiply                              
        Label        -compare-4316-arg2        
        PushF        6.200000                  
        Label        -compare-4316-sub         
        FSubtract                              
        JumpFZero    -compare-4316-true        
        Jump         -compare-4316-false       
        Label        -compare-4316-true        
        PushI        1                         
        Jump         -compare-4316-join        
        Label        -compare-4316-false       
        PushI        0                         
        Jump         -compare-4316-join        
        Label        -compare-4316-join        
        JumpTrue     -print-boolean-4317-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4317-join  
        Label        -print-boolean-4317-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4317-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4318-arg1        
        PushF        5.800000                  
        PushF        3.500000                  
        FMultiply                              
        Label        -compare-4318-arg2        
        PushF        9.500000                  
        Label        -compare-4318-sub         
        FSubtract                              
        JumpFZero    -compare-4318-true        
        Jump         -compare-4318-false       
        Label        -compare-4318-true        
        PushI        1                         
        Jump         -compare-4318-join        
        Label        -compare-4318-false       
        PushI        0                         
        Jump         -compare-4318-join        
        Label        -compare-4318-join        
        JumpTrue     -print-boolean-4319-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4319-join  
        Label        -print-boolean-4319-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4319-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4320-arg1        
        PushF        7.900000                  
        PushF        1.900000                  
        FMultiply                              
        Label        -compare-4320-arg2        
        PushF        1.700000                  
        Label        -compare-4320-sub         
        FSubtract                              
        JumpFZero    -compare-4320-true        
        Jump         -compare-4320-false       
        Label        -compare-4320-true        
        PushI        1                         
        Jump         -compare-4320-join        
        Label        -compare-4320-false       
        PushI        0                         
        Jump         -compare-4320-join        
        Label        -compare-4320-join        
        JumpTrue     -print-boolean-4321-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4321-join  
        Label        -print-boolean-4321-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4321-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4322-arg1        
        PushF        6.100000                  
        PushF        6.000000                  
        FMultiply                              
        Label        -compare-4322-arg2        
        PushF        7.300000                  
        Label        -compare-4322-sub         
        FSubtract                              
        JumpFZero    -compare-4322-true        
        Jump         -compare-4322-false       
        Label        -compare-4322-true        
        PushI        1                         
        Jump         -compare-4322-join        
        Label        -compare-4322-false       
        PushI        0                         
        Jump         -compare-4322-join        
        Label        -compare-4322-join        
        JumpTrue     -print-boolean-4323-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4323-join  
        Label        -print-boolean-4323-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4323-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4324-arg1        
        PushF        6.300000                  
        PushF        3.500000                  
        FMultiply                              
        Label        -compare-4324-arg2        
        PushF        1.000000                  
        Label        -compare-4324-sub         
        FSubtract                              
        JumpFZero    -compare-4324-true        
        Jump         -compare-4324-false       
        Label        -compare-4324-true        
        PushI        1                         
        Jump         -compare-4324-join        
        Label        -compare-4324-false       
        PushI        0                         
        Jump         -compare-4324-join        
        Label        -compare-4324-join        
        JumpTrue     -print-boolean-4325-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4325-join  
        Label        -print-boolean-4325-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4325-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4326-arg1        
        PushF        9.400000                  
        PushF        9.800000                  
        FMultiply                              
        Label        -compare-4326-arg2        
        PushF        4.400000                  
        Label        -compare-4326-sub         
        FSubtract                              
        JumpFZero    -compare-4326-true        
        Jump         -compare-4326-false       
        Label        -compare-4326-true        
        PushI        1                         
        Jump         -compare-4326-join        
        Label        -compare-4326-false       
        PushI        0                         
        Jump         -compare-4326-join        
        Label        -compare-4326-join        
        JumpTrue     -print-boolean-4327-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4327-join  
        Label        -print-boolean-4327-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4327-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4328-arg1        
        PushF        5.800000                  
        PushF        4.000000                  
        FMultiply                              
        Label        -compare-4328-arg2        
        PushF        2.600000                  
        Label        -compare-4328-sub         
        FSubtract                              
        JumpFZero    -compare-4328-true        
        Jump         -compare-4328-false       
        Label        -compare-4328-true        
        PushI        1                         
        Jump         -compare-4328-join        
        Label        -compare-4328-false       
        PushI        0                         
        Jump         -compare-4328-join        
        Label        -compare-4328-join        
        JumpTrue     -print-boolean-4329-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4329-join  
        Label        -print-boolean-4329-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4329-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4330-arg1        
        PushF        7.000000                  
        PushF        5.400000                  
        FMultiply                              
        Label        -compare-4330-arg2        
        PushF        1.500000                  
        Label        -compare-4330-sub         
        FSubtract                              
        JumpFZero    -compare-4330-true        
        Jump         -compare-4330-false       
        Label        -compare-4330-true        
        PushI        1                         
        Jump         -compare-4330-join        
        Label        -compare-4330-false       
        PushI        0                         
        Jump         -compare-4330-join        
        Label        -compare-4330-join        
        JumpTrue     -print-boolean-4331-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4331-join  
        Label        -print-boolean-4331-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4331-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4332-arg1        
        PushF        5.700000                  
        PushF        5.800000                  
        FMultiply                              
        Label        -compare-4332-arg2        
        PushF        9.500000                  
        Label        -compare-4332-sub         
        FSubtract                              
        JumpFZero    -compare-4332-true        
        Jump         -compare-4332-false       
        Label        -compare-4332-true        
        PushI        1                         
        Jump         -compare-4332-join        
        Label        -compare-4332-false       
        PushI        0                         
        Jump         -compare-4332-join        
        Label        -compare-4332-join        
        JumpTrue     -print-boolean-4333-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4333-join  
        Label        -print-boolean-4333-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4333-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4334-arg1        
        PushF        7.700000                  
        Label        -compare-4334-arg2        
        PushF        7.600000                  
        PushF        1.900000                  
        FMultiply                              
        Label        -compare-4334-sub         
        FSubtract                              
        JumpFZero    -compare-4334-true        
        Jump         -compare-4334-false       
        Label        -compare-4334-true        
        PushI        1                         
        Jump         -compare-4334-join        
        Label        -compare-4334-false       
        PushI        0                         
        Jump         -compare-4334-join        
        Label        -compare-4334-join        
        JumpTrue     -print-boolean-4335-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4335-join  
        Label        -print-boolean-4335-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4335-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4336-arg1        
        PushF        3.400000                  
        Label        -compare-4336-arg2        
        PushF        9.800000                  
        PushF        2.100000                  
        FMultiply                              
        Label        -compare-4336-sub         
        FSubtract                              
        JumpFZero    -compare-4336-true        
        Jump         -compare-4336-false       
        Label        -compare-4336-true        
        PushI        1                         
        Jump         -compare-4336-join        
        Label        -compare-4336-false       
        PushI        0                         
        Jump         -compare-4336-join        
        Label        -compare-4336-join        
        JumpTrue     -print-boolean-4337-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4337-join  
        Label        -print-boolean-4337-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4337-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4338-arg1        
        PushF        3.600000                  
        Label        -compare-4338-arg2        
        PushF        1.000000                  
        PushF        4.100000                  
        FMultiply                              
        Label        -compare-4338-sub         
        FSubtract                              
        JumpFZero    -compare-4338-true        
        Jump         -compare-4338-false       
        Label        -compare-4338-true        
        PushI        1                         
        Jump         -compare-4338-join        
        Label        -compare-4338-false       
        PushI        0                         
        Jump         -compare-4338-join        
        Label        -compare-4338-join        
        JumpTrue     -print-boolean-4339-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4339-join  
        Label        -print-boolean-4339-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4339-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4340-arg1        
        PushF        1.300000                  
        Label        -compare-4340-arg2        
        PushF        1.000000                  
        PushF        1.600000                  
        FMultiply                              
        Label        -compare-4340-sub         
        FSubtract                              
        JumpFZero    -compare-4340-true        
        Jump         -compare-4340-false       
        Label        -compare-4340-true        
        PushI        1                         
        Jump         -compare-4340-join        
        Label        -compare-4340-false       
        PushI        0                         
        Jump         -compare-4340-join        
        Label        -compare-4340-join        
        JumpTrue     -print-boolean-4341-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4341-join  
        Label        -print-boolean-4341-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4341-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4342-arg1        
        PushF        8.400000                  
        Label        -compare-4342-arg2        
        PushF        9.900000                  
        PushF        3.300000                  
        FMultiply                              
        Label        -compare-4342-sub         
        FSubtract                              
        JumpFZero    -compare-4342-true        
        Jump         -compare-4342-false       
        Label        -compare-4342-true        
        PushI        1                         
        Jump         -compare-4342-join        
        Label        -compare-4342-false       
        PushI        0                         
        Jump         -compare-4342-join        
        Label        -compare-4342-join        
        JumpTrue     -print-boolean-4343-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4343-join  
        Label        -print-boolean-4343-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4343-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4344-arg1        
        PushF        7.500000                  
        Label        -compare-4344-arg2        
        PushF        1.000000                  
        PushF        5.000000                  
        FMultiply                              
        Label        -compare-4344-sub         
        FSubtract                              
        JumpFZero    -compare-4344-true        
        Jump         -compare-4344-false       
        Label        -compare-4344-true        
        PushI        1                         
        Jump         -compare-4344-join        
        Label        -compare-4344-false       
        PushI        0                         
        Jump         -compare-4344-join        
        Label        -compare-4344-join        
        JumpTrue     -print-boolean-4345-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4345-join  
        Label        -print-boolean-4345-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4345-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4346-arg1        
        PushF        6.000000                  
        Label        -compare-4346-arg2        
        PushF        9.100000                  
        PushF        3.800000                  
        FMultiply                              
        Label        -compare-4346-sub         
        FSubtract                              
        JumpFZero    -compare-4346-true        
        Jump         -compare-4346-false       
        Label        -compare-4346-true        
        PushI        1                         
        Jump         -compare-4346-join        
        Label        -compare-4346-false       
        PushI        0                         
        Jump         -compare-4346-join        
        Label        -compare-4346-join        
        JumpTrue     -print-boolean-4347-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4347-join  
        Label        -print-boolean-4347-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4347-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4348-arg1        
        PushF        6.600000                  
        Label        -compare-4348-arg2        
        PushF        6.400000                  
        PushF        5.800000                  
        FMultiply                              
        Label        -compare-4348-sub         
        FSubtract                              
        JumpFZero    -compare-4348-true        
        Jump         -compare-4348-false       
        Label        -compare-4348-true        
        PushI        1                         
        Jump         -compare-4348-join        
        Label        -compare-4348-false       
        PushI        0                         
        Jump         -compare-4348-join        
        Label        -compare-4348-join        
        JumpTrue     -print-boolean-4349-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4349-join  
        Label        -print-boolean-4349-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4349-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4350-arg1        
        PushF        7.600000                  
        Label        -compare-4350-arg2        
        PushF        6.300000                  
        PushF        2.600000                  
        FMultiply                              
        Label        -compare-4350-sub         
        FSubtract                              
        JumpFZero    -compare-4350-true        
        Jump         -compare-4350-false       
        Label        -compare-4350-true        
        PushI        1                         
        Jump         -compare-4350-join        
        Label        -compare-4350-false       
        PushI        0                         
        Jump         -compare-4350-join        
        Label        -compare-4350-join        
        JumpTrue     -print-boolean-4351-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4351-join  
        Label        -print-boolean-4351-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4351-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4352-arg1        
        PushF        3.700000                  
        Label        -compare-4352-arg2        
        PushF        3.600000                  
        PushF        4.200000                  
        FMultiply                              
        Label        -compare-4352-sub         
        FSubtract                              
        JumpFZero    -compare-4352-true        
        Jump         -compare-4352-false       
        Label        -compare-4352-true        
        PushI        1                         
        Jump         -compare-4352-join        
        Label        -compare-4352-false       
        PushI        0                         
        Jump         -compare-4352-join        
        Label        -compare-4352-join        
        JumpTrue     -print-boolean-4353-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4353-join  
        Label        -print-boolean-4353-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4353-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4354-arg1        
        PushF        7.300000                  
        Label        -compare-4354-arg2        
        PushF        3.000000                  
        PushF        5.500000                  
        FMultiply                              
        Label        -compare-4354-sub         
        FSubtract                              
        JumpFZero    -compare-4354-true        
        Jump         -compare-4354-false       
        Label        -compare-4354-true        
        PushI        1                         
        Jump         -compare-4354-join        
        Label        -compare-4354-false       
        PushI        0                         
        Jump         -compare-4354-join        
        Label        -compare-4354-join        
        JumpTrue     -print-boolean-4355-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4355-join  
        Label        -print-boolean-4355-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4355-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4356-arg1        
        PushF        3.500000                  
        Label        -compare-4356-arg2        
        PushF        3.400000                  
        PushF        2.800000                  
        FMultiply                              
        Label        -compare-4356-sub         
        FSubtract                              
        JumpFZero    -compare-4356-true        
        Jump         -compare-4356-false       
        Label        -compare-4356-true        
        PushI        1                         
        Jump         -compare-4356-join        
        Label        -compare-4356-false       
        PushI        0                         
        Jump         -compare-4356-join        
        Label        -compare-4356-join        
        JumpTrue     -print-boolean-4357-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4357-join  
        Label        -print-boolean-4357-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4357-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4358-arg1        
        PushF        9.200000                  
        PushF        6.100000                  
        FMultiply                              
        Label        -compare-4358-arg2        
        PushF        1.100000                  
        PushF        4.000000                  
        FMultiply                              
        Label        -compare-4358-sub         
        FSubtract                              
        JumpFZero    -compare-4358-true        
        Jump         -compare-4358-false       
        Label        -compare-4358-true        
        PushI        1                         
        Jump         -compare-4358-join        
        Label        -compare-4358-false       
        PushI        0                         
        Jump         -compare-4358-join        
        Label        -compare-4358-join        
        JumpTrue     -print-boolean-4359-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4359-join  
        Label        -print-boolean-4359-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4359-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4360-arg1        
        PushF        4.900000                  
        PushF        2.800000                  
        FMultiply                              
        Label        -compare-4360-arg2        
        PushF        6.500000                  
        PushF        8.300000                  
        FMultiply                              
        Label        -compare-4360-sub         
        FSubtract                              
        JumpFZero    -compare-4360-true        
        Jump         -compare-4360-false       
        Label        -compare-4360-true        
        PushI        1                         
        Jump         -compare-4360-join        
        Label        -compare-4360-false       
        PushI        0                         
        Jump         -compare-4360-join        
        Label        -compare-4360-join        
        JumpTrue     -print-boolean-4361-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4361-join  
        Label        -print-boolean-4361-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4361-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4362-arg1        
        PushF        2.400000                  
        PushF        6.900000                  
        FMultiply                              
        Label        -compare-4362-arg2        
        PushF        2.800000                  
        PushF        8.800000                  
        FMultiply                              
        Label        -compare-4362-sub         
        FSubtract                              
        JumpFZero    -compare-4362-true        
        Jump         -compare-4362-false       
        Label        -compare-4362-true        
        PushI        1                         
        Jump         -compare-4362-join        
        Label        -compare-4362-false       
        PushI        0                         
        Jump         -compare-4362-join        
        Label        -compare-4362-join        
        JumpTrue     -print-boolean-4363-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4363-join  
        Label        -print-boolean-4363-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4363-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4364-arg1        
        PushF        4.200000                  
        PushF        8.200000                  
        FMultiply                              
        Label        -compare-4364-arg2        
        PushF        2.200000                  
        PushF        9.300000                  
        FMultiply                              
        Label        -compare-4364-sub         
        FSubtract                              
        JumpFZero    -compare-4364-true        
        Jump         -compare-4364-false       
        Label        -compare-4364-true        
        PushI        1                         
        Jump         -compare-4364-join        
        Label        -compare-4364-false       
        PushI        0                         
        Jump         -compare-4364-join        
        Label        -compare-4364-join        
        JumpTrue     -print-boolean-4365-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4365-join  
        Label        -print-boolean-4365-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4365-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4366-arg1        
        PushF        2.400000                  
        PushF        5.100000                  
        FMultiply                              
        Label        -compare-4366-arg2        
        PushF        7.600000                  
        PushF        8.900000                  
        FMultiply                              
        Label        -compare-4366-sub         
        FSubtract                              
        JumpFZero    -compare-4366-true        
        Jump         -compare-4366-false       
        Label        -compare-4366-true        
        PushI        1                         
        Jump         -compare-4366-join        
        Label        -compare-4366-false       
        PushI        0                         
        Jump         -compare-4366-join        
        Label        -compare-4366-join        
        JumpTrue     -print-boolean-4367-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4367-join  
        Label        -print-boolean-4367-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4367-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4368-arg1        
        PushF        2.800000                  
        PushF        4.500000                  
        FMultiply                              
        Label        -compare-4368-arg2        
        PushF        5.100000                  
        PushF        2.300000                  
        FMultiply                              
        Label        -compare-4368-sub         
        FSubtract                              
        JumpFZero    -compare-4368-true        
        Jump         -compare-4368-false       
        Label        -compare-4368-true        
        PushI        1                         
        Jump         -compare-4368-join        
        Label        -compare-4368-false       
        PushI        0                         
        Jump         -compare-4368-join        
        Label        -compare-4368-join        
        JumpTrue     -print-boolean-4369-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4369-join  
        Label        -print-boolean-4369-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4369-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4370-arg1        
        PushF        4.400000                  
        PushF        9.300000                  
        FMultiply                              
        Label        -compare-4370-arg2        
        PushF        7.700000                  
        PushF        1.500000                  
        FMultiply                              
        Label        -compare-4370-sub         
        FSubtract                              
        JumpFZero    -compare-4370-true        
        Jump         -compare-4370-false       
        Label        -compare-4370-true        
        PushI        1                         
        Jump         -compare-4370-join        
        Label        -compare-4370-false       
        PushI        0                         
        Jump         -compare-4370-join        
        Label        -compare-4370-join        
        JumpTrue     -print-boolean-4371-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4371-join  
        Label        -print-boolean-4371-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4371-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4372-arg1        
        PushF        8.600000                  
        PushF        5.400000                  
        FMultiply                              
        Label        -compare-4372-arg2        
        PushF        2.400000                  
        PushF        1.900000                  
        FMultiply                              
        Label        -compare-4372-sub         
        FSubtract                              
        JumpFZero    -compare-4372-true        
        Jump         -compare-4372-false       
        Label        -compare-4372-true        
        PushI        1                         
        Jump         -compare-4372-join        
        Label        -compare-4372-false       
        PushI        0                         
        Jump         -compare-4372-join        
        Label        -compare-4372-join        
        JumpTrue     -print-boolean-4373-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4373-join  
        Label        -print-boolean-4373-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4373-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4374-arg1        
        PushF        4.500000                  
        PushF        6.800000                  
        FMultiply                              
        Label        -compare-4374-arg2        
        PushF        7.900000                  
        PushF        4.700000                  
        FMultiply                              
        Label        -compare-4374-sub         
        FSubtract                              
        JumpFZero    -compare-4374-true        
        Jump         -compare-4374-false       
        Label        -compare-4374-true        
        PushI        1                         
        Jump         -compare-4374-join        
        Label        -compare-4374-false       
        PushI        0                         
        Jump         -compare-4374-join        
        Label        -compare-4374-join        
        JumpTrue     -print-boolean-4375-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4375-join  
        Label        -print-boolean-4375-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4375-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4376-arg1        
        PushF        8.900000                  
        PushF        1.000000                  
        FMultiply                              
        Label        -compare-4376-arg2        
        PushF        5.000000                  
        PushF        3.900000                  
        FMultiply                              
        Label        -compare-4376-sub         
        FSubtract                              
        JumpFZero    -compare-4376-true        
        Jump         -compare-4376-false       
        Label        -compare-4376-true        
        PushI        1                         
        Jump         -compare-4376-join        
        Label        -compare-4376-false       
        PushI        0                         
        Jump         -compare-4376-join        
        Label        -compare-4376-join        
        JumpTrue     -print-boolean-4377-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4377-join  
        Label        -print-boolean-4377-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4377-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4378-arg1        
        PushF        5.000000                  
        PushF        3.700000                  
        FMultiply                              
        Label        -compare-4378-arg2        
        PushF        3.300000                  
        PushF        4.000000                  
        FMultiply                              
        Label        -compare-4378-sub         
        FSubtract                              
        JumpFZero    -compare-4378-true        
        Jump         -compare-4378-false       
        Label        -compare-4378-true        
        PushI        1                         
        Jump         -compare-4378-join        
        Label        -compare-4378-false       
        PushI        0                         
        Jump         -compare-4378-join        
        Label        -compare-4378-join        
        JumpTrue     -print-boolean-4379-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4379-join  
        Label        -print-boolean-4379-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4379-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4380-arg1        
        PushF        6.200000                  
        PushF        3.600000                  
        FMultiply                              
        Label        -compare-4380-arg2        
        PushF        6.000000                  
        PushF        4.700000                  
        FMultiply                              
        Label        -compare-4380-sub         
        FSubtract                              
        JumpFZero    -compare-4380-true        
        Jump         -compare-4380-false       
        Label        -compare-4380-true        
        PushI        1                         
        Jump         -compare-4380-join        
        Label        -compare-4380-false       
        PushI        0                         
        Jump         -compare-4380-join        
        Label        -compare-4380-join        
        JumpTrue     -print-boolean-4381-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4381-join  
        Label        -print-boolean-4381-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4381-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
