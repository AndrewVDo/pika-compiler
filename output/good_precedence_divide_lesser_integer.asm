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
        Label        -compare-3601-arg1        
        PushI        67                        
        PushI        25                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3601-arg2        
        PushI        18                        
        Label        -compare-3601-sub         
        Subtract                               
        JumpNeg      -compare-3601-true        
        Jump         -compare-3601-false       
        Label        -compare-3601-true        
        PushI        1                         
        Jump         -compare-3601-join        
        Label        -compare-3601-false       
        PushI        0                         
        Jump         -compare-3601-join        
        Label        -compare-3601-join        
        JumpTrue     -print-boolean-3602-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3602-join  
        Label        -print-boolean-3602-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3602-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3603-arg1        
        PushI        84                        
        PushI        77                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3603-arg2        
        PushI        53                        
        Label        -compare-3603-sub         
        Subtract                               
        JumpNeg      -compare-3603-true        
        Jump         -compare-3603-false       
        Label        -compare-3603-true        
        PushI        1                         
        Jump         -compare-3603-join        
        Label        -compare-3603-false       
        PushI        0                         
        Jump         -compare-3603-join        
        Label        -compare-3603-join        
        JumpTrue     -print-boolean-3604-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3604-join  
        Label        -print-boolean-3604-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3604-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3605-arg1        
        PushI        95                        
        PushI        45                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3605-arg2        
        PushI        40                        
        Label        -compare-3605-sub         
        Subtract                               
        JumpNeg      -compare-3605-true        
        Jump         -compare-3605-false       
        Label        -compare-3605-true        
        PushI        1                         
        Jump         -compare-3605-join        
        Label        -compare-3605-false       
        PushI        0                         
        Jump         -compare-3605-join        
        Label        -compare-3605-join        
        JumpTrue     -print-boolean-3606-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3606-join  
        Label        -print-boolean-3606-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3606-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3607-arg1        
        PushI        7                         
        PushI        55                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3607-arg2        
        PushI        80                        
        Label        -compare-3607-sub         
        Subtract                               
        JumpNeg      -compare-3607-true        
        Jump         -compare-3607-false       
        Label        -compare-3607-true        
        PushI        1                         
        Jump         -compare-3607-join        
        Label        -compare-3607-false       
        PushI        0                         
        Jump         -compare-3607-join        
        Label        -compare-3607-join        
        JumpTrue     -print-boolean-3608-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3608-join  
        Label        -print-boolean-3608-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3608-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3609-arg1        
        PushI        5                         
        PushI        68                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3609-arg2        
        PushI        7                         
        Label        -compare-3609-sub         
        Subtract                               
        JumpNeg      -compare-3609-true        
        Jump         -compare-3609-false       
        Label        -compare-3609-true        
        PushI        1                         
        Jump         -compare-3609-join        
        Label        -compare-3609-false       
        PushI        0                         
        Jump         -compare-3609-join        
        Label        -compare-3609-join        
        JumpTrue     -print-boolean-3610-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3610-join  
        Label        -print-boolean-3610-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3610-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3611-arg1        
        PushI        38                        
        PushI        48                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3611-arg2        
        PushI        14                        
        Label        -compare-3611-sub         
        Subtract                               
        JumpNeg      -compare-3611-true        
        Jump         -compare-3611-false       
        Label        -compare-3611-true        
        PushI        1                         
        Jump         -compare-3611-join        
        Label        -compare-3611-false       
        PushI        0                         
        Jump         -compare-3611-join        
        Label        -compare-3611-join        
        JumpTrue     -print-boolean-3612-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3612-join  
        Label        -print-boolean-3612-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3612-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3613-arg1        
        PushI        79                        
        PushI        78                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3613-arg2        
        PushI        93                        
        Label        -compare-3613-sub         
        Subtract                               
        JumpNeg      -compare-3613-true        
        Jump         -compare-3613-false       
        Label        -compare-3613-true        
        PushI        1                         
        Jump         -compare-3613-join        
        Label        -compare-3613-false       
        PushI        0                         
        Jump         -compare-3613-join        
        Label        -compare-3613-join        
        JumpTrue     -print-boolean-3614-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3614-join  
        Label        -print-boolean-3614-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3614-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3615-arg1        
        PushI        78                        
        PushI        19                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3615-arg2        
        PushI        38                        
        Label        -compare-3615-sub         
        Subtract                               
        JumpNeg      -compare-3615-true        
        Jump         -compare-3615-false       
        Label        -compare-3615-true        
        PushI        1                         
        Jump         -compare-3615-join        
        Label        -compare-3615-false       
        PushI        0                         
        Jump         -compare-3615-join        
        Label        -compare-3615-join        
        JumpTrue     -print-boolean-3616-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3616-join  
        Label        -print-boolean-3616-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3616-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3617-arg1        
        PushI        65                        
        PushI        96                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3617-arg2        
        PushI        24                        
        Label        -compare-3617-sub         
        Subtract                               
        JumpNeg      -compare-3617-true        
        Jump         -compare-3617-false       
        Label        -compare-3617-true        
        PushI        1                         
        Jump         -compare-3617-join        
        Label        -compare-3617-false       
        PushI        0                         
        Jump         -compare-3617-join        
        Label        -compare-3617-join        
        JumpTrue     -print-boolean-3618-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3618-join  
        Label        -print-boolean-3618-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3618-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3619-arg1        
        PushI        95                        
        PushI        68                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3619-arg2        
        PushI        41                        
        Label        -compare-3619-sub         
        Subtract                               
        JumpNeg      -compare-3619-true        
        Jump         -compare-3619-false       
        Label        -compare-3619-true        
        PushI        1                         
        Jump         -compare-3619-join        
        Label        -compare-3619-false       
        PushI        0                         
        Jump         -compare-3619-join        
        Label        -compare-3619-join        
        JumpTrue     -print-boolean-3620-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3620-join  
        Label        -print-boolean-3620-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3620-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3621-arg1        
        PushI        2                         
        PushI        35                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3621-arg2        
        PushI        6                         
        Label        -compare-3621-sub         
        Subtract                               
        JumpNeg      -compare-3621-true        
        Jump         -compare-3621-false       
        Label        -compare-3621-true        
        PushI        1                         
        Jump         -compare-3621-join        
        Label        -compare-3621-false       
        PushI        0                         
        Jump         -compare-3621-join        
        Label        -compare-3621-join        
        JumpTrue     -print-boolean-3622-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3622-join  
        Label        -print-boolean-3622-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3622-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3623-arg1        
        PushI        51                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3623-arg2        
        PushI        65                        
        Label        -compare-3623-sub         
        Subtract                               
        JumpNeg      -compare-3623-true        
        Jump         -compare-3623-false       
        Label        -compare-3623-true        
        PushI        1                         
        Jump         -compare-3623-join        
        Label        -compare-3623-false       
        PushI        0                         
        Jump         -compare-3623-join        
        Label        -compare-3623-join        
        JumpTrue     -print-boolean-3624-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3624-join  
        Label        -print-boolean-3624-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3624-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3625-arg1        
        PushI        41                        
        Label        -compare-3625-arg2        
        PushI        13                        
        PushI        28                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3625-sub         
        Subtract                               
        JumpNeg      -compare-3625-true        
        Jump         -compare-3625-false       
        Label        -compare-3625-true        
        PushI        1                         
        Jump         -compare-3625-join        
        Label        -compare-3625-false       
        PushI        0                         
        Jump         -compare-3625-join        
        Label        -compare-3625-join        
        JumpTrue     -print-boolean-3626-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3626-join  
        Label        -print-boolean-3626-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3626-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3627-arg1        
        PushI        95                        
        Label        -compare-3627-arg2        
        PushI        63                        
        PushI        87                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3627-sub         
        Subtract                               
        JumpNeg      -compare-3627-true        
        Jump         -compare-3627-false       
        Label        -compare-3627-true        
        PushI        1                         
        Jump         -compare-3627-join        
        Label        -compare-3627-false       
        PushI        0                         
        Jump         -compare-3627-join        
        Label        -compare-3627-join        
        JumpTrue     -print-boolean-3628-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3628-join  
        Label        -print-boolean-3628-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3628-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3629-arg1        
        PushI        78                        
        Label        -compare-3629-arg2        
        PushI        17                        
        PushI        11                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3629-sub         
        Subtract                               
        JumpNeg      -compare-3629-true        
        Jump         -compare-3629-false       
        Label        -compare-3629-true        
        PushI        1                         
        Jump         -compare-3629-join        
        Label        -compare-3629-false       
        PushI        0                         
        Jump         -compare-3629-join        
        Label        -compare-3629-join        
        JumpTrue     -print-boolean-3630-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3630-join  
        Label        -print-boolean-3630-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3630-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3631-arg1        
        PushI        10                        
        Label        -compare-3631-arg2        
        PushI        67                        
        PushI        20                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3631-sub         
        Subtract                               
        JumpNeg      -compare-3631-true        
        Jump         -compare-3631-false       
        Label        -compare-3631-true        
        PushI        1                         
        Jump         -compare-3631-join        
        Label        -compare-3631-false       
        PushI        0                         
        Jump         -compare-3631-join        
        Label        -compare-3631-join        
        JumpTrue     -print-boolean-3632-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3632-join  
        Label        -print-boolean-3632-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3632-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3633-arg1        
        PushI        26                        
        Label        -compare-3633-arg2        
        PushI        9                         
        PushI        73                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3633-sub         
        Subtract                               
        JumpNeg      -compare-3633-true        
        Jump         -compare-3633-false       
        Label        -compare-3633-true        
        PushI        1                         
        Jump         -compare-3633-join        
        Label        -compare-3633-false       
        PushI        0                         
        Jump         -compare-3633-join        
        Label        -compare-3633-join        
        JumpTrue     -print-boolean-3634-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3634-join  
        Label        -print-boolean-3634-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3634-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3635-arg1        
        PushI        91                        
        Label        -compare-3635-arg2        
        PushI        94                        
        PushI        77                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3635-sub         
        Subtract                               
        JumpNeg      -compare-3635-true        
        Jump         -compare-3635-false       
        Label        -compare-3635-true        
        PushI        1                         
        Jump         -compare-3635-join        
        Label        -compare-3635-false       
        PushI        0                         
        Jump         -compare-3635-join        
        Label        -compare-3635-join        
        JumpTrue     -print-boolean-3636-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3636-join  
        Label        -print-boolean-3636-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3636-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3637-arg1        
        PushI        78                        
        Label        -compare-3637-arg2        
        PushI        65                        
        PushI        5                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3637-sub         
        Subtract                               
        JumpNeg      -compare-3637-true        
        Jump         -compare-3637-false       
        Label        -compare-3637-true        
        PushI        1                         
        Jump         -compare-3637-join        
        Label        -compare-3637-false       
        PushI        0                         
        Jump         -compare-3637-join        
        Label        -compare-3637-join        
        JumpTrue     -print-boolean-3638-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3638-join  
        Label        -print-boolean-3638-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3638-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3639-arg1        
        PushI        23                        
        Label        -compare-3639-arg2        
        PushI        30                        
        PushI        9                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3639-sub         
        Subtract                               
        JumpNeg      -compare-3639-true        
        Jump         -compare-3639-false       
        Label        -compare-3639-true        
        PushI        1                         
        Jump         -compare-3639-join        
        Label        -compare-3639-false       
        PushI        0                         
        Jump         -compare-3639-join        
        Label        -compare-3639-join        
        JumpTrue     -print-boolean-3640-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3640-join  
        Label        -print-boolean-3640-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3640-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3641-arg1        
        PushI        35                        
        Label        -compare-3641-arg2        
        PushI        20                        
        PushI        29                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3641-sub         
        Subtract                               
        JumpNeg      -compare-3641-true        
        Jump         -compare-3641-false       
        Label        -compare-3641-true        
        PushI        1                         
        Jump         -compare-3641-join        
        Label        -compare-3641-false       
        PushI        0                         
        Jump         -compare-3641-join        
        Label        -compare-3641-join        
        JumpTrue     -print-boolean-3642-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3642-join  
        Label        -print-boolean-3642-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3642-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3643-arg1        
        PushI        67                        
        Label        -compare-3643-arg2        
        PushI        3                         
        PushI        91                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3643-sub         
        Subtract                               
        JumpNeg      -compare-3643-true        
        Jump         -compare-3643-false       
        Label        -compare-3643-true        
        PushI        1                         
        Jump         -compare-3643-join        
        Label        -compare-3643-false       
        PushI        0                         
        Jump         -compare-3643-join        
        Label        -compare-3643-join        
        JumpTrue     -print-boolean-3644-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3644-join  
        Label        -print-boolean-3644-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3644-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3645-arg1        
        PushI        19                        
        Label        -compare-3645-arg2        
        PushI        48                        
        PushI        61                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3645-sub         
        Subtract                               
        JumpNeg      -compare-3645-true        
        Jump         -compare-3645-false       
        Label        -compare-3645-true        
        PushI        1                         
        Jump         -compare-3645-join        
        Label        -compare-3645-false       
        PushI        0                         
        Jump         -compare-3645-join        
        Label        -compare-3645-join        
        JumpTrue     -print-boolean-3646-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3646-join  
        Label        -print-boolean-3646-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3646-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3647-arg1        
        PushI        38                        
        Label        -compare-3647-arg2        
        PushI        36                        
        PushI        12                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3647-sub         
        Subtract                               
        JumpNeg      -compare-3647-true        
        Jump         -compare-3647-false       
        Label        -compare-3647-true        
        PushI        1                         
        Jump         -compare-3647-join        
        Label        -compare-3647-false       
        PushI        0                         
        Jump         -compare-3647-join        
        Label        -compare-3647-join        
        JumpTrue     -print-boolean-3648-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3648-join  
        Label        -print-boolean-3648-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3648-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3649-arg1        
        PushI        48                        
        PushI        67                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3649-arg2        
        PushI        26                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3649-sub         
        Subtract                               
        JumpNeg      -compare-3649-true        
        Jump         -compare-3649-false       
        Label        -compare-3649-true        
        PushI        1                         
        Jump         -compare-3649-join        
        Label        -compare-3649-false       
        PushI        0                         
        Jump         -compare-3649-join        
        Label        -compare-3649-join        
        JumpTrue     -print-boolean-3650-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3650-join  
        Label        -print-boolean-3650-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3650-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3651-arg1        
        PushI        54                        
        PushI        22                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3651-arg2        
        PushI        84                        
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3651-sub         
        Subtract                               
        JumpNeg      -compare-3651-true        
        Jump         -compare-3651-false       
        Label        -compare-3651-true        
        PushI        1                         
        Jump         -compare-3651-join        
        Label        -compare-3651-false       
        PushI        0                         
        Jump         -compare-3651-join        
        Label        -compare-3651-join        
        JumpTrue     -print-boolean-3652-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3652-join  
        Label        -print-boolean-3652-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3652-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3653-arg1        
        PushI        29                        
        PushI        62                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3653-arg2        
        PushI        90                        
        PushI        66                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3653-sub         
        Subtract                               
        JumpNeg      -compare-3653-true        
        Jump         -compare-3653-false       
        Label        -compare-3653-true        
        PushI        1                         
        Jump         -compare-3653-join        
        Label        -compare-3653-false       
        PushI        0                         
        Jump         -compare-3653-join        
        Label        -compare-3653-join        
        JumpTrue     -print-boolean-3654-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3654-join  
        Label        -print-boolean-3654-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3654-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3655-arg1        
        PushI        80                        
        PushI        54                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3655-arg2        
        PushI        92                        
        PushI        41                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3655-sub         
        Subtract                               
        JumpNeg      -compare-3655-true        
        Jump         -compare-3655-false       
        Label        -compare-3655-true        
        PushI        1                         
        Jump         -compare-3655-join        
        Label        -compare-3655-false       
        PushI        0                         
        Jump         -compare-3655-join        
        Label        -compare-3655-join        
        JumpTrue     -print-boolean-3656-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3656-join  
        Label        -print-boolean-3656-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3656-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3657-arg1        
        PushI        73                        
        PushI        22                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3657-arg2        
        PushI        70                        
        PushI        31                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3657-sub         
        Subtract                               
        JumpNeg      -compare-3657-true        
        Jump         -compare-3657-false       
        Label        -compare-3657-true        
        PushI        1                         
        Jump         -compare-3657-join        
        Label        -compare-3657-false       
        PushI        0                         
        Jump         -compare-3657-join        
        Label        -compare-3657-join        
        JumpTrue     -print-boolean-3658-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3658-join  
        Label        -print-boolean-3658-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3658-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3659-arg1        
        PushI        95                        
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3659-arg2        
        PushI        11                        
        PushI        78                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3659-sub         
        Subtract                               
        JumpNeg      -compare-3659-true        
        Jump         -compare-3659-false       
        Label        -compare-3659-true        
        PushI        1                         
        Jump         -compare-3659-join        
        Label        -compare-3659-false       
        PushI        0                         
        Jump         -compare-3659-join        
        Label        -compare-3659-join        
        JumpTrue     -print-boolean-3660-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3660-join  
        Label        -print-boolean-3660-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3660-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3661-arg1        
        PushI        30                        
        PushI        9                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3661-arg2        
        PushI        91                        
        PushI        29                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3661-sub         
        Subtract                               
        JumpNeg      -compare-3661-true        
        Jump         -compare-3661-false       
        Label        -compare-3661-true        
        PushI        1                         
        Jump         -compare-3661-join        
        Label        -compare-3661-false       
        PushI        0                         
        Jump         -compare-3661-join        
        Label        -compare-3661-join        
        JumpTrue     -print-boolean-3662-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3662-join  
        Label        -print-boolean-3662-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3662-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3663-arg1        
        PushI        97                        
        PushI        56                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3663-arg2        
        PushI        42                        
        PushI        70                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3663-sub         
        Subtract                               
        JumpNeg      -compare-3663-true        
        Jump         -compare-3663-false       
        Label        -compare-3663-true        
        PushI        1                         
        Jump         -compare-3663-join        
        Label        -compare-3663-false       
        PushI        0                         
        Jump         -compare-3663-join        
        Label        -compare-3663-join        
        JumpTrue     -print-boolean-3664-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3664-join  
        Label        -print-boolean-3664-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3664-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3665-arg1        
        PushI        52                        
        PushI        75                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3665-arg2        
        PushI        18                        
        PushI        91                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3665-sub         
        Subtract                               
        JumpNeg      -compare-3665-true        
        Jump         -compare-3665-false       
        Label        -compare-3665-true        
        PushI        1                         
        Jump         -compare-3665-join        
        Label        -compare-3665-false       
        PushI        0                         
        Jump         -compare-3665-join        
        Label        -compare-3665-join        
        JumpTrue     -print-boolean-3666-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3666-join  
        Label        -print-boolean-3666-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3666-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3667-arg1        
        PushI        3                         
        PushI        52                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3667-arg2        
        PushI        24                        
        PushI        84                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3667-sub         
        Subtract                               
        JumpNeg      -compare-3667-true        
        Jump         -compare-3667-false       
        Label        -compare-3667-true        
        PushI        1                         
        Jump         -compare-3667-join        
        Label        -compare-3667-false       
        PushI        0                         
        Jump         -compare-3667-join        
        Label        -compare-3667-join        
        JumpTrue     -print-boolean-3668-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3668-join  
        Label        -print-boolean-3668-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3668-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3669-arg1        
        PushI        11                        
        PushI        88                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3669-arg2        
        PushI        3                         
        PushI        91                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3669-sub         
        Subtract                               
        JumpNeg      -compare-3669-true        
        Jump         -compare-3669-false       
        Label        -compare-3669-true        
        PushI        1                         
        Jump         -compare-3669-join        
        Label        -compare-3669-false       
        PushI        0                         
        Jump         -compare-3669-join        
        Label        -compare-3669-join        
        JumpTrue     -print-boolean-3670-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3670-join  
        Label        -print-boolean-3670-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3670-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3671-arg1        
        PushI        90                        
        PushI        56                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3671-arg2        
        PushI        84                        
        PushI        43                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3671-sub         
        Subtract                               
        JumpNeg      -compare-3671-true        
        Jump         -compare-3671-false       
        Label        -compare-3671-true        
        PushI        1                         
        Jump         -compare-3671-join        
        Label        -compare-3671-false       
        PushI        0                         
        Jump         -compare-3671-join        
        Label        -compare-3671-join        
        JumpTrue     -print-boolean-3672-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3672-join  
        Label        -print-boolean-3672-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3672-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
