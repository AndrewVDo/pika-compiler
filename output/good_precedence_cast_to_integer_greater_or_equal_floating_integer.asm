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
        Label        -compare-2606-arg1        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-2606-arg2        
        PushI        71                        
        Label        -compare-2606-sub         
        Subtract                               
        JumpNeg      -compare-2606-false       
        Jump         -compare-2606-true        
        Label        -compare-2606-true        
        PushI        1                         
        Jump         -compare-2606-join        
        Label        -compare-2606-false       
        PushI        0                         
        Jump         -compare-2606-join        
        Label        -compare-2606-join        
        JumpTrue     -print-boolean-2607-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2607-join  
        Label        -print-boolean-2607-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2607-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2608-arg1        
        PushF        6.600000                  
        ConvertI                               
        Label        -compare-2608-arg2        
        PushI        63                        
        Label        -compare-2608-sub         
        Subtract                               
        JumpNeg      -compare-2608-false       
        Jump         -compare-2608-true        
        Label        -compare-2608-true        
        PushI        1                         
        Jump         -compare-2608-join        
        Label        -compare-2608-false       
        PushI        0                         
        Jump         -compare-2608-join        
        Label        -compare-2608-join        
        JumpTrue     -print-boolean-2609-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2609-join  
        Label        -print-boolean-2609-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2609-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2610-arg1        
        PushF        1.400000                  
        ConvertI                               
        Label        -compare-2610-arg2        
        PushI        62                        
        Label        -compare-2610-sub         
        Subtract                               
        JumpNeg      -compare-2610-false       
        Jump         -compare-2610-true        
        Label        -compare-2610-true        
        PushI        1                         
        Jump         -compare-2610-join        
        Label        -compare-2610-false       
        PushI        0                         
        Jump         -compare-2610-join        
        Label        -compare-2610-join        
        JumpTrue     -print-boolean-2611-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2611-join  
        Label        -print-boolean-2611-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2611-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2612-arg1        
        PushF        4.100000                  
        ConvertI                               
        Label        -compare-2612-arg2        
        PushI        99                        
        Label        -compare-2612-sub         
        Subtract                               
        JumpNeg      -compare-2612-false       
        Jump         -compare-2612-true        
        Label        -compare-2612-true        
        PushI        1                         
        Jump         -compare-2612-join        
        Label        -compare-2612-false       
        PushI        0                         
        Jump         -compare-2612-join        
        Label        -compare-2612-join        
        JumpTrue     -print-boolean-2613-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2613-join  
        Label        -print-boolean-2613-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2613-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2614-arg1        
        PushF        2.900000                  
        ConvertI                               
        Label        -compare-2614-arg2        
        PushI        71                        
        Label        -compare-2614-sub         
        Subtract                               
        JumpNeg      -compare-2614-false       
        Jump         -compare-2614-true        
        Label        -compare-2614-true        
        PushI        1                         
        Jump         -compare-2614-join        
        Label        -compare-2614-false       
        PushI        0                         
        Jump         -compare-2614-join        
        Label        -compare-2614-join        
        JumpTrue     -print-boolean-2615-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2615-join  
        Label        -print-boolean-2615-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2615-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2616-arg1        
        PushF        8.000000                  
        ConvertI                               
        Label        -compare-2616-arg2        
        PushI        66                        
        Label        -compare-2616-sub         
        Subtract                               
        JumpNeg      -compare-2616-false       
        Jump         -compare-2616-true        
        Label        -compare-2616-true        
        PushI        1                         
        Jump         -compare-2616-join        
        Label        -compare-2616-false       
        PushI        0                         
        Jump         -compare-2616-join        
        Label        -compare-2616-join        
        JumpTrue     -print-boolean-2617-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2617-join  
        Label        -print-boolean-2617-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2617-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2618-arg1        
        PushF        4.600000                  
        ConvertI                               
        Label        -compare-2618-arg2        
        PushI        15                        
        Label        -compare-2618-sub         
        Subtract                               
        JumpNeg      -compare-2618-false       
        Jump         -compare-2618-true        
        Label        -compare-2618-true        
        PushI        1                         
        Jump         -compare-2618-join        
        Label        -compare-2618-false       
        PushI        0                         
        Jump         -compare-2618-join        
        Label        -compare-2618-join        
        JumpTrue     -print-boolean-2619-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2619-join  
        Label        -print-boolean-2619-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2619-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2620-arg1        
        PushF        3.200000                  
        ConvertI                               
        Label        -compare-2620-arg2        
        PushI        8                         
        Label        -compare-2620-sub         
        Subtract                               
        JumpNeg      -compare-2620-false       
        Jump         -compare-2620-true        
        Label        -compare-2620-true        
        PushI        1                         
        Jump         -compare-2620-join        
        Label        -compare-2620-false       
        PushI        0                         
        Jump         -compare-2620-join        
        Label        -compare-2620-join        
        JumpTrue     -print-boolean-2621-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2621-join  
        Label        -print-boolean-2621-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2621-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2622-arg1        
        PushF        4.800000                  
        ConvertI                               
        Label        -compare-2622-arg2        
        PushI        66                        
        Label        -compare-2622-sub         
        Subtract                               
        JumpNeg      -compare-2622-false       
        Jump         -compare-2622-true        
        Label        -compare-2622-true        
        PushI        1                         
        Jump         -compare-2622-join        
        Label        -compare-2622-false       
        PushI        0                         
        Jump         -compare-2622-join        
        Label        -compare-2622-join        
        JumpTrue     -print-boolean-2623-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2623-join  
        Label        -print-boolean-2623-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2623-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2624-arg1        
        PushF        1.900000                  
        ConvertI                               
        Label        -compare-2624-arg2        
        PushI        51                        
        Label        -compare-2624-sub         
        Subtract                               
        JumpNeg      -compare-2624-false       
        Jump         -compare-2624-true        
        Label        -compare-2624-true        
        PushI        1                         
        Jump         -compare-2624-join        
        Label        -compare-2624-false       
        PushI        0                         
        Jump         -compare-2624-join        
        Label        -compare-2624-join        
        JumpTrue     -print-boolean-2625-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2625-join  
        Label        -print-boolean-2625-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2625-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2626-arg1        
        PushF        5.500000                  
        ConvertI                               
        Label        -compare-2626-arg2        
        PushI        34                        
        Label        -compare-2626-sub         
        Subtract                               
        JumpNeg      -compare-2626-false       
        Jump         -compare-2626-true        
        Label        -compare-2626-true        
        PushI        1                         
        Jump         -compare-2626-join        
        Label        -compare-2626-false       
        PushI        0                         
        Jump         -compare-2626-join        
        Label        -compare-2626-join        
        JumpTrue     -print-boolean-2627-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2627-join  
        Label        -print-boolean-2627-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2627-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2628-arg1        
        PushF        8.100000                  
        ConvertI                               
        Label        -compare-2628-arg2        
        PushI        48                        
        Label        -compare-2628-sub         
        Subtract                               
        JumpNeg      -compare-2628-false       
        Jump         -compare-2628-true        
        Label        -compare-2628-true        
        PushI        1                         
        Jump         -compare-2628-join        
        Label        -compare-2628-false       
        PushI        0                         
        Jump         -compare-2628-join        
        Label        -compare-2628-join        
        JumpTrue     -print-boolean-2629-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2629-join  
        Label        -print-boolean-2629-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2629-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2630-arg1        
        PushI        6                         
        Label        -compare-2630-arg2        
        PushF        4.300000                  
        ConvertI                               
        Label        -compare-2630-sub         
        Subtract                               
        JumpNeg      -compare-2630-false       
        Jump         -compare-2630-true        
        Label        -compare-2630-true        
        PushI        1                         
        Jump         -compare-2630-join        
        Label        -compare-2630-false       
        PushI        0                         
        Jump         -compare-2630-join        
        Label        -compare-2630-join        
        JumpTrue     -print-boolean-2631-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2631-join  
        Label        -print-boolean-2631-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2631-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2632-arg1        
        PushI        84                        
        Label        -compare-2632-arg2        
        PushF        3.500000                  
        ConvertI                               
        Label        -compare-2632-sub         
        Subtract                               
        JumpNeg      -compare-2632-false       
        Jump         -compare-2632-true        
        Label        -compare-2632-true        
        PushI        1                         
        Jump         -compare-2632-join        
        Label        -compare-2632-false       
        PushI        0                         
        Jump         -compare-2632-join        
        Label        -compare-2632-join        
        JumpTrue     -print-boolean-2633-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2633-join  
        Label        -print-boolean-2633-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2633-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2634-arg1        
        PushI        54                        
        Label        -compare-2634-arg2        
        PushF        5.900000                  
        ConvertI                               
        Label        -compare-2634-sub         
        Subtract                               
        JumpNeg      -compare-2634-false       
        Jump         -compare-2634-true        
        Label        -compare-2634-true        
        PushI        1                         
        Jump         -compare-2634-join        
        Label        -compare-2634-false       
        PushI        0                         
        Jump         -compare-2634-join        
        Label        -compare-2634-join        
        JumpTrue     -print-boolean-2635-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2635-join  
        Label        -print-boolean-2635-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2635-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2636-arg1        
        PushI        29                        
        Label        -compare-2636-arg2        
        PushF        8.100000                  
        ConvertI                               
        Label        -compare-2636-sub         
        Subtract                               
        JumpNeg      -compare-2636-false       
        Jump         -compare-2636-true        
        Label        -compare-2636-true        
        PushI        1                         
        Jump         -compare-2636-join        
        Label        -compare-2636-false       
        PushI        0                         
        Jump         -compare-2636-join        
        Label        -compare-2636-join        
        JumpTrue     -print-boolean-2637-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2637-join  
        Label        -print-boolean-2637-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2637-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2638-arg1        
        PushI        71                        
        Label        -compare-2638-arg2        
        PushF        2.500000                  
        ConvertI                               
        Label        -compare-2638-sub         
        Subtract                               
        JumpNeg      -compare-2638-false       
        Jump         -compare-2638-true        
        Label        -compare-2638-true        
        PushI        1                         
        Jump         -compare-2638-join        
        Label        -compare-2638-false       
        PushI        0                         
        Jump         -compare-2638-join        
        Label        -compare-2638-join        
        JumpTrue     -print-boolean-2639-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2639-join  
        Label        -print-boolean-2639-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2639-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2640-arg1        
        PushI        22                        
        Label        -compare-2640-arg2        
        PushF        7.700000                  
        ConvertI                               
        Label        -compare-2640-sub         
        Subtract                               
        JumpNeg      -compare-2640-false       
        Jump         -compare-2640-true        
        Label        -compare-2640-true        
        PushI        1                         
        Jump         -compare-2640-join        
        Label        -compare-2640-false       
        PushI        0                         
        Jump         -compare-2640-join        
        Label        -compare-2640-join        
        JumpTrue     -print-boolean-2641-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2641-join  
        Label        -print-boolean-2641-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2641-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2642-arg1        
        PushI        28                        
        Label        -compare-2642-arg2        
        PushF        9.100000                  
        ConvertI                               
        Label        -compare-2642-sub         
        Subtract                               
        JumpNeg      -compare-2642-false       
        Jump         -compare-2642-true        
        Label        -compare-2642-true        
        PushI        1                         
        Jump         -compare-2642-join        
        Label        -compare-2642-false       
        PushI        0                         
        Jump         -compare-2642-join        
        Label        -compare-2642-join        
        JumpTrue     -print-boolean-2643-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2643-join  
        Label        -print-boolean-2643-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2643-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2644-arg1        
        PushI        32                        
        Label        -compare-2644-arg2        
        PushF        5.300000                  
        ConvertI                               
        Label        -compare-2644-sub         
        Subtract                               
        JumpNeg      -compare-2644-false       
        Jump         -compare-2644-true        
        Label        -compare-2644-true        
        PushI        1                         
        Jump         -compare-2644-join        
        Label        -compare-2644-false       
        PushI        0                         
        Jump         -compare-2644-join        
        Label        -compare-2644-join        
        JumpTrue     -print-boolean-2645-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2645-join  
        Label        -print-boolean-2645-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2645-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2646-arg1        
        PushI        44                        
        Label        -compare-2646-arg2        
        PushF        4.000000                  
        ConvertI                               
        Label        -compare-2646-sub         
        Subtract                               
        JumpNeg      -compare-2646-false       
        Jump         -compare-2646-true        
        Label        -compare-2646-true        
        PushI        1                         
        Jump         -compare-2646-join        
        Label        -compare-2646-false       
        PushI        0                         
        Jump         -compare-2646-join        
        Label        -compare-2646-join        
        JumpTrue     -print-boolean-2647-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2647-join  
        Label        -print-boolean-2647-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2647-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2648-arg1        
        PushI        54                        
        Label        -compare-2648-arg2        
        PushF        1.400000                  
        ConvertI                               
        Label        -compare-2648-sub         
        Subtract                               
        JumpNeg      -compare-2648-false       
        Jump         -compare-2648-true        
        Label        -compare-2648-true        
        PushI        1                         
        Jump         -compare-2648-join        
        Label        -compare-2648-false       
        PushI        0                         
        Jump         -compare-2648-join        
        Label        -compare-2648-join        
        JumpTrue     -print-boolean-2649-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2649-join  
        Label        -print-boolean-2649-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2649-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2650-arg1        
        PushI        24                        
        Label        -compare-2650-arg2        
        PushF        9.800000                  
        ConvertI                               
        Label        -compare-2650-sub         
        Subtract                               
        JumpNeg      -compare-2650-false       
        Jump         -compare-2650-true        
        Label        -compare-2650-true        
        PushI        1                         
        Jump         -compare-2650-join        
        Label        -compare-2650-false       
        PushI        0                         
        Jump         -compare-2650-join        
        Label        -compare-2650-join        
        JumpTrue     -print-boolean-2651-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2651-join  
        Label        -print-boolean-2651-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2651-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2652-arg1        
        PushI        10                        
        Label        -compare-2652-arg2        
        PushF        6.500000                  
        ConvertI                               
        Label        -compare-2652-sub         
        Subtract                               
        JumpNeg      -compare-2652-false       
        Jump         -compare-2652-true        
        Label        -compare-2652-true        
        PushI        1                         
        Jump         -compare-2652-join        
        Label        -compare-2652-false       
        PushI        0                         
        Jump         -compare-2652-join        
        Label        -compare-2652-join        
        JumpTrue     -print-boolean-2653-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2653-join  
        Label        -print-boolean-2653-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2653-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2654-arg1        
        PushF        4.600000                  
        ConvertI                               
        Label        -compare-2654-arg2        
        PushF        7.400000                  
        ConvertI                               
        Label        -compare-2654-sub         
        Subtract                               
        JumpNeg      -compare-2654-false       
        Jump         -compare-2654-true        
        Label        -compare-2654-true        
        PushI        1                         
        Jump         -compare-2654-join        
        Label        -compare-2654-false       
        PushI        0                         
        Jump         -compare-2654-join        
        Label        -compare-2654-join        
        JumpTrue     -print-boolean-2655-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2655-join  
        Label        -print-boolean-2655-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2655-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2656-arg1        
        PushF        4.100000                  
        ConvertI                               
        Label        -compare-2656-arg2        
        PushF        1.600000                  
        ConvertI                               
        Label        -compare-2656-sub         
        Subtract                               
        JumpNeg      -compare-2656-false       
        Jump         -compare-2656-true        
        Label        -compare-2656-true        
        PushI        1                         
        Jump         -compare-2656-join        
        Label        -compare-2656-false       
        PushI        0                         
        Jump         -compare-2656-join        
        Label        -compare-2656-join        
        JumpTrue     -print-boolean-2657-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2657-join  
        Label        -print-boolean-2657-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2657-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2658-arg1        
        PushF        3.200000                  
        ConvertI                               
        Label        -compare-2658-arg2        
        PushF        7.200000                  
        ConvertI                               
        Label        -compare-2658-sub         
        Subtract                               
        JumpNeg      -compare-2658-false       
        Jump         -compare-2658-true        
        Label        -compare-2658-true        
        PushI        1                         
        Jump         -compare-2658-join        
        Label        -compare-2658-false       
        PushI        0                         
        Jump         -compare-2658-join        
        Label        -compare-2658-join        
        JumpTrue     -print-boolean-2659-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2659-join  
        Label        -print-boolean-2659-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2659-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2660-arg1        
        PushF        7.900000                  
        ConvertI                               
        Label        -compare-2660-arg2        
        PushF        8.200000                  
        ConvertI                               
        Label        -compare-2660-sub         
        Subtract                               
        JumpNeg      -compare-2660-false       
        Jump         -compare-2660-true        
        Label        -compare-2660-true        
        PushI        1                         
        Jump         -compare-2660-join        
        Label        -compare-2660-false       
        PushI        0                         
        Jump         -compare-2660-join        
        Label        -compare-2660-join        
        JumpTrue     -print-boolean-2661-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2661-join  
        Label        -print-boolean-2661-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2661-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2662-arg1        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2662-arg2        
        PushF        8.700000                  
        ConvertI                               
        Label        -compare-2662-sub         
        Subtract                               
        JumpNeg      -compare-2662-false       
        Jump         -compare-2662-true        
        Label        -compare-2662-true        
        PushI        1                         
        Jump         -compare-2662-join        
        Label        -compare-2662-false       
        PushI        0                         
        Jump         -compare-2662-join        
        Label        -compare-2662-join        
        JumpTrue     -print-boolean-2663-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2663-join  
        Label        -print-boolean-2663-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2663-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2664-arg1        
        PushF        3.900000                  
        ConvertI                               
        Label        -compare-2664-arg2        
        PushF        6.700000                  
        ConvertI                               
        Label        -compare-2664-sub         
        Subtract                               
        JumpNeg      -compare-2664-false       
        Jump         -compare-2664-true        
        Label        -compare-2664-true        
        PushI        1                         
        Jump         -compare-2664-join        
        Label        -compare-2664-false       
        PushI        0                         
        Jump         -compare-2664-join        
        Label        -compare-2664-join        
        JumpTrue     -print-boolean-2665-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2665-join  
        Label        -print-boolean-2665-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2665-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2666-arg1        
        PushF        7.100000                  
        ConvertI                               
        Label        -compare-2666-arg2        
        PushF        6.100000                  
        ConvertI                               
        Label        -compare-2666-sub         
        Subtract                               
        JumpNeg      -compare-2666-false       
        Jump         -compare-2666-true        
        Label        -compare-2666-true        
        PushI        1                         
        Jump         -compare-2666-join        
        Label        -compare-2666-false       
        PushI        0                         
        Jump         -compare-2666-join        
        Label        -compare-2666-join        
        JumpTrue     -print-boolean-2667-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2667-join  
        Label        -print-boolean-2667-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2667-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2668-arg1        
        PushF        7.400000                  
        ConvertI                               
        Label        -compare-2668-arg2        
        PushF        5.300000                  
        ConvertI                               
        Label        -compare-2668-sub         
        Subtract                               
        JumpNeg      -compare-2668-false       
        Jump         -compare-2668-true        
        Label        -compare-2668-true        
        PushI        1                         
        Jump         -compare-2668-join        
        Label        -compare-2668-false       
        PushI        0                         
        Jump         -compare-2668-join        
        Label        -compare-2668-join        
        JumpTrue     -print-boolean-2669-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2669-join  
        Label        -print-boolean-2669-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2669-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2670-arg1        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2670-arg2        
        PushF        9.100000                  
        ConvertI                               
        Label        -compare-2670-sub         
        Subtract                               
        JumpNeg      -compare-2670-false       
        Jump         -compare-2670-true        
        Label        -compare-2670-true        
        PushI        1                         
        Jump         -compare-2670-join        
        Label        -compare-2670-false       
        PushI        0                         
        Jump         -compare-2670-join        
        Label        -compare-2670-join        
        JumpTrue     -print-boolean-2671-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2671-join  
        Label        -print-boolean-2671-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2671-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2672-arg1        
        PushF        9.000000                  
        ConvertI                               
        Label        -compare-2672-arg2        
        PushF        2.400000                  
        ConvertI                               
        Label        -compare-2672-sub         
        Subtract                               
        JumpNeg      -compare-2672-false       
        Jump         -compare-2672-true        
        Label        -compare-2672-true        
        PushI        1                         
        Jump         -compare-2672-join        
        Label        -compare-2672-false       
        PushI        0                         
        Jump         -compare-2672-join        
        Label        -compare-2672-join        
        JumpTrue     -print-boolean-2673-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2673-join  
        Label        -print-boolean-2673-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2673-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2674-arg1        
        PushF        7.900000                  
        ConvertI                               
        Label        -compare-2674-arg2        
        PushF        7.500000                  
        ConvertI                               
        Label        -compare-2674-sub         
        Subtract                               
        JumpNeg      -compare-2674-false       
        Jump         -compare-2674-true        
        Label        -compare-2674-true        
        PushI        1                         
        Jump         -compare-2674-join        
        Label        -compare-2674-false       
        PushI        0                         
        Jump         -compare-2674-join        
        Label        -compare-2674-join        
        JumpTrue     -print-boolean-2675-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2675-join  
        Label        -print-boolean-2675-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2675-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2676-arg1        
        PushF        4.000000                  
        ConvertI                               
        Label        -compare-2676-arg2        
        PushF        5.200000                  
        ConvertI                               
        Label        -compare-2676-sub         
        Subtract                               
        JumpNeg      -compare-2676-false       
        Jump         -compare-2676-true        
        Label        -compare-2676-true        
        PushI        1                         
        Jump         -compare-2676-join        
        Label        -compare-2676-false       
        PushI        0                         
        Jump         -compare-2676-join        
        Label        -compare-2676-join        
        JumpTrue     -print-boolean-2677-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2677-join  
        Label        -print-boolean-2677-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2677-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
