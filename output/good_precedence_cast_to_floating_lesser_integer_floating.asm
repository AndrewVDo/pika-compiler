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
        Label        -compare-2030-arg1        
        PushI        78                        
        ConvertF                               
        Label        -compare-2030-arg2        
        PushF        9.100000                  
        Label        -compare-2030-sub         
        FSubtract                              
        JumpFNeg     -compare-2030-true        
        Jump         -compare-2030-false       
        Label        -compare-2030-true        
        PushI        1                         
        Jump         -compare-2030-join        
        Label        -compare-2030-false       
        PushI        0                         
        Jump         -compare-2030-join        
        Label        -compare-2030-join        
        JumpTrue     -print-boolean-2031-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2031-join  
        Label        -print-boolean-2031-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2031-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2032-arg1        
        PushI        49                        
        ConvertF                               
        Label        -compare-2032-arg2        
        PushF        8.400000                  
        Label        -compare-2032-sub         
        FSubtract                              
        JumpFNeg     -compare-2032-true        
        Jump         -compare-2032-false       
        Label        -compare-2032-true        
        PushI        1                         
        Jump         -compare-2032-join        
        Label        -compare-2032-false       
        PushI        0                         
        Jump         -compare-2032-join        
        Label        -compare-2032-join        
        JumpTrue     -print-boolean-2033-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2033-join  
        Label        -print-boolean-2033-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2033-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2034-arg1        
        PushI        6                         
        ConvertF                               
        Label        -compare-2034-arg2        
        PushF        8.700000                  
        Label        -compare-2034-sub         
        FSubtract                              
        JumpFNeg     -compare-2034-true        
        Jump         -compare-2034-false       
        Label        -compare-2034-true        
        PushI        1                         
        Jump         -compare-2034-join        
        Label        -compare-2034-false       
        PushI        0                         
        Jump         -compare-2034-join        
        Label        -compare-2034-join        
        JumpTrue     -print-boolean-2035-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2035-join  
        Label        -print-boolean-2035-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2035-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2036-arg1        
        PushI        33                        
        ConvertF                               
        Label        -compare-2036-arg2        
        PushF        9.200000                  
        Label        -compare-2036-sub         
        FSubtract                              
        JumpFNeg     -compare-2036-true        
        Jump         -compare-2036-false       
        Label        -compare-2036-true        
        PushI        1                         
        Jump         -compare-2036-join        
        Label        -compare-2036-false       
        PushI        0                         
        Jump         -compare-2036-join        
        Label        -compare-2036-join        
        JumpTrue     -print-boolean-2037-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2037-join  
        Label        -print-boolean-2037-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2037-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2038-arg1        
        PushI        52                        
        ConvertF                               
        Label        -compare-2038-arg2        
        PushF        4.500000                  
        Label        -compare-2038-sub         
        FSubtract                              
        JumpFNeg     -compare-2038-true        
        Jump         -compare-2038-false       
        Label        -compare-2038-true        
        PushI        1                         
        Jump         -compare-2038-join        
        Label        -compare-2038-false       
        PushI        0                         
        Jump         -compare-2038-join        
        Label        -compare-2038-join        
        JumpTrue     -print-boolean-2039-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2039-join  
        Label        -print-boolean-2039-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2039-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2040-arg1        
        PushI        67                        
        ConvertF                               
        Label        -compare-2040-arg2        
        PushF        1.900000                  
        Label        -compare-2040-sub         
        FSubtract                              
        JumpFNeg     -compare-2040-true        
        Jump         -compare-2040-false       
        Label        -compare-2040-true        
        PushI        1                         
        Jump         -compare-2040-join        
        Label        -compare-2040-false       
        PushI        0                         
        Jump         -compare-2040-join        
        Label        -compare-2040-join        
        JumpTrue     -print-boolean-2041-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2041-join  
        Label        -print-boolean-2041-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2041-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2042-arg1        
        PushI        64                        
        ConvertF                               
        Label        -compare-2042-arg2        
        PushF        7.900000                  
        Label        -compare-2042-sub         
        FSubtract                              
        JumpFNeg     -compare-2042-true        
        Jump         -compare-2042-false       
        Label        -compare-2042-true        
        PushI        1                         
        Jump         -compare-2042-join        
        Label        -compare-2042-false       
        PushI        0                         
        Jump         -compare-2042-join        
        Label        -compare-2042-join        
        JumpTrue     -print-boolean-2043-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2043-join  
        Label        -print-boolean-2043-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2043-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2044-arg1        
        PushI        21                        
        ConvertF                               
        Label        -compare-2044-arg2        
        PushF        6.100000                  
        Label        -compare-2044-sub         
        FSubtract                              
        JumpFNeg     -compare-2044-true        
        Jump         -compare-2044-false       
        Label        -compare-2044-true        
        PushI        1                         
        Jump         -compare-2044-join        
        Label        -compare-2044-false       
        PushI        0                         
        Jump         -compare-2044-join        
        Label        -compare-2044-join        
        JumpTrue     -print-boolean-2045-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2045-join  
        Label        -print-boolean-2045-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2045-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2046-arg1        
        PushI        20                        
        ConvertF                               
        Label        -compare-2046-arg2        
        PushF        9.500000                  
        Label        -compare-2046-sub         
        FSubtract                              
        JumpFNeg     -compare-2046-true        
        Jump         -compare-2046-false       
        Label        -compare-2046-true        
        PushI        1                         
        Jump         -compare-2046-join        
        Label        -compare-2046-false       
        PushI        0                         
        Jump         -compare-2046-join        
        Label        -compare-2046-join        
        JumpTrue     -print-boolean-2047-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2047-join  
        Label        -print-boolean-2047-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2047-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2048-arg1        
        PushI        21                        
        ConvertF                               
        Label        -compare-2048-arg2        
        PushF        1.800000                  
        Label        -compare-2048-sub         
        FSubtract                              
        JumpFNeg     -compare-2048-true        
        Jump         -compare-2048-false       
        Label        -compare-2048-true        
        PushI        1                         
        Jump         -compare-2048-join        
        Label        -compare-2048-false       
        PushI        0                         
        Jump         -compare-2048-join        
        Label        -compare-2048-join        
        JumpTrue     -print-boolean-2049-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2049-join  
        Label        -print-boolean-2049-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2049-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2050-arg1        
        PushI        84                        
        ConvertF                               
        Label        -compare-2050-arg2        
        PushF        6.700000                  
        Label        -compare-2050-sub         
        FSubtract                              
        JumpFNeg     -compare-2050-true        
        Jump         -compare-2050-false       
        Label        -compare-2050-true        
        PushI        1                         
        Jump         -compare-2050-join        
        Label        -compare-2050-false       
        PushI        0                         
        Jump         -compare-2050-join        
        Label        -compare-2050-join        
        JumpTrue     -print-boolean-2051-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2051-join  
        Label        -print-boolean-2051-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2051-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2052-arg1        
        PushI        11                        
        ConvertF                               
        Label        -compare-2052-arg2        
        PushF        3.900000                  
        Label        -compare-2052-sub         
        FSubtract                              
        JumpFNeg     -compare-2052-true        
        Jump         -compare-2052-false       
        Label        -compare-2052-true        
        PushI        1                         
        Jump         -compare-2052-join        
        Label        -compare-2052-false       
        PushI        0                         
        Jump         -compare-2052-join        
        Label        -compare-2052-join        
        JumpTrue     -print-boolean-2053-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2053-join  
        Label        -print-boolean-2053-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2053-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2054-arg1        
        PushF        7.100000                  
        Label        -compare-2054-arg2        
        PushI        63                        
        ConvertF                               
        Label        -compare-2054-sub         
        FSubtract                              
        JumpFNeg     -compare-2054-true        
        Jump         -compare-2054-false       
        Label        -compare-2054-true        
        PushI        1                         
        Jump         -compare-2054-join        
        Label        -compare-2054-false       
        PushI        0                         
        Jump         -compare-2054-join        
        Label        -compare-2054-join        
        JumpTrue     -print-boolean-2055-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2055-join  
        Label        -print-boolean-2055-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2055-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2056-arg1        
        PushF        6.200000                  
        Label        -compare-2056-arg2        
        PushI        8                         
        ConvertF                               
        Label        -compare-2056-sub         
        FSubtract                              
        JumpFNeg     -compare-2056-true        
        Jump         -compare-2056-false       
        Label        -compare-2056-true        
        PushI        1                         
        Jump         -compare-2056-join        
        Label        -compare-2056-false       
        PushI        0                         
        Jump         -compare-2056-join        
        Label        -compare-2056-join        
        JumpTrue     -print-boolean-2057-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2057-join  
        Label        -print-boolean-2057-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2057-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2058-arg1        
        PushF        8.300000                  
        Label        -compare-2058-arg2        
        PushI        96                        
        ConvertF                               
        Label        -compare-2058-sub         
        FSubtract                              
        JumpFNeg     -compare-2058-true        
        Jump         -compare-2058-false       
        Label        -compare-2058-true        
        PushI        1                         
        Jump         -compare-2058-join        
        Label        -compare-2058-false       
        PushI        0                         
        Jump         -compare-2058-join        
        Label        -compare-2058-join        
        JumpTrue     -print-boolean-2059-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2059-join  
        Label        -print-boolean-2059-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2059-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2060-arg1        
        PushF        3.700000                  
        Label        -compare-2060-arg2        
        PushI        90                        
        ConvertF                               
        Label        -compare-2060-sub         
        FSubtract                              
        JumpFNeg     -compare-2060-true        
        Jump         -compare-2060-false       
        Label        -compare-2060-true        
        PushI        1                         
        Jump         -compare-2060-join        
        Label        -compare-2060-false       
        PushI        0                         
        Jump         -compare-2060-join        
        Label        -compare-2060-join        
        JumpTrue     -print-boolean-2061-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2061-join  
        Label        -print-boolean-2061-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2061-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2062-arg1        
        PushF        5.500000                  
        Label        -compare-2062-arg2        
        PushI        4                         
        ConvertF                               
        Label        -compare-2062-sub         
        FSubtract                              
        JumpFNeg     -compare-2062-true        
        Jump         -compare-2062-false       
        Label        -compare-2062-true        
        PushI        1                         
        Jump         -compare-2062-join        
        Label        -compare-2062-false       
        PushI        0                         
        Jump         -compare-2062-join        
        Label        -compare-2062-join        
        JumpTrue     -print-boolean-2063-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2063-join  
        Label        -print-boolean-2063-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2063-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2064-arg1        
        PushF        4.000000                  
        Label        -compare-2064-arg2        
        PushI        49                        
        ConvertF                               
        Label        -compare-2064-sub         
        FSubtract                              
        JumpFNeg     -compare-2064-true        
        Jump         -compare-2064-false       
        Label        -compare-2064-true        
        PushI        1                         
        Jump         -compare-2064-join        
        Label        -compare-2064-false       
        PushI        0                         
        Jump         -compare-2064-join        
        Label        -compare-2064-join        
        JumpTrue     -print-boolean-2065-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2065-join  
        Label        -print-boolean-2065-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2065-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2066-arg1        
        PushF        2.100000                  
        Label        -compare-2066-arg2        
        PushI        23                        
        ConvertF                               
        Label        -compare-2066-sub         
        FSubtract                              
        JumpFNeg     -compare-2066-true        
        Jump         -compare-2066-false       
        Label        -compare-2066-true        
        PushI        1                         
        Jump         -compare-2066-join        
        Label        -compare-2066-false       
        PushI        0                         
        Jump         -compare-2066-join        
        Label        -compare-2066-join        
        JumpTrue     -print-boolean-2067-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2067-join  
        Label        -print-boolean-2067-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2067-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2068-arg1        
        PushF        6.400000                  
        Label        -compare-2068-arg2        
        PushI        7                         
        ConvertF                               
        Label        -compare-2068-sub         
        FSubtract                              
        JumpFNeg     -compare-2068-true        
        Jump         -compare-2068-false       
        Label        -compare-2068-true        
        PushI        1                         
        Jump         -compare-2068-join        
        Label        -compare-2068-false       
        PushI        0                         
        Jump         -compare-2068-join        
        Label        -compare-2068-join        
        JumpTrue     -print-boolean-2069-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2069-join  
        Label        -print-boolean-2069-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2069-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2070-arg1        
        PushF        5.300000                  
        Label        -compare-2070-arg2        
        PushI        60                        
        ConvertF                               
        Label        -compare-2070-sub         
        FSubtract                              
        JumpFNeg     -compare-2070-true        
        Jump         -compare-2070-false       
        Label        -compare-2070-true        
        PushI        1                         
        Jump         -compare-2070-join        
        Label        -compare-2070-false       
        PushI        0                         
        Jump         -compare-2070-join        
        Label        -compare-2070-join        
        JumpTrue     -print-boolean-2071-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2071-join  
        Label        -print-boolean-2071-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2071-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2072-arg1        
        PushF        5.600000                  
        Label        -compare-2072-arg2        
        PushI        5                         
        ConvertF                               
        Label        -compare-2072-sub         
        FSubtract                              
        JumpFNeg     -compare-2072-true        
        Jump         -compare-2072-false       
        Label        -compare-2072-true        
        PushI        1                         
        Jump         -compare-2072-join        
        Label        -compare-2072-false       
        PushI        0                         
        Jump         -compare-2072-join        
        Label        -compare-2072-join        
        JumpTrue     -print-boolean-2073-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2073-join  
        Label        -print-boolean-2073-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2073-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2074-arg1        
        PushF        2.500000                  
        Label        -compare-2074-arg2        
        PushI        92                        
        ConvertF                               
        Label        -compare-2074-sub         
        FSubtract                              
        JumpFNeg     -compare-2074-true        
        Jump         -compare-2074-false       
        Label        -compare-2074-true        
        PushI        1                         
        Jump         -compare-2074-join        
        Label        -compare-2074-false       
        PushI        0                         
        Jump         -compare-2074-join        
        Label        -compare-2074-join        
        JumpTrue     -print-boolean-2075-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2075-join  
        Label        -print-boolean-2075-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2075-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2076-arg1        
        PushF        2.400000                  
        Label        -compare-2076-arg2        
        PushI        11                        
        ConvertF                               
        Label        -compare-2076-sub         
        FSubtract                              
        JumpFNeg     -compare-2076-true        
        Jump         -compare-2076-false       
        Label        -compare-2076-true        
        PushI        1                         
        Jump         -compare-2076-join        
        Label        -compare-2076-false       
        PushI        0                         
        Jump         -compare-2076-join        
        Label        -compare-2076-join        
        JumpTrue     -print-boolean-2077-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2077-join  
        Label        -print-boolean-2077-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2077-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2078-arg1        
        PushI        8                         
        ConvertF                               
        Label        -compare-2078-arg2        
        PushI        63                        
        ConvertF                               
        Label        -compare-2078-sub         
        FSubtract                              
        JumpFNeg     -compare-2078-true        
        Jump         -compare-2078-false       
        Label        -compare-2078-true        
        PushI        1                         
        Jump         -compare-2078-join        
        Label        -compare-2078-false       
        PushI        0                         
        Jump         -compare-2078-join        
        Label        -compare-2078-join        
        JumpTrue     -print-boolean-2079-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2079-join  
        Label        -print-boolean-2079-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2079-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2080-arg1        
        PushI        62                        
        ConvertF                               
        Label        -compare-2080-arg2        
        PushI        9                         
        ConvertF                               
        Label        -compare-2080-sub         
        FSubtract                              
        JumpFNeg     -compare-2080-true        
        Jump         -compare-2080-false       
        Label        -compare-2080-true        
        PushI        1                         
        Jump         -compare-2080-join        
        Label        -compare-2080-false       
        PushI        0                         
        Jump         -compare-2080-join        
        Label        -compare-2080-join        
        JumpTrue     -print-boolean-2081-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2081-join  
        Label        -print-boolean-2081-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2081-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2082-arg1        
        PushI        87                        
        ConvertF                               
        Label        -compare-2082-arg2        
        PushI        86                        
        ConvertF                               
        Label        -compare-2082-sub         
        FSubtract                              
        JumpFNeg     -compare-2082-true        
        Jump         -compare-2082-false       
        Label        -compare-2082-true        
        PushI        1                         
        Jump         -compare-2082-join        
        Label        -compare-2082-false       
        PushI        0                         
        Jump         -compare-2082-join        
        Label        -compare-2082-join        
        JumpTrue     -print-boolean-2083-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2083-join  
        Label        -print-boolean-2083-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2083-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2084-arg1        
        PushI        71                        
        ConvertF                               
        Label        -compare-2084-arg2        
        PushI        34                        
        ConvertF                               
        Label        -compare-2084-sub         
        FSubtract                              
        JumpFNeg     -compare-2084-true        
        Jump         -compare-2084-false       
        Label        -compare-2084-true        
        PushI        1                         
        Jump         -compare-2084-join        
        Label        -compare-2084-false       
        PushI        0                         
        Jump         -compare-2084-join        
        Label        -compare-2084-join        
        JumpTrue     -print-boolean-2085-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2085-join  
        Label        -print-boolean-2085-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2085-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2086-arg1        
        PushI        45                        
        ConvertF                               
        Label        -compare-2086-arg2        
        PushI        34                        
        ConvertF                               
        Label        -compare-2086-sub         
        FSubtract                              
        JumpFNeg     -compare-2086-true        
        Jump         -compare-2086-false       
        Label        -compare-2086-true        
        PushI        1                         
        Jump         -compare-2086-join        
        Label        -compare-2086-false       
        PushI        0                         
        Jump         -compare-2086-join        
        Label        -compare-2086-join        
        JumpTrue     -print-boolean-2087-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2087-join  
        Label        -print-boolean-2087-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2087-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2088-arg1        
        PushI        52                        
        ConvertF                               
        Label        -compare-2088-arg2        
        PushI        55                        
        ConvertF                               
        Label        -compare-2088-sub         
        FSubtract                              
        JumpFNeg     -compare-2088-true        
        Jump         -compare-2088-false       
        Label        -compare-2088-true        
        PushI        1                         
        Jump         -compare-2088-join        
        Label        -compare-2088-false       
        PushI        0                         
        Jump         -compare-2088-join        
        Label        -compare-2088-join        
        JumpTrue     -print-boolean-2089-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2089-join  
        Label        -print-boolean-2089-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2089-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2090-arg1        
        PushI        87                        
        ConvertF                               
        Label        -compare-2090-arg2        
        PushI        79                        
        ConvertF                               
        Label        -compare-2090-sub         
        FSubtract                              
        JumpFNeg     -compare-2090-true        
        Jump         -compare-2090-false       
        Label        -compare-2090-true        
        PushI        1                         
        Jump         -compare-2090-join        
        Label        -compare-2090-false       
        PushI        0                         
        Jump         -compare-2090-join        
        Label        -compare-2090-join        
        JumpTrue     -print-boolean-2091-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2091-join  
        Label        -print-boolean-2091-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2091-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2092-arg1        
        PushI        29                        
        ConvertF                               
        Label        -compare-2092-arg2        
        PushI        89                        
        ConvertF                               
        Label        -compare-2092-sub         
        FSubtract                              
        JumpFNeg     -compare-2092-true        
        Jump         -compare-2092-false       
        Label        -compare-2092-true        
        PushI        1                         
        Jump         -compare-2092-join        
        Label        -compare-2092-false       
        PushI        0                         
        Jump         -compare-2092-join        
        Label        -compare-2092-join        
        JumpTrue     -print-boolean-2093-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2093-join  
        Label        -print-boolean-2093-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2093-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2094-arg1        
        PushI        60                        
        ConvertF                               
        Label        -compare-2094-arg2        
        PushI        62                        
        ConvertF                               
        Label        -compare-2094-sub         
        FSubtract                              
        JumpFNeg     -compare-2094-true        
        Jump         -compare-2094-false       
        Label        -compare-2094-true        
        PushI        1                         
        Jump         -compare-2094-join        
        Label        -compare-2094-false       
        PushI        0                         
        Jump         -compare-2094-join        
        Label        -compare-2094-join        
        JumpTrue     -print-boolean-2095-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2095-join  
        Label        -print-boolean-2095-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2095-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2096-arg1        
        PushI        23                        
        ConvertF                               
        Label        -compare-2096-arg2        
        PushI        5                         
        ConvertF                               
        Label        -compare-2096-sub         
        FSubtract                              
        JumpFNeg     -compare-2096-true        
        Jump         -compare-2096-false       
        Label        -compare-2096-true        
        PushI        1                         
        Jump         -compare-2096-join        
        Label        -compare-2096-false       
        PushI        0                         
        Jump         -compare-2096-join        
        Label        -compare-2096-join        
        JumpTrue     -print-boolean-2097-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2097-join  
        Label        -print-boolean-2097-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2097-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2098-arg1        
        PushI        28                        
        ConvertF                               
        Label        -compare-2098-arg2        
        PushI        18                        
        ConvertF                               
        Label        -compare-2098-sub         
        FSubtract                              
        JumpFNeg     -compare-2098-true        
        Jump         -compare-2098-false       
        Label        -compare-2098-true        
        PushI        1                         
        Jump         -compare-2098-join        
        Label        -compare-2098-false       
        PushI        0                         
        Jump         -compare-2098-join        
        Label        -compare-2098-join        
        JumpTrue     -print-boolean-2099-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2099-join  
        Label        -print-boolean-2099-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2099-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2100-arg1        
        PushI        21                        
        ConvertF                               
        Label        -compare-2100-arg2        
        PushI        71                        
        ConvertF                               
        Label        -compare-2100-sub         
        FSubtract                              
        JumpFNeg     -compare-2100-true        
        Jump         -compare-2100-false       
        Label        -compare-2100-true        
        PushI        1                         
        Jump         -compare-2100-join        
        Label        -compare-2100-false       
        PushI        0                         
        Jump         -compare-2100-join        
        Label        -compare-2100-join        
        JumpTrue     -print-boolean-2101-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2101-join  
        Label        -print-boolean-2101-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2101-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
