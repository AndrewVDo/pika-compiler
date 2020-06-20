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
        Label        -compare-2305-arg1        
        PushF        7.000000                  
        ConvertI                               
        Label        -compare-2305-arg2        
        PushI        32                        
        Label        -compare-2305-sub         
        Subtract                               
        JumpFalse    -compare-2305-true        
        Jump         -compare-2305-false       
        Label        -compare-2305-true        
        PushI        1                         
        Jump         -compare-2305-join        
        Label        -compare-2305-false       
        PushI        0                         
        Jump         -compare-2305-join        
        Label        -compare-2305-join        
        JumpTrue     -print-boolean-2306-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2306-join  
        Label        -print-boolean-2306-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2306-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2307-arg1        
        PushF        1.700000                  
        ConvertI                               
        Label        -compare-2307-arg2        
        PushI        91                        
        Label        -compare-2307-sub         
        Subtract                               
        JumpFalse    -compare-2307-true        
        Jump         -compare-2307-false       
        Label        -compare-2307-true        
        PushI        1                         
        Jump         -compare-2307-join        
        Label        -compare-2307-false       
        PushI        0                         
        Jump         -compare-2307-join        
        Label        -compare-2307-join        
        JumpTrue     -print-boolean-2308-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2308-join  
        Label        -print-boolean-2308-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2308-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2309-arg1        
        PushF        7.200000                  
        ConvertI                               
        Label        -compare-2309-arg2        
        PushI        77                        
        Label        -compare-2309-sub         
        Subtract                               
        JumpFalse    -compare-2309-true        
        Jump         -compare-2309-false       
        Label        -compare-2309-true        
        PushI        1                         
        Jump         -compare-2309-join        
        Label        -compare-2309-false       
        PushI        0                         
        Jump         -compare-2309-join        
        Label        -compare-2309-join        
        JumpTrue     -print-boolean-2310-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2310-join  
        Label        -print-boolean-2310-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2310-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2311-arg1        
        PushF        8.200000                  
        ConvertI                               
        Label        -compare-2311-arg2        
        PushI        73                        
        Label        -compare-2311-sub         
        Subtract                               
        JumpFalse    -compare-2311-true        
        Jump         -compare-2311-false       
        Label        -compare-2311-true        
        PushI        1                         
        Jump         -compare-2311-join        
        Label        -compare-2311-false       
        PushI        0                         
        Jump         -compare-2311-join        
        Label        -compare-2311-join        
        JumpTrue     -print-boolean-2312-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2312-join  
        Label        -print-boolean-2312-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2312-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2313-arg1        
        PushF        2.000000                  
        ConvertI                               
        Label        -compare-2313-arg2        
        PushI        61                        
        Label        -compare-2313-sub         
        Subtract                               
        JumpFalse    -compare-2313-true        
        Jump         -compare-2313-false       
        Label        -compare-2313-true        
        PushI        1                         
        Jump         -compare-2313-join        
        Label        -compare-2313-false       
        PushI        0                         
        Jump         -compare-2313-join        
        Label        -compare-2313-join        
        JumpTrue     -print-boolean-2314-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2314-join  
        Label        -print-boolean-2314-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2314-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2315-arg1        
        PushF        8.700000                  
        ConvertI                               
        Label        -compare-2315-arg2        
        PushI        11                        
        Label        -compare-2315-sub         
        Subtract                               
        JumpFalse    -compare-2315-true        
        Jump         -compare-2315-false       
        Label        -compare-2315-true        
        PushI        1                         
        Jump         -compare-2315-join        
        Label        -compare-2315-false       
        PushI        0                         
        Jump         -compare-2315-join        
        Label        -compare-2315-join        
        JumpTrue     -print-boolean-2316-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2316-join  
        Label        -print-boolean-2316-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2316-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2317-arg1        
        PushF        7.500000                  
        ConvertI                               
        Label        -compare-2317-arg2        
        PushI        57                        
        Label        -compare-2317-sub         
        Subtract                               
        JumpFalse    -compare-2317-true        
        Jump         -compare-2317-false       
        Label        -compare-2317-true        
        PushI        1                         
        Jump         -compare-2317-join        
        Label        -compare-2317-false       
        PushI        0                         
        Jump         -compare-2317-join        
        Label        -compare-2317-join        
        JumpTrue     -print-boolean-2318-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2318-join  
        Label        -print-boolean-2318-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2318-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2319-arg1        
        PushF        1.900000                  
        ConvertI                               
        Label        -compare-2319-arg2        
        PushI        78                        
        Label        -compare-2319-sub         
        Subtract                               
        JumpFalse    -compare-2319-true        
        Jump         -compare-2319-false       
        Label        -compare-2319-true        
        PushI        1                         
        Jump         -compare-2319-join        
        Label        -compare-2319-false       
        PushI        0                         
        Jump         -compare-2319-join        
        Label        -compare-2319-join        
        JumpTrue     -print-boolean-2320-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2320-join  
        Label        -print-boolean-2320-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2320-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2321-arg1        
        PushF        4.900000                  
        ConvertI                               
        Label        -compare-2321-arg2        
        PushI        44                        
        Label        -compare-2321-sub         
        Subtract                               
        JumpFalse    -compare-2321-true        
        Jump         -compare-2321-false       
        Label        -compare-2321-true        
        PushI        1                         
        Jump         -compare-2321-join        
        Label        -compare-2321-false       
        PushI        0                         
        Jump         -compare-2321-join        
        Label        -compare-2321-join        
        JumpTrue     -print-boolean-2322-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2322-join  
        Label        -print-boolean-2322-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2322-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2323-arg1        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2323-arg2        
        PushI        33                        
        Label        -compare-2323-sub         
        Subtract                               
        JumpFalse    -compare-2323-true        
        Jump         -compare-2323-false       
        Label        -compare-2323-true        
        PushI        1                         
        Jump         -compare-2323-join        
        Label        -compare-2323-false       
        PushI        0                         
        Jump         -compare-2323-join        
        Label        -compare-2323-join        
        JumpTrue     -print-boolean-2324-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2324-join  
        Label        -print-boolean-2324-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2324-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2325-arg1        
        PushF        4.700000                  
        ConvertI                               
        Label        -compare-2325-arg2        
        PushI        30                        
        Label        -compare-2325-sub         
        Subtract                               
        JumpFalse    -compare-2325-true        
        Jump         -compare-2325-false       
        Label        -compare-2325-true        
        PushI        1                         
        Jump         -compare-2325-join        
        Label        -compare-2325-false       
        PushI        0                         
        Jump         -compare-2325-join        
        Label        -compare-2325-join        
        JumpTrue     -print-boolean-2326-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2326-join  
        Label        -print-boolean-2326-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2326-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2327-arg1        
        PushF        9.200000                  
        ConvertI                               
        Label        -compare-2327-arg2        
        PushI        62                        
        Label        -compare-2327-sub         
        Subtract                               
        JumpFalse    -compare-2327-true        
        Jump         -compare-2327-false       
        Label        -compare-2327-true        
        PushI        1                         
        Jump         -compare-2327-join        
        Label        -compare-2327-false       
        PushI        0                         
        Jump         -compare-2327-join        
        Label        -compare-2327-join        
        JumpTrue     -print-boolean-2328-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2328-join  
        Label        -print-boolean-2328-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2328-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2329-arg1        
        PushI        20                        
        Label        -compare-2329-arg2        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-2329-sub         
        Subtract                               
        JumpFalse    -compare-2329-true        
        Jump         -compare-2329-false       
        Label        -compare-2329-true        
        PushI        1                         
        Jump         -compare-2329-join        
        Label        -compare-2329-false       
        PushI        0                         
        Jump         -compare-2329-join        
        Label        -compare-2329-join        
        JumpTrue     -print-boolean-2330-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2330-join  
        Label        -print-boolean-2330-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2330-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2331-arg1        
        PushI        59                        
        Label        -compare-2331-arg2        
        PushF        9.600000                  
        ConvertI                               
        Label        -compare-2331-sub         
        Subtract                               
        JumpFalse    -compare-2331-true        
        Jump         -compare-2331-false       
        Label        -compare-2331-true        
        PushI        1                         
        Jump         -compare-2331-join        
        Label        -compare-2331-false       
        PushI        0                         
        Jump         -compare-2331-join        
        Label        -compare-2331-join        
        JumpTrue     -print-boolean-2332-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2332-join  
        Label        -print-boolean-2332-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2332-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2333-arg1        
        PushI        60                        
        Label        -compare-2333-arg2        
        PushF        3.700000                  
        ConvertI                               
        Label        -compare-2333-sub         
        Subtract                               
        JumpFalse    -compare-2333-true        
        Jump         -compare-2333-false       
        Label        -compare-2333-true        
        PushI        1                         
        Jump         -compare-2333-join        
        Label        -compare-2333-false       
        PushI        0                         
        Jump         -compare-2333-join        
        Label        -compare-2333-join        
        JumpTrue     -print-boolean-2334-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2334-join  
        Label        -print-boolean-2334-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2334-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2335-arg1        
        PushI        18                        
        Label        -compare-2335-arg2        
        PushF        3.800000                  
        ConvertI                               
        Label        -compare-2335-sub         
        Subtract                               
        JumpFalse    -compare-2335-true        
        Jump         -compare-2335-false       
        Label        -compare-2335-true        
        PushI        1                         
        Jump         -compare-2335-join        
        Label        -compare-2335-false       
        PushI        0                         
        Jump         -compare-2335-join        
        Label        -compare-2335-join        
        JumpTrue     -print-boolean-2336-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2336-join  
        Label        -print-boolean-2336-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2336-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2337-arg1        
        PushI        8                         
        Label        -compare-2337-arg2        
        PushF        3.500000                  
        ConvertI                               
        Label        -compare-2337-sub         
        Subtract                               
        JumpFalse    -compare-2337-true        
        Jump         -compare-2337-false       
        Label        -compare-2337-true        
        PushI        1                         
        Jump         -compare-2337-join        
        Label        -compare-2337-false       
        PushI        0                         
        Jump         -compare-2337-join        
        Label        -compare-2337-join        
        JumpTrue     -print-boolean-2338-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2338-join  
        Label        -print-boolean-2338-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2338-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2339-arg1        
        PushI        46                        
        Label        -compare-2339-arg2        
        PushF        4.500000                  
        ConvertI                               
        Label        -compare-2339-sub         
        Subtract                               
        JumpFalse    -compare-2339-true        
        Jump         -compare-2339-false       
        Label        -compare-2339-true        
        PushI        1                         
        Jump         -compare-2339-join        
        Label        -compare-2339-false       
        PushI        0                         
        Jump         -compare-2339-join        
        Label        -compare-2339-join        
        JumpTrue     -print-boolean-2340-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2340-join  
        Label        -print-boolean-2340-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2340-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2341-arg1        
        PushI        34                        
        Label        -compare-2341-arg2        
        PushF        3.900000                  
        ConvertI                               
        Label        -compare-2341-sub         
        Subtract                               
        JumpFalse    -compare-2341-true        
        Jump         -compare-2341-false       
        Label        -compare-2341-true        
        PushI        1                         
        Jump         -compare-2341-join        
        Label        -compare-2341-false       
        PushI        0                         
        Jump         -compare-2341-join        
        Label        -compare-2341-join        
        JumpTrue     -print-boolean-2342-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2342-join  
        Label        -print-boolean-2342-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2342-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2343-arg1        
        PushI        42                        
        Label        -compare-2343-arg2        
        PushF        7.400000                  
        ConvertI                               
        Label        -compare-2343-sub         
        Subtract                               
        JumpFalse    -compare-2343-true        
        Jump         -compare-2343-false       
        Label        -compare-2343-true        
        PushI        1                         
        Jump         -compare-2343-join        
        Label        -compare-2343-false       
        PushI        0                         
        Jump         -compare-2343-join        
        Label        -compare-2343-join        
        JumpTrue     -print-boolean-2344-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2344-join  
        Label        -print-boolean-2344-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2344-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2345-arg1        
        PushI        18                        
        Label        -compare-2345-arg2        
        PushF        5.000000                  
        ConvertI                               
        Label        -compare-2345-sub         
        Subtract                               
        JumpFalse    -compare-2345-true        
        Jump         -compare-2345-false       
        Label        -compare-2345-true        
        PushI        1                         
        Jump         -compare-2345-join        
        Label        -compare-2345-false       
        PushI        0                         
        Jump         -compare-2345-join        
        Label        -compare-2345-join        
        JumpTrue     -print-boolean-2346-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2346-join  
        Label        -print-boolean-2346-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2346-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2347-arg1        
        PushI        64                        
        Label        -compare-2347-arg2        
        PushF        5.000000                  
        ConvertI                               
        Label        -compare-2347-sub         
        Subtract                               
        JumpFalse    -compare-2347-true        
        Jump         -compare-2347-false       
        Label        -compare-2347-true        
        PushI        1                         
        Jump         -compare-2347-join        
        Label        -compare-2347-false       
        PushI        0                         
        Jump         -compare-2347-join        
        Label        -compare-2347-join        
        JumpTrue     -print-boolean-2348-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2348-join  
        Label        -print-boolean-2348-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2348-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2349-arg1        
        PushI        31                        
        Label        -compare-2349-arg2        
        PushF        4.200000                  
        ConvertI                               
        Label        -compare-2349-sub         
        Subtract                               
        JumpFalse    -compare-2349-true        
        Jump         -compare-2349-false       
        Label        -compare-2349-true        
        PushI        1                         
        Jump         -compare-2349-join        
        Label        -compare-2349-false       
        PushI        0                         
        Jump         -compare-2349-join        
        Label        -compare-2349-join        
        JumpTrue     -print-boolean-2350-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2350-join  
        Label        -print-boolean-2350-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2350-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2351-arg1        
        PushI        8                         
        Label        -compare-2351-arg2        
        PushF        1.100000                  
        ConvertI                               
        Label        -compare-2351-sub         
        Subtract                               
        JumpFalse    -compare-2351-true        
        Jump         -compare-2351-false       
        Label        -compare-2351-true        
        PushI        1                         
        Jump         -compare-2351-join        
        Label        -compare-2351-false       
        PushI        0                         
        Jump         -compare-2351-join        
        Label        -compare-2351-join        
        JumpTrue     -print-boolean-2352-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2352-join  
        Label        -print-boolean-2352-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2352-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2353-arg1        
        PushF        2.600000                  
        ConvertI                               
        Label        -compare-2353-arg2        
        PushF        1.900000                  
        ConvertI                               
        Label        -compare-2353-sub         
        Subtract                               
        JumpFalse    -compare-2353-true        
        Jump         -compare-2353-false       
        Label        -compare-2353-true        
        PushI        1                         
        Jump         -compare-2353-join        
        Label        -compare-2353-false       
        PushI        0                         
        Jump         -compare-2353-join        
        Label        -compare-2353-join        
        JumpTrue     -print-boolean-2354-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2354-join  
        Label        -print-boolean-2354-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2354-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2355-arg1        
        PushF        3.400000                  
        ConvertI                               
        Label        -compare-2355-arg2        
        PushF        9.300000                  
        ConvertI                               
        Label        -compare-2355-sub         
        Subtract                               
        JumpFalse    -compare-2355-true        
        Jump         -compare-2355-false       
        Label        -compare-2355-true        
        PushI        1                         
        Jump         -compare-2355-join        
        Label        -compare-2355-false       
        PushI        0                         
        Jump         -compare-2355-join        
        Label        -compare-2355-join        
        JumpTrue     -print-boolean-2356-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2356-join  
        Label        -print-boolean-2356-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2356-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2357-arg1        
        PushF        9.400000                  
        ConvertI                               
        Label        -compare-2357-arg2        
        PushF        2.800000                  
        ConvertI                               
        Label        -compare-2357-sub         
        Subtract                               
        JumpFalse    -compare-2357-true        
        Jump         -compare-2357-false       
        Label        -compare-2357-true        
        PushI        1                         
        Jump         -compare-2357-join        
        Label        -compare-2357-false       
        PushI        0                         
        Jump         -compare-2357-join        
        Label        -compare-2357-join        
        JumpTrue     -print-boolean-2358-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2358-join  
        Label        -print-boolean-2358-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2358-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2359-arg1        
        PushF        7.300000                  
        ConvertI                               
        Label        -compare-2359-arg2        
        PushF        1.700000                  
        ConvertI                               
        Label        -compare-2359-sub         
        Subtract                               
        JumpFalse    -compare-2359-true        
        Jump         -compare-2359-false       
        Label        -compare-2359-true        
        PushI        1                         
        Jump         -compare-2359-join        
        Label        -compare-2359-false       
        PushI        0                         
        Jump         -compare-2359-join        
        Label        -compare-2359-join        
        JumpTrue     -print-boolean-2360-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2360-join  
        Label        -print-boolean-2360-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2360-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2361-arg1        
        PushF        5.300000                  
        ConvertI                               
        Label        -compare-2361-arg2        
        PushF        4.700000                  
        ConvertI                               
        Label        -compare-2361-sub         
        Subtract                               
        JumpFalse    -compare-2361-true        
        Jump         -compare-2361-false       
        Label        -compare-2361-true        
        PushI        1                         
        Jump         -compare-2361-join        
        Label        -compare-2361-false       
        PushI        0                         
        Jump         -compare-2361-join        
        Label        -compare-2361-join        
        JumpTrue     -print-boolean-2362-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2362-join  
        Label        -print-boolean-2362-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2362-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2363-arg1        
        PushF        4.000000                  
        ConvertI                               
        Label        -compare-2363-arg2        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2363-sub         
        Subtract                               
        JumpFalse    -compare-2363-true        
        Jump         -compare-2363-false       
        Label        -compare-2363-true        
        PushI        1                         
        Jump         -compare-2363-join        
        Label        -compare-2363-false       
        PushI        0                         
        Jump         -compare-2363-join        
        Label        -compare-2363-join        
        JumpTrue     -print-boolean-2364-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2364-join  
        Label        -print-boolean-2364-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2364-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2365-arg1        
        PushF        4.600000                  
        ConvertI                               
        Label        -compare-2365-arg2        
        PushF        9.500000                  
        ConvertI                               
        Label        -compare-2365-sub         
        Subtract                               
        JumpFalse    -compare-2365-true        
        Jump         -compare-2365-false       
        Label        -compare-2365-true        
        PushI        1                         
        Jump         -compare-2365-join        
        Label        -compare-2365-false       
        PushI        0                         
        Jump         -compare-2365-join        
        Label        -compare-2365-join        
        JumpTrue     -print-boolean-2366-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2366-join  
        Label        -print-boolean-2366-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2366-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2367-arg1        
        PushF        6.800000                  
        ConvertI                               
        Label        -compare-2367-arg2        
        PushF        3.800000                  
        ConvertI                               
        Label        -compare-2367-sub         
        Subtract                               
        JumpFalse    -compare-2367-true        
        Jump         -compare-2367-false       
        Label        -compare-2367-true        
        PushI        1                         
        Jump         -compare-2367-join        
        Label        -compare-2367-false       
        PushI        0                         
        Jump         -compare-2367-join        
        Label        -compare-2367-join        
        JumpTrue     -print-boolean-2368-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2368-join  
        Label        -print-boolean-2368-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2368-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2369-arg1        
        PushF        8.600000                  
        ConvertI                               
        Label        -compare-2369-arg2        
        PushF        1.100000                  
        ConvertI                               
        Label        -compare-2369-sub         
        Subtract                               
        JumpFalse    -compare-2369-true        
        Jump         -compare-2369-false       
        Label        -compare-2369-true        
        PushI        1                         
        Jump         -compare-2369-join        
        Label        -compare-2369-false       
        PushI        0                         
        Jump         -compare-2369-join        
        Label        -compare-2369-join        
        JumpTrue     -print-boolean-2370-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2370-join  
        Label        -print-boolean-2370-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2370-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2371-arg1        
        PushF        3.700000                  
        ConvertI                               
        Label        -compare-2371-arg2        
        PushF        2.500000                  
        ConvertI                               
        Label        -compare-2371-sub         
        Subtract                               
        JumpFalse    -compare-2371-true        
        Jump         -compare-2371-false       
        Label        -compare-2371-true        
        PushI        1                         
        Jump         -compare-2371-join        
        Label        -compare-2371-false       
        PushI        0                         
        Jump         -compare-2371-join        
        Label        -compare-2371-join        
        JumpTrue     -print-boolean-2372-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2372-join  
        Label        -print-boolean-2372-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2372-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2373-arg1        
        PushF        2.700000                  
        ConvertI                               
        Label        -compare-2373-arg2        
        PushF        5.400000                  
        ConvertI                               
        Label        -compare-2373-sub         
        Subtract                               
        JumpFalse    -compare-2373-true        
        Jump         -compare-2373-false       
        Label        -compare-2373-true        
        PushI        1                         
        Jump         -compare-2373-join        
        Label        -compare-2373-false       
        PushI        0                         
        Jump         -compare-2373-join        
        Label        -compare-2373-join        
        JumpTrue     -print-boolean-2374-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2374-join  
        Label        -print-boolean-2374-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2374-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2375-arg1        
        PushF        8.100000                  
        ConvertI                               
        Label        -compare-2375-arg2        
        PushF        1.600000                  
        ConvertI                               
        Label        -compare-2375-sub         
        Subtract                               
        JumpFalse    -compare-2375-true        
        Jump         -compare-2375-false       
        Label        -compare-2375-true        
        PushI        1                         
        Jump         -compare-2375-join        
        Label        -compare-2375-false       
        PushI        0                         
        Jump         -compare-2375-join        
        Label        -compare-2375-join        
        JumpTrue     -print-boolean-2376-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2376-join  
        Label        -print-boolean-2376-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2376-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
