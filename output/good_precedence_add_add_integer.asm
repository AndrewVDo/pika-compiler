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
        PushI        82                        
        PushI        23                        
        Add                                    
        PushI        48                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        23                        
        PushI        57                        
        Add                                    
        PushI        49                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        66                        
        PushI        90                        
        Add                                    
        PushI        52                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        59                        
        PushI        1                         
        Add                                    
        PushI        58                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        63                        
        PushI        23                        
        Add                                    
        PushI        35                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        26                        
        PushI        34                        
        Add                                    
        PushI        18                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        73                        
        PushI        6                         
        Add                                    
        PushI        53                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        58                        
        PushI        14                        
        Add                                    
        PushI        34                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        46                        
        PushI        79                        
        Add                                    
        PushI        15                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        25                        
        PushI        27                        
        Add                                    
        PushI        62                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        59                        
        PushI        96                        
        Add                                    
        PushI        41                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        46                        
        PushI        45                        
        Add                                    
        PushI        50                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        10                        
        PushI        85                        
        Add                                    
        PushI        3                         
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        55                        
        PushI        17                        
        Add                                    
        PushI        14                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        72                        
        PushI        76                        
        Add                                    
        PushI        27                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        18                        
        PushI        52                        
        Add                                    
        PushI        51                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        77                        
        PushI        45                        
        Add                                    
        PushI        92                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        51                        
        PushI        21                        
        Add                                    
        PushI        71                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        5                         
        PushI        76                        
        Add                                    
        PushI        72                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        69                        
        PushI        67                        
        Add                                    
        PushI        58                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        29                        
        PushI        15                        
        Add                                    
        PushI        29                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        15                        
        PushI        13                        
        Add                                    
        PushI        13                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        31                        
        PushI        35                        
        Add                                    
        PushI        73                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        93                        
        PushI        3                         
        Add                                    
        PushI        84                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        45                        
        PushI        55                        
        Add                                    
        PushI        29                        
        Add                                    
        PushI        64                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        93                        
        PushI        97                        
        Add                                    
        PushI        39                        
        Add                                    
        PushI        40                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        67                        
        PushI        49                        
        Add                                    
        PushI        48                        
        Add                                    
        PushI        43                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        20                        
        PushI        9                         
        Add                                    
        PushI        41                        
        Add                                    
        PushI        55                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        99                        
        PushI        75                        
        Add                                    
        PushI        3                         
        Add                                    
        PushI        30                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        96                        
        PushI        56                        
        Add                                    
        PushI        48                        
        Add                                    
        PushI        11                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        30                        
        PushI        66                        
        Add                                    
        PushI        69                        
        Add                                    
        PushI        28                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        56                        
        PushI        49                        
        Add                                    
        PushI        99                        
        Add                                    
        PushI        20                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        48                        
        PushI        45                        
        Add                                    
        PushI        96                        
        Add                                    
        PushI        30                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        76                        
        PushI        67                        
        Add                                    
        PushI        70                        
        Add                                    
        PushI        53                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        38                        
        PushI        22                        
        Add                                    
        PushI        44                        
        Add                                    
        PushI        53                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        7                         
        PushI        58                        
        Add                                    
        PushI        69                        
        Add                                    
        PushI        12                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        63                        
        PushI        26                        
        Add                                    
        PushI        75                        
        Add                                    
        PushI        37                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        66                        
        PushI        4                         
        Add                                    
        PushI        96                        
        Add                                    
        PushI        74                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        12                        
        PushI        63                        
        Add                                    
        PushI        67                        
        Add                                    
        PushI        23                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        41                        
        PushI        80                        
        Add                                    
        PushI        52                        
        Add                                    
        PushI        94                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        42                        
        PushI        48                        
        Add                                    
        PushI        35                        
        Add                                    
        PushI        53                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        1                         
        PushI        58                        
        Add                                    
        PushI        29                        
        Add                                    
        PushI        87                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        48                        
        PushI        66                        
        Add                                    
        PushI        79                        
        Add                                    
        PushI        44                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        99                        
        PushI        64                        
        Add                                    
        PushI        13                        
        Add                                    
        PushI        27                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        19                        
        PushI        4                         
        Add                                    
        PushI        6                         
        Add                                    
        PushI        69                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        14                        
        PushI        96                        
        Add                                    
        PushI        21                        
        Add                                    
        PushI        97                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        61                        
        PushI        5                         
        Add                                    
        PushI        46                        
        Add                                    
        PushI        24                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        81                        
        PushI        32                        
        Add                                    
        PushI        36                        
        Add                                    
        PushI        54                        
        Add                                    
        PushD        $print-format-integer     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
