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
        Label        -compare-2894-arg1        
        PushF        6.400000                  
        ConvertI                               
        Label        -compare-2894-arg2        
        PushI        33                        
        Label        -compare-2894-sub         
        Subtract                               
        JumpPos      -compare-2894-false       
        Jump         -compare-2894-true        
        Label        -compare-2894-true        
        PushI        1                         
        Jump         -compare-2894-join        
        Label        -compare-2894-false       
        PushI        0                         
        Jump         -compare-2894-join        
        Label        -compare-2894-join        
        JumpTrue     -print-boolean-2895-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2895-join  
        Label        -print-boolean-2895-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2895-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2896-arg1        
        PushF        3.400000                  
        ConvertI                               
        Label        -compare-2896-arg2        
        PushI        16                        
        Label        -compare-2896-sub         
        Subtract                               
        JumpPos      -compare-2896-false       
        Jump         -compare-2896-true        
        Label        -compare-2896-true        
        PushI        1                         
        Jump         -compare-2896-join        
        Label        -compare-2896-false       
        PushI        0                         
        Jump         -compare-2896-join        
        Label        -compare-2896-join        
        JumpTrue     -print-boolean-2897-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2897-join  
        Label        -print-boolean-2897-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2897-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2898-arg1        
        PushF        4.800000                  
        ConvertI                               
        Label        -compare-2898-arg2        
        PushI        99                        
        Label        -compare-2898-sub         
        Subtract                               
        JumpPos      -compare-2898-false       
        Jump         -compare-2898-true        
        Label        -compare-2898-true        
        PushI        1                         
        Jump         -compare-2898-join        
        Label        -compare-2898-false       
        PushI        0                         
        Jump         -compare-2898-join        
        Label        -compare-2898-join        
        JumpTrue     -print-boolean-2899-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2899-join  
        Label        -print-boolean-2899-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2899-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2900-arg1        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-2900-arg2        
        PushI        67                        
        Label        -compare-2900-sub         
        Subtract                               
        JumpPos      -compare-2900-false       
        Jump         -compare-2900-true        
        Label        -compare-2900-true        
        PushI        1                         
        Jump         -compare-2900-join        
        Label        -compare-2900-false       
        PushI        0                         
        Jump         -compare-2900-join        
        Label        -compare-2900-join        
        JumpTrue     -print-boolean-2901-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2901-join  
        Label        -print-boolean-2901-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2901-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2902-arg1        
        PushF        3.800000                  
        ConvertI                               
        Label        -compare-2902-arg2        
        PushI        44                        
        Label        -compare-2902-sub         
        Subtract                               
        JumpPos      -compare-2902-false       
        Jump         -compare-2902-true        
        Label        -compare-2902-true        
        PushI        1                         
        Jump         -compare-2902-join        
        Label        -compare-2902-false       
        PushI        0                         
        Jump         -compare-2902-join        
        Label        -compare-2902-join        
        JumpTrue     -print-boolean-2903-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2903-join  
        Label        -print-boolean-2903-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2903-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2904-arg1        
        PushF        8.100000                  
        ConvertI                               
        Label        -compare-2904-arg2        
        PushI        65                        
        Label        -compare-2904-sub         
        Subtract                               
        JumpPos      -compare-2904-false       
        Jump         -compare-2904-true        
        Label        -compare-2904-true        
        PushI        1                         
        Jump         -compare-2904-join        
        Label        -compare-2904-false       
        PushI        0                         
        Jump         -compare-2904-join        
        Label        -compare-2904-join        
        JumpTrue     -print-boolean-2905-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2905-join  
        Label        -print-boolean-2905-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2905-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2906-arg1        
        PushF        8.100000                  
        ConvertI                               
        Label        -compare-2906-arg2        
        PushI        34                        
        Label        -compare-2906-sub         
        Subtract                               
        JumpPos      -compare-2906-false       
        Jump         -compare-2906-true        
        Label        -compare-2906-true        
        PushI        1                         
        Jump         -compare-2906-join        
        Label        -compare-2906-false       
        PushI        0                         
        Jump         -compare-2906-join        
        Label        -compare-2906-join        
        JumpTrue     -print-boolean-2907-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2907-join  
        Label        -print-boolean-2907-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2907-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2908-arg1        
        PushF        2.400000                  
        ConvertI                               
        Label        -compare-2908-arg2        
        PushI        55                        
        Label        -compare-2908-sub         
        Subtract                               
        JumpPos      -compare-2908-false       
        Jump         -compare-2908-true        
        Label        -compare-2908-true        
        PushI        1                         
        Jump         -compare-2908-join        
        Label        -compare-2908-false       
        PushI        0                         
        Jump         -compare-2908-join        
        Label        -compare-2908-join        
        JumpTrue     -print-boolean-2909-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2909-join  
        Label        -print-boolean-2909-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2909-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2910-arg1        
        PushF        7.700000                  
        ConvertI                               
        Label        -compare-2910-arg2        
        PushI        50                        
        Label        -compare-2910-sub         
        Subtract                               
        JumpPos      -compare-2910-false       
        Jump         -compare-2910-true        
        Label        -compare-2910-true        
        PushI        1                         
        Jump         -compare-2910-join        
        Label        -compare-2910-false       
        PushI        0                         
        Jump         -compare-2910-join        
        Label        -compare-2910-join        
        JumpTrue     -print-boolean-2911-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2911-join  
        Label        -print-boolean-2911-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2911-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2912-arg1        
        PushF        8.900000                  
        ConvertI                               
        Label        -compare-2912-arg2        
        PushI        33                        
        Label        -compare-2912-sub         
        Subtract                               
        JumpPos      -compare-2912-false       
        Jump         -compare-2912-true        
        Label        -compare-2912-true        
        PushI        1                         
        Jump         -compare-2912-join        
        Label        -compare-2912-false       
        PushI        0                         
        Jump         -compare-2912-join        
        Label        -compare-2912-join        
        JumpTrue     -print-boolean-2913-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2913-join  
        Label        -print-boolean-2913-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2913-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2914-arg1        
        PushF        1.000000                  
        ConvertI                               
        Label        -compare-2914-arg2        
        PushI        91                        
        Label        -compare-2914-sub         
        Subtract                               
        JumpPos      -compare-2914-false       
        Jump         -compare-2914-true        
        Label        -compare-2914-true        
        PushI        1                         
        Jump         -compare-2914-join        
        Label        -compare-2914-false       
        PushI        0                         
        Jump         -compare-2914-join        
        Label        -compare-2914-join        
        JumpTrue     -print-boolean-2915-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2915-join  
        Label        -print-boolean-2915-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2915-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2916-arg1        
        PushF        9.100000                  
        ConvertI                               
        Label        -compare-2916-arg2        
        PushI        52                        
        Label        -compare-2916-sub         
        Subtract                               
        JumpPos      -compare-2916-false       
        Jump         -compare-2916-true        
        Label        -compare-2916-true        
        PushI        1                         
        Jump         -compare-2916-join        
        Label        -compare-2916-false       
        PushI        0                         
        Jump         -compare-2916-join        
        Label        -compare-2916-join        
        JumpTrue     -print-boolean-2917-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2917-join  
        Label        -print-boolean-2917-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2917-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2918-arg1        
        PushI        50                        
        Label        -compare-2918-arg2        
        PushF        2.800000                  
        ConvertI                               
        Label        -compare-2918-sub         
        Subtract                               
        JumpPos      -compare-2918-false       
        Jump         -compare-2918-true        
        Label        -compare-2918-true        
        PushI        1                         
        Jump         -compare-2918-join        
        Label        -compare-2918-false       
        PushI        0                         
        Jump         -compare-2918-join        
        Label        -compare-2918-join        
        JumpTrue     -print-boolean-2919-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2919-join  
        Label        -print-boolean-2919-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2919-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2920-arg1        
        PushI        51                        
        Label        -compare-2920-arg2        
        PushF        1.200000                  
        ConvertI                               
        Label        -compare-2920-sub         
        Subtract                               
        JumpPos      -compare-2920-false       
        Jump         -compare-2920-true        
        Label        -compare-2920-true        
        PushI        1                         
        Jump         -compare-2920-join        
        Label        -compare-2920-false       
        PushI        0                         
        Jump         -compare-2920-join        
        Label        -compare-2920-join        
        JumpTrue     -print-boolean-2921-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2921-join  
        Label        -print-boolean-2921-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2921-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2922-arg1        
        PushI        15                        
        Label        -compare-2922-arg2        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2922-sub         
        Subtract                               
        JumpPos      -compare-2922-false       
        Jump         -compare-2922-true        
        Label        -compare-2922-true        
        PushI        1                         
        Jump         -compare-2922-join        
        Label        -compare-2922-false       
        PushI        0                         
        Jump         -compare-2922-join        
        Label        -compare-2922-join        
        JumpTrue     -print-boolean-2923-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2923-join  
        Label        -print-boolean-2923-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2923-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2924-arg1        
        PushI        67                        
        Label        -compare-2924-arg2        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-2924-sub         
        Subtract                               
        JumpPos      -compare-2924-false       
        Jump         -compare-2924-true        
        Label        -compare-2924-true        
        PushI        1                         
        Jump         -compare-2924-join        
        Label        -compare-2924-false       
        PushI        0                         
        Jump         -compare-2924-join        
        Label        -compare-2924-join        
        JumpTrue     -print-boolean-2925-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2925-join  
        Label        -print-boolean-2925-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2925-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2926-arg1        
        PushI        89                        
        Label        -compare-2926-arg2        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2926-sub         
        Subtract                               
        JumpPos      -compare-2926-false       
        Jump         -compare-2926-true        
        Label        -compare-2926-true        
        PushI        1                         
        Jump         -compare-2926-join        
        Label        -compare-2926-false       
        PushI        0                         
        Jump         -compare-2926-join        
        Label        -compare-2926-join        
        JumpTrue     -print-boolean-2927-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2927-join  
        Label        -print-boolean-2927-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2927-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2928-arg1        
        PushI        44                        
        Label        -compare-2928-arg2        
        PushF        5.900000                  
        ConvertI                               
        Label        -compare-2928-sub         
        Subtract                               
        JumpPos      -compare-2928-false       
        Jump         -compare-2928-true        
        Label        -compare-2928-true        
        PushI        1                         
        Jump         -compare-2928-join        
        Label        -compare-2928-false       
        PushI        0                         
        Jump         -compare-2928-join        
        Label        -compare-2928-join        
        JumpTrue     -print-boolean-2929-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2929-join  
        Label        -print-boolean-2929-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2929-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2930-arg1        
        PushI        79                        
        Label        -compare-2930-arg2        
        PushF        4.200000                  
        ConvertI                               
        Label        -compare-2930-sub         
        Subtract                               
        JumpPos      -compare-2930-false       
        Jump         -compare-2930-true        
        Label        -compare-2930-true        
        PushI        1                         
        Jump         -compare-2930-join        
        Label        -compare-2930-false       
        PushI        0                         
        Jump         -compare-2930-join        
        Label        -compare-2930-join        
        JumpTrue     -print-boolean-2931-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2931-join  
        Label        -print-boolean-2931-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2931-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2932-arg1        
        PushI        10                        
        Label        -compare-2932-arg2        
        PushF        1.100000                  
        ConvertI                               
        Label        -compare-2932-sub         
        Subtract                               
        JumpPos      -compare-2932-false       
        Jump         -compare-2932-true        
        Label        -compare-2932-true        
        PushI        1                         
        Jump         -compare-2932-join        
        Label        -compare-2932-false       
        PushI        0                         
        Jump         -compare-2932-join        
        Label        -compare-2932-join        
        JumpTrue     -print-boolean-2933-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2933-join  
        Label        -print-boolean-2933-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2933-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2934-arg1        
        PushI        33                        
        Label        -compare-2934-arg2        
        PushF        1.800000                  
        ConvertI                               
        Label        -compare-2934-sub         
        Subtract                               
        JumpPos      -compare-2934-false       
        Jump         -compare-2934-true        
        Label        -compare-2934-true        
        PushI        1                         
        Jump         -compare-2934-join        
        Label        -compare-2934-false       
        PushI        0                         
        Jump         -compare-2934-join        
        Label        -compare-2934-join        
        JumpTrue     -print-boolean-2935-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2935-join  
        Label        -print-boolean-2935-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2935-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2936-arg1        
        PushI        7                         
        Label        -compare-2936-arg2        
        PushF        8.300000                  
        ConvertI                               
        Label        -compare-2936-sub         
        Subtract                               
        JumpPos      -compare-2936-false       
        Jump         -compare-2936-true        
        Label        -compare-2936-true        
        PushI        1                         
        Jump         -compare-2936-join        
        Label        -compare-2936-false       
        PushI        0                         
        Jump         -compare-2936-join        
        Label        -compare-2936-join        
        JumpTrue     -print-boolean-2937-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2937-join  
        Label        -print-boolean-2937-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2937-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2938-arg1        
        PushI        37                        
        Label        -compare-2938-arg2        
        PushF        5.200000                  
        ConvertI                               
        Label        -compare-2938-sub         
        Subtract                               
        JumpPos      -compare-2938-false       
        Jump         -compare-2938-true        
        Label        -compare-2938-true        
        PushI        1                         
        Jump         -compare-2938-join        
        Label        -compare-2938-false       
        PushI        0                         
        Jump         -compare-2938-join        
        Label        -compare-2938-join        
        JumpTrue     -print-boolean-2939-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2939-join  
        Label        -print-boolean-2939-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2939-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2940-arg1        
        PushI        42                        
        Label        -compare-2940-arg2        
        PushF        3.200000                  
        ConvertI                               
        Label        -compare-2940-sub         
        Subtract                               
        JumpPos      -compare-2940-false       
        Jump         -compare-2940-true        
        Label        -compare-2940-true        
        PushI        1                         
        Jump         -compare-2940-join        
        Label        -compare-2940-false       
        PushI        0                         
        Jump         -compare-2940-join        
        Label        -compare-2940-join        
        JumpTrue     -print-boolean-2941-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2941-join  
        Label        -print-boolean-2941-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2941-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2942-arg1        
        PushF        8.700000                  
        ConvertI                               
        Label        -compare-2942-arg2        
        PushF        6.100000                  
        ConvertI                               
        Label        -compare-2942-sub         
        Subtract                               
        JumpPos      -compare-2942-false       
        Jump         -compare-2942-true        
        Label        -compare-2942-true        
        PushI        1                         
        Jump         -compare-2942-join        
        Label        -compare-2942-false       
        PushI        0                         
        Jump         -compare-2942-join        
        Label        -compare-2942-join        
        JumpTrue     -print-boolean-2943-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2943-join  
        Label        -print-boolean-2943-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2943-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2944-arg1        
        PushF        1.500000                  
        ConvertI                               
        Label        -compare-2944-arg2        
        PushF        6.800000                  
        ConvertI                               
        Label        -compare-2944-sub         
        Subtract                               
        JumpPos      -compare-2944-false       
        Jump         -compare-2944-true        
        Label        -compare-2944-true        
        PushI        1                         
        Jump         -compare-2944-join        
        Label        -compare-2944-false       
        PushI        0                         
        Jump         -compare-2944-join        
        Label        -compare-2944-join        
        JumpTrue     -print-boolean-2945-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2945-join  
        Label        -print-boolean-2945-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2945-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2946-arg1        
        PushF        8.100000                  
        ConvertI                               
        Label        -compare-2946-arg2        
        PushF        2.100000                  
        ConvertI                               
        Label        -compare-2946-sub         
        Subtract                               
        JumpPos      -compare-2946-false       
        Jump         -compare-2946-true        
        Label        -compare-2946-true        
        PushI        1                         
        Jump         -compare-2946-join        
        Label        -compare-2946-false       
        PushI        0                         
        Jump         -compare-2946-join        
        Label        -compare-2946-join        
        JumpTrue     -print-boolean-2947-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2947-join  
        Label        -print-boolean-2947-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2947-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2948-arg1        
        PushF        9.800000                  
        ConvertI                               
        Label        -compare-2948-arg2        
        PushF        7.200000                  
        ConvertI                               
        Label        -compare-2948-sub         
        Subtract                               
        JumpPos      -compare-2948-false       
        Jump         -compare-2948-true        
        Label        -compare-2948-true        
        PushI        1                         
        Jump         -compare-2948-join        
        Label        -compare-2948-false       
        PushI        0                         
        Jump         -compare-2948-join        
        Label        -compare-2948-join        
        JumpTrue     -print-boolean-2949-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2949-join  
        Label        -print-boolean-2949-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2949-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2950-arg1        
        PushF        2.700000                  
        ConvertI                               
        Label        -compare-2950-arg2        
        PushF        7.900000                  
        ConvertI                               
        Label        -compare-2950-sub         
        Subtract                               
        JumpPos      -compare-2950-false       
        Jump         -compare-2950-true        
        Label        -compare-2950-true        
        PushI        1                         
        Jump         -compare-2950-join        
        Label        -compare-2950-false       
        PushI        0                         
        Jump         -compare-2950-join        
        Label        -compare-2950-join        
        JumpTrue     -print-boolean-2951-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2951-join  
        Label        -print-boolean-2951-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2951-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2952-arg1        
        PushF        1.200000                  
        ConvertI                               
        Label        -compare-2952-arg2        
        PushF        6.300000                  
        ConvertI                               
        Label        -compare-2952-sub         
        Subtract                               
        JumpPos      -compare-2952-false       
        Jump         -compare-2952-true        
        Label        -compare-2952-true        
        PushI        1                         
        Jump         -compare-2952-join        
        Label        -compare-2952-false       
        PushI        0                         
        Jump         -compare-2952-join        
        Label        -compare-2952-join        
        JumpTrue     -print-boolean-2953-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2953-join  
        Label        -print-boolean-2953-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2953-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2954-arg1        
        PushF        6.400000                  
        ConvertI                               
        Label        -compare-2954-arg2        
        PushF        7.200000                  
        ConvertI                               
        Label        -compare-2954-sub         
        Subtract                               
        JumpPos      -compare-2954-false       
        Jump         -compare-2954-true        
        Label        -compare-2954-true        
        PushI        1                         
        Jump         -compare-2954-join        
        Label        -compare-2954-false       
        PushI        0                         
        Jump         -compare-2954-join        
        Label        -compare-2954-join        
        JumpTrue     -print-boolean-2955-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2955-join  
        Label        -print-boolean-2955-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2955-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2956-arg1        
        PushF        2.900000                  
        ConvertI                               
        Label        -compare-2956-arg2        
        PushF        8.900000                  
        ConvertI                               
        Label        -compare-2956-sub         
        Subtract                               
        JumpPos      -compare-2956-false       
        Jump         -compare-2956-true        
        Label        -compare-2956-true        
        PushI        1                         
        Jump         -compare-2956-join        
        Label        -compare-2956-false       
        PushI        0                         
        Jump         -compare-2956-join        
        Label        -compare-2956-join        
        JumpTrue     -print-boolean-2957-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2957-join  
        Label        -print-boolean-2957-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2957-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2958-arg1        
        PushF        5.700000                  
        ConvertI                               
        Label        -compare-2958-arg2        
        PushF        3.400000                  
        ConvertI                               
        Label        -compare-2958-sub         
        Subtract                               
        JumpPos      -compare-2958-false       
        Jump         -compare-2958-true        
        Label        -compare-2958-true        
        PushI        1                         
        Jump         -compare-2958-join        
        Label        -compare-2958-false       
        PushI        0                         
        Jump         -compare-2958-join        
        Label        -compare-2958-join        
        JumpTrue     -print-boolean-2959-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2959-join  
        Label        -print-boolean-2959-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2959-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2960-arg1        
        PushF        1.000000                  
        ConvertI                               
        Label        -compare-2960-arg2        
        PushF        6.900000                  
        ConvertI                               
        Label        -compare-2960-sub         
        Subtract                               
        JumpPos      -compare-2960-false       
        Jump         -compare-2960-true        
        Label        -compare-2960-true        
        PushI        1                         
        Jump         -compare-2960-join        
        Label        -compare-2960-false       
        PushI        0                         
        Jump         -compare-2960-join        
        Label        -compare-2960-join        
        JumpTrue     -print-boolean-2961-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2961-join  
        Label        -print-boolean-2961-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2961-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2962-arg1        
        PushF        4.400000                  
        ConvertI                               
        Label        -compare-2962-arg2        
        PushF        5.100000                  
        ConvertI                               
        Label        -compare-2962-sub         
        Subtract                               
        JumpPos      -compare-2962-false       
        Jump         -compare-2962-true        
        Label        -compare-2962-true        
        PushI        1                         
        Jump         -compare-2962-join        
        Label        -compare-2962-false       
        PushI        0                         
        Jump         -compare-2962-join        
        Label        -compare-2962-join        
        JumpTrue     -print-boolean-2963-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2963-join  
        Label        -print-boolean-2963-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2963-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2964-arg1        
        PushF        4.600000                  
        ConvertI                               
        Label        -compare-2964-arg2        
        PushF        2.100000                  
        ConvertI                               
        Label        -compare-2964-sub         
        Subtract                               
        JumpPos      -compare-2964-false       
        Jump         -compare-2964-true        
        Label        -compare-2964-true        
        PushI        1                         
        Jump         -compare-2964-join        
        Label        -compare-2964-false       
        PushI        0                         
        Jump         -compare-2964-join        
        Label        -compare-2964-join        
        JumpTrue     -print-boolean-2965-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2965-join  
        Label        -print-boolean-2965-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2965-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
