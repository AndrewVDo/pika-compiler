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
        Label        -compare-726-arg1         
        PushI        18                        
        PushI        63                        
        Add                                    
        Label        -compare-726-arg2         
        PushI        45                        
        Label        -compare-726-sub          
        Subtract                               
        JumpNeg      -compare-726-true         
        Jump         -compare-726-false        
        Label        -compare-726-true         
        PushI        1                         
        Jump         -compare-726-join         
        Label        -compare-726-false        
        PushI        0                         
        Jump         -compare-726-join         
        Label        -compare-726-join         
        JumpTrue     -print-boolean-727-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-727-join   
        Label        -print-boolean-727-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-727-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-728-arg1         
        PushI        42                        
        PushI        48                        
        Add                                    
        Label        -compare-728-arg2         
        PushI        25                        
        Label        -compare-728-sub          
        Subtract                               
        JumpNeg      -compare-728-true         
        Jump         -compare-728-false        
        Label        -compare-728-true         
        PushI        1                         
        Jump         -compare-728-join         
        Label        -compare-728-false        
        PushI        0                         
        Jump         -compare-728-join         
        Label        -compare-728-join         
        JumpTrue     -print-boolean-729-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-729-join   
        Label        -print-boolean-729-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-729-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-730-arg1         
        PushI        55                        
        PushI        63                        
        Add                                    
        Label        -compare-730-arg2         
        PushI        24                        
        Label        -compare-730-sub          
        Subtract                               
        JumpNeg      -compare-730-true         
        Jump         -compare-730-false        
        Label        -compare-730-true         
        PushI        1                         
        Jump         -compare-730-join         
        Label        -compare-730-false        
        PushI        0                         
        Jump         -compare-730-join         
        Label        -compare-730-join         
        JumpTrue     -print-boolean-731-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-731-join   
        Label        -print-boolean-731-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-731-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-732-arg1         
        PushI        76                        
        PushI        21                        
        Add                                    
        Label        -compare-732-arg2         
        PushI        34                        
        Label        -compare-732-sub          
        Subtract                               
        JumpNeg      -compare-732-true         
        Jump         -compare-732-false        
        Label        -compare-732-true         
        PushI        1                         
        Jump         -compare-732-join         
        Label        -compare-732-false        
        PushI        0                         
        Jump         -compare-732-join         
        Label        -compare-732-join         
        JumpTrue     -print-boolean-733-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-733-join   
        Label        -print-boolean-733-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-733-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-734-arg1         
        PushI        71                        
        PushI        72                        
        Add                                    
        Label        -compare-734-arg2         
        PushI        12                        
        Label        -compare-734-sub          
        Subtract                               
        JumpNeg      -compare-734-true         
        Jump         -compare-734-false        
        Label        -compare-734-true         
        PushI        1                         
        Jump         -compare-734-join         
        Label        -compare-734-false        
        PushI        0                         
        Jump         -compare-734-join         
        Label        -compare-734-join         
        JumpTrue     -print-boolean-735-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-735-join   
        Label        -print-boolean-735-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-735-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-736-arg1         
        PushI        86                        
        PushI        97                        
        Add                                    
        Label        -compare-736-arg2         
        PushI        22                        
        Label        -compare-736-sub          
        Subtract                               
        JumpNeg      -compare-736-true         
        Jump         -compare-736-false        
        Label        -compare-736-true         
        PushI        1                         
        Jump         -compare-736-join         
        Label        -compare-736-false        
        PushI        0                         
        Jump         -compare-736-join         
        Label        -compare-736-join         
        JumpTrue     -print-boolean-737-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-737-join   
        Label        -print-boolean-737-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-737-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-738-arg1         
        PushI        81                        
        PushI        8                         
        Add                                    
        Label        -compare-738-arg2         
        PushI        37                        
        Label        -compare-738-sub          
        Subtract                               
        JumpNeg      -compare-738-true         
        Jump         -compare-738-false        
        Label        -compare-738-true         
        PushI        1                         
        Jump         -compare-738-join         
        Label        -compare-738-false        
        PushI        0                         
        Jump         -compare-738-join         
        Label        -compare-738-join         
        JumpTrue     -print-boolean-739-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-739-join   
        Label        -print-boolean-739-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-739-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-740-arg1         
        PushI        64                        
        PushI        54                        
        Add                                    
        Label        -compare-740-arg2         
        PushI        4                         
        Label        -compare-740-sub          
        Subtract                               
        JumpNeg      -compare-740-true         
        Jump         -compare-740-false        
        Label        -compare-740-true         
        PushI        1                         
        Jump         -compare-740-join         
        Label        -compare-740-false        
        PushI        0                         
        Jump         -compare-740-join         
        Label        -compare-740-join         
        JumpTrue     -print-boolean-741-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-741-join   
        Label        -print-boolean-741-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-741-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-742-arg1         
        PushI        40                        
        PushI        41                        
        Add                                    
        Label        -compare-742-arg2         
        PushI        1                         
        Label        -compare-742-sub          
        Subtract                               
        JumpNeg      -compare-742-true         
        Jump         -compare-742-false        
        Label        -compare-742-true         
        PushI        1                         
        Jump         -compare-742-join         
        Label        -compare-742-false        
        PushI        0                         
        Jump         -compare-742-join         
        Label        -compare-742-join         
        JumpTrue     -print-boolean-743-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-743-join   
        Label        -print-boolean-743-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-743-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-744-arg1         
        PushI        25                        
        PushI        92                        
        Add                                    
        Label        -compare-744-arg2         
        PushI        15                        
        Label        -compare-744-sub          
        Subtract                               
        JumpNeg      -compare-744-true         
        Jump         -compare-744-false        
        Label        -compare-744-true         
        PushI        1                         
        Jump         -compare-744-join         
        Label        -compare-744-false        
        PushI        0                         
        Jump         -compare-744-join         
        Label        -compare-744-join         
        JumpTrue     -print-boolean-745-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-745-join   
        Label        -print-boolean-745-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-745-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-746-arg1         
        PushI        42                        
        PushI        98                        
        Add                                    
        Label        -compare-746-arg2         
        PushI        38                        
        Label        -compare-746-sub          
        Subtract                               
        JumpNeg      -compare-746-true         
        Jump         -compare-746-false        
        Label        -compare-746-true         
        PushI        1                         
        Jump         -compare-746-join         
        Label        -compare-746-false        
        PushI        0                         
        Jump         -compare-746-join         
        Label        -compare-746-join         
        JumpTrue     -print-boolean-747-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-747-join   
        Label        -print-boolean-747-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-747-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-748-arg1         
        PushI        79                        
        PushI        93                        
        Add                                    
        Label        -compare-748-arg2         
        PushI        3                         
        Label        -compare-748-sub          
        Subtract                               
        JumpNeg      -compare-748-true         
        Jump         -compare-748-false        
        Label        -compare-748-true         
        PushI        1                         
        Jump         -compare-748-join         
        Label        -compare-748-false        
        PushI        0                         
        Jump         -compare-748-join         
        Label        -compare-748-join         
        JumpTrue     -print-boolean-749-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-749-join   
        Label        -print-boolean-749-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-749-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-750-arg1         
        PushI        47                        
        Label        -compare-750-arg2         
        PushI        96                        
        PushI        72                        
        Add                                    
        Label        -compare-750-sub          
        Subtract                               
        JumpNeg      -compare-750-true         
        Jump         -compare-750-false        
        Label        -compare-750-true         
        PushI        1                         
        Jump         -compare-750-join         
        Label        -compare-750-false        
        PushI        0                         
        Jump         -compare-750-join         
        Label        -compare-750-join         
        JumpTrue     -print-boolean-751-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-751-join   
        Label        -print-boolean-751-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-751-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-752-arg1         
        PushI        35                        
        Label        -compare-752-arg2         
        PushI        3                         
        PushI        31                        
        Add                                    
        Label        -compare-752-sub          
        Subtract                               
        JumpNeg      -compare-752-true         
        Jump         -compare-752-false        
        Label        -compare-752-true         
        PushI        1                         
        Jump         -compare-752-join         
        Label        -compare-752-false        
        PushI        0                         
        Jump         -compare-752-join         
        Label        -compare-752-join         
        JumpTrue     -print-boolean-753-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-753-join   
        Label        -print-boolean-753-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-753-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-754-arg1         
        PushI        38                        
        Label        -compare-754-arg2         
        PushI        77                        
        PushI        75                        
        Add                                    
        Label        -compare-754-sub          
        Subtract                               
        JumpNeg      -compare-754-true         
        Jump         -compare-754-false        
        Label        -compare-754-true         
        PushI        1                         
        Jump         -compare-754-join         
        Label        -compare-754-false        
        PushI        0                         
        Jump         -compare-754-join         
        Label        -compare-754-join         
        JumpTrue     -print-boolean-755-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-755-join   
        Label        -print-boolean-755-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-755-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-756-arg1         
        PushI        32                        
        Label        -compare-756-arg2         
        PushI        95                        
        PushI        31                        
        Add                                    
        Label        -compare-756-sub          
        Subtract                               
        JumpNeg      -compare-756-true         
        Jump         -compare-756-false        
        Label        -compare-756-true         
        PushI        1                         
        Jump         -compare-756-join         
        Label        -compare-756-false        
        PushI        0                         
        Jump         -compare-756-join         
        Label        -compare-756-join         
        JumpTrue     -print-boolean-757-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-757-join   
        Label        -print-boolean-757-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-757-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-758-arg1         
        PushI        10                        
        Label        -compare-758-arg2         
        PushI        64                        
        PushI        72                        
        Add                                    
        Label        -compare-758-sub          
        Subtract                               
        JumpNeg      -compare-758-true         
        Jump         -compare-758-false        
        Label        -compare-758-true         
        PushI        1                         
        Jump         -compare-758-join         
        Label        -compare-758-false        
        PushI        0                         
        Jump         -compare-758-join         
        Label        -compare-758-join         
        JumpTrue     -print-boolean-759-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-759-join   
        Label        -print-boolean-759-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-759-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-760-arg1         
        PushI        71                        
        Label        -compare-760-arg2         
        PushI        13                        
        PushI        47                        
        Add                                    
        Label        -compare-760-sub          
        Subtract                               
        JumpNeg      -compare-760-true         
        Jump         -compare-760-false        
        Label        -compare-760-true         
        PushI        1                         
        Jump         -compare-760-join         
        Label        -compare-760-false        
        PushI        0                         
        Jump         -compare-760-join         
        Label        -compare-760-join         
        JumpTrue     -print-boolean-761-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-761-join   
        Label        -print-boolean-761-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-761-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-762-arg1         
        PushI        28                        
        Label        -compare-762-arg2         
        PushI        68                        
        PushI        29                        
        Add                                    
        Label        -compare-762-sub          
        Subtract                               
        JumpNeg      -compare-762-true         
        Jump         -compare-762-false        
        Label        -compare-762-true         
        PushI        1                         
        Jump         -compare-762-join         
        Label        -compare-762-false        
        PushI        0                         
        Jump         -compare-762-join         
        Label        -compare-762-join         
        JumpTrue     -print-boolean-763-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-763-join   
        Label        -print-boolean-763-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-763-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-764-arg1         
        PushI        45                        
        Label        -compare-764-arg2         
        PushI        4                         
        PushI        6                         
        Add                                    
        Label        -compare-764-sub          
        Subtract                               
        JumpNeg      -compare-764-true         
        Jump         -compare-764-false        
        Label        -compare-764-true         
        PushI        1                         
        Jump         -compare-764-join         
        Label        -compare-764-false        
        PushI        0                         
        Jump         -compare-764-join         
        Label        -compare-764-join         
        JumpTrue     -print-boolean-765-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-765-join   
        Label        -print-boolean-765-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-765-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-766-arg1         
        PushI        29                        
        Label        -compare-766-arg2         
        PushI        46                        
        PushI        17                        
        Add                                    
        Label        -compare-766-sub          
        Subtract                               
        JumpNeg      -compare-766-true         
        Jump         -compare-766-false        
        Label        -compare-766-true         
        PushI        1                         
        Jump         -compare-766-join         
        Label        -compare-766-false        
        PushI        0                         
        Jump         -compare-766-join         
        Label        -compare-766-join         
        JumpTrue     -print-boolean-767-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-767-join   
        Label        -print-boolean-767-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-767-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-768-arg1         
        PushI        30                        
        Label        -compare-768-arg2         
        PushI        7                         
        PushI        2                         
        Add                                    
        Label        -compare-768-sub          
        Subtract                               
        JumpNeg      -compare-768-true         
        Jump         -compare-768-false        
        Label        -compare-768-true         
        PushI        1                         
        Jump         -compare-768-join         
        Label        -compare-768-false        
        PushI        0                         
        Jump         -compare-768-join         
        Label        -compare-768-join         
        JumpTrue     -print-boolean-769-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-769-join   
        Label        -print-boolean-769-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-769-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-770-arg1         
        PushI        41                        
        Label        -compare-770-arg2         
        PushI        37                        
        PushI        81                        
        Add                                    
        Label        -compare-770-sub          
        Subtract                               
        JumpNeg      -compare-770-true         
        Jump         -compare-770-false        
        Label        -compare-770-true         
        PushI        1                         
        Jump         -compare-770-join         
        Label        -compare-770-false        
        PushI        0                         
        Jump         -compare-770-join         
        Label        -compare-770-join         
        JumpTrue     -print-boolean-771-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-771-join   
        Label        -print-boolean-771-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-771-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-772-arg1         
        PushI        15                        
        Label        -compare-772-arg2         
        PushI        16                        
        PushI        58                        
        Add                                    
        Label        -compare-772-sub          
        Subtract                               
        JumpNeg      -compare-772-true         
        Jump         -compare-772-false        
        Label        -compare-772-true         
        PushI        1                         
        Jump         -compare-772-join         
        Label        -compare-772-false        
        PushI        0                         
        Jump         -compare-772-join         
        Label        -compare-772-join         
        JumpTrue     -print-boolean-773-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-773-join   
        Label        -print-boolean-773-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-773-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-774-arg1         
        PushI        8                         
        PushI        88                        
        Add                                    
        Label        -compare-774-arg2         
        PushI        13                        
        PushI        28                        
        Add                                    
        Label        -compare-774-sub          
        Subtract                               
        JumpNeg      -compare-774-true         
        Jump         -compare-774-false        
        Label        -compare-774-true         
        PushI        1                         
        Jump         -compare-774-join         
        Label        -compare-774-false        
        PushI        0                         
        Jump         -compare-774-join         
        Label        -compare-774-join         
        JumpTrue     -print-boolean-775-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-775-join   
        Label        -print-boolean-775-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-775-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-776-arg1         
        PushI        75                        
        PushI        49                        
        Add                                    
        Label        -compare-776-arg2         
        PushI        40                        
        PushI        43                        
        Add                                    
        Label        -compare-776-sub          
        Subtract                               
        JumpNeg      -compare-776-true         
        Jump         -compare-776-false        
        Label        -compare-776-true         
        PushI        1                         
        Jump         -compare-776-join         
        Label        -compare-776-false        
        PushI        0                         
        Jump         -compare-776-join         
        Label        -compare-776-join         
        JumpTrue     -print-boolean-777-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-777-join   
        Label        -print-boolean-777-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-777-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-778-arg1         
        PushI        30                        
        PushI        99                        
        Add                                    
        Label        -compare-778-arg2         
        PushI        3                         
        PushI        11                        
        Add                                    
        Label        -compare-778-sub          
        Subtract                               
        JumpNeg      -compare-778-true         
        Jump         -compare-778-false        
        Label        -compare-778-true         
        PushI        1                         
        Jump         -compare-778-join         
        Label        -compare-778-false        
        PushI        0                         
        Jump         -compare-778-join         
        Label        -compare-778-join         
        JumpTrue     -print-boolean-779-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-779-join   
        Label        -print-boolean-779-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-779-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-780-arg1         
        PushI        35                        
        PushI        68                        
        Add                                    
        Label        -compare-780-arg2         
        PushI        88                        
        PushI        83                        
        Add                                    
        Label        -compare-780-sub          
        Subtract                               
        JumpNeg      -compare-780-true         
        Jump         -compare-780-false        
        Label        -compare-780-true         
        PushI        1                         
        Jump         -compare-780-join         
        Label        -compare-780-false        
        PushI        0                         
        Jump         -compare-780-join         
        Label        -compare-780-join         
        JumpTrue     -print-boolean-781-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-781-join   
        Label        -print-boolean-781-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-781-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-782-arg1         
        PushI        68                        
        PushI        32                        
        Add                                    
        Label        -compare-782-arg2         
        PushI        77                        
        PushI        17                        
        Add                                    
        Label        -compare-782-sub          
        Subtract                               
        JumpNeg      -compare-782-true         
        Jump         -compare-782-false        
        Label        -compare-782-true         
        PushI        1                         
        Jump         -compare-782-join         
        Label        -compare-782-false        
        PushI        0                         
        Jump         -compare-782-join         
        Label        -compare-782-join         
        JumpTrue     -print-boolean-783-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-783-join   
        Label        -print-boolean-783-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-783-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-784-arg1         
        PushI        33                        
        PushI        91                        
        Add                                    
        Label        -compare-784-arg2         
        PushI        46                        
        PushI        59                        
        Add                                    
        Label        -compare-784-sub          
        Subtract                               
        JumpNeg      -compare-784-true         
        Jump         -compare-784-false        
        Label        -compare-784-true         
        PushI        1                         
        Jump         -compare-784-join         
        Label        -compare-784-false        
        PushI        0                         
        Jump         -compare-784-join         
        Label        -compare-784-join         
        JumpTrue     -print-boolean-785-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-785-join   
        Label        -print-boolean-785-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-785-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-786-arg1         
        PushI        5                         
        PushI        89                        
        Add                                    
        Label        -compare-786-arg2         
        PushI        51                        
        PushI        30                        
        Add                                    
        Label        -compare-786-sub          
        Subtract                               
        JumpNeg      -compare-786-true         
        Jump         -compare-786-false        
        Label        -compare-786-true         
        PushI        1                         
        Jump         -compare-786-join         
        Label        -compare-786-false        
        PushI        0                         
        Jump         -compare-786-join         
        Label        -compare-786-join         
        JumpTrue     -print-boolean-787-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-787-join   
        Label        -print-boolean-787-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-787-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-788-arg1         
        PushI        54                        
        PushI        3                         
        Add                                    
        Label        -compare-788-arg2         
        PushI        3                         
        PushI        23                        
        Add                                    
        Label        -compare-788-sub          
        Subtract                               
        JumpNeg      -compare-788-true         
        Jump         -compare-788-false        
        Label        -compare-788-true         
        PushI        1                         
        Jump         -compare-788-join         
        Label        -compare-788-false        
        PushI        0                         
        Jump         -compare-788-join         
        Label        -compare-788-join         
        JumpTrue     -print-boolean-789-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-789-join   
        Label        -print-boolean-789-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-789-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-790-arg1         
        PushI        90                        
        PushI        95                        
        Add                                    
        Label        -compare-790-arg2         
        PushI        1                         
        PushI        82                        
        Add                                    
        Label        -compare-790-sub          
        Subtract                               
        JumpNeg      -compare-790-true         
        Jump         -compare-790-false        
        Label        -compare-790-true         
        PushI        1                         
        Jump         -compare-790-join         
        Label        -compare-790-false        
        PushI        0                         
        Jump         -compare-790-join         
        Label        -compare-790-join         
        JumpTrue     -print-boolean-791-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-791-join   
        Label        -print-boolean-791-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-791-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-792-arg1         
        PushI        1                         
        PushI        61                        
        Add                                    
        Label        -compare-792-arg2         
        PushI        59                        
        PushI        39                        
        Add                                    
        Label        -compare-792-sub          
        Subtract                               
        JumpNeg      -compare-792-true         
        Jump         -compare-792-false        
        Label        -compare-792-true         
        PushI        1                         
        Jump         -compare-792-join         
        Label        -compare-792-false        
        PushI        0                         
        Jump         -compare-792-join         
        Label        -compare-792-join         
        JumpTrue     -print-boolean-793-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-793-join   
        Label        -print-boolean-793-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-793-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-794-arg1         
        PushI        18                        
        PushI        81                        
        Add                                    
        Label        -compare-794-arg2         
        PushI        88                        
        PushI        73                        
        Add                                    
        Label        -compare-794-sub          
        Subtract                               
        JumpNeg      -compare-794-true         
        Jump         -compare-794-false        
        Label        -compare-794-true         
        PushI        1                         
        Jump         -compare-794-join         
        Label        -compare-794-false        
        PushI        0                         
        Jump         -compare-794-join         
        Label        -compare-794-join         
        JumpTrue     -print-boolean-795-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-795-join   
        Label        -print-boolean-795-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-795-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-796-arg1         
        PushI        37                        
        PushI        38                        
        Add                                    
        Label        -compare-796-arg2         
        PushI        53                        
        PushI        5                         
        Add                                    
        Label        -compare-796-sub          
        Subtract                               
        JumpNeg      -compare-796-true         
        Jump         -compare-796-false        
        Label        -compare-796-true         
        PushI        1                         
        Jump         -compare-796-join         
        Label        -compare-796-false        
        PushI        0                         
        Jump         -compare-796-join         
        Label        -compare-796-join         
        JumpTrue     -print-boolean-797-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-797-join   
        Label        -print-boolean-797-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-797-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
