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
        Label        -compare-3470-arg1        
        PushI        20                        
        PushI        12                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3470-arg2        
        PushI        98                        
        Label        -compare-3470-sub         
        Subtract                               
        JumpNeg      -compare-3470-false       
        Jump         -compare-3470-true        
        Label        -compare-3470-true        
        PushI        1                         
        Jump         -compare-3470-join        
        Label        -compare-3470-false       
        PushI        0                         
        Jump         -compare-3470-join        
        Label        -compare-3470-join        
        JumpTrue     -print-boolean-3471-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3471-join  
        Label        -print-boolean-3471-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3471-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3472-arg1        
        PushI        20                        
        PushI        12                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3472-arg2        
        PushI        66                        
        Label        -compare-3472-sub         
        Subtract                               
        JumpNeg      -compare-3472-false       
        Jump         -compare-3472-true        
        Label        -compare-3472-true        
        PushI        1                         
        Jump         -compare-3472-join        
        Label        -compare-3472-false       
        PushI        0                         
        Jump         -compare-3472-join        
        Label        -compare-3472-join        
        JumpTrue     -print-boolean-3473-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3473-join  
        Label        -print-boolean-3473-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3473-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3474-arg1        
        PushI        13                        
        PushI        94                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3474-arg2        
        PushI        50                        
        Label        -compare-3474-sub         
        Subtract                               
        JumpNeg      -compare-3474-false       
        Jump         -compare-3474-true        
        Label        -compare-3474-true        
        PushI        1                         
        Jump         -compare-3474-join        
        Label        -compare-3474-false       
        PushI        0                         
        Jump         -compare-3474-join        
        Label        -compare-3474-join        
        JumpTrue     -print-boolean-3475-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3475-join  
        Label        -print-boolean-3475-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3475-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3476-arg1        
        PushI        47                        
        PushI        53                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3476-arg2        
        PushI        91                        
        Label        -compare-3476-sub         
        Subtract                               
        JumpNeg      -compare-3476-false       
        Jump         -compare-3476-true        
        Label        -compare-3476-true        
        PushI        1                         
        Jump         -compare-3476-join        
        Label        -compare-3476-false       
        PushI        0                         
        Jump         -compare-3476-join        
        Label        -compare-3476-join        
        JumpTrue     -print-boolean-3477-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3477-join  
        Label        -print-boolean-3477-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3477-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3478-arg1        
        PushI        5                         
        PushI        27                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3478-arg2        
        PushI        70                        
        Label        -compare-3478-sub         
        Subtract                               
        JumpNeg      -compare-3478-false       
        Jump         -compare-3478-true        
        Label        -compare-3478-true        
        PushI        1                         
        Jump         -compare-3478-join        
        Label        -compare-3478-false       
        PushI        0                         
        Jump         -compare-3478-join        
        Label        -compare-3478-join        
        JumpTrue     -print-boolean-3479-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3479-join  
        Label        -print-boolean-3479-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3479-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3480-arg1        
        PushI        33                        
        PushI        26                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3480-arg2        
        PushI        40                        
        Label        -compare-3480-sub         
        Subtract                               
        JumpNeg      -compare-3480-false       
        Jump         -compare-3480-true        
        Label        -compare-3480-true        
        PushI        1                         
        Jump         -compare-3480-join        
        Label        -compare-3480-false       
        PushI        0                         
        Jump         -compare-3480-join        
        Label        -compare-3480-join        
        JumpTrue     -print-boolean-3481-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3481-join  
        Label        -print-boolean-3481-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3481-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3482-arg1        
        PushI        93                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3482-arg2        
        PushI        54                        
        Label        -compare-3482-sub         
        Subtract                               
        JumpNeg      -compare-3482-false       
        Jump         -compare-3482-true        
        Label        -compare-3482-true        
        PushI        1                         
        Jump         -compare-3482-join        
        Label        -compare-3482-false       
        PushI        0                         
        Jump         -compare-3482-join        
        Label        -compare-3482-join        
        JumpTrue     -print-boolean-3483-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3483-join  
        Label        -print-boolean-3483-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3483-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3484-arg1        
        PushI        26                        
        PushI        80                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3484-arg2        
        PushI        3                         
        Label        -compare-3484-sub         
        Subtract                               
        JumpNeg      -compare-3484-false       
        Jump         -compare-3484-true        
        Label        -compare-3484-true        
        PushI        1                         
        Jump         -compare-3484-join        
        Label        -compare-3484-false       
        PushI        0                         
        Jump         -compare-3484-join        
        Label        -compare-3484-join        
        JumpTrue     -print-boolean-3485-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3485-join  
        Label        -print-boolean-3485-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3485-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3486-arg1        
        PushI        51                        
        PushI        70                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3486-arg2        
        PushI        7                         
        Label        -compare-3486-sub         
        Subtract                               
        JumpNeg      -compare-3486-false       
        Jump         -compare-3486-true        
        Label        -compare-3486-true        
        PushI        1                         
        Jump         -compare-3486-join        
        Label        -compare-3486-false       
        PushI        0                         
        Jump         -compare-3486-join        
        Label        -compare-3486-join        
        JumpTrue     -print-boolean-3487-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3487-join  
        Label        -print-boolean-3487-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3487-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3488-arg1        
        PushI        58                        
        PushI        15                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3488-arg2        
        PushI        61                        
        Label        -compare-3488-sub         
        Subtract                               
        JumpNeg      -compare-3488-false       
        Jump         -compare-3488-true        
        Label        -compare-3488-true        
        PushI        1                         
        Jump         -compare-3488-join        
        Label        -compare-3488-false       
        PushI        0                         
        Jump         -compare-3488-join        
        Label        -compare-3488-join        
        JumpTrue     -print-boolean-3489-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3489-join  
        Label        -print-boolean-3489-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3489-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3490-arg1        
        PushI        15                        
        PushI        38                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3490-arg2        
        PushI        3                         
        Label        -compare-3490-sub         
        Subtract                               
        JumpNeg      -compare-3490-false       
        Jump         -compare-3490-true        
        Label        -compare-3490-true        
        PushI        1                         
        Jump         -compare-3490-join        
        Label        -compare-3490-false       
        PushI        0                         
        Jump         -compare-3490-join        
        Label        -compare-3490-join        
        JumpTrue     -print-boolean-3491-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3491-join  
        Label        -print-boolean-3491-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3491-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3492-arg1        
        PushI        76                        
        PushI        91                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3492-arg2        
        PushI        35                        
        Label        -compare-3492-sub         
        Subtract                               
        JumpNeg      -compare-3492-false       
        Jump         -compare-3492-true        
        Label        -compare-3492-true        
        PushI        1                         
        Jump         -compare-3492-join        
        Label        -compare-3492-false       
        PushI        0                         
        Jump         -compare-3492-join        
        Label        -compare-3492-join        
        JumpTrue     -print-boolean-3493-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3493-join  
        Label        -print-boolean-3493-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3493-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3494-arg1        
        PushI        30                        
        Label        -compare-3494-arg2        
        PushI        41                        
        PushI        86                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3494-sub         
        Subtract                               
        JumpNeg      -compare-3494-false       
        Jump         -compare-3494-true        
        Label        -compare-3494-true        
        PushI        1                         
        Jump         -compare-3494-join        
        Label        -compare-3494-false       
        PushI        0                         
        Jump         -compare-3494-join        
        Label        -compare-3494-join        
        JumpTrue     -print-boolean-3495-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3495-join  
        Label        -print-boolean-3495-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3495-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3496-arg1        
        PushI        61                        
        Label        -compare-3496-arg2        
        PushI        74                        
        PushI        23                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3496-sub         
        Subtract                               
        JumpNeg      -compare-3496-false       
        Jump         -compare-3496-true        
        Label        -compare-3496-true        
        PushI        1                         
        Jump         -compare-3496-join        
        Label        -compare-3496-false       
        PushI        0                         
        Jump         -compare-3496-join        
        Label        -compare-3496-join        
        JumpTrue     -print-boolean-3497-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3497-join  
        Label        -print-boolean-3497-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3497-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3498-arg1        
        PushI        45                        
        Label        -compare-3498-arg2        
        PushI        9                         
        PushI        69                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3498-sub         
        Subtract                               
        JumpNeg      -compare-3498-false       
        Jump         -compare-3498-true        
        Label        -compare-3498-true        
        PushI        1                         
        Jump         -compare-3498-join        
        Label        -compare-3498-false       
        PushI        0                         
        Jump         -compare-3498-join        
        Label        -compare-3498-join        
        JumpTrue     -print-boolean-3499-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3499-join  
        Label        -print-boolean-3499-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3499-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3500-arg1        
        PushI        41                        
        Label        -compare-3500-arg2        
        PushI        20                        
        PushI        43                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3500-sub         
        Subtract                               
        JumpNeg      -compare-3500-false       
        Jump         -compare-3500-true        
        Label        -compare-3500-true        
        PushI        1                         
        Jump         -compare-3500-join        
        Label        -compare-3500-false       
        PushI        0                         
        Jump         -compare-3500-join        
        Label        -compare-3500-join        
        JumpTrue     -print-boolean-3501-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3501-join  
        Label        -print-boolean-3501-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3501-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3502-arg1        
        PushI        52                        
        Label        -compare-3502-arg2        
        PushI        69                        
        PushI        90                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3502-sub         
        Subtract                               
        JumpNeg      -compare-3502-false       
        Jump         -compare-3502-true        
        Label        -compare-3502-true        
        PushI        1                         
        Jump         -compare-3502-join        
        Label        -compare-3502-false       
        PushI        0                         
        Jump         -compare-3502-join        
        Label        -compare-3502-join        
        JumpTrue     -print-boolean-3503-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3503-join  
        Label        -print-boolean-3503-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3503-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3504-arg1        
        PushI        73                        
        Label        -compare-3504-arg2        
        PushI        42                        
        PushI        69                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3504-sub         
        Subtract                               
        JumpNeg      -compare-3504-false       
        Jump         -compare-3504-true        
        Label        -compare-3504-true        
        PushI        1                         
        Jump         -compare-3504-join        
        Label        -compare-3504-false       
        PushI        0                         
        Jump         -compare-3504-join        
        Label        -compare-3504-join        
        JumpTrue     -print-boolean-3505-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3505-join  
        Label        -print-boolean-3505-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3505-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3506-arg1        
        PushI        67                        
        Label        -compare-3506-arg2        
        PushI        72                        
        PushI        34                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3506-sub         
        Subtract                               
        JumpNeg      -compare-3506-false       
        Jump         -compare-3506-true        
        Label        -compare-3506-true        
        PushI        1                         
        Jump         -compare-3506-join        
        Label        -compare-3506-false       
        PushI        0                         
        Jump         -compare-3506-join        
        Label        -compare-3506-join        
        JumpTrue     -print-boolean-3507-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3507-join  
        Label        -print-boolean-3507-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3507-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3508-arg1        
        PushI        45                        
        Label        -compare-3508-arg2        
        PushI        89                        
        PushI        80                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3508-sub         
        Subtract                               
        JumpNeg      -compare-3508-false       
        Jump         -compare-3508-true        
        Label        -compare-3508-true        
        PushI        1                         
        Jump         -compare-3508-join        
        Label        -compare-3508-false       
        PushI        0                         
        Jump         -compare-3508-join        
        Label        -compare-3508-join        
        JumpTrue     -print-boolean-3509-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3509-join  
        Label        -print-boolean-3509-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3509-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3510-arg1        
        PushI        62                        
        Label        -compare-3510-arg2        
        PushI        45                        
        PushI        82                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3510-sub         
        Subtract                               
        JumpNeg      -compare-3510-false       
        Jump         -compare-3510-true        
        Label        -compare-3510-true        
        PushI        1                         
        Jump         -compare-3510-join        
        Label        -compare-3510-false       
        PushI        0                         
        Jump         -compare-3510-join        
        Label        -compare-3510-join        
        JumpTrue     -print-boolean-3511-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3511-join  
        Label        -print-boolean-3511-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3511-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3512-arg1        
        PushI        41                        
        Label        -compare-3512-arg2        
        PushI        79                        
        PushI        12                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3512-sub         
        Subtract                               
        JumpNeg      -compare-3512-false       
        Jump         -compare-3512-true        
        Label        -compare-3512-true        
        PushI        1                         
        Jump         -compare-3512-join        
        Label        -compare-3512-false       
        PushI        0                         
        Jump         -compare-3512-join        
        Label        -compare-3512-join        
        JumpTrue     -print-boolean-3513-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3513-join  
        Label        -print-boolean-3513-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3513-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3514-arg1        
        PushI        93                        
        Label        -compare-3514-arg2        
        PushI        97                        
        PushI        93                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3514-sub         
        Subtract                               
        JumpNeg      -compare-3514-false       
        Jump         -compare-3514-true        
        Label        -compare-3514-true        
        PushI        1                         
        Jump         -compare-3514-join        
        Label        -compare-3514-false       
        PushI        0                         
        Jump         -compare-3514-join        
        Label        -compare-3514-join        
        JumpTrue     -print-boolean-3515-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3515-join  
        Label        -print-boolean-3515-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3515-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3516-arg1        
        PushI        46                        
        Label        -compare-3516-arg2        
        PushI        81                        
        PushI        82                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3516-sub         
        Subtract                               
        JumpNeg      -compare-3516-false       
        Jump         -compare-3516-true        
        Label        -compare-3516-true        
        PushI        1                         
        Jump         -compare-3516-join        
        Label        -compare-3516-false       
        PushI        0                         
        Jump         -compare-3516-join        
        Label        -compare-3516-join        
        JumpTrue     -print-boolean-3517-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3517-join  
        Label        -print-boolean-3517-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3517-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3518-arg1        
        PushI        42                        
        PushI        85                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3518-arg2        
        PushI        64                        
        PushI        2                         
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3518-sub         
        Subtract                               
        JumpNeg      -compare-3518-false       
        Jump         -compare-3518-true        
        Label        -compare-3518-true        
        PushI        1                         
        Jump         -compare-3518-join        
        Label        -compare-3518-false       
        PushI        0                         
        Jump         -compare-3518-join        
        Label        -compare-3518-join        
        JumpTrue     -print-boolean-3519-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3519-join  
        Label        -print-boolean-3519-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3519-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3520-arg1        
        PushI        3                         
        PushI        79                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3520-arg2        
        PushI        93                        
        PushI        73                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3520-sub         
        Subtract                               
        JumpNeg      -compare-3520-false       
        Jump         -compare-3520-true        
        Label        -compare-3520-true        
        PushI        1                         
        Jump         -compare-3520-join        
        Label        -compare-3520-false       
        PushI        0                         
        Jump         -compare-3520-join        
        Label        -compare-3520-join        
        JumpTrue     -print-boolean-3521-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3521-join  
        Label        -print-boolean-3521-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3521-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3522-arg1        
        PushI        1                         
        PushI        30                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3522-arg2        
        PushI        44                        
        PushI        46                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3522-sub         
        Subtract                               
        JumpNeg      -compare-3522-false       
        Jump         -compare-3522-true        
        Label        -compare-3522-true        
        PushI        1                         
        Jump         -compare-3522-join        
        Label        -compare-3522-false       
        PushI        0                         
        Jump         -compare-3522-join        
        Label        -compare-3522-join        
        JumpTrue     -print-boolean-3523-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3523-join  
        Label        -print-boolean-3523-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3523-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3524-arg1        
        PushI        62                        
        PushI        55                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3524-arg2        
        PushI        71                        
        PushI        72                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3524-sub         
        Subtract                               
        JumpNeg      -compare-3524-false       
        Jump         -compare-3524-true        
        Label        -compare-3524-true        
        PushI        1                         
        Jump         -compare-3524-join        
        Label        -compare-3524-false       
        PushI        0                         
        Jump         -compare-3524-join        
        Label        -compare-3524-join        
        JumpTrue     -print-boolean-3525-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3525-join  
        Label        -print-boolean-3525-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3525-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3526-arg1        
        PushI        61                        
        PushI        18                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3526-arg2        
        PushI        78                        
        PushI        44                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3526-sub         
        Subtract                               
        JumpNeg      -compare-3526-false       
        Jump         -compare-3526-true        
        Label        -compare-3526-true        
        PushI        1                         
        Jump         -compare-3526-join        
        Label        -compare-3526-false       
        PushI        0                         
        Jump         -compare-3526-join        
        Label        -compare-3526-join        
        JumpTrue     -print-boolean-3527-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3527-join  
        Label        -print-boolean-3527-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3527-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3528-arg1        
        PushI        88                        
        PushI        85                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3528-arg2        
        PushI        67                        
        PushI        18                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3528-sub         
        Subtract                               
        JumpNeg      -compare-3528-false       
        Jump         -compare-3528-true        
        Label        -compare-3528-true        
        PushI        1                         
        Jump         -compare-3528-join        
        Label        -compare-3528-false       
        PushI        0                         
        Jump         -compare-3528-join        
        Label        -compare-3528-join        
        JumpTrue     -print-boolean-3529-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3529-join  
        Label        -print-boolean-3529-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3529-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3530-arg1        
        PushI        29                        
        PushI        94                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3530-arg2        
        PushI        88                        
        PushI        81                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3530-sub         
        Subtract                               
        JumpNeg      -compare-3530-false       
        Jump         -compare-3530-true        
        Label        -compare-3530-true        
        PushI        1                         
        Jump         -compare-3530-join        
        Label        -compare-3530-false       
        PushI        0                         
        Jump         -compare-3530-join        
        Label        -compare-3530-join        
        JumpTrue     -print-boolean-3531-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3531-join  
        Label        -print-boolean-3531-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3531-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3532-arg1        
        PushI        61                        
        PushI        63                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3532-arg2        
        PushI        80                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3532-sub         
        Subtract                               
        JumpNeg      -compare-3532-false       
        Jump         -compare-3532-true        
        Label        -compare-3532-true        
        PushI        1                         
        Jump         -compare-3532-join        
        Label        -compare-3532-false       
        PushI        0                         
        Jump         -compare-3532-join        
        Label        -compare-3532-join        
        JumpTrue     -print-boolean-3533-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3533-join  
        Label        -print-boolean-3533-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3533-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3534-arg1        
        PushI        40                        
        PushI        83                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3534-arg2        
        PushI        44                        
        PushI        62                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3534-sub         
        Subtract                               
        JumpNeg      -compare-3534-false       
        Jump         -compare-3534-true        
        Label        -compare-3534-true        
        PushI        1                         
        Jump         -compare-3534-join        
        Label        -compare-3534-false       
        PushI        0                         
        Jump         -compare-3534-join        
        Label        -compare-3534-join        
        JumpTrue     -print-boolean-3535-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3535-join  
        Label        -print-boolean-3535-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3535-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3536-arg1        
        PushI        36                        
        PushI        16                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3536-arg2        
        PushI        68                        
        PushI        15                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3536-sub         
        Subtract                               
        JumpNeg      -compare-3536-false       
        Jump         -compare-3536-true        
        Label        -compare-3536-true        
        PushI        1                         
        Jump         -compare-3536-join        
        Label        -compare-3536-false       
        PushI        0                         
        Jump         -compare-3536-join        
        Label        -compare-3536-join        
        JumpTrue     -print-boolean-3537-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3537-join  
        Label        -print-boolean-3537-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3537-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3538-arg1        
        PushI        43                        
        PushI        83                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3538-arg2        
        PushI        99                        
        PushI        92                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3538-sub         
        Subtract                               
        JumpNeg      -compare-3538-false       
        Jump         -compare-3538-true        
        Label        -compare-3538-true        
        PushI        1                         
        Jump         -compare-3538-join        
        Label        -compare-3538-false       
        PushI        0                         
        Jump         -compare-3538-join        
        Label        -compare-3538-join        
        JumpTrue     -print-boolean-3539-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3539-join  
        Label        -print-boolean-3539-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3539-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3540-arg1        
        PushI        94                        
        PushI        49                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3540-arg2        
        PushI        67                        
        PushI        39                        
        Duplicate                              
        JumpFalse    $$i-divide-by-zero        
        Divide                                 
        Label        -compare-3540-sub         
        Subtract                               
        JumpNeg      -compare-3540-false       
        Jump         -compare-3540-true        
        Label        -compare-3540-true        
        PushI        1                         
        Jump         -compare-3540-join        
        Label        -compare-3540-false       
        PushI        0                         
        Jump         -compare-3540-join        
        Label        -compare-3540-join        
        JumpTrue     -print-boolean-3541-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3541-join  
        Label        -print-boolean-3541-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3541-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
