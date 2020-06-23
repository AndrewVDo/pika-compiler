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
        Label        -bool-or-6536-arg1        
        Label        -bool-or-6535-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6535-true-condition 
        PushI        0                         
        Label        -bool-or-6535-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6535-true-condition 
        Jump         -bool-or-6535-false-condition 
        Label        -bool-or-6535-true-condition 
        PushI        1                         
        Jump         -bool-or-6535-end         
        Label        -bool-or-6535-false-condition 
        PushI        0                         
        Label        -bool-or-6535-end         
        JumpTrue     -bool-or-6536-true-condition 
        PushI        0                         
        Label        -bool-or-6536-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6536-true-condition 
        Jump         -bool-or-6536-false-condition 
        Label        -bool-or-6536-true-condition 
        PushI        1                         
        Jump         -bool-or-6536-end         
        Label        -bool-or-6536-false-condition 
        PushI        0                         
        Label        -bool-or-6536-end         
        JumpTrue     -print-boolean-6537-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6537-join  
        Label        -print-boolean-6537-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6537-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6539-arg1        
        Label        -bool-or-6538-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6538-true-condition 
        PushI        0                         
        Label        -bool-or-6538-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6538-true-condition 
        Jump         -bool-or-6538-false-condition 
        Label        -bool-or-6538-true-condition 
        PushI        1                         
        Jump         -bool-or-6538-end         
        Label        -bool-or-6538-false-condition 
        PushI        0                         
        Label        -bool-or-6538-end         
        JumpTrue     -bool-or-6539-true-condition 
        PushI        0                         
        Label        -bool-or-6539-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6539-true-condition 
        Jump         -bool-or-6539-false-condition 
        Label        -bool-or-6539-true-condition 
        PushI        1                         
        Jump         -bool-or-6539-end         
        Label        -bool-or-6539-false-condition 
        PushI        0                         
        Label        -bool-or-6539-end         
        JumpTrue     -print-boolean-6540-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6540-join  
        Label        -print-boolean-6540-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6540-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6542-arg1        
        Label        -bool-or-6541-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6541-true-condition 
        PushI        0                         
        Label        -bool-or-6541-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6541-true-condition 
        Jump         -bool-or-6541-false-condition 
        Label        -bool-or-6541-true-condition 
        PushI        1                         
        Jump         -bool-or-6541-end         
        Label        -bool-or-6541-false-condition 
        PushI        0                         
        Label        -bool-or-6541-end         
        JumpTrue     -bool-or-6542-true-condition 
        PushI        0                         
        Label        -bool-or-6542-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6542-true-condition 
        Jump         -bool-or-6542-false-condition 
        Label        -bool-or-6542-true-condition 
        PushI        1                         
        Jump         -bool-or-6542-end         
        Label        -bool-or-6542-false-condition 
        PushI        0                         
        Label        -bool-or-6542-end         
        JumpTrue     -print-boolean-6543-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6543-join  
        Label        -print-boolean-6543-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6543-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6545-arg1        
        Label        -bool-or-6544-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6544-true-condition 
        PushI        0                         
        Label        -bool-or-6544-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6544-true-condition 
        Jump         -bool-or-6544-false-condition 
        Label        -bool-or-6544-true-condition 
        PushI        1                         
        Jump         -bool-or-6544-end         
        Label        -bool-or-6544-false-condition 
        PushI        0                         
        Label        -bool-or-6544-end         
        JumpTrue     -bool-or-6545-true-condition 
        PushI        0                         
        Label        -bool-or-6545-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6545-true-condition 
        Jump         -bool-or-6545-false-condition 
        Label        -bool-or-6545-true-condition 
        PushI        1                         
        Jump         -bool-or-6545-end         
        Label        -bool-or-6545-false-condition 
        PushI        0                         
        Label        -bool-or-6545-end         
        JumpTrue     -print-boolean-6546-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6546-join  
        Label        -print-boolean-6546-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6546-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6548-arg1        
        Label        -bool-or-6547-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6547-true-condition 
        PushI        0                         
        Label        -bool-or-6547-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6547-true-condition 
        Jump         -bool-or-6547-false-condition 
        Label        -bool-or-6547-true-condition 
        PushI        1                         
        Jump         -bool-or-6547-end         
        Label        -bool-or-6547-false-condition 
        PushI        0                         
        Label        -bool-or-6547-end         
        JumpTrue     -bool-or-6548-true-condition 
        PushI        0                         
        Label        -bool-or-6548-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6548-true-condition 
        Jump         -bool-or-6548-false-condition 
        Label        -bool-or-6548-true-condition 
        PushI        1                         
        Jump         -bool-or-6548-end         
        Label        -bool-or-6548-false-condition 
        PushI        0                         
        Label        -bool-or-6548-end         
        JumpTrue     -print-boolean-6549-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6549-join  
        Label        -print-boolean-6549-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6549-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6551-arg1        
        Label        -bool-or-6550-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6550-true-condition 
        PushI        0                         
        Label        -bool-or-6550-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6550-true-condition 
        Jump         -bool-or-6550-false-condition 
        Label        -bool-or-6550-true-condition 
        PushI        1                         
        Jump         -bool-or-6550-end         
        Label        -bool-or-6550-false-condition 
        PushI        0                         
        Label        -bool-or-6550-end         
        JumpTrue     -bool-or-6551-true-condition 
        PushI        0                         
        Label        -bool-or-6551-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6551-true-condition 
        Jump         -bool-or-6551-false-condition 
        Label        -bool-or-6551-true-condition 
        PushI        1                         
        Jump         -bool-or-6551-end         
        Label        -bool-or-6551-false-condition 
        PushI        0                         
        Label        -bool-or-6551-end         
        JumpTrue     -print-boolean-6552-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6552-join  
        Label        -print-boolean-6552-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6552-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6554-arg1        
        Label        -bool-or-6553-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6553-true-condition 
        PushI        0                         
        Label        -bool-or-6553-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6553-true-condition 
        Jump         -bool-or-6553-false-condition 
        Label        -bool-or-6553-true-condition 
        PushI        1                         
        Jump         -bool-or-6553-end         
        Label        -bool-or-6553-false-condition 
        PushI        0                         
        Label        -bool-or-6553-end         
        JumpTrue     -bool-or-6554-true-condition 
        PushI        0                         
        Label        -bool-or-6554-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6554-true-condition 
        Jump         -bool-or-6554-false-condition 
        Label        -bool-or-6554-true-condition 
        PushI        1                         
        Jump         -bool-or-6554-end         
        Label        -bool-or-6554-false-condition 
        PushI        0                         
        Label        -bool-or-6554-end         
        JumpTrue     -print-boolean-6555-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6555-join  
        Label        -print-boolean-6555-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6555-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6557-arg1        
        Label        -bool-or-6556-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6556-true-condition 
        PushI        0                         
        Label        -bool-or-6556-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6556-true-condition 
        Jump         -bool-or-6556-false-condition 
        Label        -bool-or-6556-true-condition 
        PushI        1                         
        Jump         -bool-or-6556-end         
        Label        -bool-or-6556-false-condition 
        PushI        0                         
        Label        -bool-or-6556-end         
        JumpTrue     -bool-or-6557-true-condition 
        PushI        0                         
        Label        -bool-or-6557-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6557-true-condition 
        Jump         -bool-or-6557-false-condition 
        Label        -bool-or-6557-true-condition 
        PushI        1                         
        Jump         -bool-or-6557-end         
        Label        -bool-or-6557-false-condition 
        PushI        0                         
        Label        -bool-or-6557-end         
        JumpTrue     -print-boolean-6558-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6558-join  
        Label        -print-boolean-6558-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6558-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
