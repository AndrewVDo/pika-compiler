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
        Label        -compare-5030-arg1        
        PushF        8.400000                  
        PushF        2.500000                  
        FMultiply                              
        Label        -compare-5030-arg2        
        PushF        9.600000                  
        Label        -compare-5030-sub         
        FSubtract                              
        JumpFZero    -compare-5030-false       
        Jump         -compare-5030-true        
        Label        -compare-5030-true        
        PushI        1                         
        Jump         -compare-5030-join        
        Label        -compare-5030-false       
        PushI        0                         
        Jump         -compare-5030-join        
        Label        -compare-5030-join        
        JumpTrue     -print-boolean-5031-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5031-join  
        Label        -print-boolean-5031-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5031-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5032-arg1        
        PushF        5.900000                  
        PushF        7.800000                  
        FMultiply                              
        Label        -compare-5032-arg2        
        PushF        5.200000                  
        Label        -compare-5032-sub         
        FSubtract                              
        JumpFZero    -compare-5032-false       
        Jump         -compare-5032-true        
        Label        -compare-5032-true        
        PushI        1                         
        Jump         -compare-5032-join        
        Label        -compare-5032-false       
        PushI        0                         
        Jump         -compare-5032-join        
        Label        -compare-5032-join        
        JumpTrue     -print-boolean-5033-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5033-join  
        Label        -print-boolean-5033-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5033-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5034-arg1        
        PushF        3.500000                  
        PushF        5.200000                  
        FMultiply                              
        Label        -compare-5034-arg2        
        PushF        3.200000                  
        Label        -compare-5034-sub         
        FSubtract                              
        JumpFZero    -compare-5034-false       
        Jump         -compare-5034-true        
        Label        -compare-5034-true        
        PushI        1                         
        Jump         -compare-5034-join        
        Label        -compare-5034-false       
        PushI        0                         
        Jump         -compare-5034-join        
        Label        -compare-5034-join        
        JumpTrue     -print-boolean-5035-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5035-join  
        Label        -print-boolean-5035-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5035-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5036-arg1        
        PushF        1.800000                  
        PushF        5.900000                  
        FMultiply                              
        Label        -compare-5036-arg2        
        PushF        1.300000                  
        Label        -compare-5036-sub         
        FSubtract                              
        JumpFZero    -compare-5036-false       
        Jump         -compare-5036-true        
        Label        -compare-5036-true        
        PushI        1                         
        Jump         -compare-5036-join        
        Label        -compare-5036-false       
        PushI        0                         
        Jump         -compare-5036-join        
        Label        -compare-5036-join        
        JumpTrue     -print-boolean-5037-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5037-join  
        Label        -print-boolean-5037-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5037-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5038-arg1        
        PushF        7.200000                  
        PushF        3.700000                  
        FMultiply                              
        Label        -compare-5038-arg2        
        PushF        6.900000                  
        Label        -compare-5038-sub         
        FSubtract                              
        JumpFZero    -compare-5038-false       
        Jump         -compare-5038-true        
        Label        -compare-5038-true        
        PushI        1                         
        Jump         -compare-5038-join        
        Label        -compare-5038-false       
        PushI        0                         
        Jump         -compare-5038-join        
        Label        -compare-5038-join        
        JumpTrue     -print-boolean-5039-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5039-join  
        Label        -print-boolean-5039-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5039-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5040-arg1        
        PushF        1.300000                  
        PushF        9.100000                  
        FMultiply                              
        Label        -compare-5040-arg2        
        PushF        7.100000                  
        Label        -compare-5040-sub         
        FSubtract                              
        JumpFZero    -compare-5040-false       
        Jump         -compare-5040-true        
        Label        -compare-5040-true        
        PushI        1                         
        Jump         -compare-5040-join        
        Label        -compare-5040-false       
        PushI        0                         
        Jump         -compare-5040-join        
        Label        -compare-5040-join        
        JumpTrue     -print-boolean-5041-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5041-join  
        Label        -print-boolean-5041-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5041-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5042-arg1        
        PushF        5.800000                  
        PushF        7.500000                  
        FMultiply                              
        Label        -compare-5042-arg2        
        PushF        3.300000                  
        Label        -compare-5042-sub         
        FSubtract                              
        JumpFZero    -compare-5042-false       
        Jump         -compare-5042-true        
        Label        -compare-5042-true        
        PushI        1                         
        Jump         -compare-5042-join        
        Label        -compare-5042-false       
        PushI        0                         
        Jump         -compare-5042-join        
        Label        -compare-5042-join        
        JumpTrue     -print-boolean-5043-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5043-join  
        Label        -print-boolean-5043-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5043-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5044-arg1        
        PushF        6.900000                  
        PushF        4.400000                  
        FMultiply                              
        Label        -compare-5044-arg2        
        PushF        1.500000                  
        Label        -compare-5044-sub         
        FSubtract                              
        JumpFZero    -compare-5044-false       
        Jump         -compare-5044-true        
        Label        -compare-5044-true        
        PushI        1                         
        Jump         -compare-5044-join        
        Label        -compare-5044-false       
        PushI        0                         
        Jump         -compare-5044-join        
        Label        -compare-5044-join        
        JumpTrue     -print-boolean-5045-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5045-join  
        Label        -print-boolean-5045-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5045-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5046-arg1        
        PushF        9.700000                  
        PushF        6.500000                  
        FMultiply                              
        Label        -compare-5046-arg2        
        PushF        1.800000                  
        Label        -compare-5046-sub         
        FSubtract                              
        JumpFZero    -compare-5046-false       
        Jump         -compare-5046-true        
        Label        -compare-5046-true        
        PushI        1                         
        Jump         -compare-5046-join        
        Label        -compare-5046-false       
        PushI        0                         
        Jump         -compare-5046-join        
        Label        -compare-5046-join        
        JumpTrue     -print-boolean-5047-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5047-join  
        Label        -print-boolean-5047-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5047-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5048-arg1        
        PushF        3.900000                  
        PushF        8.300000                  
        FMultiply                              
        Label        -compare-5048-arg2        
        PushF        7.400000                  
        Label        -compare-5048-sub         
        FSubtract                              
        JumpFZero    -compare-5048-false       
        Jump         -compare-5048-true        
        Label        -compare-5048-true        
        PushI        1                         
        Jump         -compare-5048-join        
        Label        -compare-5048-false       
        PushI        0                         
        Jump         -compare-5048-join        
        Label        -compare-5048-join        
        JumpTrue     -print-boolean-5049-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5049-join  
        Label        -print-boolean-5049-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5049-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5050-arg1        
        PushF        5.600000                  
        PushF        6.000000                  
        FMultiply                              
        Label        -compare-5050-arg2        
        PushF        1.200000                  
        Label        -compare-5050-sub         
        FSubtract                              
        JumpFZero    -compare-5050-false       
        Jump         -compare-5050-true        
        Label        -compare-5050-true        
        PushI        1                         
        Jump         -compare-5050-join        
        Label        -compare-5050-false       
        PushI        0                         
        Jump         -compare-5050-join        
        Label        -compare-5050-join        
        JumpTrue     -print-boolean-5051-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5051-join  
        Label        -print-boolean-5051-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5051-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5052-arg1        
        PushF        8.600000                  
        PushF        9.700000                  
        FMultiply                              
        Label        -compare-5052-arg2        
        PushF        3.300000                  
        Label        -compare-5052-sub         
        FSubtract                              
        JumpFZero    -compare-5052-false       
        Jump         -compare-5052-true        
        Label        -compare-5052-true        
        PushI        1                         
        Jump         -compare-5052-join        
        Label        -compare-5052-false       
        PushI        0                         
        Jump         -compare-5052-join        
        Label        -compare-5052-join        
        JumpTrue     -print-boolean-5053-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5053-join  
        Label        -print-boolean-5053-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5053-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5054-arg1        
        PushF        7.100000                  
        Label        -compare-5054-arg2        
        PushF        6.800000                  
        PushF        3.500000                  
        FMultiply                              
        Label        -compare-5054-sub         
        FSubtract                              
        JumpFZero    -compare-5054-false       
        Jump         -compare-5054-true        
        Label        -compare-5054-true        
        PushI        1                         
        Jump         -compare-5054-join        
        Label        -compare-5054-false       
        PushI        0                         
        Jump         -compare-5054-join        
        Label        -compare-5054-join        
        JumpTrue     -print-boolean-5055-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5055-join  
        Label        -print-boolean-5055-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5055-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5056-arg1        
        PushF        5.400000                  
        Label        -compare-5056-arg2        
        PushF        2.800000                  
        PushF        2.900000                  
        FMultiply                              
        Label        -compare-5056-sub         
        FSubtract                              
        JumpFZero    -compare-5056-false       
        Jump         -compare-5056-true        
        Label        -compare-5056-true        
        PushI        1                         
        Jump         -compare-5056-join        
        Label        -compare-5056-false       
        PushI        0                         
        Jump         -compare-5056-join        
        Label        -compare-5056-join        
        JumpTrue     -print-boolean-5057-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5057-join  
        Label        -print-boolean-5057-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5057-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5058-arg1        
        PushF        1.700000                  
        Label        -compare-5058-arg2        
        PushF        3.800000                  
        PushF        2.900000                  
        FMultiply                              
        Label        -compare-5058-sub         
        FSubtract                              
        JumpFZero    -compare-5058-false       
        Jump         -compare-5058-true        
        Label        -compare-5058-true        
        PushI        1                         
        Jump         -compare-5058-join        
        Label        -compare-5058-false       
        PushI        0                         
        Jump         -compare-5058-join        
        Label        -compare-5058-join        
        JumpTrue     -print-boolean-5059-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5059-join  
        Label        -print-boolean-5059-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5059-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5060-arg1        
        PushF        1.800000                  
        Label        -compare-5060-arg2        
        PushF        9.500000                  
        PushF        2.500000                  
        FMultiply                              
        Label        -compare-5060-sub         
        FSubtract                              
        JumpFZero    -compare-5060-false       
        Jump         -compare-5060-true        
        Label        -compare-5060-true        
        PushI        1                         
        Jump         -compare-5060-join        
        Label        -compare-5060-false       
        PushI        0                         
        Jump         -compare-5060-join        
        Label        -compare-5060-join        
        JumpTrue     -print-boolean-5061-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5061-join  
        Label        -print-boolean-5061-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5061-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5062-arg1        
        PushF        2.000000                  
        Label        -compare-5062-arg2        
        PushF        3.300000                  
        PushF        9.000000                  
        FMultiply                              
        Label        -compare-5062-sub         
        FSubtract                              
        JumpFZero    -compare-5062-false       
        Jump         -compare-5062-true        
        Label        -compare-5062-true        
        PushI        1                         
        Jump         -compare-5062-join        
        Label        -compare-5062-false       
        PushI        0                         
        Jump         -compare-5062-join        
        Label        -compare-5062-join        
        JumpTrue     -print-boolean-5063-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5063-join  
        Label        -print-boolean-5063-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5063-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5064-arg1        
        PushF        1.200000                  
        Label        -compare-5064-arg2        
        PushF        9.700000                  
        PushF        8.700000                  
        FMultiply                              
        Label        -compare-5064-sub         
        FSubtract                              
        JumpFZero    -compare-5064-false       
        Jump         -compare-5064-true        
        Label        -compare-5064-true        
        PushI        1                         
        Jump         -compare-5064-join        
        Label        -compare-5064-false       
        PushI        0                         
        Jump         -compare-5064-join        
        Label        -compare-5064-join        
        JumpTrue     -print-boolean-5065-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5065-join  
        Label        -print-boolean-5065-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5065-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5066-arg1        
        PushF        4.500000                  
        Label        -compare-5066-arg2        
        PushF        1.500000                  
        PushF        2.600000                  
        FMultiply                              
        Label        -compare-5066-sub         
        FSubtract                              
        JumpFZero    -compare-5066-false       
        Jump         -compare-5066-true        
        Label        -compare-5066-true        
        PushI        1                         
        Jump         -compare-5066-join        
        Label        -compare-5066-false       
        PushI        0                         
        Jump         -compare-5066-join        
        Label        -compare-5066-join        
        JumpTrue     -print-boolean-5067-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5067-join  
        Label        -print-boolean-5067-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5067-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5068-arg1        
        PushF        7.900000                  
        Label        -compare-5068-arg2        
        PushF        1.700000                  
        PushF        5.900000                  
        FMultiply                              
        Label        -compare-5068-sub         
        FSubtract                              
        JumpFZero    -compare-5068-false       
        Jump         -compare-5068-true        
        Label        -compare-5068-true        
        PushI        1                         
        Jump         -compare-5068-join        
        Label        -compare-5068-false       
        PushI        0                         
        Jump         -compare-5068-join        
        Label        -compare-5068-join        
        JumpTrue     -print-boolean-5069-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5069-join  
        Label        -print-boolean-5069-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5069-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5070-arg1        
        PushF        7.900000                  
        Label        -compare-5070-arg2        
        PushF        6.600000                  
        PushF        6.600000                  
        FMultiply                              
        Label        -compare-5070-sub         
        FSubtract                              
        JumpFZero    -compare-5070-false       
        Jump         -compare-5070-true        
        Label        -compare-5070-true        
        PushI        1                         
        Jump         -compare-5070-join        
        Label        -compare-5070-false       
        PushI        0                         
        Jump         -compare-5070-join        
        Label        -compare-5070-join        
        JumpTrue     -print-boolean-5071-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5071-join  
        Label        -print-boolean-5071-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5071-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5072-arg1        
        PushF        6.600000                  
        Label        -compare-5072-arg2        
        PushF        3.200000                  
        PushF        1.600000                  
        FMultiply                              
        Label        -compare-5072-sub         
        FSubtract                              
        JumpFZero    -compare-5072-false       
        Jump         -compare-5072-true        
        Label        -compare-5072-true        
        PushI        1                         
        Jump         -compare-5072-join        
        Label        -compare-5072-false       
        PushI        0                         
        Jump         -compare-5072-join        
        Label        -compare-5072-join        
        JumpTrue     -print-boolean-5073-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5073-join  
        Label        -print-boolean-5073-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5073-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5074-arg1        
        PushF        1.500000                  
        Label        -compare-5074-arg2        
        PushF        5.800000                  
        PushF        1.500000                  
        FMultiply                              
        Label        -compare-5074-sub         
        FSubtract                              
        JumpFZero    -compare-5074-false       
        Jump         -compare-5074-true        
        Label        -compare-5074-true        
        PushI        1                         
        Jump         -compare-5074-join        
        Label        -compare-5074-false       
        PushI        0                         
        Jump         -compare-5074-join        
        Label        -compare-5074-join        
        JumpTrue     -print-boolean-5075-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5075-join  
        Label        -print-boolean-5075-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5075-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5076-arg1        
        PushF        7.300000                  
        Label        -compare-5076-arg2        
        PushF        3.900000                  
        PushF        9.000000                  
        FMultiply                              
        Label        -compare-5076-sub         
        FSubtract                              
        JumpFZero    -compare-5076-false       
        Jump         -compare-5076-true        
        Label        -compare-5076-true        
        PushI        1                         
        Jump         -compare-5076-join        
        Label        -compare-5076-false       
        PushI        0                         
        Jump         -compare-5076-join        
        Label        -compare-5076-join        
        JumpTrue     -print-boolean-5077-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5077-join  
        Label        -print-boolean-5077-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5077-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5078-arg1        
        PushF        2.300000                  
        PushF        4.800000                  
        FMultiply                              
        Label        -compare-5078-arg2        
        PushF        1.900000                  
        PushF        6.400000                  
        FMultiply                              
        Label        -compare-5078-sub         
        FSubtract                              
        JumpFZero    -compare-5078-false       
        Jump         -compare-5078-true        
        Label        -compare-5078-true        
        PushI        1                         
        Jump         -compare-5078-join        
        Label        -compare-5078-false       
        PushI        0                         
        Jump         -compare-5078-join        
        Label        -compare-5078-join        
        JumpTrue     -print-boolean-5079-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5079-join  
        Label        -print-boolean-5079-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5079-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5080-arg1        
        PushF        9.600000                  
        PushF        2.300000                  
        FMultiply                              
        Label        -compare-5080-arg2        
        PushF        1.100000                  
        PushF        1.500000                  
        FMultiply                              
        Label        -compare-5080-sub         
        FSubtract                              
        JumpFZero    -compare-5080-false       
        Jump         -compare-5080-true        
        Label        -compare-5080-true        
        PushI        1                         
        Jump         -compare-5080-join        
        Label        -compare-5080-false       
        PushI        0                         
        Jump         -compare-5080-join        
        Label        -compare-5080-join        
        JumpTrue     -print-boolean-5081-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5081-join  
        Label        -print-boolean-5081-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5081-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5082-arg1        
        PushF        5.200000                  
        PushF        8.300000                  
        FMultiply                              
        Label        -compare-5082-arg2        
        PushF        2.400000                  
        PushF        2.200000                  
        FMultiply                              
        Label        -compare-5082-sub         
        FSubtract                              
        JumpFZero    -compare-5082-false       
        Jump         -compare-5082-true        
        Label        -compare-5082-true        
        PushI        1                         
        Jump         -compare-5082-join        
        Label        -compare-5082-false       
        PushI        0                         
        Jump         -compare-5082-join        
        Label        -compare-5082-join        
        JumpTrue     -print-boolean-5083-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5083-join  
        Label        -print-boolean-5083-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5083-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5084-arg1        
        PushF        4.500000                  
        PushF        9.600000                  
        FMultiply                              
        Label        -compare-5084-arg2        
        PushF        2.500000                  
        PushF        1.500000                  
        FMultiply                              
        Label        -compare-5084-sub         
        FSubtract                              
        JumpFZero    -compare-5084-false       
        Jump         -compare-5084-true        
        Label        -compare-5084-true        
        PushI        1                         
        Jump         -compare-5084-join        
        Label        -compare-5084-false       
        PushI        0                         
        Jump         -compare-5084-join        
        Label        -compare-5084-join        
        JumpTrue     -print-boolean-5085-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5085-join  
        Label        -print-boolean-5085-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5085-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5086-arg1        
        PushF        8.100000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-5086-arg2        
        PushF        3.800000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-5086-sub         
        FSubtract                              
        JumpFZero    -compare-5086-false       
        Jump         -compare-5086-true        
        Label        -compare-5086-true        
        PushI        1                         
        Jump         -compare-5086-join        
        Label        -compare-5086-false       
        PushI        0                         
        Jump         -compare-5086-join        
        Label        -compare-5086-join        
        JumpTrue     -print-boolean-5087-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5087-join  
        Label        -print-boolean-5087-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5087-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5088-arg1        
        PushF        3.600000                  
        PushF        5.700000                  
        FMultiply                              
        Label        -compare-5088-arg2        
        PushF        4.500000                  
        PushF        8.800000                  
        FMultiply                              
        Label        -compare-5088-sub         
        FSubtract                              
        JumpFZero    -compare-5088-false       
        Jump         -compare-5088-true        
        Label        -compare-5088-true        
        PushI        1                         
        Jump         -compare-5088-join        
        Label        -compare-5088-false       
        PushI        0                         
        Jump         -compare-5088-join        
        Label        -compare-5088-join        
        JumpTrue     -print-boolean-5089-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5089-join  
        Label        -print-boolean-5089-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5089-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5090-arg1        
        PushF        1.100000                  
        PushF        9.700000                  
        FMultiply                              
        Label        -compare-5090-arg2        
        PushF        1.400000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-5090-sub         
        FSubtract                              
        JumpFZero    -compare-5090-false       
        Jump         -compare-5090-true        
        Label        -compare-5090-true        
        PushI        1                         
        Jump         -compare-5090-join        
        Label        -compare-5090-false       
        PushI        0                         
        Jump         -compare-5090-join        
        Label        -compare-5090-join        
        JumpTrue     -print-boolean-5091-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5091-join  
        Label        -print-boolean-5091-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5091-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5092-arg1        
        PushF        8.900000                  
        PushF        8.100000                  
        FMultiply                              
        Label        -compare-5092-arg2        
        PushF        1.300000                  
        PushF        7.800000                  
        FMultiply                              
        Label        -compare-5092-sub         
        FSubtract                              
        JumpFZero    -compare-5092-false       
        Jump         -compare-5092-true        
        Label        -compare-5092-true        
        PushI        1                         
        Jump         -compare-5092-join        
        Label        -compare-5092-false       
        PushI        0                         
        Jump         -compare-5092-join        
        Label        -compare-5092-join        
        JumpTrue     -print-boolean-5093-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5093-join  
        Label        -print-boolean-5093-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5093-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5094-arg1        
        PushF        7.600000                  
        PushF        5.300000                  
        FMultiply                              
        Label        -compare-5094-arg2        
        PushF        7.200000                  
        PushF        9.600000                  
        FMultiply                              
        Label        -compare-5094-sub         
        FSubtract                              
        JumpFZero    -compare-5094-false       
        Jump         -compare-5094-true        
        Label        -compare-5094-true        
        PushI        1                         
        Jump         -compare-5094-join        
        Label        -compare-5094-false       
        PushI        0                         
        Jump         -compare-5094-join        
        Label        -compare-5094-join        
        JumpTrue     -print-boolean-5095-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5095-join  
        Label        -print-boolean-5095-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5095-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5096-arg1        
        PushF        2.300000                  
        PushF        4.000000                  
        FMultiply                              
        Label        -compare-5096-arg2        
        PushF        4.700000                  
        PushF        8.700000                  
        FMultiply                              
        Label        -compare-5096-sub         
        FSubtract                              
        JumpFZero    -compare-5096-false       
        Jump         -compare-5096-true        
        Label        -compare-5096-true        
        PushI        1                         
        Jump         -compare-5096-join        
        Label        -compare-5096-false       
        PushI        0                         
        Jump         -compare-5096-join        
        Label        -compare-5096-join        
        JumpTrue     -print-boolean-5097-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5097-join  
        Label        -print-boolean-5097-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5097-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5098-arg1        
        PushF        2.600000                  
        PushF        6.300000                  
        FMultiply                              
        Label        -compare-5098-arg2        
        PushF        8.800000                  
        PushF        7.100000                  
        FMultiply                              
        Label        -compare-5098-sub         
        FSubtract                              
        JumpFZero    -compare-5098-false       
        Jump         -compare-5098-true        
        Label        -compare-5098-true        
        PushI        1                         
        Jump         -compare-5098-join        
        Label        -compare-5098-false       
        PushI        0                         
        Jump         -compare-5098-join        
        Label        -compare-5098-join        
        JumpTrue     -print-boolean-5099-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5099-join  
        Label        -print-boolean-5099-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5099-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5100-arg1        
        PushF        2.500000                  
        PushF        6.100000                  
        FMultiply                              
        Label        -compare-5100-arg2        
        PushF        8.200000                  
        PushF        2.300000                  
        FMultiply                              
        Label        -compare-5100-sub         
        FSubtract                              
        JumpFZero    -compare-5100-false       
        Jump         -compare-5100-true        
        Label        -compare-5100-true        
        PushI        1                         
        Jump         -compare-5100-join        
        Label        -compare-5100-false       
        PushI        0                         
        Jump         -compare-5100-join        
        Label        -compare-5100-join        
        JumpTrue     -print-boolean-5101-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5101-join  
        Label        -print-boolean-5101-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5101-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
