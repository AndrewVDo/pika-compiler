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
        Label        -compare-5726-arg1        
        PushI        84                        
        PushI        69                        
        Subtract                               
        Label        -compare-5726-arg2        
        PushI        81                        
        Label        -compare-5726-sub         
        Subtract                               
        JumpPos      -compare-5726-true        
        Jump         -compare-5726-false       
        Label        -compare-5726-true        
        PushI        1                         
        Jump         -compare-5726-join        
        Label        -compare-5726-false       
        PushI        0                         
        Jump         -compare-5726-join        
        Label        -compare-5726-join        
        JumpTrue     -print-boolean-5727-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5727-join  
        Label        -print-boolean-5727-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5727-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5728-arg1        
        PushI        10                        
        PushI        93                        
        Subtract                               
        Label        -compare-5728-arg2        
        PushI        38                        
        Label        -compare-5728-sub         
        Subtract                               
        JumpPos      -compare-5728-true        
        Jump         -compare-5728-false       
        Label        -compare-5728-true        
        PushI        1                         
        Jump         -compare-5728-join        
        Label        -compare-5728-false       
        PushI        0                         
        Jump         -compare-5728-join        
        Label        -compare-5728-join        
        JumpTrue     -print-boolean-5729-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5729-join  
        Label        -print-boolean-5729-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5729-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5730-arg1        
        PushI        28                        
        PushI        93                        
        Subtract                               
        Label        -compare-5730-arg2        
        PushI        45                        
        Label        -compare-5730-sub         
        Subtract                               
        JumpPos      -compare-5730-true        
        Jump         -compare-5730-false       
        Label        -compare-5730-true        
        PushI        1                         
        Jump         -compare-5730-join        
        Label        -compare-5730-false       
        PushI        0                         
        Jump         -compare-5730-join        
        Label        -compare-5730-join        
        JumpTrue     -print-boolean-5731-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5731-join  
        Label        -print-boolean-5731-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5731-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5732-arg1        
        PushI        50                        
        PushI        20                        
        Subtract                               
        Label        -compare-5732-arg2        
        PushI        88                        
        Label        -compare-5732-sub         
        Subtract                               
        JumpPos      -compare-5732-true        
        Jump         -compare-5732-false       
        Label        -compare-5732-true        
        PushI        1                         
        Jump         -compare-5732-join        
        Label        -compare-5732-false       
        PushI        0                         
        Jump         -compare-5732-join        
        Label        -compare-5732-join        
        JumpTrue     -print-boolean-5733-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5733-join  
        Label        -print-boolean-5733-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5733-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5734-arg1        
        PushI        28                        
        PushI        81                        
        Subtract                               
        Label        -compare-5734-arg2        
        PushI        67                        
        Label        -compare-5734-sub         
        Subtract                               
        JumpPos      -compare-5734-true        
        Jump         -compare-5734-false       
        Label        -compare-5734-true        
        PushI        1                         
        Jump         -compare-5734-join        
        Label        -compare-5734-false       
        PushI        0                         
        Jump         -compare-5734-join        
        Label        -compare-5734-join        
        JumpTrue     -print-boolean-5735-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5735-join  
        Label        -print-boolean-5735-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5735-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5736-arg1        
        PushI        80                        
        PushI        76                        
        Subtract                               
        Label        -compare-5736-arg2        
        PushI        7                         
        Label        -compare-5736-sub         
        Subtract                               
        JumpPos      -compare-5736-true        
        Jump         -compare-5736-false       
        Label        -compare-5736-true        
        PushI        1                         
        Jump         -compare-5736-join        
        Label        -compare-5736-false       
        PushI        0                         
        Jump         -compare-5736-join        
        Label        -compare-5736-join        
        JumpTrue     -print-boolean-5737-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5737-join  
        Label        -print-boolean-5737-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5737-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5738-arg1        
        PushI        29                        
        PushI        94                        
        Subtract                               
        Label        -compare-5738-arg2        
        PushI        58                        
        Label        -compare-5738-sub         
        Subtract                               
        JumpPos      -compare-5738-true        
        Jump         -compare-5738-false       
        Label        -compare-5738-true        
        PushI        1                         
        Jump         -compare-5738-join        
        Label        -compare-5738-false       
        PushI        0                         
        Jump         -compare-5738-join        
        Label        -compare-5738-join        
        JumpTrue     -print-boolean-5739-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5739-join  
        Label        -print-boolean-5739-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5739-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5740-arg1        
        PushI        92                        
        PushI        90                        
        Subtract                               
        Label        -compare-5740-arg2        
        PushI        30                        
        Label        -compare-5740-sub         
        Subtract                               
        JumpPos      -compare-5740-true        
        Jump         -compare-5740-false       
        Label        -compare-5740-true        
        PushI        1                         
        Jump         -compare-5740-join        
        Label        -compare-5740-false       
        PushI        0                         
        Jump         -compare-5740-join        
        Label        -compare-5740-join        
        JumpTrue     -print-boolean-5741-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5741-join  
        Label        -print-boolean-5741-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5741-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5742-arg1        
        PushI        78                        
        PushI        50                        
        Subtract                               
        Label        -compare-5742-arg2        
        PushI        57                        
        Label        -compare-5742-sub         
        Subtract                               
        JumpPos      -compare-5742-true        
        Jump         -compare-5742-false       
        Label        -compare-5742-true        
        PushI        1                         
        Jump         -compare-5742-join        
        Label        -compare-5742-false       
        PushI        0                         
        Jump         -compare-5742-join        
        Label        -compare-5742-join        
        JumpTrue     -print-boolean-5743-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5743-join  
        Label        -print-boolean-5743-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5743-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5744-arg1        
        PushI        42                        
        PushI        74                        
        Subtract                               
        Label        -compare-5744-arg2        
        PushI        1                         
        Label        -compare-5744-sub         
        Subtract                               
        JumpPos      -compare-5744-true        
        Jump         -compare-5744-false       
        Label        -compare-5744-true        
        PushI        1                         
        Jump         -compare-5744-join        
        Label        -compare-5744-false       
        PushI        0                         
        Jump         -compare-5744-join        
        Label        -compare-5744-join        
        JumpTrue     -print-boolean-5745-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5745-join  
        Label        -print-boolean-5745-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5745-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5746-arg1        
        PushI        79                        
        PushI        13                        
        Subtract                               
        Label        -compare-5746-arg2        
        PushI        13                        
        Label        -compare-5746-sub         
        Subtract                               
        JumpPos      -compare-5746-true        
        Jump         -compare-5746-false       
        Label        -compare-5746-true        
        PushI        1                         
        Jump         -compare-5746-join        
        Label        -compare-5746-false       
        PushI        0                         
        Jump         -compare-5746-join        
        Label        -compare-5746-join        
        JumpTrue     -print-boolean-5747-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5747-join  
        Label        -print-boolean-5747-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5747-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5748-arg1        
        PushI        88                        
        PushI        50                        
        Subtract                               
        Label        -compare-5748-arg2        
        PushI        44                        
        Label        -compare-5748-sub         
        Subtract                               
        JumpPos      -compare-5748-true        
        Jump         -compare-5748-false       
        Label        -compare-5748-true        
        PushI        1                         
        Jump         -compare-5748-join        
        Label        -compare-5748-false       
        PushI        0                         
        Jump         -compare-5748-join        
        Label        -compare-5748-join        
        JumpTrue     -print-boolean-5749-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5749-join  
        Label        -print-boolean-5749-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5749-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5750-arg1        
        PushI        52                        
        Label        -compare-5750-arg2        
        PushI        95                        
        PushI        39                        
        Subtract                               
        Label        -compare-5750-sub         
        Subtract                               
        JumpPos      -compare-5750-true        
        Jump         -compare-5750-false       
        Label        -compare-5750-true        
        PushI        1                         
        Jump         -compare-5750-join        
        Label        -compare-5750-false       
        PushI        0                         
        Jump         -compare-5750-join        
        Label        -compare-5750-join        
        JumpTrue     -print-boolean-5751-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5751-join  
        Label        -print-boolean-5751-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5751-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5752-arg1        
        PushI        49                        
        Label        -compare-5752-arg2        
        PushI        34                        
        PushI        54                        
        Subtract                               
        Label        -compare-5752-sub         
        Subtract                               
        JumpPos      -compare-5752-true        
        Jump         -compare-5752-false       
        Label        -compare-5752-true        
        PushI        1                         
        Jump         -compare-5752-join        
        Label        -compare-5752-false       
        PushI        0                         
        Jump         -compare-5752-join        
        Label        -compare-5752-join        
        JumpTrue     -print-boolean-5753-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5753-join  
        Label        -print-boolean-5753-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5753-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5754-arg1        
        PushI        84                        
        Label        -compare-5754-arg2        
        PushI        81                        
        PushI        70                        
        Subtract                               
        Label        -compare-5754-sub         
        Subtract                               
        JumpPos      -compare-5754-true        
        Jump         -compare-5754-false       
        Label        -compare-5754-true        
        PushI        1                         
        Jump         -compare-5754-join        
        Label        -compare-5754-false       
        PushI        0                         
        Jump         -compare-5754-join        
        Label        -compare-5754-join        
        JumpTrue     -print-boolean-5755-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5755-join  
        Label        -print-boolean-5755-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5755-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5756-arg1        
        PushI        15                        
        Label        -compare-5756-arg2        
        PushI        35                        
        PushI        39                        
        Subtract                               
        Label        -compare-5756-sub         
        Subtract                               
        JumpPos      -compare-5756-true        
        Jump         -compare-5756-false       
        Label        -compare-5756-true        
        PushI        1                         
        Jump         -compare-5756-join        
        Label        -compare-5756-false       
        PushI        0                         
        Jump         -compare-5756-join        
        Label        -compare-5756-join        
        JumpTrue     -print-boolean-5757-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5757-join  
        Label        -print-boolean-5757-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5757-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5758-arg1        
        PushI        27                        
        Label        -compare-5758-arg2        
        PushI        77                        
        PushI        96                        
        Subtract                               
        Label        -compare-5758-sub         
        Subtract                               
        JumpPos      -compare-5758-true        
        Jump         -compare-5758-false       
        Label        -compare-5758-true        
        PushI        1                         
        Jump         -compare-5758-join        
        Label        -compare-5758-false       
        PushI        0                         
        Jump         -compare-5758-join        
        Label        -compare-5758-join        
        JumpTrue     -print-boolean-5759-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5759-join  
        Label        -print-boolean-5759-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5759-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5760-arg1        
        PushI        54                        
        Label        -compare-5760-arg2        
        PushI        31                        
        PushI        74                        
        Subtract                               
        Label        -compare-5760-sub         
        Subtract                               
        JumpPos      -compare-5760-true        
        Jump         -compare-5760-false       
        Label        -compare-5760-true        
        PushI        1                         
        Jump         -compare-5760-join        
        Label        -compare-5760-false       
        PushI        0                         
        Jump         -compare-5760-join        
        Label        -compare-5760-join        
        JumpTrue     -print-boolean-5761-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5761-join  
        Label        -print-boolean-5761-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5761-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5762-arg1        
        PushI        99                        
        Label        -compare-5762-arg2        
        PushI        24                        
        PushI        46                        
        Subtract                               
        Label        -compare-5762-sub         
        Subtract                               
        JumpPos      -compare-5762-true        
        Jump         -compare-5762-false       
        Label        -compare-5762-true        
        PushI        1                         
        Jump         -compare-5762-join        
        Label        -compare-5762-false       
        PushI        0                         
        Jump         -compare-5762-join        
        Label        -compare-5762-join        
        JumpTrue     -print-boolean-5763-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5763-join  
        Label        -print-boolean-5763-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5763-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5764-arg1        
        PushI        82                        
        Label        -compare-5764-arg2        
        PushI        95                        
        PushI        61                        
        Subtract                               
        Label        -compare-5764-sub         
        Subtract                               
        JumpPos      -compare-5764-true        
        Jump         -compare-5764-false       
        Label        -compare-5764-true        
        PushI        1                         
        Jump         -compare-5764-join        
        Label        -compare-5764-false       
        PushI        0                         
        Jump         -compare-5764-join        
        Label        -compare-5764-join        
        JumpTrue     -print-boolean-5765-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5765-join  
        Label        -print-boolean-5765-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5765-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5766-arg1        
        PushI        8                         
        Label        -compare-5766-arg2        
        PushI        93                        
        PushI        23                        
        Subtract                               
        Label        -compare-5766-sub         
        Subtract                               
        JumpPos      -compare-5766-true        
        Jump         -compare-5766-false       
        Label        -compare-5766-true        
        PushI        1                         
        Jump         -compare-5766-join        
        Label        -compare-5766-false       
        PushI        0                         
        Jump         -compare-5766-join        
        Label        -compare-5766-join        
        JumpTrue     -print-boolean-5767-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5767-join  
        Label        -print-boolean-5767-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5767-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5768-arg1        
        PushI        71                        
        Label        -compare-5768-arg2        
        PushI        85                        
        PushI        49                        
        Subtract                               
        Label        -compare-5768-sub         
        Subtract                               
        JumpPos      -compare-5768-true        
        Jump         -compare-5768-false       
        Label        -compare-5768-true        
        PushI        1                         
        Jump         -compare-5768-join        
        Label        -compare-5768-false       
        PushI        0                         
        Jump         -compare-5768-join        
        Label        -compare-5768-join        
        JumpTrue     -print-boolean-5769-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5769-join  
        Label        -print-boolean-5769-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5769-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5770-arg1        
        PushI        82                        
        Label        -compare-5770-arg2        
        PushI        90                        
        PushI        43                        
        Subtract                               
        Label        -compare-5770-sub         
        Subtract                               
        JumpPos      -compare-5770-true        
        Jump         -compare-5770-false       
        Label        -compare-5770-true        
        PushI        1                         
        Jump         -compare-5770-join        
        Label        -compare-5770-false       
        PushI        0                         
        Jump         -compare-5770-join        
        Label        -compare-5770-join        
        JumpTrue     -print-boolean-5771-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5771-join  
        Label        -print-boolean-5771-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5771-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5772-arg1        
        PushI        57                        
        Label        -compare-5772-arg2        
        PushI        64                        
        PushI        91                        
        Subtract                               
        Label        -compare-5772-sub         
        Subtract                               
        JumpPos      -compare-5772-true        
        Jump         -compare-5772-false       
        Label        -compare-5772-true        
        PushI        1                         
        Jump         -compare-5772-join        
        Label        -compare-5772-false       
        PushI        0                         
        Jump         -compare-5772-join        
        Label        -compare-5772-join        
        JumpTrue     -print-boolean-5773-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5773-join  
        Label        -print-boolean-5773-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5773-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5774-arg1        
        PushI        10                        
        PushI        44                        
        Subtract                               
        Label        -compare-5774-arg2        
        PushI        39                        
        PushI        85                        
        Subtract                               
        Label        -compare-5774-sub         
        Subtract                               
        JumpPos      -compare-5774-true        
        Jump         -compare-5774-false       
        Label        -compare-5774-true        
        PushI        1                         
        Jump         -compare-5774-join        
        Label        -compare-5774-false       
        PushI        0                         
        Jump         -compare-5774-join        
        Label        -compare-5774-join        
        JumpTrue     -print-boolean-5775-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5775-join  
        Label        -print-boolean-5775-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5775-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5776-arg1        
        PushI        5                         
        PushI        5                         
        Subtract                               
        Label        -compare-5776-arg2        
        PushI        71                        
        PushI        66                        
        Subtract                               
        Label        -compare-5776-sub         
        Subtract                               
        JumpPos      -compare-5776-true        
        Jump         -compare-5776-false       
        Label        -compare-5776-true        
        PushI        1                         
        Jump         -compare-5776-join        
        Label        -compare-5776-false       
        PushI        0                         
        Jump         -compare-5776-join        
        Label        -compare-5776-join        
        JumpTrue     -print-boolean-5777-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5777-join  
        Label        -print-boolean-5777-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5777-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5778-arg1        
        PushI        20                        
        PushI        48                        
        Subtract                               
        Label        -compare-5778-arg2        
        PushI        73                        
        PushI        35                        
        Subtract                               
        Label        -compare-5778-sub         
        Subtract                               
        JumpPos      -compare-5778-true        
        Jump         -compare-5778-false       
        Label        -compare-5778-true        
        PushI        1                         
        Jump         -compare-5778-join        
        Label        -compare-5778-false       
        PushI        0                         
        Jump         -compare-5778-join        
        Label        -compare-5778-join        
        JumpTrue     -print-boolean-5779-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5779-join  
        Label        -print-boolean-5779-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5779-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5780-arg1        
        PushI        49                        
        PushI        27                        
        Subtract                               
        Label        -compare-5780-arg2        
        PushI        66                        
        PushI        9                         
        Subtract                               
        Label        -compare-5780-sub         
        Subtract                               
        JumpPos      -compare-5780-true        
        Jump         -compare-5780-false       
        Label        -compare-5780-true        
        PushI        1                         
        Jump         -compare-5780-join        
        Label        -compare-5780-false       
        PushI        0                         
        Jump         -compare-5780-join        
        Label        -compare-5780-join        
        JumpTrue     -print-boolean-5781-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5781-join  
        Label        -print-boolean-5781-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5781-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5782-arg1        
        PushI        2                         
        PushI        90                        
        Subtract                               
        Label        -compare-5782-arg2        
        PushI        27                        
        PushI        74                        
        Subtract                               
        Label        -compare-5782-sub         
        Subtract                               
        JumpPos      -compare-5782-true        
        Jump         -compare-5782-false       
        Label        -compare-5782-true        
        PushI        1                         
        Jump         -compare-5782-join        
        Label        -compare-5782-false       
        PushI        0                         
        Jump         -compare-5782-join        
        Label        -compare-5782-join        
        JumpTrue     -print-boolean-5783-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5783-join  
        Label        -print-boolean-5783-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5783-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5784-arg1        
        PushI        99                        
        PushI        71                        
        Subtract                               
        Label        -compare-5784-arg2        
        PushI        52                        
        PushI        92                        
        Subtract                               
        Label        -compare-5784-sub         
        Subtract                               
        JumpPos      -compare-5784-true        
        Jump         -compare-5784-false       
        Label        -compare-5784-true        
        PushI        1                         
        Jump         -compare-5784-join        
        Label        -compare-5784-false       
        PushI        0                         
        Jump         -compare-5784-join        
        Label        -compare-5784-join        
        JumpTrue     -print-boolean-5785-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5785-join  
        Label        -print-boolean-5785-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5785-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5786-arg1        
        PushI        14                        
        PushI        80                        
        Subtract                               
        Label        -compare-5786-arg2        
        PushI        26                        
        PushI        16                        
        Subtract                               
        Label        -compare-5786-sub         
        Subtract                               
        JumpPos      -compare-5786-true        
        Jump         -compare-5786-false       
        Label        -compare-5786-true        
        PushI        1                         
        Jump         -compare-5786-join        
        Label        -compare-5786-false       
        PushI        0                         
        Jump         -compare-5786-join        
        Label        -compare-5786-join        
        JumpTrue     -print-boolean-5787-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5787-join  
        Label        -print-boolean-5787-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5787-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5788-arg1        
        PushI        75                        
        PushI        36                        
        Subtract                               
        Label        -compare-5788-arg2        
        PushI        55                        
        PushI        99                        
        Subtract                               
        Label        -compare-5788-sub         
        Subtract                               
        JumpPos      -compare-5788-true        
        Jump         -compare-5788-false       
        Label        -compare-5788-true        
        PushI        1                         
        Jump         -compare-5788-join        
        Label        -compare-5788-false       
        PushI        0                         
        Jump         -compare-5788-join        
        Label        -compare-5788-join        
        JumpTrue     -print-boolean-5789-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5789-join  
        Label        -print-boolean-5789-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5789-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5790-arg1        
        PushI        10                        
        PushI        97                        
        Subtract                               
        Label        -compare-5790-arg2        
        PushI        76                        
        PushI        59                        
        Subtract                               
        Label        -compare-5790-sub         
        Subtract                               
        JumpPos      -compare-5790-true        
        Jump         -compare-5790-false       
        Label        -compare-5790-true        
        PushI        1                         
        Jump         -compare-5790-join        
        Label        -compare-5790-false       
        PushI        0                         
        Jump         -compare-5790-join        
        Label        -compare-5790-join        
        JumpTrue     -print-boolean-5791-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5791-join  
        Label        -print-boolean-5791-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5791-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5792-arg1        
        PushI        37                        
        PushI        37                        
        Subtract                               
        Label        -compare-5792-arg2        
        PushI        77                        
        PushI        51                        
        Subtract                               
        Label        -compare-5792-sub         
        Subtract                               
        JumpPos      -compare-5792-true        
        Jump         -compare-5792-false       
        Label        -compare-5792-true        
        PushI        1                         
        Jump         -compare-5792-join        
        Label        -compare-5792-false       
        PushI        0                         
        Jump         -compare-5792-join        
        Label        -compare-5792-join        
        JumpTrue     -print-boolean-5793-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5793-join  
        Label        -print-boolean-5793-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5793-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5794-arg1        
        PushI        50                        
        PushI        16                        
        Subtract                               
        Label        -compare-5794-arg2        
        PushI        90                        
        PushI        17                        
        Subtract                               
        Label        -compare-5794-sub         
        Subtract                               
        JumpPos      -compare-5794-true        
        Jump         -compare-5794-false       
        Label        -compare-5794-true        
        PushI        1                         
        Jump         -compare-5794-join        
        Label        -compare-5794-false       
        PushI        0                         
        Jump         -compare-5794-join        
        Label        -compare-5794-join        
        JumpTrue     -print-boolean-5795-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5795-join  
        Label        -print-boolean-5795-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5795-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5796-arg1        
        PushI        29                        
        PushI        79                        
        Subtract                               
        Label        -compare-5796-arg2        
        PushI        11                        
        PushI        66                        
        Subtract                               
        Label        -compare-5796-sub         
        Subtract                               
        JumpPos      -compare-5796-true        
        Jump         -compare-5796-false       
        Label        -compare-5796-true        
        PushI        1                         
        Jump         -compare-5796-join        
        Label        -compare-5796-false       
        PushI        0                         
        Jump         -compare-5796-join        
        Label        -compare-5796-join        
        JumpTrue     -print-boolean-5797-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5797-join  
        Label        -print-boolean-5797-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5797-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
