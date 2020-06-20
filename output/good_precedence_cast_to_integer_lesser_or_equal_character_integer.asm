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
        Label        -compare-2809-arg1        
        PushI        115                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2809-arg2        
        PushI        72                        
        Label        -compare-2809-sub         
        Subtract                               
        JumpPos      -compare-2809-false       
        Jump         -compare-2809-true        
        Label        -compare-2809-true        
        PushI        1                         
        Jump         -compare-2809-join        
        Label        -compare-2809-false       
        PushI        0                         
        Jump         -compare-2809-join        
        Label        -compare-2809-join        
        JumpTrue     -print-boolean-2810-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2810-join  
        Label        -print-boolean-2810-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2810-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2811-arg1        
        PushI        79                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2811-arg2        
        PushI        88                        
        Label        -compare-2811-sub         
        Subtract                               
        JumpPos      -compare-2811-false       
        Jump         -compare-2811-true        
        Label        -compare-2811-true        
        PushI        1                         
        Jump         -compare-2811-join        
        Label        -compare-2811-false       
        PushI        0                         
        Jump         -compare-2811-join        
        Label        -compare-2811-join        
        JumpTrue     -print-boolean-2812-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2812-join  
        Label        -print-boolean-2812-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2812-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2813-arg1        
        PushI        102                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2813-arg2        
        PushI        67                        
        Label        -compare-2813-sub         
        Subtract                               
        JumpPos      -compare-2813-false       
        Jump         -compare-2813-true        
        Label        -compare-2813-true        
        PushI        1                         
        Jump         -compare-2813-join        
        Label        -compare-2813-false       
        PushI        0                         
        Jump         -compare-2813-join        
        Label        -compare-2813-join        
        JumpTrue     -print-boolean-2814-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2814-join  
        Label        -print-boolean-2814-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2814-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2815-arg1        
        PushI        118                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2815-arg2        
        PushI        32                        
        Label        -compare-2815-sub         
        Subtract                               
        JumpPos      -compare-2815-false       
        Jump         -compare-2815-true        
        Label        -compare-2815-true        
        PushI        1                         
        Jump         -compare-2815-join        
        Label        -compare-2815-false       
        PushI        0                         
        Jump         -compare-2815-join        
        Label        -compare-2815-join        
        JumpTrue     -print-boolean-2816-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2816-join  
        Label        -print-boolean-2816-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2816-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2817-arg1        
        PushI        122                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2817-arg2        
        PushI        95                        
        Label        -compare-2817-sub         
        Subtract                               
        JumpPos      -compare-2817-false       
        Jump         -compare-2817-true        
        Label        -compare-2817-true        
        PushI        1                         
        Jump         -compare-2817-join        
        Label        -compare-2817-false       
        PushI        0                         
        Jump         -compare-2817-join        
        Label        -compare-2817-join        
        JumpTrue     -print-boolean-2818-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2818-join  
        Label        -print-boolean-2818-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2818-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2819-arg1        
        PushI        99                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2819-arg2        
        PushI        1                         
        Label        -compare-2819-sub         
        Subtract                               
        JumpPos      -compare-2819-false       
        Jump         -compare-2819-true        
        Label        -compare-2819-true        
        PushI        1                         
        Jump         -compare-2819-join        
        Label        -compare-2819-false       
        PushI        0                         
        Jump         -compare-2819-join        
        Label        -compare-2819-join        
        JumpTrue     -print-boolean-2820-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2820-join  
        Label        -print-boolean-2820-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2820-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2821-arg1        
        PushI        86                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2821-arg2        
        PushI        49                        
        Label        -compare-2821-sub         
        Subtract                               
        JumpPos      -compare-2821-false       
        Jump         -compare-2821-true        
        Label        -compare-2821-true        
        PushI        1                         
        Jump         -compare-2821-join        
        Label        -compare-2821-false       
        PushI        0                         
        Jump         -compare-2821-join        
        Label        -compare-2821-join        
        JumpTrue     -print-boolean-2822-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2822-join  
        Label        -print-boolean-2822-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2822-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2823-arg1        
        PushI        94                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2823-arg2        
        PushI        18                        
        Label        -compare-2823-sub         
        Subtract                               
        JumpPos      -compare-2823-false       
        Jump         -compare-2823-true        
        Label        -compare-2823-true        
        PushI        1                         
        Jump         -compare-2823-join        
        Label        -compare-2823-false       
        PushI        0                         
        Jump         -compare-2823-join        
        Label        -compare-2823-join        
        JumpTrue     -print-boolean-2824-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2824-join  
        Label        -print-boolean-2824-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2824-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2825-arg1        
        PushI        50                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2825-arg2        
        PushI        20                        
        Label        -compare-2825-sub         
        Subtract                               
        JumpPos      -compare-2825-false       
        Jump         -compare-2825-true        
        Label        -compare-2825-true        
        PushI        1                         
        Jump         -compare-2825-join        
        Label        -compare-2825-false       
        PushI        0                         
        Jump         -compare-2825-join        
        Label        -compare-2825-join        
        JumpTrue     -print-boolean-2826-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2826-join  
        Label        -print-boolean-2826-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2826-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2827-arg1        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2827-arg2        
        PushI        32                        
        Label        -compare-2827-sub         
        Subtract                               
        JumpPos      -compare-2827-false       
        Jump         -compare-2827-true        
        Label        -compare-2827-true        
        PushI        1                         
        Jump         -compare-2827-join        
        Label        -compare-2827-false       
        PushI        0                         
        Jump         -compare-2827-join        
        Label        -compare-2827-join        
        JumpTrue     -print-boolean-2828-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2828-join  
        Label        -print-boolean-2828-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2828-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2829-arg1        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2829-arg2        
        PushI        72                        
        Label        -compare-2829-sub         
        Subtract                               
        JumpPos      -compare-2829-false       
        Jump         -compare-2829-true        
        Label        -compare-2829-true        
        PushI        1                         
        Jump         -compare-2829-join        
        Label        -compare-2829-false       
        PushI        0                         
        Jump         -compare-2829-join        
        Label        -compare-2829-join        
        JumpTrue     -print-boolean-2830-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2830-join  
        Label        -print-boolean-2830-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2830-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2831-arg1        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2831-arg2        
        PushI        88                        
        Label        -compare-2831-sub         
        Subtract                               
        JumpPos      -compare-2831-false       
        Jump         -compare-2831-true        
        Label        -compare-2831-true        
        PushI        1                         
        Jump         -compare-2831-join        
        Label        -compare-2831-false       
        PushI        0                         
        Jump         -compare-2831-join        
        Label        -compare-2831-join        
        JumpTrue     -print-boolean-2832-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2832-join  
        Label        -print-boolean-2832-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2832-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2833-arg1        
        PushI        24                        
        Label        -compare-2833-arg2        
        PushI        99                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2833-sub         
        Subtract                               
        JumpPos      -compare-2833-false       
        Jump         -compare-2833-true        
        Label        -compare-2833-true        
        PushI        1                         
        Jump         -compare-2833-join        
        Label        -compare-2833-false       
        PushI        0                         
        Jump         -compare-2833-join        
        Label        -compare-2833-join        
        JumpTrue     -print-boolean-2834-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2834-join  
        Label        -print-boolean-2834-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2834-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2835-arg1        
        PushI        43                        
        Label        -compare-2835-arg2        
        PushI        53                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2835-sub         
        Subtract                               
        JumpPos      -compare-2835-false       
        Jump         -compare-2835-true        
        Label        -compare-2835-true        
        PushI        1                         
        Jump         -compare-2835-join        
        Label        -compare-2835-false       
        PushI        0                         
        Jump         -compare-2835-join        
        Label        -compare-2835-join        
        JumpTrue     -print-boolean-2836-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2836-join  
        Label        -print-boolean-2836-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2836-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2837-arg1        
        PushI        42                        
        Label        -compare-2837-arg2        
        PushI        106                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2837-sub         
        Subtract                               
        JumpPos      -compare-2837-false       
        Jump         -compare-2837-true        
        Label        -compare-2837-true        
        PushI        1                         
        Jump         -compare-2837-join        
        Label        -compare-2837-false       
        PushI        0                         
        Jump         -compare-2837-join        
        Label        -compare-2837-join        
        JumpTrue     -print-boolean-2838-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2838-join  
        Label        -print-boolean-2838-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2838-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2839-arg1        
        PushI        20                        
        Label        -compare-2839-arg2        
        PushI        104                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2839-sub         
        Subtract                               
        JumpPos      -compare-2839-false       
        Jump         -compare-2839-true        
        Label        -compare-2839-true        
        PushI        1                         
        Jump         -compare-2839-join        
        Label        -compare-2839-false       
        PushI        0                         
        Jump         -compare-2839-join        
        Label        -compare-2839-join        
        JumpTrue     -print-boolean-2840-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2840-join  
        Label        -print-boolean-2840-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2840-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2841-arg1        
        PushI        46                        
        Label        -compare-2841-arg2        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2841-sub         
        Subtract                               
        JumpPos      -compare-2841-false       
        Jump         -compare-2841-true        
        Label        -compare-2841-true        
        PushI        1                         
        Jump         -compare-2841-join        
        Label        -compare-2841-false       
        PushI        0                         
        Jump         -compare-2841-join        
        Label        -compare-2841-join        
        JumpTrue     -print-boolean-2842-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2842-join  
        Label        -print-boolean-2842-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2842-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2843-arg1        
        PushI        64                        
        Label        -compare-2843-arg2        
        PushI        70                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2843-sub         
        Subtract                               
        JumpPos      -compare-2843-false       
        Jump         -compare-2843-true        
        Label        -compare-2843-true        
        PushI        1                         
        Jump         -compare-2843-join        
        Label        -compare-2843-false       
        PushI        0                         
        Jump         -compare-2843-join        
        Label        -compare-2843-join        
        JumpTrue     -print-boolean-2844-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2844-join  
        Label        -print-boolean-2844-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2844-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2845-arg1        
        PushI        17                        
        Label        -compare-2845-arg2        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2845-sub         
        Subtract                               
        JumpPos      -compare-2845-false       
        Jump         -compare-2845-true        
        Label        -compare-2845-true        
        PushI        1                         
        Jump         -compare-2845-join        
        Label        -compare-2845-false       
        PushI        0                         
        Jump         -compare-2845-join        
        Label        -compare-2845-join        
        JumpTrue     -print-boolean-2846-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2846-join  
        Label        -print-boolean-2846-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2846-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2847-arg1        
        PushI        32                        
        Label        -compare-2847-arg2        
        PushI        46                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2847-sub         
        Subtract                               
        JumpPos      -compare-2847-false       
        Jump         -compare-2847-true        
        Label        -compare-2847-true        
        PushI        1                         
        Jump         -compare-2847-join        
        Label        -compare-2847-false       
        PushI        0                         
        Jump         -compare-2847-join        
        Label        -compare-2847-join        
        JumpTrue     -print-boolean-2848-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2848-join  
        Label        -print-boolean-2848-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2848-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2849-arg1        
        PushI        80                        
        Label        -compare-2849-arg2        
        PushI        99                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2849-sub         
        Subtract                               
        JumpPos      -compare-2849-false       
        Jump         -compare-2849-true        
        Label        -compare-2849-true        
        PushI        1                         
        Jump         -compare-2849-join        
        Label        -compare-2849-false       
        PushI        0                         
        Jump         -compare-2849-join        
        Label        -compare-2849-join        
        JumpTrue     -print-boolean-2850-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2850-join  
        Label        -print-boolean-2850-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2850-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2851-arg1        
        PushI        70                        
        Label        -compare-2851-arg2        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2851-sub         
        Subtract                               
        JumpPos      -compare-2851-false       
        Jump         -compare-2851-true        
        Label        -compare-2851-true        
        PushI        1                         
        Jump         -compare-2851-join        
        Label        -compare-2851-false       
        PushI        0                         
        Jump         -compare-2851-join        
        Label        -compare-2851-join        
        JumpTrue     -print-boolean-2852-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2852-join  
        Label        -print-boolean-2852-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2852-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2853-arg1        
        PushI        50                        
        Label        -compare-2853-arg2        
        PushI        35                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2853-sub         
        Subtract                               
        JumpPos      -compare-2853-false       
        Jump         -compare-2853-true        
        Label        -compare-2853-true        
        PushI        1                         
        Jump         -compare-2853-join        
        Label        -compare-2853-false       
        PushI        0                         
        Jump         -compare-2853-join        
        Label        -compare-2853-join        
        JumpTrue     -print-boolean-2854-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2854-join  
        Label        -print-boolean-2854-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2854-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2855-arg1        
        PushI        17                        
        Label        -compare-2855-arg2        
        PushI        117                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2855-sub         
        Subtract                               
        JumpPos      -compare-2855-false       
        Jump         -compare-2855-true        
        Label        -compare-2855-true        
        PushI        1                         
        Jump         -compare-2855-join        
        Label        -compare-2855-false       
        PushI        0                         
        Jump         -compare-2855-join        
        Label        -compare-2855-join        
        JumpTrue     -print-boolean-2856-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2856-join  
        Label        -print-boolean-2856-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2856-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2857-arg1        
        PushI        34                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2857-arg2        
        PushI        47                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2857-sub         
        Subtract                               
        JumpPos      -compare-2857-false       
        Jump         -compare-2857-true        
        Label        -compare-2857-true        
        PushI        1                         
        Jump         -compare-2857-join        
        Label        -compare-2857-false       
        PushI        0                         
        Jump         -compare-2857-join        
        Label        -compare-2857-join        
        JumpTrue     -print-boolean-2858-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2858-join  
        Label        -print-boolean-2858-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2858-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2859-arg1        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2859-arg2        
        PushI        117                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2859-sub         
        Subtract                               
        JumpPos      -compare-2859-false       
        Jump         -compare-2859-true        
        Label        -compare-2859-true        
        PushI        1                         
        Jump         -compare-2859-join        
        Label        -compare-2859-false       
        PushI        0                         
        Jump         -compare-2859-join        
        Label        -compare-2859-join        
        JumpTrue     -print-boolean-2860-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2860-join  
        Label        -print-boolean-2860-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2860-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2861-arg1        
        PushI        104                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2861-arg2        
        PushI        122                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2861-sub         
        Subtract                               
        JumpPos      -compare-2861-false       
        Jump         -compare-2861-true        
        Label        -compare-2861-true        
        PushI        1                         
        Jump         -compare-2861-join        
        Label        -compare-2861-false       
        PushI        0                         
        Jump         -compare-2861-join        
        Label        -compare-2861-join        
        JumpTrue     -print-boolean-2862-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2862-join  
        Label        -print-boolean-2862-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2862-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2863-arg1        
        PushI        73                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2863-arg2        
        PushI        125                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2863-sub         
        Subtract                               
        JumpPos      -compare-2863-false       
        Jump         -compare-2863-true        
        Label        -compare-2863-true        
        PushI        1                         
        Jump         -compare-2863-join        
        Label        -compare-2863-false       
        PushI        0                         
        Jump         -compare-2863-join        
        Label        -compare-2863-join        
        JumpTrue     -print-boolean-2864-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2864-join  
        Label        -print-boolean-2864-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2864-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2865-arg1        
        PushI        80                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2865-arg2        
        PushI        121                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2865-sub         
        Subtract                               
        JumpPos      -compare-2865-false       
        Jump         -compare-2865-true        
        Label        -compare-2865-true        
        PushI        1                         
        Jump         -compare-2865-join        
        Label        -compare-2865-false       
        PushI        0                         
        Jump         -compare-2865-join        
        Label        -compare-2865-join        
        JumpTrue     -print-boolean-2866-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2866-join  
        Label        -print-boolean-2866-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2866-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2867-arg1        
        PushI        80                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2867-arg2        
        PushI        52                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2867-sub         
        Subtract                               
        JumpPos      -compare-2867-false       
        Jump         -compare-2867-true        
        Label        -compare-2867-true        
        PushI        1                         
        Jump         -compare-2867-join        
        Label        -compare-2867-false       
        PushI        0                         
        Jump         -compare-2867-join        
        Label        -compare-2867-join        
        JumpTrue     -print-boolean-2868-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2868-join  
        Label        -print-boolean-2868-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2868-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2869-arg1        
        PushI        110                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2869-arg2        
        PushI        79                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2869-sub         
        Subtract                               
        JumpPos      -compare-2869-false       
        Jump         -compare-2869-true        
        Label        -compare-2869-true        
        PushI        1                         
        Jump         -compare-2869-join        
        Label        -compare-2869-false       
        PushI        0                         
        Jump         -compare-2869-join        
        Label        -compare-2869-join        
        JumpTrue     -print-boolean-2870-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2870-join  
        Label        -print-boolean-2870-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2870-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2871-arg1        
        PushI        116                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2871-arg2        
        PushI        122                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2871-sub         
        Subtract                               
        JumpPos      -compare-2871-false       
        Jump         -compare-2871-true        
        Label        -compare-2871-true        
        PushI        1                         
        Jump         -compare-2871-join        
        Label        -compare-2871-false       
        PushI        0                         
        Jump         -compare-2871-join        
        Label        -compare-2871-join        
        JumpTrue     -print-boolean-2872-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2872-join  
        Label        -print-boolean-2872-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2872-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2873-arg1        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2873-arg2        
        PushI        93                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2873-sub         
        Subtract                               
        JumpPos      -compare-2873-false       
        Jump         -compare-2873-true        
        Label        -compare-2873-true        
        PushI        1                         
        Jump         -compare-2873-join        
        Label        -compare-2873-false       
        PushI        0                         
        Jump         -compare-2873-join        
        Label        -compare-2873-join        
        JumpTrue     -print-boolean-2874-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2874-join  
        Label        -print-boolean-2874-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2874-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2875-arg1        
        PushI        103                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2875-arg2        
        PushI        79                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2875-sub         
        Subtract                               
        JumpPos      -compare-2875-false       
        Jump         -compare-2875-true        
        Label        -compare-2875-true        
        PushI        1                         
        Jump         -compare-2875-join        
        Label        -compare-2875-false       
        PushI        0                         
        Jump         -compare-2875-join        
        Label        -compare-2875-join        
        JumpTrue     -print-boolean-2876-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2876-join  
        Label        -print-boolean-2876-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2876-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2877-arg1        
        PushI        116                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2877-arg2        
        PushI        66                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2877-sub         
        Subtract                               
        JumpPos      -compare-2877-false       
        Jump         -compare-2877-true        
        Label        -compare-2877-true        
        PushI        1                         
        Jump         -compare-2877-join        
        Label        -compare-2877-false       
        PushI        0                         
        Jump         -compare-2877-join        
        Label        -compare-2877-join        
        JumpTrue     -print-boolean-2878-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2878-join  
        Label        -print-boolean-2878-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2878-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2879-arg1        
        PushI        67                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2879-arg2        
        PushI        118                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2879-sub         
        Subtract                               
        JumpPos      -compare-2879-false       
        Jump         -compare-2879-true        
        Label        -compare-2879-true        
        PushI        1                         
        Jump         -compare-2879-join        
        Label        -compare-2879-false       
        PushI        0                         
        Jump         -compare-2879-join        
        Label        -compare-2879-join        
        JumpTrue     -print-boolean-2880-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2880-join  
        Label        -print-boolean-2880-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2880-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
