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
        Label        -compare-3902-arg1        
        PushI        63                        
        PushI        45                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3902-arg2        
        PushI        94                        
        Label        -compare-3902-sub         
        Subtract                               
        JumpFalse    -compare-3902-false       
        Jump         -compare-3902-true        
        Label        -compare-3902-true        
        PushI        1                         
        Jump         -compare-3902-join        
        Label        -compare-3902-false       
        PushI        0                         
        Jump         -compare-3902-join        
        Label        -compare-3902-join        
        JumpTrue     -print-boolean-3903-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3903-join  
        Label        -print-boolean-3903-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3903-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3904-arg1        
        PushI        96                        
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3904-arg2        
        PushI        57                        
        Label        -compare-3904-sub         
        Subtract                               
        JumpFalse    -compare-3904-false       
        Jump         -compare-3904-true        
        Label        -compare-3904-true        
        PushI        1                         
        Jump         -compare-3904-join        
        Label        -compare-3904-false       
        PushI        0                         
        Jump         -compare-3904-join        
        Label        -compare-3904-join        
        JumpTrue     -print-boolean-3905-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3905-join  
        Label        -print-boolean-3905-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3905-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3906-arg1        
        PushI        61                        
        PushI        50                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3906-arg2        
        PushI        27                        
        Label        -compare-3906-sub         
        Subtract                               
        JumpFalse    -compare-3906-false       
        Jump         -compare-3906-true        
        Label        -compare-3906-true        
        PushI        1                         
        Jump         -compare-3906-join        
        Label        -compare-3906-false       
        PushI        0                         
        Jump         -compare-3906-join        
        Label        -compare-3906-join        
        JumpTrue     -print-boolean-3907-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3907-join  
        Label        -print-boolean-3907-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3907-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3908-arg1        
        PushI        88                        
        PushI        85                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3908-arg2        
        PushI        78                        
        Label        -compare-3908-sub         
        Subtract                               
        JumpFalse    -compare-3908-false       
        Jump         -compare-3908-true        
        Label        -compare-3908-true        
        PushI        1                         
        Jump         -compare-3908-join        
        Label        -compare-3908-false       
        PushI        0                         
        Jump         -compare-3908-join        
        Label        -compare-3908-join        
        JumpTrue     -print-boolean-3909-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3909-join  
        Label        -print-boolean-3909-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3909-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3910-arg1        
        PushI        99                        
        PushI        79                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3910-arg2        
        PushI        78                        
        Label        -compare-3910-sub         
        Subtract                               
        JumpFalse    -compare-3910-false       
        Jump         -compare-3910-true        
        Label        -compare-3910-true        
        PushI        1                         
        Jump         -compare-3910-join        
        Label        -compare-3910-false       
        PushI        0                         
        Jump         -compare-3910-join        
        Label        -compare-3910-join        
        JumpTrue     -print-boolean-3911-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3911-join  
        Label        -print-boolean-3911-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3911-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3912-arg1        
        PushI        44                        
        PushI        75                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3912-arg2        
        PushI        4                         
        Label        -compare-3912-sub         
        Subtract                               
        JumpFalse    -compare-3912-false       
        Jump         -compare-3912-true        
        Label        -compare-3912-true        
        PushI        1                         
        Jump         -compare-3912-join        
        Label        -compare-3912-false       
        PushI        0                         
        Jump         -compare-3912-join        
        Label        -compare-3912-join        
        JumpTrue     -print-boolean-3913-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3913-join  
        Label        -print-boolean-3913-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3913-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3914-arg1        
        PushI        19                        
        PushI        50                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3914-arg2        
        PushI        9                         
        Label        -compare-3914-sub         
        Subtract                               
        JumpFalse    -compare-3914-false       
        Jump         -compare-3914-true        
        Label        -compare-3914-true        
        PushI        1                         
        Jump         -compare-3914-join        
        Label        -compare-3914-false       
        PushI        0                         
        Jump         -compare-3914-join        
        Label        -compare-3914-join        
        JumpTrue     -print-boolean-3915-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3915-join  
        Label        -print-boolean-3915-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3915-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3916-arg1        
        PushI        69                        
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3916-arg2        
        PushI        76                        
        Label        -compare-3916-sub         
        Subtract                               
        JumpFalse    -compare-3916-false       
        Jump         -compare-3916-true        
        Label        -compare-3916-true        
        PushI        1                         
        Jump         -compare-3916-join        
        Label        -compare-3916-false       
        PushI        0                         
        Jump         -compare-3916-join        
        Label        -compare-3916-join        
        JumpTrue     -print-boolean-3917-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3917-join  
        Label        -print-boolean-3917-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3917-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3918-arg1        
        PushI        47                        
        PushI        44                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3918-arg2        
        PushI        72                        
        Label        -compare-3918-sub         
        Subtract                               
        JumpFalse    -compare-3918-false       
        Jump         -compare-3918-true        
        Label        -compare-3918-true        
        PushI        1                         
        Jump         -compare-3918-join        
        Label        -compare-3918-false       
        PushI        0                         
        Jump         -compare-3918-join        
        Label        -compare-3918-join        
        JumpTrue     -print-boolean-3919-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3919-join  
        Label        -print-boolean-3919-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3919-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3920-arg1        
        PushI        80                        
        PushI        36                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3920-arg2        
        PushI        54                        
        Label        -compare-3920-sub         
        Subtract                               
        JumpFalse    -compare-3920-false       
        Jump         -compare-3920-true        
        Label        -compare-3920-true        
        PushI        1                         
        Jump         -compare-3920-join        
        Label        -compare-3920-false       
        PushI        0                         
        Jump         -compare-3920-join        
        Label        -compare-3920-join        
        JumpTrue     -print-boolean-3921-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3921-join  
        Label        -print-boolean-3921-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3921-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3922-arg1        
        PushI        25                        
        PushI        15                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3922-arg2        
        PushI        24                        
        Label        -compare-3922-sub         
        Subtract                               
        JumpFalse    -compare-3922-false       
        Jump         -compare-3922-true        
        Label        -compare-3922-true        
        PushI        1                         
        Jump         -compare-3922-join        
        Label        -compare-3922-false       
        PushI        0                         
        Jump         -compare-3922-join        
        Label        -compare-3922-join        
        JumpTrue     -print-boolean-3923-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3923-join  
        Label        -print-boolean-3923-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3923-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3924-arg1        
        PushI        75                        
        PushI        5                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3924-arg2        
        PushI        56                        
        Label        -compare-3924-sub         
        Subtract                               
        JumpFalse    -compare-3924-false       
        Jump         -compare-3924-true        
        Label        -compare-3924-true        
        PushI        1                         
        Jump         -compare-3924-join        
        Label        -compare-3924-false       
        PushI        0                         
        Jump         -compare-3924-join        
        Label        -compare-3924-join        
        JumpTrue     -print-boolean-3925-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3925-join  
        Label        -print-boolean-3925-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3925-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3926-arg1        
        PushI        21                        
        Label        -compare-3926-arg2        
        PushI        7                         
        PushI        61                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3926-sub         
        Subtract                               
        JumpFalse    -compare-3926-false       
        Jump         -compare-3926-true        
        Label        -compare-3926-true        
        PushI        1                         
        Jump         -compare-3926-join        
        Label        -compare-3926-false       
        PushI        0                         
        Jump         -compare-3926-join        
        Label        -compare-3926-join        
        JumpTrue     -print-boolean-3927-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3927-join  
        Label        -print-boolean-3927-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3927-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3928-arg1        
        PushI        96                        
        Label        -compare-3928-arg2        
        PushI        40                        
        PushI        61                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3928-sub         
        Subtract                               
        JumpFalse    -compare-3928-false       
        Jump         -compare-3928-true        
        Label        -compare-3928-true        
        PushI        1                         
        Jump         -compare-3928-join        
        Label        -compare-3928-false       
        PushI        0                         
        Jump         -compare-3928-join        
        Label        -compare-3928-join        
        JumpTrue     -print-boolean-3929-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3929-join  
        Label        -print-boolean-3929-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3929-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3930-arg1        
        PushI        41                        
        Label        -compare-3930-arg2        
        PushI        4                         
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3930-sub         
        Subtract                               
        JumpFalse    -compare-3930-false       
        Jump         -compare-3930-true        
        Label        -compare-3930-true        
        PushI        1                         
        Jump         -compare-3930-join        
        Label        -compare-3930-false       
        PushI        0                         
        Jump         -compare-3930-join        
        Label        -compare-3930-join        
        JumpTrue     -print-boolean-3931-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3931-join  
        Label        -print-boolean-3931-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3931-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3932-arg1        
        PushI        32                        
        Label        -compare-3932-arg2        
        PushI        21                        
        PushI        27                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3932-sub         
        Subtract                               
        JumpFalse    -compare-3932-false       
        Jump         -compare-3932-true        
        Label        -compare-3932-true        
        PushI        1                         
        Jump         -compare-3932-join        
        Label        -compare-3932-false       
        PushI        0                         
        Jump         -compare-3932-join        
        Label        -compare-3932-join        
        JumpTrue     -print-boolean-3933-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3933-join  
        Label        -print-boolean-3933-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3933-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3934-arg1        
        PushI        17                        
        Label        -compare-3934-arg2        
        PushI        83                        
        PushI        30                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3934-sub         
        Subtract                               
        JumpFalse    -compare-3934-false       
        Jump         -compare-3934-true        
        Label        -compare-3934-true        
        PushI        1                         
        Jump         -compare-3934-join        
        Label        -compare-3934-false       
        PushI        0                         
        Jump         -compare-3934-join        
        Label        -compare-3934-join        
        JumpTrue     -print-boolean-3935-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3935-join  
        Label        -print-boolean-3935-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3935-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3936-arg1        
        PushI        47                        
        Label        -compare-3936-arg2        
        PushI        64                        
        PushI        78                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3936-sub         
        Subtract                               
        JumpFalse    -compare-3936-false       
        Jump         -compare-3936-true        
        Label        -compare-3936-true        
        PushI        1                         
        Jump         -compare-3936-join        
        Label        -compare-3936-false       
        PushI        0                         
        Jump         -compare-3936-join        
        Label        -compare-3936-join        
        JumpTrue     -print-boolean-3937-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3937-join  
        Label        -print-boolean-3937-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3937-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3938-arg1        
        PushI        63                        
        Label        -compare-3938-arg2        
        PushI        55                        
        PushI        55                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3938-sub         
        Subtract                               
        JumpFalse    -compare-3938-false       
        Jump         -compare-3938-true        
        Label        -compare-3938-true        
        PushI        1                         
        Jump         -compare-3938-join        
        Label        -compare-3938-false       
        PushI        0                         
        Jump         -compare-3938-join        
        Label        -compare-3938-join        
        JumpTrue     -print-boolean-3939-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3939-join  
        Label        -print-boolean-3939-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3939-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3940-arg1        
        PushI        34                        
        Label        -compare-3940-arg2        
        PushI        96                        
        PushI        4                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3940-sub         
        Subtract                               
        JumpFalse    -compare-3940-false       
        Jump         -compare-3940-true        
        Label        -compare-3940-true        
        PushI        1                         
        Jump         -compare-3940-join        
        Label        -compare-3940-false       
        PushI        0                         
        Jump         -compare-3940-join        
        Label        -compare-3940-join        
        JumpTrue     -print-boolean-3941-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3941-join  
        Label        -print-boolean-3941-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3941-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3942-arg1        
        PushI        27                        
        Label        -compare-3942-arg2        
        PushI        48                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3942-sub         
        Subtract                               
        JumpFalse    -compare-3942-false       
        Jump         -compare-3942-true        
        Label        -compare-3942-true        
        PushI        1                         
        Jump         -compare-3942-join        
        Label        -compare-3942-false       
        PushI        0                         
        Jump         -compare-3942-join        
        Label        -compare-3942-join        
        JumpTrue     -print-boolean-3943-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3943-join  
        Label        -print-boolean-3943-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3943-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3944-arg1        
        PushI        81                        
        Label        -compare-3944-arg2        
        PushI        55                        
        PushI        7                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3944-sub         
        Subtract                               
        JumpFalse    -compare-3944-false       
        Jump         -compare-3944-true        
        Label        -compare-3944-true        
        PushI        1                         
        Jump         -compare-3944-join        
        Label        -compare-3944-false       
        PushI        0                         
        Jump         -compare-3944-join        
        Label        -compare-3944-join        
        JumpTrue     -print-boolean-3945-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3945-join  
        Label        -print-boolean-3945-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3945-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3946-arg1        
        PushI        14                        
        Label        -compare-3946-arg2        
        PushI        83                        
        PushI        17                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3946-sub         
        Subtract                               
        JumpFalse    -compare-3946-false       
        Jump         -compare-3946-true        
        Label        -compare-3946-true        
        PushI        1                         
        Jump         -compare-3946-join        
        Label        -compare-3946-false       
        PushI        0                         
        Jump         -compare-3946-join        
        Label        -compare-3946-join        
        JumpTrue     -print-boolean-3947-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3947-join  
        Label        -print-boolean-3947-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3947-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3948-arg1        
        PushI        29                        
        Label        -compare-3948-arg2        
        PushI        38                        
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3948-sub         
        Subtract                               
        JumpFalse    -compare-3948-false       
        Jump         -compare-3948-true        
        Label        -compare-3948-true        
        PushI        1                         
        Jump         -compare-3948-join        
        Label        -compare-3948-false       
        PushI        0                         
        Jump         -compare-3948-join        
        Label        -compare-3948-join        
        JumpTrue     -print-boolean-3949-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3949-join  
        Label        -print-boolean-3949-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3949-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3950-arg1        
        PushI        46                        
        PushI        28                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3950-arg2        
        PushI        68                        
        PushI        73                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3950-sub         
        Subtract                               
        JumpFalse    -compare-3950-false       
        Jump         -compare-3950-true        
        Label        -compare-3950-true        
        PushI        1                         
        Jump         -compare-3950-join        
        Label        -compare-3950-false       
        PushI        0                         
        Jump         -compare-3950-join        
        Label        -compare-3950-join        
        JumpTrue     -print-boolean-3951-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3951-join  
        Label        -print-boolean-3951-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3951-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3952-arg1        
        PushI        45                        
        PushI        69                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3952-arg2        
        PushI        46                        
        PushI        41                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3952-sub         
        Subtract                               
        JumpFalse    -compare-3952-false       
        Jump         -compare-3952-true        
        Label        -compare-3952-true        
        PushI        1                         
        Jump         -compare-3952-join        
        Label        -compare-3952-false       
        PushI        0                         
        Jump         -compare-3952-join        
        Label        -compare-3952-join        
        JumpTrue     -print-boolean-3953-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3953-join  
        Label        -print-boolean-3953-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3953-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3954-arg1        
        PushI        20                        
        PushI        1                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3954-arg2        
        PushI        85                        
        PushI        60                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3954-sub         
        Subtract                               
        JumpFalse    -compare-3954-false       
        Jump         -compare-3954-true        
        Label        -compare-3954-true        
        PushI        1                         
        Jump         -compare-3954-join        
        Label        -compare-3954-false       
        PushI        0                         
        Jump         -compare-3954-join        
        Label        -compare-3954-join        
        JumpTrue     -print-boolean-3955-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3955-join  
        Label        -print-boolean-3955-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3955-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3956-arg1        
        PushI        65                        
        PushI        89                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3956-arg2        
        PushI        64                        
        PushI        32                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3956-sub         
        Subtract                               
        JumpFalse    -compare-3956-false       
        Jump         -compare-3956-true        
        Label        -compare-3956-true        
        PushI        1                         
        Jump         -compare-3956-join        
        Label        -compare-3956-false       
        PushI        0                         
        Jump         -compare-3956-join        
        Label        -compare-3956-join        
        JumpTrue     -print-boolean-3957-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3957-join  
        Label        -print-boolean-3957-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3957-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3958-arg1        
        PushI        5                         
        PushI        7                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3958-arg2        
        PushI        98                        
        PushI        59                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3958-sub         
        Subtract                               
        JumpFalse    -compare-3958-false       
        Jump         -compare-3958-true        
        Label        -compare-3958-true        
        PushI        1                         
        Jump         -compare-3958-join        
        Label        -compare-3958-false       
        PushI        0                         
        Jump         -compare-3958-join        
        Label        -compare-3958-join        
        JumpTrue     -print-boolean-3959-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3959-join  
        Label        -print-boolean-3959-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3959-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3960-arg1        
        PushI        57                        
        PushI        9                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3960-arg2        
        PushI        62                        
        PushI        11                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3960-sub         
        Subtract                               
        JumpFalse    -compare-3960-false       
        Jump         -compare-3960-true        
        Label        -compare-3960-true        
        PushI        1                         
        Jump         -compare-3960-join        
        Label        -compare-3960-false       
        PushI        0                         
        Jump         -compare-3960-join        
        Label        -compare-3960-join        
        JumpTrue     -print-boolean-3961-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3961-join  
        Label        -print-boolean-3961-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3961-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3962-arg1        
        PushI        60                        
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3962-arg2        
        PushI        32                        
        PushI        2                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3962-sub         
        Subtract                               
        JumpFalse    -compare-3962-false       
        Jump         -compare-3962-true        
        Label        -compare-3962-true        
        PushI        1                         
        Jump         -compare-3962-join        
        Label        -compare-3962-false       
        PushI        0                         
        Jump         -compare-3962-join        
        Label        -compare-3962-join        
        JumpTrue     -print-boolean-3963-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3963-join  
        Label        -print-boolean-3963-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3963-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3964-arg1        
        PushI        13                        
        PushI        10                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3964-arg2        
        PushI        78                        
        PushI        68                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3964-sub         
        Subtract                               
        JumpFalse    -compare-3964-false       
        Jump         -compare-3964-true        
        Label        -compare-3964-true        
        PushI        1                         
        Jump         -compare-3964-join        
        Label        -compare-3964-false       
        PushI        0                         
        Jump         -compare-3964-join        
        Label        -compare-3964-join        
        JumpTrue     -print-boolean-3965-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3965-join  
        Label        -print-boolean-3965-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3965-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3966-arg1        
        PushI        1                         
        PushI        79                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3966-arg2        
        PushI        32                        
        PushI        75                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3966-sub         
        Subtract                               
        JumpFalse    -compare-3966-false       
        Jump         -compare-3966-true        
        Label        -compare-3966-true        
        PushI        1                         
        Jump         -compare-3966-join        
        Label        -compare-3966-false       
        PushI        0                         
        Jump         -compare-3966-join        
        Label        -compare-3966-join        
        JumpTrue     -print-boolean-3967-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3967-join  
        Label        -print-boolean-3967-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3967-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3968-arg1        
        PushI        41                        
        PushI        95                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3968-arg2        
        PushI        48                        
        PushI        19                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3968-sub         
        Subtract                               
        JumpFalse    -compare-3968-false       
        Jump         -compare-3968-true        
        Label        -compare-3968-true        
        PushI        1                         
        Jump         -compare-3968-join        
        Label        -compare-3968-false       
        PushI        0                         
        Jump         -compare-3968-join        
        Label        -compare-3968-join        
        JumpTrue     -print-boolean-3969-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3969-join  
        Label        -print-boolean-3969-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3969-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3970-arg1        
        PushI        24                        
        PushI        94                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3970-arg2        
        PushI        72                        
        PushI        8                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3970-sub         
        Subtract                               
        JumpFalse    -compare-3970-false       
        Jump         -compare-3970-true        
        Label        -compare-3970-true        
        PushI        1                         
        Jump         -compare-3970-join        
        Label        -compare-3970-false       
        PushI        0                         
        Jump         -compare-3970-join        
        Label        -compare-3970-join        
        JumpTrue     -print-boolean-3971-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3971-join  
        Label        -print-boolean-3971-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3971-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3972-arg1        
        PushI        26                        
        PushI        96                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3972-arg2        
        PushI        8                         
        PushI        40                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3972-sub         
        Subtract                               
        JumpFalse    -compare-3972-false       
        Jump         -compare-3972-true        
        Label        -compare-3972-true        
        PushI        1                         
        Jump         -compare-3972-join        
        Label        -compare-3972-false       
        PushI        0                         
        Jump         -compare-3972-join        
        Label        -compare-3972-join        
        JumpTrue     -print-boolean-3973-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3973-join  
        Label        -print-boolean-3973-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3973-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
