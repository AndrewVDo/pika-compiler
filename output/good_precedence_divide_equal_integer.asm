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
        Label        -compare-3169-arg1        
        PushI        76                        
        PushI        91                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3169-arg2        
        PushI        21                        
        Label        -compare-3169-sub         
        Subtract                               
        JumpFalse    -compare-3169-true        
        Jump         -compare-3169-false       
        Label        -compare-3169-true        
        PushI        1                         
        Jump         -compare-3169-join        
        Label        -compare-3169-false       
        PushI        0                         
        Jump         -compare-3169-join        
        Label        -compare-3169-join        
        JumpTrue     -print-boolean-3170-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3170-join  
        Label        -print-boolean-3170-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3170-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3171-arg1        
        PushI        46                        
        PushI        20                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3171-arg2        
        PushI        56                        
        Label        -compare-3171-sub         
        Subtract                               
        JumpFalse    -compare-3171-true        
        Jump         -compare-3171-false       
        Label        -compare-3171-true        
        PushI        1                         
        Jump         -compare-3171-join        
        Label        -compare-3171-false       
        PushI        0                         
        Jump         -compare-3171-join        
        Label        -compare-3171-join        
        JumpTrue     -print-boolean-3172-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3172-join  
        Label        -print-boolean-3172-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3172-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3173-arg1        
        PushI        92                        
        PushI        1                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3173-arg2        
        PushI        73                        
        Label        -compare-3173-sub         
        Subtract                               
        JumpFalse    -compare-3173-true        
        Jump         -compare-3173-false       
        Label        -compare-3173-true        
        PushI        1                         
        Jump         -compare-3173-join        
        Label        -compare-3173-false       
        PushI        0                         
        Jump         -compare-3173-join        
        Label        -compare-3173-join        
        JumpTrue     -print-boolean-3174-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3174-join  
        Label        -print-boolean-3174-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3174-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3175-arg1        
        PushI        38                        
        PushI        17                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3175-arg2        
        PushI        55                        
        Label        -compare-3175-sub         
        Subtract                               
        JumpFalse    -compare-3175-true        
        Jump         -compare-3175-false       
        Label        -compare-3175-true        
        PushI        1                         
        Jump         -compare-3175-join        
        Label        -compare-3175-false       
        PushI        0                         
        Jump         -compare-3175-join        
        Label        -compare-3175-join        
        JumpTrue     -print-boolean-3176-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3176-join  
        Label        -print-boolean-3176-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3176-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3177-arg1        
        PushI        65                        
        PushI        58                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3177-arg2        
        PushI        83                        
        Label        -compare-3177-sub         
        Subtract                               
        JumpFalse    -compare-3177-true        
        Jump         -compare-3177-false       
        Label        -compare-3177-true        
        PushI        1                         
        Jump         -compare-3177-join        
        Label        -compare-3177-false       
        PushI        0                         
        Jump         -compare-3177-join        
        Label        -compare-3177-join        
        JumpTrue     -print-boolean-3178-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3178-join  
        Label        -print-boolean-3178-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3178-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3179-arg1        
        PushI        31                        
        PushI        78                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3179-arg2        
        PushI        66                        
        Label        -compare-3179-sub         
        Subtract                               
        JumpFalse    -compare-3179-true        
        Jump         -compare-3179-false       
        Label        -compare-3179-true        
        PushI        1                         
        Jump         -compare-3179-join        
        Label        -compare-3179-false       
        PushI        0                         
        Jump         -compare-3179-join        
        Label        -compare-3179-join        
        JumpTrue     -print-boolean-3180-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3180-join  
        Label        -print-boolean-3180-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3180-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3181-arg1        
        PushI        55                        
        PushI        63                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3181-arg2        
        PushI        64                        
        Label        -compare-3181-sub         
        Subtract                               
        JumpFalse    -compare-3181-true        
        Jump         -compare-3181-false       
        Label        -compare-3181-true        
        PushI        1                         
        Jump         -compare-3181-join        
        Label        -compare-3181-false       
        PushI        0                         
        Jump         -compare-3181-join        
        Label        -compare-3181-join        
        JumpTrue     -print-boolean-3182-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3182-join  
        Label        -print-boolean-3182-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3182-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3183-arg1        
        PushI        87                        
        PushI        7                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3183-arg2        
        PushI        33                        
        Label        -compare-3183-sub         
        Subtract                               
        JumpFalse    -compare-3183-true        
        Jump         -compare-3183-false       
        Label        -compare-3183-true        
        PushI        1                         
        Jump         -compare-3183-join        
        Label        -compare-3183-false       
        PushI        0                         
        Jump         -compare-3183-join        
        Label        -compare-3183-join        
        JumpTrue     -print-boolean-3184-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3184-join  
        Label        -print-boolean-3184-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3184-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3185-arg1        
        PushI        10                        
        PushI        31                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3185-arg2        
        PushI        41                        
        Label        -compare-3185-sub         
        Subtract                               
        JumpFalse    -compare-3185-true        
        Jump         -compare-3185-false       
        Label        -compare-3185-true        
        PushI        1                         
        Jump         -compare-3185-join        
        Label        -compare-3185-false       
        PushI        0                         
        Jump         -compare-3185-join        
        Label        -compare-3185-join        
        JumpTrue     -print-boolean-3186-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3186-join  
        Label        -print-boolean-3186-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3186-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3187-arg1        
        PushI        15                        
        PushI        44                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3187-arg2        
        PushI        58                        
        Label        -compare-3187-sub         
        Subtract                               
        JumpFalse    -compare-3187-true        
        Jump         -compare-3187-false       
        Label        -compare-3187-true        
        PushI        1                         
        Jump         -compare-3187-join        
        Label        -compare-3187-false       
        PushI        0                         
        Jump         -compare-3187-join        
        Label        -compare-3187-join        
        JumpTrue     -print-boolean-3188-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3188-join  
        Label        -print-boolean-3188-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3188-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3189-arg1        
        PushI        83                        
        PushI        72                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3189-arg2        
        PushI        1                         
        Label        -compare-3189-sub         
        Subtract                               
        JumpFalse    -compare-3189-true        
        Jump         -compare-3189-false       
        Label        -compare-3189-true        
        PushI        1                         
        Jump         -compare-3189-join        
        Label        -compare-3189-false       
        PushI        0                         
        Jump         -compare-3189-join        
        Label        -compare-3189-join        
        JumpTrue     -print-boolean-3190-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3190-join  
        Label        -print-boolean-3190-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3190-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3191-arg1        
        PushI        81                        
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3191-arg2        
        PushI        37                        
        Label        -compare-3191-sub         
        Subtract                               
        JumpFalse    -compare-3191-true        
        Jump         -compare-3191-false       
        Label        -compare-3191-true        
        PushI        1                         
        Jump         -compare-3191-join        
        Label        -compare-3191-false       
        PushI        0                         
        Jump         -compare-3191-join        
        Label        -compare-3191-join        
        JumpTrue     -print-boolean-3192-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3192-join  
        Label        -print-boolean-3192-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3192-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3193-arg1        
        PushI        64                        
        Label        -compare-3193-arg2        
        PushI        80                        
        PushI        17                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3193-sub         
        Subtract                               
        JumpFalse    -compare-3193-true        
        Jump         -compare-3193-false       
        Label        -compare-3193-true        
        PushI        1                         
        Jump         -compare-3193-join        
        Label        -compare-3193-false       
        PushI        0                         
        Jump         -compare-3193-join        
        Label        -compare-3193-join        
        JumpTrue     -print-boolean-3194-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3194-join  
        Label        -print-boolean-3194-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3194-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3195-arg1        
        PushI        59                        
        Label        -compare-3195-arg2        
        PushI        55                        
        PushI        67                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3195-sub         
        Subtract                               
        JumpFalse    -compare-3195-true        
        Jump         -compare-3195-false       
        Label        -compare-3195-true        
        PushI        1                         
        Jump         -compare-3195-join        
        Label        -compare-3195-false       
        PushI        0                         
        Jump         -compare-3195-join        
        Label        -compare-3195-join        
        JumpTrue     -print-boolean-3196-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3196-join  
        Label        -print-boolean-3196-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3196-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3197-arg1        
        PushI        57                        
        Label        -compare-3197-arg2        
        PushI        54                        
        PushI        55                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3197-sub         
        Subtract                               
        JumpFalse    -compare-3197-true        
        Jump         -compare-3197-false       
        Label        -compare-3197-true        
        PushI        1                         
        Jump         -compare-3197-join        
        Label        -compare-3197-false       
        PushI        0                         
        Jump         -compare-3197-join        
        Label        -compare-3197-join        
        JumpTrue     -print-boolean-3198-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3198-join  
        Label        -print-boolean-3198-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3198-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3199-arg1        
        PushI        94                        
        Label        -compare-3199-arg2        
        PushI        29                        
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3199-sub         
        Subtract                               
        JumpFalse    -compare-3199-true        
        Jump         -compare-3199-false       
        Label        -compare-3199-true        
        PushI        1                         
        Jump         -compare-3199-join        
        Label        -compare-3199-false       
        PushI        0                         
        Jump         -compare-3199-join        
        Label        -compare-3199-join        
        JumpTrue     -print-boolean-3200-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3200-join  
        Label        -print-boolean-3200-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3200-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3201-arg1        
        PushI        89                        
        Label        -compare-3201-arg2        
        PushI        23                        
        PushI        12                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3201-sub         
        Subtract                               
        JumpFalse    -compare-3201-true        
        Jump         -compare-3201-false       
        Label        -compare-3201-true        
        PushI        1                         
        Jump         -compare-3201-join        
        Label        -compare-3201-false       
        PushI        0                         
        Jump         -compare-3201-join        
        Label        -compare-3201-join        
        JumpTrue     -print-boolean-3202-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3202-join  
        Label        -print-boolean-3202-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3202-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3203-arg1        
        PushI        33                        
        Label        -compare-3203-arg2        
        PushI        72                        
        PushI        98                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3203-sub         
        Subtract                               
        JumpFalse    -compare-3203-true        
        Jump         -compare-3203-false       
        Label        -compare-3203-true        
        PushI        1                         
        Jump         -compare-3203-join        
        Label        -compare-3203-false       
        PushI        0                         
        Jump         -compare-3203-join        
        Label        -compare-3203-join        
        JumpTrue     -print-boolean-3204-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3204-join  
        Label        -print-boolean-3204-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3204-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3205-arg1        
        PushI        88                        
        Label        -compare-3205-arg2        
        PushI        14                        
        PushI        57                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3205-sub         
        Subtract                               
        JumpFalse    -compare-3205-true        
        Jump         -compare-3205-false       
        Label        -compare-3205-true        
        PushI        1                         
        Jump         -compare-3205-join        
        Label        -compare-3205-false       
        PushI        0                         
        Jump         -compare-3205-join        
        Label        -compare-3205-join        
        JumpTrue     -print-boolean-3206-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3206-join  
        Label        -print-boolean-3206-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3206-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3207-arg1        
        PushI        83                        
        Label        -compare-3207-arg2        
        PushI        24                        
        PushI        5                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3207-sub         
        Subtract                               
        JumpFalse    -compare-3207-true        
        Jump         -compare-3207-false       
        Label        -compare-3207-true        
        PushI        1                         
        Jump         -compare-3207-join        
        Label        -compare-3207-false       
        PushI        0                         
        Jump         -compare-3207-join        
        Label        -compare-3207-join        
        JumpTrue     -print-boolean-3208-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3208-join  
        Label        -print-boolean-3208-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3208-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3209-arg1        
        PushI        81                        
        Label        -compare-3209-arg2        
        PushI        25                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3209-sub         
        Subtract                               
        JumpFalse    -compare-3209-true        
        Jump         -compare-3209-false       
        Label        -compare-3209-true        
        PushI        1                         
        Jump         -compare-3209-join        
        Label        -compare-3209-false       
        PushI        0                         
        Jump         -compare-3209-join        
        Label        -compare-3209-join        
        JumpTrue     -print-boolean-3210-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3210-join  
        Label        -print-boolean-3210-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3210-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3211-arg1        
        PushI        63                        
        Label        -compare-3211-arg2        
        PushI        6                         
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3211-sub         
        Subtract                               
        JumpFalse    -compare-3211-true        
        Jump         -compare-3211-false       
        Label        -compare-3211-true        
        PushI        1                         
        Jump         -compare-3211-join        
        Label        -compare-3211-false       
        PushI        0                         
        Jump         -compare-3211-join        
        Label        -compare-3211-join        
        JumpTrue     -print-boolean-3212-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3212-join  
        Label        -print-boolean-3212-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3212-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3213-arg1        
        PushI        56                        
        Label        -compare-3213-arg2        
        PushI        13                        
        PushI        30                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3213-sub         
        Subtract                               
        JumpFalse    -compare-3213-true        
        Jump         -compare-3213-false       
        Label        -compare-3213-true        
        PushI        1                         
        Jump         -compare-3213-join        
        Label        -compare-3213-false       
        PushI        0                         
        Jump         -compare-3213-join        
        Label        -compare-3213-join        
        JumpTrue     -print-boolean-3214-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3214-join  
        Label        -print-boolean-3214-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3214-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3215-arg1        
        PushI        61                        
        Label        -compare-3215-arg2        
        PushI        77                        
        PushI        15                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3215-sub         
        Subtract                               
        JumpFalse    -compare-3215-true        
        Jump         -compare-3215-false       
        Label        -compare-3215-true        
        PushI        1                         
        Jump         -compare-3215-join        
        Label        -compare-3215-false       
        PushI        0                         
        Jump         -compare-3215-join        
        Label        -compare-3215-join        
        JumpTrue     -print-boolean-3216-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3216-join  
        Label        -print-boolean-3216-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3216-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3217-arg1        
        PushI        5                         
        PushI        13                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3217-arg2        
        PushI        62                        
        PushI        27                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3217-sub         
        Subtract                               
        JumpFalse    -compare-3217-true        
        Jump         -compare-3217-false       
        Label        -compare-3217-true        
        PushI        1                         
        Jump         -compare-3217-join        
        Label        -compare-3217-false       
        PushI        0                         
        Jump         -compare-3217-join        
        Label        -compare-3217-join        
        JumpTrue     -print-boolean-3218-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3218-join  
        Label        -print-boolean-3218-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3218-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3219-arg1        
        PushI        58                        
        PushI        47                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3219-arg2        
        PushI        7                         
        PushI        70                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3219-sub         
        Subtract                               
        JumpFalse    -compare-3219-true        
        Jump         -compare-3219-false       
        Label        -compare-3219-true        
        PushI        1                         
        Jump         -compare-3219-join        
        Label        -compare-3219-false       
        PushI        0                         
        Jump         -compare-3219-join        
        Label        -compare-3219-join        
        JumpTrue     -print-boolean-3220-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3220-join  
        Label        -print-boolean-3220-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3220-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3221-arg1        
        PushI        20                        
        PushI        96                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3221-arg2        
        PushI        62                        
        PushI        11                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3221-sub         
        Subtract                               
        JumpFalse    -compare-3221-true        
        Jump         -compare-3221-false       
        Label        -compare-3221-true        
        PushI        1                         
        Jump         -compare-3221-join        
        Label        -compare-3221-false       
        PushI        0                         
        Jump         -compare-3221-join        
        Label        -compare-3221-join        
        JumpTrue     -print-boolean-3222-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3222-join  
        Label        -print-boolean-3222-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3222-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3223-arg1        
        PushI        76                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3223-arg2        
        PushI        52                        
        PushI        44                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3223-sub         
        Subtract                               
        JumpFalse    -compare-3223-true        
        Jump         -compare-3223-false       
        Label        -compare-3223-true        
        PushI        1                         
        Jump         -compare-3223-join        
        Label        -compare-3223-false       
        PushI        0                         
        Jump         -compare-3223-join        
        Label        -compare-3223-join        
        JumpTrue     -print-boolean-3224-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3224-join  
        Label        -print-boolean-3224-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3224-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3225-arg1        
        PushI        63                        
        PushI        11                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3225-arg2        
        PushI        41                        
        PushI        21                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3225-sub         
        Subtract                               
        JumpFalse    -compare-3225-true        
        Jump         -compare-3225-false       
        Label        -compare-3225-true        
        PushI        1                         
        Jump         -compare-3225-join        
        Label        -compare-3225-false       
        PushI        0                         
        Jump         -compare-3225-join        
        Label        -compare-3225-join        
        JumpTrue     -print-boolean-3226-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3226-join  
        Label        -print-boolean-3226-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3226-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3227-arg1        
        PushI        39                        
        PushI        70                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3227-arg2        
        PushI        72                        
        PushI        17                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3227-sub         
        Subtract                               
        JumpFalse    -compare-3227-true        
        Jump         -compare-3227-false       
        Label        -compare-3227-true        
        PushI        1                         
        Jump         -compare-3227-join        
        Label        -compare-3227-false       
        PushI        0                         
        Jump         -compare-3227-join        
        Label        -compare-3227-join        
        JumpTrue     -print-boolean-3228-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3228-join  
        Label        -print-boolean-3228-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3228-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3229-arg1        
        PushI        79                        
        PushI        94                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3229-arg2        
        PushI        45                        
        PushI        83                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3229-sub         
        Subtract                               
        JumpFalse    -compare-3229-true        
        Jump         -compare-3229-false       
        Label        -compare-3229-true        
        PushI        1                         
        Jump         -compare-3229-join        
        Label        -compare-3229-false       
        PushI        0                         
        Jump         -compare-3229-join        
        Label        -compare-3229-join        
        JumpTrue     -print-boolean-3230-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3230-join  
        Label        -print-boolean-3230-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3230-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3231-arg1        
        PushI        21                        
        PushI        84                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3231-arg2        
        PushI        39                        
        PushI        50                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3231-sub         
        Subtract                               
        JumpFalse    -compare-3231-true        
        Jump         -compare-3231-false       
        Label        -compare-3231-true        
        PushI        1                         
        Jump         -compare-3231-join        
        Label        -compare-3231-false       
        PushI        0                         
        Jump         -compare-3231-join        
        Label        -compare-3231-join        
        JumpTrue     -print-boolean-3232-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3232-join  
        Label        -print-boolean-3232-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3232-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3233-arg1        
        PushI        93                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3233-arg2        
        PushI        56                        
        PushI        54                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3233-sub         
        Subtract                               
        JumpFalse    -compare-3233-true        
        Jump         -compare-3233-false       
        Label        -compare-3233-true        
        PushI        1                         
        Jump         -compare-3233-join        
        Label        -compare-3233-false       
        PushI        0                         
        Jump         -compare-3233-join        
        Label        -compare-3233-join        
        JumpTrue     -print-boolean-3234-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3234-join  
        Label        -print-boolean-3234-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3234-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3235-arg1        
        PushI        30                        
        PushI        89                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3235-arg2        
        PushI        24                        
        PushI        75                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3235-sub         
        Subtract                               
        JumpFalse    -compare-3235-true        
        Jump         -compare-3235-false       
        Label        -compare-3235-true        
        PushI        1                         
        Jump         -compare-3235-join        
        Label        -compare-3235-false       
        PushI        0                         
        Jump         -compare-3235-join        
        Label        -compare-3235-join        
        JumpTrue     -print-boolean-3236-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3236-join  
        Label        -print-boolean-3236-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3236-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3237-arg1        
        PushI        56                        
        PushI        25                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3237-arg2        
        PushI        88                        
        PushI        29                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3237-sub         
        Subtract                               
        JumpFalse    -compare-3237-true        
        Jump         -compare-3237-false       
        Label        -compare-3237-true        
        PushI        1                         
        Jump         -compare-3237-join        
        Label        -compare-3237-false       
        PushI        0                         
        Jump         -compare-3237-join        
        Label        -compare-3237-join        
        JumpTrue     -print-boolean-3238-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3238-join  
        Label        -print-boolean-3238-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3238-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3239-arg1        
        PushI        94                        
        PushI        20                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3239-arg2        
        PushI        34                        
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3239-sub         
        Subtract                               
        JumpFalse    -compare-3239-true        
        Jump         -compare-3239-false       
        Label        -compare-3239-true        
        PushI        1                         
        Jump         -compare-3239-join        
        Label        -compare-3239-false       
        PushI        0                         
        Jump         -compare-3239-join        
        Label        -compare-3239-join        
        JumpTrue     -print-boolean-3240-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3240-join  
        Label        -print-boolean-3240-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3240-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
