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
        Label        -compare-2449-arg1        
        PushF        2.100000                  
        ConvertI                               
        Label        -compare-2449-arg2        
        PushI        36                        
        Label        -compare-2449-sub         
        Subtract                               
        JumpPos      -compare-2449-true        
        Jump         -compare-2449-false       
        Label        -compare-2449-true        
        PushI        1                         
        Jump         -compare-2449-join        
        Label        -compare-2449-false       
        PushI        0                         
        Jump         -compare-2449-join        
        Label        -compare-2449-join        
        JumpTrue     -print-boolean-2450-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2450-join  
        Label        -print-boolean-2450-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2450-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2451-arg1        
        PushF        6.300000                  
        ConvertI                               
        Label        -compare-2451-arg2        
        PushI        51                        
        Label        -compare-2451-sub         
        Subtract                               
        JumpPos      -compare-2451-true        
        Jump         -compare-2451-false       
        Label        -compare-2451-true        
        PushI        1                         
        Jump         -compare-2451-join        
        Label        -compare-2451-false       
        PushI        0                         
        Jump         -compare-2451-join        
        Label        -compare-2451-join        
        JumpTrue     -print-boolean-2452-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2452-join  
        Label        -print-boolean-2452-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2452-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2453-arg1        
        PushF        8.200000                  
        ConvertI                               
        Label        -compare-2453-arg2        
        PushI        6                         
        Label        -compare-2453-sub         
        Subtract                               
        JumpPos      -compare-2453-true        
        Jump         -compare-2453-false       
        Label        -compare-2453-true        
        PushI        1                         
        Jump         -compare-2453-join        
        Label        -compare-2453-false       
        PushI        0                         
        Jump         -compare-2453-join        
        Label        -compare-2453-join        
        JumpTrue     -print-boolean-2454-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2454-join  
        Label        -print-boolean-2454-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2454-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2455-arg1        
        PushF        3.100000                  
        ConvertI                               
        Label        -compare-2455-arg2        
        PushI        62                        
        Label        -compare-2455-sub         
        Subtract                               
        JumpPos      -compare-2455-true        
        Jump         -compare-2455-false       
        Label        -compare-2455-true        
        PushI        1                         
        Jump         -compare-2455-join        
        Label        -compare-2455-false       
        PushI        0                         
        Jump         -compare-2455-join        
        Label        -compare-2455-join        
        JumpTrue     -print-boolean-2456-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2456-join  
        Label        -print-boolean-2456-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2456-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2457-arg1        
        PushF        4.700000                  
        ConvertI                               
        Label        -compare-2457-arg2        
        PushI        70                        
        Label        -compare-2457-sub         
        Subtract                               
        JumpPos      -compare-2457-true        
        Jump         -compare-2457-false       
        Label        -compare-2457-true        
        PushI        1                         
        Jump         -compare-2457-join        
        Label        -compare-2457-false       
        PushI        0                         
        Jump         -compare-2457-join        
        Label        -compare-2457-join        
        JumpTrue     -print-boolean-2458-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2458-join  
        Label        -print-boolean-2458-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2458-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2459-arg1        
        PushF        8.600000                  
        ConvertI                               
        Label        -compare-2459-arg2        
        PushI        44                        
        Label        -compare-2459-sub         
        Subtract                               
        JumpPos      -compare-2459-true        
        Jump         -compare-2459-false       
        Label        -compare-2459-true        
        PushI        1                         
        Jump         -compare-2459-join        
        Label        -compare-2459-false       
        PushI        0                         
        Jump         -compare-2459-join        
        Label        -compare-2459-join        
        JumpTrue     -print-boolean-2460-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2460-join  
        Label        -print-boolean-2460-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2460-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2461-arg1        
        PushF        3.000000                  
        ConvertI                               
        Label        -compare-2461-arg2        
        PushI        38                        
        Label        -compare-2461-sub         
        Subtract                               
        JumpPos      -compare-2461-true        
        Jump         -compare-2461-false       
        Label        -compare-2461-true        
        PushI        1                         
        Jump         -compare-2461-join        
        Label        -compare-2461-false       
        PushI        0                         
        Jump         -compare-2461-join        
        Label        -compare-2461-join        
        JumpTrue     -print-boolean-2462-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2462-join  
        Label        -print-boolean-2462-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2462-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2463-arg1        
        PushF        9.600000                  
        ConvertI                               
        Label        -compare-2463-arg2        
        PushI        16                        
        Label        -compare-2463-sub         
        Subtract                               
        JumpPos      -compare-2463-true        
        Jump         -compare-2463-false       
        Label        -compare-2463-true        
        PushI        1                         
        Jump         -compare-2463-join        
        Label        -compare-2463-false       
        PushI        0                         
        Jump         -compare-2463-join        
        Label        -compare-2463-join        
        JumpTrue     -print-boolean-2464-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2464-join  
        Label        -print-boolean-2464-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2464-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2465-arg1        
        PushF        4.500000                  
        ConvertI                               
        Label        -compare-2465-arg2        
        PushI        72                        
        Label        -compare-2465-sub         
        Subtract                               
        JumpPos      -compare-2465-true        
        Jump         -compare-2465-false       
        Label        -compare-2465-true        
        PushI        1                         
        Jump         -compare-2465-join        
        Label        -compare-2465-false       
        PushI        0                         
        Jump         -compare-2465-join        
        Label        -compare-2465-join        
        JumpTrue     -print-boolean-2466-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2466-join  
        Label        -print-boolean-2466-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2466-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2467-arg1        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-2467-arg2        
        PushI        95                        
        Label        -compare-2467-sub         
        Subtract                               
        JumpPos      -compare-2467-true        
        Jump         -compare-2467-false       
        Label        -compare-2467-true        
        PushI        1                         
        Jump         -compare-2467-join        
        Label        -compare-2467-false       
        PushI        0                         
        Jump         -compare-2467-join        
        Label        -compare-2467-join        
        JumpTrue     -print-boolean-2468-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2468-join  
        Label        -print-boolean-2468-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2468-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2469-arg1        
        PushF        1.700000                  
        ConvertI                               
        Label        -compare-2469-arg2        
        PushI        50                        
        Label        -compare-2469-sub         
        Subtract                               
        JumpPos      -compare-2469-true        
        Jump         -compare-2469-false       
        Label        -compare-2469-true        
        PushI        1                         
        Jump         -compare-2469-join        
        Label        -compare-2469-false       
        PushI        0                         
        Jump         -compare-2469-join        
        Label        -compare-2469-join        
        JumpTrue     -print-boolean-2470-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2470-join  
        Label        -print-boolean-2470-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2470-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2471-arg1        
        PushF        1.000000                  
        ConvertI                               
        Label        -compare-2471-arg2        
        PushI        66                        
        Label        -compare-2471-sub         
        Subtract                               
        JumpPos      -compare-2471-true        
        Jump         -compare-2471-false       
        Label        -compare-2471-true        
        PushI        1                         
        Jump         -compare-2471-join        
        Label        -compare-2471-false       
        PushI        0                         
        Jump         -compare-2471-join        
        Label        -compare-2471-join        
        JumpTrue     -print-boolean-2472-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2472-join  
        Label        -print-boolean-2472-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2472-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2473-arg1        
        PushI        24                        
        Label        -compare-2473-arg2        
        PushF        1.000000                  
        ConvertI                               
        Label        -compare-2473-sub         
        Subtract                               
        JumpPos      -compare-2473-true        
        Jump         -compare-2473-false       
        Label        -compare-2473-true        
        PushI        1                         
        Jump         -compare-2473-join        
        Label        -compare-2473-false       
        PushI        0                         
        Jump         -compare-2473-join        
        Label        -compare-2473-join        
        JumpTrue     -print-boolean-2474-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2474-join  
        Label        -print-boolean-2474-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2474-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2475-arg1        
        PushI        32                        
        Label        -compare-2475-arg2        
        PushF        4.200000                  
        ConvertI                               
        Label        -compare-2475-sub         
        Subtract                               
        JumpPos      -compare-2475-true        
        Jump         -compare-2475-false       
        Label        -compare-2475-true        
        PushI        1                         
        Jump         -compare-2475-join        
        Label        -compare-2475-false       
        PushI        0                         
        Jump         -compare-2475-join        
        Label        -compare-2475-join        
        JumpTrue     -print-boolean-2476-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2476-join  
        Label        -print-boolean-2476-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2476-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2477-arg1        
        PushI        79                        
        Label        -compare-2477-arg2        
        PushF        2.100000                  
        ConvertI                               
        Label        -compare-2477-sub         
        Subtract                               
        JumpPos      -compare-2477-true        
        Jump         -compare-2477-false       
        Label        -compare-2477-true        
        PushI        1                         
        Jump         -compare-2477-join        
        Label        -compare-2477-false       
        PushI        0                         
        Jump         -compare-2477-join        
        Label        -compare-2477-join        
        JumpTrue     -print-boolean-2478-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2478-join  
        Label        -print-boolean-2478-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2478-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2479-arg1        
        PushI        39                        
        Label        -compare-2479-arg2        
        PushF        2.400000                  
        ConvertI                               
        Label        -compare-2479-sub         
        Subtract                               
        JumpPos      -compare-2479-true        
        Jump         -compare-2479-false       
        Label        -compare-2479-true        
        PushI        1                         
        Jump         -compare-2479-join        
        Label        -compare-2479-false       
        PushI        0                         
        Jump         -compare-2479-join        
        Label        -compare-2479-join        
        JumpTrue     -print-boolean-2480-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2480-join  
        Label        -print-boolean-2480-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2480-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2481-arg1        
        PushI        10                        
        Label        -compare-2481-arg2        
        PushF        2.400000                  
        ConvertI                               
        Label        -compare-2481-sub         
        Subtract                               
        JumpPos      -compare-2481-true        
        Jump         -compare-2481-false       
        Label        -compare-2481-true        
        PushI        1                         
        Jump         -compare-2481-join        
        Label        -compare-2481-false       
        PushI        0                         
        Jump         -compare-2481-join        
        Label        -compare-2481-join        
        JumpTrue     -print-boolean-2482-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2482-join  
        Label        -print-boolean-2482-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2482-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2483-arg1        
        PushI        43                        
        Label        -compare-2483-arg2        
        PushF        2.300000                  
        ConvertI                               
        Label        -compare-2483-sub         
        Subtract                               
        JumpPos      -compare-2483-true        
        Jump         -compare-2483-false       
        Label        -compare-2483-true        
        PushI        1                         
        Jump         -compare-2483-join        
        Label        -compare-2483-false       
        PushI        0                         
        Jump         -compare-2483-join        
        Label        -compare-2483-join        
        JumpTrue     -print-boolean-2484-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2484-join  
        Label        -print-boolean-2484-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2484-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2485-arg1        
        PushI        11                        
        Label        -compare-2485-arg2        
        PushF        5.500000                  
        ConvertI                               
        Label        -compare-2485-sub         
        Subtract                               
        JumpPos      -compare-2485-true        
        Jump         -compare-2485-false       
        Label        -compare-2485-true        
        PushI        1                         
        Jump         -compare-2485-join        
        Label        -compare-2485-false       
        PushI        0                         
        Jump         -compare-2485-join        
        Label        -compare-2485-join        
        JumpTrue     -print-boolean-2486-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2486-join  
        Label        -print-boolean-2486-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2486-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2487-arg1        
        PushI        99                        
        Label        -compare-2487-arg2        
        PushF        5.900000                  
        ConvertI                               
        Label        -compare-2487-sub         
        Subtract                               
        JumpPos      -compare-2487-true        
        Jump         -compare-2487-false       
        Label        -compare-2487-true        
        PushI        1                         
        Jump         -compare-2487-join        
        Label        -compare-2487-false       
        PushI        0                         
        Jump         -compare-2487-join        
        Label        -compare-2487-join        
        JumpTrue     -print-boolean-2488-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2488-join  
        Label        -print-boolean-2488-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2488-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2489-arg1        
        PushI        62                        
        Label        -compare-2489-arg2        
        PushF        9.100000                  
        ConvertI                               
        Label        -compare-2489-sub         
        Subtract                               
        JumpPos      -compare-2489-true        
        Jump         -compare-2489-false       
        Label        -compare-2489-true        
        PushI        1                         
        Jump         -compare-2489-join        
        Label        -compare-2489-false       
        PushI        0                         
        Jump         -compare-2489-join        
        Label        -compare-2489-join        
        JumpTrue     -print-boolean-2490-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2490-join  
        Label        -print-boolean-2490-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2490-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2491-arg1        
        PushI        74                        
        Label        -compare-2491-arg2        
        PushF        5.900000                  
        ConvertI                               
        Label        -compare-2491-sub         
        Subtract                               
        JumpPos      -compare-2491-true        
        Jump         -compare-2491-false       
        Label        -compare-2491-true        
        PushI        1                         
        Jump         -compare-2491-join        
        Label        -compare-2491-false       
        PushI        0                         
        Jump         -compare-2491-join        
        Label        -compare-2491-join        
        JumpTrue     -print-boolean-2492-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2492-join  
        Label        -print-boolean-2492-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2492-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2493-arg1        
        PushI        36                        
        Label        -compare-2493-arg2        
        PushF        9.200000                  
        ConvertI                               
        Label        -compare-2493-sub         
        Subtract                               
        JumpPos      -compare-2493-true        
        Jump         -compare-2493-false       
        Label        -compare-2493-true        
        PushI        1                         
        Jump         -compare-2493-join        
        Label        -compare-2493-false       
        PushI        0                         
        Jump         -compare-2493-join        
        Label        -compare-2493-join        
        JumpTrue     -print-boolean-2494-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2494-join  
        Label        -print-boolean-2494-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2494-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2495-arg1        
        PushI        34                        
        Label        -compare-2495-arg2        
        PushF        1.500000                  
        ConvertI                               
        Label        -compare-2495-sub         
        Subtract                               
        JumpPos      -compare-2495-true        
        Jump         -compare-2495-false       
        Label        -compare-2495-true        
        PushI        1                         
        Jump         -compare-2495-join        
        Label        -compare-2495-false       
        PushI        0                         
        Jump         -compare-2495-join        
        Label        -compare-2495-join        
        JumpTrue     -print-boolean-2496-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2496-join  
        Label        -print-boolean-2496-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2496-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2497-arg1        
        PushF        3.900000                  
        ConvertI                               
        Label        -compare-2497-arg2        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-2497-sub         
        Subtract                               
        JumpPos      -compare-2497-true        
        Jump         -compare-2497-false       
        Label        -compare-2497-true        
        PushI        1                         
        Jump         -compare-2497-join        
        Label        -compare-2497-false       
        PushI        0                         
        Jump         -compare-2497-join        
        Label        -compare-2497-join        
        JumpTrue     -print-boolean-2498-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2498-join  
        Label        -print-boolean-2498-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2498-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2499-arg1        
        PushF        8.600000                  
        ConvertI                               
        Label        -compare-2499-arg2        
        PushF        3.900000                  
        ConvertI                               
        Label        -compare-2499-sub         
        Subtract                               
        JumpPos      -compare-2499-true        
        Jump         -compare-2499-false       
        Label        -compare-2499-true        
        PushI        1                         
        Jump         -compare-2499-join        
        Label        -compare-2499-false       
        PushI        0                         
        Jump         -compare-2499-join        
        Label        -compare-2499-join        
        JumpTrue     -print-boolean-2500-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2500-join  
        Label        -print-boolean-2500-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2500-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2501-arg1        
        PushF        9.400000                  
        ConvertI                               
        Label        -compare-2501-arg2        
        PushF        3.900000                  
        ConvertI                               
        Label        -compare-2501-sub         
        Subtract                               
        JumpPos      -compare-2501-true        
        Jump         -compare-2501-false       
        Label        -compare-2501-true        
        PushI        1                         
        Jump         -compare-2501-join        
        Label        -compare-2501-false       
        PushI        0                         
        Jump         -compare-2501-join        
        Label        -compare-2501-join        
        JumpTrue     -print-boolean-2502-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2502-join  
        Label        -print-boolean-2502-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2502-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2503-arg1        
        PushF        3.400000                  
        ConvertI                               
        Label        -compare-2503-arg2        
        PushF        5.200000                  
        ConvertI                               
        Label        -compare-2503-sub         
        Subtract                               
        JumpPos      -compare-2503-true        
        Jump         -compare-2503-false       
        Label        -compare-2503-true        
        PushI        1                         
        Jump         -compare-2503-join        
        Label        -compare-2503-false       
        PushI        0                         
        Jump         -compare-2503-join        
        Label        -compare-2503-join        
        JumpTrue     -print-boolean-2504-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2504-join  
        Label        -print-boolean-2504-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2504-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2505-arg1        
        PushF        7.300000                  
        ConvertI                               
        Label        -compare-2505-arg2        
        PushF        2.700000                  
        ConvertI                               
        Label        -compare-2505-sub         
        Subtract                               
        JumpPos      -compare-2505-true        
        Jump         -compare-2505-false       
        Label        -compare-2505-true        
        PushI        1                         
        Jump         -compare-2505-join        
        Label        -compare-2505-false       
        PushI        0                         
        Jump         -compare-2505-join        
        Label        -compare-2505-join        
        JumpTrue     -print-boolean-2506-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2506-join  
        Label        -print-boolean-2506-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2506-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2507-arg1        
        PushF        9.000000                  
        ConvertI                               
        Label        -compare-2507-arg2        
        PushF        6.100000                  
        ConvertI                               
        Label        -compare-2507-sub         
        Subtract                               
        JumpPos      -compare-2507-true        
        Jump         -compare-2507-false       
        Label        -compare-2507-true        
        PushI        1                         
        Jump         -compare-2507-join        
        Label        -compare-2507-false       
        PushI        0                         
        Jump         -compare-2507-join        
        Label        -compare-2507-join        
        JumpTrue     -print-boolean-2508-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2508-join  
        Label        -print-boolean-2508-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2508-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2509-arg1        
        PushF        4.600000                  
        ConvertI                               
        Label        -compare-2509-arg2        
        PushF        4.200000                  
        ConvertI                               
        Label        -compare-2509-sub         
        Subtract                               
        JumpPos      -compare-2509-true        
        Jump         -compare-2509-false       
        Label        -compare-2509-true        
        PushI        1                         
        Jump         -compare-2509-join        
        Label        -compare-2509-false       
        PushI        0                         
        Jump         -compare-2509-join        
        Label        -compare-2509-join        
        JumpTrue     -print-boolean-2510-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2510-join  
        Label        -print-boolean-2510-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2510-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2511-arg1        
        PushF        6.000000                  
        ConvertI                               
        Label        -compare-2511-arg2        
        PushF        5.300000                  
        ConvertI                               
        Label        -compare-2511-sub         
        Subtract                               
        JumpPos      -compare-2511-true        
        Jump         -compare-2511-false       
        Label        -compare-2511-true        
        PushI        1                         
        Jump         -compare-2511-join        
        Label        -compare-2511-false       
        PushI        0                         
        Jump         -compare-2511-join        
        Label        -compare-2511-join        
        JumpTrue     -print-boolean-2512-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2512-join  
        Label        -print-boolean-2512-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2512-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2513-arg1        
        PushF        1.000000                  
        ConvertI                               
        Label        -compare-2513-arg2        
        PushF        5.000000                  
        ConvertI                               
        Label        -compare-2513-sub         
        Subtract                               
        JumpPos      -compare-2513-true        
        Jump         -compare-2513-false       
        Label        -compare-2513-true        
        PushI        1                         
        Jump         -compare-2513-join        
        Label        -compare-2513-false       
        PushI        0                         
        Jump         -compare-2513-join        
        Label        -compare-2513-join        
        JumpTrue     -print-boolean-2514-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2514-join  
        Label        -print-boolean-2514-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2514-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2515-arg1        
        PushF        5.000000                  
        ConvertI                               
        Label        -compare-2515-arg2        
        PushF        4.200000                  
        ConvertI                               
        Label        -compare-2515-sub         
        Subtract                               
        JumpPos      -compare-2515-true        
        Jump         -compare-2515-false       
        Label        -compare-2515-true        
        PushI        1                         
        Jump         -compare-2515-join        
        Label        -compare-2515-false       
        PushI        0                         
        Jump         -compare-2515-join        
        Label        -compare-2515-join        
        JumpTrue     -print-boolean-2516-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2516-join  
        Label        -print-boolean-2516-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2516-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2517-arg1        
        PushF        4.300000                  
        ConvertI                               
        Label        -compare-2517-arg2        
        PushF        9.300000                  
        ConvertI                               
        Label        -compare-2517-sub         
        Subtract                               
        JumpPos      -compare-2517-true        
        Jump         -compare-2517-false       
        Label        -compare-2517-true        
        PushI        1                         
        Jump         -compare-2517-join        
        Label        -compare-2517-false       
        PushI        0                         
        Jump         -compare-2517-join        
        Label        -compare-2517-join        
        JumpTrue     -print-boolean-2518-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2518-join  
        Label        -print-boolean-2518-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2518-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2519-arg1        
        PushF        1.600000                  
        ConvertI                               
        Label        -compare-2519-arg2        
        PushF        1.500000                  
        ConvertI                               
        Label        -compare-2519-sub         
        Subtract                               
        JumpPos      -compare-2519-true        
        Jump         -compare-2519-false       
        Label        -compare-2519-true        
        PushI        1                         
        Jump         -compare-2519-join        
        Label        -compare-2519-false       
        PushI        0                         
        Jump         -compare-2519-join        
        Label        -compare-2519-join        
        JumpTrue     -print-boolean-2520-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2520-join  
        Label        -print-boolean-2520-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2520-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
