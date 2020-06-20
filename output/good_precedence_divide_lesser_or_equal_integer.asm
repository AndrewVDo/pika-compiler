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
        Label        -compare-3745-arg1        
        PushI        72                        
        PushI        24                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3745-arg2        
        PushI        44                        
        Label        -compare-3745-sub         
        Subtract                               
        JumpPos      -compare-3745-false       
        Jump         -compare-3745-true        
        Label        -compare-3745-true        
        PushI        1                         
        Jump         -compare-3745-join        
        Label        -compare-3745-false       
        PushI        0                         
        Jump         -compare-3745-join        
        Label        -compare-3745-join        
        JumpTrue     -print-boolean-3746-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3746-join  
        Label        -print-boolean-3746-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3746-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3747-arg1        
        PushI        36                        
        PushI        14                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3747-arg2        
        PushI        73                        
        Label        -compare-3747-sub         
        Subtract                               
        JumpPos      -compare-3747-false       
        Jump         -compare-3747-true        
        Label        -compare-3747-true        
        PushI        1                         
        Jump         -compare-3747-join        
        Label        -compare-3747-false       
        PushI        0                         
        Jump         -compare-3747-join        
        Label        -compare-3747-join        
        JumpTrue     -print-boolean-3748-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3748-join  
        Label        -print-boolean-3748-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3748-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3749-arg1        
        PushI        47                        
        PushI        63                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3749-arg2        
        PushI        58                        
        Label        -compare-3749-sub         
        Subtract                               
        JumpPos      -compare-3749-false       
        Jump         -compare-3749-true        
        Label        -compare-3749-true        
        PushI        1                         
        Jump         -compare-3749-join        
        Label        -compare-3749-false       
        PushI        0                         
        Jump         -compare-3749-join        
        Label        -compare-3749-join        
        JumpTrue     -print-boolean-3750-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3750-join  
        Label        -print-boolean-3750-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3750-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3751-arg1        
        PushI        13                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3751-arg2        
        PushI        27                        
        Label        -compare-3751-sub         
        Subtract                               
        JumpPos      -compare-3751-false       
        Jump         -compare-3751-true        
        Label        -compare-3751-true        
        PushI        1                         
        Jump         -compare-3751-join        
        Label        -compare-3751-false       
        PushI        0                         
        Jump         -compare-3751-join        
        Label        -compare-3751-join        
        JumpTrue     -print-boolean-3752-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3752-join  
        Label        -print-boolean-3752-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3752-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3753-arg1        
        PushI        84                        
        PushI        61                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3753-arg2        
        PushI        62                        
        Label        -compare-3753-sub         
        Subtract                               
        JumpPos      -compare-3753-false       
        Jump         -compare-3753-true        
        Label        -compare-3753-true        
        PushI        1                         
        Jump         -compare-3753-join        
        Label        -compare-3753-false       
        PushI        0                         
        Jump         -compare-3753-join        
        Label        -compare-3753-join        
        JumpTrue     -print-boolean-3754-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3754-join  
        Label        -print-boolean-3754-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3754-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3755-arg1        
        PushI        63                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3755-arg2        
        PushI        2                         
        Label        -compare-3755-sub         
        Subtract                               
        JumpPos      -compare-3755-false       
        Jump         -compare-3755-true        
        Label        -compare-3755-true        
        PushI        1                         
        Jump         -compare-3755-join        
        Label        -compare-3755-false       
        PushI        0                         
        Jump         -compare-3755-join        
        Label        -compare-3755-join        
        JumpTrue     -print-boolean-3756-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3756-join  
        Label        -print-boolean-3756-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3756-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3757-arg1        
        PushI        83                        
        PushI        48                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3757-arg2        
        PushI        89                        
        Label        -compare-3757-sub         
        Subtract                               
        JumpPos      -compare-3757-false       
        Jump         -compare-3757-true        
        Label        -compare-3757-true        
        PushI        1                         
        Jump         -compare-3757-join        
        Label        -compare-3757-false       
        PushI        0                         
        Jump         -compare-3757-join        
        Label        -compare-3757-join        
        JumpTrue     -print-boolean-3758-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3758-join  
        Label        -print-boolean-3758-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3758-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3759-arg1        
        PushI        20                        
        PushI        57                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3759-arg2        
        PushI        64                        
        Label        -compare-3759-sub         
        Subtract                               
        JumpPos      -compare-3759-false       
        Jump         -compare-3759-true        
        Label        -compare-3759-true        
        PushI        1                         
        Jump         -compare-3759-join        
        Label        -compare-3759-false       
        PushI        0                         
        Jump         -compare-3759-join        
        Label        -compare-3759-join        
        JumpTrue     -print-boolean-3760-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3760-join  
        Label        -print-boolean-3760-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3760-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3761-arg1        
        PushI        31                        
        PushI        41                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3761-arg2        
        PushI        53                        
        Label        -compare-3761-sub         
        Subtract                               
        JumpPos      -compare-3761-false       
        Jump         -compare-3761-true        
        Label        -compare-3761-true        
        PushI        1                         
        Jump         -compare-3761-join        
        Label        -compare-3761-false       
        PushI        0                         
        Jump         -compare-3761-join        
        Label        -compare-3761-join        
        JumpTrue     -print-boolean-3762-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3762-join  
        Label        -print-boolean-3762-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3762-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3763-arg1        
        PushI        8                         
        PushI        44                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3763-arg2        
        PushI        7                         
        Label        -compare-3763-sub         
        Subtract                               
        JumpPos      -compare-3763-false       
        Jump         -compare-3763-true        
        Label        -compare-3763-true        
        PushI        1                         
        Jump         -compare-3763-join        
        Label        -compare-3763-false       
        PushI        0                         
        Jump         -compare-3763-join        
        Label        -compare-3763-join        
        JumpTrue     -print-boolean-3764-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3764-join  
        Label        -print-boolean-3764-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3764-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3765-arg1        
        PushI        87                        
        PushI        87                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3765-arg2        
        PushI        38                        
        Label        -compare-3765-sub         
        Subtract                               
        JumpPos      -compare-3765-false       
        Jump         -compare-3765-true        
        Label        -compare-3765-true        
        PushI        1                         
        Jump         -compare-3765-join        
        Label        -compare-3765-false       
        PushI        0                         
        Jump         -compare-3765-join        
        Label        -compare-3765-join        
        JumpTrue     -print-boolean-3766-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3766-join  
        Label        -print-boolean-3766-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3766-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3767-arg1        
        PushI        26                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3767-arg2        
        PushI        84                        
        Label        -compare-3767-sub         
        Subtract                               
        JumpPos      -compare-3767-false       
        Jump         -compare-3767-true        
        Label        -compare-3767-true        
        PushI        1                         
        Jump         -compare-3767-join        
        Label        -compare-3767-false       
        PushI        0                         
        Jump         -compare-3767-join        
        Label        -compare-3767-join        
        JumpTrue     -print-boolean-3768-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3768-join  
        Label        -print-boolean-3768-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3768-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3769-arg1        
        PushI        1                         
        Label        -compare-3769-arg2        
        PushI        91                        
        PushI        60                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3769-sub         
        Subtract                               
        JumpPos      -compare-3769-false       
        Jump         -compare-3769-true        
        Label        -compare-3769-true        
        PushI        1                         
        Jump         -compare-3769-join        
        Label        -compare-3769-false       
        PushI        0                         
        Jump         -compare-3769-join        
        Label        -compare-3769-join        
        JumpTrue     -print-boolean-3770-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3770-join  
        Label        -print-boolean-3770-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3770-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3771-arg1        
        PushI        44                        
        Label        -compare-3771-arg2        
        PushI        84                        
        PushI        98                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3771-sub         
        Subtract                               
        JumpPos      -compare-3771-false       
        Jump         -compare-3771-true        
        Label        -compare-3771-true        
        PushI        1                         
        Jump         -compare-3771-join        
        Label        -compare-3771-false       
        PushI        0                         
        Jump         -compare-3771-join        
        Label        -compare-3771-join        
        JumpTrue     -print-boolean-3772-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3772-join  
        Label        -print-boolean-3772-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3772-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3773-arg1        
        PushI        26                        
        Label        -compare-3773-arg2        
        PushI        35                        
        PushI        47                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3773-sub         
        Subtract                               
        JumpPos      -compare-3773-false       
        Jump         -compare-3773-true        
        Label        -compare-3773-true        
        PushI        1                         
        Jump         -compare-3773-join        
        Label        -compare-3773-false       
        PushI        0                         
        Jump         -compare-3773-join        
        Label        -compare-3773-join        
        JumpTrue     -print-boolean-3774-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3774-join  
        Label        -print-boolean-3774-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3774-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3775-arg1        
        PushI        46                        
        Label        -compare-3775-arg2        
        PushI        96                        
        PushI        4                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3775-sub         
        Subtract                               
        JumpPos      -compare-3775-false       
        Jump         -compare-3775-true        
        Label        -compare-3775-true        
        PushI        1                         
        Jump         -compare-3775-join        
        Label        -compare-3775-false       
        PushI        0                         
        Jump         -compare-3775-join        
        Label        -compare-3775-join        
        JumpTrue     -print-boolean-3776-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3776-join  
        Label        -print-boolean-3776-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3776-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3777-arg1        
        PushI        41                        
        Label        -compare-3777-arg2        
        PushI        12                        
        PushI        68                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3777-sub         
        Subtract                               
        JumpPos      -compare-3777-false       
        Jump         -compare-3777-true        
        Label        -compare-3777-true        
        PushI        1                         
        Jump         -compare-3777-join        
        Label        -compare-3777-false       
        PushI        0                         
        Jump         -compare-3777-join        
        Label        -compare-3777-join        
        JumpTrue     -print-boolean-3778-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3778-join  
        Label        -print-boolean-3778-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3778-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3779-arg1        
        PushI        5                         
        Label        -compare-3779-arg2        
        PushI        35                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3779-sub         
        Subtract                               
        JumpPos      -compare-3779-false       
        Jump         -compare-3779-true        
        Label        -compare-3779-true        
        PushI        1                         
        Jump         -compare-3779-join        
        Label        -compare-3779-false       
        PushI        0                         
        Jump         -compare-3779-join        
        Label        -compare-3779-join        
        JumpTrue     -print-boolean-3780-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3780-join  
        Label        -print-boolean-3780-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3780-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3781-arg1        
        PushI        79                        
        Label        -compare-3781-arg2        
        PushI        51                        
        PushI        3                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3781-sub         
        Subtract                               
        JumpPos      -compare-3781-false       
        Jump         -compare-3781-true        
        Label        -compare-3781-true        
        PushI        1                         
        Jump         -compare-3781-join        
        Label        -compare-3781-false       
        PushI        0                         
        Jump         -compare-3781-join        
        Label        -compare-3781-join        
        JumpTrue     -print-boolean-3782-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3782-join  
        Label        -print-boolean-3782-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3782-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3783-arg1        
        PushI        36                        
        Label        -compare-3783-arg2        
        PushI        22                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3783-sub         
        Subtract                               
        JumpPos      -compare-3783-false       
        Jump         -compare-3783-true        
        Label        -compare-3783-true        
        PushI        1                         
        Jump         -compare-3783-join        
        Label        -compare-3783-false       
        PushI        0                         
        Jump         -compare-3783-join        
        Label        -compare-3783-join        
        JumpTrue     -print-boolean-3784-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3784-join  
        Label        -print-boolean-3784-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3784-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3785-arg1        
        PushI        73                        
        Label        -compare-3785-arg2        
        PushI        3                         
        PushI        76                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3785-sub         
        Subtract                               
        JumpPos      -compare-3785-false       
        Jump         -compare-3785-true        
        Label        -compare-3785-true        
        PushI        1                         
        Jump         -compare-3785-join        
        Label        -compare-3785-false       
        PushI        0                         
        Jump         -compare-3785-join        
        Label        -compare-3785-join        
        JumpTrue     -print-boolean-3786-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3786-join  
        Label        -print-boolean-3786-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3786-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3787-arg1        
        PushI        16                        
        Label        -compare-3787-arg2        
        PushI        90                        
        PushI        64                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3787-sub         
        Subtract                               
        JumpPos      -compare-3787-false       
        Jump         -compare-3787-true        
        Label        -compare-3787-true        
        PushI        1                         
        Jump         -compare-3787-join        
        Label        -compare-3787-false       
        PushI        0                         
        Jump         -compare-3787-join        
        Label        -compare-3787-join        
        JumpTrue     -print-boolean-3788-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3788-join  
        Label        -print-boolean-3788-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3788-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3789-arg1        
        PushI        48                        
        Label        -compare-3789-arg2        
        PushI        63                        
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3789-sub         
        Subtract                               
        JumpPos      -compare-3789-false       
        Jump         -compare-3789-true        
        Label        -compare-3789-true        
        PushI        1                         
        Jump         -compare-3789-join        
        Label        -compare-3789-false       
        PushI        0                         
        Jump         -compare-3789-join        
        Label        -compare-3789-join        
        JumpTrue     -print-boolean-3790-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3790-join  
        Label        -print-boolean-3790-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3790-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3791-arg1        
        PushI        54                        
        Label        -compare-3791-arg2        
        PushI        92                        
        PushI        85                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3791-sub         
        Subtract                               
        JumpPos      -compare-3791-false       
        Jump         -compare-3791-true        
        Label        -compare-3791-true        
        PushI        1                         
        Jump         -compare-3791-join        
        Label        -compare-3791-false       
        PushI        0                         
        Jump         -compare-3791-join        
        Label        -compare-3791-join        
        JumpTrue     -print-boolean-3792-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3792-join  
        Label        -print-boolean-3792-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3792-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3793-arg1        
        PushI        18                        
        PushI        94                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3793-arg2        
        PushI        8                         
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3793-sub         
        Subtract                               
        JumpPos      -compare-3793-false       
        Jump         -compare-3793-true        
        Label        -compare-3793-true        
        PushI        1                         
        Jump         -compare-3793-join        
        Label        -compare-3793-false       
        PushI        0                         
        Jump         -compare-3793-join        
        Label        -compare-3793-join        
        JumpTrue     -print-boolean-3794-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3794-join  
        Label        -print-boolean-3794-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3794-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3795-arg1        
        PushI        75                        
        PushI        79                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3795-arg2        
        PushI        69                        
        PushI        43                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3795-sub         
        Subtract                               
        JumpPos      -compare-3795-false       
        Jump         -compare-3795-true        
        Label        -compare-3795-true        
        PushI        1                         
        Jump         -compare-3795-join        
        Label        -compare-3795-false       
        PushI        0                         
        Jump         -compare-3795-join        
        Label        -compare-3795-join        
        JumpTrue     -print-boolean-3796-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3796-join  
        Label        -print-boolean-3796-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3796-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3797-arg1        
        PushI        46                        
        PushI        94                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3797-arg2        
        PushI        5                         
        PushI        15                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3797-sub         
        Subtract                               
        JumpPos      -compare-3797-false       
        Jump         -compare-3797-true        
        Label        -compare-3797-true        
        PushI        1                         
        Jump         -compare-3797-join        
        Label        -compare-3797-false       
        PushI        0                         
        Jump         -compare-3797-join        
        Label        -compare-3797-join        
        JumpTrue     -print-boolean-3798-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3798-join  
        Label        -print-boolean-3798-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3798-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3799-arg1        
        PushI        2                         
        PushI        56                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3799-arg2        
        PushI        11                        
        PushI        1                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3799-sub         
        Subtract                               
        JumpPos      -compare-3799-false       
        Jump         -compare-3799-true        
        Label        -compare-3799-true        
        PushI        1                         
        Jump         -compare-3799-join        
        Label        -compare-3799-false       
        PushI        0                         
        Jump         -compare-3799-join        
        Label        -compare-3799-join        
        JumpTrue     -print-boolean-3800-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3800-join  
        Label        -print-boolean-3800-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3800-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3801-arg1        
        PushI        55                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3801-arg2        
        PushI        84                        
        PushI        38                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3801-sub         
        Subtract                               
        JumpPos      -compare-3801-false       
        Jump         -compare-3801-true        
        Label        -compare-3801-true        
        PushI        1                         
        Jump         -compare-3801-join        
        Label        -compare-3801-false       
        PushI        0                         
        Jump         -compare-3801-join        
        Label        -compare-3801-join        
        JumpTrue     -print-boolean-3802-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3802-join  
        Label        -print-boolean-3802-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3802-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3803-arg1        
        PushI        81                        
        PushI        2                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3803-arg2        
        PushI        45                        
        PushI        77                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3803-sub         
        Subtract                               
        JumpPos      -compare-3803-false       
        Jump         -compare-3803-true        
        Label        -compare-3803-true        
        PushI        1                         
        Jump         -compare-3803-join        
        Label        -compare-3803-false       
        PushI        0                         
        Jump         -compare-3803-join        
        Label        -compare-3803-join        
        JumpTrue     -print-boolean-3804-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3804-join  
        Label        -print-boolean-3804-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3804-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3805-arg1        
        PushI        6                         
        PushI        62                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3805-arg2        
        PushI        28                        
        PushI        35                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3805-sub         
        Subtract                               
        JumpPos      -compare-3805-false       
        Jump         -compare-3805-true        
        Label        -compare-3805-true        
        PushI        1                         
        Jump         -compare-3805-join        
        Label        -compare-3805-false       
        PushI        0                         
        Jump         -compare-3805-join        
        Label        -compare-3805-join        
        JumpTrue     -print-boolean-3806-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3806-join  
        Label        -print-boolean-3806-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3806-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3807-arg1        
        PushI        75                        
        PushI        66                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3807-arg2        
        PushI        38                        
        PushI        11                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3807-sub         
        Subtract                               
        JumpPos      -compare-3807-false       
        Jump         -compare-3807-true        
        Label        -compare-3807-true        
        PushI        1                         
        Jump         -compare-3807-join        
        Label        -compare-3807-false       
        PushI        0                         
        Jump         -compare-3807-join        
        Label        -compare-3807-join        
        JumpTrue     -print-boolean-3808-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3808-join  
        Label        -print-boolean-3808-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3808-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3809-arg1        
        PushI        35                        
        PushI        1                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3809-arg2        
        PushI        24                        
        PushI        70                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3809-sub         
        Subtract                               
        JumpPos      -compare-3809-false       
        Jump         -compare-3809-true        
        Label        -compare-3809-true        
        PushI        1                         
        Jump         -compare-3809-join        
        Label        -compare-3809-false       
        PushI        0                         
        Jump         -compare-3809-join        
        Label        -compare-3809-join        
        JumpTrue     -print-boolean-3810-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3810-join  
        Label        -print-boolean-3810-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3810-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3811-arg1        
        PushI        96                        
        PushI        30                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3811-arg2        
        PushI        34                        
        PushI        7                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3811-sub         
        Subtract                               
        JumpPos      -compare-3811-false       
        Jump         -compare-3811-true        
        Label        -compare-3811-true        
        PushI        1                         
        Jump         -compare-3811-join        
        Label        -compare-3811-false       
        PushI        0                         
        Jump         -compare-3811-join        
        Label        -compare-3811-join        
        JumpTrue     -print-boolean-3812-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3812-join  
        Label        -print-boolean-3812-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3812-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3813-arg1        
        PushI        88                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3813-arg2        
        PushI        58                        
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3813-sub         
        Subtract                               
        JumpPos      -compare-3813-false       
        Jump         -compare-3813-true        
        Label        -compare-3813-true        
        PushI        1                         
        Jump         -compare-3813-join        
        Label        -compare-3813-false       
        PushI        0                         
        Jump         -compare-3813-join        
        Label        -compare-3813-join        
        JumpTrue     -print-boolean-3814-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3814-join  
        Label        -print-boolean-3814-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3814-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3815-arg1        
        PushI        39                        
        PushI        76                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3815-arg2        
        PushI        82                        
        PushI        32                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3815-sub         
        Subtract                               
        JumpPos      -compare-3815-false       
        Jump         -compare-3815-true        
        Label        -compare-3815-true        
        PushI        1                         
        Jump         -compare-3815-join        
        Label        -compare-3815-false       
        PushI        0                         
        Jump         -compare-3815-join        
        Label        -compare-3815-join        
        JumpTrue     -print-boolean-3816-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3816-join  
        Label        -print-boolean-3816-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3816-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
