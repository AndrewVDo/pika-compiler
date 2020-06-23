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
        Label        -bool-or-6479-arg1        
        Label        -bool-or-6478-arg1        
        PushI        1                         
        BNegate                                
        PushI        0                         
        And                                    
        JumpTrue     -bool-or-6478-true-condition 
        PushI        0                         
        Label        -bool-or-6478-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6478-true-condition 
        Jump         -bool-or-6478-false-condition 
        Label        -bool-or-6478-true-condition 
        PushI        1                         
        Jump         -bool-or-6478-end         
        Label        -bool-or-6478-false-condition 
        PushI        0                         
        Label        -bool-or-6478-end         
        JumpTrue     -bool-or-6479-true-condition 
        PushI        0                         
        Label        -bool-or-6479-arg2        
        PushI        0                         
        BNegate                                
        Or                                     
        JumpTrue     -bool-or-6479-true-condition 
        Jump         -bool-or-6479-false-condition 
        Label        -bool-or-6479-true-condition 
        PushI        1                         
        Jump         -bool-or-6479-end         
        Label        -bool-or-6479-false-condition 
        PushI        0                         
        Label        -bool-or-6479-end         
        JumpTrue     -print-boolean-6480-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6480-join  
        Label        -print-boolean-6480-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6480-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6481-arg1        
        PushI        1                         
        PushI        0                         
        BNegate                                
        And                                    
        PushI        1                         
        And                                    
        JumpTrue     -bool-or-6481-true-condition 
        PushI        0                         
        Label        -bool-or-6481-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6481-true-condition 
        Jump         -bool-or-6481-false-condition 
        Label        -bool-or-6481-true-condition 
        PushI        1                         
        Jump         -bool-or-6481-end         
        Label        -bool-or-6481-false-condition 
        PushI        0                         
        Label        -bool-or-6481-end         
        JumpTrue     -print-boolean-6482-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6482-join  
        Label        -print-boolean-6482-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6482-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6483-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6483-true-condition 
        PushI        0                         
        Label        -bool-or-6483-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6483-true-condition 
        Jump         -bool-or-6483-false-condition 
        Label        -bool-or-6483-true-condition 
        PushI        1                         
        Jump         -bool-or-6483-end         
        Label        -bool-or-6483-false-condition 
        PushI        0                         
        Label        -bool-or-6483-end         
        BNegate                                
        JumpTrue     -print-boolean-6484-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6484-join  
        Label        -print-boolean-6484-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6484-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6485-arg1        
        PushI        1                         
        PushI        1                         
        And                                    
        BNegate                                
        JumpTrue     -bool-or-6485-true-condition 
        PushI        0                         
        Label        -bool-or-6485-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6485-true-condition 
        Jump         -bool-or-6485-false-condition 
        Label        -bool-or-6485-true-condition 
        PushI        1                         
        Jump         -bool-or-6485-end         
        Label        -bool-or-6485-false-condition 
        PushI        0                         
        Label        -bool-or-6485-end         
        JumpTrue     -print-boolean-6486-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6486-join  
        Label        -print-boolean-6486-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6486-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        1                         
        PushI        2                         
        Add                                    
        PushI        1                         
        And                                    
        PushI        1                         
        And                                    
        BNegate                                
        JumpTrue     -print-boolean-6487-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6487-join  
        Label        -print-boolean-6487-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6487-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   