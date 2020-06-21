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
        Label        -compare-3326-arg1        
        PushI        2                         
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3326-arg2        
        PushI        49                        
        Label        -compare-3326-sub         
        Subtract                               
        JumpPos      -compare-3326-true        
        Jump         -compare-3326-false       
        Label        -compare-3326-true        
        PushI        1                         
        Jump         -compare-3326-join        
        Label        -compare-3326-false       
        PushI        0                         
        Jump         -compare-3326-join        
        Label        -compare-3326-join        
        JumpTrue     -print-boolean-3327-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3327-join  
        Label        -print-boolean-3327-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3327-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3328-arg1        
        PushI        79                        
        PushI        35                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3328-arg2        
        PushI        32                        
        Label        -compare-3328-sub         
        Subtract                               
        JumpPos      -compare-3328-true        
        Jump         -compare-3328-false       
        Label        -compare-3328-true        
        PushI        1                         
        Jump         -compare-3328-join        
        Label        -compare-3328-false       
        PushI        0                         
        Jump         -compare-3328-join        
        Label        -compare-3328-join        
        JumpTrue     -print-boolean-3329-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3329-join  
        Label        -print-boolean-3329-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3329-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3330-arg1        
        PushI        77                        
        PushI        44                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3330-arg2        
        PushI        35                        
        Label        -compare-3330-sub         
        Subtract                               
        JumpPos      -compare-3330-true        
        Jump         -compare-3330-false       
        Label        -compare-3330-true        
        PushI        1                         
        Jump         -compare-3330-join        
        Label        -compare-3330-false       
        PushI        0                         
        Jump         -compare-3330-join        
        Label        -compare-3330-join        
        JumpTrue     -print-boolean-3331-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3331-join  
        Label        -print-boolean-3331-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3331-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3332-arg1        
        PushI        42                        
        PushI        52                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3332-arg2        
        PushI        13                        
        Label        -compare-3332-sub         
        Subtract                               
        JumpPos      -compare-3332-true        
        Jump         -compare-3332-false       
        Label        -compare-3332-true        
        PushI        1                         
        Jump         -compare-3332-join        
        Label        -compare-3332-false       
        PushI        0                         
        Jump         -compare-3332-join        
        Label        -compare-3332-join        
        JumpTrue     -print-boolean-3333-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3333-join  
        Label        -print-boolean-3333-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3333-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3334-arg1        
        PushI        82                        
        PushI        29                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3334-arg2        
        PushI        1                         
        Label        -compare-3334-sub         
        Subtract                               
        JumpPos      -compare-3334-true        
        Jump         -compare-3334-false       
        Label        -compare-3334-true        
        PushI        1                         
        Jump         -compare-3334-join        
        Label        -compare-3334-false       
        PushI        0                         
        Jump         -compare-3334-join        
        Label        -compare-3334-join        
        JumpTrue     -print-boolean-3335-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3335-join  
        Label        -print-boolean-3335-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3335-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3336-arg1        
        PushI        1                         
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3336-arg2        
        PushI        25                        
        Label        -compare-3336-sub         
        Subtract                               
        JumpPos      -compare-3336-true        
        Jump         -compare-3336-false       
        Label        -compare-3336-true        
        PushI        1                         
        Jump         -compare-3336-join        
        Label        -compare-3336-false       
        PushI        0                         
        Jump         -compare-3336-join        
        Label        -compare-3336-join        
        JumpTrue     -print-boolean-3337-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3337-join  
        Label        -print-boolean-3337-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3337-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3338-arg1        
        PushI        1                         
        PushI        27                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3338-arg2        
        PushI        95                        
        Label        -compare-3338-sub         
        Subtract                               
        JumpPos      -compare-3338-true        
        Jump         -compare-3338-false       
        Label        -compare-3338-true        
        PushI        1                         
        Jump         -compare-3338-join        
        Label        -compare-3338-false       
        PushI        0                         
        Jump         -compare-3338-join        
        Label        -compare-3338-join        
        JumpTrue     -print-boolean-3339-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3339-join  
        Label        -print-boolean-3339-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3339-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3340-arg1        
        PushI        74                        
        PushI        40                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3340-arg2        
        PushI        50                        
        Label        -compare-3340-sub         
        Subtract                               
        JumpPos      -compare-3340-true        
        Jump         -compare-3340-false       
        Label        -compare-3340-true        
        PushI        1                         
        Jump         -compare-3340-join        
        Label        -compare-3340-false       
        PushI        0                         
        Jump         -compare-3340-join        
        Label        -compare-3340-join        
        JumpTrue     -print-boolean-3341-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3341-join  
        Label        -print-boolean-3341-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3341-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3342-arg1        
        PushI        61                        
        PushI        56                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3342-arg2        
        PushI        31                        
        Label        -compare-3342-sub         
        Subtract                               
        JumpPos      -compare-3342-true        
        Jump         -compare-3342-false       
        Label        -compare-3342-true        
        PushI        1                         
        Jump         -compare-3342-join        
        Label        -compare-3342-false       
        PushI        0                         
        Jump         -compare-3342-join        
        Label        -compare-3342-join        
        JumpTrue     -print-boolean-3343-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3343-join  
        Label        -print-boolean-3343-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3343-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3344-arg1        
        PushI        21                        
        PushI        29                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3344-arg2        
        PushI        32                        
        Label        -compare-3344-sub         
        Subtract                               
        JumpPos      -compare-3344-true        
        Jump         -compare-3344-false       
        Label        -compare-3344-true        
        PushI        1                         
        Jump         -compare-3344-join        
        Label        -compare-3344-false       
        PushI        0                         
        Jump         -compare-3344-join        
        Label        -compare-3344-join        
        JumpTrue     -print-boolean-3345-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3345-join  
        Label        -print-boolean-3345-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3345-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3346-arg1        
        PushI        94                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3346-arg2        
        PushI        20                        
        Label        -compare-3346-sub         
        Subtract                               
        JumpPos      -compare-3346-true        
        Jump         -compare-3346-false       
        Label        -compare-3346-true        
        PushI        1                         
        Jump         -compare-3346-join        
        Label        -compare-3346-false       
        PushI        0                         
        Jump         -compare-3346-join        
        Label        -compare-3346-join        
        JumpTrue     -print-boolean-3347-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3347-join  
        Label        -print-boolean-3347-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3347-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3348-arg1        
        PushI        60                        
        PushI        17                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3348-arg2        
        PushI        21                        
        Label        -compare-3348-sub         
        Subtract                               
        JumpPos      -compare-3348-true        
        Jump         -compare-3348-false       
        Label        -compare-3348-true        
        PushI        1                         
        Jump         -compare-3348-join        
        Label        -compare-3348-false       
        PushI        0                         
        Jump         -compare-3348-join        
        Label        -compare-3348-join        
        JumpTrue     -print-boolean-3349-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3349-join  
        Label        -print-boolean-3349-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3349-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3350-arg1        
        PushI        61                        
        Label        -compare-3350-arg2        
        PushI        1                         
        PushI        9                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3350-sub         
        Subtract                               
        JumpPos      -compare-3350-true        
        Jump         -compare-3350-false       
        Label        -compare-3350-true        
        PushI        1                         
        Jump         -compare-3350-join        
        Label        -compare-3350-false       
        PushI        0                         
        Jump         -compare-3350-join        
        Label        -compare-3350-join        
        JumpTrue     -print-boolean-3351-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3351-join  
        Label        -print-boolean-3351-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3351-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3352-arg1        
        PushI        26                        
        Label        -compare-3352-arg2        
        PushI        45                        
        PushI        8                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3352-sub         
        Subtract                               
        JumpPos      -compare-3352-true        
        Jump         -compare-3352-false       
        Label        -compare-3352-true        
        PushI        1                         
        Jump         -compare-3352-join        
        Label        -compare-3352-false       
        PushI        0                         
        Jump         -compare-3352-join        
        Label        -compare-3352-join        
        JumpTrue     -print-boolean-3353-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3353-join  
        Label        -print-boolean-3353-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3353-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3354-arg1        
        PushI        97                        
        Label        -compare-3354-arg2        
        PushI        84                        
        PushI        12                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3354-sub         
        Subtract                               
        JumpPos      -compare-3354-true        
        Jump         -compare-3354-false       
        Label        -compare-3354-true        
        PushI        1                         
        Jump         -compare-3354-join        
        Label        -compare-3354-false       
        PushI        0                         
        Jump         -compare-3354-join        
        Label        -compare-3354-join        
        JumpTrue     -print-boolean-3355-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3355-join  
        Label        -print-boolean-3355-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3355-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3356-arg1        
        PushI        48                        
        Label        -compare-3356-arg2        
        PushI        86                        
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3356-sub         
        Subtract                               
        JumpPos      -compare-3356-true        
        Jump         -compare-3356-false       
        Label        -compare-3356-true        
        PushI        1                         
        Jump         -compare-3356-join        
        Label        -compare-3356-false       
        PushI        0                         
        Jump         -compare-3356-join        
        Label        -compare-3356-join        
        JumpTrue     -print-boolean-3357-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3357-join  
        Label        -print-boolean-3357-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3357-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3358-arg1        
        PushI        99                        
        Label        -compare-3358-arg2        
        PushI        16                        
        PushI        40                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3358-sub         
        Subtract                               
        JumpPos      -compare-3358-true        
        Jump         -compare-3358-false       
        Label        -compare-3358-true        
        PushI        1                         
        Jump         -compare-3358-join        
        Label        -compare-3358-false       
        PushI        0                         
        Jump         -compare-3358-join        
        Label        -compare-3358-join        
        JumpTrue     -print-boolean-3359-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3359-join  
        Label        -print-boolean-3359-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3359-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3360-arg1        
        PushI        55                        
        Label        -compare-3360-arg2        
        PushI        46                        
        PushI        50                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3360-sub         
        Subtract                               
        JumpPos      -compare-3360-true        
        Jump         -compare-3360-false       
        Label        -compare-3360-true        
        PushI        1                         
        Jump         -compare-3360-join        
        Label        -compare-3360-false       
        PushI        0                         
        Jump         -compare-3360-join        
        Label        -compare-3360-join        
        JumpTrue     -print-boolean-3361-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3361-join  
        Label        -print-boolean-3361-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3361-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3362-arg1        
        PushI        34                        
        Label        -compare-3362-arg2        
        PushI        31                        
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3362-sub         
        Subtract                               
        JumpPos      -compare-3362-true        
        Jump         -compare-3362-false       
        Label        -compare-3362-true        
        PushI        1                         
        Jump         -compare-3362-join        
        Label        -compare-3362-false       
        PushI        0                         
        Jump         -compare-3362-join        
        Label        -compare-3362-join        
        JumpTrue     -print-boolean-3363-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3363-join  
        Label        -print-boolean-3363-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3363-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3364-arg1        
        PushI        40                        
        Label        -compare-3364-arg2        
        PushI        48                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3364-sub         
        Subtract                               
        JumpPos      -compare-3364-true        
        Jump         -compare-3364-false       
        Label        -compare-3364-true        
        PushI        1                         
        Jump         -compare-3364-join        
        Label        -compare-3364-false       
        PushI        0                         
        Jump         -compare-3364-join        
        Label        -compare-3364-join        
        JumpTrue     -print-boolean-3365-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3365-join  
        Label        -print-boolean-3365-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3365-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3366-arg1        
        PushI        22                        
        Label        -compare-3366-arg2        
        PushI        44                        
        PushI        68                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3366-sub         
        Subtract                               
        JumpPos      -compare-3366-true        
        Jump         -compare-3366-false       
        Label        -compare-3366-true        
        PushI        1                         
        Jump         -compare-3366-join        
        Label        -compare-3366-false       
        PushI        0                         
        Jump         -compare-3366-join        
        Label        -compare-3366-join        
        JumpTrue     -print-boolean-3367-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3367-join  
        Label        -print-boolean-3367-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3367-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3368-arg1        
        PushI        97                        
        Label        -compare-3368-arg2        
        PushI        56                        
        PushI        1                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3368-sub         
        Subtract                               
        JumpPos      -compare-3368-true        
        Jump         -compare-3368-false       
        Label        -compare-3368-true        
        PushI        1                         
        Jump         -compare-3368-join        
        Label        -compare-3368-false       
        PushI        0                         
        Jump         -compare-3368-join        
        Label        -compare-3368-join        
        JumpTrue     -print-boolean-3369-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3369-join  
        Label        -print-boolean-3369-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3369-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3370-arg1        
        PushI        6                         
        Label        -compare-3370-arg2        
        PushI        26                        
        PushI        2                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3370-sub         
        Subtract                               
        JumpPos      -compare-3370-true        
        Jump         -compare-3370-false       
        Label        -compare-3370-true        
        PushI        1                         
        Jump         -compare-3370-join        
        Label        -compare-3370-false       
        PushI        0                         
        Jump         -compare-3370-join        
        Label        -compare-3370-join        
        JumpTrue     -print-boolean-3371-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3371-join  
        Label        -print-boolean-3371-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3371-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3372-arg1        
        PushI        19                        
        Label        -compare-3372-arg2        
        PushI        23                        
        PushI        27                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3372-sub         
        Subtract                               
        JumpPos      -compare-3372-true        
        Jump         -compare-3372-false       
        Label        -compare-3372-true        
        PushI        1                         
        Jump         -compare-3372-join        
        Label        -compare-3372-false       
        PushI        0                         
        Jump         -compare-3372-join        
        Label        -compare-3372-join        
        JumpTrue     -print-boolean-3373-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3373-join  
        Label        -print-boolean-3373-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3373-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3374-arg1        
        PushI        25                        
        PushI        22                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3374-arg2        
        PushI        47                        
        PushI        37                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3374-sub         
        Subtract                               
        JumpPos      -compare-3374-true        
        Jump         -compare-3374-false       
        Label        -compare-3374-true        
        PushI        1                         
        Jump         -compare-3374-join        
        Label        -compare-3374-false       
        PushI        0                         
        Jump         -compare-3374-join        
        Label        -compare-3374-join        
        JumpTrue     -print-boolean-3375-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3375-join  
        Label        -print-boolean-3375-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3375-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3376-arg1        
        PushI        21                        
        PushI        3                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3376-arg2        
        PushI        36                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3376-sub         
        Subtract                               
        JumpPos      -compare-3376-true        
        Jump         -compare-3376-false       
        Label        -compare-3376-true        
        PushI        1                         
        Jump         -compare-3376-join        
        Label        -compare-3376-false       
        PushI        0                         
        Jump         -compare-3376-join        
        Label        -compare-3376-join        
        JumpTrue     -print-boolean-3377-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3377-join  
        Label        -print-boolean-3377-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3377-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3378-arg1        
        PushI        74                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3378-arg2        
        PushI        91                        
        PushI        56                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3378-sub         
        Subtract                               
        JumpPos      -compare-3378-true        
        Jump         -compare-3378-false       
        Label        -compare-3378-true        
        PushI        1                         
        Jump         -compare-3378-join        
        Label        -compare-3378-false       
        PushI        0                         
        Jump         -compare-3378-join        
        Label        -compare-3378-join        
        JumpTrue     -print-boolean-3379-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3379-join  
        Label        -print-boolean-3379-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3379-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3380-arg1        
        PushI        78                        
        PushI        75                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3380-arg2        
        PushI        50                        
        PushI        87                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3380-sub         
        Subtract                               
        JumpPos      -compare-3380-true        
        Jump         -compare-3380-false       
        Label        -compare-3380-true        
        PushI        1                         
        Jump         -compare-3380-join        
        Label        -compare-3380-false       
        PushI        0                         
        Jump         -compare-3380-join        
        Label        -compare-3380-join        
        JumpTrue     -print-boolean-3381-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3381-join  
        Label        -print-boolean-3381-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3381-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3382-arg1        
        PushI        8                         
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3382-arg2        
        PushI        7                         
        PushI        99                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3382-sub         
        Subtract                               
        JumpPos      -compare-3382-true        
        Jump         -compare-3382-false       
        Label        -compare-3382-true        
        PushI        1                         
        Jump         -compare-3382-join        
        Label        -compare-3382-false       
        PushI        0                         
        Jump         -compare-3382-join        
        Label        -compare-3382-join        
        JumpTrue     -print-boolean-3383-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3383-join  
        Label        -print-boolean-3383-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3383-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3384-arg1        
        PushI        99                        
        PushI        82                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3384-arg2        
        PushI        66                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3384-sub         
        Subtract                               
        JumpPos      -compare-3384-true        
        Jump         -compare-3384-false       
        Label        -compare-3384-true        
        PushI        1                         
        Jump         -compare-3384-join        
        Label        -compare-3384-false       
        PushI        0                         
        Jump         -compare-3384-join        
        Label        -compare-3384-join        
        JumpTrue     -print-boolean-3385-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3385-join  
        Label        -print-boolean-3385-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3385-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3386-arg1        
        PushI        28                        
        PushI        85                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3386-arg2        
        PushI        97                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3386-sub         
        Subtract                               
        JumpPos      -compare-3386-true        
        Jump         -compare-3386-false       
        Label        -compare-3386-true        
        PushI        1                         
        Jump         -compare-3386-join        
        Label        -compare-3386-false       
        PushI        0                         
        Jump         -compare-3386-join        
        Label        -compare-3386-join        
        JumpTrue     -print-boolean-3387-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3387-join  
        Label        -print-boolean-3387-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3387-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3388-arg1        
        PushI        59                        
        PushI        48                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3388-arg2        
        PushI        29                        
        PushI        76                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3388-sub         
        Subtract                               
        JumpPos      -compare-3388-true        
        Jump         -compare-3388-false       
        Label        -compare-3388-true        
        PushI        1                         
        Jump         -compare-3388-join        
        Label        -compare-3388-false       
        PushI        0                         
        Jump         -compare-3388-join        
        Label        -compare-3388-join        
        JumpTrue     -print-boolean-3389-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3389-join  
        Label        -print-boolean-3389-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3389-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3390-arg1        
        PushI        5                         
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3390-arg2        
        PushI        19                        
        PushI        41                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3390-sub         
        Subtract                               
        JumpPos      -compare-3390-true        
        Jump         -compare-3390-false       
        Label        -compare-3390-true        
        PushI        1                         
        Jump         -compare-3390-join        
        Label        -compare-3390-false       
        PushI        0                         
        Jump         -compare-3390-join        
        Label        -compare-3390-join        
        JumpTrue     -print-boolean-3391-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3391-join  
        Label        -print-boolean-3391-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3391-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3392-arg1        
        PushI        60                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3392-arg2        
        PushI        68                        
        PushI        63                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3392-sub         
        Subtract                               
        JumpPos      -compare-3392-true        
        Jump         -compare-3392-false       
        Label        -compare-3392-true        
        PushI        1                         
        Jump         -compare-3392-join        
        Label        -compare-3392-false       
        PushI        0                         
        Jump         -compare-3392-join        
        Label        -compare-3392-join        
        JumpTrue     -print-boolean-3393-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3393-join  
        Label        -print-boolean-3393-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3393-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3394-arg1        
        PushI        29                        
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3394-arg2        
        PushI        65                        
        PushI        81                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3394-sub         
        Subtract                               
        JumpPos      -compare-3394-true        
        Jump         -compare-3394-false       
        Label        -compare-3394-true        
        PushI        1                         
        Jump         -compare-3394-join        
        Label        -compare-3394-false       
        PushI        0                         
        Jump         -compare-3394-join        
        Label        -compare-3394-join        
        JumpTrue     -print-boolean-3395-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3395-join  
        Label        -print-boolean-3395-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3395-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3396-arg1        
        PushI        58                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3396-arg2        
        PushI        31                        
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3396-sub         
        Subtract                               
        JumpPos      -compare-3396-true        
        Jump         -compare-3396-false       
        Label        -compare-3396-true        
        PushI        1                         
        Jump         -compare-3396-join        
        Label        -compare-3396-false       
        PushI        0                         
        Jump         -compare-3396-join        
        Label        -compare-3396-join        
        JumpTrue     -print-boolean-3397-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3397-join  
        Label        -print-boolean-3397-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3397-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
