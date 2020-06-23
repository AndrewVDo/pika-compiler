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
        Label        -bool-or-6527-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6527-true-condition 
        PushI        0                         
        Label        -bool-or-6527-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6527-true-condition 
        Jump         -bool-or-6527-false-condition 
        Label        -bool-or-6527-true-condition 
        PushI        1                         
        Jump         -bool-or-6527-end         
        Label        -bool-or-6527-false-condition 
        PushI        0                         
        Label        -bool-or-6527-end         
        JumpTrue     -print-boolean-6528-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6528-join  
        Label        -print-boolean-6528-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6528-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6529-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6529-true-condition 
        PushI        0                         
        Label        -bool-or-6529-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6529-true-condition 
        Jump         -bool-or-6529-false-condition 
        Label        -bool-or-6529-true-condition 
        PushI        1                         
        Jump         -bool-or-6529-end         
        Label        -bool-or-6529-false-condition 
        PushI        0                         
        Label        -bool-or-6529-end         
        JumpTrue     -print-boolean-6530-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6530-join  
        Label        -print-boolean-6530-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6530-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6531-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6531-true-condition 
        PushI        0                         
        Label        -bool-or-6531-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6531-true-condition 
        Jump         -bool-or-6531-false-condition 
        Label        -bool-or-6531-true-condition 
        PushI        1                         
        Jump         -bool-or-6531-end         
        Label        -bool-or-6531-false-condition 
        PushI        0                         
        Label        -bool-or-6531-end         
        JumpTrue     -print-boolean-6532-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6532-join  
        Label        -print-boolean-6532-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6532-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6533-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6533-true-condition 
        PushI        0                         
        Label        -bool-or-6533-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6533-true-condition 
        Jump         -bool-or-6533-false-condition 
        Label        -bool-or-6533-true-condition 
        PushI        1                         
        Jump         -bool-or-6533-end         
        Label        -bool-or-6533-false-condition 
        PushI        0                         
        Label        -bool-or-6533-end         
        JumpTrue     -print-boolean-6534-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6534-join  
        Label        -print-boolean-6534-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6534-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
