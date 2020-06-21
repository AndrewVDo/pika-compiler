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
        Label        -compare-3614-arg1        
        PushI        67                        
        PushI        25                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3614-arg2        
        PushI        18                        
        Label        -compare-3614-sub         
        Subtract                               
        JumpNeg      -compare-3614-true        
        Jump         -compare-3614-false       
        Label        -compare-3614-true        
        PushI        1                         
        Jump         -compare-3614-join        
        Label        -compare-3614-false       
        PushI        0                         
        Jump         -compare-3614-join        
        Label        -compare-3614-join        
        JumpTrue     -print-boolean-3615-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3615-join  
        Label        -print-boolean-3615-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3615-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3616-arg1        
        PushI        84                        
        PushI        77                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3616-arg2        
        PushI        53                        
        Label        -compare-3616-sub         
        Subtract                               
        JumpNeg      -compare-3616-true        
        Jump         -compare-3616-false       
        Label        -compare-3616-true        
        PushI        1                         
        Jump         -compare-3616-join        
        Label        -compare-3616-false       
        PushI        0                         
        Jump         -compare-3616-join        
        Label        -compare-3616-join        
        JumpTrue     -print-boolean-3617-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3617-join  
        Label        -print-boolean-3617-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3617-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3618-arg1        
        PushI        95                        
        PushI        45                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3618-arg2        
        PushI        40                        
        Label        -compare-3618-sub         
        Subtract                               
        JumpNeg      -compare-3618-true        
        Jump         -compare-3618-false       
        Label        -compare-3618-true        
        PushI        1                         
        Jump         -compare-3618-join        
        Label        -compare-3618-false       
        PushI        0                         
        Jump         -compare-3618-join        
        Label        -compare-3618-join        
        JumpTrue     -print-boolean-3619-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3619-join  
        Label        -print-boolean-3619-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3619-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3620-arg1        
        PushI        7                         
        PushI        55                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3620-arg2        
        PushI        80                        
        Label        -compare-3620-sub         
        Subtract                               
        JumpNeg      -compare-3620-true        
        Jump         -compare-3620-false       
        Label        -compare-3620-true        
        PushI        1                         
        Jump         -compare-3620-join        
        Label        -compare-3620-false       
        PushI        0                         
        Jump         -compare-3620-join        
        Label        -compare-3620-join        
        JumpTrue     -print-boolean-3621-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3621-join  
        Label        -print-boolean-3621-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3621-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3622-arg1        
        PushI        5                         
        PushI        68                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3622-arg2        
        PushI        7                         
        Label        -compare-3622-sub         
        Subtract                               
        JumpNeg      -compare-3622-true        
        Jump         -compare-3622-false       
        Label        -compare-3622-true        
        PushI        1                         
        Jump         -compare-3622-join        
        Label        -compare-3622-false       
        PushI        0                         
        Jump         -compare-3622-join        
        Label        -compare-3622-join        
        JumpTrue     -print-boolean-3623-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3623-join  
        Label        -print-boolean-3623-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3623-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3624-arg1        
        PushI        38                        
        PushI        48                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3624-arg2        
        PushI        14                        
        Label        -compare-3624-sub         
        Subtract                               
        JumpNeg      -compare-3624-true        
        Jump         -compare-3624-false       
        Label        -compare-3624-true        
        PushI        1                         
        Jump         -compare-3624-join        
        Label        -compare-3624-false       
        PushI        0                         
        Jump         -compare-3624-join        
        Label        -compare-3624-join        
        JumpTrue     -print-boolean-3625-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3625-join  
        Label        -print-boolean-3625-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3625-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3626-arg1        
        PushI        79                        
        PushI        78                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3626-arg2        
        PushI        93                        
        Label        -compare-3626-sub         
        Subtract                               
        JumpNeg      -compare-3626-true        
        Jump         -compare-3626-false       
        Label        -compare-3626-true        
        PushI        1                         
        Jump         -compare-3626-join        
        Label        -compare-3626-false       
        PushI        0                         
        Jump         -compare-3626-join        
        Label        -compare-3626-join        
        JumpTrue     -print-boolean-3627-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3627-join  
        Label        -print-boolean-3627-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3627-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3628-arg1        
        PushI        78                        
        PushI        19                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3628-arg2        
        PushI        38                        
        Label        -compare-3628-sub         
        Subtract                               
        JumpNeg      -compare-3628-true        
        Jump         -compare-3628-false       
        Label        -compare-3628-true        
        PushI        1                         
        Jump         -compare-3628-join        
        Label        -compare-3628-false       
        PushI        0                         
        Jump         -compare-3628-join        
        Label        -compare-3628-join        
        JumpTrue     -print-boolean-3629-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3629-join  
        Label        -print-boolean-3629-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3629-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3630-arg1        
        PushI        65                        
        PushI        96                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3630-arg2        
        PushI        24                        
        Label        -compare-3630-sub         
        Subtract                               
        JumpNeg      -compare-3630-true        
        Jump         -compare-3630-false       
        Label        -compare-3630-true        
        PushI        1                         
        Jump         -compare-3630-join        
        Label        -compare-3630-false       
        PushI        0                         
        Jump         -compare-3630-join        
        Label        -compare-3630-join        
        JumpTrue     -print-boolean-3631-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3631-join  
        Label        -print-boolean-3631-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3631-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3632-arg1        
        PushI        95                        
        PushI        68                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3632-arg2        
        PushI        41                        
        Label        -compare-3632-sub         
        Subtract                               
        JumpNeg      -compare-3632-true        
        Jump         -compare-3632-false       
        Label        -compare-3632-true        
        PushI        1                         
        Jump         -compare-3632-join        
        Label        -compare-3632-false       
        PushI        0                         
        Jump         -compare-3632-join        
        Label        -compare-3632-join        
        JumpTrue     -print-boolean-3633-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3633-join  
        Label        -print-boolean-3633-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3633-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3634-arg1        
        PushI        2                         
        PushI        35                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3634-arg2        
        PushI        6                         
        Label        -compare-3634-sub         
        Subtract                               
        JumpNeg      -compare-3634-true        
        Jump         -compare-3634-false       
        Label        -compare-3634-true        
        PushI        1                         
        Jump         -compare-3634-join        
        Label        -compare-3634-false       
        PushI        0                         
        Jump         -compare-3634-join        
        Label        -compare-3634-join        
        JumpTrue     -print-boolean-3635-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3635-join  
        Label        -print-boolean-3635-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3635-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3636-arg1        
        PushI        51                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3636-arg2        
        PushI        65                        
        Label        -compare-3636-sub         
        Subtract                               
        JumpNeg      -compare-3636-true        
        Jump         -compare-3636-false       
        Label        -compare-3636-true        
        PushI        1                         
        Jump         -compare-3636-join        
        Label        -compare-3636-false       
        PushI        0                         
        Jump         -compare-3636-join        
        Label        -compare-3636-join        
        JumpTrue     -print-boolean-3637-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3637-join  
        Label        -print-boolean-3637-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3637-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3638-arg1        
        PushI        41                        
        Label        -compare-3638-arg2        
        PushI        13                        
        PushI        28                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3638-sub         
        Subtract                               
        JumpNeg      -compare-3638-true        
        Jump         -compare-3638-false       
        Label        -compare-3638-true        
        PushI        1                         
        Jump         -compare-3638-join        
        Label        -compare-3638-false       
        PushI        0                         
        Jump         -compare-3638-join        
        Label        -compare-3638-join        
        JumpTrue     -print-boolean-3639-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3639-join  
        Label        -print-boolean-3639-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3639-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3640-arg1        
        PushI        95                        
        Label        -compare-3640-arg2        
        PushI        63                        
        PushI        87                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3640-sub         
        Subtract                               
        JumpNeg      -compare-3640-true        
        Jump         -compare-3640-false       
        Label        -compare-3640-true        
        PushI        1                         
        Jump         -compare-3640-join        
        Label        -compare-3640-false       
        PushI        0                         
        Jump         -compare-3640-join        
        Label        -compare-3640-join        
        JumpTrue     -print-boolean-3641-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3641-join  
        Label        -print-boolean-3641-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3641-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3642-arg1        
        PushI        78                        
        Label        -compare-3642-arg2        
        PushI        17                        
        PushI        11                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3642-sub         
        Subtract                               
        JumpNeg      -compare-3642-true        
        Jump         -compare-3642-false       
        Label        -compare-3642-true        
        PushI        1                         
        Jump         -compare-3642-join        
        Label        -compare-3642-false       
        PushI        0                         
        Jump         -compare-3642-join        
        Label        -compare-3642-join        
        JumpTrue     -print-boolean-3643-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3643-join  
        Label        -print-boolean-3643-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3643-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3644-arg1        
        PushI        10                        
        Label        -compare-3644-arg2        
        PushI        67                        
        PushI        20                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3644-sub         
        Subtract                               
        JumpNeg      -compare-3644-true        
        Jump         -compare-3644-false       
        Label        -compare-3644-true        
        PushI        1                         
        Jump         -compare-3644-join        
        Label        -compare-3644-false       
        PushI        0                         
        Jump         -compare-3644-join        
        Label        -compare-3644-join        
        JumpTrue     -print-boolean-3645-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3645-join  
        Label        -print-boolean-3645-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3645-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3646-arg1        
        PushI        26                        
        Label        -compare-3646-arg2        
        PushI        9                         
        PushI        73                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3646-sub         
        Subtract                               
        JumpNeg      -compare-3646-true        
        Jump         -compare-3646-false       
        Label        -compare-3646-true        
        PushI        1                         
        Jump         -compare-3646-join        
        Label        -compare-3646-false       
        PushI        0                         
        Jump         -compare-3646-join        
        Label        -compare-3646-join        
        JumpTrue     -print-boolean-3647-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3647-join  
        Label        -print-boolean-3647-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3647-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3648-arg1        
        PushI        91                        
        Label        -compare-3648-arg2        
        PushI        94                        
        PushI        77                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3648-sub         
        Subtract                               
        JumpNeg      -compare-3648-true        
        Jump         -compare-3648-false       
        Label        -compare-3648-true        
        PushI        1                         
        Jump         -compare-3648-join        
        Label        -compare-3648-false       
        PushI        0                         
        Jump         -compare-3648-join        
        Label        -compare-3648-join        
        JumpTrue     -print-boolean-3649-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3649-join  
        Label        -print-boolean-3649-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3649-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3650-arg1        
        PushI        78                        
        Label        -compare-3650-arg2        
        PushI        65                        
        PushI        5                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3650-sub         
        Subtract                               
        JumpNeg      -compare-3650-true        
        Jump         -compare-3650-false       
        Label        -compare-3650-true        
        PushI        1                         
        Jump         -compare-3650-join        
        Label        -compare-3650-false       
        PushI        0                         
        Jump         -compare-3650-join        
        Label        -compare-3650-join        
        JumpTrue     -print-boolean-3651-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3651-join  
        Label        -print-boolean-3651-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3651-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3652-arg1        
        PushI        23                        
        Label        -compare-3652-arg2        
        PushI        30                        
        PushI        9                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3652-sub         
        Subtract                               
        JumpNeg      -compare-3652-true        
        Jump         -compare-3652-false       
        Label        -compare-3652-true        
        PushI        1                         
        Jump         -compare-3652-join        
        Label        -compare-3652-false       
        PushI        0                         
        Jump         -compare-3652-join        
        Label        -compare-3652-join        
        JumpTrue     -print-boolean-3653-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3653-join  
        Label        -print-boolean-3653-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3653-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3654-arg1        
        PushI        35                        
        Label        -compare-3654-arg2        
        PushI        20                        
        PushI        29                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3654-sub         
        Subtract                               
        JumpNeg      -compare-3654-true        
        Jump         -compare-3654-false       
        Label        -compare-3654-true        
        PushI        1                         
        Jump         -compare-3654-join        
        Label        -compare-3654-false       
        PushI        0                         
        Jump         -compare-3654-join        
        Label        -compare-3654-join        
        JumpTrue     -print-boolean-3655-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3655-join  
        Label        -print-boolean-3655-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3655-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3656-arg1        
        PushI        67                        
        Label        -compare-3656-arg2        
        PushI        3                         
        PushI        91                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3656-sub         
        Subtract                               
        JumpNeg      -compare-3656-true        
        Jump         -compare-3656-false       
        Label        -compare-3656-true        
        PushI        1                         
        Jump         -compare-3656-join        
        Label        -compare-3656-false       
        PushI        0                         
        Jump         -compare-3656-join        
        Label        -compare-3656-join        
        JumpTrue     -print-boolean-3657-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3657-join  
        Label        -print-boolean-3657-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3657-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3658-arg1        
        PushI        19                        
        Label        -compare-3658-arg2        
        PushI        48                        
        PushI        61                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3658-sub         
        Subtract                               
        JumpNeg      -compare-3658-true        
        Jump         -compare-3658-false       
        Label        -compare-3658-true        
        PushI        1                         
        Jump         -compare-3658-join        
        Label        -compare-3658-false       
        PushI        0                         
        Jump         -compare-3658-join        
        Label        -compare-3658-join        
        JumpTrue     -print-boolean-3659-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3659-join  
        Label        -print-boolean-3659-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3659-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3660-arg1        
        PushI        38                        
        Label        -compare-3660-arg2        
        PushI        36                        
        PushI        12                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3660-sub         
        Subtract                               
        JumpNeg      -compare-3660-true        
        Jump         -compare-3660-false       
        Label        -compare-3660-true        
        PushI        1                         
        Jump         -compare-3660-join        
        Label        -compare-3660-false       
        PushI        0                         
        Jump         -compare-3660-join        
        Label        -compare-3660-join        
        JumpTrue     -print-boolean-3661-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3661-join  
        Label        -print-boolean-3661-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3661-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3662-arg1        
        PushI        48                        
        PushI        67                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3662-arg2        
        PushI        26                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3662-sub         
        Subtract                               
        JumpNeg      -compare-3662-true        
        Jump         -compare-3662-false       
        Label        -compare-3662-true        
        PushI        1                         
        Jump         -compare-3662-join        
        Label        -compare-3662-false       
        PushI        0                         
        Jump         -compare-3662-join        
        Label        -compare-3662-join        
        JumpTrue     -print-boolean-3663-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3663-join  
        Label        -print-boolean-3663-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3663-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3664-arg1        
        PushI        54                        
        PushI        22                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3664-arg2        
        PushI        84                        
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3664-sub         
        Subtract                               
        JumpNeg      -compare-3664-true        
        Jump         -compare-3664-false       
        Label        -compare-3664-true        
        PushI        1                         
        Jump         -compare-3664-join        
        Label        -compare-3664-false       
        PushI        0                         
        Jump         -compare-3664-join        
        Label        -compare-3664-join        
        JumpTrue     -print-boolean-3665-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3665-join  
        Label        -print-boolean-3665-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3665-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3666-arg1        
        PushI        29                        
        PushI        62                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3666-arg2        
        PushI        90                        
        PushI        66                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3666-sub         
        Subtract                               
        JumpNeg      -compare-3666-true        
        Jump         -compare-3666-false       
        Label        -compare-3666-true        
        PushI        1                         
        Jump         -compare-3666-join        
        Label        -compare-3666-false       
        PushI        0                         
        Jump         -compare-3666-join        
        Label        -compare-3666-join        
        JumpTrue     -print-boolean-3667-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3667-join  
        Label        -print-boolean-3667-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3667-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3668-arg1        
        PushI        80                        
        PushI        54                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3668-arg2        
        PushI        92                        
        PushI        41                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3668-sub         
        Subtract                               
        JumpNeg      -compare-3668-true        
        Jump         -compare-3668-false       
        Label        -compare-3668-true        
        PushI        1                         
        Jump         -compare-3668-join        
        Label        -compare-3668-false       
        PushI        0                         
        Jump         -compare-3668-join        
        Label        -compare-3668-join        
        JumpTrue     -print-boolean-3669-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3669-join  
        Label        -print-boolean-3669-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3669-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3670-arg1        
        PushI        73                        
        PushI        22                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3670-arg2        
        PushI        70                        
        PushI        31                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3670-sub         
        Subtract                               
        JumpNeg      -compare-3670-true        
        Jump         -compare-3670-false       
        Label        -compare-3670-true        
        PushI        1                         
        Jump         -compare-3670-join        
        Label        -compare-3670-false       
        PushI        0                         
        Jump         -compare-3670-join        
        Label        -compare-3670-join        
        JumpTrue     -print-boolean-3671-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3671-join  
        Label        -print-boolean-3671-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3671-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3672-arg1        
        PushI        95                        
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3672-arg2        
        PushI        11                        
        PushI        78                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3672-sub         
        Subtract                               
        JumpNeg      -compare-3672-true        
        Jump         -compare-3672-false       
        Label        -compare-3672-true        
        PushI        1                         
        Jump         -compare-3672-join        
        Label        -compare-3672-false       
        PushI        0                         
        Jump         -compare-3672-join        
        Label        -compare-3672-join        
        JumpTrue     -print-boolean-3673-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3673-join  
        Label        -print-boolean-3673-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3673-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3674-arg1        
        PushI        30                        
        PushI        9                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3674-arg2        
        PushI        91                        
        PushI        29                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3674-sub         
        Subtract                               
        JumpNeg      -compare-3674-true        
        Jump         -compare-3674-false       
        Label        -compare-3674-true        
        PushI        1                         
        Jump         -compare-3674-join        
        Label        -compare-3674-false       
        PushI        0                         
        Jump         -compare-3674-join        
        Label        -compare-3674-join        
        JumpTrue     -print-boolean-3675-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3675-join  
        Label        -print-boolean-3675-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3675-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3676-arg1        
        PushI        97                        
        PushI        56                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3676-arg2        
        PushI        42                        
        PushI        70                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3676-sub         
        Subtract                               
        JumpNeg      -compare-3676-true        
        Jump         -compare-3676-false       
        Label        -compare-3676-true        
        PushI        1                         
        Jump         -compare-3676-join        
        Label        -compare-3676-false       
        PushI        0                         
        Jump         -compare-3676-join        
        Label        -compare-3676-join        
        JumpTrue     -print-boolean-3677-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3677-join  
        Label        -print-boolean-3677-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3677-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3678-arg1        
        PushI        52                        
        PushI        75                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3678-arg2        
        PushI        18                        
        PushI        91                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3678-sub         
        Subtract                               
        JumpNeg      -compare-3678-true        
        Jump         -compare-3678-false       
        Label        -compare-3678-true        
        PushI        1                         
        Jump         -compare-3678-join        
        Label        -compare-3678-false       
        PushI        0                         
        Jump         -compare-3678-join        
        Label        -compare-3678-join        
        JumpTrue     -print-boolean-3679-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3679-join  
        Label        -print-boolean-3679-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3679-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3680-arg1        
        PushI        3                         
        PushI        52                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3680-arg2        
        PushI        24                        
        PushI        84                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3680-sub         
        Subtract                               
        JumpNeg      -compare-3680-true        
        Jump         -compare-3680-false       
        Label        -compare-3680-true        
        PushI        1                         
        Jump         -compare-3680-join        
        Label        -compare-3680-false       
        PushI        0                         
        Jump         -compare-3680-join        
        Label        -compare-3680-join        
        JumpTrue     -print-boolean-3681-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3681-join  
        Label        -print-boolean-3681-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3681-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3682-arg1        
        PushI        11                        
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3682-arg2        
        PushI        3                         
        PushI        91                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3682-sub         
        Subtract                               
        JumpNeg      -compare-3682-true        
        Jump         -compare-3682-false       
        Label        -compare-3682-true        
        PushI        1                         
        Jump         -compare-3682-join        
        Label        -compare-3682-false       
        PushI        0                         
        Jump         -compare-3682-join        
        Label        -compare-3682-join        
        JumpTrue     -print-boolean-3683-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3683-join  
        Label        -print-boolean-3683-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3683-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3684-arg1        
        PushI        90                        
        PushI        56                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3684-arg2        
        PushI        84                        
        PushI        43                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3684-sub         
        Subtract                               
        JumpNeg      -compare-3684-true        
        Jump         -compare-3684-false       
        Label        -compare-3684-true        
        PushI        1                         
        Jump         -compare-3684-join        
        Label        -compare-3684-false       
        PushI        0                         
        Jump         -compare-3684-join        
        Label        -compare-3684-join        
        JumpTrue     -print-boolean-3685-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3685-join  
        Label        -print-boolean-3685-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3685-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
