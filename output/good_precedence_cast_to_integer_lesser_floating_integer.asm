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
        Label        -compare-2737-arg1        
        PushF        1.700000                  
        ConvertI                               
        Label        -compare-2737-arg2        
        PushI        10                        
        Label        -compare-2737-sub         
        Subtract                               
        JumpNeg      -compare-2737-true        
        Jump         -compare-2737-false       
        Label        -compare-2737-true        
        PushI        1                         
        Jump         -compare-2737-join        
        Label        -compare-2737-false       
        PushI        0                         
        Jump         -compare-2737-join        
        Label        -compare-2737-join        
        JumpTrue     -print-boolean-2738-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2738-join  
        Label        -print-boolean-2738-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2738-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2739-arg1        
        PushF        7.500000                  
        ConvertI                               
        Label        -compare-2739-arg2        
        PushI        36                        
        Label        -compare-2739-sub         
        Subtract                               
        JumpNeg      -compare-2739-true        
        Jump         -compare-2739-false       
        Label        -compare-2739-true        
        PushI        1                         
        Jump         -compare-2739-join        
        Label        -compare-2739-false       
        PushI        0                         
        Jump         -compare-2739-join        
        Label        -compare-2739-join        
        JumpTrue     -print-boolean-2740-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2740-join  
        Label        -print-boolean-2740-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2740-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2741-arg1        
        PushF        1.400000                  
        ConvertI                               
        Label        -compare-2741-arg2        
        PushI        90                        
        Label        -compare-2741-sub         
        Subtract                               
        JumpNeg      -compare-2741-true        
        Jump         -compare-2741-false       
        Label        -compare-2741-true        
        PushI        1                         
        Jump         -compare-2741-join        
        Label        -compare-2741-false       
        PushI        0                         
        Jump         -compare-2741-join        
        Label        -compare-2741-join        
        JumpTrue     -print-boolean-2742-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2742-join  
        Label        -print-boolean-2742-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2742-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2743-arg1        
        PushF        4.100000                  
        ConvertI                               
        Label        -compare-2743-arg2        
        PushI        35                        
        Label        -compare-2743-sub         
        Subtract                               
        JumpNeg      -compare-2743-true        
        Jump         -compare-2743-false       
        Label        -compare-2743-true        
        PushI        1                         
        Jump         -compare-2743-join        
        Label        -compare-2743-false       
        PushI        0                         
        Jump         -compare-2743-join        
        Label        -compare-2743-join        
        JumpTrue     -print-boolean-2744-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2744-join  
        Label        -print-boolean-2744-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2744-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2745-arg1        
        PushF        5.800000                  
        ConvertI                               
        Label        -compare-2745-arg2        
        PushI        10                        
        Label        -compare-2745-sub         
        Subtract                               
        JumpNeg      -compare-2745-true        
        Jump         -compare-2745-false       
        Label        -compare-2745-true        
        PushI        1                         
        Jump         -compare-2745-join        
        Label        -compare-2745-false       
        PushI        0                         
        Jump         -compare-2745-join        
        Label        -compare-2745-join        
        JumpTrue     -print-boolean-2746-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2746-join  
        Label        -print-boolean-2746-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2746-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2747-arg1        
        PushF        1.400000                  
        ConvertI                               
        Label        -compare-2747-arg2        
        PushI        83                        
        Label        -compare-2747-sub         
        Subtract                               
        JumpNeg      -compare-2747-true        
        Jump         -compare-2747-false       
        Label        -compare-2747-true        
        PushI        1                         
        Jump         -compare-2747-join        
        Label        -compare-2747-false       
        PushI        0                         
        Jump         -compare-2747-join        
        Label        -compare-2747-join        
        JumpTrue     -print-boolean-2748-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2748-join  
        Label        -print-boolean-2748-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2748-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2749-arg1        
        PushF        5.600000                  
        ConvertI                               
        Label        -compare-2749-arg2        
        PushI        33                        
        Label        -compare-2749-sub         
        Subtract                               
        JumpNeg      -compare-2749-true        
        Jump         -compare-2749-false       
        Label        -compare-2749-true        
        PushI        1                         
        Jump         -compare-2749-join        
        Label        -compare-2749-false       
        PushI        0                         
        Jump         -compare-2749-join        
        Label        -compare-2749-join        
        JumpTrue     -print-boolean-2750-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2750-join  
        Label        -print-boolean-2750-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2750-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2751-arg1        
        PushF        4.700000                  
        ConvertI                               
        Label        -compare-2751-arg2        
        PushI        65                        
        Label        -compare-2751-sub         
        Subtract                               
        JumpNeg      -compare-2751-true        
        Jump         -compare-2751-false       
        Label        -compare-2751-true        
        PushI        1                         
        Jump         -compare-2751-join        
        Label        -compare-2751-false       
        PushI        0                         
        Jump         -compare-2751-join        
        Label        -compare-2751-join        
        JumpTrue     -print-boolean-2752-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2752-join  
        Label        -print-boolean-2752-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2752-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2753-arg1        
        PushF        7.300000                  
        ConvertI                               
        Label        -compare-2753-arg2        
        PushI        88                        
        Label        -compare-2753-sub         
        Subtract                               
        JumpNeg      -compare-2753-true        
        Jump         -compare-2753-false       
        Label        -compare-2753-true        
        PushI        1                         
        Jump         -compare-2753-join        
        Label        -compare-2753-false       
        PushI        0                         
        Jump         -compare-2753-join        
        Label        -compare-2753-join        
        JumpTrue     -print-boolean-2754-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2754-join  
        Label        -print-boolean-2754-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2754-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2755-arg1        
        PushF        8.600000                  
        ConvertI                               
        Label        -compare-2755-arg2        
        PushI        50                        
        Label        -compare-2755-sub         
        Subtract                               
        JumpNeg      -compare-2755-true        
        Jump         -compare-2755-false       
        Label        -compare-2755-true        
        PushI        1                         
        Jump         -compare-2755-join        
        Label        -compare-2755-false       
        PushI        0                         
        Jump         -compare-2755-join        
        Label        -compare-2755-join        
        JumpTrue     -print-boolean-2756-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2756-join  
        Label        -print-boolean-2756-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2756-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2757-arg1        
        PushF        3.700000                  
        ConvertI                               
        Label        -compare-2757-arg2        
        PushI        20                        
        Label        -compare-2757-sub         
        Subtract                               
        JumpNeg      -compare-2757-true        
        Jump         -compare-2757-false       
        Label        -compare-2757-true        
        PushI        1                         
        Jump         -compare-2757-join        
        Label        -compare-2757-false       
        PushI        0                         
        Jump         -compare-2757-join        
        Label        -compare-2757-join        
        JumpTrue     -print-boolean-2758-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2758-join  
        Label        -print-boolean-2758-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2758-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2759-arg1        
        PushF        6.800000                  
        ConvertI                               
        Label        -compare-2759-arg2        
        PushI        96                        
        Label        -compare-2759-sub         
        Subtract                               
        JumpNeg      -compare-2759-true        
        Jump         -compare-2759-false       
        Label        -compare-2759-true        
        PushI        1                         
        Jump         -compare-2759-join        
        Label        -compare-2759-false       
        PushI        0                         
        Jump         -compare-2759-join        
        Label        -compare-2759-join        
        JumpTrue     -print-boolean-2760-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2760-join  
        Label        -print-boolean-2760-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2760-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2761-arg1        
        PushI        48                        
        Label        -compare-2761-arg2        
        PushF        6.100000                  
        ConvertI                               
        Label        -compare-2761-sub         
        Subtract                               
        JumpNeg      -compare-2761-true        
        Jump         -compare-2761-false       
        Label        -compare-2761-true        
        PushI        1                         
        Jump         -compare-2761-join        
        Label        -compare-2761-false       
        PushI        0                         
        Jump         -compare-2761-join        
        Label        -compare-2761-join        
        JumpTrue     -print-boolean-2762-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2762-join  
        Label        -print-boolean-2762-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2762-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2763-arg1        
        PushI        62                        
        Label        -compare-2763-arg2        
        PushF        2.000000                  
        ConvertI                               
        Label        -compare-2763-sub         
        Subtract                               
        JumpNeg      -compare-2763-true        
        Jump         -compare-2763-false       
        Label        -compare-2763-true        
        PushI        1                         
        Jump         -compare-2763-join        
        Label        -compare-2763-false       
        PushI        0                         
        Jump         -compare-2763-join        
        Label        -compare-2763-join        
        JumpTrue     -print-boolean-2764-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2764-join  
        Label        -print-boolean-2764-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2764-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2765-arg1        
        PushI        1                         
        Label        -compare-2765-arg2        
        PushF        6.900000                  
        ConvertI                               
        Label        -compare-2765-sub         
        Subtract                               
        JumpNeg      -compare-2765-true        
        Jump         -compare-2765-false       
        Label        -compare-2765-true        
        PushI        1                         
        Jump         -compare-2765-join        
        Label        -compare-2765-false       
        PushI        0                         
        Jump         -compare-2765-join        
        Label        -compare-2765-join        
        JumpTrue     -print-boolean-2766-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2766-join  
        Label        -print-boolean-2766-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2766-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2767-arg1        
        PushI        46                        
        Label        -compare-2767-arg2        
        PushF        9.100000                  
        ConvertI                               
        Label        -compare-2767-sub         
        Subtract                               
        JumpNeg      -compare-2767-true        
        Jump         -compare-2767-false       
        Label        -compare-2767-true        
        PushI        1                         
        Jump         -compare-2767-join        
        Label        -compare-2767-false       
        PushI        0                         
        Jump         -compare-2767-join        
        Label        -compare-2767-join        
        JumpTrue     -print-boolean-2768-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2768-join  
        Label        -print-boolean-2768-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2768-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2769-arg1        
        PushI        44                        
        Label        -compare-2769-arg2        
        PushF        5.500000                  
        ConvertI                               
        Label        -compare-2769-sub         
        Subtract                               
        JumpNeg      -compare-2769-true        
        Jump         -compare-2769-false       
        Label        -compare-2769-true        
        PushI        1                         
        Jump         -compare-2769-join        
        Label        -compare-2769-false       
        PushI        0                         
        Jump         -compare-2769-join        
        Label        -compare-2769-join        
        JumpTrue     -print-boolean-2770-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2770-join  
        Label        -print-boolean-2770-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2770-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2771-arg1        
        PushI        19                        
        Label        -compare-2771-arg2        
        PushF        9.700000                  
        ConvertI                               
        Label        -compare-2771-sub         
        Subtract                               
        JumpNeg      -compare-2771-true        
        Jump         -compare-2771-false       
        Label        -compare-2771-true        
        PushI        1                         
        Jump         -compare-2771-join        
        Label        -compare-2771-false       
        PushI        0                         
        Jump         -compare-2771-join        
        Label        -compare-2771-join        
        JumpTrue     -print-boolean-2772-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2772-join  
        Label        -print-boolean-2772-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2772-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2773-arg1        
        PushI        80                        
        Label        -compare-2773-arg2        
        PushF        6.200000                  
        ConvertI                               
        Label        -compare-2773-sub         
        Subtract                               
        JumpNeg      -compare-2773-true        
        Jump         -compare-2773-false       
        Label        -compare-2773-true        
        PushI        1                         
        Jump         -compare-2773-join        
        Label        -compare-2773-false       
        PushI        0                         
        Jump         -compare-2773-join        
        Label        -compare-2773-join        
        JumpTrue     -print-boolean-2774-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2774-join  
        Label        -print-boolean-2774-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2774-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2775-arg1        
        PushI        69                        
        Label        -compare-2775-arg2        
        PushF        8.300000                  
        ConvertI                               
        Label        -compare-2775-sub         
        Subtract                               
        JumpNeg      -compare-2775-true        
        Jump         -compare-2775-false       
        Label        -compare-2775-true        
        PushI        1                         
        Jump         -compare-2775-join        
        Label        -compare-2775-false       
        PushI        0                         
        Jump         -compare-2775-join        
        Label        -compare-2775-join        
        JumpTrue     -print-boolean-2776-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2776-join  
        Label        -print-boolean-2776-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2776-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2777-arg1        
        PushI        69                        
        Label        -compare-2777-arg2        
        PushF        9.500000                  
        ConvertI                               
        Label        -compare-2777-sub         
        Subtract                               
        JumpNeg      -compare-2777-true        
        Jump         -compare-2777-false       
        Label        -compare-2777-true        
        PushI        1                         
        Jump         -compare-2777-join        
        Label        -compare-2777-false       
        PushI        0                         
        Jump         -compare-2777-join        
        Label        -compare-2777-join        
        JumpTrue     -print-boolean-2778-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2778-join  
        Label        -print-boolean-2778-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2778-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2779-arg1        
        PushI        18                        
        Label        -compare-2779-arg2        
        PushF        6.700000                  
        ConvertI                               
        Label        -compare-2779-sub         
        Subtract                               
        JumpNeg      -compare-2779-true        
        Jump         -compare-2779-false       
        Label        -compare-2779-true        
        PushI        1                         
        Jump         -compare-2779-join        
        Label        -compare-2779-false       
        PushI        0                         
        Jump         -compare-2779-join        
        Label        -compare-2779-join        
        JumpTrue     -print-boolean-2780-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2780-join  
        Label        -print-boolean-2780-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2780-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2781-arg1        
        PushI        36                        
        Label        -compare-2781-arg2        
        PushF        6.900000                  
        ConvertI                               
        Label        -compare-2781-sub         
        Subtract                               
        JumpNeg      -compare-2781-true        
        Jump         -compare-2781-false       
        Label        -compare-2781-true        
        PushI        1                         
        Jump         -compare-2781-join        
        Label        -compare-2781-false       
        PushI        0                         
        Jump         -compare-2781-join        
        Label        -compare-2781-join        
        JumpTrue     -print-boolean-2782-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2782-join  
        Label        -print-boolean-2782-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2782-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2783-arg1        
        PushI        34                        
        Label        -compare-2783-arg2        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2783-sub         
        Subtract                               
        JumpNeg      -compare-2783-true        
        Jump         -compare-2783-false       
        Label        -compare-2783-true        
        PushI        1                         
        Jump         -compare-2783-join        
        Label        -compare-2783-false       
        PushI        0                         
        Jump         -compare-2783-join        
        Label        -compare-2783-join        
        JumpTrue     -print-boolean-2784-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2784-join  
        Label        -print-boolean-2784-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2784-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2785-arg1        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2785-arg2        
        PushF        8.200000                  
        ConvertI                               
        Label        -compare-2785-sub         
        Subtract                               
        JumpNeg      -compare-2785-true        
        Jump         -compare-2785-false       
        Label        -compare-2785-true        
        PushI        1                         
        Jump         -compare-2785-join        
        Label        -compare-2785-false       
        PushI        0                         
        Jump         -compare-2785-join        
        Label        -compare-2785-join        
        JumpTrue     -print-boolean-2786-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2786-join  
        Label        -print-boolean-2786-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2786-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2787-arg1        
        PushF        8.700000                  
        ConvertI                               
        Label        -compare-2787-arg2        
        PushF        1.600000                  
        ConvertI                               
        Label        -compare-2787-sub         
        Subtract                               
        JumpNeg      -compare-2787-true        
        Jump         -compare-2787-false       
        Label        -compare-2787-true        
        PushI        1                         
        Jump         -compare-2787-join        
        Label        -compare-2787-false       
        PushI        0                         
        Jump         -compare-2787-join        
        Label        -compare-2787-join        
        JumpTrue     -print-boolean-2788-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2788-join  
        Label        -print-boolean-2788-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2788-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2789-arg1        
        PushF        9.500000                  
        ConvertI                               
        Label        -compare-2789-arg2        
        PushF        5.300000                  
        ConvertI                               
        Label        -compare-2789-sub         
        Subtract                               
        JumpNeg      -compare-2789-true        
        Jump         -compare-2789-false       
        Label        -compare-2789-true        
        PushI        1                         
        Jump         -compare-2789-join        
        Label        -compare-2789-false       
        PushI        0                         
        Jump         -compare-2789-join        
        Label        -compare-2789-join        
        JumpTrue     -print-boolean-2790-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2790-join  
        Label        -print-boolean-2790-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2790-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2791-arg1        
        PushF        1.200000                  
        ConvertI                               
        Label        -compare-2791-arg2        
        PushF        1.500000                  
        ConvertI                               
        Label        -compare-2791-sub         
        Subtract                               
        JumpNeg      -compare-2791-true        
        Jump         -compare-2791-false       
        Label        -compare-2791-true        
        PushI        1                         
        Jump         -compare-2791-join        
        Label        -compare-2791-false       
        PushI        0                         
        Jump         -compare-2791-join        
        Label        -compare-2791-join        
        JumpTrue     -print-boolean-2792-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2792-join  
        Label        -print-boolean-2792-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2792-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2793-arg1        
        PushF        5.200000                  
        ConvertI                               
        Label        -compare-2793-arg2        
        PushF        2.800000                  
        ConvertI                               
        Label        -compare-2793-sub         
        Subtract                               
        JumpNeg      -compare-2793-true        
        Jump         -compare-2793-false       
        Label        -compare-2793-true        
        PushI        1                         
        Jump         -compare-2793-join        
        Label        -compare-2793-false       
        PushI        0                         
        Jump         -compare-2793-join        
        Label        -compare-2793-join        
        JumpTrue     -print-boolean-2794-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2794-join  
        Label        -print-boolean-2794-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2794-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2795-arg1        
        PushF        4.000000                  
        ConvertI                               
        Label        -compare-2795-arg2        
        PushF        2.900000                  
        ConvertI                               
        Label        -compare-2795-sub         
        Subtract                               
        JumpNeg      -compare-2795-true        
        Jump         -compare-2795-false       
        Label        -compare-2795-true        
        PushI        1                         
        Jump         -compare-2795-join        
        Label        -compare-2795-false       
        PushI        0                         
        Jump         -compare-2795-join        
        Label        -compare-2795-join        
        JumpTrue     -print-boolean-2796-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2796-join  
        Label        -print-boolean-2796-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2796-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2797-arg1        
        PushF        7.500000                  
        ConvertI                               
        Label        -compare-2797-arg2        
        PushF        8.300000                  
        ConvertI                               
        Label        -compare-2797-sub         
        Subtract                               
        JumpNeg      -compare-2797-true        
        Jump         -compare-2797-false       
        Label        -compare-2797-true        
        PushI        1                         
        Jump         -compare-2797-join        
        Label        -compare-2797-false       
        PushI        0                         
        Jump         -compare-2797-join        
        Label        -compare-2797-join        
        JumpTrue     -print-boolean-2798-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2798-join  
        Label        -print-boolean-2798-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2798-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2799-arg1        
        PushF        9.500000                  
        ConvertI                               
        Label        -compare-2799-arg2        
        PushF        3.300000                  
        ConvertI                               
        Label        -compare-2799-sub         
        Subtract                               
        JumpNeg      -compare-2799-true        
        Jump         -compare-2799-false       
        Label        -compare-2799-true        
        PushI        1                         
        Jump         -compare-2799-join        
        Label        -compare-2799-false       
        PushI        0                         
        Jump         -compare-2799-join        
        Label        -compare-2799-join        
        JumpTrue     -print-boolean-2800-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2800-join  
        Label        -print-boolean-2800-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2800-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2801-arg1        
        PushF        5.100000                  
        ConvertI                               
        Label        -compare-2801-arg2        
        PushF        4.800000                  
        ConvertI                               
        Label        -compare-2801-sub         
        Subtract                               
        JumpNeg      -compare-2801-true        
        Jump         -compare-2801-false       
        Label        -compare-2801-true        
        PushI        1                         
        Jump         -compare-2801-join        
        Label        -compare-2801-false       
        PushI        0                         
        Jump         -compare-2801-join        
        Label        -compare-2801-join        
        JumpTrue     -print-boolean-2802-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2802-join  
        Label        -print-boolean-2802-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2802-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2803-arg1        
        PushF        7.900000                  
        ConvertI                               
        Label        -compare-2803-arg2        
        PushF        4.700000                  
        ConvertI                               
        Label        -compare-2803-sub         
        Subtract                               
        JumpNeg      -compare-2803-true        
        Jump         -compare-2803-false       
        Label        -compare-2803-true        
        PushI        1                         
        Jump         -compare-2803-join        
        Label        -compare-2803-false       
        PushI        0                         
        Jump         -compare-2803-join        
        Label        -compare-2803-join        
        JumpTrue     -print-boolean-2804-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2804-join  
        Label        -print-boolean-2804-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2804-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2805-arg1        
        PushF        9.800000                  
        ConvertI                               
        Label        -compare-2805-arg2        
        PushF        4.500000                  
        ConvertI                               
        Label        -compare-2805-sub         
        Subtract                               
        JumpNeg      -compare-2805-true        
        Jump         -compare-2805-false       
        Label        -compare-2805-true        
        PushI        1                         
        Jump         -compare-2805-join        
        Label        -compare-2805-false       
        PushI        0                         
        Jump         -compare-2805-join        
        Label        -compare-2805-join        
        JumpTrue     -print-boolean-2806-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2806-join  
        Label        -print-boolean-2806-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2806-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2807-arg1        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-2807-arg2        
        PushF        7.800000                  
        ConvertI                               
        Label        -compare-2807-sub         
        Subtract                               
        JumpNeg      -compare-2807-true        
        Jump         -compare-2807-false       
        Label        -compare-2807-true        
        PushI        1                         
        Jump         -compare-2807-join        
        Label        -compare-2807-false       
        PushI        0                         
        Jump         -compare-2807-join        
        Label        -compare-2807-join        
        JumpTrue     -print-boolean-2808-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2808-join  
        Label        -print-boolean-2808-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2808-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
