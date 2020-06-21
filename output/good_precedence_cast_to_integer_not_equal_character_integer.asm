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
        Label        -compare-2966-arg1        
        PushI        67                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2966-arg2        
        PushI        56                        
        Label        -compare-2966-sub         
        Subtract                               
        JumpFalse    -compare-2966-false       
        Jump         -compare-2966-true        
        Label        -compare-2966-true        
        PushI        1                         
        Jump         -compare-2966-join        
        Label        -compare-2966-false       
        PushI        0                         
        Jump         -compare-2966-join        
        Label        -compare-2966-join        
        JumpTrue     -print-boolean-2967-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2967-join  
        Label        -print-boolean-2967-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2967-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2968-arg1        
        PushI        66                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2968-arg2        
        PushI        25                        
        Label        -compare-2968-sub         
        Subtract                               
        JumpFalse    -compare-2968-false       
        Jump         -compare-2968-true        
        Label        -compare-2968-true        
        PushI        1                         
        Jump         -compare-2968-join        
        Label        -compare-2968-false       
        PushI        0                         
        Jump         -compare-2968-join        
        Label        -compare-2968-join        
        JumpTrue     -print-boolean-2969-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2969-join  
        Label        -print-boolean-2969-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2969-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2970-arg1        
        PushI        59                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2970-arg2        
        PushI        68                        
        Label        -compare-2970-sub         
        Subtract                               
        JumpFalse    -compare-2970-false       
        Jump         -compare-2970-true        
        Label        -compare-2970-true        
        PushI        1                         
        Jump         -compare-2970-join        
        Label        -compare-2970-false       
        PushI        0                         
        Jump         -compare-2970-join        
        Label        -compare-2970-join        
        JumpTrue     -print-boolean-2971-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2971-join  
        Label        -print-boolean-2971-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2971-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2972-arg1        
        PushI        108                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2972-arg2        
        PushI        18                        
        Label        -compare-2972-sub         
        Subtract                               
        JumpFalse    -compare-2972-false       
        Jump         -compare-2972-true        
        Label        -compare-2972-true        
        PushI        1                         
        Jump         -compare-2972-join        
        Label        -compare-2972-false       
        PushI        0                         
        Jump         -compare-2972-join        
        Label        -compare-2972-join        
        JumpTrue     -print-boolean-2973-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2973-join  
        Label        -print-boolean-2973-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2973-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2974-arg1        
        PushI        91                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2974-arg2        
        PushI        15                        
        Label        -compare-2974-sub         
        Subtract                               
        JumpFalse    -compare-2974-false       
        Jump         -compare-2974-true        
        Label        -compare-2974-true        
        PushI        1                         
        Jump         -compare-2974-join        
        Label        -compare-2974-false       
        PushI        0                         
        Jump         -compare-2974-join        
        Label        -compare-2974-join        
        JumpTrue     -print-boolean-2975-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2975-join  
        Label        -print-boolean-2975-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2975-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2976-arg1        
        PushI        80                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2976-arg2        
        PushI        80                        
        Label        -compare-2976-sub         
        Subtract                               
        JumpFalse    -compare-2976-false       
        Jump         -compare-2976-true        
        Label        -compare-2976-true        
        PushI        1                         
        Jump         -compare-2976-join        
        Label        -compare-2976-false       
        PushI        0                         
        Jump         -compare-2976-join        
        Label        -compare-2976-join        
        JumpTrue     -print-boolean-2977-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2977-join  
        Label        -print-boolean-2977-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2977-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2978-arg1        
        PushI        86                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2978-arg2        
        PushI        78                        
        Label        -compare-2978-sub         
        Subtract                               
        JumpFalse    -compare-2978-false       
        Jump         -compare-2978-true        
        Label        -compare-2978-true        
        PushI        1                         
        Jump         -compare-2978-join        
        Label        -compare-2978-false       
        PushI        0                         
        Jump         -compare-2978-join        
        Label        -compare-2978-join        
        JumpTrue     -print-boolean-2979-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2979-join  
        Label        -print-boolean-2979-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2979-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2980-arg1        
        PushI        95                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2980-arg2        
        PushI        28                        
        Label        -compare-2980-sub         
        Subtract                               
        JumpFalse    -compare-2980-false       
        Jump         -compare-2980-true        
        Label        -compare-2980-true        
        PushI        1                         
        Jump         -compare-2980-join        
        Label        -compare-2980-false       
        PushI        0                         
        Jump         -compare-2980-join        
        Label        -compare-2980-join        
        JumpTrue     -print-boolean-2981-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2981-join  
        Label        -print-boolean-2981-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2981-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2982-arg1        
        PushI        105                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2982-arg2        
        PushI        72                        
        Label        -compare-2982-sub         
        Subtract                               
        JumpFalse    -compare-2982-false       
        Jump         -compare-2982-true        
        Label        -compare-2982-true        
        PushI        1                         
        Jump         -compare-2982-join        
        Label        -compare-2982-false       
        PushI        0                         
        Jump         -compare-2982-join        
        Label        -compare-2982-join        
        JumpTrue     -print-boolean-2983-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2983-join  
        Label        -print-boolean-2983-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2983-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2984-arg1        
        PushI        102                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2984-arg2        
        PushI        73                        
        Label        -compare-2984-sub         
        Subtract                               
        JumpFalse    -compare-2984-false       
        Jump         -compare-2984-true        
        Label        -compare-2984-true        
        PushI        1                         
        Jump         -compare-2984-join        
        Label        -compare-2984-false       
        PushI        0                         
        Jump         -compare-2984-join        
        Label        -compare-2984-join        
        JumpTrue     -print-boolean-2985-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2985-join  
        Label        -print-boolean-2985-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2985-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2986-arg1        
        PushI        104                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2986-arg2        
        PushI        95                        
        Label        -compare-2986-sub         
        Subtract                               
        JumpFalse    -compare-2986-false       
        Jump         -compare-2986-true        
        Label        -compare-2986-true        
        PushI        1                         
        Jump         -compare-2986-join        
        Label        -compare-2986-false       
        PushI        0                         
        Jump         -compare-2986-join        
        Label        -compare-2986-join        
        JumpTrue     -print-boolean-2987-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2987-join  
        Label        -print-boolean-2987-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2987-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2988-arg1        
        PushI        33                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2988-arg2        
        PushI        31                        
        Label        -compare-2988-sub         
        Subtract                               
        JumpFalse    -compare-2988-false       
        Jump         -compare-2988-true        
        Label        -compare-2988-true        
        PushI        1                         
        Jump         -compare-2988-join        
        Label        -compare-2988-false       
        PushI        0                         
        Jump         -compare-2988-join        
        Label        -compare-2988-join        
        JumpTrue     -print-boolean-2989-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2989-join  
        Label        -print-boolean-2989-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2989-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2990-arg1        
        PushI        64                        
        Label        -compare-2990-arg2        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2990-sub         
        Subtract                               
        JumpFalse    -compare-2990-false       
        Jump         -compare-2990-true        
        Label        -compare-2990-true        
        PushI        1                         
        Jump         -compare-2990-join        
        Label        -compare-2990-false       
        PushI        0                         
        Jump         -compare-2990-join        
        Label        -compare-2990-join        
        JumpTrue     -print-boolean-2991-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2991-join  
        Label        -print-boolean-2991-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2991-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2992-arg1        
        PushI        11                        
        Label        -compare-2992-arg2        
        PushI        71                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2992-sub         
        Subtract                               
        JumpFalse    -compare-2992-false       
        Jump         -compare-2992-true        
        Label        -compare-2992-true        
        PushI        1                         
        Jump         -compare-2992-join        
        Label        -compare-2992-false       
        PushI        0                         
        Jump         -compare-2992-join        
        Label        -compare-2992-join        
        JumpTrue     -print-boolean-2993-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2993-join  
        Label        -print-boolean-2993-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2993-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2994-arg1        
        PushI        19                        
        Label        -compare-2994-arg2        
        PushI        113                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2994-sub         
        Subtract                               
        JumpFalse    -compare-2994-false       
        Jump         -compare-2994-true        
        Label        -compare-2994-true        
        PushI        1                         
        Jump         -compare-2994-join        
        Label        -compare-2994-false       
        PushI        0                         
        Jump         -compare-2994-join        
        Label        -compare-2994-join        
        JumpTrue     -print-boolean-2995-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2995-join  
        Label        -print-boolean-2995-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2995-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2996-arg1        
        PushI        10                        
        Label        -compare-2996-arg2        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2996-sub         
        Subtract                               
        JumpFalse    -compare-2996-false       
        Jump         -compare-2996-true        
        Label        -compare-2996-true        
        PushI        1                         
        Jump         -compare-2996-join        
        Label        -compare-2996-false       
        PushI        0                         
        Jump         -compare-2996-join        
        Label        -compare-2996-join        
        JumpTrue     -print-boolean-2997-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2997-join  
        Label        -print-boolean-2997-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2997-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2998-arg1        
        PushI        35                        
        Label        -compare-2998-arg2        
        PushI        53                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2998-sub         
        Subtract                               
        JumpFalse    -compare-2998-false       
        Jump         -compare-2998-true        
        Label        -compare-2998-true        
        PushI        1                         
        Jump         -compare-2998-join        
        Label        -compare-2998-false       
        PushI        0                         
        Jump         -compare-2998-join        
        Label        -compare-2998-join        
        JumpTrue     -print-boolean-2999-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2999-join  
        Label        -print-boolean-2999-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2999-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3000-arg1        
        PushI        2                         
        Label        -compare-3000-arg2        
        PushI        82                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3000-sub         
        Subtract                               
        JumpFalse    -compare-3000-false       
        Jump         -compare-3000-true        
        Label        -compare-3000-true        
        PushI        1                         
        Jump         -compare-3000-join        
        Label        -compare-3000-false       
        PushI        0                         
        Jump         -compare-3000-join        
        Label        -compare-3000-join        
        JumpTrue     -print-boolean-3001-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3001-join  
        Label        -print-boolean-3001-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3001-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3002-arg1        
        PushI        82                        
        Label        -compare-3002-arg2        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-3002-sub         
        Subtract                               
        JumpFalse    -compare-3002-false       
        Jump         -compare-3002-true        
        Label        -compare-3002-true        
        PushI        1                         
        Jump         -compare-3002-join        
        Label        -compare-3002-false       
        PushI        0                         
        Jump         -compare-3002-join        
        Label        -compare-3002-join        
        JumpTrue     -print-boolean-3003-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3003-join  
        Label        -print-boolean-3003-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3003-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3004-arg1        
        PushI        20                        
        Label        -compare-3004-arg2        
        PushI        56                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3004-sub         
        Subtract                               
        JumpFalse    -compare-3004-false       
        Jump         -compare-3004-true        
        Label        -compare-3004-true        
        PushI        1                         
        Jump         -compare-3004-join        
        Label        -compare-3004-false       
        PushI        0                         
        Jump         -compare-3004-join        
        Label        -compare-3004-join        
        JumpTrue     -print-boolean-3005-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3005-join  
        Label        -print-boolean-3005-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3005-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3006-arg1        
        PushI        71                        
        Label        -compare-3006-arg2        
        PushI        34                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3006-sub         
        Subtract                               
        JumpFalse    -compare-3006-false       
        Jump         -compare-3006-true        
        Label        -compare-3006-true        
        PushI        1                         
        Jump         -compare-3006-join        
        Label        -compare-3006-false       
        PushI        0                         
        Jump         -compare-3006-join        
        Label        -compare-3006-join        
        JumpTrue     -print-boolean-3007-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3007-join  
        Label        -print-boolean-3007-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3007-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3008-arg1        
        PushI        79                        
        Label        -compare-3008-arg2        
        PushI        123                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-3008-sub         
        Subtract                               
        JumpFalse    -compare-3008-false       
        Jump         -compare-3008-true        
        Label        -compare-3008-true        
        PushI        1                         
        Jump         -compare-3008-join        
        Label        -compare-3008-false       
        PushI        0                         
        Jump         -compare-3008-join        
        Label        -compare-3008-join        
        JumpTrue     -print-boolean-3009-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3009-join  
        Label        -print-boolean-3009-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3009-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3010-arg1        
        PushI        49                        
        Label        -compare-3010-arg2        
        PushI        40                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3010-sub         
        Subtract                               
        JumpFalse    -compare-3010-false       
        Jump         -compare-3010-true        
        Label        -compare-3010-true        
        PushI        1                         
        Jump         -compare-3010-join        
        Label        -compare-3010-false       
        PushI        0                         
        Jump         -compare-3010-join        
        Label        -compare-3010-join        
        JumpTrue     -print-boolean-3011-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3011-join  
        Label        -print-boolean-3011-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3011-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3012-arg1        
        PushI        25                        
        Label        -compare-3012-arg2        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3012-sub         
        Subtract                               
        JumpFalse    -compare-3012-false       
        Jump         -compare-3012-true        
        Label        -compare-3012-true        
        PushI        1                         
        Jump         -compare-3012-join        
        Label        -compare-3012-false       
        PushI        0                         
        Jump         -compare-3012-join        
        Label        -compare-3012-join        
        JumpTrue     -print-boolean-3013-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3013-join  
        Label        -print-boolean-3013-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3013-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3014-arg1        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3014-arg2        
        PushI        123                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-3014-sub         
        Subtract                               
        JumpFalse    -compare-3014-false       
        Jump         -compare-3014-true        
        Label        -compare-3014-true        
        PushI        1                         
        Jump         -compare-3014-join        
        Label        -compare-3014-false       
        PushI        0                         
        Jump         -compare-3014-join        
        Label        -compare-3014-join        
        JumpTrue     -print-boolean-3015-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3015-join  
        Label        -print-boolean-3015-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3015-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3016-arg1        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3016-arg2        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3016-sub         
        Subtract                               
        JumpFalse    -compare-3016-false       
        Jump         -compare-3016-true        
        Label        -compare-3016-true        
        PushI        1                         
        Jump         -compare-3016-join        
        Label        -compare-3016-false       
        PushI        0                         
        Jump         -compare-3016-join        
        Label        -compare-3016-join        
        JumpTrue     -print-boolean-3017-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3017-join  
        Label        -print-boolean-3017-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3017-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3018-arg1        
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3018-arg2        
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3018-sub         
        Subtract                               
        JumpFalse    -compare-3018-false       
        Jump         -compare-3018-true        
        Label        -compare-3018-true        
        PushI        1                         
        Jump         -compare-3018-join        
        Label        -compare-3018-false       
        PushI        0                         
        Jump         -compare-3018-join        
        Label        -compare-3018-join        
        JumpTrue     -print-boolean-3019-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3019-join  
        Label        -print-boolean-3019-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3019-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3020-arg1        
        PushI        34                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3020-arg2        
        PushI        83                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3020-sub         
        Subtract                               
        JumpFalse    -compare-3020-false       
        Jump         -compare-3020-true        
        Label        -compare-3020-true        
        PushI        1                         
        Jump         -compare-3020-join        
        Label        -compare-3020-false       
        PushI        0                         
        Jump         -compare-3020-join        
        Label        -compare-3020-join        
        JumpTrue     -print-boolean-3021-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3021-join  
        Label        -print-boolean-3021-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3021-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3022-arg1        
        PushI        46                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3022-arg2        
        PushI        106                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-3022-sub         
        Subtract                               
        JumpFalse    -compare-3022-false       
        Jump         -compare-3022-true        
        Label        -compare-3022-true        
        PushI        1                         
        Jump         -compare-3022-join        
        Label        -compare-3022-false       
        PushI        0                         
        Jump         -compare-3022-join        
        Label        -compare-3022-join        
        JumpTrue     -print-boolean-3023-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3023-join  
        Label        -print-boolean-3023-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3023-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3024-arg1        
        PushI        75                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3024-arg2        
        PushI        65                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3024-sub         
        Subtract                               
        JumpFalse    -compare-3024-false       
        Jump         -compare-3024-true        
        Label        -compare-3024-true        
        PushI        1                         
        Jump         -compare-3024-join        
        Label        -compare-3024-false       
        PushI        0                         
        Jump         -compare-3024-join        
        Label        -compare-3024-join        
        JumpTrue     -print-boolean-3025-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3025-join  
        Label        -print-boolean-3025-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3025-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3026-arg1        
        PushI        115                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-3026-arg2        
        PushI        56                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3026-sub         
        Subtract                               
        JumpFalse    -compare-3026-false       
        Jump         -compare-3026-true        
        Label        -compare-3026-true        
        PushI        1                         
        Jump         -compare-3026-join        
        Label        -compare-3026-false       
        PushI        0                         
        Jump         -compare-3026-join        
        Label        -compare-3026-join        
        JumpTrue     -print-boolean-3027-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3027-join  
        Label        -print-boolean-3027-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3027-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3028-arg1        
        PushI        49                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3028-arg2        
        PushI        96                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3028-sub         
        Subtract                               
        JumpFalse    -compare-3028-false       
        Jump         -compare-3028-true        
        Label        -compare-3028-true        
        PushI        1                         
        Jump         -compare-3028-join        
        Label        -compare-3028-false       
        PushI        0                         
        Jump         -compare-3028-join        
        Label        -compare-3028-join        
        JumpTrue     -print-boolean-3029-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3029-join  
        Label        -print-boolean-3029-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3029-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3030-arg1        
        PushI        114                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-3030-arg2        
        PushI        113                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-3030-sub         
        Subtract                               
        JumpFalse    -compare-3030-false       
        Jump         -compare-3030-true        
        Label        -compare-3030-true        
        PushI        1                         
        Jump         -compare-3030-join        
        Label        -compare-3030-false       
        PushI        0                         
        Jump         -compare-3030-join        
        Label        -compare-3030-join        
        JumpTrue     -print-boolean-3031-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3031-join  
        Label        -print-boolean-3031-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3031-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3032-arg1        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3032-arg2        
        PushI        81                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3032-sub         
        Subtract                               
        JumpFalse    -compare-3032-false       
        Jump         -compare-3032-true        
        Label        -compare-3032-true        
        PushI        1                         
        Jump         -compare-3032-join        
        Label        -compare-3032-false       
        PushI        0                         
        Jump         -compare-3032-join        
        Label        -compare-3032-join        
        JumpTrue     -print-boolean-3033-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3033-join  
        Label        -print-boolean-3033-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3033-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3034-arg1        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3034-arg2        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3034-sub         
        Subtract                               
        JumpFalse    -compare-3034-false       
        Jump         -compare-3034-true        
        Label        -compare-3034-true        
        PushI        1                         
        Jump         -compare-3034-join        
        Label        -compare-3034-false       
        PushI        0                         
        Jump         -compare-3034-join        
        Label        -compare-3034-join        
        JumpTrue     -print-boolean-3035-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3035-join  
        Label        -print-boolean-3035-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3035-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3036-arg1        
        PushI        54                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3036-arg2        
        PushI        66                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-3036-sub         
        Subtract                               
        JumpFalse    -compare-3036-false       
        Jump         -compare-3036-true        
        Label        -compare-3036-true        
        PushI        1                         
        Jump         -compare-3036-join        
        Label        -compare-3036-false       
        PushI        0                         
        Jump         -compare-3036-join        
        Label        -compare-3036-join        
        JumpTrue     -print-boolean-3037-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3037-join  
        Label        -print-boolean-3037-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3037-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
