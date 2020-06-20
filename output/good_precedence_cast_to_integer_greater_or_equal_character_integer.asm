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
        Label        -compare-2521-arg1        
        PushI        67                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2521-arg2        
        PushI        31                        
        Label        -compare-2521-sub         
        Subtract                               
        JumpNeg      -compare-2521-false       
        Jump         -compare-2521-true        
        Label        -compare-2521-true        
        PushI        1                         
        Jump         -compare-2521-join        
        Label        -compare-2521-false       
        PushI        0                         
        Jump         -compare-2521-join        
        Label        -compare-2521-join        
        JumpTrue     -print-boolean-2522-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2522-join  
        Label        -print-boolean-2522-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2522-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2523-arg1        
        PushI        120                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2523-arg2        
        PushI        94                        
        Label        -compare-2523-sub         
        Subtract                               
        JumpNeg      -compare-2523-false       
        Jump         -compare-2523-true        
        Label        -compare-2523-true        
        PushI        1                         
        Jump         -compare-2523-join        
        Label        -compare-2523-false       
        PushI        0                         
        Jump         -compare-2523-join        
        Label        -compare-2523-join        
        JumpTrue     -print-boolean-2524-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2524-join  
        Label        -print-boolean-2524-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2524-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2525-arg1        
        PushI        39                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2525-arg2        
        PushI        81                        
        Label        -compare-2525-sub         
        Subtract                               
        JumpNeg      -compare-2525-false       
        Jump         -compare-2525-true        
        Label        -compare-2525-true        
        PushI        1                         
        Jump         -compare-2525-join        
        Label        -compare-2525-false       
        PushI        0                         
        Jump         -compare-2525-join        
        Label        -compare-2525-join        
        JumpTrue     -print-boolean-2526-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2526-join  
        Label        -print-boolean-2526-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2526-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2527-arg1        
        PushI        66                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2527-arg2        
        PushI        11                        
        Label        -compare-2527-sub         
        Subtract                               
        JumpNeg      -compare-2527-false       
        Jump         -compare-2527-true        
        Label        -compare-2527-true        
        PushI        1                         
        Jump         -compare-2527-join        
        Label        -compare-2527-false       
        PushI        0                         
        Jump         -compare-2527-join        
        Label        -compare-2527-join        
        JumpTrue     -print-boolean-2528-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2528-join  
        Label        -print-boolean-2528-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2528-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2529-arg1        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2529-arg2        
        PushI        82                        
        Label        -compare-2529-sub         
        Subtract                               
        JumpNeg      -compare-2529-false       
        Jump         -compare-2529-true        
        Label        -compare-2529-true        
        PushI        1                         
        Jump         -compare-2529-join        
        Label        -compare-2529-false       
        PushI        0                         
        Jump         -compare-2529-join        
        Label        -compare-2529-join        
        JumpTrue     -print-boolean-2530-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2530-join  
        Label        -print-boolean-2530-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2530-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2531-arg1        
        PushI        124                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2531-arg2        
        PushI        11                        
        Label        -compare-2531-sub         
        Subtract                               
        JumpNeg      -compare-2531-false       
        Jump         -compare-2531-true        
        Label        -compare-2531-true        
        PushI        1                         
        Jump         -compare-2531-join        
        Label        -compare-2531-false       
        PushI        0                         
        Jump         -compare-2531-join        
        Label        -compare-2531-join        
        JumpTrue     -print-boolean-2532-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2532-join  
        Label        -print-boolean-2532-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2532-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2533-arg1        
        PushI        124                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2533-arg2        
        PushI        6                         
        Label        -compare-2533-sub         
        Subtract                               
        JumpNeg      -compare-2533-false       
        Jump         -compare-2533-true        
        Label        -compare-2533-true        
        PushI        1                         
        Jump         -compare-2533-join        
        Label        -compare-2533-false       
        PushI        0                         
        Jump         -compare-2533-join        
        Label        -compare-2533-join        
        JumpTrue     -print-boolean-2534-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2534-join  
        Label        -print-boolean-2534-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2534-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2535-arg1        
        PushI        107                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2535-arg2        
        PushI        16                        
        Label        -compare-2535-sub         
        Subtract                               
        JumpNeg      -compare-2535-false       
        Jump         -compare-2535-true        
        Label        -compare-2535-true        
        PushI        1                         
        Jump         -compare-2535-join        
        Label        -compare-2535-false       
        PushI        0                         
        Jump         -compare-2535-join        
        Label        -compare-2535-join        
        JumpTrue     -print-boolean-2536-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2536-join  
        Label        -print-boolean-2536-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2536-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2537-arg1        
        PushI        115                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2537-arg2        
        PushI        84                        
        Label        -compare-2537-sub         
        Subtract                               
        JumpNeg      -compare-2537-false       
        Jump         -compare-2537-true        
        Label        -compare-2537-true        
        PushI        1                         
        Jump         -compare-2537-join        
        Label        -compare-2537-false       
        PushI        0                         
        Jump         -compare-2537-join        
        Label        -compare-2537-join        
        JumpTrue     -print-boolean-2538-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2538-join  
        Label        -print-boolean-2538-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2538-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2539-arg1        
        PushI        107                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2539-arg2        
        PushI        50                        
        Label        -compare-2539-sub         
        Subtract                               
        JumpNeg      -compare-2539-false       
        Jump         -compare-2539-true        
        Label        -compare-2539-true        
        PushI        1                         
        Jump         -compare-2539-join        
        Label        -compare-2539-false       
        PushI        0                         
        Jump         -compare-2539-join        
        Label        -compare-2539-join        
        JumpTrue     -print-boolean-2540-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2540-join  
        Label        -print-boolean-2540-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2540-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2541-arg1        
        PushI        99                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2541-arg2        
        PushI        11                        
        Label        -compare-2541-sub         
        Subtract                               
        JumpNeg      -compare-2541-false       
        Jump         -compare-2541-true        
        Label        -compare-2541-true        
        PushI        1                         
        Jump         -compare-2541-join        
        Label        -compare-2541-false       
        PushI        0                         
        Jump         -compare-2541-join        
        Label        -compare-2541-join        
        JumpTrue     -print-boolean-2542-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2542-join  
        Label        -print-boolean-2542-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2542-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2543-arg1        
        PushI        62                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2543-arg2        
        PushI        84                        
        Label        -compare-2543-sub         
        Subtract                               
        JumpNeg      -compare-2543-false       
        Jump         -compare-2543-true        
        Label        -compare-2543-true        
        PushI        1                         
        Jump         -compare-2543-join        
        Label        -compare-2543-false       
        PushI        0                         
        Jump         -compare-2543-join        
        Label        -compare-2543-join        
        JumpTrue     -print-boolean-2544-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2544-join  
        Label        -print-boolean-2544-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2544-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2545-arg1        
        PushI        26                        
        Label        -compare-2545-arg2        
        PushI        77                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2545-sub         
        Subtract                               
        JumpNeg      -compare-2545-false       
        Jump         -compare-2545-true        
        Label        -compare-2545-true        
        PushI        1                         
        Jump         -compare-2545-join        
        Label        -compare-2545-false       
        PushI        0                         
        Jump         -compare-2545-join        
        Label        -compare-2545-join        
        JumpTrue     -print-boolean-2546-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2546-join  
        Label        -print-boolean-2546-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2546-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2547-arg1        
        PushI        86                        
        Label        -compare-2547-arg2        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2547-sub         
        Subtract                               
        JumpNeg      -compare-2547-false       
        Jump         -compare-2547-true        
        Label        -compare-2547-true        
        PushI        1                         
        Jump         -compare-2547-join        
        Label        -compare-2547-false       
        PushI        0                         
        Jump         -compare-2547-join        
        Label        -compare-2547-join        
        JumpTrue     -print-boolean-2548-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2548-join  
        Label        -print-boolean-2548-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2548-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2549-arg1        
        PushI        80                        
        Label        -compare-2549-arg2        
        PushI        48                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2549-sub         
        Subtract                               
        JumpNeg      -compare-2549-false       
        Jump         -compare-2549-true        
        Label        -compare-2549-true        
        PushI        1                         
        Jump         -compare-2549-join        
        Label        -compare-2549-false       
        PushI        0                         
        Jump         -compare-2549-join        
        Label        -compare-2549-join        
        JumpTrue     -print-boolean-2550-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2550-join  
        Label        -print-boolean-2550-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2550-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2551-arg1        
        PushI        22                        
        Label        -compare-2551-arg2        
        PushI        41                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2551-sub         
        Subtract                               
        JumpNeg      -compare-2551-false       
        Jump         -compare-2551-true        
        Label        -compare-2551-true        
        PushI        1                         
        Jump         -compare-2551-join        
        Label        -compare-2551-false       
        PushI        0                         
        Jump         -compare-2551-join        
        Label        -compare-2551-join        
        JumpTrue     -print-boolean-2552-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2552-join  
        Label        -print-boolean-2552-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2552-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2553-arg1        
        PushI        77                        
        Label        -compare-2553-arg2        
        PushI        92                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2553-sub         
        Subtract                               
        JumpNeg      -compare-2553-false       
        Jump         -compare-2553-true        
        Label        -compare-2553-true        
        PushI        1                         
        Jump         -compare-2553-join        
        Label        -compare-2553-false       
        PushI        0                         
        Jump         -compare-2553-join        
        Label        -compare-2553-join        
        JumpTrue     -print-boolean-2554-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2554-join  
        Label        -print-boolean-2554-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2554-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2555-arg1        
        PushI        24                        
        Label        -compare-2555-arg2        
        PushI        46                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2555-sub         
        Subtract                               
        JumpNeg      -compare-2555-false       
        Jump         -compare-2555-true        
        Label        -compare-2555-true        
        PushI        1                         
        Jump         -compare-2555-join        
        Label        -compare-2555-false       
        PushI        0                         
        Jump         -compare-2555-join        
        Label        -compare-2555-join        
        JumpTrue     -print-boolean-2556-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2556-join  
        Label        -print-boolean-2556-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2556-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2557-arg1        
        PushI        35                        
        Label        -compare-2557-arg2        
        PushI        102                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2557-sub         
        Subtract                               
        JumpNeg      -compare-2557-false       
        Jump         -compare-2557-true        
        Label        -compare-2557-true        
        PushI        1                         
        Jump         -compare-2557-join        
        Label        -compare-2557-false       
        PushI        0                         
        Jump         -compare-2557-join        
        Label        -compare-2557-join        
        JumpTrue     -print-boolean-2558-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2558-join  
        Label        -print-boolean-2558-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2558-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2559-arg1        
        PushI        29                        
        Label        -compare-2559-arg2        
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2559-sub         
        Subtract                               
        JumpNeg      -compare-2559-false       
        Jump         -compare-2559-true        
        Label        -compare-2559-true        
        PushI        1                         
        Jump         -compare-2559-join        
        Label        -compare-2559-false       
        PushI        0                         
        Jump         -compare-2559-join        
        Label        -compare-2559-join        
        JumpTrue     -print-boolean-2560-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2560-join  
        Label        -print-boolean-2560-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2560-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2561-arg1        
        PushI        61                        
        Label        -compare-2561-arg2        
        PushI        37                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2561-sub         
        Subtract                               
        JumpNeg      -compare-2561-false       
        Jump         -compare-2561-true        
        Label        -compare-2561-true        
        PushI        1                         
        Jump         -compare-2561-join        
        Label        -compare-2561-false       
        PushI        0                         
        Jump         -compare-2561-join        
        Label        -compare-2561-join        
        JumpTrue     -print-boolean-2562-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2562-join  
        Label        -print-boolean-2562-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2562-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2563-arg1        
        PushI        82                        
        Label        -compare-2563-arg2        
        PushI        52                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2563-sub         
        Subtract                               
        JumpNeg      -compare-2563-false       
        Jump         -compare-2563-true        
        Label        -compare-2563-true        
        PushI        1                         
        Jump         -compare-2563-join        
        Label        -compare-2563-false       
        PushI        0                         
        Jump         -compare-2563-join        
        Label        -compare-2563-join        
        JumpTrue     -print-boolean-2564-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2564-join  
        Label        -print-boolean-2564-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2564-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2565-arg1        
        PushI        91                        
        Label        -compare-2565-arg2        
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2565-sub         
        Subtract                               
        JumpNeg      -compare-2565-false       
        Jump         -compare-2565-true        
        Label        -compare-2565-true        
        PushI        1                         
        Jump         -compare-2565-join        
        Label        -compare-2565-false       
        PushI        0                         
        Jump         -compare-2565-join        
        Label        -compare-2565-join        
        JumpTrue     -print-boolean-2566-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2566-join  
        Label        -print-boolean-2566-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2566-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2567-arg1        
        PushI        14                        
        Label        -compare-2567-arg2        
        PushI        64                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2567-sub         
        Subtract                               
        JumpNeg      -compare-2567-false       
        Jump         -compare-2567-true        
        Label        -compare-2567-true        
        PushI        1                         
        Jump         -compare-2567-join        
        Label        -compare-2567-false       
        PushI        0                         
        Jump         -compare-2567-join        
        Label        -compare-2567-join        
        JumpTrue     -print-boolean-2568-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2568-join  
        Label        -print-boolean-2568-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2568-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2569-arg1        
        PushI        76                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2569-arg2        
        PushI        84                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2569-sub         
        Subtract                               
        JumpNeg      -compare-2569-false       
        Jump         -compare-2569-true        
        Label        -compare-2569-true        
        PushI        1                         
        Jump         -compare-2569-join        
        Label        -compare-2569-false       
        PushI        0                         
        Jump         -compare-2569-join        
        Label        -compare-2569-join        
        JumpTrue     -print-boolean-2570-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2570-join  
        Label        -print-boolean-2570-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2570-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2571-arg1        
        PushI        78                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2571-arg2        
        PushI        125                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2571-sub         
        Subtract                               
        JumpNeg      -compare-2571-false       
        Jump         -compare-2571-true        
        Label        -compare-2571-true        
        PushI        1                         
        Jump         -compare-2571-join        
        Label        -compare-2571-false       
        PushI        0                         
        Jump         -compare-2571-join        
        Label        -compare-2571-join        
        JumpTrue     -print-boolean-2572-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2572-join  
        Label        -print-boolean-2572-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2572-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2573-arg1        
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2573-arg2        
        PushI        100                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2573-sub         
        Subtract                               
        JumpNeg      -compare-2573-false       
        Jump         -compare-2573-true        
        Label        -compare-2573-true        
        PushI        1                         
        Jump         -compare-2573-join        
        Label        -compare-2573-false       
        PushI        0                         
        Jump         -compare-2573-join        
        Label        -compare-2573-join        
        JumpTrue     -print-boolean-2574-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2574-join  
        Label        -print-boolean-2574-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2574-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2575-arg1        
        PushI        124                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2575-arg2        
        PushI        55                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2575-sub         
        Subtract                               
        JumpNeg      -compare-2575-false       
        Jump         -compare-2575-true        
        Label        -compare-2575-true        
        PushI        1                         
        Jump         -compare-2575-join        
        Label        -compare-2575-false       
        PushI        0                         
        Jump         -compare-2575-join        
        Label        -compare-2575-join        
        JumpTrue     -print-boolean-2576-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2576-join  
        Label        -print-boolean-2576-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2576-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2577-arg1        
        PushI        65                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2577-arg2        
        PushI        57                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2577-sub         
        Subtract                               
        JumpNeg      -compare-2577-false       
        Jump         -compare-2577-true        
        Label        -compare-2577-true        
        PushI        1                         
        Jump         -compare-2577-join        
        Label        -compare-2577-false       
        PushI        0                         
        Jump         -compare-2577-join        
        Label        -compare-2577-join        
        JumpTrue     -print-boolean-2578-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2578-join  
        Label        -print-boolean-2578-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2578-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2579-arg1        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2579-arg2        
        PushI        97                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2579-sub         
        Subtract                               
        JumpNeg      -compare-2579-false       
        Jump         -compare-2579-true        
        Label        -compare-2579-true        
        PushI        1                         
        Jump         -compare-2579-join        
        Label        -compare-2579-false       
        PushI        0                         
        Jump         -compare-2579-join        
        Label        -compare-2579-join        
        JumpTrue     -print-boolean-2580-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2580-join  
        Label        -print-boolean-2580-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2580-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2581-arg1        
        PushI        60                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2581-arg2        
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2581-sub         
        Subtract                               
        JumpNeg      -compare-2581-false       
        Jump         -compare-2581-true        
        Label        -compare-2581-true        
        PushI        1                         
        Jump         -compare-2581-join        
        Label        -compare-2581-false       
        PushI        0                         
        Jump         -compare-2581-join        
        Label        -compare-2581-join        
        JumpTrue     -print-boolean-2582-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2582-join  
        Label        -print-boolean-2582-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2582-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2583-arg1        
        PushI        33                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2583-arg2        
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2583-sub         
        Subtract                               
        JumpNeg      -compare-2583-false       
        Jump         -compare-2583-true        
        Label        -compare-2583-true        
        PushI        1                         
        Jump         -compare-2583-join        
        Label        -compare-2583-false       
        PushI        0                         
        Jump         -compare-2583-join        
        Label        -compare-2583-join        
        JumpTrue     -print-boolean-2584-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2584-join  
        Label        -print-boolean-2584-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2584-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2585-arg1        
        PushI        100                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2585-arg2        
        PushI        108                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2585-sub         
        Subtract                               
        JumpNeg      -compare-2585-false       
        Jump         -compare-2585-true        
        Label        -compare-2585-true        
        PushI        1                         
        Jump         -compare-2585-join        
        Label        -compare-2585-false       
        PushI        0                         
        Jump         -compare-2585-join        
        Label        -compare-2585-join        
        JumpTrue     -print-boolean-2586-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2586-join  
        Label        -print-boolean-2586-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2586-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2587-arg1        
        PushI        70                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2587-arg2        
        PushI        100                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2587-sub         
        Subtract                               
        JumpNeg      -compare-2587-false       
        Jump         -compare-2587-true        
        Label        -compare-2587-true        
        PushI        1                         
        Jump         -compare-2587-join        
        Label        -compare-2587-false       
        PushI        0                         
        Jump         -compare-2587-join        
        Label        -compare-2587-join        
        JumpTrue     -print-boolean-2588-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2588-join  
        Label        -print-boolean-2588-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2588-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2589-arg1        
        PushI        106                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2589-arg2        
        PushI        60                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2589-sub         
        Subtract                               
        JumpNeg      -compare-2589-false       
        Jump         -compare-2589-true        
        Label        -compare-2589-true        
        PushI        1                         
        Jump         -compare-2589-join        
        Label        -compare-2589-false       
        PushI        0                         
        Jump         -compare-2589-join        
        Label        -compare-2589-join        
        JumpTrue     -print-boolean-2590-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2590-join  
        Label        -print-boolean-2590-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2590-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2591-arg1        
        PushI        77                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2591-arg2        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2591-sub         
        Subtract                               
        JumpNeg      -compare-2591-false       
        Jump         -compare-2591-true        
        Label        -compare-2591-true        
        PushI        1                         
        Jump         -compare-2591-join        
        Label        -compare-2591-false       
        PushI        0                         
        Jump         -compare-2591-join        
        Label        -compare-2591-join        
        JumpTrue     -print-boolean-2592-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2592-join  
        Label        -print-boolean-2592-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2592-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
