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
        Label        -compare-5713-arg1        
        PushI        84                        
        PushI        69                        
        Subtract                               
        Label        -compare-5713-arg2        
        PushI        81                        
        Label        -compare-5713-sub         
        Subtract                               
        JumpPos      -compare-5713-true        
        Jump         -compare-5713-false       
        Label        -compare-5713-true        
        PushI        1                         
        Jump         -compare-5713-join        
        Label        -compare-5713-false       
        PushI        0                         
        Jump         -compare-5713-join        
        Label        -compare-5713-join        
        JumpTrue     -print-boolean-5714-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5714-join  
        Label        -print-boolean-5714-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5714-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5715-arg1        
        PushI        10                        
        PushI        93                        
        Subtract                               
        Label        -compare-5715-arg2        
        PushI        38                        
        Label        -compare-5715-sub         
        Subtract                               
        JumpPos      -compare-5715-true        
        Jump         -compare-5715-false       
        Label        -compare-5715-true        
        PushI        1                         
        Jump         -compare-5715-join        
        Label        -compare-5715-false       
        PushI        0                         
        Jump         -compare-5715-join        
        Label        -compare-5715-join        
        JumpTrue     -print-boolean-5716-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5716-join  
        Label        -print-boolean-5716-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5716-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5717-arg1        
        PushI        28                        
        PushI        93                        
        Subtract                               
        Label        -compare-5717-arg2        
        PushI        45                        
        Label        -compare-5717-sub         
        Subtract                               
        JumpPos      -compare-5717-true        
        Jump         -compare-5717-false       
        Label        -compare-5717-true        
        PushI        1                         
        Jump         -compare-5717-join        
        Label        -compare-5717-false       
        PushI        0                         
        Jump         -compare-5717-join        
        Label        -compare-5717-join        
        JumpTrue     -print-boolean-5718-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5718-join  
        Label        -print-boolean-5718-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5718-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5719-arg1        
        PushI        50                        
        PushI        20                        
        Subtract                               
        Label        -compare-5719-arg2        
        PushI        88                        
        Label        -compare-5719-sub         
        Subtract                               
        JumpPos      -compare-5719-true        
        Jump         -compare-5719-false       
        Label        -compare-5719-true        
        PushI        1                         
        Jump         -compare-5719-join        
        Label        -compare-5719-false       
        PushI        0                         
        Jump         -compare-5719-join        
        Label        -compare-5719-join        
        JumpTrue     -print-boolean-5720-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5720-join  
        Label        -print-boolean-5720-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5720-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5721-arg1        
        PushI        28                        
        PushI        81                        
        Subtract                               
        Label        -compare-5721-arg2        
        PushI        67                        
        Label        -compare-5721-sub         
        Subtract                               
        JumpPos      -compare-5721-true        
        Jump         -compare-5721-false       
        Label        -compare-5721-true        
        PushI        1                         
        Jump         -compare-5721-join        
        Label        -compare-5721-false       
        PushI        0                         
        Jump         -compare-5721-join        
        Label        -compare-5721-join        
        JumpTrue     -print-boolean-5722-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5722-join  
        Label        -print-boolean-5722-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5722-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5723-arg1        
        PushI        80                        
        PushI        76                        
        Subtract                               
        Label        -compare-5723-arg2        
        PushI        7                         
        Label        -compare-5723-sub         
        Subtract                               
        JumpPos      -compare-5723-true        
        Jump         -compare-5723-false       
        Label        -compare-5723-true        
        PushI        1                         
        Jump         -compare-5723-join        
        Label        -compare-5723-false       
        PushI        0                         
        Jump         -compare-5723-join        
        Label        -compare-5723-join        
        JumpTrue     -print-boolean-5724-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5724-join  
        Label        -print-boolean-5724-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5724-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5725-arg1        
        PushI        29                        
        PushI        94                        
        Subtract                               
        Label        -compare-5725-arg2        
        PushI        58                        
        Label        -compare-5725-sub         
        Subtract                               
        JumpPos      -compare-5725-true        
        Jump         -compare-5725-false       
        Label        -compare-5725-true        
        PushI        1                         
        Jump         -compare-5725-join        
        Label        -compare-5725-false       
        PushI        0                         
        Jump         -compare-5725-join        
        Label        -compare-5725-join        
        JumpTrue     -print-boolean-5726-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5726-join  
        Label        -print-boolean-5726-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5726-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5727-arg1        
        PushI        92                        
        PushI        90                        
        Subtract                               
        Label        -compare-5727-arg2        
        PushI        30                        
        Label        -compare-5727-sub         
        Subtract                               
        JumpPos      -compare-5727-true        
        Jump         -compare-5727-false       
        Label        -compare-5727-true        
        PushI        1                         
        Jump         -compare-5727-join        
        Label        -compare-5727-false       
        PushI        0                         
        Jump         -compare-5727-join        
        Label        -compare-5727-join        
        JumpTrue     -print-boolean-5728-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5728-join  
        Label        -print-boolean-5728-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5728-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5729-arg1        
        PushI        78                        
        PushI        50                        
        Subtract                               
        Label        -compare-5729-arg2        
        PushI        57                        
        Label        -compare-5729-sub         
        Subtract                               
        JumpPos      -compare-5729-true        
        Jump         -compare-5729-false       
        Label        -compare-5729-true        
        PushI        1                         
        Jump         -compare-5729-join        
        Label        -compare-5729-false       
        PushI        0                         
        Jump         -compare-5729-join        
        Label        -compare-5729-join        
        JumpTrue     -print-boolean-5730-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5730-join  
        Label        -print-boolean-5730-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5730-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5731-arg1        
        PushI        42                        
        PushI        74                        
        Subtract                               
        Label        -compare-5731-arg2        
        PushI        1                         
        Label        -compare-5731-sub         
        Subtract                               
        JumpPos      -compare-5731-true        
        Jump         -compare-5731-false       
        Label        -compare-5731-true        
        PushI        1                         
        Jump         -compare-5731-join        
        Label        -compare-5731-false       
        PushI        0                         
        Jump         -compare-5731-join        
        Label        -compare-5731-join        
        JumpTrue     -print-boolean-5732-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5732-join  
        Label        -print-boolean-5732-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5732-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5733-arg1        
        PushI        79                        
        PushI        13                        
        Subtract                               
        Label        -compare-5733-arg2        
        PushI        13                        
        Label        -compare-5733-sub         
        Subtract                               
        JumpPos      -compare-5733-true        
        Jump         -compare-5733-false       
        Label        -compare-5733-true        
        PushI        1                         
        Jump         -compare-5733-join        
        Label        -compare-5733-false       
        PushI        0                         
        Jump         -compare-5733-join        
        Label        -compare-5733-join        
        JumpTrue     -print-boolean-5734-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5734-join  
        Label        -print-boolean-5734-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5734-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5735-arg1        
        PushI        88                        
        PushI        50                        
        Subtract                               
        Label        -compare-5735-arg2        
        PushI        44                        
        Label        -compare-5735-sub         
        Subtract                               
        JumpPos      -compare-5735-true        
        Jump         -compare-5735-false       
        Label        -compare-5735-true        
        PushI        1                         
        Jump         -compare-5735-join        
        Label        -compare-5735-false       
        PushI        0                         
        Jump         -compare-5735-join        
        Label        -compare-5735-join        
        JumpTrue     -print-boolean-5736-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5736-join  
        Label        -print-boolean-5736-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5736-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5737-arg1        
        PushI        52                        
        Label        -compare-5737-arg2        
        PushI        95                        
        PushI        39                        
        Subtract                               
        Label        -compare-5737-sub         
        Subtract                               
        JumpPos      -compare-5737-true        
        Jump         -compare-5737-false       
        Label        -compare-5737-true        
        PushI        1                         
        Jump         -compare-5737-join        
        Label        -compare-5737-false       
        PushI        0                         
        Jump         -compare-5737-join        
        Label        -compare-5737-join        
        JumpTrue     -print-boolean-5738-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5738-join  
        Label        -print-boolean-5738-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5738-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5739-arg1        
        PushI        49                        
        Label        -compare-5739-arg2        
        PushI        34                        
        PushI        54                        
        Subtract                               
        Label        -compare-5739-sub         
        Subtract                               
        JumpPos      -compare-5739-true        
        Jump         -compare-5739-false       
        Label        -compare-5739-true        
        PushI        1                         
        Jump         -compare-5739-join        
        Label        -compare-5739-false       
        PushI        0                         
        Jump         -compare-5739-join        
        Label        -compare-5739-join        
        JumpTrue     -print-boolean-5740-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5740-join  
        Label        -print-boolean-5740-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5740-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5741-arg1        
        PushI        84                        
        Label        -compare-5741-arg2        
        PushI        81                        
        PushI        70                        
        Subtract                               
        Label        -compare-5741-sub         
        Subtract                               
        JumpPos      -compare-5741-true        
        Jump         -compare-5741-false       
        Label        -compare-5741-true        
        PushI        1                         
        Jump         -compare-5741-join        
        Label        -compare-5741-false       
        PushI        0                         
        Jump         -compare-5741-join        
        Label        -compare-5741-join        
        JumpTrue     -print-boolean-5742-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5742-join  
        Label        -print-boolean-5742-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5742-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5743-arg1        
        PushI        15                        
        Label        -compare-5743-arg2        
        PushI        35                        
        PushI        39                        
        Subtract                               
        Label        -compare-5743-sub         
        Subtract                               
        JumpPos      -compare-5743-true        
        Jump         -compare-5743-false       
        Label        -compare-5743-true        
        PushI        1                         
        Jump         -compare-5743-join        
        Label        -compare-5743-false       
        PushI        0                         
        Jump         -compare-5743-join        
        Label        -compare-5743-join        
        JumpTrue     -print-boolean-5744-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5744-join  
        Label        -print-boolean-5744-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5744-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5745-arg1        
        PushI        27                        
        Label        -compare-5745-arg2        
        PushI        77                        
        PushI        96                        
        Subtract                               
        Label        -compare-5745-sub         
        Subtract                               
        JumpPos      -compare-5745-true        
        Jump         -compare-5745-false       
        Label        -compare-5745-true        
        PushI        1                         
        Jump         -compare-5745-join        
        Label        -compare-5745-false       
        PushI        0                         
        Jump         -compare-5745-join        
        Label        -compare-5745-join        
        JumpTrue     -print-boolean-5746-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5746-join  
        Label        -print-boolean-5746-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5746-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5747-arg1        
        PushI        54                        
        Label        -compare-5747-arg2        
        PushI        31                        
        PushI        74                        
        Subtract                               
        Label        -compare-5747-sub         
        Subtract                               
        JumpPos      -compare-5747-true        
        Jump         -compare-5747-false       
        Label        -compare-5747-true        
        PushI        1                         
        Jump         -compare-5747-join        
        Label        -compare-5747-false       
        PushI        0                         
        Jump         -compare-5747-join        
        Label        -compare-5747-join        
        JumpTrue     -print-boolean-5748-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5748-join  
        Label        -print-boolean-5748-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5748-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5749-arg1        
        PushI        99                        
        Label        -compare-5749-arg2        
        PushI        24                        
        PushI        46                        
        Subtract                               
        Label        -compare-5749-sub         
        Subtract                               
        JumpPos      -compare-5749-true        
        Jump         -compare-5749-false       
        Label        -compare-5749-true        
        PushI        1                         
        Jump         -compare-5749-join        
        Label        -compare-5749-false       
        PushI        0                         
        Jump         -compare-5749-join        
        Label        -compare-5749-join        
        JumpTrue     -print-boolean-5750-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5750-join  
        Label        -print-boolean-5750-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5750-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5751-arg1        
        PushI        82                        
        Label        -compare-5751-arg2        
        PushI        95                        
        PushI        61                        
        Subtract                               
        Label        -compare-5751-sub         
        Subtract                               
        JumpPos      -compare-5751-true        
        Jump         -compare-5751-false       
        Label        -compare-5751-true        
        PushI        1                         
        Jump         -compare-5751-join        
        Label        -compare-5751-false       
        PushI        0                         
        Jump         -compare-5751-join        
        Label        -compare-5751-join        
        JumpTrue     -print-boolean-5752-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5752-join  
        Label        -print-boolean-5752-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5752-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5753-arg1        
        PushI        8                         
        Label        -compare-5753-arg2        
        PushI        93                        
        PushI        23                        
        Subtract                               
        Label        -compare-5753-sub         
        Subtract                               
        JumpPos      -compare-5753-true        
        Jump         -compare-5753-false       
        Label        -compare-5753-true        
        PushI        1                         
        Jump         -compare-5753-join        
        Label        -compare-5753-false       
        PushI        0                         
        Jump         -compare-5753-join        
        Label        -compare-5753-join        
        JumpTrue     -print-boolean-5754-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5754-join  
        Label        -print-boolean-5754-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5754-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5755-arg1        
        PushI        71                        
        Label        -compare-5755-arg2        
        PushI        85                        
        PushI        49                        
        Subtract                               
        Label        -compare-5755-sub         
        Subtract                               
        JumpPos      -compare-5755-true        
        Jump         -compare-5755-false       
        Label        -compare-5755-true        
        PushI        1                         
        Jump         -compare-5755-join        
        Label        -compare-5755-false       
        PushI        0                         
        Jump         -compare-5755-join        
        Label        -compare-5755-join        
        JumpTrue     -print-boolean-5756-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5756-join  
        Label        -print-boolean-5756-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5756-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5757-arg1        
        PushI        82                        
        Label        -compare-5757-arg2        
        PushI        90                        
        PushI        43                        
        Subtract                               
        Label        -compare-5757-sub         
        Subtract                               
        JumpPos      -compare-5757-true        
        Jump         -compare-5757-false       
        Label        -compare-5757-true        
        PushI        1                         
        Jump         -compare-5757-join        
        Label        -compare-5757-false       
        PushI        0                         
        Jump         -compare-5757-join        
        Label        -compare-5757-join        
        JumpTrue     -print-boolean-5758-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5758-join  
        Label        -print-boolean-5758-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5758-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5759-arg1        
        PushI        57                        
        Label        -compare-5759-arg2        
        PushI        64                        
        PushI        91                        
        Subtract                               
        Label        -compare-5759-sub         
        Subtract                               
        JumpPos      -compare-5759-true        
        Jump         -compare-5759-false       
        Label        -compare-5759-true        
        PushI        1                         
        Jump         -compare-5759-join        
        Label        -compare-5759-false       
        PushI        0                         
        Jump         -compare-5759-join        
        Label        -compare-5759-join        
        JumpTrue     -print-boolean-5760-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5760-join  
        Label        -print-boolean-5760-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5760-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5761-arg1        
        PushI        10                        
        PushI        44                        
        Subtract                               
        Label        -compare-5761-arg2        
        PushI        39                        
        PushI        85                        
        Subtract                               
        Label        -compare-5761-sub         
        Subtract                               
        JumpPos      -compare-5761-true        
        Jump         -compare-5761-false       
        Label        -compare-5761-true        
        PushI        1                         
        Jump         -compare-5761-join        
        Label        -compare-5761-false       
        PushI        0                         
        Jump         -compare-5761-join        
        Label        -compare-5761-join        
        JumpTrue     -print-boolean-5762-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5762-join  
        Label        -print-boolean-5762-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5762-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5763-arg1        
        PushI        5                         
        PushI        5                         
        Subtract                               
        Label        -compare-5763-arg2        
        PushI        71                        
        PushI        66                        
        Subtract                               
        Label        -compare-5763-sub         
        Subtract                               
        JumpPos      -compare-5763-true        
        Jump         -compare-5763-false       
        Label        -compare-5763-true        
        PushI        1                         
        Jump         -compare-5763-join        
        Label        -compare-5763-false       
        PushI        0                         
        Jump         -compare-5763-join        
        Label        -compare-5763-join        
        JumpTrue     -print-boolean-5764-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5764-join  
        Label        -print-boolean-5764-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5764-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5765-arg1        
        PushI        20                        
        PushI        48                        
        Subtract                               
        Label        -compare-5765-arg2        
        PushI        73                        
        PushI        35                        
        Subtract                               
        Label        -compare-5765-sub         
        Subtract                               
        JumpPos      -compare-5765-true        
        Jump         -compare-5765-false       
        Label        -compare-5765-true        
        PushI        1                         
        Jump         -compare-5765-join        
        Label        -compare-5765-false       
        PushI        0                         
        Jump         -compare-5765-join        
        Label        -compare-5765-join        
        JumpTrue     -print-boolean-5766-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5766-join  
        Label        -print-boolean-5766-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5766-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5767-arg1        
        PushI        49                        
        PushI        27                        
        Subtract                               
        Label        -compare-5767-arg2        
        PushI        66                        
        PushI        9                         
        Subtract                               
        Label        -compare-5767-sub         
        Subtract                               
        JumpPos      -compare-5767-true        
        Jump         -compare-5767-false       
        Label        -compare-5767-true        
        PushI        1                         
        Jump         -compare-5767-join        
        Label        -compare-5767-false       
        PushI        0                         
        Jump         -compare-5767-join        
        Label        -compare-5767-join        
        JumpTrue     -print-boolean-5768-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5768-join  
        Label        -print-boolean-5768-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5768-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5769-arg1        
        PushI        2                         
        PushI        90                        
        Subtract                               
        Label        -compare-5769-arg2        
        PushI        27                        
        PushI        74                        
        Subtract                               
        Label        -compare-5769-sub         
        Subtract                               
        JumpPos      -compare-5769-true        
        Jump         -compare-5769-false       
        Label        -compare-5769-true        
        PushI        1                         
        Jump         -compare-5769-join        
        Label        -compare-5769-false       
        PushI        0                         
        Jump         -compare-5769-join        
        Label        -compare-5769-join        
        JumpTrue     -print-boolean-5770-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5770-join  
        Label        -print-boolean-5770-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5770-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5771-arg1        
        PushI        99                        
        PushI        71                        
        Subtract                               
        Label        -compare-5771-arg2        
        PushI        52                        
        PushI        92                        
        Subtract                               
        Label        -compare-5771-sub         
        Subtract                               
        JumpPos      -compare-5771-true        
        Jump         -compare-5771-false       
        Label        -compare-5771-true        
        PushI        1                         
        Jump         -compare-5771-join        
        Label        -compare-5771-false       
        PushI        0                         
        Jump         -compare-5771-join        
        Label        -compare-5771-join        
        JumpTrue     -print-boolean-5772-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5772-join  
        Label        -print-boolean-5772-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5772-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5773-arg1        
        PushI        14                        
        PushI        80                        
        Subtract                               
        Label        -compare-5773-arg2        
        PushI        26                        
        PushI        16                        
        Subtract                               
        Label        -compare-5773-sub         
        Subtract                               
        JumpPos      -compare-5773-true        
        Jump         -compare-5773-false       
        Label        -compare-5773-true        
        PushI        1                         
        Jump         -compare-5773-join        
        Label        -compare-5773-false       
        PushI        0                         
        Jump         -compare-5773-join        
        Label        -compare-5773-join        
        JumpTrue     -print-boolean-5774-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5774-join  
        Label        -print-boolean-5774-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5774-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5775-arg1        
        PushI        75                        
        PushI        36                        
        Subtract                               
        Label        -compare-5775-arg2        
        PushI        55                        
        PushI        99                        
        Subtract                               
        Label        -compare-5775-sub         
        Subtract                               
        JumpPos      -compare-5775-true        
        Jump         -compare-5775-false       
        Label        -compare-5775-true        
        PushI        1                         
        Jump         -compare-5775-join        
        Label        -compare-5775-false       
        PushI        0                         
        Jump         -compare-5775-join        
        Label        -compare-5775-join        
        JumpTrue     -print-boolean-5776-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5776-join  
        Label        -print-boolean-5776-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5776-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5777-arg1        
        PushI        10                        
        PushI        97                        
        Subtract                               
        Label        -compare-5777-arg2        
        PushI        76                        
        PushI        59                        
        Subtract                               
        Label        -compare-5777-sub         
        Subtract                               
        JumpPos      -compare-5777-true        
        Jump         -compare-5777-false       
        Label        -compare-5777-true        
        PushI        1                         
        Jump         -compare-5777-join        
        Label        -compare-5777-false       
        PushI        0                         
        Jump         -compare-5777-join        
        Label        -compare-5777-join        
        JumpTrue     -print-boolean-5778-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5778-join  
        Label        -print-boolean-5778-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5778-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5779-arg1        
        PushI        37                        
        PushI        37                        
        Subtract                               
        Label        -compare-5779-arg2        
        PushI        77                        
        PushI        51                        
        Subtract                               
        Label        -compare-5779-sub         
        Subtract                               
        JumpPos      -compare-5779-true        
        Jump         -compare-5779-false       
        Label        -compare-5779-true        
        PushI        1                         
        Jump         -compare-5779-join        
        Label        -compare-5779-false       
        PushI        0                         
        Jump         -compare-5779-join        
        Label        -compare-5779-join        
        JumpTrue     -print-boolean-5780-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5780-join  
        Label        -print-boolean-5780-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5780-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5781-arg1        
        PushI        50                        
        PushI        16                        
        Subtract                               
        Label        -compare-5781-arg2        
        PushI        90                        
        PushI        17                        
        Subtract                               
        Label        -compare-5781-sub         
        Subtract                               
        JumpPos      -compare-5781-true        
        Jump         -compare-5781-false       
        Label        -compare-5781-true        
        PushI        1                         
        Jump         -compare-5781-join        
        Label        -compare-5781-false       
        PushI        0                         
        Jump         -compare-5781-join        
        Label        -compare-5781-join        
        JumpTrue     -print-boolean-5782-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5782-join  
        Label        -print-boolean-5782-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5782-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5783-arg1        
        PushI        29                        
        PushI        79                        
        Subtract                               
        Label        -compare-5783-arg2        
        PushI        11                        
        PushI        66                        
        Subtract                               
        Label        -compare-5783-sub         
        Subtract                               
        JumpPos      -compare-5783-true        
        Jump         -compare-5783-false       
        Label        -compare-5783-true        
        PushI        1                         
        Jump         -compare-5783-join        
        Label        -compare-5783-false       
        PushI        0                         
        Jump         -compare-5783-join        
        Label        -compare-5783-join        
        JumpTrue     -print-boolean-5784-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5784-join  
        Label        -print-boolean-5784-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5784-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
