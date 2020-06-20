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
        Label        -compare-2953-arg1        
        PushI        67                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2953-arg2        
        PushI        56                        
        Label        -compare-2953-sub         
        Subtract                               
        JumpFalse    -compare-2953-false       
        Jump         -compare-2953-true        
        Label        -compare-2953-true        
        PushI        1                         
        Jump         -compare-2953-join        
        Label        -compare-2953-false       
        PushI        0                         
        Jump         -compare-2953-join        
        Label        -compare-2953-join        
        JumpTrue     -print-boolean-2954-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2954-join  
        Label        -print-boolean-2954-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2954-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2955-arg1        
        PushI        66                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2955-arg2        
        PushI        25                        
        Label        -compare-2955-sub         
        Subtract                               
        JumpFalse    -compare-2955-false       
        Jump         -compare-2955-true        
        Label        -compare-2955-true        
        PushI        1                         
        Jump         -compare-2955-join        
        Label        -compare-2955-false       
        PushI        0                         
        Jump         -compare-2955-join        
        Label        -compare-2955-join        
        JumpTrue     -print-boolean-2956-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2956-join  
        Label        -print-boolean-2956-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2956-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2957-arg1        
        PushI        59                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2957-arg2        
        PushI        68                        
        Label        -compare-2957-sub         
        Subtract                               
        JumpFalse    -compare-2957-false       
        Jump         -compare-2957-true        
        Label        -compare-2957-true        
        PushI        1                         
        Jump         -compare-2957-join        
        Label        -compare-2957-false       
        PushI        0                         
        Jump         -compare-2957-join        
        Label        -compare-2957-join        
        JumpTrue     -print-boolean-2958-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2958-join  
        Label        -print-boolean-2958-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2958-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2959-arg1        
        PushI        108                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2959-arg2        
        PushI        18                        
        Label        -compare-2959-sub         
        Subtract                               
        JumpFalse    -compare-2959-false       
        Jump         -compare-2959-true        
        Label        -compare-2959-true        
        PushI        1                         
        Jump         -compare-2959-join        
        Label        -compare-2959-false       
        PushI        0                         
        Jump         -compare-2959-join        
        Label        -compare-2959-join        
        JumpTrue     -print-boolean-2960-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2960-join  
        Label        -print-boolean-2960-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2960-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2961-arg1        
        PushI        91                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2961-arg2        
        PushI        15                        
        Label        -compare-2961-sub         
        Subtract                               
        JumpFalse    -compare-2961-false       
        Jump         -compare-2961-true        
        Label        -compare-2961-true        
        PushI        1                         
        Jump         -compare-2961-join        
        Label        -compare-2961-false       
        PushI        0                         
        Jump         -compare-2961-join        
        Label        -compare-2961-join        
        JumpTrue     -print-boolean-2962-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2962-join  
        Label        -print-boolean-2962-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2962-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2963-arg1        
        PushI        80                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2963-arg2        
        PushI        80                        
        Label        -compare-2963-sub         
        Subtract                               
        JumpFalse    -compare-2963-false       
        Jump         -compare-2963-true        
        Label        -compare-2963-true        
        PushI        1                         
        Jump         -compare-2963-join        
        Label        -compare-2963-false       
        PushI        0                         
        Jump         -compare-2963-join        
        Label        -compare-2963-join        
        JumpTrue     -print-boolean-2964-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2964-join  
        Label        -print-boolean-2964-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2964-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2965-arg1        
        PushI        86                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2965-arg2        
        PushI        78                        
        Label        -compare-2965-sub         
        Subtract                               
        JumpFalse    -compare-2965-false       
        Jump         -compare-2965-true        
        Label        -compare-2965-true        
        PushI        1                         
        Jump         -compare-2965-join        
        Label        -compare-2965-false       
        PushI        0                         
        Jump         -compare-2965-join        
        Label        -compare-2965-join        
        JumpTrue     -print-boolean-2966-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2966-join  
        Label        -print-boolean-2966-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2966-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2967-arg1        
        PushI        95                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2967-arg2        
        PushI        28                        
        Label        -compare-2967-sub         
        Subtract                               
        JumpFalse    -compare-2967-false       
        Jump         -compare-2967-true        
        Label        -compare-2967-true        
        PushI        1                         
        Jump         -compare-2967-join        
        Label        -compare-2967-false       
        PushI        0                         
        Jump         -compare-2967-join        
        Label        -compare-2967-join        
        JumpTrue     -print-boolean-2968-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2968-join  
        Label        -print-boolean-2968-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2968-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2969-arg1        
        PushI        105                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2969-arg2        
        PushI        72                        
        Label        -compare-2969-sub         
        Subtract                               
        JumpFalse    -compare-2969-false       
        Jump         -compare-2969-true        
        Label        -compare-2969-true        
        PushI        1                         
        Jump         -compare-2969-join        
        Label        -compare-2969-false       
        PushI        0                         
        Jump         -compare-2969-join        
        Label        -compare-2969-join        
        JumpTrue     -print-boolean-2970-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2970-join  
        Label        -print-boolean-2970-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2970-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2971-arg1        
        PushI        102                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2971-arg2        
        PushI        73                        
        Label        -compare-2971-sub         
        Subtract                               
        JumpFalse    -compare-2971-false       
        Jump         -compare-2971-true        
        Label        -compare-2971-true        
        PushI        1                         
        Jump         -compare-2971-join        
        Label        -compare-2971-false       
        PushI        0                         
        Jump         -compare-2971-join        
        Label        -compare-2971-join        
        JumpTrue     -print-boolean-2972-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2972-join  
        Label        -print-boolean-2972-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2972-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2973-arg1        
        PushI        104                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2973-arg2        
        PushI        95                        
        Label        -compare-2973-sub         
        Subtract                               
        JumpFalse    -compare-2973-false       
        Jump         -compare-2973-true        
        Label        -compare-2973-true        
        PushI        1                         
        Jump         -compare-2973-join        
        Label        -compare-2973-false       
        PushI        0                         
        Jump         -compare-2973-join        
        Label        -compare-2973-join        
        JumpTrue     -print-boolean-2974-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2974-join  
        Label        -print-boolean-2974-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2974-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2975-arg1        
        PushI        33                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2975-arg2        
        PushI        31                        
        Label        -compare-2975-sub         
        Subtract                               
        JumpFalse    -compare-2975-false       
        Jump         -compare-2975-true        
        Label        -compare-2975-true        
        PushI        1                         
        Jump         -compare-2975-join        
        Label        -compare-2975-false       
        PushI        0                         
        Jump         -compare-2975-join        
        Label        -compare-2975-join        
        JumpTrue     -print-boolean-2976-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2976-join  
        Label        -print-boolean-2976-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2976-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2977-arg1        
        PushI        64                        
        Label        -compare-2977-arg2        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2977-sub         
        Subtract                               
        JumpFalse    -compare-2977-false       
        Jump         -compare-2977-true        
        Label        -compare-2977-true        
        PushI        1                         
        Jump         -compare-2977-join        
        Label        -compare-2977-false       
        PushI        0                         
        Jump         -compare-2977-join        
        Label        -compare-2977-join        
        JumpTrue     -print-boolean-2978-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2978-join  
        Label        -print-boolean-2978-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2978-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2979-arg1        
        PushI        11                        
        Label        -compare-2979-arg2        
        PushI        71                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2979-sub         
        Subtract                               
        JumpFalse    -compare-2979-false       
        Jump         -compare-2979-true        
        Label        -compare-2979-true        
        PushI        1                         
        Jump         -compare-2979-join        
        Label        -compare-2979-false       
        PushI        0                         
        Jump         -compare-2979-join        
        Label        -compare-2979-join        
        JumpTrue     -print-boolean-2980-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2980-join  
        Label        -print-boolean-2980-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2980-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2981-arg1        
        PushI        19                        
        Label        -compare-2981-arg2        
        PushI        113                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2981-sub         
        Subtract                               
        JumpFalse    -compare-2981-false       
        Jump         -compare-2981-true        
        Label        -compare-2981-true        
        PushI        1                         
        Jump         -compare-2981-join        
        Label        -compare-2981-false       
        PushI        0                         
        Jump         -compare-2981-join        
        Label        -compare-2981-join        
        JumpTrue     -print-boolean-2982-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2982-join  
        Label        -print-boolean-2982-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2982-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2983-arg1        
        PushI        10                        
        Label        -compare-2983-arg2        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2983-sub         
        Subtract                               
        JumpFalse    -compare-2983-false       
        Jump         -compare-2983-true        
        Label        -compare-2983-true        
        PushI        1                         
        Jump         -compare-2983-join        
        Label        -compare-2983-false       
        PushI        0                         
        Jump         -compare-2983-join        
        Label        -compare-2983-join        
        JumpTrue     -print-boolean-2984-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2984-join  
        Label        -print-boolean-2984-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2984-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2985-arg1        
        PushI        35                        
        Label        -compare-2985-arg2        
        PushI        53                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2985-sub         
        Subtract                               
        JumpFalse    -compare-2985-false       
        Jump         -compare-2985-true        
        Label        -compare-2985-true        
        PushI        1                         
        Jump         -compare-2985-join        
        Label        -compare-2985-false       
        PushI        0                         
        Jump         -compare-2985-join        
        Label        -compare-2985-join        
        JumpTrue     -print-boolean-2986-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2986-join  
        Label        -print-boolean-2986-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2986-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2987-arg1        
        PushI        2                         
        Label        -compare-2987-arg2        
        PushI        82                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2987-sub         
        Subtract                               
        JumpFalse    -compare-2987-false       
        Jump         -compare-2987-true        
        Label        -compare-2987-true        
        PushI        1                         
        Jump         -compare-2987-join        
        Label        -compare-2987-false       
        PushI        0                         
        Jump         -compare-2987-join        
        Label        -compare-2987-join        
        JumpTrue     -print-boolean-2988-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2988-join  
        Label        -print-boolean-2988-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2988-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2989-arg1        
        PushI        82                        
        Label        -compare-2989-arg2        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2989-sub         
        Subtract                               
        JumpFalse    -compare-2989-false       
        Jump         -compare-2989-true        
        Label        -compare-2989-true        
        PushI        1                         
        Jump         -compare-2989-join        
        Label        -compare-2989-false       
        PushI        0                         
        Jump         -compare-2989-join        
        Label        -compare-2989-join        
        JumpTrue     -print-boolean-2990-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2990-join  
        Label        -print-boolean-2990-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2990-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2991-arg1        
        PushI        20                        
        Label        -compare-2991-arg2        
        PushI        56                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2991-sub         
        Subtract                               
        JumpFalse    -compare-2991-false       
        Jump         -compare-2991-true        
        Label        -compare-2991-true        
        PushI        1                         
        Jump         -compare-2991-join        
        Label        -compare-2991-false       
        PushI        0                         
        Jump         -compare-2991-join        
        Label        -compare-2991-join        
        JumpTrue     -print-boolean-2992-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2992-join  
        Label        -print-boolean-2992-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2992-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2993-arg1        
        PushI        71                        
        Label        -compare-2993-arg2        
        PushI        34                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2993-sub         
        Subtract                               
        JumpFalse    -compare-2993-false       
        Jump         -compare-2993-true        
        Label        -compare-2993-true        
        PushI        1                         
        Jump         -compare-2993-join        
        Label        -compare-2993-false       
        PushI        0                         
        Jump         -compare-2993-join        
        Label        -compare-2993-join        
        JumpTrue     -print-boolean-2994-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2994-join  
        Label        -print-boolean-2994-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2994-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2995-arg1        
        PushI        79                        
        Label        -compare-2995-arg2        
        PushI        123                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2995-sub         
        Subtract                               
        JumpFalse    -compare-2995-false       
        Jump         -compare-2995-true        
        Label        -compare-2995-true        
        PushI        1                         
        Jump         -compare-2995-join        
        Label        -compare-2995-false       
        PushI        0                         
        Jump         -compare-2995-join        
        Label        -compare-2995-join        
        JumpTrue     -print-boolean-2996-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2996-join  
        Label        -print-boolean-2996-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2996-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2997-arg1        
        PushI        49                        
        Label        -compare-2997-arg2        
        PushI        40                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2997-sub         
        Subtract                               
        JumpFalse    -compare-2997-false       
        Jump         -compare-2997-true        
        Label        -compare-2997-true        
        PushI        1                         
        Jump         -compare-2997-join        
        Label        -compare-2997-false       
        PushI        0                         
        Jump         -compare-2997-join        
        Label        -compare-2997-join        
        JumpTrue     -print-boolean-2998-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2998-join  
        Label        -print-boolean-2998-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2998-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2999-arg1        
        PushI        25                        
        Label        -compare-2999-arg2        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2999-sub         
        Subtract                               
        JumpFalse    -compare-2999-false       
        Jump         -compare-2999-true        
        Label        -compare-2999-true        
        PushI        1                         
        Jump         -compare-2999-join        
        Label        -compare-2999-false       
        PushI        0                         
        Jump         -compare-2999-join        
        Label        -compare-2999-join        
        JumpTrue     -print-boolean-3000-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3000-join  
        Label        -print-boolean-3000-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3000-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3001-arg1        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3001-arg2        
        PushI        123                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-3001-sub         
        Subtract                               
        JumpFalse    -compare-3001-false       
        Jump         -compare-3001-true        
        Label        -compare-3001-true        
        PushI        1                         
        Jump         -compare-3001-join        
        Label        -compare-3001-false       
        PushI        0                         
        Jump         -compare-3001-join        
        Label        -compare-3001-join        
        JumpTrue     -print-boolean-3002-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3002-join  
        Label        -print-boolean-3002-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3002-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3003-arg1        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3003-arg2        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3003-sub         
        Subtract                               
        JumpFalse    -compare-3003-false       
        Jump         -compare-3003-true        
        Label        -compare-3003-true        
        PushI        1                         
        Jump         -compare-3003-join        
        Label        -compare-3003-false       
        PushI        0                         
        Jump         -compare-3003-join        
        Label        -compare-3003-join        
        JumpTrue     -print-boolean-3004-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3004-join  
        Label        -print-boolean-3004-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3004-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3005-arg1        
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3005-arg2        
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3005-sub         
        Subtract                               
        JumpFalse    -compare-3005-false       
        Jump         -compare-3005-true        
        Label        -compare-3005-true        
        PushI        1                         
        Jump         -compare-3005-join        
        Label        -compare-3005-false       
        PushI        0                         
        Jump         -compare-3005-join        
        Label        -compare-3005-join        
        JumpTrue     -print-boolean-3006-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3006-join  
        Label        -print-boolean-3006-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3006-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3007-arg1        
        PushI        34                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3007-arg2        
        PushI        83                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3007-sub         
        Subtract                               
        JumpFalse    -compare-3007-false       
        Jump         -compare-3007-true        
        Label        -compare-3007-true        
        PushI        1                         
        Jump         -compare-3007-join        
        Label        -compare-3007-false       
        PushI        0                         
        Jump         -compare-3007-join        
        Label        -compare-3007-join        
        JumpTrue     -print-boolean-3008-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3008-join  
        Label        -print-boolean-3008-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3008-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3009-arg1        
        PushI        46                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3009-arg2        
        PushI        106                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-3009-sub         
        Subtract                               
        JumpFalse    -compare-3009-false       
        Jump         -compare-3009-true        
        Label        -compare-3009-true        
        PushI        1                         
        Jump         -compare-3009-join        
        Label        -compare-3009-false       
        PushI        0                         
        Jump         -compare-3009-join        
        Label        -compare-3009-join        
        JumpTrue     -print-boolean-3010-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3010-join  
        Label        -print-boolean-3010-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3010-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3011-arg1        
        PushI        75                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3011-arg2        
        PushI        65                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3011-sub         
        Subtract                               
        JumpFalse    -compare-3011-false       
        Jump         -compare-3011-true        
        Label        -compare-3011-true        
        PushI        1                         
        Jump         -compare-3011-join        
        Label        -compare-3011-false       
        PushI        0                         
        Jump         -compare-3011-join        
        Label        -compare-3011-join        
        JumpTrue     -print-boolean-3012-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3012-join  
        Label        -print-boolean-3012-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3012-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3013-arg1        
        PushI        115                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-3013-arg2        
        PushI        56                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3013-sub         
        Subtract                               
        JumpFalse    -compare-3013-false       
        Jump         -compare-3013-true        
        Label        -compare-3013-true        
        PushI        1                         
        Jump         -compare-3013-join        
        Label        -compare-3013-false       
        PushI        0                         
        Jump         -compare-3013-join        
        Label        -compare-3013-join        
        JumpTrue     -print-boolean-3014-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3014-join  
        Label        -print-boolean-3014-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3014-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3015-arg1        
        PushI        49                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3015-arg2        
        PushI        96                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3015-sub         
        Subtract                               
        JumpFalse    -compare-3015-false       
        Jump         -compare-3015-true        
        Label        -compare-3015-true        
        PushI        1                         
        Jump         -compare-3015-join        
        Label        -compare-3015-false       
        PushI        0                         
        Jump         -compare-3015-join        
        Label        -compare-3015-join        
        JumpTrue     -print-boolean-3016-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3016-join  
        Label        -print-boolean-3016-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3016-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3017-arg1        
        PushI        114                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-3017-arg2        
        PushI        113                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-3017-sub         
        Subtract                               
        JumpFalse    -compare-3017-false       
        Jump         -compare-3017-true        
        Label        -compare-3017-true        
        PushI        1                         
        Jump         -compare-3017-join        
        Label        -compare-3017-false       
        PushI        0                         
        Jump         -compare-3017-join        
        Label        -compare-3017-join        
        JumpTrue     -print-boolean-3018-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3018-join  
        Label        -print-boolean-3018-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3018-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3019-arg1        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3019-arg2        
        PushI        81                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3019-sub         
        Subtract                               
        JumpFalse    -compare-3019-false       
        Jump         -compare-3019-true        
        Label        -compare-3019-true        
        PushI        1                         
        Jump         -compare-3019-join        
        Label        -compare-3019-false       
        PushI        0                         
        Jump         -compare-3019-join        
        Label        -compare-3019-join        
        JumpTrue     -print-boolean-3020-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3020-join  
        Label        -print-boolean-3020-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3020-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3021-arg1        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3021-arg2        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3021-sub         
        Subtract                               
        JumpFalse    -compare-3021-false       
        Jump         -compare-3021-true        
        Label        -compare-3021-true        
        PushI        1                         
        Jump         -compare-3021-join        
        Label        -compare-3021-false       
        PushI        0                         
        Jump         -compare-3021-join        
        Label        -compare-3021-join        
        JumpTrue     -print-boolean-3022-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3022-join  
        Label        -print-boolean-3022-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3022-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3023-arg1        
        PushI        54                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3023-arg2        
        PushI        66                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3023-sub         
        Subtract                               
        JumpFalse    -compare-3023-false       
        Jump         -compare-3023-true        
        Label        -compare-3023-true        
        PushI        1                         
        Jump         -compare-3023-join        
        Label        -compare-3023-false       
        PushI        0                         
        Jump         -compare-3023-join        
        Label        -compare-3023-join        
        JumpTrue     -print-boolean-3024-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3024-join  
        Label        -print-boolean-3024-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3024-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
