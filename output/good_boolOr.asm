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
        Label        -bool-or-62-arg1          
        PushI        1                         
        JumpTrue     -bool-or-62-true-condition 
        PushI        0                         
        Label        -bool-or-62-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-62-true-condition 
        Jump         -bool-or-62-false-condition 
        Label        -bool-or-62-true-condition 
        PushI        1                         
        Jump         -bool-or-62-end           
        Label        -bool-or-62-false-condition 
        PushI        0                         
        Label        -bool-or-62-end           
        JumpTrue     -print-boolean-63-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-63-join    
        Label        -print-boolean-63-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-63-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-64-arg1          
        PushI        1                         
        JumpTrue     -bool-or-64-true-condition 
        PushI        0                         
        Label        -bool-or-64-arg2          
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-64-true-condition 
        Jump         -bool-or-64-false-condition 
        Label        -bool-or-64-true-condition 
        PushI        1                         
        Jump         -bool-or-64-end           
        Label        -bool-or-64-false-condition 
        PushI        0                         
        Label        -bool-or-64-end           
        JumpTrue     -print-boolean-65-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-65-join    
        Label        -print-boolean-65-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-65-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-66-arg1          
        PushI        0                         
        JumpTrue     -bool-or-66-true-condition 
        PushI        0                         
        Label        -bool-or-66-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-66-true-condition 
        Jump         -bool-or-66-false-condition 
        Label        -bool-or-66-true-condition 
        PushI        1                         
        Jump         -bool-or-66-end           
        Label        -bool-or-66-false-condition 
        PushI        0                         
        Label        -bool-or-66-end           
        JumpTrue     -print-boolean-67-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-67-join    
        Label        -print-boolean-67-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-67-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-68-arg1          
        PushI        0                         
        JumpTrue     -bool-or-68-true-condition 
        PushI        0                         
        Label        -bool-or-68-arg2          
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-68-true-condition 
        Jump         -bool-or-68-false-condition 
        Label        -bool-or-68-true-condition 
        PushI        1                         
        Jump         -bool-or-68-end           
        Label        -bool-or-68-false-condition 
        PushI        0                         
        Label        -bool-or-68-end           
        JumpTrue     -print-boolean-69-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-69-join    
        Label        -print-boolean-69-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-69-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
