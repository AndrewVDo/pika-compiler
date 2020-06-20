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
        Label        -compare-2102-arg1        
        PushI        34                        
        ConvertF                               
        Label        -compare-2102-arg2        
        PushF        5.900000                  
        Label        -compare-2102-sub         
        FSubtract                              
        JumpFPos     -compare-2102-false       
        Jump         -compare-2102-true        
        Label        -compare-2102-true        
        PushI        1                         
        Jump         -compare-2102-join        
        Label        -compare-2102-false       
        PushI        0                         
        Jump         -compare-2102-join        
        Label        -compare-2102-join        
        JumpTrue     -print-boolean-2103-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2103-join  
        Label        -print-boolean-2103-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2103-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2104-arg1        
        PushI        47                        
        ConvertF                               
        Label        -compare-2104-arg2        
        PushF        9.700000                  
        Label        -compare-2104-sub         
        FSubtract                              
        JumpFPos     -compare-2104-false       
        Jump         -compare-2104-true        
        Label        -compare-2104-true        
        PushI        1                         
        Jump         -compare-2104-join        
        Label        -compare-2104-false       
        PushI        0                         
        Jump         -compare-2104-join        
        Label        -compare-2104-join        
        JumpTrue     -print-boolean-2105-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2105-join  
        Label        -print-boolean-2105-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2105-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2106-arg1        
        PushI        27                        
        ConvertF                               
        Label        -compare-2106-arg2        
        PushF        2.400000                  
        Label        -compare-2106-sub         
        FSubtract                              
        JumpFPos     -compare-2106-false       
        Jump         -compare-2106-true        
        Label        -compare-2106-true        
        PushI        1                         
        Jump         -compare-2106-join        
        Label        -compare-2106-false       
        PushI        0                         
        Jump         -compare-2106-join        
        Label        -compare-2106-join        
        JumpTrue     -print-boolean-2107-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2107-join  
        Label        -print-boolean-2107-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2107-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2108-arg1        
        PushI        69                        
        ConvertF                               
        Label        -compare-2108-arg2        
        PushF        2.900000                  
        Label        -compare-2108-sub         
        FSubtract                              
        JumpFPos     -compare-2108-false       
        Jump         -compare-2108-true        
        Label        -compare-2108-true        
        PushI        1                         
        Jump         -compare-2108-join        
        Label        -compare-2108-false       
        PushI        0                         
        Jump         -compare-2108-join        
        Label        -compare-2108-join        
        JumpTrue     -print-boolean-2109-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2109-join  
        Label        -print-boolean-2109-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2109-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2110-arg1        
        PushI        20                        
        ConvertF                               
        Label        -compare-2110-arg2        
        PushF        5.200000                  
        Label        -compare-2110-sub         
        FSubtract                              
        JumpFPos     -compare-2110-false       
        Jump         -compare-2110-true        
        Label        -compare-2110-true        
        PushI        1                         
        Jump         -compare-2110-join        
        Label        -compare-2110-false       
        PushI        0                         
        Jump         -compare-2110-join        
        Label        -compare-2110-join        
        JumpTrue     -print-boolean-2111-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2111-join  
        Label        -print-boolean-2111-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2111-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2112-arg1        
        PushI        4                         
        ConvertF                               
        Label        -compare-2112-arg2        
        PushF        1.500000                  
        Label        -compare-2112-sub         
        FSubtract                              
        JumpFPos     -compare-2112-false       
        Jump         -compare-2112-true        
        Label        -compare-2112-true        
        PushI        1                         
        Jump         -compare-2112-join        
        Label        -compare-2112-false       
        PushI        0                         
        Jump         -compare-2112-join        
        Label        -compare-2112-join        
        JumpTrue     -print-boolean-2113-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2113-join  
        Label        -print-boolean-2113-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2113-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2114-arg1        
        PushI        20                        
        ConvertF                               
        Label        -compare-2114-arg2        
        PushF        2.500000                  
        Label        -compare-2114-sub         
        FSubtract                              
        JumpFPos     -compare-2114-false       
        Jump         -compare-2114-true        
        Label        -compare-2114-true        
        PushI        1                         
        Jump         -compare-2114-join        
        Label        -compare-2114-false       
        PushI        0                         
        Jump         -compare-2114-join        
        Label        -compare-2114-join        
        JumpTrue     -print-boolean-2115-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2115-join  
        Label        -print-boolean-2115-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2115-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2116-arg1        
        PushI        60                        
        ConvertF                               
        Label        -compare-2116-arg2        
        PushF        3.600000                  
        Label        -compare-2116-sub         
        FSubtract                              
        JumpFPos     -compare-2116-false       
        Jump         -compare-2116-true        
        Label        -compare-2116-true        
        PushI        1                         
        Jump         -compare-2116-join        
        Label        -compare-2116-false       
        PushI        0                         
        Jump         -compare-2116-join        
        Label        -compare-2116-join        
        JumpTrue     -print-boolean-2117-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2117-join  
        Label        -print-boolean-2117-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2117-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2118-arg1        
        PushI        29                        
        ConvertF                               
        Label        -compare-2118-arg2        
        PushF        4.300000                  
        Label        -compare-2118-sub         
        FSubtract                              
        JumpFPos     -compare-2118-false       
        Jump         -compare-2118-true        
        Label        -compare-2118-true        
        PushI        1                         
        Jump         -compare-2118-join        
        Label        -compare-2118-false       
        PushI        0                         
        Jump         -compare-2118-join        
        Label        -compare-2118-join        
        JumpTrue     -print-boolean-2119-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2119-join  
        Label        -print-boolean-2119-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2119-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2120-arg1        
        PushI        91                        
        ConvertF                               
        Label        -compare-2120-arg2        
        PushF        5.000000                  
        Label        -compare-2120-sub         
        FSubtract                              
        JumpFPos     -compare-2120-false       
        Jump         -compare-2120-true        
        Label        -compare-2120-true        
        PushI        1                         
        Jump         -compare-2120-join        
        Label        -compare-2120-false       
        PushI        0                         
        Jump         -compare-2120-join        
        Label        -compare-2120-join        
        JumpTrue     -print-boolean-2121-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2121-join  
        Label        -print-boolean-2121-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2121-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2122-arg1        
        PushI        92                        
        ConvertF                               
        Label        -compare-2122-arg2        
        PushF        3.200000                  
        Label        -compare-2122-sub         
        FSubtract                              
        JumpFPos     -compare-2122-false       
        Jump         -compare-2122-true        
        Label        -compare-2122-true        
        PushI        1                         
        Jump         -compare-2122-join        
        Label        -compare-2122-false       
        PushI        0                         
        Jump         -compare-2122-join        
        Label        -compare-2122-join        
        JumpTrue     -print-boolean-2123-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2123-join  
        Label        -print-boolean-2123-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2123-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2124-arg1        
        PushI        59                        
        ConvertF                               
        Label        -compare-2124-arg2        
        PushF        4.400000                  
        Label        -compare-2124-sub         
        FSubtract                              
        JumpFPos     -compare-2124-false       
        Jump         -compare-2124-true        
        Label        -compare-2124-true        
        PushI        1                         
        Jump         -compare-2124-join        
        Label        -compare-2124-false       
        PushI        0                         
        Jump         -compare-2124-join        
        Label        -compare-2124-join        
        JumpTrue     -print-boolean-2125-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2125-join  
        Label        -print-boolean-2125-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2125-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2126-arg1        
        PushF        4.600000                  
        Label        -compare-2126-arg2        
        PushI        33                        
        ConvertF                               
        Label        -compare-2126-sub         
        FSubtract                              
        JumpFPos     -compare-2126-false       
        Jump         -compare-2126-true        
        Label        -compare-2126-true        
        PushI        1                         
        Jump         -compare-2126-join        
        Label        -compare-2126-false       
        PushI        0                         
        Jump         -compare-2126-join        
        Label        -compare-2126-join        
        JumpTrue     -print-boolean-2127-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2127-join  
        Label        -print-boolean-2127-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2127-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2128-arg1        
        PushF        8.300000                  
        Label        -compare-2128-arg2        
        PushI        42                        
        ConvertF                               
        Label        -compare-2128-sub         
        FSubtract                              
        JumpFPos     -compare-2128-false       
        Jump         -compare-2128-true        
        Label        -compare-2128-true        
        PushI        1                         
        Jump         -compare-2128-join        
        Label        -compare-2128-false       
        PushI        0                         
        Jump         -compare-2128-join        
        Label        -compare-2128-join        
        JumpTrue     -print-boolean-2129-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2129-join  
        Label        -print-boolean-2129-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2129-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2130-arg1        
        PushF        2.000000                  
        Label        -compare-2130-arg2        
        PushI        38                        
        ConvertF                               
        Label        -compare-2130-sub         
        FSubtract                              
        JumpFPos     -compare-2130-false       
        Jump         -compare-2130-true        
        Label        -compare-2130-true        
        PushI        1                         
        Jump         -compare-2130-join        
        Label        -compare-2130-false       
        PushI        0                         
        Jump         -compare-2130-join        
        Label        -compare-2130-join        
        JumpTrue     -print-boolean-2131-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2131-join  
        Label        -print-boolean-2131-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2131-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2132-arg1        
        PushF        9.800000                  
        Label        -compare-2132-arg2        
        PushI        40                        
        ConvertF                               
        Label        -compare-2132-sub         
        FSubtract                              
        JumpFPos     -compare-2132-false       
        Jump         -compare-2132-true        
        Label        -compare-2132-true        
        PushI        1                         
        Jump         -compare-2132-join        
        Label        -compare-2132-false       
        PushI        0                         
        Jump         -compare-2132-join        
        Label        -compare-2132-join        
        JumpTrue     -print-boolean-2133-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2133-join  
        Label        -print-boolean-2133-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2133-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2134-arg1        
        PushF        1.600000                  
        Label        -compare-2134-arg2        
        PushI        54                        
        ConvertF                               
        Label        -compare-2134-sub         
        FSubtract                              
        JumpFPos     -compare-2134-false       
        Jump         -compare-2134-true        
        Label        -compare-2134-true        
        PushI        1                         
        Jump         -compare-2134-join        
        Label        -compare-2134-false       
        PushI        0                         
        Jump         -compare-2134-join        
        Label        -compare-2134-join        
        JumpTrue     -print-boolean-2135-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2135-join  
        Label        -print-boolean-2135-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2135-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2136-arg1        
        PushF        1.100000                  
        Label        -compare-2136-arg2        
        PushI        50                        
        ConvertF                               
        Label        -compare-2136-sub         
        FSubtract                              
        JumpFPos     -compare-2136-false       
        Jump         -compare-2136-true        
        Label        -compare-2136-true        
        PushI        1                         
        Jump         -compare-2136-join        
        Label        -compare-2136-false       
        PushI        0                         
        Jump         -compare-2136-join        
        Label        -compare-2136-join        
        JumpTrue     -print-boolean-2137-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2137-join  
        Label        -print-boolean-2137-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2137-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2138-arg1        
        PushF        2.200000                  
        Label        -compare-2138-arg2        
        PushI        41                        
        ConvertF                               
        Label        -compare-2138-sub         
        FSubtract                              
        JumpFPos     -compare-2138-false       
        Jump         -compare-2138-true        
        Label        -compare-2138-true        
        PushI        1                         
        Jump         -compare-2138-join        
        Label        -compare-2138-false       
        PushI        0                         
        Jump         -compare-2138-join        
        Label        -compare-2138-join        
        JumpTrue     -print-boolean-2139-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2139-join  
        Label        -print-boolean-2139-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2139-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2140-arg1        
        PushF        4.600000                  
        Label        -compare-2140-arg2        
        PushI        89                        
        ConvertF                               
        Label        -compare-2140-sub         
        FSubtract                              
        JumpFPos     -compare-2140-false       
        Jump         -compare-2140-true        
        Label        -compare-2140-true        
        PushI        1                         
        Jump         -compare-2140-join        
        Label        -compare-2140-false       
        PushI        0                         
        Jump         -compare-2140-join        
        Label        -compare-2140-join        
        JumpTrue     -print-boolean-2141-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2141-join  
        Label        -print-boolean-2141-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2141-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2142-arg1        
        PushF        7.900000                  
        Label        -compare-2142-arg2        
        PushI        48                        
        ConvertF                               
        Label        -compare-2142-sub         
        FSubtract                              
        JumpFPos     -compare-2142-false       
        Jump         -compare-2142-true        
        Label        -compare-2142-true        
        PushI        1                         
        Jump         -compare-2142-join        
        Label        -compare-2142-false       
        PushI        0                         
        Jump         -compare-2142-join        
        Label        -compare-2142-join        
        JumpTrue     -print-boolean-2143-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2143-join  
        Label        -print-boolean-2143-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2143-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2144-arg1        
        PushF        4.900000                  
        Label        -compare-2144-arg2        
        PushI        66                        
        ConvertF                               
        Label        -compare-2144-sub         
        FSubtract                              
        JumpFPos     -compare-2144-false       
        Jump         -compare-2144-true        
        Label        -compare-2144-true        
        PushI        1                         
        Jump         -compare-2144-join        
        Label        -compare-2144-false       
        PushI        0                         
        Jump         -compare-2144-join        
        Label        -compare-2144-join        
        JumpTrue     -print-boolean-2145-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2145-join  
        Label        -print-boolean-2145-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2145-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2146-arg1        
        PushF        1.500000                  
        Label        -compare-2146-arg2        
        PushI        43                        
        ConvertF                               
        Label        -compare-2146-sub         
        FSubtract                              
        JumpFPos     -compare-2146-false       
        Jump         -compare-2146-true        
        Label        -compare-2146-true        
        PushI        1                         
        Jump         -compare-2146-join        
        Label        -compare-2146-false       
        PushI        0                         
        Jump         -compare-2146-join        
        Label        -compare-2146-join        
        JumpTrue     -print-boolean-2147-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2147-join  
        Label        -print-boolean-2147-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2147-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2148-arg1        
        PushF        5.100000                  
        Label        -compare-2148-arg2        
        PushI        60                        
        ConvertF                               
        Label        -compare-2148-sub         
        FSubtract                              
        JumpFPos     -compare-2148-false       
        Jump         -compare-2148-true        
        Label        -compare-2148-true        
        PushI        1                         
        Jump         -compare-2148-join        
        Label        -compare-2148-false       
        PushI        0                         
        Jump         -compare-2148-join        
        Label        -compare-2148-join        
        JumpTrue     -print-boolean-2149-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2149-join  
        Label        -print-boolean-2149-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2149-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2150-arg1        
        PushI        42                        
        ConvertF                               
        Label        -compare-2150-arg2        
        PushI        74                        
        ConvertF                               
        Label        -compare-2150-sub         
        FSubtract                              
        JumpFPos     -compare-2150-false       
        Jump         -compare-2150-true        
        Label        -compare-2150-true        
        PushI        1                         
        Jump         -compare-2150-join        
        Label        -compare-2150-false       
        PushI        0                         
        Jump         -compare-2150-join        
        Label        -compare-2150-join        
        JumpTrue     -print-boolean-2151-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2151-join  
        Label        -print-boolean-2151-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2151-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2152-arg1        
        PushI        1                         
        ConvertF                               
        Label        -compare-2152-arg2        
        PushI        9                         
        ConvertF                               
        Label        -compare-2152-sub         
        FSubtract                              
        JumpFPos     -compare-2152-false       
        Jump         -compare-2152-true        
        Label        -compare-2152-true        
        PushI        1                         
        Jump         -compare-2152-join        
        Label        -compare-2152-false       
        PushI        0                         
        Jump         -compare-2152-join        
        Label        -compare-2152-join        
        JumpTrue     -print-boolean-2153-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2153-join  
        Label        -print-boolean-2153-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2153-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2154-arg1        
        PushI        38                        
        ConvertF                               
        Label        -compare-2154-arg2        
        PushI        92                        
        ConvertF                               
        Label        -compare-2154-sub         
        FSubtract                              
        JumpFPos     -compare-2154-false       
        Jump         -compare-2154-true        
        Label        -compare-2154-true        
        PushI        1                         
        Jump         -compare-2154-join        
        Label        -compare-2154-false       
        PushI        0                         
        Jump         -compare-2154-join        
        Label        -compare-2154-join        
        JumpTrue     -print-boolean-2155-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2155-join  
        Label        -print-boolean-2155-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2155-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2156-arg1        
        PushI        53                        
        ConvertF                               
        Label        -compare-2156-arg2        
        PushI        93                        
        ConvertF                               
        Label        -compare-2156-sub         
        FSubtract                              
        JumpFPos     -compare-2156-false       
        Jump         -compare-2156-true        
        Label        -compare-2156-true        
        PushI        1                         
        Jump         -compare-2156-join        
        Label        -compare-2156-false       
        PushI        0                         
        Jump         -compare-2156-join        
        Label        -compare-2156-join        
        JumpTrue     -print-boolean-2157-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2157-join  
        Label        -print-boolean-2157-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2157-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2158-arg1        
        PushI        56                        
        ConvertF                               
        Label        -compare-2158-arg2        
        PushI        35                        
        ConvertF                               
        Label        -compare-2158-sub         
        FSubtract                              
        JumpFPos     -compare-2158-false       
        Jump         -compare-2158-true        
        Label        -compare-2158-true        
        PushI        1                         
        Jump         -compare-2158-join        
        Label        -compare-2158-false       
        PushI        0                         
        Jump         -compare-2158-join        
        Label        -compare-2158-join        
        JumpTrue     -print-boolean-2159-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2159-join  
        Label        -print-boolean-2159-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2159-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2160-arg1        
        PushI        30                        
        ConvertF                               
        Label        -compare-2160-arg2        
        PushI        31                        
        ConvertF                               
        Label        -compare-2160-sub         
        FSubtract                              
        JumpFPos     -compare-2160-false       
        Jump         -compare-2160-true        
        Label        -compare-2160-true        
        PushI        1                         
        Jump         -compare-2160-join        
        Label        -compare-2160-false       
        PushI        0                         
        Jump         -compare-2160-join        
        Label        -compare-2160-join        
        JumpTrue     -print-boolean-2161-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2161-join  
        Label        -print-boolean-2161-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2161-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2162-arg1        
        PushI        6                         
        ConvertF                               
        Label        -compare-2162-arg2        
        PushI        81                        
        ConvertF                               
        Label        -compare-2162-sub         
        FSubtract                              
        JumpFPos     -compare-2162-false       
        Jump         -compare-2162-true        
        Label        -compare-2162-true        
        PushI        1                         
        Jump         -compare-2162-join        
        Label        -compare-2162-false       
        PushI        0                         
        Jump         -compare-2162-join        
        Label        -compare-2162-join        
        JumpTrue     -print-boolean-2163-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2163-join  
        Label        -print-boolean-2163-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2163-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2164-arg1        
        PushI        40                        
        ConvertF                               
        Label        -compare-2164-arg2        
        PushI        66                        
        ConvertF                               
        Label        -compare-2164-sub         
        FSubtract                              
        JumpFPos     -compare-2164-false       
        Jump         -compare-2164-true        
        Label        -compare-2164-true        
        PushI        1                         
        Jump         -compare-2164-join        
        Label        -compare-2164-false       
        PushI        0                         
        Jump         -compare-2164-join        
        Label        -compare-2164-join        
        JumpTrue     -print-boolean-2165-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2165-join  
        Label        -print-boolean-2165-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2165-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2166-arg1        
        PushI        70                        
        ConvertF                               
        Label        -compare-2166-arg2        
        PushI        11                        
        ConvertF                               
        Label        -compare-2166-sub         
        FSubtract                              
        JumpFPos     -compare-2166-false       
        Jump         -compare-2166-true        
        Label        -compare-2166-true        
        PushI        1                         
        Jump         -compare-2166-join        
        Label        -compare-2166-false       
        PushI        0                         
        Jump         -compare-2166-join        
        Label        -compare-2166-join        
        JumpTrue     -print-boolean-2167-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2167-join  
        Label        -print-boolean-2167-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2167-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2168-arg1        
        PushI        70                        
        ConvertF                               
        Label        -compare-2168-arg2        
        PushI        15                        
        ConvertF                               
        Label        -compare-2168-sub         
        FSubtract                              
        JumpFPos     -compare-2168-false       
        Jump         -compare-2168-true        
        Label        -compare-2168-true        
        PushI        1                         
        Jump         -compare-2168-join        
        Label        -compare-2168-false       
        PushI        0                         
        Jump         -compare-2168-join        
        Label        -compare-2168-join        
        JumpTrue     -print-boolean-2169-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2169-join  
        Label        -print-boolean-2169-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2169-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2170-arg1        
        PushI        78                        
        ConvertF                               
        Label        -compare-2170-arg2        
        PushI        27                        
        ConvertF                               
        Label        -compare-2170-sub         
        FSubtract                              
        JumpFPos     -compare-2170-false       
        Jump         -compare-2170-true        
        Label        -compare-2170-true        
        PushI        1                         
        Jump         -compare-2170-join        
        Label        -compare-2170-false       
        PushI        0                         
        Jump         -compare-2170-join        
        Label        -compare-2170-join        
        JumpTrue     -print-boolean-2171-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2171-join  
        Label        -print-boolean-2171-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2171-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2172-arg1        
        PushI        94                        
        ConvertF                               
        Label        -compare-2172-arg2        
        PushI        32                        
        ConvertF                               
        Label        -compare-2172-sub         
        FSubtract                              
        JumpFPos     -compare-2172-false       
        Jump         -compare-2172-true        
        Label        -compare-2172-true        
        PushI        1                         
        Jump         -compare-2172-join        
        Label        -compare-2172-false       
        PushI        0                         
        Jump         -compare-2172-join        
        Label        -compare-2172-join        
        JumpTrue     -print-boolean-2173-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2173-join  
        Label        -print-boolean-2173-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2173-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
