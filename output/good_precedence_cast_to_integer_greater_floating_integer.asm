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
        Label        -compare-2462-arg1        
        PushF        2.100000                  
        ConvertI                               
        Label        -compare-2462-arg2        
        PushI        36                        
        Label        -compare-2462-sub         
        Subtract                               
        JumpPos      -compare-2462-true        
        Jump         -compare-2462-false       
        Label        -compare-2462-true        
        PushI        1                         
        Jump         -compare-2462-join        
        Label        -compare-2462-false       
        PushI        0                         
        Jump         -compare-2462-join        
        Label        -compare-2462-join        
        JumpTrue     -print-boolean-2463-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2463-join  
        Label        -print-boolean-2463-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2463-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2464-arg1        
        PushF        6.300000                  
        ConvertI                               
        Label        -compare-2464-arg2        
        PushI        51                        
        Label        -compare-2464-sub         
        Subtract                               
        JumpPos      -compare-2464-true        
        Jump         -compare-2464-false       
        Label        -compare-2464-true        
        PushI        1                         
        Jump         -compare-2464-join        
        Label        -compare-2464-false       
        PushI        0                         
        Jump         -compare-2464-join        
        Label        -compare-2464-join        
        JumpTrue     -print-boolean-2465-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2465-join  
        Label        -print-boolean-2465-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2465-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2466-arg1        
        PushF        8.200000                  
        ConvertI                               
        Label        -compare-2466-arg2        
        PushI        6                         
        Label        -compare-2466-sub         
        Subtract                               
        JumpPos      -compare-2466-true        
        Jump         -compare-2466-false       
        Label        -compare-2466-true        
        PushI        1                         
        Jump         -compare-2466-join        
        Label        -compare-2466-false       
        PushI        0                         
        Jump         -compare-2466-join        
        Label        -compare-2466-join        
        JumpTrue     -print-boolean-2467-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2467-join  
        Label        -print-boolean-2467-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2467-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2468-arg1        
        PushF        3.100000                  
        ConvertI                               
        Label        -compare-2468-arg2        
        PushI        62                        
        Label        -compare-2468-sub         
        Subtract                               
        JumpPos      -compare-2468-true        
        Jump         -compare-2468-false       
        Label        -compare-2468-true        
        PushI        1                         
        Jump         -compare-2468-join        
        Label        -compare-2468-false       
        PushI        0                         
        Jump         -compare-2468-join        
        Label        -compare-2468-join        
        JumpTrue     -print-boolean-2469-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2469-join  
        Label        -print-boolean-2469-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2469-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2470-arg1        
        PushF        4.700000                  
        ConvertI                               
        Label        -compare-2470-arg2        
        PushI        70                        
        Label        -compare-2470-sub         
        Subtract                               
        JumpPos      -compare-2470-true        
        Jump         -compare-2470-false       
        Label        -compare-2470-true        
        PushI        1                         
        Jump         -compare-2470-join        
        Label        -compare-2470-false       
        PushI        0                         
        Jump         -compare-2470-join        
        Label        -compare-2470-join        
        JumpTrue     -print-boolean-2471-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2471-join  
        Label        -print-boolean-2471-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2471-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2472-arg1        
        PushF        8.600000                  
        ConvertI                               
        Label        -compare-2472-arg2        
        PushI        44                        
        Label        -compare-2472-sub         
        Subtract                               
        JumpPos      -compare-2472-true        
        Jump         -compare-2472-false       
        Label        -compare-2472-true        
        PushI        1                         
        Jump         -compare-2472-join        
        Label        -compare-2472-false       
        PushI        0                         
        Jump         -compare-2472-join        
        Label        -compare-2472-join        
        JumpTrue     -print-boolean-2473-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2473-join  
        Label        -print-boolean-2473-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2473-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2474-arg1        
        PushF        3.000000                  
        ConvertI                               
        Label        -compare-2474-arg2        
        PushI        38                        
        Label        -compare-2474-sub         
        Subtract                               
        JumpPos      -compare-2474-true        
        Jump         -compare-2474-false       
        Label        -compare-2474-true        
        PushI        1                         
        Jump         -compare-2474-join        
        Label        -compare-2474-false       
        PushI        0                         
        Jump         -compare-2474-join        
        Label        -compare-2474-join        
        JumpTrue     -print-boolean-2475-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2475-join  
        Label        -print-boolean-2475-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2475-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2476-arg1        
        PushF        9.600000                  
        ConvertI                               
        Label        -compare-2476-arg2        
        PushI        16                        
        Label        -compare-2476-sub         
        Subtract                               
        JumpPos      -compare-2476-true        
        Jump         -compare-2476-false       
        Label        -compare-2476-true        
        PushI        1                         
        Jump         -compare-2476-join        
        Label        -compare-2476-false       
        PushI        0                         
        Jump         -compare-2476-join        
        Label        -compare-2476-join        
        JumpTrue     -print-boolean-2477-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2477-join  
        Label        -print-boolean-2477-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2477-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2478-arg1        
        PushF        4.500000                  
        ConvertI                               
        Label        -compare-2478-arg2        
        PushI        72                        
        Label        -compare-2478-sub         
        Subtract                               
        JumpPos      -compare-2478-true        
        Jump         -compare-2478-false       
        Label        -compare-2478-true        
        PushI        1                         
        Jump         -compare-2478-join        
        Label        -compare-2478-false       
        PushI        0                         
        Jump         -compare-2478-join        
        Label        -compare-2478-join        
        JumpTrue     -print-boolean-2479-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2479-join  
        Label        -print-boolean-2479-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2479-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2480-arg1        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-2480-arg2        
        PushI        95                        
        Label        -compare-2480-sub         
        Subtract                               
        JumpPos      -compare-2480-true        
        Jump         -compare-2480-false       
        Label        -compare-2480-true        
        PushI        1                         
        Jump         -compare-2480-join        
        Label        -compare-2480-false       
        PushI        0                         
        Jump         -compare-2480-join        
        Label        -compare-2480-join        
        JumpTrue     -print-boolean-2481-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2481-join  
        Label        -print-boolean-2481-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2481-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2482-arg1        
        PushF        1.700000                  
        ConvertI                               
        Label        -compare-2482-arg2        
        PushI        50                        
        Label        -compare-2482-sub         
        Subtract                               
        JumpPos      -compare-2482-true        
        Jump         -compare-2482-false       
        Label        -compare-2482-true        
        PushI        1                         
        Jump         -compare-2482-join        
        Label        -compare-2482-false       
        PushI        0                         
        Jump         -compare-2482-join        
        Label        -compare-2482-join        
        JumpTrue     -print-boolean-2483-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2483-join  
        Label        -print-boolean-2483-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2483-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2484-arg1        
        PushF        1.000000                  
        ConvertI                               
        Label        -compare-2484-arg2        
        PushI        66                        
        Label        -compare-2484-sub         
        Subtract                               
        JumpPos      -compare-2484-true        
        Jump         -compare-2484-false       
        Label        -compare-2484-true        
        PushI        1                         
        Jump         -compare-2484-join        
        Label        -compare-2484-false       
        PushI        0                         
        Jump         -compare-2484-join        
        Label        -compare-2484-join        
        JumpTrue     -print-boolean-2485-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2485-join  
        Label        -print-boolean-2485-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2485-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2486-arg1        
        PushI        24                        
        Label        -compare-2486-arg2        
        PushF        1.000000                  
        ConvertI                               
        Label        -compare-2486-sub         
        Subtract                               
        JumpPos      -compare-2486-true        
        Jump         -compare-2486-false       
        Label        -compare-2486-true        
        PushI        1                         
        Jump         -compare-2486-join        
        Label        -compare-2486-false       
        PushI        0                         
        Jump         -compare-2486-join        
        Label        -compare-2486-join        
        JumpTrue     -print-boolean-2487-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2487-join  
        Label        -print-boolean-2487-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2487-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2488-arg1        
        PushI        32                        
        Label        -compare-2488-arg2        
        PushF        4.200000                  
        ConvertI                               
        Label        -compare-2488-sub         
        Subtract                               
        JumpPos      -compare-2488-true        
        Jump         -compare-2488-false       
        Label        -compare-2488-true        
        PushI        1                         
        Jump         -compare-2488-join        
        Label        -compare-2488-false       
        PushI        0                         
        Jump         -compare-2488-join        
        Label        -compare-2488-join        
        JumpTrue     -print-boolean-2489-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2489-join  
        Label        -print-boolean-2489-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2489-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2490-arg1        
        PushI        79                        
        Label        -compare-2490-arg2        
        PushF        2.100000                  
        ConvertI                               
        Label        -compare-2490-sub         
        Subtract                               
        JumpPos      -compare-2490-true        
        Jump         -compare-2490-false       
        Label        -compare-2490-true        
        PushI        1                         
        Jump         -compare-2490-join        
        Label        -compare-2490-false       
        PushI        0                         
        Jump         -compare-2490-join        
        Label        -compare-2490-join        
        JumpTrue     -print-boolean-2491-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2491-join  
        Label        -print-boolean-2491-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2491-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2492-arg1        
        PushI        39                        
        Label        -compare-2492-arg2        
        PushF        2.400000                  
        ConvertI                               
        Label        -compare-2492-sub         
        Subtract                               
        JumpPos      -compare-2492-true        
        Jump         -compare-2492-false       
        Label        -compare-2492-true        
        PushI        1                         
        Jump         -compare-2492-join        
        Label        -compare-2492-false       
        PushI        0                         
        Jump         -compare-2492-join        
        Label        -compare-2492-join        
        JumpTrue     -print-boolean-2493-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2493-join  
        Label        -print-boolean-2493-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2493-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2494-arg1        
        PushI        10                        
        Label        -compare-2494-arg2        
        PushF        2.400000                  
        ConvertI                               
        Label        -compare-2494-sub         
        Subtract                               
        JumpPos      -compare-2494-true        
        Jump         -compare-2494-false       
        Label        -compare-2494-true        
        PushI        1                         
        Jump         -compare-2494-join        
        Label        -compare-2494-false       
        PushI        0                         
        Jump         -compare-2494-join        
        Label        -compare-2494-join        
        JumpTrue     -print-boolean-2495-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2495-join  
        Label        -print-boolean-2495-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2495-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2496-arg1        
        PushI        43                        
        Label        -compare-2496-arg2        
        PushF        2.300000                  
        ConvertI                               
        Label        -compare-2496-sub         
        Subtract                               
        JumpPos      -compare-2496-true        
        Jump         -compare-2496-false       
        Label        -compare-2496-true        
        PushI        1                         
        Jump         -compare-2496-join        
        Label        -compare-2496-false       
        PushI        0                         
        Jump         -compare-2496-join        
        Label        -compare-2496-join        
        JumpTrue     -print-boolean-2497-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2497-join  
        Label        -print-boolean-2497-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2497-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2498-arg1        
        PushI        11                        
        Label        -compare-2498-arg2        
        PushF        5.500000                  
        ConvertI                               
        Label        -compare-2498-sub         
        Subtract                               
        JumpPos      -compare-2498-true        
        Jump         -compare-2498-false       
        Label        -compare-2498-true        
        PushI        1                         
        Jump         -compare-2498-join        
        Label        -compare-2498-false       
        PushI        0                         
        Jump         -compare-2498-join        
        Label        -compare-2498-join        
        JumpTrue     -print-boolean-2499-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2499-join  
        Label        -print-boolean-2499-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2499-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2500-arg1        
        PushI        99                        
        Label        -compare-2500-arg2        
        PushF        5.900000                  
        ConvertI                               
        Label        -compare-2500-sub         
        Subtract                               
        JumpPos      -compare-2500-true        
        Jump         -compare-2500-false       
        Label        -compare-2500-true        
        PushI        1                         
        Jump         -compare-2500-join        
        Label        -compare-2500-false       
        PushI        0                         
        Jump         -compare-2500-join        
        Label        -compare-2500-join        
        JumpTrue     -print-boolean-2501-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2501-join  
        Label        -print-boolean-2501-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2501-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2502-arg1        
        PushI        62                        
        Label        -compare-2502-arg2        
        PushF        9.100000                  
        ConvertI                               
        Label        -compare-2502-sub         
        Subtract                               
        JumpPos      -compare-2502-true        
        Jump         -compare-2502-false       
        Label        -compare-2502-true        
        PushI        1                         
        Jump         -compare-2502-join        
        Label        -compare-2502-false       
        PushI        0                         
        Jump         -compare-2502-join        
        Label        -compare-2502-join        
        JumpTrue     -print-boolean-2503-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2503-join  
        Label        -print-boolean-2503-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2503-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2504-arg1        
        PushI        74                        
        Label        -compare-2504-arg2        
        PushF        5.900000                  
        ConvertI                               
        Label        -compare-2504-sub         
        Subtract                               
        JumpPos      -compare-2504-true        
        Jump         -compare-2504-false       
        Label        -compare-2504-true        
        PushI        1                         
        Jump         -compare-2504-join        
        Label        -compare-2504-false       
        PushI        0                         
        Jump         -compare-2504-join        
        Label        -compare-2504-join        
        JumpTrue     -print-boolean-2505-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2505-join  
        Label        -print-boolean-2505-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2505-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2506-arg1        
        PushI        36                        
        Label        -compare-2506-arg2        
        PushF        9.200000                  
        ConvertI                               
        Label        -compare-2506-sub         
        Subtract                               
        JumpPos      -compare-2506-true        
        Jump         -compare-2506-false       
        Label        -compare-2506-true        
        PushI        1                         
        Jump         -compare-2506-join        
        Label        -compare-2506-false       
        PushI        0                         
        Jump         -compare-2506-join        
        Label        -compare-2506-join        
        JumpTrue     -print-boolean-2507-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2507-join  
        Label        -print-boolean-2507-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2507-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2508-arg1        
        PushI        34                        
        Label        -compare-2508-arg2        
        PushF        1.500000                  
        ConvertI                               
        Label        -compare-2508-sub         
        Subtract                               
        JumpPos      -compare-2508-true        
        Jump         -compare-2508-false       
        Label        -compare-2508-true        
        PushI        1                         
        Jump         -compare-2508-join        
        Label        -compare-2508-false       
        PushI        0                         
        Jump         -compare-2508-join        
        Label        -compare-2508-join        
        JumpTrue     -print-boolean-2509-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2509-join  
        Label        -print-boolean-2509-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2509-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2510-arg1        
        PushF        3.900000                  
        ConvertI                               
        Label        -compare-2510-arg2        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-2510-sub         
        Subtract                               
        JumpPos      -compare-2510-true        
        Jump         -compare-2510-false       
        Label        -compare-2510-true        
        PushI        1                         
        Jump         -compare-2510-join        
        Label        -compare-2510-false       
        PushI        0                         
        Jump         -compare-2510-join        
        Label        -compare-2510-join        
        JumpTrue     -print-boolean-2511-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2511-join  
        Label        -print-boolean-2511-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2511-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2512-arg1        
        PushF        8.600000                  
        ConvertI                               
        Label        -compare-2512-arg2        
        PushF        3.900000                  
        ConvertI                               
        Label        -compare-2512-sub         
        Subtract                               
        JumpPos      -compare-2512-true        
        Jump         -compare-2512-false       
        Label        -compare-2512-true        
        PushI        1                         
        Jump         -compare-2512-join        
        Label        -compare-2512-false       
        PushI        0                         
        Jump         -compare-2512-join        
        Label        -compare-2512-join        
        JumpTrue     -print-boolean-2513-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2513-join  
        Label        -print-boolean-2513-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2513-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2514-arg1        
        PushF        9.400000                  
        ConvertI                               
        Label        -compare-2514-arg2        
        PushF        3.900000                  
        ConvertI                               
        Label        -compare-2514-sub         
        Subtract                               
        JumpPos      -compare-2514-true        
        Jump         -compare-2514-false       
        Label        -compare-2514-true        
        PushI        1                         
        Jump         -compare-2514-join        
        Label        -compare-2514-false       
        PushI        0                         
        Jump         -compare-2514-join        
        Label        -compare-2514-join        
        JumpTrue     -print-boolean-2515-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2515-join  
        Label        -print-boolean-2515-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2515-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2516-arg1        
        PushF        3.400000                  
        ConvertI                               
        Label        -compare-2516-arg2        
        PushF        5.200000                  
        ConvertI                               
        Label        -compare-2516-sub         
        Subtract                               
        JumpPos      -compare-2516-true        
        Jump         -compare-2516-false       
        Label        -compare-2516-true        
        PushI        1                         
        Jump         -compare-2516-join        
        Label        -compare-2516-false       
        PushI        0                         
        Jump         -compare-2516-join        
        Label        -compare-2516-join        
        JumpTrue     -print-boolean-2517-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2517-join  
        Label        -print-boolean-2517-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2517-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2518-arg1        
        PushF        7.300000                  
        ConvertI                               
        Label        -compare-2518-arg2        
        PushF        2.700000                  
        ConvertI                               
        Label        -compare-2518-sub         
        Subtract                               
        JumpPos      -compare-2518-true        
        Jump         -compare-2518-false       
        Label        -compare-2518-true        
        PushI        1                         
        Jump         -compare-2518-join        
        Label        -compare-2518-false       
        PushI        0                         
        Jump         -compare-2518-join        
        Label        -compare-2518-join        
        JumpTrue     -print-boolean-2519-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2519-join  
        Label        -print-boolean-2519-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2519-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2520-arg1        
        PushF        9.000000                  
        ConvertI                               
        Label        -compare-2520-arg2        
        PushF        6.100000                  
        ConvertI                               
        Label        -compare-2520-sub         
        Subtract                               
        JumpPos      -compare-2520-true        
        Jump         -compare-2520-false       
        Label        -compare-2520-true        
        PushI        1                         
        Jump         -compare-2520-join        
        Label        -compare-2520-false       
        PushI        0                         
        Jump         -compare-2520-join        
        Label        -compare-2520-join        
        JumpTrue     -print-boolean-2521-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2521-join  
        Label        -print-boolean-2521-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2521-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2522-arg1        
        PushF        4.600000                  
        ConvertI                               
        Label        -compare-2522-arg2        
        PushF        4.200000                  
        ConvertI                               
        Label        -compare-2522-sub         
        Subtract                               
        JumpPos      -compare-2522-true        
        Jump         -compare-2522-false       
        Label        -compare-2522-true        
        PushI        1                         
        Jump         -compare-2522-join        
        Label        -compare-2522-false       
        PushI        0                         
        Jump         -compare-2522-join        
        Label        -compare-2522-join        
        JumpTrue     -print-boolean-2523-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2523-join  
        Label        -print-boolean-2523-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2523-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2524-arg1        
        PushF        6.000000                  
        ConvertI                               
        Label        -compare-2524-arg2        
        PushF        5.300000                  
        ConvertI                               
        Label        -compare-2524-sub         
        Subtract                               
        JumpPos      -compare-2524-true        
        Jump         -compare-2524-false       
        Label        -compare-2524-true        
        PushI        1                         
        Jump         -compare-2524-join        
        Label        -compare-2524-false       
        PushI        0                         
        Jump         -compare-2524-join        
        Label        -compare-2524-join        
        JumpTrue     -print-boolean-2525-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2525-join  
        Label        -print-boolean-2525-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2525-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2526-arg1        
        PushF        1.000000                  
        ConvertI                               
        Label        -compare-2526-arg2        
        PushF        5.000000                  
        ConvertI                               
        Label        -compare-2526-sub         
        Subtract                               
        JumpPos      -compare-2526-true        
        Jump         -compare-2526-false       
        Label        -compare-2526-true        
        PushI        1                         
        Jump         -compare-2526-join        
        Label        -compare-2526-false       
        PushI        0                         
        Jump         -compare-2526-join        
        Label        -compare-2526-join        
        JumpTrue     -print-boolean-2527-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2527-join  
        Label        -print-boolean-2527-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2527-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2528-arg1        
        PushF        5.000000                  
        ConvertI                               
        Label        -compare-2528-arg2        
        PushF        4.200000                  
        ConvertI                               
        Label        -compare-2528-sub         
        Subtract                               
        JumpPos      -compare-2528-true        
        Jump         -compare-2528-false       
        Label        -compare-2528-true        
        PushI        1                         
        Jump         -compare-2528-join        
        Label        -compare-2528-false       
        PushI        0                         
        Jump         -compare-2528-join        
        Label        -compare-2528-join        
        JumpTrue     -print-boolean-2529-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2529-join  
        Label        -print-boolean-2529-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2529-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2530-arg1        
        PushF        4.300000                  
        ConvertI                               
        Label        -compare-2530-arg2        
        PushF        9.300000                  
        ConvertI                               
        Label        -compare-2530-sub         
        Subtract                               
        JumpPos      -compare-2530-true        
        Jump         -compare-2530-false       
        Label        -compare-2530-true        
        PushI        1                         
        Jump         -compare-2530-join        
        Label        -compare-2530-false       
        PushI        0                         
        Jump         -compare-2530-join        
        Label        -compare-2530-join        
        JumpTrue     -print-boolean-2531-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2531-join  
        Label        -print-boolean-2531-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2531-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2532-arg1        
        PushF        1.600000                  
        ConvertI                               
        Label        -compare-2532-arg2        
        PushF        1.500000                  
        ConvertI                               
        Label        -compare-2532-sub         
        Subtract                               
        JumpPos      -compare-2532-true        
        Jump         -compare-2532-false       
        Label        -compare-2532-true        
        PushI        1                         
        Jump         -compare-2532-join        
        Label        -compare-2532-false       
        PushI        0                         
        Jump         -compare-2532-join        
        Label        -compare-2532-join        
        JumpTrue     -print-boolean-2533-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2533-join  
        Label        -print-boolean-2533-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2533-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
