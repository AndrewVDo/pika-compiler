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
        Label        -compare-798-arg1         
        PushF        3.800000                  
        PushF        8.200000                  
        FAdd                                   
        Label        -compare-798-arg2         
        PushF        9.800000                  
        Label        -compare-798-sub          
        FSubtract                              
        JumpFPos     -compare-798-false        
        Jump         -compare-798-true         
        Label        -compare-798-true         
        PushI        1                         
        Jump         -compare-798-join         
        Label        -compare-798-false        
        PushI        0                         
        Jump         -compare-798-join         
        Label        -compare-798-join         
        JumpTrue     -print-boolean-799-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-799-join   
        Label        -print-boolean-799-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-799-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-800-arg1         
        PushF        7.500000                  
        PushF        9.900000                  
        FAdd                                   
        Label        -compare-800-arg2         
        PushF        6.800000                  
        Label        -compare-800-sub          
        FSubtract                              
        JumpFPos     -compare-800-false        
        Jump         -compare-800-true         
        Label        -compare-800-true         
        PushI        1                         
        Jump         -compare-800-join         
        Label        -compare-800-false        
        PushI        0                         
        Jump         -compare-800-join         
        Label        -compare-800-join         
        JumpTrue     -print-boolean-801-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-801-join   
        Label        -print-boolean-801-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-801-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-802-arg1         
        PushF        6.100000                  
        PushF        7.800000                  
        FAdd                                   
        Label        -compare-802-arg2         
        PushF        3.000000                  
        Label        -compare-802-sub          
        FSubtract                              
        JumpFPos     -compare-802-false        
        Jump         -compare-802-true         
        Label        -compare-802-true         
        PushI        1                         
        Jump         -compare-802-join         
        Label        -compare-802-false        
        PushI        0                         
        Jump         -compare-802-join         
        Label        -compare-802-join         
        JumpTrue     -print-boolean-803-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-803-join   
        Label        -print-boolean-803-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-803-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-804-arg1         
        PushF        4.500000                  
        PushF        5.800000                  
        FAdd                                   
        Label        -compare-804-arg2         
        PushF        6.900000                  
        Label        -compare-804-sub          
        FSubtract                              
        JumpFPos     -compare-804-false        
        Jump         -compare-804-true         
        Label        -compare-804-true         
        PushI        1                         
        Jump         -compare-804-join         
        Label        -compare-804-false        
        PushI        0                         
        Jump         -compare-804-join         
        Label        -compare-804-join         
        JumpTrue     -print-boolean-805-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-805-join   
        Label        -print-boolean-805-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-805-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-806-arg1         
        PushF        5.000000                  
        PushF        8.700000                  
        FAdd                                   
        Label        -compare-806-arg2         
        PushF        1.600000                  
        Label        -compare-806-sub          
        FSubtract                              
        JumpFPos     -compare-806-false        
        Jump         -compare-806-true         
        Label        -compare-806-true         
        PushI        1                         
        Jump         -compare-806-join         
        Label        -compare-806-false        
        PushI        0                         
        Jump         -compare-806-join         
        Label        -compare-806-join         
        JumpTrue     -print-boolean-807-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-807-join   
        Label        -print-boolean-807-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-807-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-808-arg1         
        PushF        5.300000                  
        PushF        5.100000                  
        FAdd                                   
        Label        -compare-808-arg2         
        PushF        9.200000                  
        Label        -compare-808-sub          
        FSubtract                              
        JumpFPos     -compare-808-false        
        Jump         -compare-808-true         
        Label        -compare-808-true         
        PushI        1                         
        Jump         -compare-808-join         
        Label        -compare-808-false        
        PushI        0                         
        Jump         -compare-808-join         
        Label        -compare-808-join         
        JumpTrue     -print-boolean-809-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-809-join   
        Label        -print-boolean-809-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-809-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-810-arg1         
        PushF        2.500000                  
        PushF        8.700000                  
        FAdd                                   
        Label        -compare-810-arg2         
        PushF        7.600000                  
        Label        -compare-810-sub          
        FSubtract                              
        JumpFPos     -compare-810-false        
        Jump         -compare-810-true         
        Label        -compare-810-true         
        PushI        1                         
        Jump         -compare-810-join         
        Label        -compare-810-false        
        PushI        0                         
        Jump         -compare-810-join         
        Label        -compare-810-join         
        JumpTrue     -print-boolean-811-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-811-join   
        Label        -print-boolean-811-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-811-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-812-arg1         
        PushF        1.900000                  
        PushF        7.000000                  
        FAdd                                   
        Label        -compare-812-arg2         
        PushF        4.500000                  
        Label        -compare-812-sub          
        FSubtract                              
        JumpFPos     -compare-812-false        
        Jump         -compare-812-true         
        Label        -compare-812-true         
        PushI        1                         
        Jump         -compare-812-join         
        Label        -compare-812-false        
        PushI        0                         
        Jump         -compare-812-join         
        Label        -compare-812-join         
        JumpTrue     -print-boolean-813-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-813-join   
        Label        -print-boolean-813-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-813-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-814-arg1         
        PushF        1.100000                  
        PushF        2.600000                  
        FAdd                                   
        Label        -compare-814-arg2         
        PushF        7.000000                  
        Label        -compare-814-sub          
        FSubtract                              
        JumpFPos     -compare-814-false        
        Jump         -compare-814-true         
        Label        -compare-814-true         
        PushI        1                         
        Jump         -compare-814-join         
        Label        -compare-814-false        
        PushI        0                         
        Jump         -compare-814-join         
        Label        -compare-814-join         
        JumpTrue     -print-boolean-815-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-815-join   
        Label        -print-boolean-815-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-815-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-816-arg1         
        PushF        1.600000                  
        PushF        1.500000                  
        FAdd                                   
        Label        -compare-816-arg2         
        PushF        6.400000                  
        Label        -compare-816-sub          
        FSubtract                              
        JumpFPos     -compare-816-false        
        Jump         -compare-816-true         
        Label        -compare-816-true         
        PushI        1                         
        Jump         -compare-816-join         
        Label        -compare-816-false        
        PushI        0                         
        Jump         -compare-816-join         
        Label        -compare-816-join         
        JumpTrue     -print-boolean-817-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-817-join   
        Label        -print-boolean-817-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-817-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-818-arg1         
        PushF        3.800000                  
        PushF        3.500000                  
        FAdd                                   
        Label        -compare-818-arg2         
        PushF        9.100000                  
        Label        -compare-818-sub          
        FSubtract                              
        JumpFPos     -compare-818-false        
        Jump         -compare-818-true         
        Label        -compare-818-true         
        PushI        1                         
        Jump         -compare-818-join         
        Label        -compare-818-false        
        PushI        0                         
        Jump         -compare-818-join         
        Label        -compare-818-join         
        JumpTrue     -print-boolean-819-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-819-join   
        Label        -print-boolean-819-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-819-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-820-arg1         
        PushF        8.300000                  
        PushF        5.200000                  
        FAdd                                   
        Label        -compare-820-arg2         
        PushF        2.200000                  
        Label        -compare-820-sub          
        FSubtract                              
        JumpFPos     -compare-820-false        
        Jump         -compare-820-true         
        Label        -compare-820-true         
        PushI        1                         
        Jump         -compare-820-join         
        Label        -compare-820-false        
        PushI        0                         
        Jump         -compare-820-join         
        Label        -compare-820-join         
        JumpTrue     -print-boolean-821-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-821-join   
        Label        -print-boolean-821-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-821-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-822-arg1         
        PushF        1.300000                  
        Label        -compare-822-arg2         
        PushF        3.600000                  
        PushF        1.500000                  
        FAdd                                   
        Label        -compare-822-sub          
        FSubtract                              
        JumpFPos     -compare-822-false        
        Jump         -compare-822-true         
        Label        -compare-822-true         
        PushI        1                         
        Jump         -compare-822-join         
        Label        -compare-822-false        
        PushI        0                         
        Jump         -compare-822-join         
        Label        -compare-822-join         
        JumpTrue     -print-boolean-823-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-823-join   
        Label        -print-boolean-823-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-823-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-824-arg1         
        PushF        2.500000                  
        Label        -compare-824-arg2         
        PushF        1.000000                  
        PushF        1.400000                  
        FAdd                                   
        Label        -compare-824-sub          
        FSubtract                              
        JumpFPos     -compare-824-false        
        Jump         -compare-824-true         
        Label        -compare-824-true         
        PushI        1                         
        Jump         -compare-824-join         
        Label        -compare-824-false        
        PushI        0                         
        Jump         -compare-824-join         
        Label        -compare-824-join         
        JumpTrue     -print-boolean-825-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-825-join   
        Label        -print-boolean-825-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-825-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-826-arg1         
        PushF        9.100000                  
        Label        -compare-826-arg2         
        PushF        7.500000                  
        PushF        3.000000                  
        FAdd                                   
        Label        -compare-826-sub          
        FSubtract                              
        JumpFPos     -compare-826-false        
        Jump         -compare-826-true         
        Label        -compare-826-true         
        PushI        1                         
        Jump         -compare-826-join         
        Label        -compare-826-false        
        PushI        0                         
        Jump         -compare-826-join         
        Label        -compare-826-join         
        JumpTrue     -print-boolean-827-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-827-join   
        Label        -print-boolean-827-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-827-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-828-arg1         
        PushF        2.400000                  
        Label        -compare-828-arg2         
        PushF        5.700000                  
        PushF        3.900000                  
        FAdd                                   
        Label        -compare-828-sub          
        FSubtract                              
        JumpFPos     -compare-828-false        
        Jump         -compare-828-true         
        Label        -compare-828-true         
        PushI        1                         
        Jump         -compare-828-join         
        Label        -compare-828-false        
        PushI        0                         
        Jump         -compare-828-join         
        Label        -compare-828-join         
        JumpTrue     -print-boolean-829-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-829-join   
        Label        -print-boolean-829-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-829-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-830-arg1         
        PushF        6.700000                  
        Label        -compare-830-arg2         
        PushF        5.500000                  
        PushF        3.300000                  
        FAdd                                   
        Label        -compare-830-sub          
        FSubtract                              
        JumpFPos     -compare-830-false        
        Jump         -compare-830-true         
        Label        -compare-830-true         
        PushI        1                         
        Jump         -compare-830-join         
        Label        -compare-830-false        
        PushI        0                         
        Jump         -compare-830-join         
        Label        -compare-830-join         
        JumpTrue     -print-boolean-831-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-831-join   
        Label        -print-boolean-831-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-831-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-832-arg1         
        PushF        8.600000                  
        Label        -compare-832-arg2         
        PushF        7.000000                  
        PushF        3.000000                  
        FAdd                                   
        Label        -compare-832-sub          
        FSubtract                              
        JumpFPos     -compare-832-false        
        Jump         -compare-832-true         
        Label        -compare-832-true         
        PushI        1                         
        Jump         -compare-832-join         
        Label        -compare-832-false        
        PushI        0                         
        Jump         -compare-832-join         
        Label        -compare-832-join         
        JumpTrue     -print-boolean-833-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-833-join   
        Label        -print-boolean-833-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-833-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-834-arg1         
        PushF        4.400000                  
        Label        -compare-834-arg2         
        PushF        4.700000                  
        PushF        9.000000                  
        FAdd                                   
        Label        -compare-834-sub          
        FSubtract                              
        JumpFPos     -compare-834-false        
        Jump         -compare-834-true         
        Label        -compare-834-true         
        PushI        1                         
        Jump         -compare-834-join         
        Label        -compare-834-false        
        PushI        0                         
        Jump         -compare-834-join         
        Label        -compare-834-join         
        JumpTrue     -print-boolean-835-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-835-join   
        Label        -print-boolean-835-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-835-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-836-arg1         
        PushF        1.000000                  
        Label        -compare-836-arg2         
        PushF        3.700000                  
        PushF        4.800000                  
        FAdd                                   
        Label        -compare-836-sub          
        FSubtract                              
        JumpFPos     -compare-836-false        
        Jump         -compare-836-true         
        Label        -compare-836-true         
        PushI        1                         
        Jump         -compare-836-join         
        Label        -compare-836-false        
        PushI        0                         
        Jump         -compare-836-join         
        Label        -compare-836-join         
        JumpTrue     -print-boolean-837-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-837-join   
        Label        -print-boolean-837-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-837-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-838-arg1         
        PushF        1.100000                  
        Label        -compare-838-arg2         
        PushF        8.100000                  
        PushF        5.800000                  
        FAdd                                   
        Label        -compare-838-sub          
        FSubtract                              
        JumpFPos     -compare-838-false        
        Jump         -compare-838-true         
        Label        -compare-838-true         
        PushI        1                         
        Jump         -compare-838-join         
        Label        -compare-838-false        
        PushI        0                         
        Jump         -compare-838-join         
        Label        -compare-838-join         
        JumpTrue     -print-boolean-839-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-839-join   
        Label        -print-boolean-839-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-839-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-840-arg1         
        PushF        4.100000                  
        Label        -compare-840-arg2         
        PushF        7.500000                  
        PushF        7.200000                  
        FAdd                                   
        Label        -compare-840-sub          
        FSubtract                              
        JumpFPos     -compare-840-false        
        Jump         -compare-840-true         
        Label        -compare-840-true         
        PushI        1                         
        Jump         -compare-840-join         
        Label        -compare-840-false        
        PushI        0                         
        Jump         -compare-840-join         
        Label        -compare-840-join         
        JumpTrue     -print-boolean-841-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-841-join   
        Label        -print-boolean-841-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-841-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-842-arg1         
        PushF        6.600000                  
        Label        -compare-842-arg2         
        PushF        5.500000                  
        PushF        5.300000                  
        FAdd                                   
        Label        -compare-842-sub          
        FSubtract                              
        JumpFPos     -compare-842-false        
        Jump         -compare-842-true         
        Label        -compare-842-true         
        PushI        1                         
        Jump         -compare-842-join         
        Label        -compare-842-false        
        PushI        0                         
        Jump         -compare-842-join         
        Label        -compare-842-join         
        JumpTrue     -print-boolean-843-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-843-join   
        Label        -print-boolean-843-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-843-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-844-arg1         
        PushF        9.000000                  
        Label        -compare-844-arg2         
        PushF        1.200000                  
        PushF        6.500000                  
        FAdd                                   
        Label        -compare-844-sub          
        FSubtract                              
        JumpFPos     -compare-844-false        
        Jump         -compare-844-true         
        Label        -compare-844-true         
        PushI        1                         
        Jump         -compare-844-join         
        Label        -compare-844-false        
        PushI        0                         
        Jump         -compare-844-join         
        Label        -compare-844-join         
        JumpTrue     -print-boolean-845-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-845-join   
        Label        -print-boolean-845-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-845-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-846-arg1         
        PushF        3.400000                  
        PushF        9.400000                  
        FAdd                                   
        Label        -compare-846-arg2         
        PushF        4.900000                  
        PushF        2.900000                  
        FAdd                                   
        Label        -compare-846-sub          
        FSubtract                              
        JumpFPos     -compare-846-false        
        Jump         -compare-846-true         
        Label        -compare-846-true         
        PushI        1                         
        Jump         -compare-846-join         
        Label        -compare-846-false        
        PushI        0                         
        Jump         -compare-846-join         
        Label        -compare-846-join         
        JumpTrue     -print-boolean-847-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-847-join   
        Label        -print-boolean-847-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-847-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-848-arg1         
        PushF        4.300000                  
        PushF        3.600000                  
        FAdd                                   
        Label        -compare-848-arg2         
        PushF        8.500000                  
        PushF        4.200000                  
        FAdd                                   
        Label        -compare-848-sub          
        FSubtract                              
        JumpFPos     -compare-848-false        
        Jump         -compare-848-true         
        Label        -compare-848-true         
        PushI        1                         
        Jump         -compare-848-join         
        Label        -compare-848-false        
        PushI        0                         
        Jump         -compare-848-join         
        Label        -compare-848-join         
        JumpTrue     -print-boolean-849-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-849-join   
        Label        -print-boolean-849-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-849-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-850-arg1         
        PushF        7.600000                  
        PushF        1.500000                  
        FAdd                                   
        Label        -compare-850-arg2         
        PushF        6.100000                  
        PushF        2.800000                  
        FAdd                                   
        Label        -compare-850-sub          
        FSubtract                              
        JumpFPos     -compare-850-false        
        Jump         -compare-850-true         
        Label        -compare-850-true         
        PushI        1                         
        Jump         -compare-850-join         
        Label        -compare-850-false        
        PushI        0                         
        Jump         -compare-850-join         
        Label        -compare-850-join         
        JumpTrue     -print-boolean-851-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-851-join   
        Label        -print-boolean-851-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-851-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-852-arg1         
        PushF        8.600000                  
        PushF        8.700000                  
        FAdd                                   
        Label        -compare-852-arg2         
        PushF        2.800000                  
        PushF        3.200000                  
        FAdd                                   
        Label        -compare-852-sub          
        FSubtract                              
        JumpFPos     -compare-852-false        
        Jump         -compare-852-true         
        Label        -compare-852-true         
        PushI        1                         
        Jump         -compare-852-join         
        Label        -compare-852-false        
        PushI        0                         
        Jump         -compare-852-join         
        Label        -compare-852-join         
        JumpTrue     -print-boolean-853-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-853-join   
        Label        -print-boolean-853-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-853-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-854-arg1         
        PushF        7.200000                  
        PushF        4.700000                  
        FAdd                                   
        Label        -compare-854-arg2         
        PushF        1.900000                  
        PushF        1.400000                  
        FAdd                                   
        Label        -compare-854-sub          
        FSubtract                              
        JumpFPos     -compare-854-false        
        Jump         -compare-854-true         
        Label        -compare-854-true         
        PushI        1                         
        Jump         -compare-854-join         
        Label        -compare-854-false        
        PushI        0                         
        Jump         -compare-854-join         
        Label        -compare-854-join         
        JumpTrue     -print-boolean-855-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-855-join   
        Label        -print-boolean-855-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-855-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-856-arg1         
        PushF        1.900000                  
        PushF        5.200000                  
        FAdd                                   
        Label        -compare-856-arg2         
        PushF        4.700000                  
        PushF        3.600000                  
        FAdd                                   
        Label        -compare-856-sub          
        FSubtract                              
        JumpFPos     -compare-856-false        
        Jump         -compare-856-true         
        Label        -compare-856-true         
        PushI        1                         
        Jump         -compare-856-join         
        Label        -compare-856-false        
        PushI        0                         
        Jump         -compare-856-join         
        Label        -compare-856-join         
        JumpTrue     -print-boolean-857-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-857-join   
        Label        -print-boolean-857-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-857-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-858-arg1         
        PushF        1.700000                  
        PushF        8.900000                  
        FAdd                                   
        Label        -compare-858-arg2         
        PushF        9.900000                  
        PushF        6.400000                  
        FAdd                                   
        Label        -compare-858-sub          
        FSubtract                              
        JumpFPos     -compare-858-false        
        Jump         -compare-858-true         
        Label        -compare-858-true         
        PushI        1                         
        Jump         -compare-858-join         
        Label        -compare-858-false        
        PushI        0                         
        Jump         -compare-858-join         
        Label        -compare-858-join         
        JumpTrue     -print-boolean-859-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-859-join   
        Label        -print-boolean-859-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-859-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-860-arg1         
        PushF        5.900000                  
        PushF        9.800000                  
        FAdd                                   
        Label        -compare-860-arg2         
        PushF        2.800000                  
        PushF        7.600000                  
        FAdd                                   
        Label        -compare-860-sub          
        FSubtract                              
        JumpFPos     -compare-860-false        
        Jump         -compare-860-true         
        Label        -compare-860-true         
        PushI        1                         
        Jump         -compare-860-join         
        Label        -compare-860-false        
        PushI        0                         
        Jump         -compare-860-join         
        Label        -compare-860-join         
        JumpTrue     -print-boolean-861-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-861-join   
        Label        -print-boolean-861-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-861-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-862-arg1         
        PushF        8.000000                  
        PushF        1.800000                  
        FAdd                                   
        Label        -compare-862-arg2         
        PushF        9.100000                  
        PushF        8.900000                  
        FAdd                                   
        Label        -compare-862-sub          
        FSubtract                              
        JumpFPos     -compare-862-false        
        Jump         -compare-862-true         
        Label        -compare-862-true         
        PushI        1                         
        Jump         -compare-862-join         
        Label        -compare-862-false        
        PushI        0                         
        Jump         -compare-862-join         
        Label        -compare-862-join         
        JumpTrue     -print-boolean-863-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-863-join   
        Label        -print-boolean-863-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-863-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-864-arg1         
        PushF        6.100000                  
        PushF        1.400000                  
        FAdd                                   
        Label        -compare-864-arg2         
        PushF        8.400000                  
        PushF        8.000000                  
        FAdd                                   
        Label        -compare-864-sub          
        FSubtract                              
        JumpFPos     -compare-864-false        
        Jump         -compare-864-true         
        Label        -compare-864-true         
        PushI        1                         
        Jump         -compare-864-join         
        Label        -compare-864-false        
        PushI        0                         
        Jump         -compare-864-join         
        Label        -compare-864-join         
        JumpTrue     -print-boolean-865-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-865-join   
        Label        -print-boolean-865-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-865-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-866-arg1         
        PushF        4.600000                  
        PushF        2.900000                  
        FAdd                                   
        Label        -compare-866-arg2         
        PushF        4.800000                  
        PushF        8.100000                  
        FAdd                                   
        Label        -compare-866-sub          
        FSubtract                              
        JumpFPos     -compare-866-false        
        Jump         -compare-866-true         
        Label        -compare-866-true         
        PushI        1                         
        Jump         -compare-866-join         
        Label        -compare-866-false        
        PushI        0                         
        Jump         -compare-866-join         
        Label        -compare-866-join         
        JumpTrue     -print-boolean-867-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-867-join   
        Label        -print-boolean-867-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-867-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-868-arg1         
        PushF        5.800000                  
        PushF        5.400000                  
        FAdd                                   
        Label        -compare-868-arg2         
        PushF        9.600000                  
        PushF        8.200000                  
        FAdd                                   
        Label        -compare-868-sub          
        FSubtract                              
        JumpFPos     -compare-868-false        
        Jump         -compare-868-true         
        Label        -compare-868-true         
        PushI        1                         
        Jump         -compare-868-join         
        Label        -compare-868-false        
        PushI        0                         
        Jump         -compare-868-join         
        Label        -compare-868-join         
        JumpTrue     -print-boolean-869-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-869-join   
        Label        -print-boolean-869-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-869-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
