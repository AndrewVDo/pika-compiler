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
        Label        -compare-4297-arg1        
        PushF        3.200000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-4297-arg2        
        PushF        8.600000                  
        Label        -compare-4297-sub         
        FSubtract                              
        JumpFZero    -compare-4297-true        
        Jump         -compare-4297-false       
        Label        -compare-4297-true        
        PushI        1                         
        Jump         -compare-4297-join        
        Label        -compare-4297-false       
        PushI        0                         
        Jump         -compare-4297-join        
        Label        -compare-4297-join        
        JumpTrue     -print-boolean-4298-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4298-join  
        Label        -print-boolean-4298-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4298-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4299-arg1        
        PushF        6.800000                  
        PushF        3.200000                  
        FMultiply                              
        Label        -compare-4299-arg2        
        PushF        7.000000                  
        Label        -compare-4299-sub         
        FSubtract                              
        JumpFZero    -compare-4299-true        
        Jump         -compare-4299-false       
        Label        -compare-4299-true        
        PushI        1                         
        Jump         -compare-4299-join        
        Label        -compare-4299-false       
        PushI        0                         
        Jump         -compare-4299-join        
        Label        -compare-4299-join        
        JumpTrue     -print-boolean-4300-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4300-join  
        Label        -print-boolean-4300-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4300-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4301-arg1        
        PushF        9.400000                  
        PushF        8.500000                  
        FMultiply                              
        Label        -compare-4301-arg2        
        PushF        6.700000                  
        Label        -compare-4301-sub         
        FSubtract                              
        JumpFZero    -compare-4301-true        
        Jump         -compare-4301-false       
        Label        -compare-4301-true        
        PushI        1                         
        Jump         -compare-4301-join        
        Label        -compare-4301-false       
        PushI        0                         
        Jump         -compare-4301-join        
        Label        -compare-4301-join        
        JumpTrue     -print-boolean-4302-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4302-join  
        Label        -print-boolean-4302-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4302-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4303-arg1        
        PushF        8.800000                  
        PushF        4.000000                  
        FMultiply                              
        Label        -compare-4303-arg2        
        PushF        6.200000                  
        Label        -compare-4303-sub         
        FSubtract                              
        JumpFZero    -compare-4303-true        
        Jump         -compare-4303-false       
        Label        -compare-4303-true        
        PushI        1                         
        Jump         -compare-4303-join        
        Label        -compare-4303-false       
        PushI        0                         
        Jump         -compare-4303-join        
        Label        -compare-4303-join        
        JumpTrue     -print-boolean-4304-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4304-join  
        Label        -print-boolean-4304-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4304-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4305-arg1        
        PushF        5.800000                  
        PushF        3.500000                  
        FMultiply                              
        Label        -compare-4305-arg2        
        PushF        9.500000                  
        Label        -compare-4305-sub         
        FSubtract                              
        JumpFZero    -compare-4305-true        
        Jump         -compare-4305-false       
        Label        -compare-4305-true        
        PushI        1                         
        Jump         -compare-4305-join        
        Label        -compare-4305-false       
        PushI        0                         
        Jump         -compare-4305-join        
        Label        -compare-4305-join        
        JumpTrue     -print-boolean-4306-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4306-join  
        Label        -print-boolean-4306-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4306-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4307-arg1        
        PushF        7.900000                  
        PushF        1.900000                  
        FMultiply                              
        Label        -compare-4307-arg2        
        PushF        1.700000                  
        Label        -compare-4307-sub         
        FSubtract                              
        JumpFZero    -compare-4307-true        
        Jump         -compare-4307-false       
        Label        -compare-4307-true        
        PushI        1                         
        Jump         -compare-4307-join        
        Label        -compare-4307-false       
        PushI        0                         
        Jump         -compare-4307-join        
        Label        -compare-4307-join        
        JumpTrue     -print-boolean-4308-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4308-join  
        Label        -print-boolean-4308-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4308-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4309-arg1        
        PushF        6.100000                  
        PushF        6.000000                  
        FMultiply                              
        Label        -compare-4309-arg2        
        PushF        7.300000                  
        Label        -compare-4309-sub         
        FSubtract                              
        JumpFZero    -compare-4309-true        
        Jump         -compare-4309-false       
        Label        -compare-4309-true        
        PushI        1                         
        Jump         -compare-4309-join        
        Label        -compare-4309-false       
        PushI        0                         
        Jump         -compare-4309-join        
        Label        -compare-4309-join        
        JumpTrue     -print-boolean-4310-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4310-join  
        Label        -print-boolean-4310-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4310-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4311-arg1        
        PushF        6.300000                  
        PushF        3.500000                  
        FMultiply                              
        Label        -compare-4311-arg2        
        PushF        1.000000                  
        Label        -compare-4311-sub         
        FSubtract                              
        JumpFZero    -compare-4311-true        
        Jump         -compare-4311-false       
        Label        -compare-4311-true        
        PushI        1                         
        Jump         -compare-4311-join        
        Label        -compare-4311-false       
        PushI        0                         
        Jump         -compare-4311-join        
        Label        -compare-4311-join        
        JumpTrue     -print-boolean-4312-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4312-join  
        Label        -print-boolean-4312-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4312-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4313-arg1        
        PushF        9.400000                  
        PushF        9.800000                  
        FMultiply                              
        Label        -compare-4313-arg2        
        PushF        4.400000                  
        Label        -compare-4313-sub         
        FSubtract                              
        JumpFZero    -compare-4313-true        
        Jump         -compare-4313-false       
        Label        -compare-4313-true        
        PushI        1                         
        Jump         -compare-4313-join        
        Label        -compare-4313-false       
        PushI        0                         
        Jump         -compare-4313-join        
        Label        -compare-4313-join        
        JumpTrue     -print-boolean-4314-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4314-join  
        Label        -print-boolean-4314-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4314-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4315-arg1        
        PushF        5.800000                  
        PushF        4.000000                  
        FMultiply                              
        Label        -compare-4315-arg2        
        PushF        2.600000                  
        Label        -compare-4315-sub         
        FSubtract                              
        JumpFZero    -compare-4315-true        
        Jump         -compare-4315-false       
        Label        -compare-4315-true        
        PushI        1                         
        Jump         -compare-4315-join        
        Label        -compare-4315-false       
        PushI        0                         
        Jump         -compare-4315-join        
        Label        -compare-4315-join        
        JumpTrue     -print-boolean-4316-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4316-join  
        Label        -print-boolean-4316-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4316-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4317-arg1        
        PushF        7.000000                  
        PushF        5.400000                  
        FMultiply                              
        Label        -compare-4317-arg2        
        PushF        1.500000                  
        Label        -compare-4317-sub         
        FSubtract                              
        JumpFZero    -compare-4317-true        
        Jump         -compare-4317-false       
        Label        -compare-4317-true        
        PushI        1                         
        Jump         -compare-4317-join        
        Label        -compare-4317-false       
        PushI        0                         
        Jump         -compare-4317-join        
        Label        -compare-4317-join        
        JumpTrue     -print-boolean-4318-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4318-join  
        Label        -print-boolean-4318-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4318-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4319-arg1        
        PushF        5.700000                  
        PushF        5.800000                  
        FMultiply                              
        Label        -compare-4319-arg2        
        PushF        9.500000                  
        Label        -compare-4319-sub         
        FSubtract                              
        JumpFZero    -compare-4319-true        
        Jump         -compare-4319-false       
        Label        -compare-4319-true        
        PushI        1                         
        Jump         -compare-4319-join        
        Label        -compare-4319-false       
        PushI        0                         
        Jump         -compare-4319-join        
        Label        -compare-4319-join        
        JumpTrue     -print-boolean-4320-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4320-join  
        Label        -print-boolean-4320-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4320-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4321-arg1        
        PushF        7.700000                  
        Label        -compare-4321-arg2        
        PushF        7.600000                  
        PushF        1.900000                  
        FMultiply                              
        Label        -compare-4321-sub         
        FSubtract                              
        JumpFZero    -compare-4321-true        
        Jump         -compare-4321-false       
        Label        -compare-4321-true        
        PushI        1                         
        Jump         -compare-4321-join        
        Label        -compare-4321-false       
        PushI        0                         
        Jump         -compare-4321-join        
        Label        -compare-4321-join        
        JumpTrue     -print-boolean-4322-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4322-join  
        Label        -print-boolean-4322-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4322-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4323-arg1        
        PushF        3.400000                  
        Label        -compare-4323-arg2        
        PushF        9.800000                  
        PushF        2.100000                  
        FMultiply                              
        Label        -compare-4323-sub         
        FSubtract                              
        JumpFZero    -compare-4323-true        
        Jump         -compare-4323-false       
        Label        -compare-4323-true        
        PushI        1                         
        Jump         -compare-4323-join        
        Label        -compare-4323-false       
        PushI        0                         
        Jump         -compare-4323-join        
        Label        -compare-4323-join        
        JumpTrue     -print-boolean-4324-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4324-join  
        Label        -print-boolean-4324-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4324-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4325-arg1        
        PushF        3.600000                  
        Label        -compare-4325-arg2        
        PushF        1.000000                  
        PushF        4.100000                  
        FMultiply                              
        Label        -compare-4325-sub         
        FSubtract                              
        JumpFZero    -compare-4325-true        
        Jump         -compare-4325-false       
        Label        -compare-4325-true        
        PushI        1                         
        Jump         -compare-4325-join        
        Label        -compare-4325-false       
        PushI        0                         
        Jump         -compare-4325-join        
        Label        -compare-4325-join        
        JumpTrue     -print-boolean-4326-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4326-join  
        Label        -print-boolean-4326-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4326-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4327-arg1        
        PushF        1.300000                  
        Label        -compare-4327-arg2        
        PushF        1.000000                  
        PushF        1.600000                  
        FMultiply                              
        Label        -compare-4327-sub         
        FSubtract                              
        JumpFZero    -compare-4327-true        
        Jump         -compare-4327-false       
        Label        -compare-4327-true        
        PushI        1                         
        Jump         -compare-4327-join        
        Label        -compare-4327-false       
        PushI        0                         
        Jump         -compare-4327-join        
        Label        -compare-4327-join        
        JumpTrue     -print-boolean-4328-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4328-join  
        Label        -print-boolean-4328-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4328-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4329-arg1        
        PushF        8.400000                  
        Label        -compare-4329-arg2        
        PushF        9.900000                  
        PushF        3.300000                  
        FMultiply                              
        Label        -compare-4329-sub         
        FSubtract                              
        JumpFZero    -compare-4329-true        
        Jump         -compare-4329-false       
        Label        -compare-4329-true        
        PushI        1                         
        Jump         -compare-4329-join        
        Label        -compare-4329-false       
        PushI        0                         
        Jump         -compare-4329-join        
        Label        -compare-4329-join        
        JumpTrue     -print-boolean-4330-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4330-join  
        Label        -print-boolean-4330-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4330-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4331-arg1        
        PushF        7.500000                  
        Label        -compare-4331-arg2        
        PushF        1.000000                  
        PushF        5.000000                  
        FMultiply                              
        Label        -compare-4331-sub         
        FSubtract                              
        JumpFZero    -compare-4331-true        
        Jump         -compare-4331-false       
        Label        -compare-4331-true        
        PushI        1                         
        Jump         -compare-4331-join        
        Label        -compare-4331-false       
        PushI        0                         
        Jump         -compare-4331-join        
        Label        -compare-4331-join        
        JumpTrue     -print-boolean-4332-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4332-join  
        Label        -print-boolean-4332-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4332-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4333-arg1        
        PushF        6.000000                  
        Label        -compare-4333-arg2        
        PushF        9.100000                  
        PushF        3.800000                  
        FMultiply                              
        Label        -compare-4333-sub         
        FSubtract                              
        JumpFZero    -compare-4333-true        
        Jump         -compare-4333-false       
        Label        -compare-4333-true        
        PushI        1                         
        Jump         -compare-4333-join        
        Label        -compare-4333-false       
        PushI        0                         
        Jump         -compare-4333-join        
        Label        -compare-4333-join        
        JumpTrue     -print-boolean-4334-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4334-join  
        Label        -print-boolean-4334-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4334-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4335-arg1        
        PushF        6.600000                  
        Label        -compare-4335-arg2        
        PushF        6.400000                  
        PushF        5.800000                  
        FMultiply                              
        Label        -compare-4335-sub         
        FSubtract                              
        JumpFZero    -compare-4335-true        
        Jump         -compare-4335-false       
        Label        -compare-4335-true        
        PushI        1                         
        Jump         -compare-4335-join        
        Label        -compare-4335-false       
        PushI        0                         
        Jump         -compare-4335-join        
        Label        -compare-4335-join        
        JumpTrue     -print-boolean-4336-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4336-join  
        Label        -print-boolean-4336-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4336-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4337-arg1        
        PushF        7.600000                  
        Label        -compare-4337-arg2        
        PushF        6.300000                  
        PushF        2.600000                  
        FMultiply                              
        Label        -compare-4337-sub         
        FSubtract                              
        JumpFZero    -compare-4337-true        
        Jump         -compare-4337-false       
        Label        -compare-4337-true        
        PushI        1                         
        Jump         -compare-4337-join        
        Label        -compare-4337-false       
        PushI        0                         
        Jump         -compare-4337-join        
        Label        -compare-4337-join        
        JumpTrue     -print-boolean-4338-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4338-join  
        Label        -print-boolean-4338-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4338-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4339-arg1        
        PushF        3.700000                  
        Label        -compare-4339-arg2        
        PushF        3.600000                  
        PushF        4.200000                  
        FMultiply                              
        Label        -compare-4339-sub         
        FSubtract                              
        JumpFZero    -compare-4339-true        
        Jump         -compare-4339-false       
        Label        -compare-4339-true        
        PushI        1                         
        Jump         -compare-4339-join        
        Label        -compare-4339-false       
        PushI        0                         
        Jump         -compare-4339-join        
        Label        -compare-4339-join        
        JumpTrue     -print-boolean-4340-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4340-join  
        Label        -print-boolean-4340-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4340-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4341-arg1        
        PushF        7.300000                  
        Label        -compare-4341-arg2        
        PushF        3.000000                  
        PushF        5.500000                  
        FMultiply                              
        Label        -compare-4341-sub         
        FSubtract                              
        JumpFZero    -compare-4341-true        
        Jump         -compare-4341-false       
        Label        -compare-4341-true        
        PushI        1                         
        Jump         -compare-4341-join        
        Label        -compare-4341-false       
        PushI        0                         
        Jump         -compare-4341-join        
        Label        -compare-4341-join        
        JumpTrue     -print-boolean-4342-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4342-join  
        Label        -print-boolean-4342-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4342-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4343-arg1        
        PushF        3.500000                  
        Label        -compare-4343-arg2        
        PushF        3.400000                  
        PushF        2.800000                  
        FMultiply                              
        Label        -compare-4343-sub         
        FSubtract                              
        JumpFZero    -compare-4343-true        
        Jump         -compare-4343-false       
        Label        -compare-4343-true        
        PushI        1                         
        Jump         -compare-4343-join        
        Label        -compare-4343-false       
        PushI        0                         
        Jump         -compare-4343-join        
        Label        -compare-4343-join        
        JumpTrue     -print-boolean-4344-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4344-join  
        Label        -print-boolean-4344-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4344-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4345-arg1        
        PushF        9.200000                  
        PushF        6.100000                  
        FMultiply                              
        Label        -compare-4345-arg2        
        PushF        1.100000                  
        PushF        4.000000                  
        FMultiply                              
        Label        -compare-4345-sub         
        FSubtract                              
        JumpFZero    -compare-4345-true        
        Jump         -compare-4345-false       
        Label        -compare-4345-true        
        PushI        1                         
        Jump         -compare-4345-join        
        Label        -compare-4345-false       
        PushI        0                         
        Jump         -compare-4345-join        
        Label        -compare-4345-join        
        JumpTrue     -print-boolean-4346-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4346-join  
        Label        -print-boolean-4346-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4346-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4347-arg1        
        PushF        4.900000                  
        PushF        2.800000                  
        FMultiply                              
        Label        -compare-4347-arg2        
        PushF        6.500000                  
        PushF        8.300000                  
        FMultiply                              
        Label        -compare-4347-sub         
        FSubtract                              
        JumpFZero    -compare-4347-true        
        Jump         -compare-4347-false       
        Label        -compare-4347-true        
        PushI        1                         
        Jump         -compare-4347-join        
        Label        -compare-4347-false       
        PushI        0                         
        Jump         -compare-4347-join        
        Label        -compare-4347-join        
        JumpTrue     -print-boolean-4348-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4348-join  
        Label        -print-boolean-4348-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4348-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4349-arg1        
        PushF        2.400000                  
        PushF        6.900000                  
        FMultiply                              
        Label        -compare-4349-arg2        
        PushF        2.800000                  
        PushF        8.800000                  
        FMultiply                              
        Label        -compare-4349-sub         
        FSubtract                              
        JumpFZero    -compare-4349-true        
        Jump         -compare-4349-false       
        Label        -compare-4349-true        
        PushI        1                         
        Jump         -compare-4349-join        
        Label        -compare-4349-false       
        PushI        0                         
        Jump         -compare-4349-join        
        Label        -compare-4349-join        
        JumpTrue     -print-boolean-4350-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4350-join  
        Label        -print-boolean-4350-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4350-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4351-arg1        
        PushF        4.200000                  
        PushF        8.200000                  
        FMultiply                              
        Label        -compare-4351-arg2        
        PushF        2.200000                  
        PushF        9.300000                  
        FMultiply                              
        Label        -compare-4351-sub         
        FSubtract                              
        JumpFZero    -compare-4351-true        
        Jump         -compare-4351-false       
        Label        -compare-4351-true        
        PushI        1                         
        Jump         -compare-4351-join        
        Label        -compare-4351-false       
        PushI        0                         
        Jump         -compare-4351-join        
        Label        -compare-4351-join        
        JumpTrue     -print-boolean-4352-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4352-join  
        Label        -print-boolean-4352-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4352-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4353-arg1        
        PushF        2.400000                  
        PushF        5.100000                  
        FMultiply                              
        Label        -compare-4353-arg2        
        PushF        7.600000                  
        PushF        8.900000                  
        FMultiply                              
        Label        -compare-4353-sub         
        FSubtract                              
        JumpFZero    -compare-4353-true        
        Jump         -compare-4353-false       
        Label        -compare-4353-true        
        PushI        1                         
        Jump         -compare-4353-join        
        Label        -compare-4353-false       
        PushI        0                         
        Jump         -compare-4353-join        
        Label        -compare-4353-join        
        JumpTrue     -print-boolean-4354-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4354-join  
        Label        -print-boolean-4354-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4354-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4355-arg1        
        PushF        2.800000                  
        PushF        4.500000                  
        FMultiply                              
        Label        -compare-4355-arg2        
        PushF        5.100000                  
        PushF        2.300000                  
        FMultiply                              
        Label        -compare-4355-sub         
        FSubtract                              
        JumpFZero    -compare-4355-true        
        Jump         -compare-4355-false       
        Label        -compare-4355-true        
        PushI        1                         
        Jump         -compare-4355-join        
        Label        -compare-4355-false       
        PushI        0                         
        Jump         -compare-4355-join        
        Label        -compare-4355-join        
        JumpTrue     -print-boolean-4356-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4356-join  
        Label        -print-boolean-4356-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4356-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4357-arg1        
        PushF        4.400000                  
        PushF        9.300000                  
        FMultiply                              
        Label        -compare-4357-arg2        
        PushF        7.700000                  
        PushF        1.500000                  
        FMultiply                              
        Label        -compare-4357-sub         
        FSubtract                              
        JumpFZero    -compare-4357-true        
        Jump         -compare-4357-false       
        Label        -compare-4357-true        
        PushI        1                         
        Jump         -compare-4357-join        
        Label        -compare-4357-false       
        PushI        0                         
        Jump         -compare-4357-join        
        Label        -compare-4357-join        
        JumpTrue     -print-boolean-4358-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4358-join  
        Label        -print-boolean-4358-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4358-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4359-arg1        
        PushF        8.600000                  
        PushF        5.400000                  
        FMultiply                              
        Label        -compare-4359-arg2        
        PushF        2.400000                  
        PushF        1.900000                  
        FMultiply                              
        Label        -compare-4359-sub         
        FSubtract                              
        JumpFZero    -compare-4359-true        
        Jump         -compare-4359-false       
        Label        -compare-4359-true        
        PushI        1                         
        Jump         -compare-4359-join        
        Label        -compare-4359-false       
        PushI        0                         
        Jump         -compare-4359-join        
        Label        -compare-4359-join        
        JumpTrue     -print-boolean-4360-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4360-join  
        Label        -print-boolean-4360-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4360-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4361-arg1        
        PushF        4.500000                  
        PushF        6.800000                  
        FMultiply                              
        Label        -compare-4361-arg2        
        PushF        7.900000                  
        PushF        4.700000                  
        FMultiply                              
        Label        -compare-4361-sub         
        FSubtract                              
        JumpFZero    -compare-4361-true        
        Jump         -compare-4361-false       
        Label        -compare-4361-true        
        PushI        1                         
        Jump         -compare-4361-join        
        Label        -compare-4361-false       
        PushI        0                         
        Jump         -compare-4361-join        
        Label        -compare-4361-join        
        JumpTrue     -print-boolean-4362-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4362-join  
        Label        -print-boolean-4362-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4362-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4363-arg1        
        PushF        8.900000                  
        PushF        1.000000                  
        FMultiply                              
        Label        -compare-4363-arg2        
        PushF        5.000000                  
        PushF        3.900000                  
        FMultiply                              
        Label        -compare-4363-sub         
        FSubtract                              
        JumpFZero    -compare-4363-true        
        Jump         -compare-4363-false       
        Label        -compare-4363-true        
        PushI        1                         
        Jump         -compare-4363-join        
        Label        -compare-4363-false       
        PushI        0                         
        Jump         -compare-4363-join        
        Label        -compare-4363-join        
        JumpTrue     -print-boolean-4364-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4364-join  
        Label        -print-boolean-4364-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4364-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4365-arg1        
        PushF        5.000000                  
        PushF        3.700000                  
        FMultiply                              
        Label        -compare-4365-arg2        
        PushF        3.300000                  
        PushF        4.000000                  
        FMultiply                              
        Label        -compare-4365-sub         
        FSubtract                              
        JumpFZero    -compare-4365-true        
        Jump         -compare-4365-false       
        Label        -compare-4365-true        
        PushI        1                         
        Jump         -compare-4365-join        
        Label        -compare-4365-false       
        PushI        0                         
        Jump         -compare-4365-join        
        Label        -compare-4365-join        
        JumpTrue     -print-boolean-4366-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4366-join  
        Label        -print-boolean-4366-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4366-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4367-arg1        
        PushF        6.200000                  
        PushF        3.600000                  
        FMultiply                              
        Label        -compare-4367-arg2        
        PushF        6.000000                  
        PushF        4.700000                  
        FMultiply                              
        Label        -compare-4367-sub         
        FSubtract                              
        JumpFZero    -compare-4367-true        
        Jump         -compare-4367-false       
        Label        -compare-4367-true        
        PushI        1                         
        Jump         -compare-4367-join        
        Label        -compare-4367-false       
        PushI        0                         
        Jump         -compare-4367-join        
        Label        -compare-4367-join        
        JumpTrue     -print-boolean-4368-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4368-join  
        Label        -print-boolean-4368-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4368-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
