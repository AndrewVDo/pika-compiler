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
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        PushI        94                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        34                        
        PushI        127                       
        BTAnd                                  
        PushI        17                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        79                        
        PushI        127                       
        BTAnd                                  
        PushI        14                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        83                        
        PushI        127                       
        BTAnd                                  
        PushI        11                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        76                        
        PushI        127                       
        BTAnd                                  
        PushI        21                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        PushI        77                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        73                        
        PushI        127                       
        BTAnd                                  
        PushI        2                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        116                       
        PushI        127                       
        BTAnd                                  
        PushI        92                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        49                        
        PushI        127                       
        BTAnd                                  
        PushI        61                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        49                        
        PushI        127                       
        BTAnd                                  
        PushI        98                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        103                       
        PushI        127                       
        BTAnd                                  
        PushI        38                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        PushI        78                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        11                        
        PushI        53                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        68                        
        PushI        103                       
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        51                        
        PushI        56                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        61                        
        PushI        102                       
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        6                         
        PushI        79                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        27                        
        PushI        125                       
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        41                        
        PushI        107                       
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        66                        
        PushI        81                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        69                        
        PushI        97                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        40                        
        PushI        41                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        40                        
        PushI        88                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        43                        
        PushI        121                       
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        66                        
        PushI        127                       
        BTAnd                                  
        PushI        49                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        62                        
        PushI        127                       
        BTAnd                                  
        PushI        88                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        51                        
        PushI        127                       
        BTAnd                                  
        PushI        106                       
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        86                        
        PushI        127                       
        BTAnd                                  
        PushI        77                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        47                        
        PushI        127                       
        BTAnd                                  
        PushI        55                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        PushI        56                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        78                        
        PushI        127                       
        BTAnd                                  
        PushI        119                       
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        89                        
        PushI        127                       
        BTAnd                                  
        PushI        90                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        78                        
        PushI        127                       
        BTAnd                                  
        PushI        59                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        99                        
        PushI        127                       
        BTAnd                                  
        PushI        40                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        123                       
        PushI        127                       
        BTAnd                                  
        PushI        64                        
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        119                       
        PushI        127                       
        BTAnd                                  
        PushI        106                       
        PushI        127                       
        BTAnd                                  
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
