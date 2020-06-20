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
        PushI        120                       
        PushI        127                       
        BTAnd                                  
        PushI        73                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        113                       
        PushI        127                       
        BTAnd                                  
        PushI        98                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        110                       
        PushI        127                       
        BTAnd                                  
        PushI        66                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        93                        
        PushI        127                       
        BTAnd                                  
        PushI        83                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        84                        
        PushI        127                       
        BTAnd                                  
        PushI        20                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        64                        
        PushI        127                       
        BTAnd                                  
        PushI        39                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        PushI        13                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        116                       
        PushI        127                       
        BTAnd                                  
        PushI        47                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        33                        
        PushI        127                       
        BTAnd                                  
        PushI        72                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        35                        
        PushI        127                       
        BTAnd                                  
        PushI        68                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        91                        
        PushI        127                       
        BTAnd                                  
        PushI        57                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        117                       
        PushI        127                       
        BTAnd                                  
        PushI        34                        
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        8                         
        PushI        98                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        25                        
        PushI        120                       
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        91                        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        50                        
        PushI        52                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        1                         
        PushI        92                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        71                        
        PushI        41                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        57                        
        PushI        104                       
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        25                        
        PushI        124                       
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        68                        
        PushI        79                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        46                        
        PushI        59                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        64                        
        PushI        107                       
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        21                        
        PushI        45                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        36                        
        PushI        127                       
        BTAnd                                  
        PushI        123                       
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        56                        
        PushI        127                       
        BTAnd                                  
        PushI        77                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        123                       
        PushI        127                       
        BTAnd                                  
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        99                        
        PushI        127                       
        BTAnd                                  
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        106                       
        PushI        127                       
        BTAnd                                  
        PushI        81                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        56                        
        PushI        127                       
        BTAnd                                  
        PushI        37                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        PushI        94                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        PushI        37                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        71                        
        PushI        127                       
        BTAnd                                  
        PushI        114                       
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        115                       
        PushI        127                       
        BTAnd                                  
        PushI        92                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        53                        
        PushI        127                       
        BTAnd                                  
        PushI        56                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        PushI        54                        
        PushI        127                       
        BTAnd                                  
        Multiply                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
