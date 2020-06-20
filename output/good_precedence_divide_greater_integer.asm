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
        Label        -compare-3313-arg1        
        PushI        2                         
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3313-arg2        
        PushI        49                        
        Label        -compare-3313-sub         
        Subtract                               
        JumpPos      -compare-3313-true        
        Jump         -compare-3313-false       
        Label        -compare-3313-true        
        PushI        1                         
        Jump         -compare-3313-join        
        Label        -compare-3313-false       
        PushI        0                         
        Jump         -compare-3313-join        
        Label        -compare-3313-join        
        JumpTrue     -print-boolean-3314-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3314-join  
        Label        -print-boolean-3314-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3314-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3315-arg1        
        PushI        79                        
        PushI        35                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3315-arg2        
        PushI        32                        
        Label        -compare-3315-sub         
        Subtract                               
        JumpPos      -compare-3315-true        
        Jump         -compare-3315-false       
        Label        -compare-3315-true        
        PushI        1                         
        Jump         -compare-3315-join        
        Label        -compare-3315-false       
        PushI        0                         
        Jump         -compare-3315-join        
        Label        -compare-3315-join        
        JumpTrue     -print-boolean-3316-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3316-join  
        Label        -print-boolean-3316-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3316-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3317-arg1        
        PushI        77                        
        PushI        44                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3317-arg2        
        PushI        35                        
        Label        -compare-3317-sub         
        Subtract                               
        JumpPos      -compare-3317-true        
        Jump         -compare-3317-false       
        Label        -compare-3317-true        
        PushI        1                         
        Jump         -compare-3317-join        
        Label        -compare-3317-false       
        PushI        0                         
        Jump         -compare-3317-join        
        Label        -compare-3317-join        
        JumpTrue     -print-boolean-3318-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3318-join  
        Label        -print-boolean-3318-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3318-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3319-arg1        
        PushI        42                        
        PushI        52                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3319-arg2        
        PushI        13                        
        Label        -compare-3319-sub         
        Subtract                               
        JumpPos      -compare-3319-true        
        Jump         -compare-3319-false       
        Label        -compare-3319-true        
        PushI        1                         
        Jump         -compare-3319-join        
        Label        -compare-3319-false       
        PushI        0                         
        Jump         -compare-3319-join        
        Label        -compare-3319-join        
        JumpTrue     -print-boolean-3320-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3320-join  
        Label        -print-boolean-3320-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3320-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3321-arg1        
        PushI        82                        
        PushI        29                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3321-arg2        
        PushI        1                         
        Label        -compare-3321-sub         
        Subtract                               
        JumpPos      -compare-3321-true        
        Jump         -compare-3321-false       
        Label        -compare-3321-true        
        PushI        1                         
        Jump         -compare-3321-join        
        Label        -compare-3321-false       
        PushI        0                         
        Jump         -compare-3321-join        
        Label        -compare-3321-join        
        JumpTrue     -print-boolean-3322-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3322-join  
        Label        -print-boolean-3322-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3322-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3323-arg1        
        PushI        1                         
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3323-arg2        
        PushI        25                        
        Label        -compare-3323-sub         
        Subtract                               
        JumpPos      -compare-3323-true        
        Jump         -compare-3323-false       
        Label        -compare-3323-true        
        PushI        1                         
        Jump         -compare-3323-join        
        Label        -compare-3323-false       
        PushI        0                         
        Jump         -compare-3323-join        
        Label        -compare-3323-join        
        JumpTrue     -print-boolean-3324-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3324-join  
        Label        -print-boolean-3324-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3324-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3325-arg1        
        PushI        1                         
        PushI        27                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3325-arg2        
        PushI        95                        
        Label        -compare-3325-sub         
        Subtract                               
        JumpPos      -compare-3325-true        
        Jump         -compare-3325-false       
        Label        -compare-3325-true        
        PushI        1                         
        Jump         -compare-3325-join        
        Label        -compare-3325-false       
        PushI        0                         
        Jump         -compare-3325-join        
        Label        -compare-3325-join        
        JumpTrue     -print-boolean-3326-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3326-join  
        Label        -print-boolean-3326-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3326-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3327-arg1        
        PushI        74                        
        PushI        40                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3327-arg2        
        PushI        50                        
        Label        -compare-3327-sub         
        Subtract                               
        JumpPos      -compare-3327-true        
        Jump         -compare-3327-false       
        Label        -compare-3327-true        
        PushI        1                         
        Jump         -compare-3327-join        
        Label        -compare-3327-false       
        PushI        0                         
        Jump         -compare-3327-join        
        Label        -compare-3327-join        
        JumpTrue     -print-boolean-3328-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3328-join  
        Label        -print-boolean-3328-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3328-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3329-arg1        
        PushI        61                        
        PushI        56                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3329-arg2        
        PushI        31                        
        Label        -compare-3329-sub         
        Subtract                               
        JumpPos      -compare-3329-true        
        Jump         -compare-3329-false       
        Label        -compare-3329-true        
        PushI        1                         
        Jump         -compare-3329-join        
        Label        -compare-3329-false       
        PushI        0                         
        Jump         -compare-3329-join        
        Label        -compare-3329-join        
        JumpTrue     -print-boolean-3330-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3330-join  
        Label        -print-boolean-3330-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3330-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3331-arg1        
        PushI        21                        
        PushI        29                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3331-arg2        
        PushI        32                        
        Label        -compare-3331-sub         
        Subtract                               
        JumpPos      -compare-3331-true        
        Jump         -compare-3331-false       
        Label        -compare-3331-true        
        PushI        1                         
        Jump         -compare-3331-join        
        Label        -compare-3331-false       
        PushI        0                         
        Jump         -compare-3331-join        
        Label        -compare-3331-join        
        JumpTrue     -print-boolean-3332-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3332-join  
        Label        -print-boolean-3332-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3332-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3333-arg1        
        PushI        94                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3333-arg2        
        PushI        20                        
        Label        -compare-3333-sub         
        Subtract                               
        JumpPos      -compare-3333-true        
        Jump         -compare-3333-false       
        Label        -compare-3333-true        
        PushI        1                         
        Jump         -compare-3333-join        
        Label        -compare-3333-false       
        PushI        0                         
        Jump         -compare-3333-join        
        Label        -compare-3333-join        
        JumpTrue     -print-boolean-3334-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3334-join  
        Label        -print-boolean-3334-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3334-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3335-arg1        
        PushI        60                        
        PushI        17                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3335-arg2        
        PushI        21                        
        Label        -compare-3335-sub         
        Subtract                               
        JumpPos      -compare-3335-true        
        Jump         -compare-3335-false       
        Label        -compare-3335-true        
        PushI        1                         
        Jump         -compare-3335-join        
        Label        -compare-3335-false       
        PushI        0                         
        Jump         -compare-3335-join        
        Label        -compare-3335-join        
        JumpTrue     -print-boolean-3336-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3336-join  
        Label        -print-boolean-3336-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3336-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3337-arg1        
        PushI        61                        
        Label        -compare-3337-arg2        
        PushI        1                         
        PushI        9                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3337-sub         
        Subtract                               
        JumpPos      -compare-3337-true        
        Jump         -compare-3337-false       
        Label        -compare-3337-true        
        PushI        1                         
        Jump         -compare-3337-join        
        Label        -compare-3337-false       
        PushI        0                         
        Jump         -compare-3337-join        
        Label        -compare-3337-join        
        JumpTrue     -print-boolean-3338-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3338-join  
        Label        -print-boolean-3338-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3338-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3339-arg1        
        PushI        26                        
        Label        -compare-3339-arg2        
        PushI        45                        
        PushI        8                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3339-sub         
        Subtract                               
        JumpPos      -compare-3339-true        
        Jump         -compare-3339-false       
        Label        -compare-3339-true        
        PushI        1                         
        Jump         -compare-3339-join        
        Label        -compare-3339-false       
        PushI        0                         
        Jump         -compare-3339-join        
        Label        -compare-3339-join        
        JumpTrue     -print-boolean-3340-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3340-join  
        Label        -print-boolean-3340-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3340-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3341-arg1        
        PushI        97                        
        Label        -compare-3341-arg2        
        PushI        84                        
        PushI        12                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3341-sub         
        Subtract                               
        JumpPos      -compare-3341-true        
        Jump         -compare-3341-false       
        Label        -compare-3341-true        
        PushI        1                         
        Jump         -compare-3341-join        
        Label        -compare-3341-false       
        PushI        0                         
        Jump         -compare-3341-join        
        Label        -compare-3341-join        
        JumpTrue     -print-boolean-3342-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3342-join  
        Label        -print-boolean-3342-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3342-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3343-arg1        
        PushI        48                        
        Label        -compare-3343-arg2        
        PushI        86                        
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3343-sub         
        Subtract                               
        JumpPos      -compare-3343-true        
        Jump         -compare-3343-false       
        Label        -compare-3343-true        
        PushI        1                         
        Jump         -compare-3343-join        
        Label        -compare-3343-false       
        PushI        0                         
        Jump         -compare-3343-join        
        Label        -compare-3343-join        
        JumpTrue     -print-boolean-3344-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3344-join  
        Label        -print-boolean-3344-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3344-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3345-arg1        
        PushI        99                        
        Label        -compare-3345-arg2        
        PushI        16                        
        PushI        40                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3345-sub         
        Subtract                               
        JumpPos      -compare-3345-true        
        Jump         -compare-3345-false       
        Label        -compare-3345-true        
        PushI        1                         
        Jump         -compare-3345-join        
        Label        -compare-3345-false       
        PushI        0                         
        Jump         -compare-3345-join        
        Label        -compare-3345-join        
        JumpTrue     -print-boolean-3346-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3346-join  
        Label        -print-boolean-3346-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3346-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3347-arg1        
        PushI        55                        
        Label        -compare-3347-arg2        
        PushI        46                        
        PushI        50                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3347-sub         
        Subtract                               
        JumpPos      -compare-3347-true        
        Jump         -compare-3347-false       
        Label        -compare-3347-true        
        PushI        1                         
        Jump         -compare-3347-join        
        Label        -compare-3347-false       
        PushI        0                         
        Jump         -compare-3347-join        
        Label        -compare-3347-join        
        JumpTrue     -print-boolean-3348-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3348-join  
        Label        -print-boolean-3348-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3348-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3349-arg1        
        PushI        34                        
        Label        -compare-3349-arg2        
        PushI        31                        
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3349-sub         
        Subtract                               
        JumpPos      -compare-3349-true        
        Jump         -compare-3349-false       
        Label        -compare-3349-true        
        PushI        1                         
        Jump         -compare-3349-join        
        Label        -compare-3349-false       
        PushI        0                         
        Jump         -compare-3349-join        
        Label        -compare-3349-join        
        JumpTrue     -print-boolean-3350-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3350-join  
        Label        -print-boolean-3350-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3350-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3351-arg1        
        PushI        40                        
        Label        -compare-3351-arg2        
        PushI        48                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3351-sub         
        Subtract                               
        JumpPos      -compare-3351-true        
        Jump         -compare-3351-false       
        Label        -compare-3351-true        
        PushI        1                         
        Jump         -compare-3351-join        
        Label        -compare-3351-false       
        PushI        0                         
        Jump         -compare-3351-join        
        Label        -compare-3351-join        
        JumpTrue     -print-boolean-3352-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3352-join  
        Label        -print-boolean-3352-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3352-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3353-arg1        
        PushI        22                        
        Label        -compare-3353-arg2        
        PushI        44                        
        PushI        68                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3353-sub         
        Subtract                               
        JumpPos      -compare-3353-true        
        Jump         -compare-3353-false       
        Label        -compare-3353-true        
        PushI        1                         
        Jump         -compare-3353-join        
        Label        -compare-3353-false       
        PushI        0                         
        Jump         -compare-3353-join        
        Label        -compare-3353-join        
        JumpTrue     -print-boolean-3354-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3354-join  
        Label        -print-boolean-3354-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3354-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3355-arg1        
        PushI        97                        
        Label        -compare-3355-arg2        
        PushI        56                        
        PushI        1                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3355-sub         
        Subtract                               
        JumpPos      -compare-3355-true        
        Jump         -compare-3355-false       
        Label        -compare-3355-true        
        PushI        1                         
        Jump         -compare-3355-join        
        Label        -compare-3355-false       
        PushI        0                         
        Jump         -compare-3355-join        
        Label        -compare-3355-join        
        JumpTrue     -print-boolean-3356-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3356-join  
        Label        -print-boolean-3356-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3356-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3357-arg1        
        PushI        6                         
        Label        -compare-3357-arg2        
        PushI        26                        
        PushI        2                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3357-sub         
        Subtract                               
        JumpPos      -compare-3357-true        
        Jump         -compare-3357-false       
        Label        -compare-3357-true        
        PushI        1                         
        Jump         -compare-3357-join        
        Label        -compare-3357-false       
        PushI        0                         
        Jump         -compare-3357-join        
        Label        -compare-3357-join        
        JumpTrue     -print-boolean-3358-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3358-join  
        Label        -print-boolean-3358-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3358-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3359-arg1        
        PushI        19                        
        Label        -compare-3359-arg2        
        PushI        23                        
        PushI        27                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3359-sub         
        Subtract                               
        JumpPos      -compare-3359-true        
        Jump         -compare-3359-false       
        Label        -compare-3359-true        
        PushI        1                         
        Jump         -compare-3359-join        
        Label        -compare-3359-false       
        PushI        0                         
        Jump         -compare-3359-join        
        Label        -compare-3359-join        
        JumpTrue     -print-boolean-3360-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3360-join  
        Label        -print-boolean-3360-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3360-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3361-arg1        
        PushI        25                        
        PushI        22                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3361-arg2        
        PushI        47                        
        PushI        37                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3361-sub         
        Subtract                               
        JumpPos      -compare-3361-true        
        Jump         -compare-3361-false       
        Label        -compare-3361-true        
        PushI        1                         
        Jump         -compare-3361-join        
        Label        -compare-3361-false       
        PushI        0                         
        Jump         -compare-3361-join        
        Label        -compare-3361-join        
        JumpTrue     -print-boolean-3362-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3362-join  
        Label        -print-boolean-3362-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3362-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3363-arg1        
        PushI        21                        
        PushI        3                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3363-arg2        
        PushI        36                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3363-sub         
        Subtract                               
        JumpPos      -compare-3363-true        
        Jump         -compare-3363-false       
        Label        -compare-3363-true        
        PushI        1                         
        Jump         -compare-3363-join        
        Label        -compare-3363-false       
        PushI        0                         
        Jump         -compare-3363-join        
        Label        -compare-3363-join        
        JumpTrue     -print-boolean-3364-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3364-join  
        Label        -print-boolean-3364-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3364-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3365-arg1        
        PushI        74                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3365-arg2        
        PushI        91                        
        PushI        56                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3365-sub         
        Subtract                               
        JumpPos      -compare-3365-true        
        Jump         -compare-3365-false       
        Label        -compare-3365-true        
        PushI        1                         
        Jump         -compare-3365-join        
        Label        -compare-3365-false       
        PushI        0                         
        Jump         -compare-3365-join        
        Label        -compare-3365-join        
        JumpTrue     -print-boolean-3366-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3366-join  
        Label        -print-boolean-3366-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3366-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3367-arg1        
        PushI        78                        
        PushI        75                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3367-arg2        
        PushI        50                        
        PushI        87                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3367-sub         
        Subtract                               
        JumpPos      -compare-3367-true        
        Jump         -compare-3367-false       
        Label        -compare-3367-true        
        PushI        1                         
        Jump         -compare-3367-join        
        Label        -compare-3367-false       
        PushI        0                         
        Jump         -compare-3367-join        
        Label        -compare-3367-join        
        JumpTrue     -print-boolean-3368-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3368-join  
        Label        -print-boolean-3368-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3368-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3369-arg1        
        PushI        8                         
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3369-arg2        
        PushI        7                         
        PushI        99                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3369-sub         
        Subtract                               
        JumpPos      -compare-3369-true        
        Jump         -compare-3369-false       
        Label        -compare-3369-true        
        PushI        1                         
        Jump         -compare-3369-join        
        Label        -compare-3369-false       
        PushI        0                         
        Jump         -compare-3369-join        
        Label        -compare-3369-join        
        JumpTrue     -print-boolean-3370-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3370-join  
        Label        -print-boolean-3370-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3370-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3371-arg1        
        PushI        99                        
        PushI        82                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3371-arg2        
        PushI        66                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3371-sub         
        Subtract                               
        JumpPos      -compare-3371-true        
        Jump         -compare-3371-false       
        Label        -compare-3371-true        
        PushI        1                         
        Jump         -compare-3371-join        
        Label        -compare-3371-false       
        PushI        0                         
        Jump         -compare-3371-join        
        Label        -compare-3371-join        
        JumpTrue     -print-boolean-3372-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3372-join  
        Label        -print-boolean-3372-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3372-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3373-arg1        
        PushI        28                        
        PushI        85                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3373-arg2        
        PushI        97                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3373-sub         
        Subtract                               
        JumpPos      -compare-3373-true        
        Jump         -compare-3373-false       
        Label        -compare-3373-true        
        PushI        1                         
        Jump         -compare-3373-join        
        Label        -compare-3373-false       
        PushI        0                         
        Jump         -compare-3373-join        
        Label        -compare-3373-join        
        JumpTrue     -print-boolean-3374-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3374-join  
        Label        -print-boolean-3374-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3374-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3375-arg1        
        PushI        59                        
        PushI        48                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3375-arg2        
        PushI        29                        
        PushI        76                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3375-sub         
        Subtract                               
        JumpPos      -compare-3375-true        
        Jump         -compare-3375-false       
        Label        -compare-3375-true        
        PushI        1                         
        Jump         -compare-3375-join        
        Label        -compare-3375-false       
        PushI        0                         
        Jump         -compare-3375-join        
        Label        -compare-3375-join        
        JumpTrue     -print-boolean-3376-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3376-join  
        Label        -print-boolean-3376-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3376-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3377-arg1        
        PushI        5                         
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3377-arg2        
        PushI        19                        
        PushI        41                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3377-sub         
        Subtract                               
        JumpPos      -compare-3377-true        
        Jump         -compare-3377-false       
        Label        -compare-3377-true        
        PushI        1                         
        Jump         -compare-3377-join        
        Label        -compare-3377-false       
        PushI        0                         
        Jump         -compare-3377-join        
        Label        -compare-3377-join        
        JumpTrue     -print-boolean-3378-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3378-join  
        Label        -print-boolean-3378-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3378-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3379-arg1        
        PushI        60                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3379-arg2        
        PushI        68                        
        PushI        63                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3379-sub         
        Subtract                               
        JumpPos      -compare-3379-true        
        Jump         -compare-3379-false       
        Label        -compare-3379-true        
        PushI        1                         
        Jump         -compare-3379-join        
        Label        -compare-3379-false       
        PushI        0                         
        Jump         -compare-3379-join        
        Label        -compare-3379-join        
        JumpTrue     -print-boolean-3380-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3380-join  
        Label        -print-boolean-3380-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3380-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3381-arg1        
        PushI        29                        
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3381-arg2        
        PushI        65                        
        PushI        81                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3381-sub         
        Subtract                               
        JumpPos      -compare-3381-true        
        Jump         -compare-3381-false       
        Label        -compare-3381-true        
        PushI        1                         
        Jump         -compare-3381-join        
        Label        -compare-3381-false       
        PushI        0                         
        Jump         -compare-3381-join        
        Label        -compare-3381-join        
        JumpTrue     -print-boolean-3382-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3382-join  
        Label        -print-boolean-3382-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3382-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3383-arg1        
        PushI        58                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3383-arg2        
        PushI        31                        
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3383-sub         
        Subtract                               
        JumpPos      -compare-3383-true        
        Jump         -compare-3383-false       
        Label        -compare-3383-true        
        PushI        1                         
        Jump         -compare-3383-join        
        Label        -compare-3383-false       
        PushI        0                         
        Jump         -compare-3383-join        
        Label        -compare-3383-join        
        JumpTrue     -print-boolean-3384-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3384-join  
        Label        -print-boolean-3384-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3384-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
