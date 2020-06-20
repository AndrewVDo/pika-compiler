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
        PushI        98                        
        PushI        18                        
        PushI        45                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        67                        
        PushI        17                        
        PushI        94                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        48                        
        PushI        61                        
        PushI        34                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        26                        
        PushI        30                        
        PushI        89                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        5                         
        PushI        12                        
        PushI        35                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        54                        
        PushI        52                        
        PushI        77                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        26                        
        PushI        56                        
        PushI        64                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        66                        
        PushI        81                        
        PushI        34                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        4                         
        PushI        35                        
        PushI        87                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        19                        
        PushI        29                        
        PushI        36                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        6                         
        PushI        77                        
        PushI        26                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        8                         
        PushI        80                        
        PushI        51                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        5                         
        PushI        21                        
        Multiply                               
        PushI        18                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        75                        
        PushI        25                        
        Multiply                               
        PushI        99                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        80                        
        PushI        91                        
        Multiply                               
        PushI        31                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        70                        
        PushI        57                        
        Multiply                               
        PushI        88                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        27                        
        PushI        20                        
        Multiply                               
        PushI        35                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        24                        
        PushI        5                         
        Multiply                               
        PushI        37                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        92                        
        PushI        87                        
        Multiply                               
        PushI        18                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        77                        
        PushI        56                        
        Multiply                               
        PushI        46                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        53                        
        PushI        88                        
        Multiply                               
        PushI        76                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        29                        
        PushI        46                        
        Multiply                               
        PushI        76                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        84                        
        PushI        6                         
        Multiply                               
        PushI        28                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        30                        
        PushI        46                        
        Multiply                               
        PushI        58                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        28                        
        PushI        4                         
        PushI        94                        
        Multiply                               
        Subtract                               
        PushI        87                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        55                        
        PushI        61                        
        PushI        57                        
        Multiply                               
        Subtract                               
        PushI        99                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        40                        
        PushI        26                        
        PushI        25                        
        Multiply                               
        Subtract                               
        PushI        17                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        25                        
        PushI        98                        
        PushI        83                        
        Multiply                               
        Subtract                               
        PushI        69                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        29                        
        PushI        96                        
        PushI        61                        
        Multiply                               
        Subtract                               
        PushI        43                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        16                        
        PushI        43                        
        PushI        60                        
        Multiply                               
        Subtract                               
        PushI        1                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        83                        
        PushI        22                        
        PushI        62                        
        Multiply                               
        Subtract                               
        PushI        91                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        45                        
        PushI        70                        
        PushI        92                        
        Multiply                               
        Subtract                               
        PushI        36                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        16                        
        PushI        7                         
        PushI        81                        
        Multiply                               
        Subtract                               
        PushI        29                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        5                         
        PushI        24                        
        PushI        66                        
        Multiply                               
        Subtract                               
        PushI        92                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        85                        
        PushI        9                         
        PushI        40                        
        Multiply                               
        Subtract                               
        PushI        7                         
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        24                        
        PushI        43                        
        PushI        99                        
        Multiply                               
        Subtract                               
        PushI        98                        
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        63                        
        PushI        47                        
        Multiply                               
        PushI        39                        
        PushI        3                         
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        13                        
        PushI        79                        
        Multiply                               
        PushI        96                        
        PushI        92                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        43                        
        PushI        91                        
        Multiply                               
        PushI        73                        
        PushI        32                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        2                         
        PushI        70                        
        Multiply                               
        PushI        58                        
        PushI        77                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        7                         
        PushI        50                        
        Multiply                               
        PushI        95                        
        PushI        95                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        25                        
        PushI        60                        
        Multiply                               
        PushI        65                        
        PushI        77                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        57                        
        PushI        3                         
        Multiply                               
        PushI        70                        
        PushI        99                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        7                         
        PushI        90                        
        Multiply                               
        PushI        33                        
        PushI        54                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        41                        
        PushI        68                        
        Multiply                               
        PushI        40                        
        PushI        13                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        93                        
        PushI        77                        
        Multiply                               
        PushI        8                         
        PushI        5                         
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        87                        
        PushI        40                        
        Multiply                               
        PushI        5                         
        PushI        11                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        18                        
        PushI        99                        
        Multiply                               
        PushI        16                        
        PushI        41                        
        Multiply                               
        Subtract                               
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
