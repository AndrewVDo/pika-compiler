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
        Label        -while-statement-6563-check-condition 
        PushI        1                         
        JumpFalse    -while-statement-6563-else-condition 
        DLabel       -string-6561-store        
        DataC        84                        %% "This should be visible "
        DataC        104                       
        DataC        105                       
        DataC        115                       
        DataC        32                        
        DataC        115                       
        DataC        104                       
        DataC        111                       
        DataC        117                       
        DataC        108                       
        DataC        100                       
        DataC        32                        
        DataC        98                        
        DataC        101                       
        DataC        32                        
        DataC        118                       
        DataC        105                       
        DataC        115                       
        DataC        105                       
        DataC        98                        
        DataC        108                       
        DataC        101                       
        DataC        0                         
        DataC        0                         
        PushD        -string-6561-store        
        PushD        $print-format-string      
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Jump         -while-statement-6563-end 
        Label        -while-statement-6563-else-condition 
        DLabel       -string-6562-store        
        DataC        84                        %% "This should not "
        DataC        104                       
        DataC        105                       
        DataC        115                       
        DataC        32                        
        DataC        115                       
        DataC        104                       
        DataC        111                       
        DataC        117                       
        DataC        108                       
        DataC        100                       
        DataC        32                        
        DataC        110                       
        DataC        111                       
        DataC        116                       
        DataC        0                         
        DataC        0                         
        PushD        -string-6562-store        
        PushD        $print-format-string      
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -while-statement-6563-end 
        Label        -while-statement-6566-check-condition 
        PushI        0                         
        JumpFalse    -while-statement-6566-else-condition 
        DLabel       -string-6564-store        
        DataC        110                       %% "nope "
        DataC        111                       
        DataC        112                       
        DataC        101                       
        DataC        0                         
        DataC        0                         
        PushD        -string-6564-store        
        PushD        $print-format-string      
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Jump         -while-statement-6566-end 
        Label        -while-statement-6566-else-condition 
        DLabel       -string-6565-store        
        DataC        89                        %% "Yeah "
        DataC        101                       
        DataC        97                        
        DataC        104                       
        DataC        0                         
        DataC        0                         
        PushD        -string-6565-store        
        PushD        $print-format-string      
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -while-statement-6566-end 
        Halt                                   
