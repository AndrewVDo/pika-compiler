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
        Label        -compare-870-arg1         
        PushI        11                        
        PushI        15                        
        Add                                    
        Label        -compare-870-arg2         
        PushI        96                        
        Label        -compare-870-sub          
        Subtract                               
        JumpPos      -compare-870-false        
        Jump         -compare-870-true         
        Label        -compare-870-true         
        PushI        1                         
        Jump         -compare-870-join         
        Label        -compare-870-false        
        PushI        0                         
        Jump         -compare-870-join         
        Label        -compare-870-join         
        JumpTrue     -print-boolean-871-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-871-join   
        Label        -print-boolean-871-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-871-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-872-arg1         
        PushI        63                        
        PushI        32                        
        Add                                    
        Label        -compare-872-arg2         
        PushI        91                        
        Label        -compare-872-sub          
        Subtract                               
        JumpPos      -compare-872-false        
        Jump         -compare-872-true         
        Label        -compare-872-true         
        PushI        1                         
        Jump         -compare-872-join         
        Label        -compare-872-false        
        PushI        0                         
        Jump         -compare-872-join         
        Label        -compare-872-join         
        JumpTrue     -print-boolean-873-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-873-join   
        Label        -print-boolean-873-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-873-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-874-arg1         
        PushI        67                        
        PushI        45                        
        Add                                    
        Label        -compare-874-arg2         
        PushI        76                        
        Label        -compare-874-sub          
        Subtract                               
        JumpPos      -compare-874-false        
        Jump         -compare-874-true         
        Label        -compare-874-true         
        PushI        1                         
        Jump         -compare-874-join         
        Label        -compare-874-false        
        PushI        0                         
        Jump         -compare-874-join         
        Label        -compare-874-join         
        JumpTrue     -print-boolean-875-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-875-join   
        Label        -print-boolean-875-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-875-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-876-arg1         
        PushI        88                        
        PushI        49                        
        Add                                    
        Label        -compare-876-arg2         
        PushI        28                        
        Label        -compare-876-sub          
        Subtract                               
        JumpPos      -compare-876-false        
        Jump         -compare-876-true         
        Label        -compare-876-true         
        PushI        1                         
        Jump         -compare-876-join         
        Label        -compare-876-false        
        PushI        0                         
        Jump         -compare-876-join         
        Label        -compare-876-join         
        JumpTrue     -print-boolean-877-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-877-join   
        Label        -print-boolean-877-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-877-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-878-arg1         
        PushI        76                        
        PushI        28                        
        Add                                    
        Label        -compare-878-arg2         
        PushI        27                        
        Label        -compare-878-sub          
        Subtract                               
        JumpPos      -compare-878-false        
        Jump         -compare-878-true         
        Label        -compare-878-true         
        PushI        1                         
        Jump         -compare-878-join         
        Label        -compare-878-false        
        PushI        0                         
        Jump         -compare-878-join         
        Label        -compare-878-join         
        JumpTrue     -print-boolean-879-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-879-join   
        Label        -print-boolean-879-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-879-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-880-arg1         
        PushI        88                        
        PushI        29                        
        Add                                    
        Label        -compare-880-arg2         
        PushI        2                         
        Label        -compare-880-sub          
        Subtract                               
        JumpPos      -compare-880-false        
        Jump         -compare-880-true         
        Label        -compare-880-true         
        PushI        1                         
        Jump         -compare-880-join         
        Label        -compare-880-false        
        PushI        0                         
        Jump         -compare-880-join         
        Label        -compare-880-join         
        JumpTrue     -print-boolean-881-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-881-join   
        Label        -print-boolean-881-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-881-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-882-arg1         
        PushI        58                        
        PushI        49                        
        Add                                    
        Label        -compare-882-arg2         
        PushI        76                        
        Label        -compare-882-sub          
        Subtract                               
        JumpPos      -compare-882-false        
        Jump         -compare-882-true         
        Label        -compare-882-true         
        PushI        1                         
        Jump         -compare-882-join         
        Label        -compare-882-false        
        PushI        0                         
        Jump         -compare-882-join         
        Label        -compare-882-join         
        JumpTrue     -print-boolean-883-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-883-join   
        Label        -print-boolean-883-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-883-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-884-arg1         
        PushI        11                        
        PushI        99                        
        Add                                    
        Label        -compare-884-arg2         
        PushI        37                        
        Label        -compare-884-sub          
        Subtract                               
        JumpPos      -compare-884-false        
        Jump         -compare-884-true         
        Label        -compare-884-true         
        PushI        1                         
        Jump         -compare-884-join         
        Label        -compare-884-false        
        PushI        0                         
        Jump         -compare-884-join         
        Label        -compare-884-join         
        JumpTrue     -print-boolean-885-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-885-join   
        Label        -print-boolean-885-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-885-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-886-arg1         
        PushI        98                        
        PushI        53                        
        Add                                    
        Label        -compare-886-arg2         
        PushI        69                        
        Label        -compare-886-sub          
        Subtract                               
        JumpPos      -compare-886-false        
        Jump         -compare-886-true         
        Label        -compare-886-true         
        PushI        1                         
        Jump         -compare-886-join         
        Label        -compare-886-false        
        PushI        0                         
        Jump         -compare-886-join         
        Label        -compare-886-join         
        JumpTrue     -print-boolean-887-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-887-join   
        Label        -print-boolean-887-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-887-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-888-arg1         
        PushI        39                        
        PushI        9                         
        Add                                    
        Label        -compare-888-arg2         
        PushI        2                         
        Label        -compare-888-sub          
        Subtract                               
        JumpPos      -compare-888-false        
        Jump         -compare-888-true         
        Label        -compare-888-true         
        PushI        1                         
        Jump         -compare-888-join         
        Label        -compare-888-false        
        PushI        0                         
        Jump         -compare-888-join         
        Label        -compare-888-join         
        JumpTrue     -print-boolean-889-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-889-join   
        Label        -print-boolean-889-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-889-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-890-arg1         
        PushI        21                        
        PushI        65                        
        Add                                    
        Label        -compare-890-arg2         
        PushI        23                        
        Label        -compare-890-sub          
        Subtract                               
        JumpPos      -compare-890-false        
        Jump         -compare-890-true         
        Label        -compare-890-true         
        PushI        1                         
        Jump         -compare-890-join         
        Label        -compare-890-false        
        PushI        0                         
        Jump         -compare-890-join         
        Label        -compare-890-join         
        JumpTrue     -print-boolean-891-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-891-join   
        Label        -print-boolean-891-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-891-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-892-arg1         
        PushI        23                        
        PushI        68                        
        Add                                    
        Label        -compare-892-arg2         
        PushI        58                        
        Label        -compare-892-sub          
        Subtract                               
        JumpPos      -compare-892-false        
        Jump         -compare-892-true         
        Label        -compare-892-true         
        PushI        1                         
        Jump         -compare-892-join         
        Label        -compare-892-false        
        PushI        0                         
        Jump         -compare-892-join         
        Label        -compare-892-join         
        JumpTrue     -print-boolean-893-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-893-join   
        Label        -print-boolean-893-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-893-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-894-arg1         
        PushI        65                        
        Label        -compare-894-arg2         
        PushI        36                        
        PushI        77                        
        Add                                    
        Label        -compare-894-sub          
        Subtract                               
        JumpPos      -compare-894-false        
        Jump         -compare-894-true         
        Label        -compare-894-true         
        PushI        1                         
        Jump         -compare-894-join         
        Label        -compare-894-false        
        PushI        0                         
        Jump         -compare-894-join         
        Label        -compare-894-join         
        JumpTrue     -print-boolean-895-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-895-join   
        Label        -print-boolean-895-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-895-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-896-arg1         
        PushI        51                        
        Label        -compare-896-arg2         
        PushI        75                        
        PushI        71                        
        Add                                    
        Label        -compare-896-sub          
        Subtract                               
        JumpPos      -compare-896-false        
        Jump         -compare-896-true         
        Label        -compare-896-true         
        PushI        1                         
        Jump         -compare-896-join         
        Label        -compare-896-false        
        PushI        0                         
        Jump         -compare-896-join         
        Label        -compare-896-join         
        JumpTrue     -print-boolean-897-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-897-join   
        Label        -print-boolean-897-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-897-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-898-arg1         
        PushI        27                        
        Label        -compare-898-arg2         
        PushI        63                        
        PushI        22                        
        Add                                    
        Label        -compare-898-sub          
        Subtract                               
        JumpPos      -compare-898-false        
        Jump         -compare-898-true         
        Label        -compare-898-true         
        PushI        1                         
        Jump         -compare-898-join         
        Label        -compare-898-false        
        PushI        0                         
        Jump         -compare-898-join         
        Label        -compare-898-join         
        JumpTrue     -print-boolean-899-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-899-join   
        Label        -print-boolean-899-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-899-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-900-arg1         
        PushI        75                        
        Label        -compare-900-arg2         
        PushI        67                        
        PushI        53                        
        Add                                    
        Label        -compare-900-sub          
        Subtract                               
        JumpPos      -compare-900-false        
        Jump         -compare-900-true         
        Label        -compare-900-true         
        PushI        1                         
        Jump         -compare-900-join         
        Label        -compare-900-false        
        PushI        0                         
        Jump         -compare-900-join         
        Label        -compare-900-join         
        JumpTrue     -print-boolean-901-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-901-join   
        Label        -print-boolean-901-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-901-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-902-arg1         
        PushI        5                         
        Label        -compare-902-arg2         
        PushI        57                        
        PushI        23                        
        Add                                    
        Label        -compare-902-sub          
        Subtract                               
        JumpPos      -compare-902-false        
        Jump         -compare-902-true         
        Label        -compare-902-true         
        PushI        1                         
        Jump         -compare-902-join         
        Label        -compare-902-false        
        PushI        0                         
        Jump         -compare-902-join         
        Label        -compare-902-join         
        JumpTrue     -print-boolean-903-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-903-join   
        Label        -print-boolean-903-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-903-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-904-arg1         
        PushI        16                        
        Label        -compare-904-arg2         
        PushI        40                        
        PushI        57                        
        Add                                    
        Label        -compare-904-sub          
        Subtract                               
        JumpPos      -compare-904-false        
        Jump         -compare-904-true         
        Label        -compare-904-true         
        PushI        1                         
        Jump         -compare-904-join         
        Label        -compare-904-false        
        PushI        0                         
        Jump         -compare-904-join         
        Label        -compare-904-join         
        JumpTrue     -print-boolean-905-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-905-join   
        Label        -print-boolean-905-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-905-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-906-arg1         
        PushI        12                        
        Label        -compare-906-arg2         
        PushI        77                        
        PushI        92                        
        Add                                    
        Label        -compare-906-sub          
        Subtract                               
        JumpPos      -compare-906-false        
        Jump         -compare-906-true         
        Label        -compare-906-true         
        PushI        1                         
        Jump         -compare-906-join         
        Label        -compare-906-false        
        PushI        0                         
        Jump         -compare-906-join         
        Label        -compare-906-join         
        JumpTrue     -print-boolean-907-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-907-join   
        Label        -print-boolean-907-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-907-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-908-arg1         
        PushI        29                        
        Label        -compare-908-arg2         
        PushI        74                        
        PushI        87                        
        Add                                    
        Label        -compare-908-sub          
        Subtract                               
        JumpPos      -compare-908-false        
        Jump         -compare-908-true         
        Label        -compare-908-true         
        PushI        1                         
        Jump         -compare-908-join         
        Label        -compare-908-false        
        PushI        0                         
        Jump         -compare-908-join         
        Label        -compare-908-join         
        JumpTrue     -print-boolean-909-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-909-join   
        Label        -print-boolean-909-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-909-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-910-arg1         
        PushI        54                        
        Label        -compare-910-arg2         
        PushI        32                        
        PushI        95                        
        Add                                    
        Label        -compare-910-sub          
        Subtract                               
        JumpPos      -compare-910-false        
        Jump         -compare-910-true         
        Label        -compare-910-true         
        PushI        1                         
        Jump         -compare-910-join         
        Label        -compare-910-false        
        PushI        0                         
        Jump         -compare-910-join         
        Label        -compare-910-join         
        JumpTrue     -print-boolean-911-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-911-join   
        Label        -print-boolean-911-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-911-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-912-arg1         
        PushI        22                        
        Label        -compare-912-arg2         
        PushI        49                        
        PushI        17                        
        Add                                    
        Label        -compare-912-sub          
        Subtract                               
        JumpPos      -compare-912-false        
        Jump         -compare-912-true         
        Label        -compare-912-true         
        PushI        1                         
        Jump         -compare-912-join         
        Label        -compare-912-false        
        PushI        0                         
        Jump         -compare-912-join         
        Label        -compare-912-join         
        JumpTrue     -print-boolean-913-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-913-join   
        Label        -print-boolean-913-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-913-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-914-arg1         
        PushI        28                        
        Label        -compare-914-arg2         
        PushI        82                        
        PushI        93                        
        Add                                    
        Label        -compare-914-sub          
        Subtract                               
        JumpPos      -compare-914-false        
        Jump         -compare-914-true         
        Label        -compare-914-true         
        PushI        1                         
        Jump         -compare-914-join         
        Label        -compare-914-false        
        PushI        0                         
        Jump         -compare-914-join         
        Label        -compare-914-join         
        JumpTrue     -print-boolean-915-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-915-join   
        Label        -print-boolean-915-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-915-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-916-arg1         
        PushI        77                        
        Label        -compare-916-arg2         
        PushI        43                        
        PushI        86                        
        Add                                    
        Label        -compare-916-sub          
        Subtract                               
        JumpPos      -compare-916-false        
        Jump         -compare-916-true         
        Label        -compare-916-true         
        PushI        1                         
        Jump         -compare-916-join         
        Label        -compare-916-false        
        PushI        0                         
        Jump         -compare-916-join         
        Label        -compare-916-join         
        JumpTrue     -print-boolean-917-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-917-join   
        Label        -print-boolean-917-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-917-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-918-arg1         
        PushI        2                         
        PushI        19                        
        Add                                    
        Label        -compare-918-arg2         
        PushI        6                         
        PushI        95                        
        Add                                    
        Label        -compare-918-sub          
        Subtract                               
        JumpPos      -compare-918-false        
        Jump         -compare-918-true         
        Label        -compare-918-true         
        PushI        1                         
        Jump         -compare-918-join         
        Label        -compare-918-false        
        PushI        0                         
        Jump         -compare-918-join         
        Label        -compare-918-join         
        JumpTrue     -print-boolean-919-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-919-join   
        Label        -print-boolean-919-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-919-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-920-arg1         
        PushI        81                        
        PushI        88                        
        Add                                    
        Label        -compare-920-arg2         
        PushI        79                        
        PushI        92                        
        Add                                    
        Label        -compare-920-sub          
        Subtract                               
        JumpPos      -compare-920-false        
        Jump         -compare-920-true         
        Label        -compare-920-true         
        PushI        1                         
        Jump         -compare-920-join         
        Label        -compare-920-false        
        PushI        0                         
        Jump         -compare-920-join         
        Label        -compare-920-join         
        JumpTrue     -print-boolean-921-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-921-join   
        Label        -print-boolean-921-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-921-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-922-arg1         
        PushI        80                        
        PushI        91                        
        Add                                    
        Label        -compare-922-arg2         
        PushI        8                         
        PushI        29                        
        Add                                    
        Label        -compare-922-sub          
        Subtract                               
        JumpPos      -compare-922-false        
        Jump         -compare-922-true         
        Label        -compare-922-true         
        PushI        1                         
        Jump         -compare-922-join         
        Label        -compare-922-false        
        PushI        0                         
        Jump         -compare-922-join         
        Label        -compare-922-join         
        JumpTrue     -print-boolean-923-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-923-join   
        Label        -print-boolean-923-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-923-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-924-arg1         
        PushI        99                        
        PushI        11                        
        Add                                    
        Label        -compare-924-arg2         
        PushI        28                        
        PushI        43                        
        Add                                    
        Label        -compare-924-sub          
        Subtract                               
        JumpPos      -compare-924-false        
        Jump         -compare-924-true         
        Label        -compare-924-true         
        PushI        1                         
        Jump         -compare-924-join         
        Label        -compare-924-false        
        PushI        0                         
        Jump         -compare-924-join         
        Label        -compare-924-join         
        JumpTrue     -print-boolean-925-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-925-join   
        Label        -print-boolean-925-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-925-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-926-arg1         
        PushI        19                        
        PushI        4                         
        Add                                    
        Label        -compare-926-arg2         
        PushI        43                        
        PushI        24                        
        Add                                    
        Label        -compare-926-sub          
        Subtract                               
        JumpPos      -compare-926-false        
        Jump         -compare-926-true         
        Label        -compare-926-true         
        PushI        1                         
        Jump         -compare-926-join         
        Label        -compare-926-false        
        PushI        0                         
        Jump         -compare-926-join         
        Label        -compare-926-join         
        JumpTrue     -print-boolean-927-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-927-join   
        Label        -print-boolean-927-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-927-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-928-arg1         
        PushI        88                        
        PushI        80                        
        Add                                    
        Label        -compare-928-arg2         
        PushI        87                        
        PushI        5                         
        Add                                    
        Label        -compare-928-sub          
        Subtract                               
        JumpPos      -compare-928-false        
        Jump         -compare-928-true         
        Label        -compare-928-true         
        PushI        1                         
        Jump         -compare-928-join         
        Label        -compare-928-false        
        PushI        0                         
        Jump         -compare-928-join         
        Label        -compare-928-join         
        JumpTrue     -print-boolean-929-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-929-join   
        Label        -print-boolean-929-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-929-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-930-arg1         
        PushI        68                        
        PushI        40                        
        Add                                    
        Label        -compare-930-arg2         
        PushI        73                        
        PushI        32                        
        Add                                    
        Label        -compare-930-sub          
        Subtract                               
        JumpPos      -compare-930-false        
        Jump         -compare-930-true         
        Label        -compare-930-true         
        PushI        1                         
        Jump         -compare-930-join         
        Label        -compare-930-false        
        PushI        0                         
        Jump         -compare-930-join         
        Label        -compare-930-join         
        JumpTrue     -print-boolean-931-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-931-join   
        Label        -print-boolean-931-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-931-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-932-arg1         
        PushI        34                        
        PushI        22                        
        Add                                    
        Label        -compare-932-arg2         
        PushI        95                        
        PushI        99                        
        Add                                    
        Label        -compare-932-sub          
        Subtract                               
        JumpPos      -compare-932-false        
        Jump         -compare-932-true         
        Label        -compare-932-true         
        PushI        1                         
        Jump         -compare-932-join         
        Label        -compare-932-false        
        PushI        0                         
        Jump         -compare-932-join         
        Label        -compare-932-join         
        JumpTrue     -print-boolean-933-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-933-join   
        Label        -print-boolean-933-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-933-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-934-arg1         
        PushI        81                        
        PushI        48                        
        Add                                    
        Label        -compare-934-arg2         
        PushI        28                        
        PushI        53                        
        Add                                    
        Label        -compare-934-sub          
        Subtract                               
        JumpPos      -compare-934-false        
        Jump         -compare-934-true         
        Label        -compare-934-true         
        PushI        1                         
        Jump         -compare-934-join         
        Label        -compare-934-false        
        PushI        0                         
        Jump         -compare-934-join         
        Label        -compare-934-join         
        JumpTrue     -print-boolean-935-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-935-join   
        Label        -print-boolean-935-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-935-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-936-arg1         
        PushI        57                        
        PushI        52                        
        Add                                    
        Label        -compare-936-arg2         
        PushI        8                         
        PushI        77                        
        Add                                    
        Label        -compare-936-sub          
        Subtract                               
        JumpPos      -compare-936-false        
        Jump         -compare-936-true         
        Label        -compare-936-true         
        PushI        1                         
        Jump         -compare-936-join         
        Label        -compare-936-false        
        PushI        0                         
        Jump         -compare-936-join         
        Label        -compare-936-join         
        JumpTrue     -print-boolean-937-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-937-join   
        Label        -print-boolean-937-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-937-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-938-arg1         
        PushI        43                        
        PushI        48                        
        Add                                    
        Label        -compare-938-arg2         
        PushI        16                        
        PushI        13                        
        Add                                    
        Label        -compare-938-sub          
        Subtract                               
        JumpPos      -compare-938-false        
        Jump         -compare-938-true         
        Label        -compare-938-true         
        PushI        1                         
        Jump         -compare-938-join         
        Label        -compare-938-false        
        PushI        0                         
        Jump         -compare-938-join         
        Label        -compare-938-join         
        JumpTrue     -print-boolean-939-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-939-join   
        Label        -print-boolean-939-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-939-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-940-arg1         
        PushI        49                        
        PushI        15                        
        Add                                    
        Label        -compare-940-arg2         
        PushI        95                        
        PushI        43                        
        Add                                    
        Label        -compare-940-sub          
        Subtract                               
        JumpPos      -compare-940-false        
        Jump         -compare-940-true         
        Label        -compare-940-true         
        PushI        1                         
        Jump         -compare-940-join         
        Label        -compare-940-false        
        PushI        0                         
        Jump         -compare-940-join         
        Label        -compare-940-join         
        JumpTrue     -print-boolean-941-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-941-join   
        Label        -print-boolean-941-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-941-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
