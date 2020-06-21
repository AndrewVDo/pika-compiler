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
        Label        -compare-2246-arg1        
        PushI        117                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2246-arg2        
        PushI        92                        
        Label        -compare-2246-sub         
        Subtract                               
        JumpFalse    -compare-2246-true        
        Jump         -compare-2246-false       
        Label        -compare-2246-true        
        PushI        1                         
        Jump         -compare-2246-join        
        Label        -compare-2246-false       
        PushI        0                         
        Jump         -compare-2246-join        
        Label        -compare-2246-join        
        JumpTrue     -print-boolean-2247-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2247-join  
        Label        -print-boolean-2247-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2247-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2248-arg1        
        PushI        107                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2248-arg2        
        PushI        38                        
        Label        -compare-2248-sub         
        Subtract                               
        JumpFalse    -compare-2248-true        
        Jump         -compare-2248-false       
        Label        -compare-2248-true        
        PushI        1                         
        Jump         -compare-2248-join        
        Label        -compare-2248-false       
        PushI        0                         
        Jump         -compare-2248-join        
        Label        -compare-2248-join        
        JumpTrue     -print-boolean-2249-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2249-join  
        Label        -print-boolean-2249-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2249-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2250-arg1        
        PushI        47                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2250-arg2        
        PushI        8                         
        Label        -compare-2250-sub         
        Subtract                               
        JumpFalse    -compare-2250-true        
        Jump         -compare-2250-false       
        Label        -compare-2250-true        
        PushI        1                         
        Jump         -compare-2250-join        
        Label        -compare-2250-false       
        PushI        0                         
        Jump         -compare-2250-join        
        Label        -compare-2250-join        
        JumpTrue     -print-boolean-2251-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2251-join  
        Label        -print-boolean-2251-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2251-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2252-arg1        
        PushI        97                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2252-arg2        
        PushI        12                        
        Label        -compare-2252-sub         
        Subtract                               
        JumpFalse    -compare-2252-true        
        Jump         -compare-2252-false       
        Label        -compare-2252-true        
        PushI        1                         
        Jump         -compare-2252-join        
        Label        -compare-2252-false       
        PushI        0                         
        Jump         -compare-2252-join        
        Label        -compare-2252-join        
        JumpTrue     -print-boolean-2253-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2253-join  
        Label        -print-boolean-2253-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2253-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2254-arg1        
        PushI        124                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2254-arg2        
        PushI        56                        
        Label        -compare-2254-sub         
        Subtract                               
        JumpFalse    -compare-2254-true        
        Jump         -compare-2254-false       
        Label        -compare-2254-true        
        PushI        1                         
        Jump         -compare-2254-join        
        Label        -compare-2254-false       
        PushI        0                         
        Jump         -compare-2254-join        
        Label        -compare-2254-join        
        JumpTrue     -print-boolean-2255-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2255-join  
        Label        -print-boolean-2255-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2255-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2256-arg1        
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2256-arg2        
        PushI        1                         
        Label        -compare-2256-sub         
        Subtract                               
        JumpFalse    -compare-2256-true        
        Jump         -compare-2256-false       
        Label        -compare-2256-true        
        PushI        1                         
        Jump         -compare-2256-join        
        Label        -compare-2256-false       
        PushI        0                         
        Jump         -compare-2256-join        
        Label        -compare-2256-join        
        JumpTrue     -print-boolean-2257-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2257-join  
        Label        -print-boolean-2257-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2257-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2258-arg1        
        PushI        106                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2258-arg2        
        PushI        30                        
        Label        -compare-2258-sub         
        Subtract                               
        JumpFalse    -compare-2258-true        
        Jump         -compare-2258-false       
        Label        -compare-2258-true        
        PushI        1                         
        Jump         -compare-2258-join        
        Label        -compare-2258-false       
        PushI        0                         
        Jump         -compare-2258-join        
        Label        -compare-2258-join        
        JumpTrue     -print-boolean-2259-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2259-join  
        Label        -print-boolean-2259-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2259-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2260-arg1        
        PushI        108                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2260-arg2        
        PushI        37                        
        Label        -compare-2260-sub         
        Subtract                               
        JumpFalse    -compare-2260-true        
        Jump         -compare-2260-false       
        Label        -compare-2260-true        
        PushI        1                         
        Jump         -compare-2260-join        
        Label        -compare-2260-false       
        PushI        0                         
        Jump         -compare-2260-join        
        Label        -compare-2260-join        
        JumpTrue     -print-boolean-2261-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2261-join  
        Label        -print-boolean-2261-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2261-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2262-arg1        
        PushI        93                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2262-arg2        
        PushI        32                        
        Label        -compare-2262-sub         
        Subtract                               
        JumpFalse    -compare-2262-true        
        Jump         -compare-2262-false       
        Label        -compare-2262-true        
        PushI        1                         
        Jump         -compare-2262-join        
        Label        -compare-2262-false       
        PushI        0                         
        Jump         -compare-2262-join        
        Label        -compare-2262-join        
        JumpTrue     -print-boolean-2263-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2263-join  
        Label        -print-boolean-2263-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2263-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2264-arg1        
        PushI        54                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2264-arg2        
        PushI        46                        
        Label        -compare-2264-sub         
        Subtract                               
        JumpFalse    -compare-2264-true        
        Jump         -compare-2264-false       
        Label        -compare-2264-true        
        PushI        1                         
        Jump         -compare-2264-join        
        Label        -compare-2264-false       
        PushI        0                         
        Jump         -compare-2264-join        
        Label        -compare-2264-join        
        JumpTrue     -print-boolean-2265-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2265-join  
        Label        -print-boolean-2265-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2265-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2266-arg1        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2266-arg2        
        PushI        91                        
        Label        -compare-2266-sub         
        Subtract                               
        JumpFalse    -compare-2266-true        
        Jump         -compare-2266-false       
        Label        -compare-2266-true        
        PushI        1                         
        Jump         -compare-2266-join        
        Label        -compare-2266-false       
        PushI        0                         
        Jump         -compare-2266-join        
        Label        -compare-2266-join        
        JumpTrue     -print-boolean-2267-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2267-join  
        Label        -print-boolean-2267-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2267-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2268-arg1        
        PushI        64                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2268-arg2        
        PushI        26                        
        Label        -compare-2268-sub         
        Subtract                               
        JumpFalse    -compare-2268-true        
        Jump         -compare-2268-false       
        Label        -compare-2268-true        
        PushI        1                         
        Jump         -compare-2268-join        
        Label        -compare-2268-false       
        PushI        0                         
        Jump         -compare-2268-join        
        Label        -compare-2268-join        
        JumpTrue     -print-boolean-2269-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2269-join  
        Label        -print-boolean-2269-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2269-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2270-arg1        
        PushI        97                        
        Label        -compare-2270-arg2        
        PushI        117                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2270-sub         
        Subtract                               
        JumpFalse    -compare-2270-true        
        Jump         -compare-2270-false       
        Label        -compare-2270-true        
        PushI        1                         
        Jump         -compare-2270-join        
        Label        -compare-2270-false       
        PushI        0                         
        Jump         -compare-2270-join        
        Label        -compare-2270-join        
        JumpTrue     -print-boolean-2271-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2271-join  
        Label        -print-boolean-2271-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2271-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2272-arg1        
        PushI        16                        
        Label        -compare-2272-arg2        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2272-sub         
        Subtract                               
        JumpFalse    -compare-2272-true        
        Jump         -compare-2272-false       
        Label        -compare-2272-true        
        PushI        1                         
        Jump         -compare-2272-join        
        Label        -compare-2272-false       
        PushI        0                         
        Jump         -compare-2272-join        
        Label        -compare-2272-join        
        JumpTrue     -print-boolean-2273-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2273-join  
        Label        -print-boolean-2273-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2273-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2274-arg1        
        PushI        15                        
        Label        -compare-2274-arg2        
        PushI        62                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2274-sub         
        Subtract                               
        JumpFalse    -compare-2274-true        
        Jump         -compare-2274-false       
        Label        -compare-2274-true        
        PushI        1                         
        Jump         -compare-2274-join        
        Label        -compare-2274-false       
        PushI        0                         
        Jump         -compare-2274-join        
        Label        -compare-2274-join        
        JumpTrue     -print-boolean-2275-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2275-join  
        Label        -print-boolean-2275-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2275-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2276-arg1        
        PushI        74                        
        Label        -compare-2276-arg2        
        PushI        55                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2276-sub         
        Subtract                               
        JumpFalse    -compare-2276-true        
        Jump         -compare-2276-false       
        Label        -compare-2276-true        
        PushI        1                         
        Jump         -compare-2276-join        
        Label        -compare-2276-false       
        PushI        0                         
        Jump         -compare-2276-join        
        Label        -compare-2276-join        
        JumpTrue     -print-boolean-2277-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2277-join  
        Label        -print-boolean-2277-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2277-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2278-arg1        
        PushI        14                        
        Label        -compare-2278-arg2        
        PushI        56                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2278-sub         
        Subtract                               
        JumpFalse    -compare-2278-true        
        Jump         -compare-2278-false       
        Label        -compare-2278-true        
        PushI        1                         
        Jump         -compare-2278-join        
        Label        -compare-2278-false       
        PushI        0                         
        Jump         -compare-2278-join        
        Label        -compare-2278-join        
        JumpTrue     -print-boolean-2279-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2279-join  
        Label        -print-boolean-2279-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2279-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2280-arg1        
        PushI        19                        
        Label        -compare-2280-arg2        
        PushI        86                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2280-sub         
        Subtract                               
        JumpFalse    -compare-2280-true        
        Jump         -compare-2280-false       
        Label        -compare-2280-true        
        PushI        1                         
        Jump         -compare-2280-join        
        Label        -compare-2280-false       
        PushI        0                         
        Jump         -compare-2280-join        
        Label        -compare-2280-join        
        JumpTrue     -print-boolean-2281-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2281-join  
        Label        -print-boolean-2281-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2281-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2282-arg1        
        PushI        2                         
        Label        -compare-2282-arg2        
        PushI        108                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2282-sub         
        Subtract                               
        JumpFalse    -compare-2282-true        
        Jump         -compare-2282-false       
        Label        -compare-2282-true        
        PushI        1                         
        Jump         -compare-2282-join        
        Label        -compare-2282-false       
        PushI        0                         
        Jump         -compare-2282-join        
        Label        -compare-2282-join        
        JumpTrue     -print-boolean-2283-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2283-join  
        Label        -print-boolean-2283-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2283-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2284-arg1        
        PushI        86                        
        Label        -compare-2284-arg2        
        PushI        33                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2284-sub         
        Subtract                               
        JumpFalse    -compare-2284-true        
        Jump         -compare-2284-false       
        Label        -compare-2284-true        
        PushI        1                         
        Jump         -compare-2284-join        
        Label        -compare-2284-false       
        PushI        0                         
        Jump         -compare-2284-join        
        Label        -compare-2284-join        
        JumpTrue     -print-boolean-2285-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2285-join  
        Label        -print-boolean-2285-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2285-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2286-arg1        
        PushI        76                        
        Label        -compare-2286-arg2        
        PushI        105                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2286-sub         
        Subtract                               
        JumpFalse    -compare-2286-true        
        Jump         -compare-2286-false       
        Label        -compare-2286-true        
        PushI        1                         
        Jump         -compare-2286-join        
        Label        -compare-2286-false       
        PushI        0                         
        Jump         -compare-2286-join        
        Label        -compare-2286-join        
        JumpTrue     -print-boolean-2287-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2287-join  
        Label        -print-boolean-2287-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2287-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2288-arg1        
        PushI        27                        
        Label        -compare-2288-arg2        
        PushI        60                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2288-sub         
        Subtract                               
        JumpFalse    -compare-2288-true        
        Jump         -compare-2288-false       
        Label        -compare-2288-true        
        PushI        1                         
        Jump         -compare-2288-join        
        Label        -compare-2288-false       
        PushI        0                         
        Jump         -compare-2288-join        
        Label        -compare-2288-join        
        JumpTrue     -print-boolean-2289-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2289-join  
        Label        -print-boolean-2289-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2289-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2290-arg1        
        PushI        55                        
        Label        -compare-2290-arg2        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2290-sub         
        Subtract                               
        JumpFalse    -compare-2290-true        
        Jump         -compare-2290-false       
        Label        -compare-2290-true        
        PushI        1                         
        Jump         -compare-2290-join        
        Label        -compare-2290-false       
        PushI        0                         
        Jump         -compare-2290-join        
        Label        -compare-2290-join        
        JumpTrue     -print-boolean-2291-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2291-join  
        Label        -print-boolean-2291-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2291-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2292-arg1        
        PushI        17                        
        Label        -compare-2292-arg2        
        PushI        69                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2292-sub         
        Subtract                               
        JumpFalse    -compare-2292-true        
        Jump         -compare-2292-false       
        Label        -compare-2292-true        
        PushI        1                         
        Jump         -compare-2292-join        
        Label        -compare-2292-false       
        PushI        0                         
        Jump         -compare-2292-join        
        Label        -compare-2292-join        
        JumpTrue     -print-boolean-2293-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2293-join  
        Label        -print-boolean-2293-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2293-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2294-arg1        
        PushI        46                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2294-arg2        
        PushI        105                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2294-sub         
        Subtract                               
        JumpFalse    -compare-2294-true        
        Jump         -compare-2294-false       
        Label        -compare-2294-true        
        PushI        1                         
        Jump         -compare-2294-join        
        Label        -compare-2294-false       
        PushI        0                         
        Jump         -compare-2294-join        
        Label        -compare-2294-join        
        JumpTrue     -print-boolean-2295-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2295-join  
        Label        -print-boolean-2295-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2295-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2296-arg1        
        PushI        106                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2296-arg2        
        PushI        114                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2296-sub         
        Subtract                               
        JumpFalse    -compare-2296-true        
        Jump         -compare-2296-false       
        Label        -compare-2296-true        
        PushI        1                         
        Jump         -compare-2296-join        
        Label        -compare-2296-false       
        PushI        0                         
        Jump         -compare-2296-join        
        Label        -compare-2296-join        
        JumpTrue     -print-boolean-2297-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2297-join  
        Label        -print-boolean-2297-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2297-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2298-arg1        
        PushI        36                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2298-arg2        
        PushI        69                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2298-sub         
        Subtract                               
        JumpFalse    -compare-2298-true        
        Jump         -compare-2298-false       
        Label        -compare-2298-true        
        PushI        1                         
        Jump         -compare-2298-join        
        Label        -compare-2298-false       
        PushI        0                         
        Jump         -compare-2298-join        
        Label        -compare-2298-join        
        JumpTrue     -print-boolean-2299-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2299-join  
        Label        -print-boolean-2299-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2299-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2300-arg1        
        PushI        109                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2300-arg2        
        PushI        41                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2300-sub         
        Subtract                               
        JumpFalse    -compare-2300-true        
        Jump         -compare-2300-false       
        Label        -compare-2300-true        
        PushI        1                         
        Jump         -compare-2300-join        
        Label        -compare-2300-false       
        PushI        0                         
        Jump         -compare-2300-join        
        Label        -compare-2300-join        
        JumpTrue     -print-boolean-2301-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2301-join  
        Label        -print-boolean-2301-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2301-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2302-arg1        
        PushI        36                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2302-arg2        
        PushI        40                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2302-sub         
        Subtract                               
        JumpFalse    -compare-2302-true        
        Jump         -compare-2302-false       
        Label        -compare-2302-true        
        PushI        1                         
        Jump         -compare-2302-join        
        Label        -compare-2302-false       
        PushI        0                         
        Jump         -compare-2302-join        
        Label        -compare-2302-join        
        JumpTrue     -print-boolean-2303-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2303-join  
        Label        -print-boolean-2303-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2303-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2304-arg1        
        PushI        114                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2304-arg2        
        PushI        64                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2304-sub         
        Subtract                               
        JumpFalse    -compare-2304-true        
        Jump         -compare-2304-false       
        Label        -compare-2304-true        
        PushI        1                         
        Jump         -compare-2304-join        
        Label        -compare-2304-false       
        PushI        0                         
        Jump         -compare-2304-join        
        Label        -compare-2304-join        
        JumpTrue     -print-boolean-2305-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2305-join  
        Label        -print-boolean-2305-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2305-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2306-arg1        
        PushI        68                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2306-arg2        
        PushI        89                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2306-sub         
        Subtract                               
        JumpFalse    -compare-2306-true        
        Jump         -compare-2306-false       
        Label        -compare-2306-true        
        PushI        1                         
        Jump         -compare-2306-join        
        Label        -compare-2306-false       
        PushI        0                         
        Jump         -compare-2306-join        
        Label        -compare-2306-join        
        JumpTrue     -print-boolean-2307-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2307-join  
        Label        -print-boolean-2307-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2307-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2308-arg1        
        PushI        46                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2308-arg2        
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2308-sub         
        Subtract                               
        JumpFalse    -compare-2308-true        
        Jump         -compare-2308-false       
        Label        -compare-2308-true        
        PushI        1                         
        Jump         -compare-2308-join        
        Label        -compare-2308-false       
        PushI        0                         
        Jump         -compare-2308-join        
        Label        -compare-2308-join        
        JumpTrue     -print-boolean-2309-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2309-join  
        Label        -print-boolean-2309-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2309-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2310-arg1        
        PushI        114                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2310-arg2        
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2310-sub         
        Subtract                               
        JumpFalse    -compare-2310-true        
        Jump         -compare-2310-false       
        Label        -compare-2310-true        
        PushI        1                         
        Jump         -compare-2310-join        
        Label        -compare-2310-false       
        PushI        0                         
        Jump         -compare-2310-join        
        Label        -compare-2310-join        
        JumpTrue     -print-boolean-2311-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2311-join  
        Label        -print-boolean-2311-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2311-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2312-arg1        
        PushI        100                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2312-arg2        
        PushI        78                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2312-sub         
        Subtract                               
        JumpFalse    -compare-2312-true        
        Jump         -compare-2312-false       
        Label        -compare-2312-true        
        PushI        1                         
        Jump         -compare-2312-join        
        Label        -compare-2312-false       
        PushI        0                         
        Jump         -compare-2312-join        
        Label        -compare-2312-join        
        JumpTrue     -print-boolean-2313-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2313-join  
        Label        -print-boolean-2313-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2313-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2314-arg1        
        PushI        119                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2314-arg2        
        PushI        109                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2314-sub         
        Subtract                               
        JumpFalse    -compare-2314-true        
        Jump         -compare-2314-false       
        Label        -compare-2314-true        
        PushI        1                         
        Jump         -compare-2314-join        
        Label        -compare-2314-false       
        PushI        0                         
        Jump         -compare-2314-join        
        Label        -compare-2314-join        
        JumpTrue     -print-boolean-2315-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2315-join  
        Label        -print-boolean-2315-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2315-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2316-arg1        
        PushI        118                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2316-arg2        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2316-sub         
        Subtract                               
        JumpFalse    -compare-2316-true        
        Jump         -compare-2316-false       
        Label        -compare-2316-true        
        PushI        1                         
        Jump         -compare-2316-join        
        Label        -compare-2316-false       
        PushI        0                         
        Jump         -compare-2316-join        
        Label        -compare-2316-join        
        JumpTrue     -print-boolean-2317-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2317-join  
        Label        -print-boolean-2317-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2317-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
