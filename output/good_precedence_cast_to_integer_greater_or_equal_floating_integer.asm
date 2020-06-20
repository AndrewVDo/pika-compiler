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
        Label        -compare-2593-arg1        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-2593-arg2        
        PushI        71                        
        Label        -compare-2593-sub         
        Subtract                               
        JumpNeg      -compare-2593-false       
        Jump         -compare-2593-true        
        Label        -compare-2593-true        
        PushI        1                         
        Jump         -compare-2593-join        
        Label        -compare-2593-false       
        PushI        0                         
        Jump         -compare-2593-join        
        Label        -compare-2593-join        
        JumpTrue     -print-boolean-2594-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2594-join  
        Label        -print-boolean-2594-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2594-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2595-arg1        
        PushF        6.600000                  
        ConvertI                               
        Label        -compare-2595-arg2        
        PushI        63                        
        Label        -compare-2595-sub         
        Subtract                               
        JumpNeg      -compare-2595-false       
        Jump         -compare-2595-true        
        Label        -compare-2595-true        
        PushI        1                         
        Jump         -compare-2595-join        
        Label        -compare-2595-false       
        PushI        0                         
        Jump         -compare-2595-join        
        Label        -compare-2595-join        
        JumpTrue     -print-boolean-2596-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2596-join  
        Label        -print-boolean-2596-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2596-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2597-arg1        
        PushF        1.400000                  
        ConvertI                               
        Label        -compare-2597-arg2        
        PushI        62                        
        Label        -compare-2597-sub         
        Subtract                               
        JumpNeg      -compare-2597-false       
        Jump         -compare-2597-true        
        Label        -compare-2597-true        
        PushI        1                         
        Jump         -compare-2597-join        
        Label        -compare-2597-false       
        PushI        0                         
        Jump         -compare-2597-join        
        Label        -compare-2597-join        
        JumpTrue     -print-boolean-2598-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2598-join  
        Label        -print-boolean-2598-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2598-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2599-arg1        
        PushF        4.100000                  
        ConvertI                               
        Label        -compare-2599-arg2        
        PushI        99                        
        Label        -compare-2599-sub         
        Subtract                               
        JumpNeg      -compare-2599-false       
        Jump         -compare-2599-true        
        Label        -compare-2599-true        
        PushI        1                         
        Jump         -compare-2599-join        
        Label        -compare-2599-false       
        PushI        0                         
        Jump         -compare-2599-join        
        Label        -compare-2599-join        
        JumpTrue     -print-boolean-2600-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2600-join  
        Label        -print-boolean-2600-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2600-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2601-arg1        
        PushF        2.900000                  
        ConvertI                               
        Label        -compare-2601-arg2        
        PushI        71                        
        Label        -compare-2601-sub         
        Subtract                               
        JumpNeg      -compare-2601-false       
        Jump         -compare-2601-true        
        Label        -compare-2601-true        
        PushI        1                         
        Jump         -compare-2601-join        
        Label        -compare-2601-false       
        PushI        0                         
        Jump         -compare-2601-join        
        Label        -compare-2601-join        
        JumpTrue     -print-boolean-2602-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2602-join  
        Label        -print-boolean-2602-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2602-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2603-arg1        
        PushF        8.000000                  
        ConvertI                               
        Label        -compare-2603-arg2        
        PushI        66                        
        Label        -compare-2603-sub         
        Subtract                               
        JumpNeg      -compare-2603-false       
        Jump         -compare-2603-true        
        Label        -compare-2603-true        
        PushI        1                         
        Jump         -compare-2603-join        
        Label        -compare-2603-false       
        PushI        0                         
        Jump         -compare-2603-join        
        Label        -compare-2603-join        
        JumpTrue     -print-boolean-2604-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2604-join  
        Label        -print-boolean-2604-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2604-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2605-arg1        
        PushF        4.600000                  
        ConvertI                               
        Label        -compare-2605-arg2        
        PushI        15                        
        Label        -compare-2605-sub         
        Subtract                               
        JumpNeg      -compare-2605-false       
        Jump         -compare-2605-true        
        Label        -compare-2605-true        
        PushI        1                         
        Jump         -compare-2605-join        
        Label        -compare-2605-false       
        PushI        0                         
        Jump         -compare-2605-join        
        Label        -compare-2605-join        
        JumpTrue     -print-boolean-2606-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2606-join  
        Label        -print-boolean-2606-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2606-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2607-arg1        
        PushF        3.200000                  
        ConvertI                               
        Label        -compare-2607-arg2        
        PushI        8                         
        Label        -compare-2607-sub         
        Subtract                               
        JumpNeg      -compare-2607-false       
        Jump         -compare-2607-true        
        Label        -compare-2607-true        
        PushI        1                         
        Jump         -compare-2607-join        
        Label        -compare-2607-false       
        PushI        0                         
        Jump         -compare-2607-join        
        Label        -compare-2607-join        
        JumpTrue     -print-boolean-2608-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2608-join  
        Label        -print-boolean-2608-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2608-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2609-arg1        
        PushF        4.800000                  
        ConvertI                               
        Label        -compare-2609-arg2        
        PushI        66                        
        Label        -compare-2609-sub         
        Subtract                               
        JumpNeg      -compare-2609-false       
        Jump         -compare-2609-true        
        Label        -compare-2609-true        
        PushI        1                         
        Jump         -compare-2609-join        
        Label        -compare-2609-false       
        PushI        0                         
        Jump         -compare-2609-join        
        Label        -compare-2609-join        
        JumpTrue     -print-boolean-2610-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2610-join  
        Label        -print-boolean-2610-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2610-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2611-arg1        
        PushF        1.900000                  
        ConvertI                               
        Label        -compare-2611-arg2        
        PushI        51                        
        Label        -compare-2611-sub         
        Subtract                               
        JumpNeg      -compare-2611-false       
        Jump         -compare-2611-true        
        Label        -compare-2611-true        
        PushI        1                         
        Jump         -compare-2611-join        
        Label        -compare-2611-false       
        PushI        0                         
        Jump         -compare-2611-join        
        Label        -compare-2611-join        
        JumpTrue     -print-boolean-2612-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2612-join  
        Label        -print-boolean-2612-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2612-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2613-arg1        
        PushF        5.500000                  
        ConvertI                               
        Label        -compare-2613-arg2        
        PushI        34                        
        Label        -compare-2613-sub         
        Subtract                               
        JumpNeg      -compare-2613-false       
        Jump         -compare-2613-true        
        Label        -compare-2613-true        
        PushI        1                         
        Jump         -compare-2613-join        
        Label        -compare-2613-false       
        PushI        0                         
        Jump         -compare-2613-join        
        Label        -compare-2613-join        
        JumpTrue     -print-boolean-2614-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2614-join  
        Label        -print-boolean-2614-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2614-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2615-arg1        
        PushF        8.100000                  
        ConvertI                               
        Label        -compare-2615-arg2        
        PushI        48                        
        Label        -compare-2615-sub         
        Subtract                               
        JumpNeg      -compare-2615-false       
        Jump         -compare-2615-true        
        Label        -compare-2615-true        
        PushI        1                         
        Jump         -compare-2615-join        
        Label        -compare-2615-false       
        PushI        0                         
        Jump         -compare-2615-join        
        Label        -compare-2615-join        
        JumpTrue     -print-boolean-2616-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2616-join  
        Label        -print-boolean-2616-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2616-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2617-arg1        
        PushI        6                         
        Label        -compare-2617-arg2        
        PushF        4.300000                  
        ConvertI                               
        Label        -compare-2617-sub         
        Subtract                               
        JumpNeg      -compare-2617-false       
        Jump         -compare-2617-true        
        Label        -compare-2617-true        
        PushI        1                         
        Jump         -compare-2617-join        
        Label        -compare-2617-false       
        PushI        0                         
        Jump         -compare-2617-join        
        Label        -compare-2617-join        
        JumpTrue     -print-boolean-2618-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2618-join  
        Label        -print-boolean-2618-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2618-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2619-arg1        
        PushI        84                        
        Label        -compare-2619-arg2        
        PushF        3.500000                  
        ConvertI                               
        Label        -compare-2619-sub         
        Subtract                               
        JumpNeg      -compare-2619-false       
        Jump         -compare-2619-true        
        Label        -compare-2619-true        
        PushI        1                         
        Jump         -compare-2619-join        
        Label        -compare-2619-false       
        PushI        0                         
        Jump         -compare-2619-join        
        Label        -compare-2619-join        
        JumpTrue     -print-boolean-2620-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2620-join  
        Label        -print-boolean-2620-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2620-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2621-arg1        
        PushI        54                        
        Label        -compare-2621-arg2        
        PushF        5.900000                  
        ConvertI                               
        Label        -compare-2621-sub         
        Subtract                               
        JumpNeg      -compare-2621-false       
        Jump         -compare-2621-true        
        Label        -compare-2621-true        
        PushI        1                         
        Jump         -compare-2621-join        
        Label        -compare-2621-false       
        PushI        0                         
        Jump         -compare-2621-join        
        Label        -compare-2621-join        
        JumpTrue     -print-boolean-2622-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2622-join  
        Label        -print-boolean-2622-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2622-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2623-arg1        
        PushI        29                        
        Label        -compare-2623-arg2        
        PushF        8.100000                  
        ConvertI                               
        Label        -compare-2623-sub         
        Subtract                               
        JumpNeg      -compare-2623-false       
        Jump         -compare-2623-true        
        Label        -compare-2623-true        
        PushI        1                         
        Jump         -compare-2623-join        
        Label        -compare-2623-false       
        PushI        0                         
        Jump         -compare-2623-join        
        Label        -compare-2623-join        
        JumpTrue     -print-boolean-2624-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2624-join  
        Label        -print-boolean-2624-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2624-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2625-arg1        
        PushI        71                        
        Label        -compare-2625-arg2        
        PushF        2.500000                  
        ConvertI                               
        Label        -compare-2625-sub         
        Subtract                               
        JumpNeg      -compare-2625-false       
        Jump         -compare-2625-true        
        Label        -compare-2625-true        
        PushI        1                         
        Jump         -compare-2625-join        
        Label        -compare-2625-false       
        PushI        0                         
        Jump         -compare-2625-join        
        Label        -compare-2625-join        
        JumpTrue     -print-boolean-2626-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2626-join  
        Label        -print-boolean-2626-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2626-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2627-arg1        
        PushI        22                        
        Label        -compare-2627-arg2        
        PushF        7.700000                  
        ConvertI                               
        Label        -compare-2627-sub         
        Subtract                               
        JumpNeg      -compare-2627-false       
        Jump         -compare-2627-true        
        Label        -compare-2627-true        
        PushI        1                         
        Jump         -compare-2627-join        
        Label        -compare-2627-false       
        PushI        0                         
        Jump         -compare-2627-join        
        Label        -compare-2627-join        
        JumpTrue     -print-boolean-2628-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2628-join  
        Label        -print-boolean-2628-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2628-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2629-arg1        
        PushI        28                        
        Label        -compare-2629-arg2        
        PushF        9.100000                  
        ConvertI                               
        Label        -compare-2629-sub         
        Subtract                               
        JumpNeg      -compare-2629-false       
        Jump         -compare-2629-true        
        Label        -compare-2629-true        
        PushI        1                         
        Jump         -compare-2629-join        
        Label        -compare-2629-false       
        PushI        0                         
        Jump         -compare-2629-join        
        Label        -compare-2629-join        
        JumpTrue     -print-boolean-2630-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2630-join  
        Label        -print-boolean-2630-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2630-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2631-arg1        
        PushI        32                        
        Label        -compare-2631-arg2        
        PushF        5.300000                  
        ConvertI                               
        Label        -compare-2631-sub         
        Subtract                               
        JumpNeg      -compare-2631-false       
        Jump         -compare-2631-true        
        Label        -compare-2631-true        
        PushI        1                         
        Jump         -compare-2631-join        
        Label        -compare-2631-false       
        PushI        0                         
        Jump         -compare-2631-join        
        Label        -compare-2631-join        
        JumpTrue     -print-boolean-2632-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2632-join  
        Label        -print-boolean-2632-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2632-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2633-arg1        
        PushI        44                        
        Label        -compare-2633-arg2        
        PushF        4.000000                  
        ConvertI                               
        Label        -compare-2633-sub         
        Subtract                               
        JumpNeg      -compare-2633-false       
        Jump         -compare-2633-true        
        Label        -compare-2633-true        
        PushI        1                         
        Jump         -compare-2633-join        
        Label        -compare-2633-false       
        PushI        0                         
        Jump         -compare-2633-join        
        Label        -compare-2633-join        
        JumpTrue     -print-boolean-2634-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2634-join  
        Label        -print-boolean-2634-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2634-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2635-arg1        
        PushI        54                        
        Label        -compare-2635-arg2        
        PushF        1.400000                  
        ConvertI                               
        Label        -compare-2635-sub         
        Subtract                               
        JumpNeg      -compare-2635-false       
        Jump         -compare-2635-true        
        Label        -compare-2635-true        
        PushI        1                         
        Jump         -compare-2635-join        
        Label        -compare-2635-false       
        PushI        0                         
        Jump         -compare-2635-join        
        Label        -compare-2635-join        
        JumpTrue     -print-boolean-2636-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2636-join  
        Label        -print-boolean-2636-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2636-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2637-arg1        
        PushI        24                        
        Label        -compare-2637-arg2        
        PushF        9.800000                  
        ConvertI                               
        Label        -compare-2637-sub         
        Subtract                               
        JumpNeg      -compare-2637-false       
        Jump         -compare-2637-true        
        Label        -compare-2637-true        
        PushI        1                         
        Jump         -compare-2637-join        
        Label        -compare-2637-false       
        PushI        0                         
        Jump         -compare-2637-join        
        Label        -compare-2637-join        
        JumpTrue     -print-boolean-2638-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2638-join  
        Label        -print-boolean-2638-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2638-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2639-arg1        
        PushI        10                        
        Label        -compare-2639-arg2        
        PushF        6.500000                  
        ConvertI                               
        Label        -compare-2639-sub         
        Subtract                               
        JumpNeg      -compare-2639-false       
        Jump         -compare-2639-true        
        Label        -compare-2639-true        
        PushI        1                         
        Jump         -compare-2639-join        
        Label        -compare-2639-false       
        PushI        0                         
        Jump         -compare-2639-join        
        Label        -compare-2639-join        
        JumpTrue     -print-boolean-2640-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2640-join  
        Label        -print-boolean-2640-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2640-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2641-arg1        
        PushF        4.600000                  
        ConvertI                               
        Label        -compare-2641-arg2        
        PushF        7.400000                  
        ConvertI                               
        Label        -compare-2641-sub         
        Subtract                               
        JumpNeg      -compare-2641-false       
        Jump         -compare-2641-true        
        Label        -compare-2641-true        
        PushI        1                         
        Jump         -compare-2641-join        
        Label        -compare-2641-false       
        PushI        0                         
        Jump         -compare-2641-join        
        Label        -compare-2641-join        
        JumpTrue     -print-boolean-2642-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2642-join  
        Label        -print-boolean-2642-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2642-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2643-arg1        
        PushF        4.100000                  
        ConvertI                               
        Label        -compare-2643-arg2        
        PushF        1.600000                  
        ConvertI                               
        Label        -compare-2643-sub         
        Subtract                               
        JumpNeg      -compare-2643-false       
        Jump         -compare-2643-true        
        Label        -compare-2643-true        
        PushI        1                         
        Jump         -compare-2643-join        
        Label        -compare-2643-false       
        PushI        0                         
        Jump         -compare-2643-join        
        Label        -compare-2643-join        
        JumpTrue     -print-boolean-2644-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2644-join  
        Label        -print-boolean-2644-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2644-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2645-arg1        
        PushF        3.200000                  
        ConvertI                               
        Label        -compare-2645-arg2        
        PushF        7.200000                  
        ConvertI                               
        Label        -compare-2645-sub         
        Subtract                               
        JumpNeg      -compare-2645-false       
        Jump         -compare-2645-true        
        Label        -compare-2645-true        
        PushI        1                         
        Jump         -compare-2645-join        
        Label        -compare-2645-false       
        PushI        0                         
        Jump         -compare-2645-join        
        Label        -compare-2645-join        
        JumpTrue     -print-boolean-2646-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2646-join  
        Label        -print-boolean-2646-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2646-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2647-arg1        
        PushF        7.900000                  
        ConvertI                               
        Label        -compare-2647-arg2        
        PushF        8.200000                  
        ConvertI                               
        Label        -compare-2647-sub         
        Subtract                               
        JumpNeg      -compare-2647-false       
        Jump         -compare-2647-true        
        Label        -compare-2647-true        
        PushI        1                         
        Jump         -compare-2647-join        
        Label        -compare-2647-false       
        PushI        0                         
        Jump         -compare-2647-join        
        Label        -compare-2647-join        
        JumpTrue     -print-boolean-2648-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2648-join  
        Label        -print-boolean-2648-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2648-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2649-arg1        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2649-arg2        
        PushF        8.700000                  
        ConvertI                               
        Label        -compare-2649-sub         
        Subtract                               
        JumpNeg      -compare-2649-false       
        Jump         -compare-2649-true        
        Label        -compare-2649-true        
        PushI        1                         
        Jump         -compare-2649-join        
        Label        -compare-2649-false       
        PushI        0                         
        Jump         -compare-2649-join        
        Label        -compare-2649-join        
        JumpTrue     -print-boolean-2650-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2650-join  
        Label        -print-boolean-2650-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2650-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2651-arg1        
        PushF        3.900000                  
        ConvertI                               
        Label        -compare-2651-arg2        
        PushF        6.700000                  
        ConvertI                               
        Label        -compare-2651-sub         
        Subtract                               
        JumpNeg      -compare-2651-false       
        Jump         -compare-2651-true        
        Label        -compare-2651-true        
        PushI        1                         
        Jump         -compare-2651-join        
        Label        -compare-2651-false       
        PushI        0                         
        Jump         -compare-2651-join        
        Label        -compare-2651-join        
        JumpTrue     -print-boolean-2652-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2652-join  
        Label        -print-boolean-2652-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2652-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2653-arg1        
        PushF        7.100000                  
        ConvertI                               
        Label        -compare-2653-arg2        
        PushF        6.100000                  
        ConvertI                               
        Label        -compare-2653-sub         
        Subtract                               
        JumpNeg      -compare-2653-false       
        Jump         -compare-2653-true        
        Label        -compare-2653-true        
        PushI        1                         
        Jump         -compare-2653-join        
        Label        -compare-2653-false       
        PushI        0                         
        Jump         -compare-2653-join        
        Label        -compare-2653-join        
        JumpTrue     -print-boolean-2654-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2654-join  
        Label        -print-boolean-2654-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2654-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2655-arg1        
        PushF        7.400000                  
        ConvertI                               
        Label        -compare-2655-arg2        
        PushF        5.300000                  
        ConvertI                               
        Label        -compare-2655-sub         
        Subtract                               
        JumpNeg      -compare-2655-false       
        Jump         -compare-2655-true        
        Label        -compare-2655-true        
        PushI        1                         
        Jump         -compare-2655-join        
        Label        -compare-2655-false       
        PushI        0                         
        Jump         -compare-2655-join        
        Label        -compare-2655-join        
        JumpTrue     -print-boolean-2656-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2656-join  
        Label        -print-boolean-2656-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2656-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2657-arg1        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2657-arg2        
        PushF        9.100000                  
        ConvertI                               
        Label        -compare-2657-sub         
        Subtract                               
        JumpNeg      -compare-2657-false       
        Jump         -compare-2657-true        
        Label        -compare-2657-true        
        PushI        1                         
        Jump         -compare-2657-join        
        Label        -compare-2657-false       
        PushI        0                         
        Jump         -compare-2657-join        
        Label        -compare-2657-join        
        JumpTrue     -print-boolean-2658-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2658-join  
        Label        -print-boolean-2658-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2658-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2659-arg1        
        PushF        9.000000                  
        ConvertI                               
        Label        -compare-2659-arg2        
        PushF        2.400000                  
        ConvertI                               
        Label        -compare-2659-sub         
        Subtract                               
        JumpNeg      -compare-2659-false       
        Jump         -compare-2659-true        
        Label        -compare-2659-true        
        PushI        1                         
        Jump         -compare-2659-join        
        Label        -compare-2659-false       
        PushI        0                         
        Jump         -compare-2659-join        
        Label        -compare-2659-join        
        JumpTrue     -print-boolean-2660-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2660-join  
        Label        -print-boolean-2660-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2660-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2661-arg1        
        PushF        7.900000                  
        ConvertI                               
        Label        -compare-2661-arg2        
        PushF        7.500000                  
        ConvertI                               
        Label        -compare-2661-sub         
        Subtract                               
        JumpNeg      -compare-2661-false       
        Jump         -compare-2661-true        
        Label        -compare-2661-true        
        PushI        1                         
        Jump         -compare-2661-join        
        Label        -compare-2661-false       
        PushI        0                         
        Jump         -compare-2661-join        
        Label        -compare-2661-join        
        JumpTrue     -print-boolean-2662-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2662-join  
        Label        -print-boolean-2662-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2662-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2663-arg1        
        PushF        4.000000                  
        ConvertI                               
        Label        -compare-2663-arg2        
        PushF        5.200000                  
        ConvertI                               
        Label        -compare-2663-sub         
        Subtract                               
        JumpNeg      -compare-2663-false       
        Jump         -compare-2663-true        
        Label        -compare-2663-true        
        PushI        1                         
        Jump         -compare-2663-join        
        Label        -compare-2663-false       
        PushI        0                         
        Jump         -compare-2663-join        
        Label        -compare-2663-join        
        JumpTrue     -print-boolean-2664-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2664-join  
        Label        -print-boolean-2664-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2664-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
