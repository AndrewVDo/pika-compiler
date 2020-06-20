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
        PushI        108                       
        PushI        127                       
        BTAnd                                  
        PushI        87                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        102                       
        PushI        127                       
        BTAnd                                  
        PushI        42                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        43                        
        PushI        127                       
        BTAnd                                  
        PushI        55                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        39                        
        PushI        127                       
        BTAnd                                  
        PushI        4                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        49                        
        PushI        127                       
        BTAnd                                  
        PushI        49                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        104                       
        PushI        127                       
        BTAnd                                  
        PushI        19                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        60                        
        PushI        127                       
        BTAnd                                  
        PushI        28                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        94                        
        PushI        127                       
        BTAnd                                  
        PushI        17                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        71                        
        PushI        127                       
        BTAnd                                  
        PushI        60                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        53                        
        PushI        127                       
        BTAnd                                  
        PushI        25                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        PushI        90                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        125                       
        PushI        127                       
        BTAnd                                  
        PushI        89                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        54                        
        PushI        109                       
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        82                        
        PushI        111                       
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        6                         
        PushI        101                       
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        53                        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        39                        
        PushI        100                       
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        8                         
        PushI        120                       
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        87                        
        PushI        52                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        12                        
        PushI        117                       
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        75                        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        33                        
        PushI        68                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        97                        
        PushI        75                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        88                        
        PushI        105                       
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        89                        
        PushI        127                       
        BTAnd                                  
        PushI        40                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        34                        
        PushI        127                       
        BTAnd                                  
        PushI        77                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        98                        
        PushI        127                       
        BTAnd                                  
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        64                        
        PushI        127                       
        BTAnd                                  
        PushI        96                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        95                        
        PushI        127                       
        BTAnd                                  
        PushI        96                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        49                        
        PushI        127                       
        BTAnd                                  
        PushI        97                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        65                        
        PushI        127                       
        BTAnd                                  
        PushI        103                       
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        107                       
        PushI        127                       
        BTAnd                                  
        PushI        43                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        103                       
        PushI        127                       
        BTAnd                                  
        PushI        41                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        105                       
        PushI        127                       
        BTAnd                                  
        PushI        46                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        PushI        110                       
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
