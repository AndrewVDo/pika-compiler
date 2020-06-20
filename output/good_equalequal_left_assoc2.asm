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
        Label        -compare-86-arg1          
        Label        -compare-85-arg1          
        PushI        3                         
        Label        -compare-85-arg2          
        PushI        4                         
        Label        -compare-85-sub           
        Subtract                               
        JumpFalse    -compare-85-true          
        Jump         -compare-85-false         
        Label        -compare-85-true          
        PushI        1                         
        Jump         -compare-85-join          
        Label        -compare-85-false         
        PushI        0                         
        Jump         -compare-85-join          
        Label        -compare-85-join          
        Label        -compare-86-arg2          
        PushI        1                         
        Label        -compare-86-sub           
        BEqual                                 
        JumpTrue     -compare-86-true          
        Jump         -compare-86-false         
        Label        -compare-86-true          
        PushI        1                         
        Jump         -compare-86-join          
        Label        -compare-86-false         
        PushI        0                         
        Jump         -compare-86-join          
        Label        -compare-86-join          
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
        Label        -compare-89-arg1          
        Label        -compare-88-arg1          
        PushI        4                         
        Label        -compare-88-arg2          
        PushI        4                         
        Label        -compare-88-sub           
        Subtract                               
        JumpFalse    -compare-88-true          
        Jump         -compare-88-false         
        Label        -compare-88-true          
        PushI        1                         
        Jump         -compare-88-join          
        Label        -compare-88-false         
        PushI        0                         
        Jump         -compare-88-join          
        Label        -compare-88-join          
        Label        -compare-89-arg2          
        PushI        1                         
        Label        -compare-89-sub           
        BEqual                                 
        JumpTrue     -compare-89-true          
        Jump         -compare-89-false         
        Label        -compare-89-true          
        PushI        1                         
        Jump         -compare-89-join          
        Label        -compare-89-false         
        PushI        0                         
        Jump         -compare-89-join          
        Label        -compare-89-join          
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
        Halt                                   
