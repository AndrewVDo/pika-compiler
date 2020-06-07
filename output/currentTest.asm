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
        DataZ        8                         
        Label        $$main                    
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% intex
        PushI        5                         
        StoreI                                 
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% stringexample
        Label        STRING_BEGIN              
        Duplicate                              
        PushI        0                         
        Add                                    
        PushI        109                       
        StoreC                                 
        Duplicate                              
        PushI        1                         
        Add                                    
        PushI        97                        
        StoreC                                 
        Duplicate                              
        PushI        2                         
        Add                                    
        PushI        114                       
        StoreC                                 
        Duplicate                              
        PushI        3                         
        Add                                    
        PushI        121                       
        StoreC                                 
        Duplicate                              
        PushI        4                         
        Add                                    
        PushI        32                        
        StoreC                                 
        Duplicate                              
        PushI        5                         
        Add                                    
        PushI        104                       
        StoreC                                 
        Duplicate                              
        PushI        6                         
        Add                                    
        PushI        97                        
        StoreC                                 
        Duplicate                              
        PushI        7                         
        Add                                    
        PushI        100                       
        StoreC                                 
        Duplicate                              
        PushI        8                         
        Add                                    
        PushI        32                        
        StoreC                                 
        Duplicate                              
        PushI        9                         
        Add                                    
        PushI        97                        
        StoreC                                 
        Duplicate                              
        PushI        10                        
        Add                                    
        PushI        32                        
        StoreC                                 
        Duplicate                              
        PushI        11                        
        Add                                    
        PushI        108                       
        StoreC                                 
        Duplicate                              
        PushI        12                        
        Add                                    
        PushI        105                       
        StoreC                                 
        Duplicate                              
        PushI        13                        
        Add                                    
        PushI        116                       
        StoreC                                 
        Duplicate                              
        PushI        14                        
        Add                                    
        PushI        116                       
        StoreC                                 
        Duplicate                              
        PushI        15                        
        Add                                    
        PushI        108                       
        StoreC                                 
        Duplicate                              
        PushI        16                        
        Add                                    
        PushI        101                       
        StoreC                                 
        Duplicate                              
        PushI        17                        
        Add                                    
        PushI        32                        
        StoreC                                 
        Duplicate                              
        PushI        18                        
        Add                                    
        PushI        108                       
        StoreC                                 
        Duplicate                              
        PushI        19                        
        Add                                    
        PushI        97                        
        StoreC                                 
        Duplicate                              
        PushI        20                        
        Add                                    
        PushI        109                       
        StoreC                                 
        Duplicate                              
        PushI        21                        
        Add                                    
        PushI        98                        
        StoreC                                 
        Duplicate                              
        PushI        22                        
        Add                                    
        PushI        92                        
        StoreC                                 
        Duplicate                              
        PushI        23                        
        Add                                    
        PushI        110                       
        StoreC                                 
        Duplicate                              
        PushI        24                        
        Add                                    
        PushI        109                       
        StoreC                                 
        Duplicate                              
        PushI        25                        
        Add                                    
        PushI        97                        
        StoreC                                 
        Duplicate                              
        PushI        26                        
        Add                                    
        PushI        114                       
        StoreC                                 
        Duplicate                              
        PushI        27                        
        Add                                    
        PushI        121                       
        StoreC                                 
        Duplicate                              
        PushI        28                        
        Add                                    
        PushI        32                        
        StoreC                                 
        Duplicate                              
        PushI        29                        
        Add                                    
        PushI        104                       
        StoreC                                 
        Duplicate                              
        PushI        30                        
        Add                                    
        PushI        97                        
        StoreC                                 
        Duplicate                              
        PushI        31                        
        Add                                    
        PushI        100                       
        StoreC                                 
        Duplicate                              
        PushI        32                        
        Add                                    
        PushI        32                        
        StoreC                                 
        Duplicate                              
        PushI        33                        
        Add                                    
        PushI        97                        
        StoreC                                 
        Duplicate                              
        PushI        34                        
        Add                                    
        PushI        32                        
        StoreC                                 
        Duplicate                              
        PushI        35                        
        Add                                    
        PushI        108                       
        StoreC                                 
        Duplicate                              
        PushI        36                        
        Add                                    
        PushI        105                       
        StoreC                                 
        Duplicate                              
        PushI        37                        
        Add                                    
        PushI        116                       
        StoreC                                 
        Duplicate                              
        PushI        38                        
        Add                                    
        PushI        116                       
        StoreC                                 
        Duplicate                              
        PushI        39                        
        Add                                    
        PushI        108                       
        StoreC                                 
        Duplicate                              
        PushI        40                        
        Add                                    
        PushI        101                       
        StoreC                                 
        Duplicate                              
        PushI        41                        
        Add                                    
        PushI        32                        
        StoreC                                 
        Duplicate                              
        PushI        42                        
        Add                                    
        PushI        108                       
        StoreC                                 
        Duplicate                              
        PushI        43                        
        Add                                    
        PushI        97                        
        StoreC                                 
        Duplicate                              
        PushI        44                        
        Add                                    
        PushI        109                       
        StoreC                                 
        Duplicate                              
        PushI        45                        
        Add                                    
        PushI        98                        
        StoreC                                 
        Duplicate                              
        PushI        46                        
        Add                                    
        PushI        0                         
        StoreC                                 
        Label        STRING_END                
        Duplicate                              
        PushI        47                        
        Add                                    
        Exchange                               
        StoreI                                 
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% intex
        LoadI                                  
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% stringexample
        PushD        $print-format-string      
        Printf                                 
        Halt                                   
