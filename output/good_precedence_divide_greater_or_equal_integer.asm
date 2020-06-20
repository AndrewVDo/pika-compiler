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
        Label        -compare-3457-arg1        
        PushI        20                        
        PushI        12                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3457-arg2        
        PushI        98                        
        Label        -compare-3457-sub         
        Subtract                               
        JumpNeg      -compare-3457-false       
        Jump         -compare-3457-true        
        Label        -compare-3457-true        
        PushI        1                         
        Jump         -compare-3457-join        
        Label        -compare-3457-false       
        PushI        0                         
        Jump         -compare-3457-join        
        Label        -compare-3457-join        
        JumpTrue     -print-boolean-3458-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3458-join  
        Label        -print-boolean-3458-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3458-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3459-arg1        
        PushI        20                        
        PushI        12                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3459-arg2        
        PushI        66                        
        Label        -compare-3459-sub         
        Subtract                               
        JumpNeg      -compare-3459-false       
        Jump         -compare-3459-true        
        Label        -compare-3459-true        
        PushI        1                         
        Jump         -compare-3459-join        
        Label        -compare-3459-false       
        PushI        0                         
        Jump         -compare-3459-join        
        Label        -compare-3459-join        
        JumpTrue     -print-boolean-3460-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3460-join  
        Label        -print-boolean-3460-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3460-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3461-arg1        
        PushI        13                        
        PushI        94                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3461-arg2        
        PushI        50                        
        Label        -compare-3461-sub         
        Subtract                               
        JumpNeg      -compare-3461-false       
        Jump         -compare-3461-true        
        Label        -compare-3461-true        
        PushI        1                         
        Jump         -compare-3461-join        
        Label        -compare-3461-false       
        PushI        0                         
        Jump         -compare-3461-join        
        Label        -compare-3461-join        
        JumpTrue     -print-boolean-3462-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3462-join  
        Label        -print-boolean-3462-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3462-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3463-arg1        
        PushI        47                        
        PushI        53                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3463-arg2        
        PushI        91                        
        Label        -compare-3463-sub         
        Subtract                               
        JumpNeg      -compare-3463-false       
        Jump         -compare-3463-true        
        Label        -compare-3463-true        
        PushI        1                         
        Jump         -compare-3463-join        
        Label        -compare-3463-false       
        PushI        0                         
        Jump         -compare-3463-join        
        Label        -compare-3463-join        
        JumpTrue     -print-boolean-3464-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3464-join  
        Label        -print-boolean-3464-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3464-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3465-arg1        
        PushI        5                         
        PushI        27                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3465-arg2        
        PushI        70                        
        Label        -compare-3465-sub         
        Subtract                               
        JumpNeg      -compare-3465-false       
        Jump         -compare-3465-true        
        Label        -compare-3465-true        
        PushI        1                         
        Jump         -compare-3465-join        
        Label        -compare-3465-false       
        PushI        0                         
        Jump         -compare-3465-join        
        Label        -compare-3465-join        
        JumpTrue     -print-boolean-3466-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3466-join  
        Label        -print-boolean-3466-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3466-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3467-arg1        
        PushI        33                        
        PushI        26                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3467-arg2        
        PushI        40                        
        Label        -compare-3467-sub         
        Subtract                               
        JumpNeg      -compare-3467-false       
        Jump         -compare-3467-true        
        Label        -compare-3467-true        
        PushI        1                         
        Jump         -compare-3467-join        
        Label        -compare-3467-false       
        PushI        0                         
        Jump         -compare-3467-join        
        Label        -compare-3467-join        
        JumpTrue     -print-boolean-3468-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3468-join  
        Label        -print-boolean-3468-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3468-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3469-arg1        
        PushI        93                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3469-arg2        
        PushI        54                        
        Label        -compare-3469-sub         
        Subtract                               
        JumpNeg      -compare-3469-false       
        Jump         -compare-3469-true        
        Label        -compare-3469-true        
        PushI        1                         
        Jump         -compare-3469-join        
        Label        -compare-3469-false       
        PushI        0                         
        Jump         -compare-3469-join        
        Label        -compare-3469-join        
        JumpTrue     -print-boolean-3470-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3470-join  
        Label        -print-boolean-3470-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3470-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3471-arg1        
        PushI        26                        
        PushI        80                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3471-arg2        
        PushI        3                         
        Label        -compare-3471-sub         
        Subtract                               
        JumpNeg      -compare-3471-false       
        Jump         -compare-3471-true        
        Label        -compare-3471-true        
        PushI        1                         
        Jump         -compare-3471-join        
        Label        -compare-3471-false       
        PushI        0                         
        Jump         -compare-3471-join        
        Label        -compare-3471-join        
        JumpTrue     -print-boolean-3472-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3472-join  
        Label        -print-boolean-3472-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3472-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3473-arg1        
        PushI        51                        
        PushI        70                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3473-arg2        
        PushI        7                         
        Label        -compare-3473-sub         
        Subtract                               
        JumpNeg      -compare-3473-false       
        Jump         -compare-3473-true        
        Label        -compare-3473-true        
        PushI        1                         
        Jump         -compare-3473-join        
        Label        -compare-3473-false       
        PushI        0                         
        Jump         -compare-3473-join        
        Label        -compare-3473-join        
        JumpTrue     -print-boolean-3474-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3474-join  
        Label        -print-boolean-3474-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3474-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3475-arg1        
        PushI        58                        
        PushI        15                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3475-arg2        
        PushI        61                        
        Label        -compare-3475-sub         
        Subtract                               
        JumpNeg      -compare-3475-false       
        Jump         -compare-3475-true        
        Label        -compare-3475-true        
        PushI        1                         
        Jump         -compare-3475-join        
        Label        -compare-3475-false       
        PushI        0                         
        Jump         -compare-3475-join        
        Label        -compare-3475-join        
        JumpTrue     -print-boolean-3476-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3476-join  
        Label        -print-boolean-3476-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3476-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3477-arg1        
        PushI        15                        
        PushI        38                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3477-arg2        
        PushI        3                         
        Label        -compare-3477-sub         
        Subtract                               
        JumpNeg      -compare-3477-false       
        Jump         -compare-3477-true        
        Label        -compare-3477-true        
        PushI        1                         
        Jump         -compare-3477-join        
        Label        -compare-3477-false       
        PushI        0                         
        Jump         -compare-3477-join        
        Label        -compare-3477-join        
        JumpTrue     -print-boolean-3478-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3478-join  
        Label        -print-boolean-3478-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3478-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3479-arg1        
        PushI        76                        
        PushI        91                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3479-arg2        
        PushI        35                        
        Label        -compare-3479-sub         
        Subtract                               
        JumpNeg      -compare-3479-false       
        Jump         -compare-3479-true        
        Label        -compare-3479-true        
        PushI        1                         
        Jump         -compare-3479-join        
        Label        -compare-3479-false       
        PushI        0                         
        Jump         -compare-3479-join        
        Label        -compare-3479-join        
        JumpTrue     -print-boolean-3480-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3480-join  
        Label        -print-boolean-3480-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3480-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3481-arg1        
        PushI        30                        
        Label        -compare-3481-arg2        
        PushI        41                        
        PushI        86                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3481-sub         
        Subtract                               
        JumpNeg      -compare-3481-false       
        Jump         -compare-3481-true        
        Label        -compare-3481-true        
        PushI        1                         
        Jump         -compare-3481-join        
        Label        -compare-3481-false       
        PushI        0                         
        Jump         -compare-3481-join        
        Label        -compare-3481-join        
        JumpTrue     -print-boolean-3482-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3482-join  
        Label        -print-boolean-3482-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3482-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3483-arg1        
        PushI        61                        
        Label        -compare-3483-arg2        
        PushI        74                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3483-sub         
        Subtract                               
        JumpNeg      -compare-3483-false       
        Jump         -compare-3483-true        
        Label        -compare-3483-true        
        PushI        1                         
        Jump         -compare-3483-join        
        Label        -compare-3483-false       
        PushI        0                         
        Jump         -compare-3483-join        
        Label        -compare-3483-join        
        JumpTrue     -print-boolean-3484-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3484-join  
        Label        -print-boolean-3484-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3484-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3485-arg1        
        PushI        45                        
        Label        -compare-3485-arg2        
        PushI        9                         
        PushI        69                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3485-sub         
        Subtract                               
        JumpNeg      -compare-3485-false       
        Jump         -compare-3485-true        
        Label        -compare-3485-true        
        PushI        1                         
        Jump         -compare-3485-join        
        Label        -compare-3485-false       
        PushI        0                         
        Jump         -compare-3485-join        
        Label        -compare-3485-join        
        JumpTrue     -print-boolean-3486-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3486-join  
        Label        -print-boolean-3486-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3486-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3487-arg1        
        PushI        41                        
        Label        -compare-3487-arg2        
        PushI        20                        
        PushI        43                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3487-sub         
        Subtract                               
        JumpNeg      -compare-3487-false       
        Jump         -compare-3487-true        
        Label        -compare-3487-true        
        PushI        1                         
        Jump         -compare-3487-join        
        Label        -compare-3487-false       
        PushI        0                         
        Jump         -compare-3487-join        
        Label        -compare-3487-join        
        JumpTrue     -print-boolean-3488-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3488-join  
        Label        -print-boolean-3488-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3488-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3489-arg1        
        PushI        52                        
        Label        -compare-3489-arg2        
        PushI        69                        
        PushI        90                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3489-sub         
        Subtract                               
        JumpNeg      -compare-3489-false       
        Jump         -compare-3489-true        
        Label        -compare-3489-true        
        PushI        1                         
        Jump         -compare-3489-join        
        Label        -compare-3489-false       
        PushI        0                         
        Jump         -compare-3489-join        
        Label        -compare-3489-join        
        JumpTrue     -print-boolean-3490-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3490-join  
        Label        -print-boolean-3490-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3490-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3491-arg1        
        PushI        73                        
        Label        -compare-3491-arg2        
        PushI        42                        
        PushI        69                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3491-sub         
        Subtract                               
        JumpNeg      -compare-3491-false       
        Jump         -compare-3491-true        
        Label        -compare-3491-true        
        PushI        1                         
        Jump         -compare-3491-join        
        Label        -compare-3491-false       
        PushI        0                         
        Jump         -compare-3491-join        
        Label        -compare-3491-join        
        JumpTrue     -print-boolean-3492-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3492-join  
        Label        -print-boolean-3492-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3492-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3493-arg1        
        PushI        67                        
        Label        -compare-3493-arg2        
        PushI        72                        
        PushI        34                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3493-sub         
        Subtract                               
        JumpNeg      -compare-3493-false       
        Jump         -compare-3493-true        
        Label        -compare-3493-true        
        PushI        1                         
        Jump         -compare-3493-join        
        Label        -compare-3493-false       
        PushI        0                         
        Jump         -compare-3493-join        
        Label        -compare-3493-join        
        JumpTrue     -print-boolean-3494-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3494-join  
        Label        -print-boolean-3494-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3494-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3495-arg1        
        PushI        45                        
        Label        -compare-3495-arg2        
        PushI        89                        
        PushI        80                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3495-sub         
        Subtract                               
        JumpNeg      -compare-3495-false       
        Jump         -compare-3495-true        
        Label        -compare-3495-true        
        PushI        1                         
        Jump         -compare-3495-join        
        Label        -compare-3495-false       
        PushI        0                         
        Jump         -compare-3495-join        
        Label        -compare-3495-join        
        JumpTrue     -print-boolean-3496-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3496-join  
        Label        -print-boolean-3496-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3496-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3497-arg1        
        PushI        62                        
        Label        -compare-3497-arg2        
        PushI        45                        
        PushI        82                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3497-sub         
        Subtract                               
        JumpNeg      -compare-3497-false       
        Jump         -compare-3497-true        
        Label        -compare-3497-true        
        PushI        1                         
        Jump         -compare-3497-join        
        Label        -compare-3497-false       
        PushI        0                         
        Jump         -compare-3497-join        
        Label        -compare-3497-join        
        JumpTrue     -print-boolean-3498-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3498-join  
        Label        -print-boolean-3498-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3498-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3499-arg1        
        PushI        41                        
        Label        -compare-3499-arg2        
        PushI        79                        
        PushI        12                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3499-sub         
        Subtract                               
        JumpNeg      -compare-3499-false       
        Jump         -compare-3499-true        
        Label        -compare-3499-true        
        PushI        1                         
        Jump         -compare-3499-join        
        Label        -compare-3499-false       
        PushI        0                         
        Jump         -compare-3499-join        
        Label        -compare-3499-join        
        JumpTrue     -print-boolean-3500-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3500-join  
        Label        -print-boolean-3500-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3500-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3501-arg1        
        PushI        93                        
        Label        -compare-3501-arg2        
        PushI        97                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3501-sub         
        Subtract                               
        JumpNeg      -compare-3501-false       
        Jump         -compare-3501-true        
        Label        -compare-3501-true        
        PushI        1                         
        Jump         -compare-3501-join        
        Label        -compare-3501-false       
        PushI        0                         
        Jump         -compare-3501-join        
        Label        -compare-3501-join        
        JumpTrue     -print-boolean-3502-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3502-join  
        Label        -print-boolean-3502-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3502-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3503-arg1        
        PushI        46                        
        Label        -compare-3503-arg2        
        PushI        81                        
        PushI        82                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3503-sub         
        Subtract                               
        JumpNeg      -compare-3503-false       
        Jump         -compare-3503-true        
        Label        -compare-3503-true        
        PushI        1                         
        Jump         -compare-3503-join        
        Label        -compare-3503-false       
        PushI        0                         
        Jump         -compare-3503-join        
        Label        -compare-3503-join        
        JumpTrue     -print-boolean-3504-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3504-join  
        Label        -print-boolean-3504-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3504-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3505-arg1        
        PushI        42                        
        PushI        85                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3505-arg2        
        PushI        64                        
        PushI        2                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3505-sub         
        Subtract                               
        JumpNeg      -compare-3505-false       
        Jump         -compare-3505-true        
        Label        -compare-3505-true        
        PushI        1                         
        Jump         -compare-3505-join        
        Label        -compare-3505-false       
        PushI        0                         
        Jump         -compare-3505-join        
        Label        -compare-3505-join        
        JumpTrue     -print-boolean-3506-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3506-join  
        Label        -print-boolean-3506-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3506-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3507-arg1        
        PushI        3                         
        PushI        79                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3507-arg2        
        PushI        93                        
        PushI        73                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3507-sub         
        Subtract                               
        JumpNeg      -compare-3507-false       
        Jump         -compare-3507-true        
        Label        -compare-3507-true        
        PushI        1                         
        Jump         -compare-3507-join        
        Label        -compare-3507-false       
        PushI        0                         
        Jump         -compare-3507-join        
        Label        -compare-3507-join        
        JumpTrue     -print-boolean-3508-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3508-join  
        Label        -print-boolean-3508-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3508-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3509-arg1        
        PushI        1                         
        PushI        30                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3509-arg2        
        PushI        44                        
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3509-sub         
        Subtract                               
        JumpNeg      -compare-3509-false       
        Jump         -compare-3509-true        
        Label        -compare-3509-true        
        PushI        1                         
        Jump         -compare-3509-join        
        Label        -compare-3509-false       
        PushI        0                         
        Jump         -compare-3509-join        
        Label        -compare-3509-join        
        JumpTrue     -print-boolean-3510-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3510-join  
        Label        -print-boolean-3510-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3510-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3511-arg1        
        PushI        62                        
        PushI        55                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3511-arg2        
        PushI        71                        
        PushI        72                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3511-sub         
        Subtract                               
        JumpNeg      -compare-3511-false       
        Jump         -compare-3511-true        
        Label        -compare-3511-true        
        PushI        1                         
        Jump         -compare-3511-join        
        Label        -compare-3511-false       
        PushI        0                         
        Jump         -compare-3511-join        
        Label        -compare-3511-join        
        JumpTrue     -print-boolean-3512-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3512-join  
        Label        -print-boolean-3512-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3512-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3513-arg1        
        PushI        61                        
        PushI        18                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3513-arg2        
        PushI        78                        
        PushI        44                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3513-sub         
        Subtract                               
        JumpNeg      -compare-3513-false       
        Jump         -compare-3513-true        
        Label        -compare-3513-true        
        PushI        1                         
        Jump         -compare-3513-join        
        Label        -compare-3513-false       
        PushI        0                         
        Jump         -compare-3513-join        
        Label        -compare-3513-join        
        JumpTrue     -print-boolean-3514-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3514-join  
        Label        -print-boolean-3514-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3514-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3515-arg1        
        PushI        88                        
        PushI        85                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3515-arg2        
        PushI        67                        
        PushI        18                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3515-sub         
        Subtract                               
        JumpNeg      -compare-3515-false       
        Jump         -compare-3515-true        
        Label        -compare-3515-true        
        PushI        1                         
        Jump         -compare-3515-join        
        Label        -compare-3515-false       
        PushI        0                         
        Jump         -compare-3515-join        
        Label        -compare-3515-join        
        JumpTrue     -print-boolean-3516-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3516-join  
        Label        -print-boolean-3516-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3516-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3517-arg1        
        PushI        29                        
        PushI        94                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3517-arg2        
        PushI        88                        
        PushI        81                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3517-sub         
        Subtract                               
        JumpNeg      -compare-3517-false       
        Jump         -compare-3517-true        
        Label        -compare-3517-true        
        PushI        1                         
        Jump         -compare-3517-join        
        Label        -compare-3517-false       
        PushI        0                         
        Jump         -compare-3517-join        
        Label        -compare-3517-join        
        JumpTrue     -print-boolean-3518-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3518-join  
        Label        -print-boolean-3518-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3518-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3519-arg1        
        PushI        61                        
        PushI        63                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3519-arg2        
        PushI        80                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3519-sub         
        Subtract                               
        JumpNeg      -compare-3519-false       
        Jump         -compare-3519-true        
        Label        -compare-3519-true        
        PushI        1                         
        Jump         -compare-3519-join        
        Label        -compare-3519-false       
        PushI        0                         
        Jump         -compare-3519-join        
        Label        -compare-3519-join        
        JumpTrue     -print-boolean-3520-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3520-join  
        Label        -print-boolean-3520-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3520-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3521-arg1        
        PushI        40                        
        PushI        83                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3521-arg2        
        PushI        44                        
        PushI        62                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3521-sub         
        Subtract                               
        JumpNeg      -compare-3521-false       
        Jump         -compare-3521-true        
        Label        -compare-3521-true        
        PushI        1                         
        Jump         -compare-3521-join        
        Label        -compare-3521-false       
        PushI        0                         
        Jump         -compare-3521-join        
        Label        -compare-3521-join        
        JumpTrue     -print-boolean-3522-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3522-join  
        Label        -print-boolean-3522-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3522-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3523-arg1        
        PushI        36                        
        PushI        16                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3523-arg2        
        PushI        68                        
        PushI        15                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3523-sub         
        Subtract                               
        JumpNeg      -compare-3523-false       
        Jump         -compare-3523-true        
        Label        -compare-3523-true        
        PushI        1                         
        Jump         -compare-3523-join        
        Label        -compare-3523-false       
        PushI        0                         
        Jump         -compare-3523-join        
        Label        -compare-3523-join        
        JumpTrue     -print-boolean-3524-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3524-join  
        Label        -print-boolean-3524-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3524-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3525-arg1        
        PushI        43                        
        PushI        83                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3525-arg2        
        PushI        99                        
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3525-sub         
        Subtract                               
        JumpNeg      -compare-3525-false       
        Jump         -compare-3525-true        
        Label        -compare-3525-true        
        PushI        1                         
        Jump         -compare-3525-join        
        Label        -compare-3525-false       
        PushI        0                         
        Jump         -compare-3525-join        
        Label        -compare-3525-join        
        JumpTrue     -print-boolean-3526-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3526-join  
        Label        -print-boolean-3526-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3526-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3527-arg1        
        PushI        94                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3527-arg2        
        PushI        67                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3527-sub         
        Subtract                               
        JumpNeg      -compare-3527-false       
        Jump         -compare-3527-true        
        Label        -compare-3527-true        
        PushI        1                         
        Jump         -compare-3527-join        
        Label        -compare-3527-false       
        PushI        0                         
        Jump         -compare-3527-join        
        Label        -compare-3527-join        
        JumpTrue     -print-boolean-3528-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3528-join  
        Label        -print-boolean-3528-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3528-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
