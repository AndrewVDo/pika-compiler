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
        Label        -compare-2678-arg1        
        PushI        109                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2678-arg2        
        PushI        10                        
        Label        -compare-2678-sub         
        Subtract                               
        JumpNeg      -compare-2678-true        
        Jump         -compare-2678-false       
        Label        -compare-2678-true        
        PushI        1                         
        Jump         -compare-2678-join        
        Label        -compare-2678-false       
        PushI        0                         
        Jump         -compare-2678-join        
        Label        -compare-2678-join        
        JumpTrue     -print-boolean-2679-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2679-join  
        Label        -print-boolean-2679-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2679-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2680-arg1        
        PushI        48                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2680-arg2        
        PushI        5                         
        Label        -compare-2680-sub         
        Subtract                               
        JumpNeg      -compare-2680-true        
        Jump         -compare-2680-false       
        Label        -compare-2680-true        
        PushI        1                         
        Jump         -compare-2680-join        
        Label        -compare-2680-false       
        PushI        0                         
        Jump         -compare-2680-join        
        Label        -compare-2680-join        
        JumpTrue     -print-boolean-2681-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2681-join  
        Label        -print-boolean-2681-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2681-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2682-arg1        
        PushI        48                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2682-arg2        
        PushI        73                        
        Label        -compare-2682-sub         
        Subtract                               
        JumpNeg      -compare-2682-true        
        Jump         -compare-2682-false       
        Label        -compare-2682-true        
        PushI        1                         
        Jump         -compare-2682-join        
        Label        -compare-2682-false       
        PushI        0                         
        Jump         -compare-2682-join        
        Label        -compare-2682-join        
        JumpTrue     -print-boolean-2683-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2683-join  
        Label        -print-boolean-2683-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2683-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2684-arg1        
        PushI        109                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2684-arg2        
        PushI        2                         
        Label        -compare-2684-sub         
        Subtract                               
        JumpNeg      -compare-2684-true        
        Jump         -compare-2684-false       
        Label        -compare-2684-true        
        PushI        1                         
        Jump         -compare-2684-join        
        Label        -compare-2684-false       
        PushI        0                         
        Jump         -compare-2684-join        
        Label        -compare-2684-join        
        JumpTrue     -print-boolean-2685-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2685-join  
        Label        -print-boolean-2685-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2685-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2686-arg1        
        PushI        32                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2686-arg2        
        PushI        10                        
        Label        -compare-2686-sub         
        Subtract                               
        JumpNeg      -compare-2686-true        
        Jump         -compare-2686-false       
        Label        -compare-2686-true        
        PushI        1                         
        Jump         -compare-2686-join        
        Label        -compare-2686-false       
        PushI        0                         
        Jump         -compare-2686-join        
        Label        -compare-2686-join        
        JumpTrue     -print-boolean-2687-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2687-join  
        Label        -print-boolean-2687-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2687-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2688-arg1        
        PushI        80                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2688-arg2        
        PushI        46                        
        Label        -compare-2688-sub         
        Subtract                               
        JumpNeg      -compare-2688-true        
        Jump         -compare-2688-false       
        Label        -compare-2688-true        
        PushI        1                         
        Jump         -compare-2688-join        
        Label        -compare-2688-false       
        PushI        0                         
        Jump         -compare-2688-join        
        Label        -compare-2688-join        
        JumpTrue     -print-boolean-2689-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2689-join  
        Label        -print-boolean-2689-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2689-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2690-arg1        
        PushI        103                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2690-arg2        
        PushI        73                        
        Label        -compare-2690-sub         
        Subtract                               
        JumpNeg      -compare-2690-true        
        Jump         -compare-2690-false       
        Label        -compare-2690-true        
        PushI        1                         
        Jump         -compare-2690-join        
        Label        -compare-2690-false       
        PushI        0                         
        Jump         -compare-2690-join        
        Label        -compare-2690-join        
        JumpTrue     -print-boolean-2691-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2691-join  
        Label        -print-boolean-2691-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2691-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2692-arg1        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2692-arg2        
        PushI        11                        
        Label        -compare-2692-sub         
        Subtract                               
        JumpNeg      -compare-2692-true        
        Jump         -compare-2692-false       
        Label        -compare-2692-true        
        PushI        1                         
        Jump         -compare-2692-join        
        Label        -compare-2692-false       
        PushI        0                         
        Jump         -compare-2692-join        
        Label        -compare-2692-join        
        JumpTrue     -print-boolean-2693-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2693-join  
        Label        -print-boolean-2693-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2693-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2694-arg1        
        PushI        47                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2694-arg2        
        PushI        87                        
        Label        -compare-2694-sub         
        Subtract                               
        JumpNeg      -compare-2694-true        
        Jump         -compare-2694-false       
        Label        -compare-2694-true        
        PushI        1                         
        Jump         -compare-2694-join        
        Label        -compare-2694-false       
        PushI        0                         
        Jump         -compare-2694-join        
        Label        -compare-2694-join        
        JumpTrue     -print-boolean-2695-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2695-join  
        Label        -print-boolean-2695-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2695-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2696-arg1        
        PushI        43                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2696-arg2        
        PushI        7                         
        Label        -compare-2696-sub         
        Subtract                               
        JumpNeg      -compare-2696-true        
        Jump         -compare-2696-false       
        Label        -compare-2696-true        
        PushI        1                         
        Jump         -compare-2696-join        
        Label        -compare-2696-false       
        PushI        0                         
        Jump         -compare-2696-join        
        Label        -compare-2696-join        
        JumpTrue     -print-boolean-2697-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2697-join  
        Label        -print-boolean-2697-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2697-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2698-arg1        
        PushI        55                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2698-arg2        
        PushI        44                        
        Label        -compare-2698-sub         
        Subtract                               
        JumpNeg      -compare-2698-true        
        Jump         -compare-2698-false       
        Label        -compare-2698-true        
        PushI        1                         
        Jump         -compare-2698-join        
        Label        -compare-2698-false       
        PushI        0                         
        Jump         -compare-2698-join        
        Label        -compare-2698-join        
        JumpTrue     -print-boolean-2699-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2699-join  
        Label        -print-boolean-2699-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2699-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2700-arg1        
        PushI        82                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2700-arg2        
        PushI        88                        
        Label        -compare-2700-sub         
        Subtract                               
        JumpNeg      -compare-2700-true        
        Jump         -compare-2700-false       
        Label        -compare-2700-true        
        PushI        1                         
        Jump         -compare-2700-join        
        Label        -compare-2700-false       
        PushI        0                         
        Jump         -compare-2700-join        
        Label        -compare-2700-join        
        JumpTrue     -print-boolean-2701-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2701-join  
        Label        -print-boolean-2701-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2701-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2702-arg1        
        PushI        90                        
        Label        -compare-2702-arg2        
        PushI        82                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2702-sub         
        Subtract                               
        JumpNeg      -compare-2702-true        
        Jump         -compare-2702-false       
        Label        -compare-2702-true        
        PushI        1                         
        Jump         -compare-2702-join        
        Label        -compare-2702-false       
        PushI        0                         
        Jump         -compare-2702-join        
        Label        -compare-2702-join        
        JumpTrue     -print-boolean-2703-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2703-join  
        Label        -print-boolean-2703-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2703-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2704-arg1        
        PushI        36                        
        Label        -compare-2704-arg2        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2704-sub         
        Subtract                               
        JumpNeg      -compare-2704-true        
        Jump         -compare-2704-false       
        Label        -compare-2704-true        
        PushI        1                         
        Jump         -compare-2704-join        
        Label        -compare-2704-false       
        PushI        0                         
        Jump         -compare-2704-join        
        Label        -compare-2704-join        
        JumpTrue     -print-boolean-2705-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2705-join  
        Label        -print-boolean-2705-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2705-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2706-arg1        
        PushI        65                        
        Label        -compare-2706-arg2        
        PushI        70                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2706-sub         
        Subtract                               
        JumpNeg      -compare-2706-true        
        Jump         -compare-2706-false       
        Label        -compare-2706-true        
        PushI        1                         
        Jump         -compare-2706-join        
        Label        -compare-2706-false       
        PushI        0                         
        Jump         -compare-2706-join        
        Label        -compare-2706-join        
        JumpTrue     -print-boolean-2707-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2707-join  
        Label        -print-boolean-2707-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2707-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2708-arg1        
        PushI        30                        
        Label        -compare-2708-arg2        
        PushI        125                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2708-sub         
        Subtract                               
        JumpNeg      -compare-2708-true        
        Jump         -compare-2708-false       
        Label        -compare-2708-true        
        PushI        1                         
        Jump         -compare-2708-join        
        Label        -compare-2708-false       
        PushI        0                         
        Jump         -compare-2708-join        
        Label        -compare-2708-join        
        JumpTrue     -print-boolean-2709-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2709-join  
        Label        -print-boolean-2709-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2709-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2710-arg1        
        PushI        4                         
        Label        -compare-2710-arg2        
        PushI        124                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2710-sub         
        Subtract                               
        JumpNeg      -compare-2710-true        
        Jump         -compare-2710-false       
        Label        -compare-2710-true        
        PushI        1                         
        Jump         -compare-2710-join        
        Label        -compare-2710-false       
        PushI        0                         
        Jump         -compare-2710-join        
        Label        -compare-2710-join        
        JumpTrue     -print-boolean-2711-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2711-join  
        Label        -print-boolean-2711-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2711-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2712-arg1        
        PushI        26                        
        Label        -compare-2712-arg2        
        PushI        70                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2712-sub         
        Subtract                               
        JumpNeg      -compare-2712-true        
        Jump         -compare-2712-false       
        Label        -compare-2712-true        
        PushI        1                         
        Jump         -compare-2712-join        
        Label        -compare-2712-false       
        PushI        0                         
        Jump         -compare-2712-join        
        Label        -compare-2712-join        
        JumpTrue     -print-boolean-2713-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2713-join  
        Label        -print-boolean-2713-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2713-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2714-arg1        
        PushI        43                        
        Label        -compare-2714-arg2        
        PushI        95                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2714-sub         
        Subtract                               
        JumpNeg      -compare-2714-true        
        Jump         -compare-2714-false       
        Label        -compare-2714-true        
        PushI        1                         
        Jump         -compare-2714-join        
        Label        -compare-2714-false       
        PushI        0                         
        Jump         -compare-2714-join        
        Label        -compare-2714-join        
        JumpTrue     -print-boolean-2715-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2715-join  
        Label        -print-boolean-2715-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2715-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2716-arg1        
        PushI        37                        
        Label        -compare-2716-arg2        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2716-sub         
        Subtract                               
        JumpNeg      -compare-2716-true        
        Jump         -compare-2716-false       
        Label        -compare-2716-true        
        PushI        1                         
        Jump         -compare-2716-join        
        Label        -compare-2716-false       
        PushI        0                         
        Jump         -compare-2716-join        
        Label        -compare-2716-join        
        JumpTrue     -print-boolean-2717-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2717-join  
        Label        -print-boolean-2717-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2717-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2718-arg1        
        PushI        54                        
        Label        -compare-2718-arg2        
        PushI        108                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2718-sub         
        Subtract                               
        JumpNeg      -compare-2718-true        
        Jump         -compare-2718-false       
        Label        -compare-2718-true        
        PushI        1                         
        Jump         -compare-2718-join        
        Label        -compare-2718-false       
        PushI        0                         
        Jump         -compare-2718-join        
        Label        -compare-2718-join        
        JumpTrue     -print-boolean-2719-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2719-join  
        Label        -print-boolean-2719-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2719-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2720-arg1        
        PushI        87                        
        Label        -compare-2720-arg2        
        PushI        86                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2720-sub         
        Subtract                               
        JumpNeg      -compare-2720-true        
        Jump         -compare-2720-false       
        Label        -compare-2720-true        
        PushI        1                         
        Jump         -compare-2720-join        
        Label        -compare-2720-false       
        PushI        0                         
        Jump         -compare-2720-join        
        Label        -compare-2720-join        
        JumpTrue     -print-boolean-2721-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2721-join  
        Label        -print-boolean-2721-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2721-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2722-arg1        
        PushI        44                        
        Label        -compare-2722-arg2        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2722-sub         
        Subtract                               
        JumpNeg      -compare-2722-true        
        Jump         -compare-2722-false       
        Label        -compare-2722-true        
        PushI        1                         
        Jump         -compare-2722-join        
        Label        -compare-2722-false       
        PushI        0                         
        Jump         -compare-2722-join        
        Label        -compare-2722-join        
        JumpTrue     -print-boolean-2723-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2723-join  
        Label        -print-boolean-2723-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2723-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2724-arg1        
        PushI        35                        
        Label        -compare-2724-arg2        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2724-sub         
        Subtract                               
        JumpNeg      -compare-2724-true        
        Jump         -compare-2724-false       
        Label        -compare-2724-true        
        PushI        1                         
        Jump         -compare-2724-join        
        Label        -compare-2724-false       
        PushI        0                         
        Jump         -compare-2724-join        
        Label        -compare-2724-join        
        JumpTrue     -print-boolean-2725-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2725-join  
        Label        -print-boolean-2725-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2725-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2726-arg1        
        PushI        66                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2726-arg2        
        PushI        81                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2726-sub         
        Subtract                               
        JumpNeg      -compare-2726-true        
        Jump         -compare-2726-false       
        Label        -compare-2726-true        
        PushI        1                         
        Jump         -compare-2726-join        
        Label        -compare-2726-false       
        PushI        0                         
        Jump         -compare-2726-join        
        Label        -compare-2726-join        
        JumpTrue     -print-boolean-2727-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2727-join  
        Label        -print-boolean-2727-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2727-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2728-arg1        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2728-arg2        
        PushI        96                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2728-sub         
        Subtract                               
        JumpNeg      -compare-2728-true        
        Jump         -compare-2728-false       
        Label        -compare-2728-true        
        PushI        1                         
        Jump         -compare-2728-join        
        Label        -compare-2728-false       
        PushI        0                         
        Jump         -compare-2728-join        
        Label        -compare-2728-join        
        JumpTrue     -print-boolean-2729-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2729-join  
        Label        -print-boolean-2729-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2729-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2730-arg1        
        PushI        95                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2730-arg2        
        PushI        76                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2730-sub         
        Subtract                               
        JumpNeg      -compare-2730-true        
        Jump         -compare-2730-false       
        Label        -compare-2730-true        
        PushI        1                         
        Jump         -compare-2730-join        
        Label        -compare-2730-false       
        PushI        0                         
        Jump         -compare-2730-join        
        Label        -compare-2730-join        
        JumpTrue     -print-boolean-2731-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2731-join  
        Label        -print-boolean-2731-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2731-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2732-arg1        
        PushI        115                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2732-arg2        
        PushI        41                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2732-sub         
        Subtract                               
        JumpNeg      -compare-2732-true        
        Jump         -compare-2732-false       
        Label        -compare-2732-true        
        PushI        1                         
        Jump         -compare-2732-join        
        Label        -compare-2732-false       
        PushI        0                         
        Jump         -compare-2732-join        
        Label        -compare-2732-join        
        JumpTrue     -print-boolean-2733-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2733-join  
        Label        -print-boolean-2733-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2733-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2734-arg1        
        PushI        57                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2734-arg2        
        PushI        116                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2734-sub         
        Subtract                               
        JumpNeg      -compare-2734-true        
        Jump         -compare-2734-false       
        Label        -compare-2734-true        
        PushI        1                         
        Jump         -compare-2734-join        
        Label        -compare-2734-false       
        PushI        0                         
        Jump         -compare-2734-join        
        Label        -compare-2734-join        
        JumpTrue     -print-boolean-2735-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2735-join  
        Label        -print-boolean-2735-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2735-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2736-arg1        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2736-arg2        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2736-sub         
        Subtract                               
        JumpNeg      -compare-2736-true        
        Jump         -compare-2736-false       
        Label        -compare-2736-true        
        PushI        1                         
        Jump         -compare-2736-join        
        Label        -compare-2736-false       
        PushI        0                         
        Jump         -compare-2736-join        
        Label        -compare-2736-join        
        JumpTrue     -print-boolean-2737-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2737-join  
        Label        -print-boolean-2737-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2737-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2738-arg1        
        PushI        83                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2738-arg2        
        PushI        103                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2738-sub         
        Subtract                               
        JumpNeg      -compare-2738-true        
        Jump         -compare-2738-false       
        Label        -compare-2738-true        
        PushI        1                         
        Jump         -compare-2738-join        
        Label        -compare-2738-false       
        PushI        0                         
        Jump         -compare-2738-join        
        Label        -compare-2738-join        
        JumpTrue     -print-boolean-2739-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2739-join  
        Label        -print-boolean-2739-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2739-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2740-arg1        
        PushI        52                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2740-arg2        
        PushI        116                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2740-sub         
        Subtract                               
        JumpNeg      -compare-2740-true        
        Jump         -compare-2740-false       
        Label        -compare-2740-true        
        PushI        1                         
        Jump         -compare-2740-join        
        Label        -compare-2740-false       
        PushI        0                         
        Jump         -compare-2740-join        
        Label        -compare-2740-join        
        JumpTrue     -print-boolean-2741-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2741-join  
        Label        -print-boolean-2741-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2741-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2742-arg1        
        PushI        54                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2742-arg2        
        PushI        79                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2742-sub         
        Subtract                               
        JumpNeg      -compare-2742-true        
        Jump         -compare-2742-false       
        Label        -compare-2742-true        
        PushI        1                         
        Jump         -compare-2742-join        
        Label        -compare-2742-false       
        PushI        0                         
        Jump         -compare-2742-join        
        Label        -compare-2742-join        
        JumpTrue     -print-boolean-2743-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2743-join  
        Label        -print-boolean-2743-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2743-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2744-arg1        
        PushI        75                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2744-arg2        
        PushI        104                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2744-sub         
        Subtract                               
        JumpNeg      -compare-2744-true        
        Jump         -compare-2744-false       
        Label        -compare-2744-true        
        PushI        1                         
        Jump         -compare-2744-join        
        Label        -compare-2744-false       
        PushI        0                         
        Jump         -compare-2744-join        
        Label        -compare-2744-join        
        JumpTrue     -print-boolean-2745-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2745-join  
        Label        -print-boolean-2745-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2745-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2746-arg1        
        PushI        32                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2746-arg2        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2746-sub         
        Subtract                               
        JumpNeg      -compare-2746-true        
        Jump         -compare-2746-false       
        Label        -compare-2746-true        
        PushI        1                         
        Jump         -compare-2746-join        
        Label        -compare-2746-false       
        PushI        0                         
        Jump         -compare-2746-join        
        Label        -compare-2746-join        
        JumpTrue     -print-boolean-2747-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2747-join  
        Label        -print-boolean-2747-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2747-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2748-arg1        
        PushI        89                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2748-arg2        
        PushI        57                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2748-sub         
        Subtract                               
        JumpNeg      -compare-2748-true        
        Jump         -compare-2748-false       
        Label        -compare-2748-true        
        PushI        1                         
        Jump         -compare-2748-join        
        Label        -compare-2748-false       
        PushI        0                         
        Jump         -compare-2748-join        
        Label        -compare-2748-join        
        JumpTrue     -print-boolean-2749-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2749-join  
        Label        -print-boolean-2749-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2749-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
