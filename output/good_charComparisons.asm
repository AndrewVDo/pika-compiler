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
        PushI        60                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-25-arg1          
        PushI        120                       
        Label        -compare-25-arg2          
        PushI        121                       
        Label        -compare-25-sub           
        Subtract                               
        JumpNeg      -compare-25-true          
        Jump         -compare-25-false         
        Label        -compare-25-true          
        PushI        1                         
        Jump         -compare-25-join          
        Label        -compare-25-false         
        PushI        0                         
        Jump         -compare-25-join          
        Label        -compare-25-join          
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
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-27-arg1          
        PushI        121                       
        Label        -compare-27-arg2          
        PushI        121                       
        Label        -compare-27-sub           
        Subtract                               
        JumpNeg      -compare-27-true          
        Jump         -compare-27-false         
        Label        -compare-27-true          
        PushI        1                         
        Jump         -compare-27-join          
        Label        -compare-27-false         
        PushI        0                         
        Jump         -compare-27-join          
        Label        -compare-27-join          
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
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-29-arg1          
        PushI        122                       
        Label        -compare-29-arg2          
        PushI        121                       
        Label        -compare-29-sub           
        Subtract                               
        JumpNeg      -compare-29-true          
        Jump         -compare-29-false         
        Label        -compare-29-true          
        PushI        1                         
        Jump         -compare-29-join          
        Label        -compare-29-false         
        PushI        0                         
        Jump         -compare-29-join          
        Label        -compare-29-join          
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
        PushD        $print-format-newline     
        Printf                                 
        PushI        60                        
        PushD        $print-format-character   
        Printf                                 
        PushI        61                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-31-arg1          
        PushI        120                       
        Label        -compare-31-arg2          
        PushI        121                       
        Label        -compare-31-sub           
        Subtract                               
        JumpPos      -compare-31-false         
        Jump         -compare-31-true          
        Label        -compare-31-true          
        PushI        1                         
        Jump         -compare-31-join          
        Label        -compare-31-false         
        PushI        0                         
        Jump         -compare-31-join          
        Label        -compare-31-join          
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
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-33-arg1          
        PushI        121                       
        Label        -compare-33-arg2          
        PushI        121                       
        Label        -compare-33-sub           
        Subtract                               
        JumpPos      -compare-33-false         
        Jump         -compare-33-true          
        Label        -compare-33-true          
        PushI        1                         
        Jump         -compare-33-join          
        Label        -compare-33-false         
        PushI        0                         
        Jump         -compare-33-join          
        Label        -compare-33-join          
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
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-35-arg1          
        PushI        122                       
        Label        -compare-35-arg2          
        PushI        121                       
        Label        -compare-35-sub           
        Subtract                               
        JumpPos      -compare-35-false         
        Jump         -compare-35-true          
        Label        -compare-35-true          
        PushI        1                         
        Jump         -compare-35-join          
        Label        -compare-35-false         
        PushI        0                         
        Jump         -compare-35-join          
        Label        -compare-35-join          
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
        PushD        $print-format-newline     
        Printf                                 
        PushI        62                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-37-arg1          
        PushI        120                       
        Label        -compare-37-arg2          
        PushI        121                       
        Label        -compare-37-sub           
        Subtract                               
        JumpPos      -compare-37-true          
        Jump         -compare-37-false         
        Label        -compare-37-true          
        PushI        1                         
        Jump         -compare-37-join          
        Label        -compare-37-false         
        PushI        0                         
        Jump         -compare-37-join          
        Label        -compare-37-join          
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
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-39-arg1          
        PushI        121                       
        Label        -compare-39-arg2          
        PushI        121                       
        Label        -compare-39-sub           
        Subtract                               
        JumpPos      -compare-39-true          
        Jump         -compare-39-false         
        Label        -compare-39-true          
        PushI        1                         
        Jump         -compare-39-join          
        Label        -compare-39-false         
        PushI        0                         
        Jump         -compare-39-join          
        Label        -compare-39-join          
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
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-41-arg1          
        PushI        122                       
        Label        -compare-41-arg2          
        PushI        121                       
        Label        -compare-41-sub           
        Subtract                               
        JumpPos      -compare-41-true          
        Jump         -compare-41-false         
        Label        -compare-41-true          
        PushI        1                         
        Jump         -compare-41-join          
        Label        -compare-41-false         
        PushI        0                         
        Jump         -compare-41-join          
        Label        -compare-41-join          
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
        PushD        $print-format-newline     
        Printf                                 
        PushI        62                        
        PushD        $print-format-character   
        Printf                                 
        PushI        61                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-43-arg1          
        PushI        120                       
        Label        -compare-43-arg2          
        PushI        121                       
        Label        -compare-43-sub           
        Subtract                               
        JumpNeg      -compare-43-false         
        Jump         -compare-43-true          
        Label        -compare-43-true          
        PushI        1                         
        Jump         -compare-43-join          
        Label        -compare-43-false         
        PushI        0                         
        Jump         -compare-43-join          
        Label        -compare-43-join          
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
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-45-arg1          
        PushI        121                       
        Label        -compare-45-arg2          
        PushI        121                       
        Label        -compare-45-sub           
        Subtract                               
        JumpNeg      -compare-45-false         
        Jump         -compare-45-true          
        Label        -compare-45-true          
        PushI        1                         
        Jump         -compare-45-join          
        Label        -compare-45-false         
        PushI        0                         
        Jump         -compare-45-join          
        Label        -compare-45-join          
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
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-47-arg1          
        PushI        122                       
        Label        -compare-47-arg2          
        PushI        121                       
        Label        -compare-47-sub           
        Subtract                               
        JumpNeg      -compare-47-false         
        Jump         -compare-47-true          
        Label        -compare-47-true          
        PushI        1                         
        Jump         -compare-47-join          
        Label        -compare-47-false         
        PushI        0                         
        Jump         -compare-47-join          
        Label        -compare-47-join          
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
        PushD        $print-format-newline     
        Printf                                 
        PushI        61                        
        PushD        $print-format-character   
        Printf                                 
        PushI        61                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-49-arg1          
        PushI        120                       
        Label        -compare-49-arg2          
        PushI        121                       
        Label        -compare-49-sub           
        Subtract                               
        JumpFalse    -compare-49-true          
        Jump         -compare-49-false         
        Label        -compare-49-true          
        PushI        1                         
        Jump         -compare-49-join          
        Label        -compare-49-false         
        PushI        0                         
        Jump         -compare-49-join          
        Label        -compare-49-join          
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
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-51-arg1          
        PushI        121                       
        Label        -compare-51-arg2          
        PushI        121                       
        Label        -compare-51-sub           
        Subtract                               
        JumpFalse    -compare-51-true          
        Jump         -compare-51-false         
        Label        -compare-51-true          
        PushI        1                         
        Jump         -compare-51-join          
        Label        -compare-51-false         
        PushI        0                         
        Jump         -compare-51-join          
        Label        -compare-51-join          
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
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-53-arg1          
        PushI        122                       
        Label        -compare-53-arg2          
        PushI        121                       
        Label        -compare-53-sub           
        Subtract                               
        JumpFalse    -compare-53-true          
        Jump         -compare-53-false         
        Label        -compare-53-true          
        PushI        1                         
        Jump         -compare-53-join          
        Label        -compare-53-false         
        PushI        0                         
        Jump         -compare-53-join          
        Label        -compare-53-join          
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
        PushD        $print-format-newline     
        Printf                                 
        PushI        33                        
        PushD        $print-format-character   
        Printf                                 
        PushI        61                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-55-arg1          
        PushI        120                       
        Label        -compare-55-arg2          
        PushI        121                       
        Label        -compare-55-sub           
        Subtract                               
        JumpFalse    -compare-55-false         
        Jump         -compare-55-true          
        Label        -compare-55-true          
        PushI        1                         
        Jump         -compare-55-join          
        Label        -compare-55-false         
        PushI        0                         
        Jump         -compare-55-join          
        Label        -compare-55-join          
        JumpTrue     -print-boolean-56-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-56-join    
        Label        -print-boolean-56-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-56-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-57-arg1          
        PushI        121                       
        Label        -compare-57-arg2          
        PushI        121                       
        Label        -compare-57-sub           
        Subtract                               
        JumpFalse    -compare-57-false         
        Jump         -compare-57-true          
        Label        -compare-57-true          
        PushI        1                         
        Jump         -compare-57-join          
        Label        -compare-57-false         
        PushI        0                         
        Jump         -compare-57-join          
        Label        -compare-57-join          
        JumpTrue     -print-boolean-58-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-58-join    
        Label        -print-boolean-58-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-58-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-59-arg1          
        PushI        122                       
        Label        -compare-59-arg2          
        PushI        121                       
        Label        -compare-59-sub           
        Subtract                               
        JumpFalse    -compare-59-false         
        Jump         -compare-59-true          
        Label        -compare-59-true          
        PushI        1                         
        Jump         -compare-59-join          
        Label        -compare-59-false         
        PushI        0                         
        Jump         -compare-59-join          
        Label        -compare-59-join          
        JumpTrue     -print-boolean-60-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-60-join    
        Label        -print-boolean-60-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-60-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
