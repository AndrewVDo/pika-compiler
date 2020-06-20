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
        PushI        9                         
        PushI        75                        
        Add                                    
        PushI        32                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        80                        
        PushI        20                        
        Add                                    
        PushI        94                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        59                        
        PushI        96                        
        Add                                    
        PushI        29                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        76                        
        PushI        45                        
        Add                                    
        PushI        14                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        39                        
        PushI        78                        
        Add                                    
        PushI        42                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        21                        
        PushI        93                        
        Add                                    
        PushI        1                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        53                        
        PushI        14                        
        Add                                    
        PushI        6                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        9                         
        PushI        41                        
        Add                                    
        PushI        52                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        73                        
        PushI        15                        
        Add                                    
        PushI        65                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        3                         
        PushI        25                        
        Add                                    
        PushI        19                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        17                        
        PushI        49                        
        Add                                    
        PushI        82                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        52                        
        PushI        21                        
        Add                                    
        PushI        99                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        28                        
        PushI        40                        
        Subtract                               
        PushI        4                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        62                        
        PushI        5                         
        Subtract                               
        PushI        1                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        49                        
        PushI        76                        
        Subtract                               
        PushI        11                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        26                        
        PushI        93                        
        Subtract                               
        PushI        13                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        53                        
        PushI        9                         
        Subtract                               
        PushI        2                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        80                        
        PushI        29                        
        Subtract                               
        PushI        2                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        28                        
        PushI        27                        
        Subtract                               
        PushI        6                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        23                        
        PushI        10                        
        Subtract                               
        PushI        87                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        57                        
        PushI        14                        
        Subtract                               
        PushI        69                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        49                        
        PushI        70                        
        Subtract                               
        PushI        69                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        76                        
        PushI        47                        
        Subtract                               
        PushI        65                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        37                        
        PushI        89                        
        Subtract                               
        PushI        73                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        58                        
        PushI        9                         
        Add                                    
        PushI        88                        
        Subtract                               
        PushI        46                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        78                        
        PushI        97                        
        Add                                    
        PushI        23                        
        Subtract                               
        PushI        74                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        57                        
        PushI        62                        
        Add                                    
        PushI        22                        
        Subtract                               
        PushI        70                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        53                        
        PushI        48                        
        Add                                    
        PushI        63                        
        Subtract                               
        PushI        88                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        39                        
        PushI        89                        
        Add                                    
        PushI        81                        
        Subtract                               
        PushI        20                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        88                        
        PushI        88                        
        Add                                    
        PushI        54                        
        Subtract                               
        PushI        50                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        4                         
        PushI        34                        
        Add                                    
        PushI        56                        
        Subtract                               
        PushI        88                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        84                        
        PushI        69                        
        Add                                    
        PushI        24                        
        Subtract                               
        PushI        60                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        47                        
        PushI        80                        
        Add                                    
        PushI        5                         
        Subtract                               
        PushI        66                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        76                        
        PushI        2                         
        Add                                    
        PushI        23                        
        Subtract                               
        PushI        18                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        75                        
        PushI        84                        
        Add                                    
        PushI        91                        
        Subtract                               
        PushI        5                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        75                        
        PushI        48                        
        Add                                    
        PushI        40                        
        Subtract                               
        PushI        88                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        94                        
        PushI        1                         
        Subtract                               
        PushI        75                        
        Add                                    
        PushI        1                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        18                        
        PushI        79                        
        Subtract                               
        PushI        74                        
        Add                                    
        PushI        50                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        57                        
        PushI        61                        
        Subtract                               
        PushI        45                        
        Add                                    
        PushI        65                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        44                        
        PushI        53                        
        Subtract                               
        PushI        84                        
        Add                                    
        PushI        5                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        96                        
        PushI        23                        
        Subtract                               
        PushI        89                        
        Add                                    
        PushI        15                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        43                        
        PushI        64                        
        Subtract                               
        PushI        37                        
        Add                                    
        PushI        91                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        83                        
        PushI        39                        
        Subtract                               
        PushI        58                        
        Add                                    
        PushI        46                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        87                        
        PushI        82                        
        Subtract                               
        PushI        60                        
        Add                                    
        PushI        82                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        26                        
        PushI        43                        
        Subtract                               
        PushI        58                        
        Add                                    
        PushI        49                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        43                        
        PushI        20                        
        Subtract                               
        PushI        83                        
        Add                                    
        PushI        82                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        24                        
        PushI        38                        
        Subtract                               
        PushI        90                        
        Add                                    
        PushI        95                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        45                        
        PushI        70                        
        Subtract                               
        PushI        73                        
        Add                                    
        PushI        11                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
