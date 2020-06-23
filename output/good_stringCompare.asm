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
        DataZ        16                        
        Label        $$main                    
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        DLabel       -string-188-store         
        DataC        110                       %% "now "
        DataC        111                       
        DataC        119                       
        DataC        0                         
        DataC        0                         
        PushD        -string-188-store         
        StoreI                                 
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% w
        DLabel       -string-189-store         
        DataC        105                       %% "is the "
        DataC        115                       
        DataC        32                        
        DataC        116                       
        DataC        104                       
        DataC        101                       
        DataC        0                         
        DataC        0                         
        PushD        -string-189-store         
        StoreI                                 
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% x
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        LoadI                                  
        StoreI                                 
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% y
        DLabel       -string-190-store         
        DataC        110                       %% "now "
        DataC        111                       
        DataC        119                       
        DataC        0                         
        DataC        0                         
        PushD        -string-190-store         
        StoreI                                 
        Label        -compare-191-arg1         
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        LoadI                                  
        Label        -compare-191-arg2         
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% w
        LoadI                                  
        Label        -compare-191-sub          
        Subtract                               
        JumpFalse    -compare-191-true         
        Jump         -compare-191-false        
        Label        -compare-191-true         
        PushI        1                         
        Jump         -compare-191-join         
        Label        -compare-191-false        
        PushI        0                         
        Jump         -compare-191-join         
        Label        -compare-191-join         
        JumpTrue     -print-boolean-194-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-194-join   
        Label        -print-boolean-194-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-194-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-192-arg1         
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        LoadI                                  
        Label        -compare-192-arg2         
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% x
        LoadI                                  
        Label        -compare-192-sub          
        Subtract                               
        JumpFalse    -compare-192-true         
        Jump         -compare-192-false        
        Label        -compare-192-true         
        PushI        1                         
        Jump         -compare-192-join         
        Label        -compare-192-false        
        PushI        0                         
        Jump         -compare-192-join         
        Label        -compare-192-join         
        JumpTrue     -print-boolean-195-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-195-join   
        Label        -print-boolean-195-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-195-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-193-arg1         
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        LoadI                                  
        Label        -compare-193-arg2         
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% y
        LoadI                                  
        Label        -compare-193-sub          
        Subtract                               
        JumpFalse    -compare-193-true         
        Jump         -compare-193-false        
        Label        -compare-193-true         
        PushI        1                         
        Jump         -compare-193-join         
        Label        -compare-193-false        
        PushI        0                         
        Jump         -compare-193-join         
        Label        -compare-193-join         
        JumpTrue     -print-boolean-196-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-196-join   
        Label        -print-boolean-196-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-196-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-197-arg1         
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        LoadI                                  
        Label        -compare-197-arg2         
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% w
        LoadI                                  
        Label        -compare-197-sub          
        Subtract                               
        JumpFalse    -compare-197-false        
        Jump         -compare-197-true         
        Label        -compare-197-true         
        PushI        1                         
        Jump         -compare-197-join         
        Label        -compare-197-false        
        PushI        0                         
        Jump         -compare-197-join         
        Label        -compare-197-join         
        JumpTrue     -print-boolean-200-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-200-join   
        Label        -print-boolean-200-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-200-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-198-arg1         
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        LoadI                                  
        Label        -compare-198-arg2         
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% x
        LoadI                                  
        Label        -compare-198-sub          
        Subtract                               
        JumpFalse    -compare-198-false        
        Jump         -compare-198-true         
        Label        -compare-198-true         
        PushI        1                         
        Jump         -compare-198-join         
        Label        -compare-198-false        
        PushI        0                         
        Jump         -compare-198-join         
        Label        -compare-198-join         
        JumpTrue     -print-boolean-201-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-201-join   
        Label        -print-boolean-201-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-201-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-199-arg1         
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% v
        LoadI                                  
        Label        -compare-199-arg2         
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% y
        LoadI                                  
        Label        -compare-199-sub          
        Subtract                               
        JumpFalse    -compare-199-false        
        Jump         -compare-199-true         
        Label        -compare-199-true         
        PushI        1                         
        Jump         -compare-199-join         
        Label        -compare-199-false        
        PushI        0                         
        Jump         -compare-199-join         
        Label        -compare-199-join         
        JumpTrue     -print-boolean-202-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-202-join   
        Label        -print-boolean-202-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-202-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
