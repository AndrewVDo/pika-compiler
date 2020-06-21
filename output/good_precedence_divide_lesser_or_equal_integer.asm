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
        Label        -compare-3758-arg1        
        PushI        72                        
        PushI        24                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3758-arg2        
        PushI        44                        
        Label        -compare-3758-sub         
        Subtract                               
        JumpPos      -compare-3758-false       
        Jump         -compare-3758-true        
        Label        -compare-3758-true        
        PushI        1                         
        Jump         -compare-3758-join        
        Label        -compare-3758-false       
        PushI        0                         
        Jump         -compare-3758-join        
        Label        -compare-3758-join        
        JumpTrue     -print-boolean-3759-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3759-join  
        Label        -print-boolean-3759-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3759-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3760-arg1        
        PushI        36                        
        PushI        14                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3760-arg2        
        PushI        73                        
        Label        -compare-3760-sub         
        Subtract                               
        JumpPos      -compare-3760-false       
        Jump         -compare-3760-true        
        Label        -compare-3760-true        
        PushI        1                         
        Jump         -compare-3760-join        
        Label        -compare-3760-false       
        PushI        0                         
        Jump         -compare-3760-join        
        Label        -compare-3760-join        
        JumpTrue     -print-boolean-3761-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3761-join  
        Label        -print-boolean-3761-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3761-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3762-arg1        
        PushI        47                        
        PushI        63                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3762-arg2        
        PushI        58                        
        Label        -compare-3762-sub         
        Subtract                               
        JumpPos      -compare-3762-false       
        Jump         -compare-3762-true        
        Label        -compare-3762-true        
        PushI        1                         
        Jump         -compare-3762-join        
        Label        -compare-3762-false       
        PushI        0                         
        Jump         -compare-3762-join        
        Label        -compare-3762-join        
        JumpTrue     -print-boolean-3763-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3763-join  
        Label        -print-boolean-3763-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3763-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3764-arg1        
        PushI        13                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3764-arg2        
        PushI        27                        
        Label        -compare-3764-sub         
        Subtract                               
        JumpPos      -compare-3764-false       
        Jump         -compare-3764-true        
        Label        -compare-3764-true        
        PushI        1                         
        Jump         -compare-3764-join        
        Label        -compare-3764-false       
        PushI        0                         
        Jump         -compare-3764-join        
        Label        -compare-3764-join        
        JumpTrue     -print-boolean-3765-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3765-join  
        Label        -print-boolean-3765-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3765-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3766-arg1        
        PushI        84                        
        PushI        61                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3766-arg2        
        PushI        62                        
        Label        -compare-3766-sub         
        Subtract                               
        JumpPos      -compare-3766-false       
        Jump         -compare-3766-true        
        Label        -compare-3766-true        
        PushI        1                         
        Jump         -compare-3766-join        
        Label        -compare-3766-false       
        PushI        0                         
        Jump         -compare-3766-join        
        Label        -compare-3766-join        
        JumpTrue     -print-boolean-3767-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3767-join  
        Label        -print-boolean-3767-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3767-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3768-arg1        
        PushI        63                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3768-arg2        
        PushI        2                         
        Label        -compare-3768-sub         
        Subtract                               
        JumpPos      -compare-3768-false       
        Jump         -compare-3768-true        
        Label        -compare-3768-true        
        PushI        1                         
        Jump         -compare-3768-join        
        Label        -compare-3768-false       
        PushI        0                         
        Jump         -compare-3768-join        
        Label        -compare-3768-join        
        JumpTrue     -print-boolean-3769-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3769-join  
        Label        -print-boolean-3769-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3769-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3770-arg1        
        PushI        83                        
        PushI        48                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3770-arg2        
        PushI        89                        
        Label        -compare-3770-sub         
        Subtract                               
        JumpPos      -compare-3770-false       
        Jump         -compare-3770-true        
        Label        -compare-3770-true        
        PushI        1                         
        Jump         -compare-3770-join        
        Label        -compare-3770-false       
        PushI        0                         
        Jump         -compare-3770-join        
        Label        -compare-3770-join        
        JumpTrue     -print-boolean-3771-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3771-join  
        Label        -print-boolean-3771-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3771-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3772-arg1        
        PushI        20                        
        PushI        57                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3772-arg2        
        PushI        64                        
        Label        -compare-3772-sub         
        Subtract                               
        JumpPos      -compare-3772-false       
        Jump         -compare-3772-true        
        Label        -compare-3772-true        
        PushI        1                         
        Jump         -compare-3772-join        
        Label        -compare-3772-false       
        PushI        0                         
        Jump         -compare-3772-join        
        Label        -compare-3772-join        
        JumpTrue     -print-boolean-3773-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3773-join  
        Label        -print-boolean-3773-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3773-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3774-arg1        
        PushI        31                        
        PushI        41                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3774-arg2        
        PushI        53                        
        Label        -compare-3774-sub         
        Subtract                               
        JumpPos      -compare-3774-false       
        Jump         -compare-3774-true        
        Label        -compare-3774-true        
        PushI        1                         
        Jump         -compare-3774-join        
        Label        -compare-3774-false       
        PushI        0                         
        Jump         -compare-3774-join        
        Label        -compare-3774-join        
        JumpTrue     -print-boolean-3775-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3775-join  
        Label        -print-boolean-3775-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3775-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3776-arg1        
        PushI        8                         
        PushI        44                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3776-arg2        
        PushI        7                         
        Label        -compare-3776-sub         
        Subtract                               
        JumpPos      -compare-3776-false       
        Jump         -compare-3776-true        
        Label        -compare-3776-true        
        PushI        1                         
        Jump         -compare-3776-join        
        Label        -compare-3776-false       
        PushI        0                         
        Jump         -compare-3776-join        
        Label        -compare-3776-join        
        JumpTrue     -print-boolean-3777-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3777-join  
        Label        -print-boolean-3777-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3777-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3778-arg1        
        PushI        87                        
        PushI        87                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3778-arg2        
        PushI        38                        
        Label        -compare-3778-sub         
        Subtract                               
        JumpPos      -compare-3778-false       
        Jump         -compare-3778-true        
        Label        -compare-3778-true        
        PushI        1                         
        Jump         -compare-3778-join        
        Label        -compare-3778-false       
        PushI        0                         
        Jump         -compare-3778-join        
        Label        -compare-3778-join        
        JumpTrue     -print-boolean-3779-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3779-join  
        Label        -print-boolean-3779-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3779-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3780-arg1        
        PushI        26                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3780-arg2        
        PushI        84                        
        Label        -compare-3780-sub         
        Subtract                               
        JumpPos      -compare-3780-false       
        Jump         -compare-3780-true        
        Label        -compare-3780-true        
        PushI        1                         
        Jump         -compare-3780-join        
        Label        -compare-3780-false       
        PushI        0                         
        Jump         -compare-3780-join        
        Label        -compare-3780-join        
        JumpTrue     -print-boolean-3781-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3781-join  
        Label        -print-boolean-3781-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3781-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3782-arg1        
        PushI        1                         
        Label        -compare-3782-arg2        
        PushI        91                        
        PushI        60                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3782-sub         
        Subtract                               
        JumpPos      -compare-3782-false       
        Jump         -compare-3782-true        
        Label        -compare-3782-true        
        PushI        1                         
        Jump         -compare-3782-join        
        Label        -compare-3782-false       
        PushI        0                         
        Jump         -compare-3782-join        
        Label        -compare-3782-join        
        JumpTrue     -print-boolean-3783-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3783-join  
        Label        -print-boolean-3783-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3783-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3784-arg1        
        PushI        44                        
        Label        -compare-3784-arg2        
        PushI        84                        
        PushI        98                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3784-sub         
        Subtract                               
        JumpPos      -compare-3784-false       
        Jump         -compare-3784-true        
        Label        -compare-3784-true        
        PushI        1                         
        Jump         -compare-3784-join        
        Label        -compare-3784-false       
        PushI        0                         
        Jump         -compare-3784-join        
        Label        -compare-3784-join        
        JumpTrue     -print-boolean-3785-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3785-join  
        Label        -print-boolean-3785-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3785-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3786-arg1        
        PushI        26                        
        Label        -compare-3786-arg2        
        PushI        35                        
        PushI        47                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3786-sub         
        Subtract                               
        JumpPos      -compare-3786-false       
        Jump         -compare-3786-true        
        Label        -compare-3786-true        
        PushI        1                         
        Jump         -compare-3786-join        
        Label        -compare-3786-false       
        PushI        0                         
        Jump         -compare-3786-join        
        Label        -compare-3786-join        
        JumpTrue     -print-boolean-3787-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3787-join  
        Label        -print-boolean-3787-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3787-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3788-arg1        
        PushI        46                        
        Label        -compare-3788-arg2        
        PushI        96                        
        PushI        4                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3788-sub         
        Subtract                               
        JumpPos      -compare-3788-false       
        Jump         -compare-3788-true        
        Label        -compare-3788-true        
        PushI        1                         
        Jump         -compare-3788-join        
        Label        -compare-3788-false       
        PushI        0                         
        Jump         -compare-3788-join        
        Label        -compare-3788-join        
        JumpTrue     -print-boolean-3789-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3789-join  
        Label        -print-boolean-3789-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3789-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3790-arg1        
        PushI        41                        
        Label        -compare-3790-arg2        
        PushI        12                        
        PushI        68                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3790-sub         
        Subtract                               
        JumpPos      -compare-3790-false       
        Jump         -compare-3790-true        
        Label        -compare-3790-true        
        PushI        1                         
        Jump         -compare-3790-join        
        Label        -compare-3790-false       
        PushI        0                         
        Jump         -compare-3790-join        
        Label        -compare-3790-join        
        JumpTrue     -print-boolean-3791-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3791-join  
        Label        -print-boolean-3791-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3791-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3792-arg1        
        PushI        5                         
        Label        -compare-3792-arg2        
        PushI        35                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3792-sub         
        Subtract                               
        JumpPos      -compare-3792-false       
        Jump         -compare-3792-true        
        Label        -compare-3792-true        
        PushI        1                         
        Jump         -compare-3792-join        
        Label        -compare-3792-false       
        PushI        0                         
        Jump         -compare-3792-join        
        Label        -compare-3792-join        
        JumpTrue     -print-boolean-3793-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3793-join  
        Label        -print-boolean-3793-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3793-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3794-arg1        
        PushI        79                        
        Label        -compare-3794-arg2        
        PushI        51                        
        PushI        3                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3794-sub         
        Subtract                               
        JumpPos      -compare-3794-false       
        Jump         -compare-3794-true        
        Label        -compare-3794-true        
        PushI        1                         
        Jump         -compare-3794-join        
        Label        -compare-3794-false       
        PushI        0                         
        Jump         -compare-3794-join        
        Label        -compare-3794-join        
        JumpTrue     -print-boolean-3795-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3795-join  
        Label        -print-boolean-3795-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3795-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3796-arg1        
        PushI        36                        
        Label        -compare-3796-arg2        
        PushI        22                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3796-sub         
        Subtract                               
        JumpPos      -compare-3796-false       
        Jump         -compare-3796-true        
        Label        -compare-3796-true        
        PushI        1                         
        Jump         -compare-3796-join        
        Label        -compare-3796-false       
        PushI        0                         
        Jump         -compare-3796-join        
        Label        -compare-3796-join        
        JumpTrue     -print-boolean-3797-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3797-join  
        Label        -print-boolean-3797-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3797-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3798-arg1        
        PushI        73                        
        Label        -compare-3798-arg2        
        PushI        3                         
        PushI        76                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3798-sub         
        Subtract                               
        JumpPos      -compare-3798-false       
        Jump         -compare-3798-true        
        Label        -compare-3798-true        
        PushI        1                         
        Jump         -compare-3798-join        
        Label        -compare-3798-false       
        PushI        0                         
        Jump         -compare-3798-join        
        Label        -compare-3798-join        
        JumpTrue     -print-boolean-3799-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3799-join  
        Label        -print-boolean-3799-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3799-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3800-arg1        
        PushI        16                        
        Label        -compare-3800-arg2        
        PushI        90                        
        PushI        64                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3800-sub         
        Subtract                               
        JumpPos      -compare-3800-false       
        Jump         -compare-3800-true        
        Label        -compare-3800-true        
        PushI        1                         
        Jump         -compare-3800-join        
        Label        -compare-3800-false       
        PushI        0                         
        Jump         -compare-3800-join        
        Label        -compare-3800-join        
        JumpTrue     -print-boolean-3801-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3801-join  
        Label        -print-boolean-3801-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3801-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3802-arg1        
        PushI        48                        
        Label        -compare-3802-arg2        
        PushI        63                        
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3802-sub         
        Subtract                               
        JumpPos      -compare-3802-false       
        Jump         -compare-3802-true        
        Label        -compare-3802-true        
        PushI        1                         
        Jump         -compare-3802-join        
        Label        -compare-3802-false       
        PushI        0                         
        Jump         -compare-3802-join        
        Label        -compare-3802-join        
        JumpTrue     -print-boolean-3803-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3803-join  
        Label        -print-boolean-3803-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3803-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3804-arg1        
        PushI        54                        
        Label        -compare-3804-arg2        
        PushI        92                        
        PushI        85                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3804-sub         
        Subtract                               
        JumpPos      -compare-3804-false       
        Jump         -compare-3804-true        
        Label        -compare-3804-true        
        PushI        1                         
        Jump         -compare-3804-join        
        Label        -compare-3804-false       
        PushI        0                         
        Jump         -compare-3804-join        
        Label        -compare-3804-join        
        JumpTrue     -print-boolean-3805-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3805-join  
        Label        -print-boolean-3805-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3805-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3806-arg1        
        PushI        18                        
        PushI        94                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3806-arg2        
        PushI        8                         
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3806-sub         
        Subtract                               
        JumpPos      -compare-3806-false       
        Jump         -compare-3806-true        
        Label        -compare-3806-true        
        PushI        1                         
        Jump         -compare-3806-join        
        Label        -compare-3806-false       
        PushI        0                         
        Jump         -compare-3806-join        
        Label        -compare-3806-join        
        JumpTrue     -print-boolean-3807-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3807-join  
        Label        -print-boolean-3807-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3807-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3808-arg1        
        PushI        75                        
        PushI        79                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3808-arg2        
        PushI        69                        
        PushI        43                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3808-sub         
        Subtract                               
        JumpPos      -compare-3808-false       
        Jump         -compare-3808-true        
        Label        -compare-3808-true        
        PushI        1                         
        Jump         -compare-3808-join        
        Label        -compare-3808-false       
        PushI        0                         
        Jump         -compare-3808-join        
        Label        -compare-3808-join        
        JumpTrue     -print-boolean-3809-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3809-join  
        Label        -print-boolean-3809-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3809-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3810-arg1        
        PushI        46                        
        PushI        94                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3810-arg2        
        PushI        5                         
        PushI        15                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3810-sub         
        Subtract                               
        JumpPos      -compare-3810-false       
        Jump         -compare-3810-true        
        Label        -compare-3810-true        
        PushI        1                         
        Jump         -compare-3810-join        
        Label        -compare-3810-false       
        PushI        0                         
        Jump         -compare-3810-join        
        Label        -compare-3810-join        
        JumpTrue     -print-boolean-3811-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3811-join  
        Label        -print-boolean-3811-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3811-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3812-arg1        
        PushI        2                         
        PushI        56                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3812-arg2        
        PushI        11                        
        PushI        1                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3812-sub         
        Subtract                               
        JumpPos      -compare-3812-false       
        Jump         -compare-3812-true        
        Label        -compare-3812-true        
        PushI        1                         
        Jump         -compare-3812-join        
        Label        -compare-3812-false       
        PushI        0                         
        Jump         -compare-3812-join        
        Label        -compare-3812-join        
        JumpTrue     -print-boolean-3813-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3813-join  
        Label        -print-boolean-3813-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3813-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3814-arg1        
        PushI        55                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3814-arg2        
        PushI        84                        
        PushI        38                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3814-sub         
        Subtract                               
        JumpPos      -compare-3814-false       
        Jump         -compare-3814-true        
        Label        -compare-3814-true        
        PushI        1                         
        Jump         -compare-3814-join        
        Label        -compare-3814-false       
        PushI        0                         
        Jump         -compare-3814-join        
        Label        -compare-3814-join        
        JumpTrue     -print-boolean-3815-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3815-join  
        Label        -print-boolean-3815-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3815-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3816-arg1        
        PushI        81                        
        PushI        2                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3816-arg2        
        PushI        45                        
        PushI        77                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3816-sub         
        Subtract                               
        JumpPos      -compare-3816-false       
        Jump         -compare-3816-true        
        Label        -compare-3816-true        
        PushI        1                         
        Jump         -compare-3816-join        
        Label        -compare-3816-false       
        PushI        0                         
        Jump         -compare-3816-join        
        Label        -compare-3816-join        
        JumpTrue     -print-boolean-3817-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3817-join  
        Label        -print-boolean-3817-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3817-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3818-arg1        
        PushI        6                         
        PushI        62                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3818-arg2        
        PushI        28                        
        PushI        35                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3818-sub         
        Subtract                               
        JumpPos      -compare-3818-false       
        Jump         -compare-3818-true        
        Label        -compare-3818-true        
        PushI        1                         
        Jump         -compare-3818-join        
        Label        -compare-3818-false       
        PushI        0                         
        Jump         -compare-3818-join        
        Label        -compare-3818-join        
        JumpTrue     -print-boolean-3819-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3819-join  
        Label        -print-boolean-3819-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3819-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3820-arg1        
        PushI        75                        
        PushI        66                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3820-arg2        
        PushI        38                        
        PushI        11                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3820-sub         
        Subtract                               
        JumpPos      -compare-3820-false       
        Jump         -compare-3820-true        
        Label        -compare-3820-true        
        PushI        1                         
        Jump         -compare-3820-join        
        Label        -compare-3820-false       
        PushI        0                         
        Jump         -compare-3820-join        
        Label        -compare-3820-join        
        JumpTrue     -print-boolean-3821-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3821-join  
        Label        -print-boolean-3821-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3821-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3822-arg1        
        PushI        35                        
        PushI        1                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3822-arg2        
        PushI        24                        
        PushI        70                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3822-sub         
        Subtract                               
        JumpPos      -compare-3822-false       
        Jump         -compare-3822-true        
        Label        -compare-3822-true        
        PushI        1                         
        Jump         -compare-3822-join        
        Label        -compare-3822-false       
        PushI        0                         
        Jump         -compare-3822-join        
        Label        -compare-3822-join        
        JumpTrue     -print-boolean-3823-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3823-join  
        Label        -print-boolean-3823-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3823-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3824-arg1        
        PushI        96                        
        PushI        30                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3824-arg2        
        PushI        34                        
        PushI        7                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3824-sub         
        Subtract                               
        JumpPos      -compare-3824-false       
        Jump         -compare-3824-true        
        Label        -compare-3824-true        
        PushI        1                         
        Jump         -compare-3824-join        
        Label        -compare-3824-false       
        PushI        0                         
        Jump         -compare-3824-join        
        Label        -compare-3824-join        
        JumpTrue     -print-boolean-3825-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3825-join  
        Label        -print-boolean-3825-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3825-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3826-arg1        
        PushI        88                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3826-arg2        
        PushI        58                        
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3826-sub         
        Subtract                               
        JumpPos      -compare-3826-false       
        Jump         -compare-3826-true        
        Label        -compare-3826-true        
        PushI        1                         
        Jump         -compare-3826-join        
        Label        -compare-3826-false       
        PushI        0                         
        Jump         -compare-3826-join        
        Label        -compare-3826-join        
        JumpTrue     -print-boolean-3827-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3827-join  
        Label        -print-boolean-3827-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3827-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3828-arg1        
        PushI        39                        
        PushI        76                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3828-arg2        
        PushI        82                        
        PushI        32                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3828-sub         
        Subtract                               
        JumpPos      -compare-3828-false       
        Jump         -compare-3828-true        
        Label        -compare-3828-true        
        PushI        1                         
        Jump         -compare-3828-join        
        Label        -compare-3828-false       
        PushI        0                         
        Jump         -compare-3828-join        
        Label        -compare-3828-join        
        JumpTrue     -print-boolean-3829-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3829-join  
        Label        -print-boolean-3829-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3829-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
