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
        Label        -compare-2318-arg1        
        PushF        7.000000                  
        ConvertI                               
        Label        -compare-2318-arg2        
        PushI        32                        
        Label        -compare-2318-sub         
        Subtract                               
        JumpFalse    -compare-2318-true        
        Jump         -compare-2318-false       
        Label        -compare-2318-true        
        PushI        1                         
        Jump         -compare-2318-join        
        Label        -compare-2318-false       
        PushI        0                         
        Jump         -compare-2318-join        
        Label        -compare-2318-join        
        JumpTrue     -print-boolean-2319-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2319-join  
        Label        -print-boolean-2319-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2319-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2320-arg1        
        PushF        1.700000                  
        ConvertI                               
        Label        -compare-2320-arg2        
        PushI        91                        
        Label        -compare-2320-sub         
        Subtract                               
        JumpFalse    -compare-2320-true        
        Jump         -compare-2320-false       
        Label        -compare-2320-true        
        PushI        1                         
        Jump         -compare-2320-join        
        Label        -compare-2320-false       
        PushI        0                         
        Jump         -compare-2320-join        
        Label        -compare-2320-join        
        JumpTrue     -print-boolean-2321-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2321-join  
        Label        -print-boolean-2321-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2321-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2322-arg1        
        PushF        7.200000                  
        ConvertI                               
        Label        -compare-2322-arg2        
        PushI        77                        
        Label        -compare-2322-sub         
        Subtract                               
        JumpFalse    -compare-2322-true        
        Jump         -compare-2322-false       
        Label        -compare-2322-true        
        PushI        1                         
        Jump         -compare-2322-join        
        Label        -compare-2322-false       
        PushI        0                         
        Jump         -compare-2322-join        
        Label        -compare-2322-join        
        JumpTrue     -print-boolean-2323-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2323-join  
        Label        -print-boolean-2323-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2323-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2324-arg1        
        PushF        8.200000                  
        ConvertI                               
        Label        -compare-2324-arg2        
        PushI        73                        
        Label        -compare-2324-sub         
        Subtract                               
        JumpFalse    -compare-2324-true        
        Jump         -compare-2324-false       
        Label        -compare-2324-true        
        PushI        1                         
        Jump         -compare-2324-join        
        Label        -compare-2324-false       
        PushI        0                         
        Jump         -compare-2324-join        
        Label        -compare-2324-join        
        JumpTrue     -print-boolean-2325-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2325-join  
        Label        -print-boolean-2325-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2325-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2326-arg1        
        PushF        2.000000                  
        ConvertI                               
        Label        -compare-2326-arg2        
        PushI        61                        
        Label        -compare-2326-sub         
        Subtract                               
        JumpFalse    -compare-2326-true        
        Jump         -compare-2326-false       
        Label        -compare-2326-true        
        PushI        1                         
        Jump         -compare-2326-join        
        Label        -compare-2326-false       
        PushI        0                         
        Jump         -compare-2326-join        
        Label        -compare-2326-join        
        JumpTrue     -print-boolean-2327-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2327-join  
        Label        -print-boolean-2327-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2327-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2328-arg1        
        PushF        8.700000                  
        ConvertI                               
        Label        -compare-2328-arg2        
        PushI        11                        
        Label        -compare-2328-sub         
        Subtract                               
        JumpFalse    -compare-2328-true        
        Jump         -compare-2328-false       
        Label        -compare-2328-true        
        PushI        1                         
        Jump         -compare-2328-join        
        Label        -compare-2328-false       
        PushI        0                         
        Jump         -compare-2328-join        
        Label        -compare-2328-join        
        JumpTrue     -print-boolean-2329-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2329-join  
        Label        -print-boolean-2329-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2329-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2330-arg1        
        PushF        7.500000                  
        ConvertI                               
        Label        -compare-2330-arg2        
        PushI        57                        
        Label        -compare-2330-sub         
        Subtract                               
        JumpFalse    -compare-2330-true        
        Jump         -compare-2330-false       
        Label        -compare-2330-true        
        PushI        1                         
        Jump         -compare-2330-join        
        Label        -compare-2330-false       
        PushI        0                         
        Jump         -compare-2330-join        
        Label        -compare-2330-join        
        JumpTrue     -print-boolean-2331-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2331-join  
        Label        -print-boolean-2331-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2331-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2332-arg1        
        PushF        1.900000                  
        ConvertI                               
        Label        -compare-2332-arg2        
        PushI        78                        
        Label        -compare-2332-sub         
        Subtract                               
        JumpFalse    -compare-2332-true        
        Jump         -compare-2332-false       
        Label        -compare-2332-true        
        PushI        1                         
        Jump         -compare-2332-join        
        Label        -compare-2332-false       
        PushI        0                         
        Jump         -compare-2332-join        
        Label        -compare-2332-join        
        JumpTrue     -print-boolean-2333-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2333-join  
        Label        -print-boolean-2333-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2333-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2334-arg1        
        PushF        4.900000                  
        ConvertI                               
        Label        -compare-2334-arg2        
        PushI        44                        
        Label        -compare-2334-sub         
        Subtract                               
        JumpFalse    -compare-2334-true        
        Jump         -compare-2334-false       
        Label        -compare-2334-true        
        PushI        1                         
        Jump         -compare-2334-join        
        Label        -compare-2334-false       
        PushI        0                         
        Jump         -compare-2334-join        
        Label        -compare-2334-join        
        JumpTrue     -print-boolean-2335-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2335-join  
        Label        -print-boolean-2335-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2335-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2336-arg1        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2336-arg2        
        PushI        33                        
        Label        -compare-2336-sub         
        Subtract                               
        JumpFalse    -compare-2336-true        
        Jump         -compare-2336-false       
        Label        -compare-2336-true        
        PushI        1                         
        Jump         -compare-2336-join        
        Label        -compare-2336-false       
        PushI        0                         
        Jump         -compare-2336-join        
        Label        -compare-2336-join        
        JumpTrue     -print-boolean-2337-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2337-join  
        Label        -print-boolean-2337-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2337-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2338-arg1        
        PushF        4.700000                  
        ConvertI                               
        Label        -compare-2338-arg2        
        PushI        30                        
        Label        -compare-2338-sub         
        Subtract                               
        JumpFalse    -compare-2338-true        
        Jump         -compare-2338-false       
        Label        -compare-2338-true        
        PushI        1                         
        Jump         -compare-2338-join        
        Label        -compare-2338-false       
        PushI        0                         
        Jump         -compare-2338-join        
        Label        -compare-2338-join        
        JumpTrue     -print-boolean-2339-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2339-join  
        Label        -print-boolean-2339-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2339-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2340-arg1        
        PushF        9.200000                  
        ConvertI                               
        Label        -compare-2340-arg2        
        PushI        62                        
        Label        -compare-2340-sub         
        Subtract                               
        JumpFalse    -compare-2340-true        
        Jump         -compare-2340-false       
        Label        -compare-2340-true        
        PushI        1                         
        Jump         -compare-2340-join        
        Label        -compare-2340-false       
        PushI        0                         
        Jump         -compare-2340-join        
        Label        -compare-2340-join        
        JumpTrue     -print-boolean-2341-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2341-join  
        Label        -print-boolean-2341-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2341-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2342-arg1        
        PushI        20                        
        Label        -compare-2342-arg2        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-2342-sub         
        Subtract                               
        JumpFalse    -compare-2342-true        
        Jump         -compare-2342-false       
        Label        -compare-2342-true        
        PushI        1                         
        Jump         -compare-2342-join        
        Label        -compare-2342-false       
        PushI        0                         
        Jump         -compare-2342-join        
        Label        -compare-2342-join        
        JumpTrue     -print-boolean-2343-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2343-join  
        Label        -print-boolean-2343-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2343-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2344-arg1        
        PushI        59                        
        Label        -compare-2344-arg2        
        PushF        9.600000                  
        ConvertI                               
        Label        -compare-2344-sub         
        Subtract                               
        JumpFalse    -compare-2344-true        
        Jump         -compare-2344-false       
        Label        -compare-2344-true        
        PushI        1                         
        Jump         -compare-2344-join        
        Label        -compare-2344-false       
        PushI        0                         
        Jump         -compare-2344-join        
        Label        -compare-2344-join        
        JumpTrue     -print-boolean-2345-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2345-join  
        Label        -print-boolean-2345-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2345-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2346-arg1        
        PushI        60                        
        Label        -compare-2346-arg2        
        PushF        3.700000                  
        ConvertI                               
        Label        -compare-2346-sub         
        Subtract                               
        JumpFalse    -compare-2346-true        
        Jump         -compare-2346-false       
        Label        -compare-2346-true        
        PushI        1                         
        Jump         -compare-2346-join        
        Label        -compare-2346-false       
        PushI        0                         
        Jump         -compare-2346-join        
        Label        -compare-2346-join        
        JumpTrue     -print-boolean-2347-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2347-join  
        Label        -print-boolean-2347-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2347-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2348-arg1        
        PushI        18                        
        Label        -compare-2348-arg2        
        PushF        3.800000                  
        ConvertI                               
        Label        -compare-2348-sub         
        Subtract                               
        JumpFalse    -compare-2348-true        
        Jump         -compare-2348-false       
        Label        -compare-2348-true        
        PushI        1                         
        Jump         -compare-2348-join        
        Label        -compare-2348-false       
        PushI        0                         
        Jump         -compare-2348-join        
        Label        -compare-2348-join        
        JumpTrue     -print-boolean-2349-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2349-join  
        Label        -print-boolean-2349-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2349-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2350-arg1        
        PushI        8                         
        Label        -compare-2350-arg2        
        PushF        3.500000                  
        ConvertI                               
        Label        -compare-2350-sub         
        Subtract                               
        JumpFalse    -compare-2350-true        
        Jump         -compare-2350-false       
        Label        -compare-2350-true        
        PushI        1                         
        Jump         -compare-2350-join        
        Label        -compare-2350-false       
        PushI        0                         
        Jump         -compare-2350-join        
        Label        -compare-2350-join        
        JumpTrue     -print-boolean-2351-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2351-join  
        Label        -print-boolean-2351-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2351-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2352-arg1        
        PushI        46                        
        Label        -compare-2352-arg2        
        PushF        4.500000                  
        ConvertI                               
        Label        -compare-2352-sub         
        Subtract                               
        JumpFalse    -compare-2352-true        
        Jump         -compare-2352-false       
        Label        -compare-2352-true        
        PushI        1                         
        Jump         -compare-2352-join        
        Label        -compare-2352-false       
        PushI        0                         
        Jump         -compare-2352-join        
        Label        -compare-2352-join        
        JumpTrue     -print-boolean-2353-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2353-join  
        Label        -print-boolean-2353-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2353-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2354-arg1        
        PushI        34                        
        Label        -compare-2354-arg2        
        PushF        3.900000                  
        ConvertI                               
        Label        -compare-2354-sub         
        Subtract                               
        JumpFalse    -compare-2354-true        
        Jump         -compare-2354-false       
        Label        -compare-2354-true        
        PushI        1                         
        Jump         -compare-2354-join        
        Label        -compare-2354-false       
        PushI        0                         
        Jump         -compare-2354-join        
        Label        -compare-2354-join        
        JumpTrue     -print-boolean-2355-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2355-join  
        Label        -print-boolean-2355-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2355-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2356-arg1        
        PushI        42                        
        Label        -compare-2356-arg2        
        PushF        7.400000                  
        ConvertI                               
        Label        -compare-2356-sub         
        Subtract                               
        JumpFalse    -compare-2356-true        
        Jump         -compare-2356-false       
        Label        -compare-2356-true        
        PushI        1                         
        Jump         -compare-2356-join        
        Label        -compare-2356-false       
        PushI        0                         
        Jump         -compare-2356-join        
        Label        -compare-2356-join        
        JumpTrue     -print-boolean-2357-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2357-join  
        Label        -print-boolean-2357-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2357-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2358-arg1        
        PushI        18                        
        Label        -compare-2358-arg2        
        PushF        5.000000                  
        ConvertI                               
        Label        -compare-2358-sub         
        Subtract                               
        JumpFalse    -compare-2358-true        
        Jump         -compare-2358-false       
        Label        -compare-2358-true        
        PushI        1                         
        Jump         -compare-2358-join        
        Label        -compare-2358-false       
        PushI        0                         
        Jump         -compare-2358-join        
        Label        -compare-2358-join        
        JumpTrue     -print-boolean-2359-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2359-join  
        Label        -print-boolean-2359-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2359-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2360-arg1        
        PushI        64                        
        Label        -compare-2360-arg2        
        PushF        5.000000                  
        ConvertI                               
        Label        -compare-2360-sub         
        Subtract                               
        JumpFalse    -compare-2360-true        
        Jump         -compare-2360-false       
        Label        -compare-2360-true        
        PushI        1                         
        Jump         -compare-2360-join        
        Label        -compare-2360-false       
        PushI        0                         
        Jump         -compare-2360-join        
        Label        -compare-2360-join        
        JumpTrue     -print-boolean-2361-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2361-join  
        Label        -print-boolean-2361-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2361-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2362-arg1        
        PushI        31                        
        Label        -compare-2362-arg2        
        PushF        4.200000                  
        ConvertI                               
        Label        -compare-2362-sub         
        Subtract                               
        JumpFalse    -compare-2362-true        
        Jump         -compare-2362-false       
        Label        -compare-2362-true        
        PushI        1                         
        Jump         -compare-2362-join        
        Label        -compare-2362-false       
        PushI        0                         
        Jump         -compare-2362-join        
        Label        -compare-2362-join        
        JumpTrue     -print-boolean-2363-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2363-join  
        Label        -print-boolean-2363-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2363-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2364-arg1        
        PushI        8                         
        Label        -compare-2364-arg2        
        PushF        1.100000                  
        ConvertI                               
        Label        -compare-2364-sub         
        Subtract                               
        JumpFalse    -compare-2364-true        
        Jump         -compare-2364-false       
        Label        -compare-2364-true        
        PushI        1                         
        Jump         -compare-2364-join        
        Label        -compare-2364-false       
        PushI        0                         
        Jump         -compare-2364-join        
        Label        -compare-2364-join        
        JumpTrue     -print-boolean-2365-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2365-join  
        Label        -print-boolean-2365-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2365-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2366-arg1        
        PushF        2.600000                  
        ConvertI                               
        Label        -compare-2366-arg2        
        PushF        1.900000                  
        ConvertI                               
        Label        -compare-2366-sub         
        Subtract                               
        JumpFalse    -compare-2366-true        
        Jump         -compare-2366-false       
        Label        -compare-2366-true        
        PushI        1                         
        Jump         -compare-2366-join        
        Label        -compare-2366-false       
        PushI        0                         
        Jump         -compare-2366-join        
        Label        -compare-2366-join        
        JumpTrue     -print-boolean-2367-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2367-join  
        Label        -print-boolean-2367-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2367-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2368-arg1        
        PushF        3.400000                  
        ConvertI                               
        Label        -compare-2368-arg2        
        PushF        9.300000                  
        ConvertI                               
        Label        -compare-2368-sub         
        Subtract                               
        JumpFalse    -compare-2368-true        
        Jump         -compare-2368-false       
        Label        -compare-2368-true        
        PushI        1                         
        Jump         -compare-2368-join        
        Label        -compare-2368-false       
        PushI        0                         
        Jump         -compare-2368-join        
        Label        -compare-2368-join        
        JumpTrue     -print-boolean-2369-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2369-join  
        Label        -print-boolean-2369-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2369-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2370-arg1        
        PushF        9.400000                  
        ConvertI                               
        Label        -compare-2370-arg2        
        PushF        2.800000                  
        ConvertI                               
        Label        -compare-2370-sub         
        Subtract                               
        JumpFalse    -compare-2370-true        
        Jump         -compare-2370-false       
        Label        -compare-2370-true        
        PushI        1                         
        Jump         -compare-2370-join        
        Label        -compare-2370-false       
        PushI        0                         
        Jump         -compare-2370-join        
        Label        -compare-2370-join        
        JumpTrue     -print-boolean-2371-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2371-join  
        Label        -print-boolean-2371-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2371-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2372-arg1        
        PushF        7.300000                  
        ConvertI                               
        Label        -compare-2372-arg2        
        PushF        1.700000                  
        ConvertI                               
        Label        -compare-2372-sub         
        Subtract                               
        JumpFalse    -compare-2372-true        
        Jump         -compare-2372-false       
        Label        -compare-2372-true        
        PushI        1                         
        Jump         -compare-2372-join        
        Label        -compare-2372-false       
        PushI        0                         
        Jump         -compare-2372-join        
        Label        -compare-2372-join        
        JumpTrue     -print-boolean-2373-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2373-join  
        Label        -print-boolean-2373-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2373-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2374-arg1        
        PushF        5.300000                  
        ConvertI                               
        Label        -compare-2374-arg2        
        PushF        4.700000                  
        ConvertI                               
        Label        -compare-2374-sub         
        Subtract                               
        JumpFalse    -compare-2374-true        
        Jump         -compare-2374-false       
        Label        -compare-2374-true        
        PushI        1                         
        Jump         -compare-2374-join        
        Label        -compare-2374-false       
        PushI        0                         
        Jump         -compare-2374-join        
        Label        -compare-2374-join        
        JumpTrue     -print-boolean-2375-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2375-join  
        Label        -print-boolean-2375-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2375-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2376-arg1        
        PushF        4.000000                  
        ConvertI                               
        Label        -compare-2376-arg2        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2376-sub         
        Subtract                               
        JumpFalse    -compare-2376-true        
        Jump         -compare-2376-false       
        Label        -compare-2376-true        
        PushI        1                         
        Jump         -compare-2376-join        
        Label        -compare-2376-false       
        PushI        0                         
        Jump         -compare-2376-join        
        Label        -compare-2376-join        
        JumpTrue     -print-boolean-2377-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2377-join  
        Label        -print-boolean-2377-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2377-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2378-arg1        
        PushF        4.600000                  
        ConvertI                               
        Label        -compare-2378-arg2        
        PushF        9.500000                  
        ConvertI                               
        Label        -compare-2378-sub         
        Subtract                               
        JumpFalse    -compare-2378-true        
        Jump         -compare-2378-false       
        Label        -compare-2378-true        
        PushI        1                         
        Jump         -compare-2378-join        
        Label        -compare-2378-false       
        PushI        0                         
        Jump         -compare-2378-join        
        Label        -compare-2378-join        
        JumpTrue     -print-boolean-2379-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2379-join  
        Label        -print-boolean-2379-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2379-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2380-arg1        
        PushF        6.800000                  
        ConvertI                               
        Label        -compare-2380-arg2        
        PushF        3.800000                  
        ConvertI                               
        Label        -compare-2380-sub         
        Subtract                               
        JumpFalse    -compare-2380-true        
        Jump         -compare-2380-false       
        Label        -compare-2380-true        
        PushI        1                         
        Jump         -compare-2380-join        
        Label        -compare-2380-false       
        PushI        0                         
        Jump         -compare-2380-join        
        Label        -compare-2380-join        
        JumpTrue     -print-boolean-2381-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2381-join  
        Label        -print-boolean-2381-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2381-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2382-arg1        
        PushF        8.600000                  
        ConvertI                               
        Label        -compare-2382-arg2        
        PushF        1.100000                  
        ConvertI                               
        Label        -compare-2382-sub         
        Subtract                               
        JumpFalse    -compare-2382-true        
        Jump         -compare-2382-false       
        Label        -compare-2382-true        
        PushI        1                         
        Jump         -compare-2382-join        
        Label        -compare-2382-false       
        PushI        0                         
        Jump         -compare-2382-join        
        Label        -compare-2382-join        
        JumpTrue     -print-boolean-2383-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2383-join  
        Label        -print-boolean-2383-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2383-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2384-arg1        
        PushF        3.700000                  
        ConvertI                               
        Label        -compare-2384-arg2        
        PushF        2.500000                  
        ConvertI                               
        Label        -compare-2384-sub         
        Subtract                               
        JumpFalse    -compare-2384-true        
        Jump         -compare-2384-false       
        Label        -compare-2384-true        
        PushI        1                         
        Jump         -compare-2384-join        
        Label        -compare-2384-false       
        PushI        0                         
        Jump         -compare-2384-join        
        Label        -compare-2384-join        
        JumpTrue     -print-boolean-2385-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2385-join  
        Label        -print-boolean-2385-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2385-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2386-arg1        
        PushF        2.700000                  
        ConvertI                               
        Label        -compare-2386-arg2        
        PushF        5.400000                  
        ConvertI                               
        Label        -compare-2386-sub         
        Subtract                               
        JumpFalse    -compare-2386-true        
        Jump         -compare-2386-false       
        Label        -compare-2386-true        
        PushI        1                         
        Jump         -compare-2386-join        
        Label        -compare-2386-false       
        PushI        0                         
        Jump         -compare-2386-join        
        Label        -compare-2386-join        
        JumpTrue     -print-boolean-2387-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2387-join  
        Label        -print-boolean-2387-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2387-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2388-arg1        
        PushF        8.100000                  
        ConvertI                               
        Label        -compare-2388-arg2        
        PushF        1.600000                  
        ConvertI                               
        Label        -compare-2388-sub         
        Subtract                               
        JumpFalse    -compare-2388-true        
        Jump         -compare-2388-false       
        Label        -compare-2388-true        
        PushI        1                         
        Jump         -compare-2388-join        
        Label        -compare-2388-false       
        PushI        0                         
        Jump         -compare-2388-join        
        Label        -compare-2388-join        
        JumpTrue     -print-boolean-2389-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2389-join  
        Label        -print-boolean-2389-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2389-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
