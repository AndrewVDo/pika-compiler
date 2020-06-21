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
        Label        -compare-2750-arg1        
        PushF        1.700000                  
        ConvertI                               
        Label        -compare-2750-arg2        
        PushI        10                        
        Label        -compare-2750-sub         
        Subtract                               
        JumpNeg      -compare-2750-true        
        Jump         -compare-2750-false       
        Label        -compare-2750-true        
        PushI        1                         
        Jump         -compare-2750-join        
        Label        -compare-2750-false       
        PushI        0                         
        Jump         -compare-2750-join        
        Label        -compare-2750-join        
        JumpTrue     -print-boolean-2751-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2751-join  
        Label        -print-boolean-2751-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2751-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2752-arg1        
        PushF        7.500000                  
        ConvertI                               
        Label        -compare-2752-arg2        
        PushI        36                        
        Label        -compare-2752-sub         
        Subtract                               
        JumpNeg      -compare-2752-true        
        Jump         -compare-2752-false       
        Label        -compare-2752-true        
        PushI        1                         
        Jump         -compare-2752-join        
        Label        -compare-2752-false       
        PushI        0                         
        Jump         -compare-2752-join        
        Label        -compare-2752-join        
        JumpTrue     -print-boolean-2753-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2753-join  
        Label        -print-boolean-2753-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2753-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2754-arg1        
        PushF        1.400000                  
        ConvertI                               
        Label        -compare-2754-arg2        
        PushI        90                        
        Label        -compare-2754-sub         
        Subtract                               
        JumpNeg      -compare-2754-true        
        Jump         -compare-2754-false       
        Label        -compare-2754-true        
        PushI        1                         
        Jump         -compare-2754-join        
        Label        -compare-2754-false       
        PushI        0                         
        Jump         -compare-2754-join        
        Label        -compare-2754-join        
        JumpTrue     -print-boolean-2755-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2755-join  
        Label        -print-boolean-2755-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2755-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2756-arg1        
        PushF        4.100000                  
        ConvertI                               
        Label        -compare-2756-arg2        
        PushI        35                        
        Label        -compare-2756-sub         
        Subtract                               
        JumpNeg      -compare-2756-true        
        Jump         -compare-2756-false       
        Label        -compare-2756-true        
        PushI        1                         
        Jump         -compare-2756-join        
        Label        -compare-2756-false       
        PushI        0                         
        Jump         -compare-2756-join        
        Label        -compare-2756-join        
        JumpTrue     -print-boolean-2757-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2757-join  
        Label        -print-boolean-2757-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2757-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2758-arg1        
        PushF        5.800000                  
        ConvertI                               
        Label        -compare-2758-arg2        
        PushI        10                        
        Label        -compare-2758-sub         
        Subtract                               
        JumpNeg      -compare-2758-true        
        Jump         -compare-2758-false       
        Label        -compare-2758-true        
        PushI        1                         
        Jump         -compare-2758-join        
        Label        -compare-2758-false       
        PushI        0                         
        Jump         -compare-2758-join        
        Label        -compare-2758-join        
        JumpTrue     -print-boolean-2759-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2759-join  
        Label        -print-boolean-2759-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2759-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2760-arg1        
        PushF        1.400000                  
        ConvertI                               
        Label        -compare-2760-arg2        
        PushI        83                        
        Label        -compare-2760-sub         
        Subtract                               
        JumpNeg      -compare-2760-true        
        Jump         -compare-2760-false       
        Label        -compare-2760-true        
        PushI        1                         
        Jump         -compare-2760-join        
        Label        -compare-2760-false       
        PushI        0                         
        Jump         -compare-2760-join        
        Label        -compare-2760-join        
        JumpTrue     -print-boolean-2761-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2761-join  
        Label        -print-boolean-2761-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2761-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2762-arg1        
        PushF        5.600000                  
        ConvertI                               
        Label        -compare-2762-arg2        
        PushI        33                        
        Label        -compare-2762-sub         
        Subtract                               
        JumpNeg      -compare-2762-true        
        Jump         -compare-2762-false       
        Label        -compare-2762-true        
        PushI        1                         
        Jump         -compare-2762-join        
        Label        -compare-2762-false       
        PushI        0                         
        Jump         -compare-2762-join        
        Label        -compare-2762-join        
        JumpTrue     -print-boolean-2763-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2763-join  
        Label        -print-boolean-2763-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2763-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2764-arg1        
        PushF        4.700000                  
        ConvertI                               
        Label        -compare-2764-arg2        
        PushI        65                        
        Label        -compare-2764-sub         
        Subtract                               
        JumpNeg      -compare-2764-true        
        Jump         -compare-2764-false       
        Label        -compare-2764-true        
        PushI        1                         
        Jump         -compare-2764-join        
        Label        -compare-2764-false       
        PushI        0                         
        Jump         -compare-2764-join        
        Label        -compare-2764-join        
        JumpTrue     -print-boolean-2765-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2765-join  
        Label        -print-boolean-2765-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2765-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2766-arg1        
        PushF        7.300000                  
        ConvertI                               
        Label        -compare-2766-arg2        
        PushI        88                        
        Label        -compare-2766-sub         
        Subtract                               
        JumpNeg      -compare-2766-true        
        Jump         -compare-2766-false       
        Label        -compare-2766-true        
        PushI        1                         
        Jump         -compare-2766-join        
        Label        -compare-2766-false       
        PushI        0                         
        Jump         -compare-2766-join        
        Label        -compare-2766-join        
        JumpTrue     -print-boolean-2767-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2767-join  
        Label        -print-boolean-2767-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2767-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2768-arg1        
        PushF        8.600000                  
        ConvertI                               
        Label        -compare-2768-arg2        
        PushI        50                        
        Label        -compare-2768-sub         
        Subtract                               
        JumpNeg      -compare-2768-true        
        Jump         -compare-2768-false       
        Label        -compare-2768-true        
        PushI        1                         
        Jump         -compare-2768-join        
        Label        -compare-2768-false       
        PushI        0                         
        Jump         -compare-2768-join        
        Label        -compare-2768-join        
        JumpTrue     -print-boolean-2769-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2769-join  
        Label        -print-boolean-2769-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2769-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2770-arg1        
        PushF        3.700000                  
        ConvertI                               
        Label        -compare-2770-arg2        
        PushI        20                        
        Label        -compare-2770-sub         
        Subtract                               
        JumpNeg      -compare-2770-true        
        Jump         -compare-2770-false       
        Label        -compare-2770-true        
        PushI        1                         
        Jump         -compare-2770-join        
        Label        -compare-2770-false       
        PushI        0                         
        Jump         -compare-2770-join        
        Label        -compare-2770-join        
        JumpTrue     -print-boolean-2771-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2771-join  
        Label        -print-boolean-2771-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2771-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2772-arg1        
        PushF        6.800000                  
        ConvertI                               
        Label        -compare-2772-arg2        
        PushI        96                        
        Label        -compare-2772-sub         
        Subtract                               
        JumpNeg      -compare-2772-true        
        Jump         -compare-2772-false       
        Label        -compare-2772-true        
        PushI        1                         
        Jump         -compare-2772-join        
        Label        -compare-2772-false       
        PushI        0                         
        Jump         -compare-2772-join        
        Label        -compare-2772-join        
        JumpTrue     -print-boolean-2773-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2773-join  
        Label        -print-boolean-2773-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2773-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2774-arg1        
        PushI        48                        
        Label        -compare-2774-arg2        
        PushF        6.100000                  
        ConvertI                               
        Label        -compare-2774-sub         
        Subtract                               
        JumpNeg      -compare-2774-true        
        Jump         -compare-2774-false       
        Label        -compare-2774-true        
        PushI        1                         
        Jump         -compare-2774-join        
        Label        -compare-2774-false       
        PushI        0                         
        Jump         -compare-2774-join        
        Label        -compare-2774-join        
        JumpTrue     -print-boolean-2775-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2775-join  
        Label        -print-boolean-2775-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2775-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2776-arg1        
        PushI        62                        
        Label        -compare-2776-arg2        
        PushF        2.000000                  
        ConvertI                               
        Label        -compare-2776-sub         
        Subtract                               
        JumpNeg      -compare-2776-true        
        Jump         -compare-2776-false       
        Label        -compare-2776-true        
        PushI        1                         
        Jump         -compare-2776-join        
        Label        -compare-2776-false       
        PushI        0                         
        Jump         -compare-2776-join        
        Label        -compare-2776-join        
        JumpTrue     -print-boolean-2777-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2777-join  
        Label        -print-boolean-2777-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2777-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2778-arg1        
        PushI        1                         
        Label        -compare-2778-arg2        
        PushF        6.900000                  
        ConvertI                               
        Label        -compare-2778-sub         
        Subtract                               
        JumpNeg      -compare-2778-true        
        Jump         -compare-2778-false       
        Label        -compare-2778-true        
        PushI        1                         
        Jump         -compare-2778-join        
        Label        -compare-2778-false       
        PushI        0                         
        Jump         -compare-2778-join        
        Label        -compare-2778-join        
        JumpTrue     -print-boolean-2779-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2779-join  
        Label        -print-boolean-2779-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2779-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2780-arg1        
        PushI        46                        
        Label        -compare-2780-arg2        
        PushF        9.100000                  
        ConvertI                               
        Label        -compare-2780-sub         
        Subtract                               
        JumpNeg      -compare-2780-true        
        Jump         -compare-2780-false       
        Label        -compare-2780-true        
        PushI        1                         
        Jump         -compare-2780-join        
        Label        -compare-2780-false       
        PushI        0                         
        Jump         -compare-2780-join        
        Label        -compare-2780-join        
        JumpTrue     -print-boolean-2781-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2781-join  
        Label        -print-boolean-2781-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2781-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2782-arg1        
        PushI        44                        
        Label        -compare-2782-arg2        
        PushF        5.500000                  
        ConvertI                               
        Label        -compare-2782-sub         
        Subtract                               
        JumpNeg      -compare-2782-true        
        Jump         -compare-2782-false       
        Label        -compare-2782-true        
        PushI        1                         
        Jump         -compare-2782-join        
        Label        -compare-2782-false       
        PushI        0                         
        Jump         -compare-2782-join        
        Label        -compare-2782-join        
        JumpTrue     -print-boolean-2783-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2783-join  
        Label        -print-boolean-2783-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2783-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2784-arg1        
        PushI        19                        
        Label        -compare-2784-arg2        
        PushF        9.700000                  
        ConvertI                               
        Label        -compare-2784-sub         
        Subtract                               
        JumpNeg      -compare-2784-true        
        Jump         -compare-2784-false       
        Label        -compare-2784-true        
        PushI        1                         
        Jump         -compare-2784-join        
        Label        -compare-2784-false       
        PushI        0                         
        Jump         -compare-2784-join        
        Label        -compare-2784-join        
        JumpTrue     -print-boolean-2785-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2785-join  
        Label        -print-boolean-2785-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2785-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2786-arg1        
        PushI        80                        
        Label        -compare-2786-arg2        
        PushF        6.200000                  
        ConvertI                               
        Label        -compare-2786-sub         
        Subtract                               
        JumpNeg      -compare-2786-true        
        Jump         -compare-2786-false       
        Label        -compare-2786-true        
        PushI        1                         
        Jump         -compare-2786-join        
        Label        -compare-2786-false       
        PushI        0                         
        Jump         -compare-2786-join        
        Label        -compare-2786-join        
        JumpTrue     -print-boolean-2787-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2787-join  
        Label        -print-boolean-2787-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2787-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2788-arg1        
        PushI        69                        
        Label        -compare-2788-arg2        
        PushF        8.300000                  
        ConvertI                               
        Label        -compare-2788-sub         
        Subtract                               
        JumpNeg      -compare-2788-true        
        Jump         -compare-2788-false       
        Label        -compare-2788-true        
        PushI        1                         
        Jump         -compare-2788-join        
        Label        -compare-2788-false       
        PushI        0                         
        Jump         -compare-2788-join        
        Label        -compare-2788-join        
        JumpTrue     -print-boolean-2789-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2789-join  
        Label        -print-boolean-2789-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2789-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2790-arg1        
        PushI        69                        
        Label        -compare-2790-arg2        
        PushF        9.500000                  
        ConvertI                               
        Label        -compare-2790-sub         
        Subtract                               
        JumpNeg      -compare-2790-true        
        Jump         -compare-2790-false       
        Label        -compare-2790-true        
        PushI        1                         
        Jump         -compare-2790-join        
        Label        -compare-2790-false       
        PushI        0                         
        Jump         -compare-2790-join        
        Label        -compare-2790-join        
        JumpTrue     -print-boolean-2791-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2791-join  
        Label        -print-boolean-2791-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2791-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2792-arg1        
        PushI        18                        
        Label        -compare-2792-arg2        
        PushF        6.700000                  
        ConvertI                               
        Label        -compare-2792-sub         
        Subtract                               
        JumpNeg      -compare-2792-true        
        Jump         -compare-2792-false       
        Label        -compare-2792-true        
        PushI        1                         
        Jump         -compare-2792-join        
        Label        -compare-2792-false       
        PushI        0                         
        Jump         -compare-2792-join        
        Label        -compare-2792-join        
        JumpTrue     -print-boolean-2793-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2793-join  
        Label        -print-boolean-2793-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2793-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2794-arg1        
        PushI        36                        
        Label        -compare-2794-arg2        
        PushF        6.900000                  
        ConvertI                               
        Label        -compare-2794-sub         
        Subtract                               
        JumpNeg      -compare-2794-true        
        Jump         -compare-2794-false       
        Label        -compare-2794-true        
        PushI        1                         
        Jump         -compare-2794-join        
        Label        -compare-2794-false       
        PushI        0                         
        Jump         -compare-2794-join        
        Label        -compare-2794-join        
        JumpTrue     -print-boolean-2795-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2795-join  
        Label        -print-boolean-2795-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2795-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2796-arg1        
        PushI        34                        
        Label        -compare-2796-arg2        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2796-sub         
        Subtract                               
        JumpNeg      -compare-2796-true        
        Jump         -compare-2796-false       
        Label        -compare-2796-true        
        PushI        1                         
        Jump         -compare-2796-join        
        Label        -compare-2796-false       
        PushI        0                         
        Jump         -compare-2796-join        
        Label        -compare-2796-join        
        JumpTrue     -print-boolean-2797-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2797-join  
        Label        -print-boolean-2797-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2797-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2798-arg1        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2798-arg2        
        PushF        8.200000                  
        ConvertI                               
        Label        -compare-2798-sub         
        Subtract                               
        JumpNeg      -compare-2798-true        
        Jump         -compare-2798-false       
        Label        -compare-2798-true        
        PushI        1                         
        Jump         -compare-2798-join        
        Label        -compare-2798-false       
        PushI        0                         
        Jump         -compare-2798-join        
        Label        -compare-2798-join        
        JumpTrue     -print-boolean-2799-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2799-join  
        Label        -print-boolean-2799-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2799-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2800-arg1        
        PushF        8.700000                  
        ConvertI                               
        Label        -compare-2800-arg2        
        PushF        1.600000                  
        ConvertI                               
        Label        -compare-2800-sub         
        Subtract                               
        JumpNeg      -compare-2800-true        
        Jump         -compare-2800-false       
        Label        -compare-2800-true        
        PushI        1                         
        Jump         -compare-2800-join        
        Label        -compare-2800-false       
        PushI        0                         
        Jump         -compare-2800-join        
        Label        -compare-2800-join        
        JumpTrue     -print-boolean-2801-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2801-join  
        Label        -print-boolean-2801-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2801-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2802-arg1        
        PushF        9.500000                  
        ConvertI                               
        Label        -compare-2802-arg2        
        PushF        5.300000                  
        ConvertI                               
        Label        -compare-2802-sub         
        Subtract                               
        JumpNeg      -compare-2802-true        
        Jump         -compare-2802-false       
        Label        -compare-2802-true        
        PushI        1                         
        Jump         -compare-2802-join        
        Label        -compare-2802-false       
        PushI        0                         
        Jump         -compare-2802-join        
        Label        -compare-2802-join        
        JumpTrue     -print-boolean-2803-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2803-join  
        Label        -print-boolean-2803-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2803-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2804-arg1        
        PushF        1.200000                  
        ConvertI                               
        Label        -compare-2804-arg2        
        PushF        1.500000                  
        ConvertI                               
        Label        -compare-2804-sub         
        Subtract                               
        JumpNeg      -compare-2804-true        
        Jump         -compare-2804-false       
        Label        -compare-2804-true        
        PushI        1                         
        Jump         -compare-2804-join        
        Label        -compare-2804-false       
        PushI        0                         
        Jump         -compare-2804-join        
        Label        -compare-2804-join        
        JumpTrue     -print-boolean-2805-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2805-join  
        Label        -print-boolean-2805-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2805-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2806-arg1        
        PushF        5.200000                  
        ConvertI                               
        Label        -compare-2806-arg2        
        PushF        2.800000                  
        ConvertI                               
        Label        -compare-2806-sub         
        Subtract                               
        JumpNeg      -compare-2806-true        
        Jump         -compare-2806-false       
        Label        -compare-2806-true        
        PushI        1                         
        Jump         -compare-2806-join        
        Label        -compare-2806-false       
        PushI        0                         
        Jump         -compare-2806-join        
        Label        -compare-2806-join        
        JumpTrue     -print-boolean-2807-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2807-join  
        Label        -print-boolean-2807-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2807-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2808-arg1        
        PushF        4.000000                  
        ConvertI                               
        Label        -compare-2808-arg2        
        PushF        2.900000                  
        ConvertI                               
        Label        -compare-2808-sub         
        Subtract                               
        JumpNeg      -compare-2808-true        
        Jump         -compare-2808-false       
        Label        -compare-2808-true        
        PushI        1                         
        Jump         -compare-2808-join        
        Label        -compare-2808-false       
        PushI        0                         
        Jump         -compare-2808-join        
        Label        -compare-2808-join        
        JumpTrue     -print-boolean-2809-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2809-join  
        Label        -print-boolean-2809-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2809-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2810-arg1        
        PushF        7.500000                  
        ConvertI                               
        Label        -compare-2810-arg2        
        PushF        8.300000                  
        ConvertI                               
        Label        -compare-2810-sub         
        Subtract                               
        JumpNeg      -compare-2810-true        
        Jump         -compare-2810-false       
        Label        -compare-2810-true        
        PushI        1                         
        Jump         -compare-2810-join        
        Label        -compare-2810-false       
        PushI        0                         
        Jump         -compare-2810-join        
        Label        -compare-2810-join        
        JumpTrue     -print-boolean-2811-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2811-join  
        Label        -print-boolean-2811-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2811-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2812-arg1        
        PushF        9.500000                  
        ConvertI                               
        Label        -compare-2812-arg2        
        PushF        3.300000                  
        ConvertI                               
        Label        -compare-2812-sub         
        Subtract                               
        JumpNeg      -compare-2812-true        
        Jump         -compare-2812-false       
        Label        -compare-2812-true        
        PushI        1                         
        Jump         -compare-2812-join        
        Label        -compare-2812-false       
        PushI        0                         
        Jump         -compare-2812-join        
        Label        -compare-2812-join        
        JumpTrue     -print-boolean-2813-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2813-join  
        Label        -print-boolean-2813-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2813-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2814-arg1        
        PushF        5.100000                  
        ConvertI                               
        Label        -compare-2814-arg2        
        PushF        4.800000                  
        ConvertI                               
        Label        -compare-2814-sub         
        Subtract                               
        JumpNeg      -compare-2814-true        
        Jump         -compare-2814-false       
        Label        -compare-2814-true        
        PushI        1                         
        Jump         -compare-2814-join        
        Label        -compare-2814-false       
        PushI        0                         
        Jump         -compare-2814-join        
        Label        -compare-2814-join        
        JumpTrue     -print-boolean-2815-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2815-join  
        Label        -print-boolean-2815-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2815-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2816-arg1        
        PushF        7.900000                  
        ConvertI                               
        Label        -compare-2816-arg2        
        PushF        4.700000                  
        ConvertI                               
        Label        -compare-2816-sub         
        Subtract                               
        JumpNeg      -compare-2816-true        
        Jump         -compare-2816-false       
        Label        -compare-2816-true        
        PushI        1                         
        Jump         -compare-2816-join        
        Label        -compare-2816-false       
        PushI        0                         
        Jump         -compare-2816-join        
        Label        -compare-2816-join        
        JumpTrue     -print-boolean-2817-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2817-join  
        Label        -print-boolean-2817-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2817-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2818-arg1        
        PushF        9.800000                  
        ConvertI                               
        Label        -compare-2818-arg2        
        PushF        4.500000                  
        ConvertI                               
        Label        -compare-2818-sub         
        Subtract                               
        JumpNeg      -compare-2818-true        
        Jump         -compare-2818-false       
        Label        -compare-2818-true        
        PushI        1                         
        Jump         -compare-2818-join        
        Label        -compare-2818-false       
        PushI        0                         
        Jump         -compare-2818-join        
        Label        -compare-2818-join        
        JumpTrue     -print-boolean-2819-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2819-join  
        Label        -print-boolean-2819-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2819-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2820-arg1        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-2820-arg2        
        PushF        7.800000                  
        ConvertI                               
        Label        -compare-2820-sub         
        Subtract                               
        JumpNeg      -compare-2820-true        
        Jump         -compare-2820-false       
        Label        -compare-2820-true        
        PushI        1                         
        Jump         -compare-2820-join        
        Label        -compare-2820-false       
        PushI        0                         
        Jump         -compare-2820-join        
        Label        -compare-2820-join        
        JumpTrue     -print-boolean-2821-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2821-join  
        Label        -print-boolean-2821-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2821-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
