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
        Label        -bool-or-71-arg1          
        Label        -bool-or-70-arg1          
        PushI        1                         
        JumpTrue     -bool-or-70-true-condition 
        PushI        0                         
        Label        -bool-or-70-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-70-true-condition 
        Jump         -bool-or-70-false-condition 
        Label        -bool-or-70-true-condition 
        PushI        1                         
        Jump         -bool-or-70-end           
        Label        -bool-or-70-false-condition 
        PushI        0                         
        Label        -bool-or-70-end           
        JumpTrue     -bool-or-71-true-condition 
        PushI        0                         
        Label        -bool-or-71-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-71-true-condition 
        Jump         -bool-or-71-false-condition 
        Label        -bool-or-71-true-condition 
        PushI        1                         
        Jump         -bool-or-71-end           
        Label        -bool-or-71-false-condition 
        PushI        0                         
        Label        -bool-or-71-end           
        JumpTrue     -print-boolean-72-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-72-join    
        Label        -print-boolean-72-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-72-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-74-arg1          
        Label        -bool-or-73-arg1          
        PushI        1                         
        JumpTrue     -bool-or-73-true-condition 
        PushI        0                         
        Label        -bool-or-73-arg2          
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-73-true-condition 
        Jump         -bool-or-73-false-condition 
        Label        -bool-or-73-true-condition 
        PushI        1                         
        Jump         -bool-or-73-end           
        Label        -bool-or-73-false-condition 
        PushI        0                         
        Label        -bool-or-73-end           
        JumpTrue     -bool-or-74-true-condition 
        PushI        0                         
        Label        -bool-or-74-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-74-true-condition 
        Jump         -bool-or-74-false-condition 
        Label        -bool-or-74-true-condition 
        PushI        1                         
        Jump         -bool-or-74-end           
        Label        -bool-or-74-false-condition 
        PushI        0                         
        Label        -bool-or-74-end           
        JumpTrue     -print-boolean-75-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-75-join    
        Label        -print-boolean-75-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-75-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-77-arg1          
        Label        -bool-or-76-arg1          
        PushI        0                         
        JumpTrue     -bool-or-76-true-condition 
        PushI        0                         
        Label        -bool-or-76-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-76-true-condition 
        Jump         -bool-or-76-false-condition 
        Label        -bool-or-76-true-condition 
        PushI        1                         
        Jump         -bool-or-76-end           
        Label        -bool-or-76-false-condition 
        PushI        0                         
        Label        -bool-or-76-end           
        JumpTrue     -bool-or-77-true-condition 
        PushI        0                         
        Label        -bool-or-77-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-77-true-condition 
        Jump         -bool-or-77-false-condition 
        Label        -bool-or-77-true-condition 
        PushI        1                         
        Jump         -bool-or-77-end           
        Label        -bool-or-77-false-condition 
        PushI        0                         
        Label        -bool-or-77-end           
        JumpTrue     -print-boolean-78-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-78-join    
        Label        -print-boolean-78-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-78-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-80-arg1          
        Label        -bool-or-79-arg1          
        PushI        0                         
        JumpTrue     -bool-or-79-true-condition 
        PushI        0                         
        Label        -bool-or-79-arg2          
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-79-true-condition 
        Jump         -bool-or-79-false-condition 
        Label        -bool-or-79-true-condition 
        PushI        1                         
        Jump         -bool-or-79-end           
        Label        -bool-or-79-false-condition 
        PushI        0                         
        Label        -bool-or-79-end           
        JumpTrue     -bool-or-80-true-condition 
        PushI        0                         
        Label        -bool-or-80-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-80-true-condition 
        Jump         -bool-or-80-false-condition 
        Label        -bool-or-80-true-condition 
        PushI        1                         
        Jump         -bool-or-80-end           
        Label        -bool-or-80-false-condition 
        PushI        0                         
        Label        -bool-or-80-end           
        JumpTrue     -print-boolean-81-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-81-join    
        Label        -print-boolean-81-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-81-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-83-arg1          
        Label        -bool-or-82-arg1          
        PushI        1                         
        JumpTrue     -bool-or-82-true-condition 
        PushI        0                         
        Label        -bool-or-82-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-82-true-condition 
        Jump         -bool-or-82-false-condition 
        Label        -bool-or-82-true-condition 
        PushI        1                         
        Jump         -bool-or-82-end           
        Label        -bool-or-82-false-condition 
        PushI        0                         
        Label        -bool-or-82-end           
        JumpTrue     -bool-or-83-true-condition 
        PushI        0                         
        Label        -bool-or-83-arg2          
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-83-true-condition 
        Jump         -bool-or-83-false-condition 
        Label        -bool-or-83-true-condition 
        PushI        1                         
        Jump         -bool-or-83-end           
        Label        -bool-or-83-false-condition 
        PushI        0                         
        Label        -bool-or-83-end           
        JumpTrue     -print-boolean-84-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-84-join    
        Label        -print-boolean-84-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-84-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-86-arg1          
        Label        -bool-or-85-arg1          
        PushI        1                         
        JumpTrue     -bool-or-85-true-condition 
        PushI        0                         
        Label        -bool-or-85-arg2          
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-85-true-condition 
        Jump         -bool-or-85-false-condition 
        Label        -bool-or-85-true-condition 
        PushI        1                         
        Jump         -bool-or-85-end           
        Label        -bool-or-85-false-condition 
        PushI        0                         
        Label        -bool-or-85-end           
        JumpTrue     -bool-or-86-true-condition 
        PushI        0                         
        Label        -bool-or-86-arg2          
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-86-true-condition 
        Jump         -bool-or-86-false-condition 
        Label        -bool-or-86-true-condition 
        PushI        1                         
        Jump         -bool-or-86-end           
        Label        -bool-or-86-false-condition 
        PushI        0                         
        Label        -bool-or-86-end           
        JumpTrue     -print-boolean-87-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-87-join    
        Label        -print-boolean-87-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-87-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-89-arg1          
        Label        -bool-or-88-arg1          
        PushI        0                         
        JumpTrue     -bool-or-88-true-condition 
        PushI        0                         
        Label        -bool-or-88-arg2          
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-88-true-condition 
        Jump         -bool-or-88-false-condition 
        Label        -bool-or-88-true-condition 
        PushI        1                         
        Jump         -bool-or-88-end           
        Label        -bool-or-88-false-condition 
        PushI        0                         
        Label        -bool-or-88-end           
        JumpTrue     -bool-or-89-true-condition 
        PushI        0                         
        Label        -bool-or-89-arg2          
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-89-true-condition 
        Jump         -bool-or-89-false-condition 
        Label        -bool-or-89-true-condition 
        PushI        1                         
        Jump         -bool-or-89-end           
        Label        -bool-or-89-false-condition 
        PushI        0                         
        Label        -bool-or-89-end           
        JumpTrue     -print-boolean-90-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-90-join    
        Label        -print-boolean-90-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-90-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-92-arg1          
        Label        -bool-or-91-arg1          
        PushI        0                         
        JumpTrue     -bool-or-91-true-condition 
        PushI        0                         
        Label        -bool-or-91-arg2          
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-91-true-condition 
        Jump         -bool-or-91-false-condition 
        Label        -bool-or-91-true-condition 
        PushI        1                         
        Jump         -bool-or-91-end           
        Label        -bool-or-91-false-condition 
        PushI        0                         
        Label        -bool-or-91-end           
        JumpTrue     -bool-or-92-true-condition 
        PushI        0                         
        Label        -bool-or-92-arg2          
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-92-true-condition 
        Jump         -bool-or-92-false-condition 
        Label        -bool-or-92-true-condition 
        PushI        1                         
        Jump         -bool-or-92-end           
        Label        -bool-or-92-false-condition 
        PushI        0                         
        Label        -bool-or-92-end           
        JumpTrue     -print-boolean-93-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-93-join    
        Label        -print-boolean-93-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-93-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
