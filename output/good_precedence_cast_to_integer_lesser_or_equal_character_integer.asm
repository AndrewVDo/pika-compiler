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
        Label        -compare-2822-arg1        
        PushI        115                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2822-arg2        
        PushI        72                        
        Label        -compare-2822-sub         
        Subtract                               
        JumpPos      -compare-2822-false       
        Jump         -compare-2822-true        
        Label        -compare-2822-true        
        PushI        1                         
        Jump         -compare-2822-join        
        Label        -compare-2822-false       
        PushI        0                         
        Jump         -compare-2822-join        
        Label        -compare-2822-join        
        JumpTrue     -print-boolean-2823-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2823-join  
        Label        -print-boolean-2823-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2823-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2824-arg1        
        PushI        79                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2824-arg2        
        PushI        88                        
        Label        -compare-2824-sub         
        Subtract                               
        JumpPos      -compare-2824-false       
        Jump         -compare-2824-true        
        Label        -compare-2824-true        
        PushI        1                         
        Jump         -compare-2824-join        
        Label        -compare-2824-false       
        PushI        0                         
        Jump         -compare-2824-join        
        Label        -compare-2824-join        
        JumpTrue     -print-boolean-2825-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2825-join  
        Label        -print-boolean-2825-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2825-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2826-arg1        
        PushI        102                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2826-arg2        
        PushI        67                        
        Label        -compare-2826-sub         
        Subtract                               
        JumpPos      -compare-2826-false       
        Jump         -compare-2826-true        
        Label        -compare-2826-true        
        PushI        1                         
        Jump         -compare-2826-join        
        Label        -compare-2826-false       
        PushI        0                         
        Jump         -compare-2826-join        
        Label        -compare-2826-join        
        JumpTrue     -print-boolean-2827-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2827-join  
        Label        -print-boolean-2827-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2827-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2828-arg1        
        PushI        118                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2828-arg2        
        PushI        32                        
        Label        -compare-2828-sub         
        Subtract                               
        JumpPos      -compare-2828-false       
        Jump         -compare-2828-true        
        Label        -compare-2828-true        
        PushI        1                         
        Jump         -compare-2828-join        
        Label        -compare-2828-false       
        PushI        0                         
        Jump         -compare-2828-join        
        Label        -compare-2828-join        
        JumpTrue     -print-boolean-2829-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2829-join  
        Label        -print-boolean-2829-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2829-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2830-arg1        
        PushI        122                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2830-arg2        
        PushI        95                        
        Label        -compare-2830-sub         
        Subtract                               
        JumpPos      -compare-2830-false       
        Jump         -compare-2830-true        
        Label        -compare-2830-true        
        PushI        1                         
        Jump         -compare-2830-join        
        Label        -compare-2830-false       
        PushI        0                         
        Jump         -compare-2830-join        
        Label        -compare-2830-join        
        JumpTrue     -print-boolean-2831-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2831-join  
        Label        -print-boolean-2831-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2831-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2832-arg1        
        PushI        99                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2832-arg2        
        PushI        1                         
        Label        -compare-2832-sub         
        Subtract                               
        JumpPos      -compare-2832-false       
        Jump         -compare-2832-true        
        Label        -compare-2832-true        
        PushI        1                         
        Jump         -compare-2832-join        
        Label        -compare-2832-false       
        PushI        0                         
        Jump         -compare-2832-join        
        Label        -compare-2832-join        
        JumpTrue     -print-boolean-2833-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2833-join  
        Label        -print-boolean-2833-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2833-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2834-arg1        
        PushI        86                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2834-arg2        
        PushI        49                        
        Label        -compare-2834-sub         
        Subtract                               
        JumpPos      -compare-2834-false       
        Jump         -compare-2834-true        
        Label        -compare-2834-true        
        PushI        1                         
        Jump         -compare-2834-join        
        Label        -compare-2834-false       
        PushI        0                         
        Jump         -compare-2834-join        
        Label        -compare-2834-join        
        JumpTrue     -print-boolean-2835-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2835-join  
        Label        -print-boolean-2835-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2835-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2836-arg1        
        PushI        94                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2836-arg2        
        PushI        18                        
        Label        -compare-2836-sub         
        Subtract                               
        JumpPos      -compare-2836-false       
        Jump         -compare-2836-true        
        Label        -compare-2836-true        
        PushI        1                         
        Jump         -compare-2836-join        
        Label        -compare-2836-false       
        PushI        0                         
        Jump         -compare-2836-join        
        Label        -compare-2836-join        
        JumpTrue     -print-boolean-2837-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2837-join  
        Label        -print-boolean-2837-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2837-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2838-arg1        
        PushI        50                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2838-arg2        
        PushI        20                        
        Label        -compare-2838-sub         
        Subtract                               
        JumpPos      -compare-2838-false       
        Jump         -compare-2838-true        
        Label        -compare-2838-true        
        PushI        1                         
        Jump         -compare-2838-join        
        Label        -compare-2838-false       
        PushI        0                         
        Jump         -compare-2838-join        
        Label        -compare-2838-join        
        JumpTrue     -print-boolean-2839-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2839-join  
        Label        -print-boolean-2839-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2839-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2840-arg1        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2840-arg2        
        PushI        32                        
        Label        -compare-2840-sub         
        Subtract                               
        JumpPos      -compare-2840-false       
        Jump         -compare-2840-true        
        Label        -compare-2840-true        
        PushI        1                         
        Jump         -compare-2840-join        
        Label        -compare-2840-false       
        PushI        0                         
        Jump         -compare-2840-join        
        Label        -compare-2840-join        
        JumpTrue     -print-boolean-2841-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2841-join  
        Label        -print-boolean-2841-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2841-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2842-arg1        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2842-arg2        
        PushI        72                        
        Label        -compare-2842-sub         
        Subtract                               
        JumpPos      -compare-2842-false       
        Jump         -compare-2842-true        
        Label        -compare-2842-true        
        PushI        1                         
        Jump         -compare-2842-join        
        Label        -compare-2842-false       
        PushI        0                         
        Jump         -compare-2842-join        
        Label        -compare-2842-join        
        JumpTrue     -print-boolean-2843-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2843-join  
        Label        -print-boolean-2843-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2843-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2844-arg1        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2844-arg2        
        PushI        88                        
        Label        -compare-2844-sub         
        Subtract                               
        JumpPos      -compare-2844-false       
        Jump         -compare-2844-true        
        Label        -compare-2844-true        
        PushI        1                         
        Jump         -compare-2844-join        
        Label        -compare-2844-false       
        PushI        0                         
        Jump         -compare-2844-join        
        Label        -compare-2844-join        
        JumpTrue     -print-boolean-2845-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2845-join  
        Label        -print-boolean-2845-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2845-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2846-arg1        
        PushI        24                        
        Label        -compare-2846-arg2        
        PushI        99                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2846-sub         
        Subtract                               
        JumpPos      -compare-2846-false       
        Jump         -compare-2846-true        
        Label        -compare-2846-true        
        PushI        1                         
        Jump         -compare-2846-join        
        Label        -compare-2846-false       
        PushI        0                         
        Jump         -compare-2846-join        
        Label        -compare-2846-join        
        JumpTrue     -print-boolean-2847-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2847-join  
        Label        -print-boolean-2847-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2847-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2848-arg1        
        PushI        43                        
        Label        -compare-2848-arg2        
        PushI        53                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2848-sub         
        Subtract                               
        JumpPos      -compare-2848-false       
        Jump         -compare-2848-true        
        Label        -compare-2848-true        
        PushI        1                         
        Jump         -compare-2848-join        
        Label        -compare-2848-false       
        PushI        0                         
        Jump         -compare-2848-join        
        Label        -compare-2848-join        
        JumpTrue     -print-boolean-2849-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2849-join  
        Label        -print-boolean-2849-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2849-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2850-arg1        
        PushI        42                        
        Label        -compare-2850-arg2        
        PushI        106                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2850-sub         
        Subtract                               
        JumpPos      -compare-2850-false       
        Jump         -compare-2850-true        
        Label        -compare-2850-true        
        PushI        1                         
        Jump         -compare-2850-join        
        Label        -compare-2850-false       
        PushI        0                         
        Jump         -compare-2850-join        
        Label        -compare-2850-join        
        JumpTrue     -print-boolean-2851-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2851-join  
        Label        -print-boolean-2851-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2851-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2852-arg1        
        PushI        20                        
        Label        -compare-2852-arg2        
        PushI        104                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2852-sub         
        Subtract                               
        JumpPos      -compare-2852-false       
        Jump         -compare-2852-true        
        Label        -compare-2852-true        
        PushI        1                         
        Jump         -compare-2852-join        
        Label        -compare-2852-false       
        PushI        0                         
        Jump         -compare-2852-join        
        Label        -compare-2852-join        
        JumpTrue     -print-boolean-2853-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2853-join  
        Label        -print-boolean-2853-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2853-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2854-arg1        
        PushI        46                        
        Label        -compare-2854-arg2        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2854-sub         
        Subtract                               
        JumpPos      -compare-2854-false       
        Jump         -compare-2854-true        
        Label        -compare-2854-true        
        PushI        1                         
        Jump         -compare-2854-join        
        Label        -compare-2854-false       
        PushI        0                         
        Jump         -compare-2854-join        
        Label        -compare-2854-join        
        JumpTrue     -print-boolean-2855-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2855-join  
        Label        -print-boolean-2855-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2855-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2856-arg1        
        PushI        64                        
        Label        -compare-2856-arg2        
        PushI        70                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2856-sub         
        Subtract                               
        JumpPos      -compare-2856-false       
        Jump         -compare-2856-true        
        Label        -compare-2856-true        
        PushI        1                         
        Jump         -compare-2856-join        
        Label        -compare-2856-false       
        PushI        0                         
        Jump         -compare-2856-join        
        Label        -compare-2856-join        
        JumpTrue     -print-boolean-2857-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2857-join  
        Label        -print-boolean-2857-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2857-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2858-arg1        
        PushI        17                        
        Label        -compare-2858-arg2        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2858-sub         
        Subtract                               
        JumpPos      -compare-2858-false       
        Jump         -compare-2858-true        
        Label        -compare-2858-true        
        PushI        1                         
        Jump         -compare-2858-join        
        Label        -compare-2858-false       
        PushI        0                         
        Jump         -compare-2858-join        
        Label        -compare-2858-join        
        JumpTrue     -print-boolean-2859-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2859-join  
        Label        -print-boolean-2859-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2859-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2860-arg1        
        PushI        32                        
        Label        -compare-2860-arg2        
        PushI        46                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2860-sub         
        Subtract                               
        JumpPos      -compare-2860-false       
        Jump         -compare-2860-true        
        Label        -compare-2860-true        
        PushI        1                         
        Jump         -compare-2860-join        
        Label        -compare-2860-false       
        PushI        0                         
        Jump         -compare-2860-join        
        Label        -compare-2860-join        
        JumpTrue     -print-boolean-2861-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2861-join  
        Label        -print-boolean-2861-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2861-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2862-arg1        
        PushI        80                        
        Label        -compare-2862-arg2        
        PushI        99                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2862-sub         
        Subtract                               
        JumpPos      -compare-2862-false       
        Jump         -compare-2862-true        
        Label        -compare-2862-true        
        PushI        1                         
        Jump         -compare-2862-join        
        Label        -compare-2862-false       
        PushI        0                         
        Jump         -compare-2862-join        
        Label        -compare-2862-join        
        JumpTrue     -print-boolean-2863-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2863-join  
        Label        -print-boolean-2863-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2863-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2864-arg1        
        PushI        70                        
        Label        -compare-2864-arg2        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2864-sub         
        Subtract                               
        JumpPos      -compare-2864-false       
        Jump         -compare-2864-true        
        Label        -compare-2864-true        
        PushI        1                         
        Jump         -compare-2864-join        
        Label        -compare-2864-false       
        PushI        0                         
        Jump         -compare-2864-join        
        Label        -compare-2864-join        
        JumpTrue     -print-boolean-2865-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2865-join  
        Label        -print-boolean-2865-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2865-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2866-arg1        
        PushI        50                        
        Label        -compare-2866-arg2        
        PushI        35                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2866-sub         
        Subtract                               
        JumpPos      -compare-2866-false       
        Jump         -compare-2866-true        
        Label        -compare-2866-true        
        PushI        1                         
        Jump         -compare-2866-join        
        Label        -compare-2866-false       
        PushI        0                         
        Jump         -compare-2866-join        
        Label        -compare-2866-join        
        JumpTrue     -print-boolean-2867-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2867-join  
        Label        -print-boolean-2867-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2867-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2868-arg1        
        PushI        17                        
        Label        -compare-2868-arg2        
        PushI        117                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2868-sub         
        Subtract                               
        JumpPos      -compare-2868-false       
        Jump         -compare-2868-true        
        Label        -compare-2868-true        
        PushI        1                         
        Jump         -compare-2868-join        
        Label        -compare-2868-false       
        PushI        0                         
        Jump         -compare-2868-join        
        Label        -compare-2868-join        
        JumpTrue     -print-boolean-2869-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2869-join  
        Label        -print-boolean-2869-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2869-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2870-arg1        
        PushI        34                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2870-arg2        
        PushI        47                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2870-sub         
        Subtract                               
        JumpPos      -compare-2870-false       
        Jump         -compare-2870-true        
        Label        -compare-2870-true        
        PushI        1                         
        Jump         -compare-2870-join        
        Label        -compare-2870-false       
        PushI        0                         
        Jump         -compare-2870-join        
        Label        -compare-2870-join        
        JumpTrue     -print-boolean-2871-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2871-join  
        Label        -print-boolean-2871-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2871-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2872-arg1        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2872-arg2        
        PushI        117                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2872-sub         
        Subtract                               
        JumpPos      -compare-2872-false       
        Jump         -compare-2872-true        
        Label        -compare-2872-true        
        PushI        1                         
        Jump         -compare-2872-join        
        Label        -compare-2872-false       
        PushI        0                         
        Jump         -compare-2872-join        
        Label        -compare-2872-join        
        JumpTrue     -print-boolean-2873-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2873-join  
        Label        -print-boolean-2873-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2873-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2874-arg1        
        PushI        104                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2874-arg2        
        PushI        122                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2874-sub         
        Subtract                               
        JumpPos      -compare-2874-false       
        Jump         -compare-2874-true        
        Label        -compare-2874-true        
        PushI        1                         
        Jump         -compare-2874-join        
        Label        -compare-2874-false       
        PushI        0                         
        Jump         -compare-2874-join        
        Label        -compare-2874-join        
        JumpTrue     -print-boolean-2875-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2875-join  
        Label        -print-boolean-2875-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2875-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2876-arg1        
        PushI        73                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2876-arg2        
        PushI        125                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2876-sub         
        Subtract                               
        JumpPos      -compare-2876-false       
        Jump         -compare-2876-true        
        Label        -compare-2876-true        
        PushI        1                         
        Jump         -compare-2876-join        
        Label        -compare-2876-false       
        PushI        0                         
        Jump         -compare-2876-join        
        Label        -compare-2876-join        
        JumpTrue     -print-boolean-2877-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2877-join  
        Label        -print-boolean-2877-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2877-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2878-arg1        
        PushI        80                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2878-arg2        
        PushI        121                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2878-sub         
        Subtract                               
        JumpPos      -compare-2878-false       
        Jump         -compare-2878-true        
        Label        -compare-2878-true        
        PushI        1                         
        Jump         -compare-2878-join        
        Label        -compare-2878-false       
        PushI        0                         
        Jump         -compare-2878-join        
        Label        -compare-2878-join        
        JumpTrue     -print-boolean-2879-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2879-join  
        Label        -print-boolean-2879-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2879-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2880-arg1        
        PushI        80                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2880-arg2        
        PushI        52                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2880-sub         
        Subtract                               
        JumpPos      -compare-2880-false       
        Jump         -compare-2880-true        
        Label        -compare-2880-true        
        PushI        1                         
        Jump         -compare-2880-join        
        Label        -compare-2880-false       
        PushI        0                         
        Jump         -compare-2880-join        
        Label        -compare-2880-join        
        JumpTrue     -print-boolean-2881-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2881-join  
        Label        -print-boolean-2881-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2881-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2882-arg1        
        PushI        110                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2882-arg2        
        PushI        79                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2882-sub         
        Subtract                               
        JumpPos      -compare-2882-false       
        Jump         -compare-2882-true        
        Label        -compare-2882-true        
        PushI        1                         
        Jump         -compare-2882-join        
        Label        -compare-2882-false       
        PushI        0                         
        Jump         -compare-2882-join        
        Label        -compare-2882-join        
        JumpTrue     -print-boolean-2883-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2883-join  
        Label        -print-boolean-2883-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2883-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2884-arg1        
        PushI        116                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2884-arg2        
        PushI        122                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2884-sub         
        Subtract                               
        JumpPos      -compare-2884-false       
        Jump         -compare-2884-true        
        Label        -compare-2884-true        
        PushI        1                         
        Jump         -compare-2884-join        
        Label        -compare-2884-false       
        PushI        0                         
        Jump         -compare-2884-join        
        Label        -compare-2884-join        
        JumpTrue     -print-boolean-2885-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2885-join  
        Label        -print-boolean-2885-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2885-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2886-arg1        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2886-arg2        
        PushI        93                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2886-sub         
        Subtract                               
        JumpPos      -compare-2886-false       
        Jump         -compare-2886-true        
        Label        -compare-2886-true        
        PushI        1                         
        Jump         -compare-2886-join        
        Label        -compare-2886-false       
        PushI        0                         
        Jump         -compare-2886-join        
        Label        -compare-2886-join        
        JumpTrue     -print-boolean-2887-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2887-join  
        Label        -print-boolean-2887-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2887-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2888-arg1        
        PushI        103                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2888-arg2        
        PushI        79                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2888-sub         
        Subtract                               
        JumpPos      -compare-2888-false       
        Jump         -compare-2888-true        
        Label        -compare-2888-true        
        PushI        1                         
        Jump         -compare-2888-join        
        Label        -compare-2888-false       
        PushI        0                         
        Jump         -compare-2888-join        
        Label        -compare-2888-join        
        JumpTrue     -print-boolean-2889-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2889-join  
        Label        -print-boolean-2889-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2889-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2890-arg1        
        PushI        116                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2890-arg2        
        PushI        66                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2890-sub         
        Subtract                               
        JumpPos      -compare-2890-false       
        Jump         -compare-2890-true        
        Label        -compare-2890-true        
        PushI        1                         
        Jump         -compare-2890-join        
        Label        -compare-2890-false       
        PushI        0                         
        Jump         -compare-2890-join        
        Label        -compare-2890-join        
        JumpTrue     -print-boolean-2891-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2891-join  
        Label        -print-boolean-2891-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2891-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2892-arg1        
        PushI        67                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2892-arg2        
        PushI        118                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2892-sub         
        Subtract                               
        JumpPos      -compare-2892-false       
        Jump         -compare-2892-true        
        Label        -compare-2892-true        
        PushI        1                         
        Jump         -compare-2892-join        
        Label        -compare-2892-false       
        PushI        0                         
        Jump         -compare-2892-join        
        Label        -compare-2892-join        
        JumpTrue     -print-boolean-2893-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2893-join  
        Label        -print-boolean-2893-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2893-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
