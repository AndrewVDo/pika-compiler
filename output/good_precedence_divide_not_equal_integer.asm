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
        Label        -compare-3889-arg1        
        PushI        63                        
        PushI        45                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3889-arg2        
        PushI        94                        
        Label        -compare-3889-sub         
        Subtract                               
        JumpFalse    -compare-3889-false       
        Jump         -compare-3889-true        
        Label        -compare-3889-true        
        PushI        1                         
        Jump         -compare-3889-join        
        Label        -compare-3889-false       
        PushI        0                         
        Jump         -compare-3889-join        
        Label        -compare-3889-join        
        JumpTrue     -print-boolean-3890-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3890-join  
        Label        -print-boolean-3890-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3890-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3891-arg1        
        PushI        96                        
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3891-arg2        
        PushI        57                        
        Label        -compare-3891-sub         
        Subtract                               
        JumpFalse    -compare-3891-false       
        Jump         -compare-3891-true        
        Label        -compare-3891-true        
        PushI        1                         
        Jump         -compare-3891-join        
        Label        -compare-3891-false       
        PushI        0                         
        Jump         -compare-3891-join        
        Label        -compare-3891-join        
        JumpTrue     -print-boolean-3892-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3892-join  
        Label        -print-boolean-3892-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3892-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3893-arg1        
        PushI        61                        
        PushI        50                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3893-arg2        
        PushI        27                        
        Label        -compare-3893-sub         
        Subtract                               
        JumpFalse    -compare-3893-false       
        Jump         -compare-3893-true        
        Label        -compare-3893-true        
        PushI        1                         
        Jump         -compare-3893-join        
        Label        -compare-3893-false       
        PushI        0                         
        Jump         -compare-3893-join        
        Label        -compare-3893-join        
        JumpTrue     -print-boolean-3894-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3894-join  
        Label        -print-boolean-3894-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3894-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3895-arg1        
        PushI        88                        
        PushI        85                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3895-arg2        
        PushI        78                        
        Label        -compare-3895-sub         
        Subtract                               
        JumpFalse    -compare-3895-false       
        Jump         -compare-3895-true        
        Label        -compare-3895-true        
        PushI        1                         
        Jump         -compare-3895-join        
        Label        -compare-3895-false       
        PushI        0                         
        Jump         -compare-3895-join        
        Label        -compare-3895-join        
        JumpTrue     -print-boolean-3896-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3896-join  
        Label        -print-boolean-3896-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3896-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3897-arg1        
        PushI        99                        
        PushI        79                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3897-arg2        
        PushI        78                        
        Label        -compare-3897-sub         
        Subtract                               
        JumpFalse    -compare-3897-false       
        Jump         -compare-3897-true        
        Label        -compare-3897-true        
        PushI        1                         
        Jump         -compare-3897-join        
        Label        -compare-3897-false       
        PushI        0                         
        Jump         -compare-3897-join        
        Label        -compare-3897-join        
        JumpTrue     -print-boolean-3898-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3898-join  
        Label        -print-boolean-3898-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3898-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3899-arg1        
        PushI        44                        
        PushI        75                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3899-arg2        
        PushI        4                         
        Label        -compare-3899-sub         
        Subtract                               
        JumpFalse    -compare-3899-false       
        Jump         -compare-3899-true        
        Label        -compare-3899-true        
        PushI        1                         
        Jump         -compare-3899-join        
        Label        -compare-3899-false       
        PushI        0                         
        Jump         -compare-3899-join        
        Label        -compare-3899-join        
        JumpTrue     -print-boolean-3900-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3900-join  
        Label        -print-boolean-3900-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3900-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3901-arg1        
        PushI        19                        
        PushI        50                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3901-arg2        
        PushI        9                         
        Label        -compare-3901-sub         
        Subtract                               
        JumpFalse    -compare-3901-false       
        Jump         -compare-3901-true        
        Label        -compare-3901-true        
        PushI        1                         
        Jump         -compare-3901-join        
        Label        -compare-3901-false       
        PushI        0                         
        Jump         -compare-3901-join        
        Label        -compare-3901-join        
        JumpTrue     -print-boolean-3902-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3902-join  
        Label        -print-boolean-3902-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3902-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3903-arg1        
        PushI        69                        
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3903-arg2        
        PushI        76                        
        Label        -compare-3903-sub         
        Subtract                               
        JumpFalse    -compare-3903-false       
        Jump         -compare-3903-true        
        Label        -compare-3903-true        
        PushI        1                         
        Jump         -compare-3903-join        
        Label        -compare-3903-false       
        PushI        0                         
        Jump         -compare-3903-join        
        Label        -compare-3903-join        
        JumpTrue     -print-boolean-3904-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3904-join  
        Label        -print-boolean-3904-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3904-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3905-arg1        
        PushI        47                        
        PushI        44                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3905-arg2        
        PushI        72                        
        Label        -compare-3905-sub         
        Subtract                               
        JumpFalse    -compare-3905-false       
        Jump         -compare-3905-true        
        Label        -compare-3905-true        
        PushI        1                         
        Jump         -compare-3905-join        
        Label        -compare-3905-false       
        PushI        0                         
        Jump         -compare-3905-join        
        Label        -compare-3905-join        
        JumpTrue     -print-boolean-3906-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3906-join  
        Label        -print-boolean-3906-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3906-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3907-arg1        
        PushI        80                        
        PushI        36                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3907-arg2        
        PushI        54                        
        Label        -compare-3907-sub         
        Subtract                               
        JumpFalse    -compare-3907-false       
        Jump         -compare-3907-true        
        Label        -compare-3907-true        
        PushI        1                         
        Jump         -compare-3907-join        
        Label        -compare-3907-false       
        PushI        0                         
        Jump         -compare-3907-join        
        Label        -compare-3907-join        
        JumpTrue     -print-boolean-3908-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3908-join  
        Label        -print-boolean-3908-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3908-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3909-arg1        
        PushI        25                        
        PushI        15                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3909-arg2        
        PushI        24                        
        Label        -compare-3909-sub         
        Subtract                               
        JumpFalse    -compare-3909-false       
        Jump         -compare-3909-true        
        Label        -compare-3909-true        
        PushI        1                         
        Jump         -compare-3909-join        
        Label        -compare-3909-false       
        PushI        0                         
        Jump         -compare-3909-join        
        Label        -compare-3909-join        
        JumpTrue     -print-boolean-3910-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3910-join  
        Label        -print-boolean-3910-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3910-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3911-arg1        
        PushI        75                        
        PushI        5                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3911-arg2        
        PushI        56                        
        Label        -compare-3911-sub         
        Subtract                               
        JumpFalse    -compare-3911-false       
        Jump         -compare-3911-true        
        Label        -compare-3911-true        
        PushI        1                         
        Jump         -compare-3911-join        
        Label        -compare-3911-false       
        PushI        0                         
        Jump         -compare-3911-join        
        Label        -compare-3911-join        
        JumpTrue     -print-boolean-3912-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3912-join  
        Label        -print-boolean-3912-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3912-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3913-arg1        
        PushI        21                        
        Label        -compare-3913-arg2        
        PushI        7                         
        PushI        61                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3913-sub         
        Subtract                               
        JumpFalse    -compare-3913-false       
        Jump         -compare-3913-true        
        Label        -compare-3913-true        
        PushI        1                         
        Jump         -compare-3913-join        
        Label        -compare-3913-false       
        PushI        0                         
        Jump         -compare-3913-join        
        Label        -compare-3913-join        
        JumpTrue     -print-boolean-3914-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3914-join  
        Label        -print-boolean-3914-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3914-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3915-arg1        
        PushI        96                        
        Label        -compare-3915-arg2        
        PushI        40                        
        PushI        61                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3915-sub         
        Subtract                               
        JumpFalse    -compare-3915-false       
        Jump         -compare-3915-true        
        Label        -compare-3915-true        
        PushI        1                         
        Jump         -compare-3915-join        
        Label        -compare-3915-false       
        PushI        0                         
        Jump         -compare-3915-join        
        Label        -compare-3915-join        
        JumpTrue     -print-boolean-3916-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3916-join  
        Label        -print-boolean-3916-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3916-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3917-arg1        
        PushI        41                        
        Label        -compare-3917-arg2        
        PushI        4                         
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3917-sub         
        Subtract                               
        JumpFalse    -compare-3917-false       
        Jump         -compare-3917-true        
        Label        -compare-3917-true        
        PushI        1                         
        Jump         -compare-3917-join        
        Label        -compare-3917-false       
        PushI        0                         
        Jump         -compare-3917-join        
        Label        -compare-3917-join        
        JumpTrue     -print-boolean-3918-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3918-join  
        Label        -print-boolean-3918-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3918-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3919-arg1        
        PushI        32                        
        Label        -compare-3919-arg2        
        PushI        21                        
        PushI        27                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3919-sub         
        Subtract                               
        JumpFalse    -compare-3919-false       
        Jump         -compare-3919-true        
        Label        -compare-3919-true        
        PushI        1                         
        Jump         -compare-3919-join        
        Label        -compare-3919-false       
        PushI        0                         
        Jump         -compare-3919-join        
        Label        -compare-3919-join        
        JumpTrue     -print-boolean-3920-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3920-join  
        Label        -print-boolean-3920-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3920-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3921-arg1        
        PushI        17                        
        Label        -compare-3921-arg2        
        PushI        83                        
        PushI        30                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3921-sub         
        Subtract                               
        JumpFalse    -compare-3921-false       
        Jump         -compare-3921-true        
        Label        -compare-3921-true        
        PushI        1                         
        Jump         -compare-3921-join        
        Label        -compare-3921-false       
        PushI        0                         
        Jump         -compare-3921-join        
        Label        -compare-3921-join        
        JumpTrue     -print-boolean-3922-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3922-join  
        Label        -print-boolean-3922-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3922-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3923-arg1        
        PushI        47                        
        Label        -compare-3923-arg2        
        PushI        64                        
        PushI        78                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3923-sub         
        Subtract                               
        JumpFalse    -compare-3923-false       
        Jump         -compare-3923-true        
        Label        -compare-3923-true        
        PushI        1                         
        Jump         -compare-3923-join        
        Label        -compare-3923-false       
        PushI        0                         
        Jump         -compare-3923-join        
        Label        -compare-3923-join        
        JumpTrue     -print-boolean-3924-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3924-join  
        Label        -print-boolean-3924-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3924-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3925-arg1        
        PushI        63                        
        Label        -compare-3925-arg2        
        PushI        55                        
        PushI        55                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3925-sub         
        Subtract                               
        JumpFalse    -compare-3925-false       
        Jump         -compare-3925-true        
        Label        -compare-3925-true        
        PushI        1                         
        Jump         -compare-3925-join        
        Label        -compare-3925-false       
        PushI        0                         
        Jump         -compare-3925-join        
        Label        -compare-3925-join        
        JumpTrue     -print-boolean-3926-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3926-join  
        Label        -print-boolean-3926-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3926-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3927-arg1        
        PushI        34                        
        Label        -compare-3927-arg2        
        PushI        96                        
        PushI        4                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3927-sub         
        Subtract                               
        JumpFalse    -compare-3927-false       
        Jump         -compare-3927-true        
        Label        -compare-3927-true        
        PushI        1                         
        Jump         -compare-3927-join        
        Label        -compare-3927-false       
        PushI        0                         
        Jump         -compare-3927-join        
        Label        -compare-3927-join        
        JumpTrue     -print-boolean-3928-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3928-join  
        Label        -print-boolean-3928-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3928-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3929-arg1        
        PushI        27                        
        Label        -compare-3929-arg2        
        PushI        48                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3929-sub         
        Subtract                               
        JumpFalse    -compare-3929-false       
        Jump         -compare-3929-true        
        Label        -compare-3929-true        
        PushI        1                         
        Jump         -compare-3929-join        
        Label        -compare-3929-false       
        PushI        0                         
        Jump         -compare-3929-join        
        Label        -compare-3929-join        
        JumpTrue     -print-boolean-3930-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3930-join  
        Label        -print-boolean-3930-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3930-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3931-arg1        
        PushI        81                        
        Label        -compare-3931-arg2        
        PushI        55                        
        PushI        7                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3931-sub         
        Subtract                               
        JumpFalse    -compare-3931-false       
        Jump         -compare-3931-true        
        Label        -compare-3931-true        
        PushI        1                         
        Jump         -compare-3931-join        
        Label        -compare-3931-false       
        PushI        0                         
        Jump         -compare-3931-join        
        Label        -compare-3931-join        
        JumpTrue     -print-boolean-3932-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3932-join  
        Label        -print-boolean-3932-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3932-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3933-arg1        
        PushI        14                        
        Label        -compare-3933-arg2        
        PushI        83                        
        PushI        17                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3933-sub         
        Subtract                               
        JumpFalse    -compare-3933-false       
        Jump         -compare-3933-true        
        Label        -compare-3933-true        
        PushI        1                         
        Jump         -compare-3933-join        
        Label        -compare-3933-false       
        PushI        0                         
        Jump         -compare-3933-join        
        Label        -compare-3933-join        
        JumpTrue     -print-boolean-3934-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3934-join  
        Label        -print-boolean-3934-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3934-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3935-arg1        
        PushI        29                        
        Label        -compare-3935-arg2        
        PushI        38                        
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3935-sub         
        Subtract                               
        JumpFalse    -compare-3935-false       
        Jump         -compare-3935-true        
        Label        -compare-3935-true        
        PushI        1                         
        Jump         -compare-3935-join        
        Label        -compare-3935-false       
        PushI        0                         
        Jump         -compare-3935-join        
        Label        -compare-3935-join        
        JumpTrue     -print-boolean-3936-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3936-join  
        Label        -print-boolean-3936-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3936-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3937-arg1        
        PushI        46                        
        PushI        28                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3937-arg2        
        PushI        68                        
        PushI        73                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3937-sub         
        Subtract                               
        JumpFalse    -compare-3937-false       
        Jump         -compare-3937-true        
        Label        -compare-3937-true        
        PushI        1                         
        Jump         -compare-3937-join        
        Label        -compare-3937-false       
        PushI        0                         
        Jump         -compare-3937-join        
        Label        -compare-3937-join        
        JumpTrue     -print-boolean-3938-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3938-join  
        Label        -print-boolean-3938-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3938-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3939-arg1        
        PushI        45                        
        PushI        69                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3939-arg2        
        PushI        46                        
        PushI        41                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3939-sub         
        Subtract                               
        JumpFalse    -compare-3939-false       
        Jump         -compare-3939-true        
        Label        -compare-3939-true        
        PushI        1                         
        Jump         -compare-3939-join        
        Label        -compare-3939-false       
        PushI        0                         
        Jump         -compare-3939-join        
        Label        -compare-3939-join        
        JumpTrue     -print-boolean-3940-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3940-join  
        Label        -print-boolean-3940-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3940-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3941-arg1        
        PushI        20                        
        PushI        1                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3941-arg2        
        PushI        85                        
        PushI        60                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3941-sub         
        Subtract                               
        JumpFalse    -compare-3941-false       
        Jump         -compare-3941-true        
        Label        -compare-3941-true        
        PushI        1                         
        Jump         -compare-3941-join        
        Label        -compare-3941-false       
        PushI        0                         
        Jump         -compare-3941-join        
        Label        -compare-3941-join        
        JumpTrue     -print-boolean-3942-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3942-join  
        Label        -print-boolean-3942-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3942-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3943-arg1        
        PushI        65                        
        PushI        89                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3943-arg2        
        PushI        64                        
        PushI        32                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3943-sub         
        Subtract                               
        JumpFalse    -compare-3943-false       
        Jump         -compare-3943-true        
        Label        -compare-3943-true        
        PushI        1                         
        Jump         -compare-3943-join        
        Label        -compare-3943-false       
        PushI        0                         
        Jump         -compare-3943-join        
        Label        -compare-3943-join        
        JumpTrue     -print-boolean-3944-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3944-join  
        Label        -print-boolean-3944-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3944-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3945-arg1        
        PushI        5                         
        PushI        7                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3945-arg2        
        PushI        98                        
        PushI        59                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3945-sub         
        Subtract                               
        JumpFalse    -compare-3945-false       
        Jump         -compare-3945-true        
        Label        -compare-3945-true        
        PushI        1                         
        Jump         -compare-3945-join        
        Label        -compare-3945-false       
        PushI        0                         
        Jump         -compare-3945-join        
        Label        -compare-3945-join        
        JumpTrue     -print-boolean-3946-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3946-join  
        Label        -print-boolean-3946-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3946-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3947-arg1        
        PushI        57                        
        PushI        9                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3947-arg2        
        PushI        62                        
        PushI        11                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3947-sub         
        Subtract                               
        JumpFalse    -compare-3947-false       
        Jump         -compare-3947-true        
        Label        -compare-3947-true        
        PushI        1                         
        Jump         -compare-3947-join        
        Label        -compare-3947-false       
        PushI        0                         
        Jump         -compare-3947-join        
        Label        -compare-3947-join        
        JumpTrue     -print-boolean-3948-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3948-join  
        Label        -print-boolean-3948-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3948-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3949-arg1        
        PushI        60                        
        PushI        97                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3949-arg2        
        PushI        32                        
        PushI        2                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3949-sub         
        Subtract                               
        JumpFalse    -compare-3949-false       
        Jump         -compare-3949-true        
        Label        -compare-3949-true        
        PushI        1                         
        Jump         -compare-3949-join        
        Label        -compare-3949-false       
        PushI        0                         
        Jump         -compare-3949-join        
        Label        -compare-3949-join        
        JumpTrue     -print-boolean-3950-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3950-join  
        Label        -print-boolean-3950-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3950-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3951-arg1        
        PushI        13                        
        PushI        10                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3951-arg2        
        PushI        78                        
        PushI        68                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3951-sub         
        Subtract                               
        JumpFalse    -compare-3951-false       
        Jump         -compare-3951-true        
        Label        -compare-3951-true        
        PushI        1                         
        Jump         -compare-3951-join        
        Label        -compare-3951-false       
        PushI        0                         
        Jump         -compare-3951-join        
        Label        -compare-3951-join        
        JumpTrue     -print-boolean-3952-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3952-join  
        Label        -print-boolean-3952-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3952-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3953-arg1        
        PushI        1                         
        PushI        79                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3953-arg2        
        PushI        32                        
        PushI        75                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3953-sub         
        Subtract                               
        JumpFalse    -compare-3953-false       
        Jump         -compare-3953-true        
        Label        -compare-3953-true        
        PushI        1                         
        Jump         -compare-3953-join        
        Label        -compare-3953-false       
        PushI        0                         
        Jump         -compare-3953-join        
        Label        -compare-3953-join        
        JumpTrue     -print-boolean-3954-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3954-join  
        Label        -print-boolean-3954-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3954-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3955-arg1        
        PushI        41                        
        PushI        95                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3955-arg2        
        PushI        48                        
        PushI        19                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3955-sub         
        Subtract                               
        JumpFalse    -compare-3955-false       
        Jump         -compare-3955-true        
        Label        -compare-3955-true        
        PushI        1                         
        Jump         -compare-3955-join        
        Label        -compare-3955-false       
        PushI        0                         
        Jump         -compare-3955-join        
        Label        -compare-3955-join        
        JumpTrue     -print-boolean-3956-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3956-join  
        Label        -print-boolean-3956-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3956-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3957-arg1        
        PushI        24                        
        PushI        94                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3957-arg2        
        PushI        72                        
        PushI        8                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3957-sub         
        Subtract                               
        JumpFalse    -compare-3957-false       
        Jump         -compare-3957-true        
        Label        -compare-3957-true        
        PushI        1                         
        Jump         -compare-3957-join        
        Label        -compare-3957-false       
        PushI        0                         
        Jump         -compare-3957-join        
        Label        -compare-3957-join        
        JumpTrue     -print-boolean-3958-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3958-join  
        Label        -print-boolean-3958-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3958-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3959-arg1        
        PushI        26                        
        PushI        96                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3959-arg2        
        PushI        8                         
        PushI        40                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3959-sub         
        Subtract                               
        JumpFalse    -compare-3959-false       
        Jump         -compare-3959-true        
        Label        -compare-3959-true        
        PushI        1                         
        Jump         -compare-3959-join        
        Label        -compare-3959-false       
        PushI        0                         
        Jump         -compare-3959-join        
        Label        -compare-3959-join        
        JumpTrue     -print-boolean-3960-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3960-join  
        Label        -print-boolean-3960-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3960-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
