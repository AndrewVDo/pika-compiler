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
        Label        -bool-or-23-arg1          
        PushI        1                         
        JumpTrue     -bool-or-23-true-condition 
        PushI        0                         
        Label        -bool-or-23-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-23-true-condition 
        Jump         -bool-or-23-false-condition 
        Label        -bool-or-23-true-condition 
        PushI        1                         
        Jump         -bool-or-23-end           
        Label        -bool-or-23-false-condition 
        PushI        0                         
        Label        -bool-or-23-end           
        PushI        1                         
        And                                    
        JumpTrue     -print-boolean-24-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-24-join    
        Label        -print-boolean-24-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-24-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-25-arg1          
        PushI        1                         
        JumpTrue     -bool-or-25-true-condition 
        PushI        0                         
        Label        -bool-or-25-arg2          
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-25-true-condition 
        Jump         -bool-or-25-false-condition 
        Label        -bool-or-25-true-condition 
        PushI        1                         
        Jump         -bool-or-25-end           
        Label        -bool-or-25-false-condition 
        PushI        0                         
        Label        -bool-or-25-end           
        PushI        1                         
        And                                    
        JumpTrue     -print-boolean-26-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-26-join    
        Label        -print-boolean-26-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-26-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-27-arg1          
        PushI        0                         
        JumpTrue     -bool-or-27-true-condition 
        PushI        0                         
        Label        -bool-or-27-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-27-true-condition 
        Jump         -bool-or-27-false-condition 
        Label        -bool-or-27-true-condition 
        PushI        1                         
        Jump         -bool-or-27-end           
        Label        -bool-or-27-false-condition 
        PushI        0                         
        Label        -bool-or-27-end           
        PushI        1                         
        And                                    
        JumpTrue     -print-boolean-28-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-28-join    
        Label        -print-boolean-28-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-28-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-29-arg1          
        PushI        0                         
        JumpTrue     -bool-or-29-true-condition 
        PushI        0                         
        Label        -bool-or-29-arg2          
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-29-true-condition 
        Jump         -bool-or-29-false-condition 
        Label        -bool-or-29-true-condition 
        PushI        1                         
        Jump         -bool-or-29-end           
        Label        -bool-or-29-false-condition 
        PushI        0                         
        Label        -bool-or-29-end           
        PushI        1                         
        And                                    
        JumpTrue     -print-boolean-30-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-30-join    
        Label        -print-boolean-30-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-30-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-31-arg1          
        PushI        1                         
        JumpTrue     -bool-or-31-true-condition 
        PushI        0                         
        Label        -bool-or-31-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-31-true-condition 
        Jump         -bool-or-31-false-condition 
        Label        -bool-or-31-true-condition 
        PushI        1                         
        Jump         -bool-or-31-end           
        Label        -bool-or-31-false-condition 
        PushI        0                         
        Label        -bool-or-31-end           
        PushI        0                         
        And                                    
        JumpTrue     -print-boolean-32-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-32-join    
        Label        -print-boolean-32-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-32-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-33-arg1          
        PushI        1                         
        JumpTrue     -bool-or-33-true-condition 
        PushI        0                         
        Label        -bool-or-33-arg2          
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-33-true-condition 
        Jump         -bool-or-33-false-condition 
        Label        -bool-or-33-true-condition 
        PushI        1                         
        Jump         -bool-or-33-end           
        Label        -bool-or-33-false-condition 
        PushI        0                         
        Label        -bool-or-33-end           
        PushI        0                         
        And                                    
        JumpTrue     -print-boolean-34-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-34-join    
        Label        -print-boolean-34-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-34-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-35-arg1          
        PushI        0                         
        JumpTrue     -bool-or-35-true-condition 
        PushI        0                         
        Label        -bool-or-35-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-35-true-condition 
        Jump         -bool-or-35-false-condition 
        Label        -bool-or-35-true-condition 
        PushI        1                         
        Jump         -bool-or-35-end           
        Label        -bool-or-35-false-condition 
        PushI        0                         
        Label        -bool-or-35-end           
        PushI        0                         
        And                                    
        JumpTrue     -print-boolean-36-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-36-join    
        Label        -print-boolean-36-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-36-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-37-arg1          
        PushI        0                         
        JumpTrue     -bool-or-37-true-condition 
        PushI        0                         
        Label        -bool-or-37-arg2          
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-37-true-condition 
        Jump         -bool-or-37-false-condition 
        Label        -bool-or-37-true-condition 
        PushI        1                         
        Jump         -bool-or-37-end           
        Label        -bool-or-37-false-condition 
        PushI        0                         
        Label        -bool-or-37-end           
        PushI        0                         
        And                                    
        JumpTrue     -print-boolean-38-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-38-join    
        Label        -print-boolean-38-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-38-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-39-arg1          
        PushI        1                         
        JumpTrue     -bool-or-39-true-condition 
        PushI        0                         
        Label        -bool-or-39-arg2          
        PushI        1                         
        PushI        1                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-39-true-condition 
        Jump         -bool-or-39-false-condition 
        Label        -bool-or-39-true-condition 
        PushI        1                         
        Jump         -bool-or-39-end           
        Label        -bool-or-39-false-condition 
        PushI        0                         
        Label        -bool-or-39-end           
        JumpTrue     -print-boolean-40-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-40-join    
        Label        -print-boolean-40-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-40-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-41-arg1          
        PushI        1                         
        JumpTrue     -bool-or-41-true-condition 
        PushI        0                         
        Label        -bool-or-41-arg2          
        PushI        0                         
        PushI        1                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-41-true-condition 
        Jump         -bool-or-41-false-condition 
        Label        -bool-or-41-true-condition 
        PushI        1                         
        Jump         -bool-or-41-end           
        Label        -bool-or-41-false-condition 
        PushI        0                         
        Label        -bool-or-41-end           
        JumpTrue     -print-boolean-42-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-42-join    
        Label        -print-boolean-42-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-42-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-43-arg1          
        PushI        0                         
        JumpTrue     -bool-or-43-true-condition 
        PushI        0                         
        Label        -bool-or-43-arg2          
        PushI        1                         
        PushI        1                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-43-true-condition 
        Jump         -bool-or-43-false-condition 
        Label        -bool-or-43-true-condition 
        PushI        1                         
        Jump         -bool-or-43-end           
        Label        -bool-or-43-false-condition 
        PushI        0                         
        Label        -bool-or-43-end           
        JumpTrue     -print-boolean-44-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-44-join    
        Label        -print-boolean-44-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-44-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-45-arg1          
        PushI        0                         
        JumpTrue     -bool-or-45-true-condition 
        PushI        0                         
        Label        -bool-or-45-arg2          
        PushI        0                         
        PushI        1                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-45-true-condition 
        Jump         -bool-or-45-false-condition 
        Label        -bool-or-45-true-condition 
        PushI        1                         
        Jump         -bool-or-45-end           
        Label        -bool-or-45-false-condition 
        PushI        0                         
        Label        -bool-or-45-end           
        JumpTrue     -print-boolean-46-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-46-join    
        Label        -print-boolean-46-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-46-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-47-arg1          
        PushI        1                         
        JumpTrue     -bool-or-47-true-condition 
        PushI        0                         
        Label        -bool-or-47-arg2          
        PushI        1                         
        PushI        0                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-47-true-condition 
        Jump         -bool-or-47-false-condition 
        Label        -bool-or-47-true-condition 
        PushI        1                         
        Jump         -bool-or-47-end           
        Label        -bool-or-47-false-condition 
        PushI        0                         
        Label        -bool-or-47-end           
        JumpTrue     -print-boolean-48-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-48-join    
        Label        -print-boolean-48-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-48-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-49-arg1          
        PushI        1                         
        JumpTrue     -bool-or-49-true-condition 
        PushI        0                         
        Label        -bool-or-49-arg2          
        PushI        0                         
        PushI        0                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-49-true-condition 
        Jump         -bool-or-49-false-condition 
        Label        -bool-or-49-true-condition 
        PushI        1                         
        Jump         -bool-or-49-end           
        Label        -bool-or-49-false-condition 
        PushI        0                         
        Label        -bool-or-49-end           
        JumpTrue     -print-boolean-50-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-50-join    
        Label        -print-boolean-50-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-50-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-51-arg1          
        PushI        0                         
        JumpTrue     -bool-or-51-true-condition 
        PushI        0                         
        Label        -bool-or-51-arg2          
        PushI        1                         
        PushI        0                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-51-true-condition 
        Jump         -bool-or-51-false-condition 
        Label        -bool-or-51-true-condition 
        PushI        1                         
        Jump         -bool-or-51-end           
        Label        -bool-or-51-false-condition 
        PushI        0                         
        Label        -bool-or-51-end           
        JumpTrue     -print-boolean-52-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-52-join    
        Label        -print-boolean-52-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-52-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-53-arg1          
        PushI        0                         
        JumpTrue     -bool-or-53-true-condition 
        PushI        0                         
        Label        -bool-or-53-arg2          
        PushI        0                         
        PushI        0                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-53-true-condition 
        Jump         -bool-or-53-false-condition 
        Label        -bool-or-53-true-condition 
        PushI        1                         
        Jump         -bool-or-53-end           
        Label        -bool-or-53-false-condition 
        PushI        0                         
        Label        -bool-or-53-end           
        JumpTrue     -print-boolean-54-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-54-join    
        Label        -print-boolean-54-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-54-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        1                         
        Label        -bool-or-56-arg1          
        PushI        0                         
        JumpTrue     -bool-or-56-true-condition 
        PushI        0                         
        Label        -bool-or-56-arg2          
        Label        -bool-or-55-arg1          
        PushI        0                         
        JumpTrue     -bool-or-55-true-condition 
        PushI        0                         
        Label        -bool-or-55-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-55-true-condition 
        Jump         -bool-or-55-false-condition 
        Label        -bool-or-55-true-condition 
        PushI        1                         
        Jump         -bool-or-55-end           
        Label        -bool-or-55-false-condition 
        PushI        0                         
        Label        -bool-or-55-end           
        Or                                     
        JumpTrue     -bool-or-56-true-condition 
        Jump         -bool-or-56-false-condition 
        Label        -bool-or-56-true-condition 
        PushI        1                         
        Jump         -bool-or-56-end           
        Label        -bool-or-56-false-condition 
        PushI        0                         
        Label        -bool-or-56-end           
        And                                    
        JumpTrue     -print-boolean-57-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-57-join    
        Label        -print-boolean-57-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-57-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
