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
        Label        -compare-2665-arg1        
        PushI        109                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2665-arg2        
        PushI        10                        
        Label        -compare-2665-sub         
        Subtract                               
        JumpNeg      -compare-2665-true        
        Jump         -compare-2665-false       
        Label        -compare-2665-true        
        PushI        1                         
        Jump         -compare-2665-join        
        Label        -compare-2665-false       
        PushI        0                         
        Jump         -compare-2665-join        
        Label        -compare-2665-join        
        JumpTrue     -print-boolean-2666-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2666-join  
        Label        -print-boolean-2666-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2666-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2667-arg1        
        PushI        48                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2667-arg2        
        PushI        5                         
        Label        -compare-2667-sub         
        Subtract                               
        JumpNeg      -compare-2667-true        
        Jump         -compare-2667-false       
        Label        -compare-2667-true        
        PushI        1                         
        Jump         -compare-2667-join        
        Label        -compare-2667-false       
        PushI        0                         
        Jump         -compare-2667-join        
        Label        -compare-2667-join        
        JumpTrue     -print-boolean-2668-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2668-join  
        Label        -print-boolean-2668-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2668-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2669-arg1        
        PushI        48                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2669-arg2        
        PushI        73                        
        Label        -compare-2669-sub         
        Subtract                               
        JumpNeg      -compare-2669-true        
        Jump         -compare-2669-false       
        Label        -compare-2669-true        
        PushI        1                         
        Jump         -compare-2669-join        
        Label        -compare-2669-false       
        PushI        0                         
        Jump         -compare-2669-join        
        Label        -compare-2669-join        
        JumpTrue     -print-boolean-2670-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2670-join  
        Label        -print-boolean-2670-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2670-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2671-arg1        
        PushI        109                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2671-arg2        
        PushI        2                         
        Label        -compare-2671-sub         
        Subtract                               
        JumpNeg      -compare-2671-true        
        Jump         -compare-2671-false       
        Label        -compare-2671-true        
        PushI        1                         
        Jump         -compare-2671-join        
        Label        -compare-2671-false       
        PushI        0                         
        Jump         -compare-2671-join        
        Label        -compare-2671-join        
        JumpTrue     -print-boolean-2672-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2672-join  
        Label        -print-boolean-2672-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2672-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2673-arg1        
        PushI        32                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2673-arg2        
        PushI        10                        
        Label        -compare-2673-sub         
        Subtract                               
        JumpNeg      -compare-2673-true        
        Jump         -compare-2673-false       
        Label        -compare-2673-true        
        PushI        1                         
        Jump         -compare-2673-join        
        Label        -compare-2673-false       
        PushI        0                         
        Jump         -compare-2673-join        
        Label        -compare-2673-join        
        JumpTrue     -print-boolean-2674-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2674-join  
        Label        -print-boolean-2674-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2674-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2675-arg1        
        PushI        80                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2675-arg2        
        PushI        46                        
        Label        -compare-2675-sub         
        Subtract                               
        JumpNeg      -compare-2675-true        
        Jump         -compare-2675-false       
        Label        -compare-2675-true        
        PushI        1                         
        Jump         -compare-2675-join        
        Label        -compare-2675-false       
        PushI        0                         
        Jump         -compare-2675-join        
        Label        -compare-2675-join        
        JumpTrue     -print-boolean-2676-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2676-join  
        Label        -print-boolean-2676-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2676-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2677-arg1        
        PushI        103                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2677-arg2        
        PushI        73                        
        Label        -compare-2677-sub         
        Subtract                               
        JumpNeg      -compare-2677-true        
        Jump         -compare-2677-false       
        Label        -compare-2677-true        
        PushI        1                         
        Jump         -compare-2677-join        
        Label        -compare-2677-false       
        PushI        0                         
        Jump         -compare-2677-join        
        Label        -compare-2677-join        
        JumpTrue     -print-boolean-2678-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2678-join  
        Label        -print-boolean-2678-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2678-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2679-arg1        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2679-arg2        
        PushI        11                        
        Label        -compare-2679-sub         
        Subtract                               
        JumpNeg      -compare-2679-true        
        Jump         -compare-2679-false       
        Label        -compare-2679-true        
        PushI        1                         
        Jump         -compare-2679-join        
        Label        -compare-2679-false       
        PushI        0                         
        Jump         -compare-2679-join        
        Label        -compare-2679-join        
        JumpTrue     -print-boolean-2680-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2680-join  
        Label        -print-boolean-2680-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2680-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2681-arg1        
        PushI        47                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2681-arg2        
        PushI        87                        
        Label        -compare-2681-sub         
        Subtract                               
        JumpNeg      -compare-2681-true        
        Jump         -compare-2681-false       
        Label        -compare-2681-true        
        PushI        1                         
        Jump         -compare-2681-join        
        Label        -compare-2681-false       
        PushI        0                         
        Jump         -compare-2681-join        
        Label        -compare-2681-join        
        JumpTrue     -print-boolean-2682-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2682-join  
        Label        -print-boolean-2682-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2682-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2683-arg1        
        PushI        43                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2683-arg2        
        PushI        7                         
        Label        -compare-2683-sub         
        Subtract                               
        JumpNeg      -compare-2683-true        
        Jump         -compare-2683-false       
        Label        -compare-2683-true        
        PushI        1                         
        Jump         -compare-2683-join        
        Label        -compare-2683-false       
        PushI        0                         
        Jump         -compare-2683-join        
        Label        -compare-2683-join        
        JumpTrue     -print-boolean-2684-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2684-join  
        Label        -print-boolean-2684-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2684-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2685-arg1        
        PushI        55                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2685-arg2        
        PushI        44                        
        Label        -compare-2685-sub         
        Subtract                               
        JumpNeg      -compare-2685-true        
        Jump         -compare-2685-false       
        Label        -compare-2685-true        
        PushI        1                         
        Jump         -compare-2685-join        
        Label        -compare-2685-false       
        PushI        0                         
        Jump         -compare-2685-join        
        Label        -compare-2685-join        
        JumpTrue     -print-boolean-2686-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2686-join  
        Label        -print-boolean-2686-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2686-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2687-arg1        
        PushI        82                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2687-arg2        
        PushI        88                        
        Label        -compare-2687-sub         
        Subtract                               
        JumpNeg      -compare-2687-true        
        Jump         -compare-2687-false       
        Label        -compare-2687-true        
        PushI        1                         
        Jump         -compare-2687-join        
        Label        -compare-2687-false       
        PushI        0                         
        Jump         -compare-2687-join        
        Label        -compare-2687-join        
        JumpTrue     -print-boolean-2688-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2688-join  
        Label        -print-boolean-2688-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2688-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2689-arg1        
        PushI        90                        
        Label        -compare-2689-arg2        
        PushI        82                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2689-sub         
        Subtract                               
        JumpNeg      -compare-2689-true        
        Jump         -compare-2689-false       
        Label        -compare-2689-true        
        PushI        1                         
        Jump         -compare-2689-join        
        Label        -compare-2689-false       
        PushI        0                         
        Jump         -compare-2689-join        
        Label        -compare-2689-join        
        JumpTrue     -print-boolean-2690-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2690-join  
        Label        -print-boolean-2690-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2690-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2691-arg1        
        PushI        36                        
        Label        -compare-2691-arg2        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2691-sub         
        Subtract                               
        JumpNeg      -compare-2691-true        
        Jump         -compare-2691-false       
        Label        -compare-2691-true        
        PushI        1                         
        Jump         -compare-2691-join        
        Label        -compare-2691-false       
        PushI        0                         
        Jump         -compare-2691-join        
        Label        -compare-2691-join        
        JumpTrue     -print-boolean-2692-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2692-join  
        Label        -print-boolean-2692-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2692-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2693-arg1        
        PushI        65                        
        Label        -compare-2693-arg2        
        PushI        70                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2693-sub         
        Subtract                               
        JumpNeg      -compare-2693-true        
        Jump         -compare-2693-false       
        Label        -compare-2693-true        
        PushI        1                         
        Jump         -compare-2693-join        
        Label        -compare-2693-false       
        PushI        0                         
        Jump         -compare-2693-join        
        Label        -compare-2693-join        
        JumpTrue     -print-boolean-2694-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2694-join  
        Label        -print-boolean-2694-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2694-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2695-arg1        
        PushI        30                        
        Label        -compare-2695-arg2        
        PushI        125                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2695-sub         
        Subtract                               
        JumpNeg      -compare-2695-true        
        Jump         -compare-2695-false       
        Label        -compare-2695-true        
        PushI        1                         
        Jump         -compare-2695-join        
        Label        -compare-2695-false       
        PushI        0                         
        Jump         -compare-2695-join        
        Label        -compare-2695-join        
        JumpTrue     -print-boolean-2696-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2696-join  
        Label        -print-boolean-2696-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2696-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2697-arg1        
        PushI        4                         
        Label        -compare-2697-arg2        
        PushI        124                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2697-sub         
        Subtract                               
        JumpNeg      -compare-2697-true        
        Jump         -compare-2697-false       
        Label        -compare-2697-true        
        PushI        1                         
        Jump         -compare-2697-join        
        Label        -compare-2697-false       
        PushI        0                         
        Jump         -compare-2697-join        
        Label        -compare-2697-join        
        JumpTrue     -print-boolean-2698-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2698-join  
        Label        -print-boolean-2698-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2698-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2699-arg1        
        PushI        26                        
        Label        -compare-2699-arg2        
        PushI        70                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2699-sub         
        Subtract                               
        JumpNeg      -compare-2699-true        
        Jump         -compare-2699-false       
        Label        -compare-2699-true        
        PushI        1                         
        Jump         -compare-2699-join        
        Label        -compare-2699-false       
        PushI        0                         
        Jump         -compare-2699-join        
        Label        -compare-2699-join        
        JumpTrue     -print-boolean-2700-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2700-join  
        Label        -print-boolean-2700-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2700-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2701-arg1        
        PushI        43                        
        Label        -compare-2701-arg2        
        PushI        95                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2701-sub         
        Subtract                               
        JumpNeg      -compare-2701-true        
        Jump         -compare-2701-false       
        Label        -compare-2701-true        
        PushI        1                         
        Jump         -compare-2701-join        
        Label        -compare-2701-false       
        PushI        0                         
        Jump         -compare-2701-join        
        Label        -compare-2701-join        
        JumpTrue     -print-boolean-2702-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2702-join  
        Label        -print-boolean-2702-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2702-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2703-arg1        
        PushI        37                        
        Label        -compare-2703-arg2        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2703-sub         
        Subtract                               
        JumpNeg      -compare-2703-true        
        Jump         -compare-2703-false       
        Label        -compare-2703-true        
        PushI        1                         
        Jump         -compare-2703-join        
        Label        -compare-2703-false       
        PushI        0                         
        Jump         -compare-2703-join        
        Label        -compare-2703-join        
        JumpTrue     -print-boolean-2704-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2704-join  
        Label        -print-boolean-2704-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2704-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2705-arg1        
        PushI        54                        
        Label        -compare-2705-arg2        
        PushI        108                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2705-sub         
        Subtract                               
        JumpNeg      -compare-2705-true        
        Jump         -compare-2705-false       
        Label        -compare-2705-true        
        PushI        1                         
        Jump         -compare-2705-join        
        Label        -compare-2705-false       
        PushI        0                         
        Jump         -compare-2705-join        
        Label        -compare-2705-join        
        JumpTrue     -print-boolean-2706-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2706-join  
        Label        -print-boolean-2706-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2706-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2707-arg1        
        PushI        87                        
        Label        -compare-2707-arg2        
        PushI        86                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2707-sub         
        Subtract                               
        JumpNeg      -compare-2707-true        
        Jump         -compare-2707-false       
        Label        -compare-2707-true        
        PushI        1                         
        Jump         -compare-2707-join        
        Label        -compare-2707-false       
        PushI        0                         
        Jump         -compare-2707-join        
        Label        -compare-2707-join        
        JumpTrue     -print-boolean-2708-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2708-join  
        Label        -print-boolean-2708-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2708-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2709-arg1        
        PushI        44                        
        Label        -compare-2709-arg2        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2709-sub         
        Subtract                               
        JumpNeg      -compare-2709-true        
        Jump         -compare-2709-false       
        Label        -compare-2709-true        
        PushI        1                         
        Jump         -compare-2709-join        
        Label        -compare-2709-false       
        PushI        0                         
        Jump         -compare-2709-join        
        Label        -compare-2709-join        
        JumpTrue     -print-boolean-2710-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2710-join  
        Label        -print-boolean-2710-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2710-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2711-arg1        
        PushI        35                        
        Label        -compare-2711-arg2        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2711-sub         
        Subtract                               
        JumpNeg      -compare-2711-true        
        Jump         -compare-2711-false       
        Label        -compare-2711-true        
        PushI        1                         
        Jump         -compare-2711-join        
        Label        -compare-2711-false       
        PushI        0                         
        Jump         -compare-2711-join        
        Label        -compare-2711-join        
        JumpTrue     -print-boolean-2712-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2712-join  
        Label        -print-boolean-2712-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2712-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2713-arg1        
        PushI        66                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2713-arg2        
        PushI        81                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2713-sub         
        Subtract                               
        JumpNeg      -compare-2713-true        
        Jump         -compare-2713-false       
        Label        -compare-2713-true        
        PushI        1                         
        Jump         -compare-2713-join        
        Label        -compare-2713-false       
        PushI        0                         
        Jump         -compare-2713-join        
        Label        -compare-2713-join        
        JumpTrue     -print-boolean-2714-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2714-join  
        Label        -print-boolean-2714-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2714-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2715-arg1        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2715-arg2        
        PushI        96                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2715-sub         
        Subtract                               
        JumpNeg      -compare-2715-true        
        Jump         -compare-2715-false       
        Label        -compare-2715-true        
        PushI        1                         
        Jump         -compare-2715-join        
        Label        -compare-2715-false       
        PushI        0                         
        Jump         -compare-2715-join        
        Label        -compare-2715-join        
        JumpTrue     -print-boolean-2716-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2716-join  
        Label        -print-boolean-2716-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2716-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2717-arg1        
        PushI        95                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2717-arg2        
        PushI        76                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2717-sub         
        Subtract                               
        JumpNeg      -compare-2717-true        
        Jump         -compare-2717-false       
        Label        -compare-2717-true        
        PushI        1                         
        Jump         -compare-2717-join        
        Label        -compare-2717-false       
        PushI        0                         
        Jump         -compare-2717-join        
        Label        -compare-2717-join        
        JumpTrue     -print-boolean-2718-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2718-join  
        Label        -print-boolean-2718-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2718-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2719-arg1        
        PushI        115                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2719-arg2        
        PushI        41                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2719-sub         
        Subtract                               
        JumpNeg      -compare-2719-true        
        Jump         -compare-2719-false       
        Label        -compare-2719-true        
        PushI        1                         
        Jump         -compare-2719-join        
        Label        -compare-2719-false       
        PushI        0                         
        Jump         -compare-2719-join        
        Label        -compare-2719-join        
        JumpTrue     -print-boolean-2720-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2720-join  
        Label        -print-boolean-2720-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2720-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2721-arg1        
        PushI        57                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2721-arg2        
        PushI        116                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2721-sub         
        Subtract                               
        JumpNeg      -compare-2721-true        
        Jump         -compare-2721-false       
        Label        -compare-2721-true        
        PushI        1                         
        Jump         -compare-2721-join        
        Label        -compare-2721-false       
        PushI        0                         
        Jump         -compare-2721-join        
        Label        -compare-2721-join        
        JumpTrue     -print-boolean-2722-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2722-join  
        Label        -print-boolean-2722-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2722-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2723-arg1        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2723-arg2        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2723-sub         
        Subtract                               
        JumpNeg      -compare-2723-true        
        Jump         -compare-2723-false       
        Label        -compare-2723-true        
        PushI        1                         
        Jump         -compare-2723-join        
        Label        -compare-2723-false       
        PushI        0                         
        Jump         -compare-2723-join        
        Label        -compare-2723-join        
        JumpTrue     -print-boolean-2724-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2724-join  
        Label        -print-boolean-2724-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2724-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2725-arg1        
        PushI        83                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2725-arg2        
        PushI        103                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2725-sub         
        Subtract                               
        JumpNeg      -compare-2725-true        
        Jump         -compare-2725-false       
        Label        -compare-2725-true        
        PushI        1                         
        Jump         -compare-2725-join        
        Label        -compare-2725-false       
        PushI        0                         
        Jump         -compare-2725-join        
        Label        -compare-2725-join        
        JumpTrue     -print-boolean-2726-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2726-join  
        Label        -print-boolean-2726-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2726-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2727-arg1        
        PushI        52                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2727-arg2        
        PushI        116                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2727-sub         
        Subtract                               
        JumpNeg      -compare-2727-true        
        Jump         -compare-2727-false       
        Label        -compare-2727-true        
        PushI        1                         
        Jump         -compare-2727-join        
        Label        -compare-2727-false       
        PushI        0                         
        Jump         -compare-2727-join        
        Label        -compare-2727-join        
        JumpTrue     -print-boolean-2728-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2728-join  
        Label        -print-boolean-2728-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2728-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2729-arg1        
        PushI        54                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2729-arg2        
        PushI        79                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2729-sub         
        Subtract                               
        JumpNeg      -compare-2729-true        
        Jump         -compare-2729-false       
        Label        -compare-2729-true        
        PushI        1                         
        Jump         -compare-2729-join        
        Label        -compare-2729-false       
        PushI        0                         
        Jump         -compare-2729-join        
        Label        -compare-2729-join        
        JumpTrue     -print-boolean-2730-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2730-join  
        Label        -print-boolean-2730-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2730-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2731-arg1        
        PushI        75                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2731-arg2        
        PushI        104                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2731-sub         
        Subtract                               
        JumpNeg      -compare-2731-true        
        Jump         -compare-2731-false       
        Label        -compare-2731-true        
        PushI        1                         
        Jump         -compare-2731-join        
        Label        -compare-2731-false       
        PushI        0                         
        Jump         -compare-2731-join        
        Label        -compare-2731-join        
        JumpTrue     -print-boolean-2732-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2732-join  
        Label        -print-boolean-2732-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2732-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2733-arg1        
        PushI        32                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2733-arg2        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2733-sub         
        Subtract                               
        JumpNeg      -compare-2733-true        
        Jump         -compare-2733-false       
        Label        -compare-2733-true        
        PushI        1                         
        Jump         -compare-2733-join        
        Label        -compare-2733-false       
        PushI        0                         
        Jump         -compare-2733-join        
        Label        -compare-2733-join        
        JumpTrue     -print-boolean-2734-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2734-join  
        Label        -print-boolean-2734-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2734-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2735-arg1        
        PushI        89                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2735-arg2        
        PushI        57                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2735-sub         
        Subtract                               
        JumpNeg      -compare-2735-true        
        Jump         -compare-2735-false       
        Label        -compare-2735-true        
        PushI        1                         
        Jump         -compare-2735-join        
        Label        -compare-2735-false       
        PushI        0                         
        Jump         -compare-2735-join        
        Label        -compare-2735-join        
        JumpTrue     -print-boolean-2736-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2736-join  
        Label        -print-boolean-2736-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2736-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
