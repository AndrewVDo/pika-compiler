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
        DataZ        43                        
        Label        $$main                    
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% someInt
        PushI        3                         
        PushI        5                         
        PushI        3                         
        Multiply                               
        Add                                    
        PushI        4                         
        Add                                    
        StoreI                                 
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% someFloat
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% someInt
        LoadI                                  
        ConvertF                               
        PushF        1.500000                  
        FAdd                                   
        StoreF                                 
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% someInt
        LoadI                                  
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% someFloat
        LoadF                                  
        PushD        $print-format-floating    
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% someFloat2
        PushF        5.100000                  
        StoreF                                 
        PushD        $global-memory-block      
        PushI        20                        
        Add                                    %% someInt2
        PushI        4                         
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% someFloat2
        LoadF                                  
        ConvertI                               
        Add                                    
        StoreI                                 
        PushD        $global-memory-block      
        PushI        12                        
        Add                                    %% someFloat2
        LoadF                                  
        PushD        $print-format-floating    
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        20                        
        Add                                    %% someInt2
        LoadI                                  
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushD        $global-memory-block      
        PushI        24                        
        Add                                    %% someChar
        PushI        97                        
        StoreC                                 
        PushD        $global-memory-block      
        PushI        25                        
        Add                                    %% someInt3
        PushD        $global-memory-block      
        PushI        24                        
        Add                                    %% someChar
        LoadC                                  
        PushI        127                       
        BTAnd                                  
        StoreI                                 
        PushD        $global-memory-block      
        PushI        24                        
        Add                                    %% someChar
        LoadC                                  
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        25                        
        Add                                    %% someInt3
        LoadI                                  
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushD        $global-memory-block      
        PushI        29                        
        Add                                    %% someInt4
        PushI        98                        
        StoreI                                 
        PushD        $global-memory-block      
        PushI        33                        
        Add                                    %% someChar2
        PushD        $global-memory-block      
        PushI        29                        
        Add                                    %% someInt4
        LoadI                                  
        PushI        127                       
        BTAnd                                  
        StoreC                                 
        PushD        $global-memory-block      
        PushI        29                        
        Add                                    %% someInt4
        LoadI                                  
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        33                        
        Add                                    %% someChar2
        LoadC                                  
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        120                       
        PushI        127                       
        BTAnd                                  
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushD        $global-memory-block      
        PushI        34                        
        Add                                    %% someInt5
        PushI        1                         
        StoreI                                 
        PushD        $global-memory-block      
        PushI        38                        
        Add                                    %% someChar3
        PushI        97                        
        StoreC                                 
        PushD        $global-memory-block      
        PushI        39                        
        Add                                    %% someInt6
        PushI        0                         
        StoreI                                 
        PushD        $global-memory-block      
        PushI        34                        
        Add                                    %% someInt5
        LoadI                                  
        PushI        1                         
        And                                    
        JumpTrue     -print-boolean-1-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-1-join     
        Label        -print-boolean-1-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-1-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        38                        
        Add                                    %% someChar3
        LoadC                                  
        PushI        1                         
        And                                    
        JumpTrue     -print-boolean-2-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-2-join     
        Label        -print-boolean-2-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-2-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        39                        
        Add                                    %% someInt6
        LoadI                                  
        PushI        1                         
        And                                    
        JumpTrue     -print-boolean-3-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-3-join     
        Label        -print-boolean-3-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-3-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushF        5.000000                  
        Nop                                    
        PushD        $print-format-floating    
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushI        100                       
        Nop                                    
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushI        1                         
        Nop                                    
        JumpTrue     -print-boolean-4-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-4-join     
        Label        -print-boolean-4-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-4-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushI        0                         
        Nop                                    
        JumpTrue     -print-boolean-5-true     
        PushD        $boolean-false-string     
        Jump         -print-boolean-5-join     
        Label        -print-boolean-5-true     
        PushD        $boolean-true-string      
        Label        -print-boolean-5-join     
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushI        3                         
        Nop                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        1                         
        PushI        1                         
        Add                                    
        PushF        2.100000                  
        ConvertI                               
        Multiply                               
        PushI        1                         
        PushI        2                         
        PushF        2.100000                  
        PushF        2.800000                  
        FAdd                                   
        ConvertI                               
        Multiply                               
        Add                                    
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
