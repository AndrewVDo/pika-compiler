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
        Label        -compare-3182-arg1        
        PushI        76                        
        PushI        91                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3182-arg2        
        PushI        21                        
        Label        -compare-3182-sub         
        Subtract                               
        JumpFalse    -compare-3182-true        
        Jump         -compare-3182-false       
        Label        -compare-3182-true        
        PushI        1                         
        Jump         -compare-3182-join        
        Label        -compare-3182-false       
        PushI        0                         
        Jump         -compare-3182-join        
        Label        -compare-3182-join        
        JumpTrue     -print-boolean-3183-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3183-join  
        Label        -print-boolean-3183-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3183-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3184-arg1        
        PushI        46                        
        PushI        20                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3184-arg2        
        PushI        56                        
        Label        -compare-3184-sub         
        Subtract                               
        JumpFalse    -compare-3184-true        
        Jump         -compare-3184-false       
        Label        -compare-3184-true        
        PushI        1                         
        Jump         -compare-3184-join        
        Label        -compare-3184-false       
        PushI        0                         
        Jump         -compare-3184-join        
        Label        -compare-3184-join        
        JumpTrue     -print-boolean-3185-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3185-join  
        Label        -print-boolean-3185-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3185-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3186-arg1        
        PushI        92                        
        PushI        1                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3186-arg2        
        PushI        73                        
        Label        -compare-3186-sub         
        Subtract                               
        JumpFalse    -compare-3186-true        
        Jump         -compare-3186-false       
        Label        -compare-3186-true        
        PushI        1                         
        Jump         -compare-3186-join        
        Label        -compare-3186-false       
        PushI        0                         
        Jump         -compare-3186-join        
        Label        -compare-3186-join        
        JumpTrue     -print-boolean-3187-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3187-join  
        Label        -print-boolean-3187-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3187-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3188-arg1        
        PushI        38                        
        PushI        17                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3188-arg2        
        PushI        55                        
        Label        -compare-3188-sub         
        Subtract                               
        JumpFalse    -compare-3188-true        
        Jump         -compare-3188-false       
        Label        -compare-3188-true        
        PushI        1                         
        Jump         -compare-3188-join        
        Label        -compare-3188-false       
        PushI        0                         
        Jump         -compare-3188-join        
        Label        -compare-3188-join        
        JumpTrue     -print-boolean-3189-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3189-join  
        Label        -print-boolean-3189-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3189-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3190-arg1        
        PushI        65                        
        PushI        58                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3190-arg2        
        PushI        83                        
        Label        -compare-3190-sub         
        Subtract                               
        JumpFalse    -compare-3190-true        
        Jump         -compare-3190-false       
        Label        -compare-3190-true        
        PushI        1                         
        Jump         -compare-3190-join        
        Label        -compare-3190-false       
        PushI        0                         
        Jump         -compare-3190-join        
        Label        -compare-3190-join        
        JumpTrue     -print-boolean-3191-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3191-join  
        Label        -print-boolean-3191-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3191-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3192-arg1        
        PushI        31                        
        PushI        78                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3192-arg2        
        PushI        66                        
        Label        -compare-3192-sub         
        Subtract                               
        JumpFalse    -compare-3192-true        
        Jump         -compare-3192-false       
        Label        -compare-3192-true        
        PushI        1                         
        Jump         -compare-3192-join        
        Label        -compare-3192-false       
        PushI        0                         
        Jump         -compare-3192-join        
        Label        -compare-3192-join        
        JumpTrue     -print-boolean-3193-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3193-join  
        Label        -print-boolean-3193-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3193-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3194-arg1        
        PushI        55                        
        PushI        63                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3194-arg2        
        PushI        64                        
        Label        -compare-3194-sub         
        Subtract                               
        JumpFalse    -compare-3194-true        
        Jump         -compare-3194-false       
        Label        -compare-3194-true        
        PushI        1                         
        Jump         -compare-3194-join        
        Label        -compare-3194-false       
        PushI        0                         
        Jump         -compare-3194-join        
        Label        -compare-3194-join        
        JumpTrue     -print-boolean-3195-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3195-join  
        Label        -print-boolean-3195-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3195-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3196-arg1        
        PushI        87                        
        PushI        7                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3196-arg2        
        PushI        33                        
        Label        -compare-3196-sub         
        Subtract                               
        JumpFalse    -compare-3196-true        
        Jump         -compare-3196-false       
        Label        -compare-3196-true        
        PushI        1                         
        Jump         -compare-3196-join        
        Label        -compare-3196-false       
        PushI        0                         
        Jump         -compare-3196-join        
        Label        -compare-3196-join        
        JumpTrue     -print-boolean-3197-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3197-join  
        Label        -print-boolean-3197-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3197-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3198-arg1        
        PushI        10                        
        PushI        31                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3198-arg2        
        PushI        41                        
        Label        -compare-3198-sub         
        Subtract                               
        JumpFalse    -compare-3198-true        
        Jump         -compare-3198-false       
        Label        -compare-3198-true        
        PushI        1                         
        Jump         -compare-3198-join        
        Label        -compare-3198-false       
        PushI        0                         
        Jump         -compare-3198-join        
        Label        -compare-3198-join        
        JumpTrue     -print-boolean-3199-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3199-join  
        Label        -print-boolean-3199-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3199-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3200-arg1        
        PushI        15                        
        PushI        44                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3200-arg2        
        PushI        58                        
        Label        -compare-3200-sub         
        Subtract                               
        JumpFalse    -compare-3200-true        
        Jump         -compare-3200-false       
        Label        -compare-3200-true        
        PushI        1                         
        Jump         -compare-3200-join        
        Label        -compare-3200-false       
        PushI        0                         
        Jump         -compare-3200-join        
        Label        -compare-3200-join        
        JumpTrue     -print-boolean-3201-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3201-join  
        Label        -print-boolean-3201-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3201-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3202-arg1        
        PushI        83                        
        PushI        72                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3202-arg2        
        PushI        1                         
        Label        -compare-3202-sub         
        Subtract                               
        JumpFalse    -compare-3202-true        
        Jump         -compare-3202-false       
        Label        -compare-3202-true        
        PushI        1                         
        Jump         -compare-3202-join        
        Label        -compare-3202-false       
        PushI        0                         
        Jump         -compare-3202-join        
        Label        -compare-3202-join        
        JumpTrue     -print-boolean-3203-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3203-join  
        Label        -print-boolean-3203-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3203-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3204-arg1        
        PushI        81                        
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3204-arg2        
        PushI        37                        
        Label        -compare-3204-sub         
        Subtract                               
        JumpFalse    -compare-3204-true        
        Jump         -compare-3204-false       
        Label        -compare-3204-true        
        PushI        1                         
        Jump         -compare-3204-join        
        Label        -compare-3204-false       
        PushI        0                         
        Jump         -compare-3204-join        
        Label        -compare-3204-join        
        JumpTrue     -print-boolean-3205-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3205-join  
        Label        -print-boolean-3205-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3205-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3206-arg1        
        PushI        64                        
        Label        -compare-3206-arg2        
        PushI        80                        
        PushI        17                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3206-sub         
        Subtract                               
        JumpFalse    -compare-3206-true        
        Jump         -compare-3206-false       
        Label        -compare-3206-true        
        PushI        1                         
        Jump         -compare-3206-join        
        Label        -compare-3206-false       
        PushI        0                         
        Jump         -compare-3206-join        
        Label        -compare-3206-join        
        JumpTrue     -print-boolean-3207-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3207-join  
        Label        -print-boolean-3207-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3207-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3208-arg1        
        PushI        59                        
        Label        -compare-3208-arg2        
        PushI        55                        
        PushI        67                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3208-sub         
        Subtract                               
        JumpFalse    -compare-3208-true        
        Jump         -compare-3208-false       
        Label        -compare-3208-true        
        PushI        1                         
        Jump         -compare-3208-join        
        Label        -compare-3208-false       
        PushI        0                         
        Jump         -compare-3208-join        
        Label        -compare-3208-join        
        JumpTrue     -print-boolean-3209-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3209-join  
        Label        -print-boolean-3209-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3209-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3210-arg1        
        PushI        57                        
        Label        -compare-3210-arg2        
        PushI        54                        
        PushI        55                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3210-sub         
        Subtract                               
        JumpFalse    -compare-3210-true        
        Jump         -compare-3210-false       
        Label        -compare-3210-true        
        PushI        1                         
        Jump         -compare-3210-join        
        Label        -compare-3210-false       
        PushI        0                         
        Jump         -compare-3210-join        
        Label        -compare-3210-join        
        JumpTrue     -print-boolean-3211-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3211-join  
        Label        -print-boolean-3211-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3211-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3212-arg1        
        PushI        94                        
        Label        -compare-3212-arg2        
        PushI        29                        
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3212-sub         
        Subtract                               
        JumpFalse    -compare-3212-true        
        Jump         -compare-3212-false       
        Label        -compare-3212-true        
        PushI        1                         
        Jump         -compare-3212-join        
        Label        -compare-3212-false       
        PushI        0                         
        Jump         -compare-3212-join        
        Label        -compare-3212-join        
        JumpTrue     -print-boolean-3213-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3213-join  
        Label        -print-boolean-3213-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3213-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3214-arg1        
        PushI        89                        
        Label        -compare-3214-arg2        
        PushI        23                        
        PushI        12                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3214-sub         
        Subtract                               
        JumpFalse    -compare-3214-true        
        Jump         -compare-3214-false       
        Label        -compare-3214-true        
        PushI        1                         
        Jump         -compare-3214-join        
        Label        -compare-3214-false       
        PushI        0                         
        Jump         -compare-3214-join        
        Label        -compare-3214-join        
        JumpTrue     -print-boolean-3215-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3215-join  
        Label        -print-boolean-3215-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3215-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3216-arg1        
        PushI        33                        
        Label        -compare-3216-arg2        
        PushI        72                        
        PushI        98                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3216-sub         
        Subtract                               
        JumpFalse    -compare-3216-true        
        Jump         -compare-3216-false       
        Label        -compare-3216-true        
        PushI        1                         
        Jump         -compare-3216-join        
        Label        -compare-3216-false       
        PushI        0                         
        Jump         -compare-3216-join        
        Label        -compare-3216-join        
        JumpTrue     -print-boolean-3217-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3217-join  
        Label        -print-boolean-3217-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3217-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3218-arg1        
        PushI        88                        
        Label        -compare-3218-arg2        
        PushI        14                        
        PushI        57                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3218-sub         
        Subtract                               
        JumpFalse    -compare-3218-true        
        Jump         -compare-3218-false       
        Label        -compare-3218-true        
        PushI        1                         
        Jump         -compare-3218-join        
        Label        -compare-3218-false       
        PushI        0                         
        Jump         -compare-3218-join        
        Label        -compare-3218-join        
        JumpTrue     -print-boolean-3219-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3219-join  
        Label        -print-boolean-3219-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3219-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3220-arg1        
        PushI        83                        
        Label        -compare-3220-arg2        
        PushI        24                        
        PushI        5                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3220-sub         
        Subtract                               
        JumpFalse    -compare-3220-true        
        Jump         -compare-3220-false       
        Label        -compare-3220-true        
        PushI        1                         
        Jump         -compare-3220-join        
        Label        -compare-3220-false       
        PushI        0                         
        Jump         -compare-3220-join        
        Label        -compare-3220-join        
        JumpTrue     -print-boolean-3221-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3221-join  
        Label        -print-boolean-3221-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3221-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3222-arg1        
        PushI        81                        
        Label        -compare-3222-arg2        
        PushI        25                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3222-sub         
        Subtract                               
        JumpFalse    -compare-3222-true        
        Jump         -compare-3222-false       
        Label        -compare-3222-true        
        PushI        1                         
        Jump         -compare-3222-join        
        Label        -compare-3222-false       
        PushI        0                         
        Jump         -compare-3222-join        
        Label        -compare-3222-join        
        JumpTrue     -print-boolean-3223-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3223-join  
        Label        -print-boolean-3223-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3223-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3224-arg1        
        PushI        63                        
        Label        -compare-3224-arg2        
        PushI        6                         
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3224-sub         
        Subtract                               
        JumpFalse    -compare-3224-true        
        Jump         -compare-3224-false       
        Label        -compare-3224-true        
        PushI        1                         
        Jump         -compare-3224-join        
        Label        -compare-3224-false       
        PushI        0                         
        Jump         -compare-3224-join        
        Label        -compare-3224-join        
        JumpTrue     -print-boolean-3225-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3225-join  
        Label        -print-boolean-3225-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3225-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3226-arg1        
        PushI        56                        
        Label        -compare-3226-arg2        
        PushI        13                        
        PushI        30                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3226-sub         
        Subtract                               
        JumpFalse    -compare-3226-true        
        Jump         -compare-3226-false       
        Label        -compare-3226-true        
        PushI        1                         
        Jump         -compare-3226-join        
        Label        -compare-3226-false       
        PushI        0                         
        Jump         -compare-3226-join        
        Label        -compare-3226-join        
        JumpTrue     -print-boolean-3227-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3227-join  
        Label        -print-boolean-3227-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3227-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3228-arg1        
        PushI        61                        
        Label        -compare-3228-arg2        
        PushI        77                        
        PushI        15                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3228-sub         
        Subtract                               
        JumpFalse    -compare-3228-true        
        Jump         -compare-3228-false       
        Label        -compare-3228-true        
        PushI        1                         
        Jump         -compare-3228-join        
        Label        -compare-3228-false       
        PushI        0                         
        Jump         -compare-3228-join        
        Label        -compare-3228-join        
        JumpTrue     -print-boolean-3229-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3229-join  
        Label        -print-boolean-3229-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3229-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3230-arg1        
        PushI        5                         
        PushI        13                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3230-arg2        
        PushI        62                        
        PushI        27                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3230-sub         
        Subtract                               
        JumpFalse    -compare-3230-true        
        Jump         -compare-3230-false       
        Label        -compare-3230-true        
        PushI        1                         
        Jump         -compare-3230-join        
        Label        -compare-3230-false       
        PushI        0                         
        Jump         -compare-3230-join        
        Label        -compare-3230-join        
        JumpTrue     -print-boolean-3231-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3231-join  
        Label        -print-boolean-3231-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3231-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3232-arg1        
        PushI        58                        
        PushI        47                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3232-arg2        
        PushI        7                         
        PushI        70                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3232-sub         
        Subtract                               
        JumpFalse    -compare-3232-true        
        Jump         -compare-3232-false       
        Label        -compare-3232-true        
        PushI        1                         
        Jump         -compare-3232-join        
        Label        -compare-3232-false       
        PushI        0                         
        Jump         -compare-3232-join        
        Label        -compare-3232-join        
        JumpTrue     -print-boolean-3233-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3233-join  
        Label        -print-boolean-3233-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3233-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3234-arg1        
        PushI        20                        
        PushI        96                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3234-arg2        
        PushI        62                        
        PushI        11                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3234-sub         
        Subtract                               
        JumpFalse    -compare-3234-true        
        Jump         -compare-3234-false       
        Label        -compare-3234-true        
        PushI        1                         
        Jump         -compare-3234-join        
        Label        -compare-3234-false       
        PushI        0                         
        Jump         -compare-3234-join        
        Label        -compare-3234-join        
        JumpTrue     -print-boolean-3235-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3235-join  
        Label        -print-boolean-3235-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3235-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3236-arg1        
        PushI        76                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3236-arg2        
        PushI        52                        
        PushI        44                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3236-sub         
        Subtract                               
        JumpFalse    -compare-3236-true        
        Jump         -compare-3236-false       
        Label        -compare-3236-true        
        PushI        1                         
        Jump         -compare-3236-join        
        Label        -compare-3236-false       
        PushI        0                         
        Jump         -compare-3236-join        
        Label        -compare-3236-join        
        JumpTrue     -print-boolean-3237-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3237-join  
        Label        -print-boolean-3237-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3237-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3238-arg1        
        PushI        63                        
        PushI        11                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3238-arg2        
        PushI        41                        
        PushI        21                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3238-sub         
        Subtract                               
        JumpFalse    -compare-3238-true        
        Jump         -compare-3238-false       
        Label        -compare-3238-true        
        PushI        1                         
        Jump         -compare-3238-join        
        Label        -compare-3238-false       
        PushI        0                         
        Jump         -compare-3238-join        
        Label        -compare-3238-join        
        JumpTrue     -print-boolean-3239-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3239-join  
        Label        -print-boolean-3239-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3239-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3240-arg1        
        PushI        39                        
        PushI        70                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3240-arg2        
        PushI        72                        
        PushI        17                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3240-sub         
        Subtract                               
        JumpFalse    -compare-3240-true        
        Jump         -compare-3240-false       
        Label        -compare-3240-true        
        PushI        1                         
        Jump         -compare-3240-join        
        Label        -compare-3240-false       
        PushI        0                         
        Jump         -compare-3240-join        
        Label        -compare-3240-join        
        JumpTrue     -print-boolean-3241-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3241-join  
        Label        -print-boolean-3241-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3241-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3242-arg1        
        PushI        79                        
        PushI        94                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3242-arg2        
        PushI        45                        
        PushI        83                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3242-sub         
        Subtract                               
        JumpFalse    -compare-3242-true        
        Jump         -compare-3242-false       
        Label        -compare-3242-true        
        PushI        1                         
        Jump         -compare-3242-join        
        Label        -compare-3242-false       
        PushI        0                         
        Jump         -compare-3242-join        
        Label        -compare-3242-join        
        JumpTrue     -print-boolean-3243-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3243-join  
        Label        -print-boolean-3243-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3243-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3244-arg1        
        PushI        21                        
        PushI        84                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3244-arg2        
        PushI        39                        
        PushI        50                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3244-sub         
        Subtract                               
        JumpFalse    -compare-3244-true        
        Jump         -compare-3244-false       
        Label        -compare-3244-true        
        PushI        1                         
        Jump         -compare-3244-join        
        Label        -compare-3244-false       
        PushI        0                         
        Jump         -compare-3244-join        
        Label        -compare-3244-join        
        JumpTrue     -print-boolean-3245-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3245-join  
        Label        -print-boolean-3245-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3245-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3246-arg1        
        PushI        93                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3246-arg2        
        PushI        56                        
        PushI        54                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3246-sub         
        Subtract                               
        JumpFalse    -compare-3246-true        
        Jump         -compare-3246-false       
        Label        -compare-3246-true        
        PushI        1                         
        Jump         -compare-3246-join        
        Label        -compare-3246-false       
        PushI        0                         
        Jump         -compare-3246-join        
        Label        -compare-3246-join        
        JumpTrue     -print-boolean-3247-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3247-join  
        Label        -print-boolean-3247-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3247-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3248-arg1        
        PushI        30                        
        PushI        89                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3248-arg2        
        PushI        24                        
        PushI        75                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3248-sub         
        Subtract                               
        JumpFalse    -compare-3248-true        
        Jump         -compare-3248-false       
        Label        -compare-3248-true        
        PushI        1                         
        Jump         -compare-3248-join        
        Label        -compare-3248-false       
        PushI        0                         
        Jump         -compare-3248-join        
        Label        -compare-3248-join        
        JumpTrue     -print-boolean-3249-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3249-join  
        Label        -print-boolean-3249-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3249-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3250-arg1        
        PushI        56                        
        PushI        25                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3250-arg2        
        PushI        88                        
        PushI        29                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3250-sub         
        Subtract                               
        JumpFalse    -compare-3250-true        
        Jump         -compare-3250-false       
        Label        -compare-3250-true        
        PushI        1                         
        Jump         -compare-3250-join        
        Label        -compare-3250-false       
        PushI        0                         
        Jump         -compare-3250-join        
        Label        -compare-3250-join        
        JumpTrue     -print-boolean-3251-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3251-join  
        Label        -print-boolean-3251-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3251-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3252-arg1        
        PushI        94                        
        PushI        20                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3252-arg2        
        PushI        34                        
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3252-sub         
        Subtract                               
        JumpFalse    -compare-3252-true        
        Jump         -compare-3252-false       
        Label        -compare-3252-true        
        PushI        1                         
        Jump         -compare-3252-join        
        Label        -compare-3252-false       
        PushI        0                         
        Jump         -compare-3252-join        
        Label        -compare-3252-join        
        JumpTrue     -print-boolean-3253-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3253-join  
        Label        -print-boolean-3253-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3253-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
