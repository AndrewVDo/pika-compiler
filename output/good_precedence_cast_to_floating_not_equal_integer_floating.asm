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
        Label        -compare-2174-arg1        
        PushI        81                        
        ConvertF                               
        Label        -compare-2174-arg2        
        PushF        9.000000                  
        Label        -compare-2174-sub         
        FSubtract                              
        JumpFZero    -compare-2174-false       
        Jump         -compare-2174-true        
        Label        -compare-2174-true        
        PushI        1                         
        Jump         -compare-2174-join        
        Label        -compare-2174-false       
        PushI        0                         
        Jump         -compare-2174-join        
        Label        -compare-2174-join        
        JumpTrue     -print-boolean-2175-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2175-join  
        Label        -print-boolean-2175-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2175-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2176-arg1        
        PushI        43                        
        ConvertF                               
        Label        -compare-2176-arg2        
        PushF        5.000000                  
        Label        -compare-2176-sub         
        FSubtract                              
        JumpFZero    -compare-2176-false       
        Jump         -compare-2176-true        
        Label        -compare-2176-true        
        PushI        1                         
        Jump         -compare-2176-join        
        Label        -compare-2176-false       
        PushI        0                         
        Jump         -compare-2176-join        
        Label        -compare-2176-join        
        JumpTrue     -print-boolean-2177-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2177-join  
        Label        -print-boolean-2177-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2177-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2178-arg1        
        PushI        68                        
        ConvertF                               
        Label        -compare-2178-arg2        
        PushF        2.200000                  
        Label        -compare-2178-sub         
        FSubtract                              
        JumpFZero    -compare-2178-false       
        Jump         -compare-2178-true        
        Label        -compare-2178-true        
        PushI        1                         
        Jump         -compare-2178-join        
        Label        -compare-2178-false       
        PushI        0                         
        Jump         -compare-2178-join        
        Label        -compare-2178-join        
        JumpTrue     -print-boolean-2179-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2179-join  
        Label        -print-boolean-2179-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2179-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2180-arg1        
        PushI        64                        
        ConvertF                               
        Label        -compare-2180-arg2        
        PushF        4.300000                  
        Label        -compare-2180-sub         
        FSubtract                              
        JumpFZero    -compare-2180-false       
        Jump         -compare-2180-true        
        Label        -compare-2180-true        
        PushI        1                         
        Jump         -compare-2180-join        
        Label        -compare-2180-false       
        PushI        0                         
        Jump         -compare-2180-join        
        Label        -compare-2180-join        
        JumpTrue     -print-boolean-2181-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2181-join  
        Label        -print-boolean-2181-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2181-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2182-arg1        
        PushI        34                        
        ConvertF                               
        Label        -compare-2182-arg2        
        PushF        6.000000                  
        Label        -compare-2182-sub         
        FSubtract                              
        JumpFZero    -compare-2182-false       
        Jump         -compare-2182-true        
        Label        -compare-2182-true        
        PushI        1                         
        Jump         -compare-2182-join        
        Label        -compare-2182-false       
        PushI        0                         
        Jump         -compare-2182-join        
        Label        -compare-2182-join        
        JumpTrue     -print-boolean-2183-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2183-join  
        Label        -print-boolean-2183-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2183-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2184-arg1        
        PushI        1                         
        ConvertF                               
        Label        -compare-2184-arg2        
        PushF        9.700000                  
        Label        -compare-2184-sub         
        FSubtract                              
        JumpFZero    -compare-2184-false       
        Jump         -compare-2184-true        
        Label        -compare-2184-true        
        PushI        1                         
        Jump         -compare-2184-join        
        Label        -compare-2184-false       
        PushI        0                         
        Jump         -compare-2184-join        
        Label        -compare-2184-join        
        JumpTrue     -print-boolean-2185-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2185-join  
        Label        -print-boolean-2185-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2185-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2186-arg1        
        PushI        37                        
        ConvertF                               
        Label        -compare-2186-arg2        
        PushF        5.300000                  
        Label        -compare-2186-sub         
        FSubtract                              
        JumpFZero    -compare-2186-false       
        Jump         -compare-2186-true        
        Label        -compare-2186-true        
        PushI        1                         
        Jump         -compare-2186-join        
        Label        -compare-2186-false       
        PushI        0                         
        Jump         -compare-2186-join        
        Label        -compare-2186-join        
        JumpTrue     -print-boolean-2187-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2187-join  
        Label        -print-boolean-2187-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2187-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2188-arg1        
        PushI        19                        
        ConvertF                               
        Label        -compare-2188-arg2        
        PushF        3.100000                  
        Label        -compare-2188-sub         
        FSubtract                              
        JumpFZero    -compare-2188-false       
        Jump         -compare-2188-true        
        Label        -compare-2188-true        
        PushI        1                         
        Jump         -compare-2188-join        
        Label        -compare-2188-false       
        PushI        0                         
        Jump         -compare-2188-join        
        Label        -compare-2188-join        
        JumpTrue     -print-boolean-2189-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2189-join  
        Label        -print-boolean-2189-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2189-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2190-arg1        
        PushI        15                        
        ConvertF                               
        Label        -compare-2190-arg2        
        PushF        4.700000                  
        Label        -compare-2190-sub         
        FSubtract                              
        JumpFZero    -compare-2190-false       
        Jump         -compare-2190-true        
        Label        -compare-2190-true        
        PushI        1                         
        Jump         -compare-2190-join        
        Label        -compare-2190-false       
        PushI        0                         
        Jump         -compare-2190-join        
        Label        -compare-2190-join        
        JumpTrue     -print-boolean-2191-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2191-join  
        Label        -print-boolean-2191-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2191-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2192-arg1        
        PushI        42                        
        ConvertF                               
        Label        -compare-2192-arg2        
        PushF        3.700000                  
        Label        -compare-2192-sub         
        FSubtract                              
        JumpFZero    -compare-2192-false       
        Jump         -compare-2192-true        
        Label        -compare-2192-true        
        PushI        1                         
        Jump         -compare-2192-join        
        Label        -compare-2192-false       
        PushI        0                         
        Jump         -compare-2192-join        
        Label        -compare-2192-join        
        JumpTrue     -print-boolean-2193-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2193-join  
        Label        -print-boolean-2193-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2193-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2194-arg1        
        PushI        10                        
        ConvertF                               
        Label        -compare-2194-arg2        
        PushF        3.600000                  
        Label        -compare-2194-sub         
        FSubtract                              
        JumpFZero    -compare-2194-false       
        Jump         -compare-2194-true        
        Label        -compare-2194-true        
        PushI        1                         
        Jump         -compare-2194-join        
        Label        -compare-2194-false       
        PushI        0                         
        Jump         -compare-2194-join        
        Label        -compare-2194-join        
        JumpTrue     -print-boolean-2195-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2195-join  
        Label        -print-boolean-2195-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2195-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2196-arg1        
        PushI        76                        
        ConvertF                               
        Label        -compare-2196-arg2        
        PushF        7.300000                  
        Label        -compare-2196-sub         
        FSubtract                              
        JumpFZero    -compare-2196-false       
        Jump         -compare-2196-true        
        Label        -compare-2196-true        
        PushI        1                         
        Jump         -compare-2196-join        
        Label        -compare-2196-false       
        PushI        0                         
        Jump         -compare-2196-join        
        Label        -compare-2196-join        
        JumpTrue     -print-boolean-2197-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2197-join  
        Label        -print-boolean-2197-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2197-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2198-arg1        
        PushF        5.400000                  
        Label        -compare-2198-arg2        
        PushI        73                        
        ConvertF                               
        Label        -compare-2198-sub         
        FSubtract                              
        JumpFZero    -compare-2198-false       
        Jump         -compare-2198-true        
        Label        -compare-2198-true        
        PushI        1                         
        Jump         -compare-2198-join        
        Label        -compare-2198-false       
        PushI        0                         
        Jump         -compare-2198-join        
        Label        -compare-2198-join        
        JumpTrue     -print-boolean-2199-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2199-join  
        Label        -print-boolean-2199-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2199-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2200-arg1        
        PushF        4.300000                  
        Label        -compare-2200-arg2        
        PushI        17                        
        ConvertF                               
        Label        -compare-2200-sub         
        FSubtract                              
        JumpFZero    -compare-2200-false       
        Jump         -compare-2200-true        
        Label        -compare-2200-true        
        PushI        1                         
        Jump         -compare-2200-join        
        Label        -compare-2200-false       
        PushI        0                         
        Jump         -compare-2200-join        
        Label        -compare-2200-join        
        JumpTrue     -print-boolean-2201-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2201-join  
        Label        -print-boolean-2201-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2201-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2202-arg1        
        PushF        1.500000                  
        Label        -compare-2202-arg2        
        PushI        19                        
        ConvertF                               
        Label        -compare-2202-sub         
        FSubtract                              
        JumpFZero    -compare-2202-false       
        Jump         -compare-2202-true        
        Label        -compare-2202-true        
        PushI        1                         
        Jump         -compare-2202-join        
        Label        -compare-2202-false       
        PushI        0                         
        Jump         -compare-2202-join        
        Label        -compare-2202-join        
        JumpTrue     -print-boolean-2203-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2203-join  
        Label        -print-boolean-2203-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2203-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2204-arg1        
        PushF        8.000000                  
        Label        -compare-2204-arg2        
        PushI        7                         
        ConvertF                               
        Label        -compare-2204-sub         
        FSubtract                              
        JumpFZero    -compare-2204-false       
        Jump         -compare-2204-true        
        Label        -compare-2204-true        
        PushI        1                         
        Jump         -compare-2204-join        
        Label        -compare-2204-false       
        PushI        0                         
        Jump         -compare-2204-join        
        Label        -compare-2204-join        
        JumpTrue     -print-boolean-2205-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2205-join  
        Label        -print-boolean-2205-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2205-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2206-arg1        
        PushF        1.800000                  
        Label        -compare-2206-arg2        
        PushI        62                        
        ConvertF                               
        Label        -compare-2206-sub         
        FSubtract                              
        JumpFZero    -compare-2206-false       
        Jump         -compare-2206-true        
        Label        -compare-2206-true        
        PushI        1                         
        Jump         -compare-2206-join        
        Label        -compare-2206-false       
        PushI        0                         
        Jump         -compare-2206-join        
        Label        -compare-2206-join        
        JumpTrue     -print-boolean-2207-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2207-join  
        Label        -print-boolean-2207-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2207-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2208-arg1        
        PushF        5.100000                  
        Label        -compare-2208-arg2        
        PushI        30                        
        ConvertF                               
        Label        -compare-2208-sub         
        FSubtract                              
        JumpFZero    -compare-2208-false       
        Jump         -compare-2208-true        
        Label        -compare-2208-true        
        PushI        1                         
        Jump         -compare-2208-join        
        Label        -compare-2208-false       
        PushI        0                         
        Jump         -compare-2208-join        
        Label        -compare-2208-join        
        JumpTrue     -print-boolean-2209-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2209-join  
        Label        -print-boolean-2209-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2209-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2210-arg1        
        PushF        7.900000                  
        Label        -compare-2210-arg2        
        PushI        20                        
        ConvertF                               
        Label        -compare-2210-sub         
        FSubtract                              
        JumpFZero    -compare-2210-false       
        Jump         -compare-2210-true        
        Label        -compare-2210-true        
        PushI        1                         
        Jump         -compare-2210-join        
        Label        -compare-2210-false       
        PushI        0                         
        Jump         -compare-2210-join        
        Label        -compare-2210-join        
        JumpTrue     -print-boolean-2211-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2211-join  
        Label        -print-boolean-2211-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2211-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2212-arg1        
        PushF        4.900000                  
        Label        -compare-2212-arg2        
        PushI        97                        
        ConvertF                               
        Label        -compare-2212-sub         
        FSubtract                              
        JumpFZero    -compare-2212-false       
        Jump         -compare-2212-true        
        Label        -compare-2212-true        
        PushI        1                         
        Jump         -compare-2212-join        
        Label        -compare-2212-false       
        PushI        0                         
        Jump         -compare-2212-join        
        Label        -compare-2212-join        
        JumpTrue     -print-boolean-2213-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2213-join  
        Label        -print-boolean-2213-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2213-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2214-arg1        
        PushF        3.900000                  
        Label        -compare-2214-arg2        
        PushI        71                        
        ConvertF                               
        Label        -compare-2214-sub         
        FSubtract                              
        JumpFZero    -compare-2214-false       
        Jump         -compare-2214-true        
        Label        -compare-2214-true        
        PushI        1                         
        Jump         -compare-2214-join        
        Label        -compare-2214-false       
        PushI        0                         
        Jump         -compare-2214-join        
        Label        -compare-2214-join        
        JumpTrue     -print-boolean-2215-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2215-join  
        Label        -print-boolean-2215-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2215-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2216-arg1        
        PushF        1.100000                  
        Label        -compare-2216-arg2        
        PushI        20                        
        ConvertF                               
        Label        -compare-2216-sub         
        FSubtract                              
        JumpFZero    -compare-2216-false       
        Jump         -compare-2216-true        
        Label        -compare-2216-true        
        PushI        1                         
        Jump         -compare-2216-join        
        Label        -compare-2216-false       
        PushI        0                         
        Jump         -compare-2216-join        
        Label        -compare-2216-join        
        JumpTrue     -print-boolean-2217-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2217-join  
        Label        -print-boolean-2217-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2217-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2218-arg1        
        PushF        2.400000                  
        Label        -compare-2218-arg2        
        PushI        93                        
        ConvertF                               
        Label        -compare-2218-sub         
        FSubtract                              
        JumpFZero    -compare-2218-false       
        Jump         -compare-2218-true        
        Label        -compare-2218-true        
        PushI        1                         
        Jump         -compare-2218-join        
        Label        -compare-2218-false       
        PushI        0                         
        Jump         -compare-2218-join        
        Label        -compare-2218-join        
        JumpTrue     -print-boolean-2219-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2219-join  
        Label        -print-boolean-2219-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2219-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2220-arg1        
        PushF        2.400000                  
        Label        -compare-2220-arg2        
        PushI        45                        
        ConvertF                               
        Label        -compare-2220-sub         
        FSubtract                              
        JumpFZero    -compare-2220-false       
        Jump         -compare-2220-true        
        Label        -compare-2220-true        
        PushI        1                         
        Jump         -compare-2220-join        
        Label        -compare-2220-false       
        PushI        0                         
        Jump         -compare-2220-join        
        Label        -compare-2220-join        
        JumpTrue     -print-boolean-2221-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2221-join  
        Label        -print-boolean-2221-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2221-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2222-arg1        
        PushI        71                        
        ConvertF                               
        Label        -compare-2222-arg2        
        PushI        83                        
        ConvertF                               
        Label        -compare-2222-sub         
        FSubtract                              
        JumpFZero    -compare-2222-false       
        Jump         -compare-2222-true        
        Label        -compare-2222-true        
        PushI        1                         
        Jump         -compare-2222-join        
        Label        -compare-2222-false       
        PushI        0                         
        Jump         -compare-2222-join        
        Label        -compare-2222-join        
        JumpTrue     -print-boolean-2223-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2223-join  
        Label        -print-boolean-2223-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2223-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2224-arg1        
        PushI        99                        
        ConvertF                               
        Label        -compare-2224-arg2        
        PushI        42                        
        ConvertF                               
        Label        -compare-2224-sub         
        FSubtract                              
        JumpFZero    -compare-2224-false       
        Jump         -compare-2224-true        
        Label        -compare-2224-true        
        PushI        1                         
        Jump         -compare-2224-join        
        Label        -compare-2224-false       
        PushI        0                         
        Jump         -compare-2224-join        
        Label        -compare-2224-join        
        JumpTrue     -print-boolean-2225-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2225-join  
        Label        -print-boolean-2225-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2225-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2226-arg1        
        PushI        10                        
        ConvertF                               
        Label        -compare-2226-arg2        
        PushI        96                        
        ConvertF                               
        Label        -compare-2226-sub         
        FSubtract                              
        JumpFZero    -compare-2226-false       
        Jump         -compare-2226-true        
        Label        -compare-2226-true        
        PushI        1                         
        Jump         -compare-2226-join        
        Label        -compare-2226-false       
        PushI        0                         
        Jump         -compare-2226-join        
        Label        -compare-2226-join        
        JumpTrue     -print-boolean-2227-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2227-join  
        Label        -print-boolean-2227-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2227-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2228-arg1        
        PushI        84                        
        ConvertF                               
        Label        -compare-2228-arg2        
        PushI        61                        
        ConvertF                               
        Label        -compare-2228-sub         
        FSubtract                              
        JumpFZero    -compare-2228-false       
        Jump         -compare-2228-true        
        Label        -compare-2228-true        
        PushI        1                         
        Jump         -compare-2228-join        
        Label        -compare-2228-false       
        PushI        0                         
        Jump         -compare-2228-join        
        Label        -compare-2228-join        
        JumpTrue     -print-boolean-2229-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2229-join  
        Label        -print-boolean-2229-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2229-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2230-arg1        
        PushI        97                        
        ConvertF                               
        Label        -compare-2230-arg2        
        PushI        53                        
        ConvertF                               
        Label        -compare-2230-sub         
        FSubtract                              
        JumpFZero    -compare-2230-false       
        Jump         -compare-2230-true        
        Label        -compare-2230-true        
        PushI        1                         
        Jump         -compare-2230-join        
        Label        -compare-2230-false       
        PushI        0                         
        Jump         -compare-2230-join        
        Label        -compare-2230-join        
        JumpTrue     -print-boolean-2231-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2231-join  
        Label        -print-boolean-2231-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2231-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2232-arg1        
        PushI        48                        
        ConvertF                               
        Label        -compare-2232-arg2        
        PushI        50                        
        ConvertF                               
        Label        -compare-2232-sub         
        FSubtract                              
        JumpFZero    -compare-2232-false       
        Jump         -compare-2232-true        
        Label        -compare-2232-true        
        PushI        1                         
        Jump         -compare-2232-join        
        Label        -compare-2232-false       
        PushI        0                         
        Jump         -compare-2232-join        
        Label        -compare-2232-join        
        JumpTrue     -print-boolean-2233-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2233-join  
        Label        -print-boolean-2233-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2233-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2234-arg1        
        PushI        26                        
        ConvertF                               
        Label        -compare-2234-arg2        
        PushI        95                        
        ConvertF                               
        Label        -compare-2234-sub         
        FSubtract                              
        JumpFZero    -compare-2234-false       
        Jump         -compare-2234-true        
        Label        -compare-2234-true        
        PushI        1                         
        Jump         -compare-2234-join        
        Label        -compare-2234-false       
        PushI        0                         
        Jump         -compare-2234-join        
        Label        -compare-2234-join        
        JumpTrue     -print-boolean-2235-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2235-join  
        Label        -print-boolean-2235-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2235-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2236-arg1        
        PushI        77                        
        ConvertF                               
        Label        -compare-2236-arg2        
        PushI        27                        
        ConvertF                               
        Label        -compare-2236-sub         
        FSubtract                              
        JumpFZero    -compare-2236-false       
        Jump         -compare-2236-true        
        Label        -compare-2236-true        
        PushI        1                         
        Jump         -compare-2236-join        
        Label        -compare-2236-false       
        PushI        0                         
        Jump         -compare-2236-join        
        Label        -compare-2236-join        
        JumpTrue     -print-boolean-2237-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2237-join  
        Label        -print-boolean-2237-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2237-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2238-arg1        
        PushI        80                        
        ConvertF                               
        Label        -compare-2238-arg2        
        PushI        15                        
        ConvertF                               
        Label        -compare-2238-sub         
        FSubtract                              
        JumpFZero    -compare-2238-false       
        Jump         -compare-2238-true        
        Label        -compare-2238-true        
        PushI        1                         
        Jump         -compare-2238-join        
        Label        -compare-2238-false       
        PushI        0                         
        Jump         -compare-2238-join        
        Label        -compare-2238-join        
        JumpTrue     -print-boolean-2239-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2239-join  
        Label        -print-boolean-2239-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2239-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2240-arg1        
        PushI        83                        
        ConvertF                               
        Label        -compare-2240-arg2        
        PushI        86                        
        ConvertF                               
        Label        -compare-2240-sub         
        FSubtract                              
        JumpFZero    -compare-2240-false       
        Jump         -compare-2240-true        
        Label        -compare-2240-true        
        PushI        1                         
        Jump         -compare-2240-join        
        Label        -compare-2240-false       
        PushI        0                         
        Jump         -compare-2240-join        
        Label        -compare-2240-join        
        JumpTrue     -print-boolean-2241-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2241-join  
        Label        -print-boolean-2241-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2241-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2242-arg1        
        PushI        89                        
        ConvertF                               
        Label        -compare-2242-arg2        
        PushI        87                        
        ConvertF                               
        Label        -compare-2242-sub         
        FSubtract                              
        JumpFZero    -compare-2242-false       
        Jump         -compare-2242-true        
        Label        -compare-2242-true        
        PushI        1                         
        Jump         -compare-2242-join        
        Label        -compare-2242-false       
        PushI        0                         
        Jump         -compare-2242-join        
        Label        -compare-2242-join        
        JumpTrue     -print-boolean-2243-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2243-join  
        Label        -print-boolean-2243-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2243-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2244-arg1        
        PushI        21                        
        ConvertF                               
        Label        -compare-2244-arg2        
        PushI        63                        
        ConvertF                               
        Label        -compare-2244-sub         
        FSubtract                              
        JumpFZero    -compare-2244-false       
        Jump         -compare-2244-true        
        Label        -compare-2244-true        
        PushI        1                         
        Jump         -compare-2244-join        
        Label        -compare-2244-false       
        PushI        0                         
        Jump         -compare-2244-join        
        Label        -compare-2244-join        
        JumpTrue     -print-boolean-2245-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2245-join  
        Label        -print-boolean-2245-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2245-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
