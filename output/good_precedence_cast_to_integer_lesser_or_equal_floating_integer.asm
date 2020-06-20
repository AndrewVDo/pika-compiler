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
        Label        -compare-2881-arg1        
        PushF        6.400000                  
        ConvertI                               
        Label        -compare-2881-arg2        
        PushI        33                        
        Label        -compare-2881-sub         
        Subtract                               
        JumpPos      -compare-2881-false       
        Jump         -compare-2881-true        
        Label        -compare-2881-true        
        PushI        1                         
        Jump         -compare-2881-join        
        Label        -compare-2881-false       
        PushI        0                         
        Jump         -compare-2881-join        
        Label        -compare-2881-join        
        JumpTrue     -print-boolean-2882-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2882-join  
        Label        -print-boolean-2882-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2882-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2883-arg1        
        PushF        3.400000                  
        ConvertI                               
        Label        -compare-2883-arg2        
        PushI        16                        
        Label        -compare-2883-sub         
        Subtract                               
        JumpPos      -compare-2883-false       
        Jump         -compare-2883-true        
        Label        -compare-2883-true        
        PushI        1                         
        Jump         -compare-2883-join        
        Label        -compare-2883-false       
        PushI        0                         
        Jump         -compare-2883-join        
        Label        -compare-2883-join        
        JumpTrue     -print-boolean-2884-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2884-join  
        Label        -print-boolean-2884-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2884-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2885-arg1        
        PushF        4.800000                  
        ConvertI                               
        Label        -compare-2885-arg2        
        PushI        99                        
        Label        -compare-2885-sub         
        Subtract                               
        JumpPos      -compare-2885-false       
        Jump         -compare-2885-true        
        Label        -compare-2885-true        
        PushI        1                         
        Jump         -compare-2885-join        
        Label        -compare-2885-false       
        PushI        0                         
        Jump         -compare-2885-join        
        Label        -compare-2885-join        
        JumpTrue     -print-boolean-2886-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2886-join  
        Label        -print-boolean-2886-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2886-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2887-arg1        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-2887-arg2        
        PushI        67                        
        Label        -compare-2887-sub         
        Subtract                               
        JumpPos      -compare-2887-false       
        Jump         -compare-2887-true        
        Label        -compare-2887-true        
        PushI        1                         
        Jump         -compare-2887-join        
        Label        -compare-2887-false       
        PushI        0                         
        Jump         -compare-2887-join        
        Label        -compare-2887-join        
        JumpTrue     -print-boolean-2888-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2888-join  
        Label        -print-boolean-2888-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2888-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2889-arg1        
        PushF        3.800000                  
        ConvertI                               
        Label        -compare-2889-arg2        
        PushI        44                        
        Label        -compare-2889-sub         
        Subtract                               
        JumpPos      -compare-2889-false       
        Jump         -compare-2889-true        
        Label        -compare-2889-true        
        PushI        1                         
        Jump         -compare-2889-join        
        Label        -compare-2889-false       
        PushI        0                         
        Jump         -compare-2889-join        
        Label        -compare-2889-join        
        JumpTrue     -print-boolean-2890-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2890-join  
        Label        -print-boolean-2890-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2890-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2891-arg1        
        PushF        8.100000                  
        ConvertI                               
        Label        -compare-2891-arg2        
        PushI        65                        
        Label        -compare-2891-sub         
        Subtract                               
        JumpPos      -compare-2891-false       
        Jump         -compare-2891-true        
        Label        -compare-2891-true        
        PushI        1                         
        Jump         -compare-2891-join        
        Label        -compare-2891-false       
        PushI        0                         
        Jump         -compare-2891-join        
        Label        -compare-2891-join        
        JumpTrue     -print-boolean-2892-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2892-join  
        Label        -print-boolean-2892-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2892-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2893-arg1        
        PushF        8.100000                  
        ConvertI                               
        Label        -compare-2893-arg2        
        PushI        34                        
        Label        -compare-2893-sub         
        Subtract                               
        JumpPos      -compare-2893-false       
        Jump         -compare-2893-true        
        Label        -compare-2893-true        
        PushI        1                         
        Jump         -compare-2893-join        
        Label        -compare-2893-false       
        PushI        0                         
        Jump         -compare-2893-join        
        Label        -compare-2893-join        
        JumpTrue     -print-boolean-2894-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2894-join  
        Label        -print-boolean-2894-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2894-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2895-arg1        
        PushF        2.400000                  
        ConvertI                               
        Label        -compare-2895-arg2        
        PushI        55                        
        Label        -compare-2895-sub         
        Subtract                               
        JumpPos      -compare-2895-false       
        Jump         -compare-2895-true        
        Label        -compare-2895-true        
        PushI        1                         
        Jump         -compare-2895-join        
        Label        -compare-2895-false       
        PushI        0                         
        Jump         -compare-2895-join        
        Label        -compare-2895-join        
        JumpTrue     -print-boolean-2896-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2896-join  
        Label        -print-boolean-2896-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2896-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2897-arg1        
        PushF        7.700000                  
        ConvertI                               
        Label        -compare-2897-arg2        
        PushI        50                        
        Label        -compare-2897-sub         
        Subtract                               
        JumpPos      -compare-2897-false       
        Jump         -compare-2897-true        
        Label        -compare-2897-true        
        PushI        1                         
        Jump         -compare-2897-join        
        Label        -compare-2897-false       
        PushI        0                         
        Jump         -compare-2897-join        
        Label        -compare-2897-join        
        JumpTrue     -print-boolean-2898-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2898-join  
        Label        -print-boolean-2898-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2898-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2899-arg1        
        PushF        8.900000                  
        ConvertI                               
        Label        -compare-2899-arg2        
        PushI        33                        
        Label        -compare-2899-sub         
        Subtract                               
        JumpPos      -compare-2899-false       
        Jump         -compare-2899-true        
        Label        -compare-2899-true        
        PushI        1                         
        Jump         -compare-2899-join        
        Label        -compare-2899-false       
        PushI        0                         
        Jump         -compare-2899-join        
        Label        -compare-2899-join        
        JumpTrue     -print-boolean-2900-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2900-join  
        Label        -print-boolean-2900-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2900-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2901-arg1        
        PushF        1.000000                  
        ConvertI                               
        Label        -compare-2901-arg2        
        PushI        91                        
        Label        -compare-2901-sub         
        Subtract                               
        JumpPos      -compare-2901-false       
        Jump         -compare-2901-true        
        Label        -compare-2901-true        
        PushI        1                         
        Jump         -compare-2901-join        
        Label        -compare-2901-false       
        PushI        0                         
        Jump         -compare-2901-join        
        Label        -compare-2901-join        
        JumpTrue     -print-boolean-2902-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2902-join  
        Label        -print-boolean-2902-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2902-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2903-arg1        
        PushF        9.100000                  
        ConvertI                               
        Label        -compare-2903-arg2        
        PushI        52                        
        Label        -compare-2903-sub         
        Subtract                               
        JumpPos      -compare-2903-false       
        Jump         -compare-2903-true        
        Label        -compare-2903-true        
        PushI        1                         
        Jump         -compare-2903-join        
        Label        -compare-2903-false       
        PushI        0                         
        Jump         -compare-2903-join        
        Label        -compare-2903-join        
        JumpTrue     -print-boolean-2904-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2904-join  
        Label        -print-boolean-2904-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2904-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2905-arg1        
        PushI        50                        
        Label        -compare-2905-arg2        
        PushF        2.800000                  
        ConvertI                               
        Label        -compare-2905-sub         
        Subtract                               
        JumpPos      -compare-2905-false       
        Jump         -compare-2905-true        
        Label        -compare-2905-true        
        PushI        1                         
        Jump         -compare-2905-join        
        Label        -compare-2905-false       
        PushI        0                         
        Jump         -compare-2905-join        
        Label        -compare-2905-join        
        JumpTrue     -print-boolean-2906-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2906-join  
        Label        -print-boolean-2906-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2906-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2907-arg1        
        PushI        51                        
        Label        -compare-2907-arg2        
        PushF        1.200000                  
        ConvertI                               
        Label        -compare-2907-sub         
        Subtract                               
        JumpPos      -compare-2907-false       
        Jump         -compare-2907-true        
        Label        -compare-2907-true        
        PushI        1                         
        Jump         -compare-2907-join        
        Label        -compare-2907-false       
        PushI        0                         
        Jump         -compare-2907-join        
        Label        -compare-2907-join        
        JumpTrue     -print-boolean-2908-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2908-join  
        Label        -print-boolean-2908-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2908-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2909-arg1        
        PushI        15                        
        Label        -compare-2909-arg2        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2909-sub         
        Subtract                               
        JumpPos      -compare-2909-false       
        Jump         -compare-2909-true        
        Label        -compare-2909-true        
        PushI        1                         
        Jump         -compare-2909-join        
        Label        -compare-2909-false       
        PushI        0                         
        Jump         -compare-2909-join        
        Label        -compare-2909-join        
        JumpTrue     -print-boolean-2910-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2910-join  
        Label        -print-boolean-2910-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2910-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2911-arg1        
        PushI        67                        
        Label        -compare-2911-arg2        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-2911-sub         
        Subtract                               
        JumpPos      -compare-2911-false       
        Jump         -compare-2911-true        
        Label        -compare-2911-true        
        PushI        1                         
        Jump         -compare-2911-join        
        Label        -compare-2911-false       
        PushI        0                         
        Jump         -compare-2911-join        
        Label        -compare-2911-join        
        JumpTrue     -print-boolean-2912-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2912-join  
        Label        -print-boolean-2912-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2912-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2913-arg1        
        PushI        89                        
        Label        -compare-2913-arg2        
        PushF        2.200000                  
        ConvertI                               
        Label        -compare-2913-sub         
        Subtract                               
        JumpPos      -compare-2913-false       
        Jump         -compare-2913-true        
        Label        -compare-2913-true        
        PushI        1                         
        Jump         -compare-2913-join        
        Label        -compare-2913-false       
        PushI        0                         
        Jump         -compare-2913-join        
        Label        -compare-2913-join        
        JumpTrue     -print-boolean-2914-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2914-join  
        Label        -print-boolean-2914-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2914-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2915-arg1        
        PushI        44                        
        Label        -compare-2915-arg2        
        PushF        5.900000                  
        ConvertI                               
        Label        -compare-2915-sub         
        Subtract                               
        JumpPos      -compare-2915-false       
        Jump         -compare-2915-true        
        Label        -compare-2915-true        
        PushI        1                         
        Jump         -compare-2915-join        
        Label        -compare-2915-false       
        PushI        0                         
        Jump         -compare-2915-join        
        Label        -compare-2915-join        
        JumpTrue     -print-boolean-2916-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2916-join  
        Label        -print-boolean-2916-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2916-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2917-arg1        
        PushI        79                        
        Label        -compare-2917-arg2        
        PushF        4.200000                  
        ConvertI                               
        Label        -compare-2917-sub         
        Subtract                               
        JumpPos      -compare-2917-false       
        Jump         -compare-2917-true        
        Label        -compare-2917-true        
        PushI        1                         
        Jump         -compare-2917-join        
        Label        -compare-2917-false       
        PushI        0                         
        Jump         -compare-2917-join        
        Label        -compare-2917-join        
        JumpTrue     -print-boolean-2918-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2918-join  
        Label        -print-boolean-2918-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2918-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2919-arg1        
        PushI        10                        
        Label        -compare-2919-arg2        
        PushF        1.100000                  
        ConvertI                               
        Label        -compare-2919-sub         
        Subtract                               
        JumpPos      -compare-2919-false       
        Jump         -compare-2919-true        
        Label        -compare-2919-true        
        PushI        1                         
        Jump         -compare-2919-join        
        Label        -compare-2919-false       
        PushI        0                         
        Jump         -compare-2919-join        
        Label        -compare-2919-join        
        JumpTrue     -print-boolean-2920-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2920-join  
        Label        -print-boolean-2920-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2920-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2921-arg1        
        PushI        33                        
        Label        -compare-2921-arg2        
        PushF        1.800000                  
        ConvertI                               
        Label        -compare-2921-sub         
        Subtract                               
        JumpPos      -compare-2921-false       
        Jump         -compare-2921-true        
        Label        -compare-2921-true        
        PushI        1                         
        Jump         -compare-2921-join        
        Label        -compare-2921-false       
        PushI        0                         
        Jump         -compare-2921-join        
        Label        -compare-2921-join        
        JumpTrue     -print-boolean-2922-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2922-join  
        Label        -print-boolean-2922-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2922-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2923-arg1        
        PushI        7                         
        Label        -compare-2923-arg2        
        PushF        8.300000                  
        ConvertI                               
        Label        -compare-2923-sub         
        Subtract                               
        JumpPos      -compare-2923-false       
        Jump         -compare-2923-true        
        Label        -compare-2923-true        
        PushI        1                         
        Jump         -compare-2923-join        
        Label        -compare-2923-false       
        PushI        0                         
        Jump         -compare-2923-join        
        Label        -compare-2923-join        
        JumpTrue     -print-boolean-2924-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2924-join  
        Label        -print-boolean-2924-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2924-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2925-arg1        
        PushI        37                        
        Label        -compare-2925-arg2        
        PushF        5.200000                  
        ConvertI                               
        Label        -compare-2925-sub         
        Subtract                               
        JumpPos      -compare-2925-false       
        Jump         -compare-2925-true        
        Label        -compare-2925-true        
        PushI        1                         
        Jump         -compare-2925-join        
        Label        -compare-2925-false       
        PushI        0                         
        Jump         -compare-2925-join        
        Label        -compare-2925-join        
        JumpTrue     -print-boolean-2926-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2926-join  
        Label        -print-boolean-2926-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2926-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2927-arg1        
        PushI        42                        
        Label        -compare-2927-arg2        
        PushF        3.200000                  
        ConvertI                               
        Label        -compare-2927-sub         
        Subtract                               
        JumpPos      -compare-2927-false       
        Jump         -compare-2927-true        
        Label        -compare-2927-true        
        PushI        1                         
        Jump         -compare-2927-join        
        Label        -compare-2927-false       
        PushI        0                         
        Jump         -compare-2927-join        
        Label        -compare-2927-join        
        JumpTrue     -print-boolean-2928-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2928-join  
        Label        -print-boolean-2928-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2928-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2929-arg1        
        PushF        8.700000                  
        ConvertI                               
        Label        -compare-2929-arg2        
        PushF        6.100000                  
        ConvertI                               
        Label        -compare-2929-sub         
        Subtract                               
        JumpPos      -compare-2929-false       
        Jump         -compare-2929-true        
        Label        -compare-2929-true        
        PushI        1                         
        Jump         -compare-2929-join        
        Label        -compare-2929-false       
        PushI        0                         
        Jump         -compare-2929-join        
        Label        -compare-2929-join        
        JumpTrue     -print-boolean-2930-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2930-join  
        Label        -print-boolean-2930-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2930-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2931-arg1        
        PushF        1.500000                  
        ConvertI                               
        Label        -compare-2931-arg2        
        PushF        6.800000                  
        ConvertI                               
        Label        -compare-2931-sub         
        Subtract                               
        JumpPos      -compare-2931-false       
        Jump         -compare-2931-true        
        Label        -compare-2931-true        
        PushI        1                         
        Jump         -compare-2931-join        
        Label        -compare-2931-false       
        PushI        0                         
        Jump         -compare-2931-join        
        Label        -compare-2931-join        
        JumpTrue     -print-boolean-2932-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2932-join  
        Label        -print-boolean-2932-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2932-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2933-arg1        
        PushF        8.100000                  
        ConvertI                               
        Label        -compare-2933-arg2        
        PushF        2.100000                  
        ConvertI                               
        Label        -compare-2933-sub         
        Subtract                               
        JumpPos      -compare-2933-false       
        Jump         -compare-2933-true        
        Label        -compare-2933-true        
        PushI        1                         
        Jump         -compare-2933-join        
        Label        -compare-2933-false       
        PushI        0                         
        Jump         -compare-2933-join        
        Label        -compare-2933-join        
        JumpTrue     -print-boolean-2934-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2934-join  
        Label        -print-boolean-2934-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2934-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2935-arg1        
        PushF        9.800000                  
        ConvertI                               
        Label        -compare-2935-arg2        
        PushF        7.200000                  
        ConvertI                               
        Label        -compare-2935-sub         
        Subtract                               
        JumpPos      -compare-2935-false       
        Jump         -compare-2935-true        
        Label        -compare-2935-true        
        PushI        1                         
        Jump         -compare-2935-join        
        Label        -compare-2935-false       
        PushI        0                         
        Jump         -compare-2935-join        
        Label        -compare-2935-join        
        JumpTrue     -print-boolean-2936-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2936-join  
        Label        -print-boolean-2936-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2936-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2937-arg1        
        PushF        2.700000                  
        ConvertI                               
        Label        -compare-2937-arg2        
        PushF        7.900000                  
        ConvertI                               
        Label        -compare-2937-sub         
        Subtract                               
        JumpPos      -compare-2937-false       
        Jump         -compare-2937-true        
        Label        -compare-2937-true        
        PushI        1                         
        Jump         -compare-2937-join        
        Label        -compare-2937-false       
        PushI        0                         
        Jump         -compare-2937-join        
        Label        -compare-2937-join        
        JumpTrue     -print-boolean-2938-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2938-join  
        Label        -print-boolean-2938-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2938-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2939-arg1        
        PushF        1.200000                  
        ConvertI                               
        Label        -compare-2939-arg2        
        PushF        6.300000                  
        ConvertI                               
        Label        -compare-2939-sub         
        Subtract                               
        JumpPos      -compare-2939-false       
        Jump         -compare-2939-true        
        Label        -compare-2939-true        
        PushI        1                         
        Jump         -compare-2939-join        
        Label        -compare-2939-false       
        PushI        0                         
        Jump         -compare-2939-join        
        Label        -compare-2939-join        
        JumpTrue     -print-boolean-2940-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2940-join  
        Label        -print-boolean-2940-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2940-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2941-arg1        
        PushF        6.400000                  
        ConvertI                               
        Label        -compare-2941-arg2        
        PushF        7.200000                  
        ConvertI                               
        Label        -compare-2941-sub         
        Subtract                               
        JumpPos      -compare-2941-false       
        Jump         -compare-2941-true        
        Label        -compare-2941-true        
        PushI        1                         
        Jump         -compare-2941-join        
        Label        -compare-2941-false       
        PushI        0                         
        Jump         -compare-2941-join        
        Label        -compare-2941-join        
        JumpTrue     -print-boolean-2942-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2942-join  
        Label        -print-boolean-2942-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2942-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2943-arg1        
        PushF        2.900000                  
        ConvertI                               
        Label        -compare-2943-arg2        
        PushF        8.900000                  
        ConvertI                               
        Label        -compare-2943-sub         
        Subtract                               
        JumpPos      -compare-2943-false       
        Jump         -compare-2943-true        
        Label        -compare-2943-true        
        PushI        1                         
        Jump         -compare-2943-join        
        Label        -compare-2943-false       
        PushI        0                         
        Jump         -compare-2943-join        
        Label        -compare-2943-join        
        JumpTrue     -print-boolean-2944-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2944-join  
        Label        -print-boolean-2944-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2944-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2945-arg1        
        PushF        5.700000                  
        ConvertI                               
        Label        -compare-2945-arg2        
        PushF        3.400000                  
        ConvertI                               
        Label        -compare-2945-sub         
        Subtract                               
        JumpPos      -compare-2945-false       
        Jump         -compare-2945-true        
        Label        -compare-2945-true        
        PushI        1                         
        Jump         -compare-2945-join        
        Label        -compare-2945-false       
        PushI        0                         
        Jump         -compare-2945-join        
        Label        -compare-2945-join        
        JumpTrue     -print-boolean-2946-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2946-join  
        Label        -print-boolean-2946-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2946-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2947-arg1        
        PushF        1.000000                  
        ConvertI                               
        Label        -compare-2947-arg2        
        PushF        6.900000                  
        ConvertI                               
        Label        -compare-2947-sub         
        Subtract                               
        JumpPos      -compare-2947-false       
        Jump         -compare-2947-true        
        Label        -compare-2947-true        
        PushI        1                         
        Jump         -compare-2947-join        
        Label        -compare-2947-false       
        PushI        0                         
        Jump         -compare-2947-join        
        Label        -compare-2947-join        
        JumpTrue     -print-boolean-2948-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2948-join  
        Label        -print-boolean-2948-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2948-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2949-arg1        
        PushF        4.400000                  
        ConvertI                               
        Label        -compare-2949-arg2        
        PushF        5.100000                  
        ConvertI                               
        Label        -compare-2949-sub         
        Subtract                               
        JumpPos      -compare-2949-false       
        Jump         -compare-2949-true        
        Label        -compare-2949-true        
        PushI        1                         
        Jump         -compare-2949-join        
        Label        -compare-2949-false       
        PushI        0                         
        Jump         -compare-2949-join        
        Label        -compare-2949-join        
        JumpTrue     -print-boolean-2950-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2950-join  
        Label        -print-boolean-2950-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2950-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2951-arg1        
        PushF        4.600000                  
        ConvertI                               
        Label        -compare-2951-arg2        
        PushF        2.100000                  
        ConvertI                               
        Label        -compare-2951-sub         
        Subtract                               
        JumpPos      -compare-2951-false       
        Jump         -compare-2951-true        
        Label        -compare-2951-true        
        PushI        1                         
        Jump         -compare-2951-join        
        Label        -compare-2951-false       
        PushI        0                         
        Jump         -compare-2951-join        
        Label        -compare-2951-join        
        JumpTrue     -print-boolean-2952-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2952-join  
        Label        -print-boolean-2952-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2952-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
