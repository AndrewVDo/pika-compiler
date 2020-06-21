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
        Label        -compare-2534-arg1        
        PushI        67                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2534-arg2        
        PushI        31                        
        Label        -compare-2534-sub         
        Subtract                               
        JumpNeg      -compare-2534-false       
        Jump         -compare-2534-true        
        Label        -compare-2534-true        
        PushI        1                         
        Jump         -compare-2534-join        
        Label        -compare-2534-false       
        PushI        0                         
        Jump         -compare-2534-join        
        Label        -compare-2534-join        
        JumpTrue     -print-boolean-2535-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2535-join  
        Label        -print-boolean-2535-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2535-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2536-arg1        
        PushI        120                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2536-arg2        
        PushI        94                        
        Label        -compare-2536-sub         
        Subtract                               
        JumpNeg      -compare-2536-false       
        Jump         -compare-2536-true        
        Label        -compare-2536-true        
        PushI        1                         
        Jump         -compare-2536-join        
        Label        -compare-2536-false       
        PushI        0                         
        Jump         -compare-2536-join        
        Label        -compare-2536-join        
        JumpTrue     -print-boolean-2537-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2537-join  
        Label        -print-boolean-2537-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2537-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2538-arg1        
        PushI        39                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2538-arg2        
        PushI        81                        
        Label        -compare-2538-sub         
        Subtract                               
        JumpNeg      -compare-2538-false       
        Jump         -compare-2538-true        
        Label        -compare-2538-true        
        PushI        1                         
        Jump         -compare-2538-join        
        Label        -compare-2538-false       
        PushI        0                         
        Jump         -compare-2538-join        
        Label        -compare-2538-join        
        JumpTrue     -print-boolean-2539-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2539-join  
        Label        -print-boolean-2539-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2539-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2540-arg1        
        PushI        66                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2540-arg2        
        PushI        11                        
        Label        -compare-2540-sub         
        Subtract                               
        JumpNeg      -compare-2540-false       
        Jump         -compare-2540-true        
        Label        -compare-2540-true        
        PushI        1                         
        Jump         -compare-2540-join        
        Label        -compare-2540-false       
        PushI        0                         
        Jump         -compare-2540-join        
        Label        -compare-2540-join        
        JumpTrue     -print-boolean-2541-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2541-join  
        Label        -print-boolean-2541-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2541-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2542-arg1        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2542-arg2        
        PushI        82                        
        Label        -compare-2542-sub         
        Subtract                               
        JumpNeg      -compare-2542-false       
        Jump         -compare-2542-true        
        Label        -compare-2542-true        
        PushI        1                         
        Jump         -compare-2542-join        
        Label        -compare-2542-false       
        PushI        0                         
        Jump         -compare-2542-join        
        Label        -compare-2542-join        
        JumpTrue     -print-boolean-2543-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2543-join  
        Label        -print-boolean-2543-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2543-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2544-arg1        
        PushI        124                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2544-arg2        
        PushI        11                        
        Label        -compare-2544-sub         
        Subtract                               
        JumpNeg      -compare-2544-false       
        Jump         -compare-2544-true        
        Label        -compare-2544-true        
        PushI        1                         
        Jump         -compare-2544-join        
        Label        -compare-2544-false       
        PushI        0                         
        Jump         -compare-2544-join        
        Label        -compare-2544-join        
        JumpTrue     -print-boolean-2545-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2545-join  
        Label        -print-boolean-2545-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2545-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2546-arg1        
        PushI        124                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2546-arg2        
        PushI        6                         
        Label        -compare-2546-sub         
        Subtract                               
        JumpNeg      -compare-2546-false       
        Jump         -compare-2546-true        
        Label        -compare-2546-true        
        PushI        1                         
        Jump         -compare-2546-join        
        Label        -compare-2546-false       
        PushI        0                         
        Jump         -compare-2546-join        
        Label        -compare-2546-join        
        JumpTrue     -print-boolean-2547-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2547-join  
        Label        -print-boolean-2547-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2547-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2548-arg1        
        PushI        107                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2548-arg2        
        PushI        16                        
        Label        -compare-2548-sub         
        Subtract                               
        JumpNeg      -compare-2548-false       
        Jump         -compare-2548-true        
        Label        -compare-2548-true        
        PushI        1                         
        Jump         -compare-2548-join        
        Label        -compare-2548-false       
        PushI        0                         
        Jump         -compare-2548-join        
        Label        -compare-2548-join        
        JumpTrue     -print-boolean-2549-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2549-join  
        Label        -print-boolean-2549-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2549-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2550-arg1        
        PushI        115                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2550-arg2        
        PushI        84                        
        Label        -compare-2550-sub         
        Subtract                               
        JumpNeg      -compare-2550-false       
        Jump         -compare-2550-true        
        Label        -compare-2550-true        
        PushI        1                         
        Jump         -compare-2550-join        
        Label        -compare-2550-false       
        PushI        0                         
        Jump         -compare-2550-join        
        Label        -compare-2550-join        
        JumpTrue     -print-boolean-2551-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2551-join  
        Label        -print-boolean-2551-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2551-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2552-arg1        
        PushI        107                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2552-arg2        
        PushI        50                        
        Label        -compare-2552-sub         
        Subtract                               
        JumpNeg      -compare-2552-false       
        Jump         -compare-2552-true        
        Label        -compare-2552-true        
        PushI        1                         
        Jump         -compare-2552-join        
        Label        -compare-2552-false       
        PushI        0                         
        Jump         -compare-2552-join        
        Label        -compare-2552-join        
        JumpTrue     -print-boolean-2553-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2553-join  
        Label        -print-boolean-2553-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2553-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2554-arg1        
        PushI        99                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2554-arg2        
        PushI        11                        
        Label        -compare-2554-sub         
        Subtract                               
        JumpNeg      -compare-2554-false       
        Jump         -compare-2554-true        
        Label        -compare-2554-true        
        PushI        1                         
        Jump         -compare-2554-join        
        Label        -compare-2554-false       
        PushI        0                         
        Jump         -compare-2554-join        
        Label        -compare-2554-join        
        JumpTrue     -print-boolean-2555-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2555-join  
        Label        -print-boolean-2555-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2555-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2556-arg1        
        PushI        62                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2556-arg2        
        PushI        84                        
        Label        -compare-2556-sub         
        Subtract                               
        JumpNeg      -compare-2556-false       
        Jump         -compare-2556-true        
        Label        -compare-2556-true        
        PushI        1                         
        Jump         -compare-2556-join        
        Label        -compare-2556-false       
        PushI        0                         
        Jump         -compare-2556-join        
        Label        -compare-2556-join        
        JumpTrue     -print-boolean-2557-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2557-join  
        Label        -print-boolean-2557-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2557-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2558-arg1        
        PushI        26                        
        Label        -compare-2558-arg2        
        PushI        77                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2558-sub         
        Subtract                               
        JumpNeg      -compare-2558-false       
        Jump         -compare-2558-true        
        Label        -compare-2558-true        
        PushI        1                         
        Jump         -compare-2558-join        
        Label        -compare-2558-false       
        PushI        0                         
        Jump         -compare-2558-join        
        Label        -compare-2558-join        
        JumpTrue     -print-boolean-2559-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2559-join  
        Label        -print-boolean-2559-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2559-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2560-arg1        
        PushI        86                        
        Label        -compare-2560-arg2        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2560-sub         
        Subtract                               
        JumpNeg      -compare-2560-false       
        Jump         -compare-2560-true        
        Label        -compare-2560-true        
        PushI        1                         
        Jump         -compare-2560-join        
        Label        -compare-2560-false       
        PushI        0                         
        Jump         -compare-2560-join        
        Label        -compare-2560-join        
        JumpTrue     -print-boolean-2561-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2561-join  
        Label        -print-boolean-2561-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2561-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2562-arg1        
        PushI        80                        
        Label        -compare-2562-arg2        
        PushI        48                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2562-sub         
        Subtract                               
        JumpNeg      -compare-2562-false       
        Jump         -compare-2562-true        
        Label        -compare-2562-true        
        PushI        1                         
        Jump         -compare-2562-join        
        Label        -compare-2562-false       
        PushI        0                         
        Jump         -compare-2562-join        
        Label        -compare-2562-join        
        JumpTrue     -print-boolean-2563-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2563-join  
        Label        -print-boolean-2563-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2563-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2564-arg1        
        PushI        22                        
        Label        -compare-2564-arg2        
        PushI        41                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2564-sub         
        Subtract                               
        JumpNeg      -compare-2564-false       
        Jump         -compare-2564-true        
        Label        -compare-2564-true        
        PushI        1                         
        Jump         -compare-2564-join        
        Label        -compare-2564-false       
        PushI        0                         
        Jump         -compare-2564-join        
        Label        -compare-2564-join        
        JumpTrue     -print-boolean-2565-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2565-join  
        Label        -print-boolean-2565-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2565-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2566-arg1        
        PushI        77                        
        Label        -compare-2566-arg2        
        PushI        92                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2566-sub         
        Subtract                               
        JumpNeg      -compare-2566-false       
        Jump         -compare-2566-true        
        Label        -compare-2566-true        
        PushI        1                         
        Jump         -compare-2566-join        
        Label        -compare-2566-false       
        PushI        0                         
        Jump         -compare-2566-join        
        Label        -compare-2566-join        
        JumpTrue     -print-boolean-2567-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2567-join  
        Label        -print-boolean-2567-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2567-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2568-arg1        
        PushI        24                        
        Label        -compare-2568-arg2        
        PushI        46                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2568-sub         
        Subtract                               
        JumpNeg      -compare-2568-false       
        Jump         -compare-2568-true        
        Label        -compare-2568-true        
        PushI        1                         
        Jump         -compare-2568-join        
        Label        -compare-2568-false       
        PushI        0                         
        Jump         -compare-2568-join        
        Label        -compare-2568-join        
        JumpTrue     -print-boolean-2569-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2569-join  
        Label        -print-boolean-2569-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2569-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2570-arg1        
        PushI        35                        
        Label        -compare-2570-arg2        
        PushI        102                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2570-sub         
        Subtract                               
        JumpNeg      -compare-2570-false       
        Jump         -compare-2570-true        
        Label        -compare-2570-true        
        PushI        1                         
        Jump         -compare-2570-join        
        Label        -compare-2570-false       
        PushI        0                         
        Jump         -compare-2570-join        
        Label        -compare-2570-join        
        JumpTrue     -print-boolean-2571-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2571-join  
        Label        -print-boolean-2571-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2571-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2572-arg1        
        PushI        29                        
        Label        -compare-2572-arg2        
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2572-sub         
        Subtract                               
        JumpNeg      -compare-2572-false       
        Jump         -compare-2572-true        
        Label        -compare-2572-true        
        PushI        1                         
        Jump         -compare-2572-join        
        Label        -compare-2572-false       
        PushI        0                         
        Jump         -compare-2572-join        
        Label        -compare-2572-join        
        JumpTrue     -print-boolean-2573-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2573-join  
        Label        -print-boolean-2573-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2573-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2574-arg1        
        PushI        61                        
        Label        -compare-2574-arg2        
        PushI        37                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2574-sub         
        Subtract                               
        JumpNeg      -compare-2574-false       
        Jump         -compare-2574-true        
        Label        -compare-2574-true        
        PushI        1                         
        Jump         -compare-2574-join        
        Label        -compare-2574-false       
        PushI        0                         
        Jump         -compare-2574-join        
        Label        -compare-2574-join        
        JumpTrue     -print-boolean-2575-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2575-join  
        Label        -print-boolean-2575-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2575-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2576-arg1        
        PushI        82                        
        Label        -compare-2576-arg2        
        PushI        52                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2576-sub         
        Subtract                               
        JumpNeg      -compare-2576-false       
        Jump         -compare-2576-true        
        Label        -compare-2576-true        
        PushI        1                         
        Jump         -compare-2576-join        
        Label        -compare-2576-false       
        PushI        0                         
        Jump         -compare-2576-join        
        Label        -compare-2576-join        
        JumpTrue     -print-boolean-2577-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2577-join  
        Label        -print-boolean-2577-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2577-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2578-arg1        
        PushI        91                        
        Label        -compare-2578-arg2        
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2578-sub         
        Subtract                               
        JumpNeg      -compare-2578-false       
        Jump         -compare-2578-true        
        Label        -compare-2578-true        
        PushI        1                         
        Jump         -compare-2578-join        
        Label        -compare-2578-false       
        PushI        0                         
        Jump         -compare-2578-join        
        Label        -compare-2578-join        
        JumpTrue     -print-boolean-2579-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2579-join  
        Label        -print-boolean-2579-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2579-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2580-arg1        
        PushI        14                        
        Label        -compare-2580-arg2        
        PushI        64                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2580-sub         
        Subtract                               
        JumpNeg      -compare-2580-false       
        Jump         -compare-2580-true        
        Label        -compare-2580-true        
        PushI        1                         
        Jump         -compare-2580-join        
        Label        -compare-2580-false       
        PushI        0                         
        Jump         -compare-2580-join        
        Label        -compare-2580-join        
        JumpTrue     -print-boolean-2581-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2581-join  
        Label        -print-boolean-2581-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2581-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2582-arg1        
        PushI        76                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2582-arg2        
        PushI        84                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2582-sub         
        Subtract                               
        JumpNeg      -compare-2582-false       
        Jump         -compare-2582-true        
        Label        -compare-2582-true        
        PushI        1                         
        Jump         -compare-2582-join        
        Label        -compare-2582-false       
        PushI        0                         
        Jump         -compare-2582-join        
        Label        -compare-2582-join        
        JumpTrue     -print-boolean-2583-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2583-join  
        Label        -print-boolean-2583-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2583-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2584-arg1        
        PushI        78                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2584-arg2        
        PushI        125                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2584-sub         
        Subtract                               
        JumpNeg      -compare-2584-false       
        Jump         -compare-2584-true        
        Label        -compare-2584-true        
        PushI        1                         
        Jump         -compare-2584-join        
        Label        -compare-2584-false       
        PushI        0                         
        Jump         -compare-2584-join        
        Label        -compare-2584-join        
        JumpTrue     -print-boolean-2585-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2585-join  
        Label        -print-boolean-2585-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2585-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2586-arg1        
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2586-arg2        
        PushI        100                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2586-sub         
        Subtract                               
        JumpNeg      -compare-2586-false       
        Jump         -compare-2586-true        
        Label        -compare-2586-true        
        PushI        1                         
        Jump         -compare-2586-join        
        Label        -compare-2586-false       
        PushI        0                         
        Jump         -compare-2586-join        
        Label        -compare-2586-join        
        JumpTrue     -print-boolean-2587-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2587-join  
        Label        -print-boolean-2587-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2587-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2588-arg1        
        PushI        124                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2588-arg2        
        PushI        55                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2588-sub         
        Subtract                               
        JumpNeg      -compare-2588-false       
        Jump         -compare-2588-true        
        Label        -compare-2588-true        
        PushI        1                         
        Jump         -compare-2588-join        
        Label        -compare-2588-false       
        PushI        0                         
        Jump         -compare-2588-join        
        Label        -compare-2588-join        
        JumpTrue     -print-boolean-2589-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2589-join  
        Label        -print-boolean-2589-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2589-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2590-arg1        
        PushI        65                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2590-arg2        
        PushI        57                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2590-sub         
        Subtract                               
        JumpNeg      -compare-2590-false       
        Jump         -compare-2590-true        
        Label        -compare-2590-true        
        PushI        1                         
        Jump         -compare-2590-join        
        Label        -compare-2590-false       
        PushI        0                         
        Jump         -compare-2590-join        
        Label        -compare-2590-join        
        JumpTrue     -print-boolean-2591-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2591-join  
        Label        -print-boolean-2591-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2591-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2592-arg1        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2592-arg2        
        PushI        97                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2592-sub         
        Subtract                               
        JumpNeg      -compare-2592-false       
        Jump         -compare-2592-true        
        Label        -compare-2592-true        
        PushI        1                         
        Jump         -compare-2592-join        
        Label        -compare-2592-false       
        PushI        0                         
        Jump         -compare-2592-join        
        Label        -compare-2592-join        
        JumpTrue     -print-boolean-2593-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2593-join  
        Label        -print-boolean-2593-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2593-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2594-arg1        
        PushI        60                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2594-arg2        
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2594-sub         
        Subtract                               
        JumpNeg      -compare-2594-false       
        Jump         -compare-2594-true        
        Label        -compare-2594-true        
        PushI        1                         
        Jump         -compare-2594-join        
        Label        -compare-2594-false       
        PushI        0                         
        Jump         -compare-2594-join        
        Label        -compare-2594-join        
        JumpTrue     -print-boolean-2595-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2595-join  
        Label        -print-boolean-2595-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2595-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2596-arg1        
        PushI        33                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2596-arg2        
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2596-sub         
        Subtract                               
        JumpNeg      -compare-2596-false       
        Jump         -compare-2596-true        
        Label        -compare-2596-true        
        PushI        1                         
        Jump         -compare-2596-join        
        Label        -compare-2596-false       
        PushI        0                         
        Jump         -compare-2596-join        
        Label        -compare-2596-join        
        JumpTrue     -print-boolean-2597-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2597-join  
        Label        -print-boolean-2597-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2597-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2598-arg1        
        PushI        100                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2598-arg2        
        PushI        108                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2598-sub         
        Subtract                               
        JumpNeg      -compare-2598-false       
        Jump         -compare-2598-true        
        Label        -compare-2598-true        
        PushI        1                         
        Jump         -compare-2598-join        
        Label        -compare-2598-false       
        PushI        0                         
        Jump         -compare-2598-join        
        Label        -compare-2598-join        
        JumpTrue     -print-boolean-2599-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2599-join  
        Label        -print-boolean-2599-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2599-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2600-arg1        
        PushI        70                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2600-arg2        
        PushI        100                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2600-sub         
        Subtract                               
        JumpNeg      -compare-2600-false       
        Jump         -compare-2600-true        
        Label        -compare-2600-true        
        PushI        1                         
        Jump         -compare-2600-join        
        Label        -compare-2600-false       
        PushI        0                         
        Jump         -compare-2600-join        
        Label        -compare-2600-join        
        JumpTrue     -print-boolean-2601-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2601-join  
        Label        -print-boolean-2601-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2601-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2602-arg1        
        PushI        106                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2602-arg2        
        PushI        60                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2602-sub         
        Subtract                               
        JumpNeg      -compare-2602-false       
        Jump         -compare-2602-true        
        Label        -compare-2602-true        
        PushI        1                         
        Jump         -compare-2602-join        
        Label        -compare-2602-false       
        PushI        0                         
        Jump         -compare-2602-join        
        Label        -compare-2602-join        
        JumpTrue     -print-boolean-2603-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2603-join  
        Label        -print-boolean-2603-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2603-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2604-arg1        
        PushI        77                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2604-arg2        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2604-sub         
        Subtract                               
        JumpNeg      -compare-2604-false       
        Jump         -compare-2604-true        
        Label        -compare-2604-true        
        PushI        1                         
        Jump         -compare-2604-join        
        Label        -compare-2604-false       
        PushI        0                         
        Jump         -compare-2604-join        
        Label        -compare-2604-join        
        JumpTrue     -print-boolean-2605-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2605-join  
        Label        -print-boolean-2605-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2605-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
