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
        Label        -compare-5017-arg1        
        PushF        8.400000                  
        PushF        2.500000                  
        FMultiply                              
        Label        -compare-5017-arg2        
        PushF        9.600000                  
        Label        -compare-5017-sub         
        FSubtract                              
        JumpFZero    -compare-5017-false       
        Jump         -compare-5017-true        
        Label        -compare-5017-true        
        PushI        1                         
        Jump         -compare-5017-join        
        Label        -compare-5017-false       
        PushI        0                         
        Jump         -compare-5017-join        
        Label        -compare-5017-join        
        JumpTrue     -print-boolean-5018-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5018-join  
        Label        -print-boolean-5018-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5018-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5019-arg1        
        PushF        5.900000                  
        PushF        7.800000                  
        FMultiply                              
        Label        -compare-5019-arg2        
        PushF        5.200000                  
        Label        -compare-5019-sub         
        FSubtract                              
        JumpFZero    -compare-5019-false       
        Jump         -compare-5019-true        
        Label        -compare-5019-true        
        PushI        1                         
        Jump         -compare-5019-join        
        Label        -compare-5019-false       
        PushI        0                         
        Jump         -compare-5019-join        
        Label        -compare-5019-join        
        JumpTrue     -print-boolean-5020-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5020-join  
        Label        -print-boolean-5020-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5020-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5021-arg1        
        PushF        3.500000                  
        PushF        5.200000                  
        FMultiply                              
        Label        -compare-5021-arg2        
        PushF        3.200000                  
        Label        -compare-5021-sub         
        FSubtract                              
        JumpFZero    -compare-5021-false       
        Jump         -compare-5021-true        
        Label        -compare-5021-true        
        PushI        1                         
        Jump         -compare-5021-join        
        Label        -compare-5021-false       
        PushI        0                         
        Jump         -compare-5021-join        
        Label        -compare-5021-join        
        JumpTrue     -print-boolean-5022-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5022-join  
        Label        -print-boolean-5022-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5022-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5023-arg1        
        PushF        1.800000                  
        PushF        5.900000                  
        FMultiply                              
        Label        -compare-5023-arg2        
        PushF        1.300000                  
        Label        -compare-5023-sub         
        FSubtract                              
        JumpFZero    -compare-5023-false       
        Jump         -compare-5023-true        
        Label        -compare-5023-true        
        PushI        1                         
        Jump         -compare-5023-join        
        Label        -compare-5023-false       
        PushI        0                         
        Jump         -compare-5023-join        
        Label        -compare-5023-join        
        JumpTrue     -print-boolean-5024-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5024-join  
        Label        -print-boolean-5024-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5024-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5025-arg1        
        PushF        7.200000                  
        PushF        3.700000                  
        FMultiply                              
        Label        -compare-5025-arg2        
        PushF        6.900000                  
        Label        -compare-5025-sub         
        FSubtract                              
        JumpFZero    -compare-5025-false       
        Jump         -compare-5025-true        
        Label        -compare-5025-true        
        PushI        1                         
        Jump         -compare-5025-join        
        Label        -compare-5025-false       
        PushI        0                         
        Jump         -compare-5025-join        
        Label        -compare-5025-join        
        JumpTrue     -print-boolean-5026-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5026-join  
        Label        -print-boolean-5026-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5026-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5027-arg1        
        PushF        1.300000                  
        PushF        9.100000                  
        FMultiply                              
        Label        -compare-5027-arg2        
        PushF        7.100000                  
        Label        -compare-5027-sub         
        FSubtract                              
        JumpFZero    -compare-5027-false       
        Jump         -compare-5027-true        
        Label        -compare-5027-true        
        PushI        1                         
        Jump         -compare-5027-join        
        Label        -compare-5027-false       
        PushI        0                         
        Jump         -compare-5027-join        
        Label        -compare-5027-join        
        JumpTrue     -print-boolean-5028-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5028-join  
        Label        -print-boolean-5028-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5028-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5029-arg1        
        PushF        5.800000                  
        PushF        7.500000                  
        FMultiply                              
        Label        -compare-5029-arg2        
        PushF        3.300000                  
        Label        -compare-5029-sub         
        FSubtract                              
        JumpFZero    -compare-5029-false       
        Jump         -compare-5029-true        
        Label        -compare-5029-true        
        PushI        1                         
        Jump         -compare-5029-join        
        Label        -compare-5029-false       
        PushI        0                         
        Jump         -compare-5029-join        
        Label        -compare-5029-join        
        JumpTrue     -print-boolean-5030-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5030-join  
        Label        -print-boolean-5030-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5030-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5031-arg1        
        PushF        6.900000                  
        PushF        4.400000                  
        FMultiply                              
        Label        -compare-5031-arg2        
        PushF        1.500000                  
        Label        -compare-5031-sub         
        FSubtract                              
        JumpFZero    -compare-5031-false       
        Jump         -compare-5031-true        
        Label        -compare-5031-true        
        PushI        1                         
        Jump         -compare-5031-join        
        Label        -compare-5031-false       
        PushI        0                         
        Jump         -compare-5031-join        
        Label        -compare-5031-join        
        JumpTrue     -print-boolean-5032-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5032-join  
        Label        -print-boolean-5032-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5032-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5033-arg1        
        PushF        9.700000                  
        PushF        6.500000                  
        FMultiply                              
        Label        -compare-5033-arg2        
        PushF        1.800000                  
        Label        -compare-5033-sub         
        FSubtract                              
        JumpFZero    -compare-5033-false       
        Jump         -compare-5033-true        
        Label        -compare-5033-true        
        PushI        1                         
        Jump         -compare-5033-join        
        Label        -compare-5033-false       
        PushI        0                         
        Jump         -compare-5033-join        
        Label        -compare-5033-join        
        JumpTrue     -print-boolean-5034-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5034-join  
        Label        -print-boolean-5034-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5034-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5035-arg1        
        PushF        3.900000                  
        PushF        8.300000                  
        FMultiply                              
        Label        -compare-5035-arg2        
        PushF        7.400000                  
        Label        -compare-5035-sub         
        FSubtract                              
        JumpFZero    -compare-5035-false       
        Jump         -compare-5035-true        
        Label        -compare-5035-true        
        PushI        1                         
        Jump         -compare-5035-join        
        Label        -compare-5035-false       
        PushI        0                         
        Jump         -compare-5035-join        
        Label        -compare-5035-join        
        JumpTrue     -print-boolean-5036-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5036-join  
        Label        -print-boolean-5036-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5036-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5037-arg1        
        PushF        5.600000                  
        PushF        6.000000                  
        FMultiply                              
        Label        -compare-5037-arg2        
        PushF        1.200000                  
        Label        -compare-5037-sub         
        FSubtract                              
        JumpFZero    -compare-5037-false       
        Jump         -compare-5037-true        
        Label        -compare-5037-true        
        PushI        1                         
        Jump         -compare-5037-join        
        Label        -compare-5037-false       
        PushI        0                         
        Jump         -compare-5037-join        
        Label        -compare-5037-join        
        JumpTrue     -print-boolean-5038-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5038-join  
        Label        -print-boolean-5038-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5038-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5039-arg1        
        PushF        8.600000                  
        PushF        9.700000                  
        FMultiply                              
        Label        -compare-5039-arg2        
        PushF        3.300000                  
        Label        -compare-5039-sub         
        FSubtract                              
        JumpFZero    -compare-5039-false       
        Jump         -compare-5039-true        
        Label        -compare-5039-true        
        PushI        1                         
        Jump         -compare-5039-join        
        Label        -compare-5039-false       
        PushI        0                         
        Jump         -compare-5039-join        
        Label        -compare-5039-join        
        JumpTrue     -print-boolean-5040-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5040-join  
        Label        -print-boolean-5040-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5040-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5041-arg1        
        PushF        7.100000                  
        Label        -compare-5041-arg2        
        PushF        6.800000                  
        PushF        3.500000                  
        FMultiply                              
        Label        -compare-5041-sub         
        FSubtract                              
        JumpFZero    -compare-5041-false       
        Jump         -compare-5041-true        
        Label        -compare-5041-true        
        PushI        1                         
        Jump         -compare-5041-join        
        Label        -compare-5041-false       
        PushI        0                         
        Jump         -compare-5041-join        
        Label        -compare-5041-join        
        JumpTrue     -print-boolean-5042-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5042-join  
        Label        -print-boolean-5042-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5042-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5043-arg1        
        PushF        5.400000                  
        Label        -compare-5043-arg2        
        PushF        2.800000                  
        PushF        2.900000                  
        FMultiply                              
        Label        -compare-5043-sub         
        FSubtract                              
        JumpFZero    -compare-5043-false       
        Jump         -compare-5043-true        
        Label        -compare-5043-true        
        PushI        1                         
        Jump         -compare-5043-join        
        Label        -compare-5043-false       
        PushI        0                         
        Jump         -compare-5043-join        
        Label        -compare-5043-join        
        JumpTrue     -print-boolean-5044-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5044-join  
        Label        -print-boolean-5044-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5044-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5045-arg1        
        PushF        1.700000                  
        Label        -compare-5045-arg2        
        PushF        3.800000                  
        PushF        2.900000                  
        FMultiply                              
        Label        -compare-5045-sub         
        FSubtract                              
        JumpFZero    -compare-5045-false       
        Jump         -compare-5045-true        
        Label        -compare-5045-true        
        PushI        1                         
        Jump         -compare-5045-join        
        Label        -compare-5045-false       
        PushI        0                         
        Jump         -compare-5045-join        
        Label        -compare-5045-join        
        JumpTrue     -print-boolean-5046-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5046-join  
        Label        -print-boolean-5046-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5046-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5047-arg1        
        PushF        1.800000                  
        Label        -compare-5047-arg2        
        PushF        9.500000                  
        PushF        2.500000                  
        FMultiply                              
        Label        -compare-5047-sub         
        FSubtract                              
        JumpFZero    -compare-5047-false       
        Jump         -compare-5047-true        
        Label        -compare-5047-true        
        PushI        1                         
        Jump         -compare-5047-join        
        Label        -compare-5047-false       
        PushI        0                         
        Jump         -compare-5047-join        
        Label        -compare-5047-join        
        JumpTrue     -print-boolean-5048-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5048-join  
        Label        -print-boolean-5048-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5048-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5049-arg1        
        PushF        2.000000                  
        Label        -compare-5049-arg2        
        PushF        3.300000                  
        PushF        9.000000                  
        FMultiply                              
        Label        -compare-5049-sub         
        FSubtract                              
        JumpFZero    -compare-5049-false       
        Jump         -compare-5049-true        
        Label        -compare-5049-true        
        PushI        1                         
        Jump         -compare-5049-join        
        Label        -compare-5049-false       
        PushI        0                         
        Jump         -compare-5049-join        
        Label        -compare-5049-join        
        JumpTrue     -print-boolean-5050-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5050-join  
        Label        -print-boolean-5050-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5050-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5051-arg1        
        PushF        1.200000                  
        Label        -compare-5051-arg2        
        PushF        9.700000                  
        PushF        8.700000                  
        FMultiply                              
        Label        -compare-5051-sub         
        FSubtract                              
        JumpFZero    -compare-5051-false       
        Jump         -compare-5051-true        
        Label        -compare-5051-true        
        PushI        1                         
        Jump         -compare-5051-join        
        Label        -compare-5051-false       
        PushI        0                         
        Jump         -compare-5051-join        
        Label        -compare-5051-join        
        JumpTrue     -print-boolean-5052-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5052-join  
        Label        -print-boolean-5052-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5052-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5053-arg1        
        PushF        4.500000                  
        Label        -compare-5053-arg2        
        PushF        1.500000                  
        PushF        2.600000                  
        FMultiply                              
        Label        -compare-5053-sub         
        FSubtract                              
        JumpFZero    -compare-5053-false       
        Jump         -compare-5053-true        
        Label        -compare-5053-true        
        PushI        1                         
        Jump         -compare-5053-join        
        Label        -compare-5053-false       
        PushI        0                         
        Jump         -compare-5053-join        
        Label        -compare-5053-join        
        JumpTrue     -print-boolean-5054-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5054-join  
        Label        -print-boolean-5054-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5054-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5055-arg1        
        PushF        7.900000                  
        Label        -compare-5055-arg2        
        PushF        1.700000                  
        PushF        5.900000                  
        FMultiply                              
        Label        -compare-5055-sub         
        FSubtract                              
        JumpFZero    -compare-5055-false       
        Jump         -compare-5055-true        
        Label        -compare-5055-true        
        PushI        1                         
        Jump         -compare-5055-join        
        Label        -compare-5055-false       
        PushI        0                         
        Jump         -compare-5055-join        
        Label        -compare-5055-join        
        JumpTrue     -print-boolean-5056-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5056-join  
        Label        -print-boolean-5056-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5056-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5057-arg1        
        PushF        7.900000                  
        Label        -compare-5057-arg2        
        PushF        6.600000                  
        PushF        6.600000                  
        FMultiply                              
        Label        -compare-5057-sub         
        FSubtract                              
        JumpFZero    -compare-5057-false       
        Jump         -compare-5057-true        
        Label        -compare-5057-true        
        PushI        1                         
        Jump         -compare-5057-join        
        Label        -compare-5057-false       
        PushI        0                         
        Jump         -compare-5057-join        
        Label        -compare-5057-join        
        JumpTrue     -print-boolean-5058-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5058-join  
        Label        -print-boolean-5058-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5058-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5059-arg1        
        PushF        6.600000                  
        Label        -compare-5059-arg2        
        PushF        3.200000                  
        PushF        1.600000                  
        FMultiply                              
        Label        -compare-5059-sub         
        FSubtract                              
        JumpFZero    -compare-5059-false       
        Jump         -compare-5059-true        
        Label        -compare-5059-true        
        PushI        1                         
        Jump         -compare-5059-join        
        Label        -compare-5059-false       
        PushI        0                         
        Jump         -compare-5059-join        
        Label        -compare-5059-join        
        JumpTrue     -print-boolean-5060-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5060-join  
        Label        -print-boolean-5060-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5060-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5061-arg1        
        PushF        1.500000                  
        Label        -compare-5061-arg2        
        PushF        5.800000                  
        PushF        1.500000                  
        FMultiply                              
        Label        -compare-5061-sub         
        FSubtract                              
        JumpFZero    -compare-5061-false       
        Jump         -compare-5061-true        
        Label        -compare-5061-true        
        PushI        1                         
        Jump         -compare-5061-join        
        Label        -compare-5061-false       
        PushI        0                         
        Jump         -compare-5061-join        
        Label        -compare-5061-join        
        JumpTrue     -print-boolean-5062-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5062-join  
        Label        -print-boolean-5062-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5062-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5063-arg1        
        PushF        7.300000                  
        Label        -compare-5063-arg2        
        PushF        3.900000                  
        PushF        9.000000                  
        FMultiply                              
        Label        -compare-5063-sub         
        FSubtract                              
        JumpFZero    -compare-5063-false       
        Jump         -compare-5063-true        
        Label        -compare-5063-true        
        PushI        1                         
        Jump         -compare-5063-join        
        Label        -compare-5063-false       
        PushI        0                         
        Jump         -compare-5063-join        
        Label        -compare-5063-join        
        JumpTrue     -print-boolean-5064-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5064-join  
        Label        -print-boolean-5064-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5064-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5065-arg1        
        PushF        2.300000                  
        PushF        4.800000                  
        FMultiply                              
        Label        -compare-5065-arg2        
        PushF        1.900000                  
        PushF        6.400000                  
        FMultiply                              
        Label        -compare-5065-sub         
        FSubtract                              
        JumpFZero    -compare-5065-false       
        Jump         -compare-5065-true        
        Label        -compare-5065-true        
        PushI        1                         
        Jump         -compare-5065-join        
        Label        -compare-5065-false       
        PushI        0                         
        Jump         -compare-5065-join        
        Label        -compare-5065-join        
        JumpTrue     -print-boolean-5066-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5066-join  
        Label        -print-boolean-5066-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5066-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5067-arg1        
        PushF        9.600000                  
        PushF        2.300000                  
        FMultiply                              
        Label        -compare-5067-arg2        
        PushF        1.100000                  
        PushF        1.500000                  
        FMultiply                              
        Label        -compare-5067-sub         
        FSubtract                              
        JumpFZero    -compare-5067-false       
        Jump         -compare-5067-true        
        Label        -compare-5067-true        
        PushI        1                         
        Jump         -compare-5067-join        
        Label        -compare-5067-false       
        PushI        0                         
        Jump         -compare-5067-join        
        Label        -compare-5067-join        
        JumpTrue     -print-boolean-5068-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5068-join  
        Label        -print-boolean-5068-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5068-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5069-arg1        
        PushF        5.200000                  
        PushF        8.300000                  
        FMultiply                              
        Label        -compare-5069-arg2        
        PushF        2.400000                  
        PushF        2.200000                  
        FMultiply                              
        Label        -compare-5069-sub         
        FSubtract                              
        JumpFZero    -compare-5069-false       
        Jump         -compare-5069-true        
        Label        -compare-5069-true        
        PushI        1                         
        Jump         -compare-5069-join        
        Label        -compare-5069-false       
        PushI        0                         
        Jump         -compare-5069-join        
        Label        -compare-5069-join        
        JumpTrue     -print-boolean-5070-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5070-join  
        Label        -print-boolean-5070-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5070-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5071-arg1        
        PushF        4.500000                  
        PushF        9.600000                  
        FMultiply                              
        Label        -compare-5071-arg2        
        PushF        2.500000                  
        PushF        1.500000                  
        FMultiply                              
        Label        -compare-5071-sub         
        FSubtract                              
        JumpFZero    -compare-5071-false       
        Jump         -compare-5071-true        
        Label        -compare-5071-true        
        PushI        1                         
        Jump         -compare-5071-join        
        Label        -compare-5071-false       
        PushI        0                         
        Jump         -compare-5071-join        
        Label        -compare-5071-join        
        JumpTrue     -print-boolean-5072-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5072-join  
        Label        -print-boolean-5072-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5072-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5073-arg1        
        PushF        8.100000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-5073-arg2        
        PushF        3.800000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-5073-sub         
        FSubtract                              
        JumpFZero    -compare-5073-false       
        Jump         -compare-5073-true        
        Label        -compare-5073-true        
        PushI        1                         
        Jump         -compare-5073-join        
        Label        -compare-5073-false       
        PushI        0                         
        Jump         -compare-5073-join        
        Label        -compare-5073-join        
        JumpTrue     -print-boolean-5074-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5074-join  
        Label        -print-boolean-5074-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5074-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5075-arg1        
        PushF        3.600000                  
        PushF        5.700000                  
        FMultiply                              
        Label        -compare-5075-arg2        
        PushF        4.500000                  
        PushF        8.800000                  
        FMultiply                              
        Label        -compare-5075-sub         
        FSubtract                              
        JumpFZero    -compare-5075-false       
        Jump         -compare-5075-true        
        Label        -compare-5075-true        
        PushI        1                         
        Jump         -compare-5075-join        
        Label        -compare-5075-false       
        PushI        0                         
        Jump         -compare-5075-join        
        Label        -compare-5075-join        
        JumpTrue     -print-boolean-5076-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5076-join  
        Label        -print-boolean-5076-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5076-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5077-arg1        
        PushF        1.100000                  
        PushF        9.700000                  
        FMultiply                              
        Label        -compare-5077-arg2        
        PushF        1.400000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-5077-sub         
        FSubtract                              
        JumpFZero    -compare-5077-false       
        Jump         -compare-5077-true        
        Label        -compare-5077-true        
        PushI        1                         
        Jump         -compare-5077-join        
        Label        -compare-5077-false       
        PushI        0                         
        Jump         -compare-5077-join        
        Label        -compare-5077-join        
        JumpTrue     -print-boolean-5078-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5078-join  
        Label        -print-boolean-5078-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5078-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5079-arg1        
        PushF        8.900000                  
        PushF        8.100000                  
        FMultiply                              
        Label        -compare-5079-arg2        
        PushF        1.300000                  
        PushF        7.800000                  
        FMultiply                              
        Label        -compare-5079-sub         
        FSubtract                              
        JumpFZero    -compare-5079-false       
        Jump         -compare-5079-true        
        Label        -compare-5079-true        
        PushI        1                         
        Jump         -compare-5079-join        
        Label        -compare-5079-false       
        PushI        0                         
        Jump         -compare-5079-join        
        Label        -compare-5079-join        
        JumpTrue     -print-boolean-5080-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5080-join  
        Label        -print-boolean-5080-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5080-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5081-arg1        
        PushF        7.600000                  
        PushF        5.300000                  
        FMultiply                              
        Label        -compare-5081-arg2        
        PushF        7.200000                  
        PushF        9.600000                  
        FMultiply                              
        Label        -compare-5081-sub         
        FSubtract                              
        JumpFZero    -compare-5081-false       
        Jump         -compare-5081-true        
        Label        -compare-5081-true        
        PushI        1                         
        Jump         -compare-5081-join        
        Label        -compare-5081-false       
        PushI        0                         
        Jump         -compare-5081-join        
        Label        -compare-5081-join        
        JumpTrue     -print-boolean-5082-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5082-join  
        Label        -print-boolean-5082-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5082-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5083-arg1        
        PushF        2.300000                  
        PushF        4.000000                  
        FMultiply                              
        Label        -compare-5083-arg2        
        PushF        4.700000                  
        PushF        8.700000                  
        FMultiply                              
        Label        -compare-5083-sub         
        FSubtract                              
        JumpFZero    -compare-5083-false       
        Jump         -compare-5083-true        
        Label        -compare-5083-true        
        PushI        1                         
        Jump         -compare-5083-join        
        Label        -compare-5083-false       
        PushI        0                         
        Jump         -compare-5083-join        
        Label        -compare-5083-join        
        JumpTrue     -print-boolean-5084-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5084-join  
        Label        -print-boolean-5084-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5084-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5085-arg1        
        PushF        2.600000                  
        PushF        6.300000                  
        FMultiply                              
        Label        -compare-5085-arg2        
        PushF        8.800000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-5085-sub         
        FSubtract                              
        JumpFZero    -compare-5085-false       
        Jump         -compare-5085-true        
        Label        -compare-5085-true        
        PushI        1                         
        Jump         -compare-5085-join        
        Label        -compare-5085-false       
        PushI        0                         
        Jump         -compare-5085-join        
        Label        -compare-5085-join        
        JumpTrue     -print-boolean-5086-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5086-join  
        Label        -print-boolean-5086-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5086-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5087-arg1        
        PushF        2.500000                  
        PushF        6.100000                  
        FMultiply                              
        Label        -compare-5087-arg2        
        PushF        8.200000                  
        PushF        2.300000                  
        FMultiply                              
        Label        -compare-5087-sub         
        FSubtract                              
        JumpFZero    -compare-5087-false       
        Jump         -compare-5087-true        
        Label        -compare-5087-true        
        PushI        1                         
        Jump         -compare-5087-join        
        Label        -compare-5087-false       
        PushI        0                         
        Jump         -compare-5087-join        
        Label        -compare-5087-join        
        JumpTrue     -print-boolean-5088-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5088-join  
        Label        -print-boolean-5088-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5088-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
