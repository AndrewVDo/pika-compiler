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
        Label        -compare-6158-arg1        
        PushI        14                        
        PushI        59                        
        Subtract                               
        Label        -compare-6158-arg2        
        PushI        23                        
        Label        -compare-6158-sub         
        Subtract                               
        JumpPos      -compare-6158-false       
        Jump         -compare-6158-true        
        Label        -compare-6158-true        
        PushI        1                         
        Jump         -compare-6158-join        
        Label        -compare-6158-false       
        PushI        0                         
        Jump         -compare-6158-join        
        Label        -compare-6158-join        
        JumpTrue     -print-boolean-6159-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6159-join  
        Label        -print-boolean-6159-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6159-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6160-arg1        
        PushI        49                        
        PushI        14                        
        Subtract                               
        Label        -compare-6160-arg2        
        PushI        14                        
        Label        -compare-6160-sub         
        Subtract                               
        JumpPos      -compare-6160-false       
        Jump         -compare-6160-true        
        Label        -compare-6160-true        
        PushI        1                         
        Jump         -compare-6160-join        
        Label        -compare-6160-false       
        PushI        0                         
        Jump         -compare-6160-join        
        Label        -compare-6160-join        
        JumpTrue     -print-boolean-6161-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6161-join  
        Label        -print-boolean-6161-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6161-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6162-arg1        
        PushI        46                        
        PushI        16                        
        Subtract                               
        Label        -compare-6162-arg2        
        PushI        8                         
        Label        -compare-6162-sub         
        Subtract                               
        JumpPos      -compare-6162-false       
        Jump         -compare-6162-true        
        Label        -compare-6162-true        
        PushI        1                         
        Jump         -compare-6162-join        
        Label        -compare-6162-false       
        PushI        0                         
        Jump         -compare-6162-join        
        Label        -compare-6162-join        
        JumpTrue     -print-boolean-6163-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6163-join  
        Label        -print-boolean-6163-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6163-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6164-arg1        
        PushI        21                        
        PushI        82                        
        Subtract                               
        Label        -compare-6164-arg2        
        PushI        34                        
        Label        -compare-6164-sub         
        Subtract                               
        JumpPos      -compare-6164-false       
        Jump         -compare-6164-true        
        Label        -compare-6164-true        
        PushI        1                         
        Jump         -compare-6164-join        
        Label        -compare-6164-false       
        PushI        0                         
        Jump         -compare-6164-join        
        Label        -compare-6164-join        
        JumpTrue     -print-boolean-6165-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6165-join  
        Label        -print-boolean-6165-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6165-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6166-arg1        
        PushI        34                        
        PushI        28                        
        Subtract                               
        Label        -compare-6166-arg2        
        PushI        29                        
        Label        -compare-6166-sub         
        Subtract                               
        JumpPos      -compare-6166-false       
        Jump         -compare-6166-true        
        Label        -compare-6166-true        
        PushI        1                         
        Jump         -compare-6166-join        
        Label        -compare-6166-false       
        PushI        0                         
        Jump         -compare-6166-join        
        Label        -compare-6166-join        
        JumpTrue     -print-boolean-6167-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6167-join  
        Label        -print-boolean-6167-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6167-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6168-arg1        
        PushI        61                        
        PushI        18                        
        Subtract                               
        Label        -compare-6168-arg2        
        PushI        90                        
        Label        -compare-6168-sub         
        Subtract                               
        JumpPos      -compare-6168-false       
        Jump         -compare-6168-true        
        Label        -compare-6168-true        
        PushI        1                         
        Jump         -compare-6168-join        
        Label        -compare-6168-false       
        PushI        0                         
        Jump         -compare-6168-join        
        Label        -compare-6168-join        
        JumpTrue     -print-boolean-6169-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6169-join  
        Label        -print-boolean-6169-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6169-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6170-arg1        
        PushI        40                        
        PushI        68                        
        Subtract                               
        Label        -compare-6170-arg2        
        PushI        74                        
        Label        -compare-6170-sub         
        Subtract                               
        JumpPos      -compare-6170-false       
        Jump         -compare-6170-true        
        Label        -compare-6170-true        
        PushI        1                         
        Jump         -compare-6170-join        
        Label        -compare-6170-false       
        PushI        0                         
        Jump         -compare-6170-join        
        Label        -compare-6170-join        
        JumpTrue     -print-boolean-6171-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6171-join  
        Label        -print-boolean-6171-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6171-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6172-arg1        
        PushI        46                        
        PushI        51                        
        Subtract                               
        Label        -compare-6172-arg2        
        PushI        26                        
        Label        -compare-6172-sub         
        Subtract                               
        JumpPos      -compare-6172-false       
        Jump         -compare-6172-true        
        Label        -compare-6172-true        
        PushI        1                         
        Jump         -compare-6172-join        
        Label        -compare-6172-false       
        PushI        0                         
        Jump         -compare-6172-join        
        Label        -compare-6172-join        
        JumpTrue     -print-boolean-6173-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6173-join  
        Label        -print-boolean-6173-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6173-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6174-arg1        
        PushI        81                        
        PushI        38                        
        Subtract                               
        Label        -compare-6174-arg2        
        PushI        68                        
        Label        -compare-6174-sub         
        Subtract                               
        JumpPos      -compare-6174-false       
        Jump         -compare-6174-true        
        Label        -compare-6174-true        
        PushI        1                         
        Jump         -compare-6174-join        
        Label        -compare-6174-false       
        PushI        0                         
        Jump         -compare-6174-join        
        Label        -compare-6174-join        
        JumpTrue     -print-boolean-6175-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6175-join  
        Label        -print-boolean-6175-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6175-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6176-arg1        
        PushI        82                        
        PushI        54                        
        Subtract                               
        Label        -compare-6176-arg2        
        PushI        3                         
        Label        -compare-6176-sub         
        Subtract                               
        JumpPos      -compare-6176-false       
        Jump         -compare-6176-true        
        Label        -compare-6176-true        
        PushI        1                         
        Jump         -compare-6176-join        
        Label        -compare-6176-false       
        PushI        0                         
        Jump         -compare-6176-join        
        Label        -compare-6176-join        
        JumpTrue     -print-boolean-6177-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6177-join  
        Label        -print-boolean-6177-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6177-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6178-arg1        
        PushI        37                        
        PushI        13                        
        Subtract                               
        Label        -compare-6178-arg2        
        PushI        3                         
        Label        -compare-6178-sub         
        Subtract                               
        JumpPos      -compare-6178-false       
        Jump         -compare-6178-true        
        Label        -compare-6178-true        
        PushI        1                         
        Jump         -compare-6178-join        
        Label        -compare-6178-false       
        PushI        0                         
        Jump         -compare-6178-join        
        Label        -compare-6178-join        
        JumpTrue     -print-boolean-6179-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6179-join  
        Label        -print-boolean-6179-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6179-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6180-arg1        
        PushI        70                        
        PushI        8                         
        Subtract                               
        Label        -compare-6180-arg2        
        PushI        84                        
        Label        -compare-6180-sub         
        Subtract                               
        JumpPos      -compare-6180-false       
        Jump         -compare-6180-true        
        Label        -compare-6180-true        
        PushI        1                         
        Jump         -compare-6180-join        
        Label        -compare-6180-false       
        PushI        0                         
        Jump         -compare-6180-join        
        Label        -compare-6180-join        
        JumpTrue     -print-boolean-6181-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6181-join  
        Label        -print-boolean-6181-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6181-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6182-arg1        
        PushI        74                        
        Label        -compare-6182-arg2        
        PushI        71                        
        PushI        59                        
        Subtract                               
        Label        -compare-6182-sub         
        Subtract                               
        JumpPos      -compare-6182-false       
        Jump         -compare-6182-true        
        Label        -compare-6182-true        
        PushI        1                         
        Jump         -compare-6182-join        
        Label        -compare-6182-false       
        PushI        0                         
        Jump         -compare-6182-join        
        Label        -compare-6182-join        
        JumpTrue     -print-boolean-6183-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6183-join  
        Label        -print-boolean-6183-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6183-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6184-arg1        
        PushI        84                        
        Label        -compare-6184-arg2        
        PushI        49                        
        PushI        85                        
        Subtract                               
        Label        -compare-6184-sub         
        Subtract                               
        JumpPos      -compare-6184-false       
        Jump         -compare-6184-true        
        Label        -compare-6184-true        
        PushI        1                         
        Jump         -compare-6184-join        
        Label        -compare-6184-false       
        PushI        0                         
        Jump         -compare-6184-join        
        Label        -compare-6184-join        
        JumpTrue     -print-boolean-6185-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6185-join  
        Label        -print-boolean-6185-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6185-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6186-arg1        
        PushI        61                        
        Label        -compare-6186-arg2        
        PushI        48                        
        PushI        92                        
        Subtract                               
        Label        -compare-6186-sub         
        Subtract                               
        JumpPos      -compare-6186-false       
        Jump         -compare-6186-true        
        Label        -compare-6186-true        
        PushI        1                         
        Jump         -compare-6186-join        
        Label        -compare-6186-false       
        PushI        0                         
        Jump         -compare-6186-join        
        Label        -compare-6186-join        
        JumpTrue     -print-boolean-6187-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6187-join  
        Label        -print-boolean-6187-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6187-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6188-arg1        
        PushI        36                        
        Label        -compare-6188-arg2        
        PushI        60                        
        PushI        41                        
        Subtract                               
        Label        -compare-6188-sub         
        Subtract                               
        JumpPos      -compare-6188-false       
        Jump         -compare-6188-true        
        Label        -compare-6188-true        
        PushI        1                         
        Jump         -compare-6188-join        
        Label        -compare-6188-false       
        PushI        0                         
        Jump         -compare-6188-join        
        Label        -compare-6188-join        
        JumpTrue     -print-boolean-6189-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6189-join  
        Label        -print-boolean-6189-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6189-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6190-arg1        
        PushI        65                        
        Label        -compare-6190-arg2        
        PushI        44                        
        PushI        28                        
        Subtract                               
        Label        -compare-6190-sub         
        Subtract                               
        JumpPos      -compare-6190-false       
        Jump         -compare-6190-true        
        Label        -compare-6190-true        
        PushI        1                         
        Jump         -compare-6190-join        
        Label        -compare-6190-false       
        PushI        0                         
        Jump         -compare-6190-join        
        Label        -compare-6190-join        
        JumpTrue     -print-boolean-6191-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6191-join  
        Label        -print-boolean-6191-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6191-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6192-arg1        
        PushI        20                        
        Label        -compare-6192-arg2        
        PushI        41                        
        PushI        69                        
        Subtract                               
        Label        -compare-6192-sub         
        Subtract                               
        JumpPos      -compare-6192-false       
        Jump         -compare-6192-true        
        Label        -compare-6192-true        
        PushI        1                         
        Jump         -compare-6192-join        
        Label        -compare-6192-false       
        PushI        0                         
        Jump         -compare-6192-join        
        Label        -compare-6192-join        
        JumpTrue     -print-boolean-6193-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6193-join  
        Label        -print-boolean-6193-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6193-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6194-arg1        
        PushI        25                        
        Label        -compare-6194-arg2        
        PushI        53                        
        PushI        63                        
        Subtract                               
        Label        -compare-6194-sub         
        Subtract                               
        JumpPos      -compare-6194-false       
        Jump         -compare-6194-true        
        Label        -compare-6194-true        
        PushI        1                         
        Jump         -compare-6194-join        
        Label        -compare-6194-false       
        PushI        0                         
        Jump         -compare-6194-join        
        Label        -compare-6194-join        
        JumpTrue     -print-boolean-6195-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6195-join  
        Label        -print-boolean-6195-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6195-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6196-arg1        
        PushI        55                        
        Label        -compare-6196-arg2        
        PushI        70                        
        PushI        15                        
        Subtract                               
        Label        -compare-6196-sub         
        Subtract                               
        JumpPos      -compare-6196-false       
        Jump         -compare-6196-true        
        Label        -compare-6196-true        
        PushI        1                         
        Jump         -compare-6196-join        
        Label        -compare-6196-false       
        PushI        0                         
        Jump         -compare-6196-join        
        Label        -compare-6196-join        
        JumpTrue     -print-boolean-6197-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6197-join  
        Label        -print-boolean-6197-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6197-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6198-arg1        
        PushI        33                        
        Label        -compare-6198-arg2        
        PushI        86                        
        PushI        73                        
        Subtract                               
        Label        -compare-6198-sub         
        Subtract                               
        JumpPos      -compare-6198-false       
        Jump         -compare-6198-true        
        Label        -compare-6198-true        
        PushI        1                         
        Jump         -compare-6198-join        
        Label        -compare-6198-false       
        PushI        0                         
        Jump         -compare-6198-join        
        Label        -compare-6198-join        
        JumpTrue     -print-boolean-6199-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6199-join  
        Label        -print-boolean-6199-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6199-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6200-arg1        
        PushI        4                         
        Label        -compare-6200-arg2        
        PushI        82                        
        PushI        61                        
        Subtract                               
        Label        -compare-6200-sub         
        Subtract                               
        JumpPos      -compare-6200-false       
        Jump         -compare-6200-true        
        Label        -compare-6200-true        
        PushI        1                         
        Jump         -compare-6200-join        
        Label        -compare-6200-false       
        PushI        0                         
        Jump         -compare-6200-join        
        Label        -compare-6200-join        
        JumpTrue     -print-boolean-6201-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6201-join  
        Label        -print-boolean-6201-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6201-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6202-arg1        
        PushI        14                        
        Label        -compare-6202-arg2        
        PushI        88                        
        PushI        50                        
        Subtract                               
        Label        -compare-6202-sub         
        Subtract                               
        JumpPos      -compare-6202-false       
        Jump         -compare-6202-true        
        Label        -compare-6202-true        
        PushI        1                         
        Jump         -compare-6202-join        
        Label        -compare-6202-false       
        PushI        0                         
        Jump         -compare-6202-join        
        Label        -compare-6202-join        
        JumpTrue     -print-boolean-6203-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6203-join  
        Label        -print-boolean-6203-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6203-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6204-arg1        
        PushI        38                        
        Label        -compare-6204-arg2        
        PushI        51                        
        PushI        27                        
        Subtract                               
        Label        -compare-6204-sub         
        Subtract                               
        JumpPos      -compare-6204-false       
        Jump         -compare-6204-true        
        Label        -compare-6204-true        
        PushI        1                         
        Jump         -compare-6204-join        
        Label        -compare-6204-false       
        PushI        0                         
        Jump         -compare-6204-join        
        Label        -compare-6204-join        
        JumpTrue     -print-boolean-6205-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6205-join  
        Label        -print-boolean-6205-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6205-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6206-arg1        
        PushI        93                        
        PushI        87                        
        Subtract                               
        Label        -compare-6206-arg2        
        PushI        96                        
        PushI        97                        
        Subtract                               
        Label        -compare-6206-sub         
        Subtract                               
        JumpPos      -compare-6206-false       
        Jump         -compare-6206-true        
        Label        -compare-6206-true        
        PushI        1                         
        Jump         -compare-6206-join        
        Label        -compare-6206-false       
        PushI        0                         
        Jump         -compare-6206-join        
        Label        -compare-6206-join        
        JumpTrue     -print-boolean-6207-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6207-join  
        Label        -print-boolean-6207-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6207-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6208-arg1        
        PushI        87                        
        PushI        85                        
        Subtract                               
        Label        -compare-6208-arg2        
        PushI        60                        
        PushI        5                         
        Subtract                               
        Label        -compare-6208-sub         
        Subtract                               
        JumpPos      -compare-6208-false       
        Jump         -compare-6208-true        
        Label        -compare-6208-true        
        PushI        1                         
        Jump         -compare-6208-join        
        Label        -compare-6208-false       
        PushI        0                         
        Jump         -compare-6208-join        
        Label        -compare-6208-join        
        JumpTrue     -print-boolean-6209-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6209-join  
        Label        -print-boolean-6209-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6209-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6210-arg1        
        PushI        22                        
        PushI        41                        
        Subtract                               
        Label        -compare-6210-arg2        
        PushI        5                         
        PushI        71                        
        Subtract                               
        Label        -compare-6210-sub         
        Subtract                               
        JumpPos      -compare-6210-false       
        Jump         -compare-6210-true        
        Label        -compare-6210-true        
        PushI        1                         
        Jump         -compare-6210-join        
        Label        -compare-6210-false       
        PushI        0                         
        Jump         -compare-6210-join        
        Label        -compare-6210-join        
        JumpTrue     -print-boolean-6211-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6211-join  
        Label        -print-boolean-6211-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6211-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6212-arg1        
        PushI        93                        
        PushI        8                         
        Subtract                               
        Label        -compare-6212-arg2        
        PushI        30                        
        PushI        27                        
        Subtract                               
        Label        -compare-6212-sub         
        Subtract                               
        JumpPos      -compare-6212-false       
        Jump         -compare-6212-true        
        Label        -compare-6212-true        
        PushI        1                         
        Jump         -compare-6212-join        
        Label        -compare-6212-false       
        PushI        0                         
        Jump         -compare-6212-join        
        Label        -compare-6212-join        
        JumpTrue     -print-boolean-6213-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6213-join  
        Label        -print-boolean-6213-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6213-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6214-arg1        
        PushI        81                        
        PushI        6                         
        Subtract                               
        Label        -compare-6214-arg2        
        PushI        35                        
        PushI        85                        
        Subtract                               
        Label        -compare-6214-sub         
        Subtract                               
        JumpPos      -compare-6214-false       
        Jump         -compare-6214-true        
        Label        -compare-6214-true        
        PushI        1                         
        Jump         -compare-6214-join        
        Label        -compare-6214-false       
        PushI        0                         
        Jump         -compare-6214-join        
        Label        -compare-6214-join        
        JumpTrue     -print-boolean-6215-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6215-join  
        Label        -print-boolean-6215-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6215-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6216-arg1        
        PushI        42                        
        PushI        90                        
        Subtract                               
        Label        -compare-6216-arg2        
        PushI        28                        
        PushI        22                        
        Subtract                               
        Label        -compare-6216-sub         
        Subtract                               
        JumpPos      -compare-6216-false       
        Jump         -compare-6216-true        
        Label        -compare-6216-true        
        PushI        1                         
        Jump         -compare-6216-join        
        Label        -compare-6216-false       
        PushI        0                         
        Jump         -compare-6216-join        
        Label        -compare-6216-join        
        JumpTrue     -print-boolean-6217-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6217-join  
        Label        -print-boolean-6217-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6217-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6218-arg1        
        PushI        98                        
        PushI        47                        
        Subtract                               
        Label        -compare-6218-arg2        
        PushI        19                        
        PushI        38                        
        Subtract                               
        Label        -compare-6218-sub         
        Subtract                               
        JumpPos      -compare-6218-false       
        Jump         -compare-6218-true        
        Label        -compare-6218-true        
        PushI        1                         
        Jump         -compare-6218-join        
        Label        -compare-6218-false       
        PushI        0                         
        Jump         -compare-6218-join        
        Label        -compare-6218-join        
        JumpTrue     -print-boolean-6219-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6219-join  
        Label        -print-boolean-6219-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6219-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6220-arg1        
        PushI        81                        
        PushI        32                        
        Subtract                               
        Label        -compare-6220-arg2        
        PushI        71                        
        PushI        61                        
        Subtract                               
        Label        -compare-6220-sub         
        Subtract                               
        JumpPos      -compare-6220-false       
        Jump         -compare-6220-true        
        Label        -compare-6220-true        
        PushI        1                         
        Jump         -compare-6220-join        
        Label        -compare-6220-false       
        PushI        0                         
        Jump         -compare-6220-join        
        Label        -compare-6220-join        
        JumpTrue     -print-boolean-6221-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6221-join  
        Label        -print-boolean-6221-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6221-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6222-arg1        
        PushI        78                        
        PushI        66                        
        Subtract                               
        Label        -compare-6222-arg2        
        PushI        3                         
        PushI        69                        
        Subtract                               
        Label        -compare-6222-sub         
        Subtract                               
        JumpPos      -compare-6222-false       
        Jump         -compare-6222-true        
        Label        -compare-6222-true        
        PushI        1                         
        Jump         -compare-6222-join        
        Label        -compare-6222-false       
        PushI        0                         
        Jump         -compare-6222-join        
        Label        -compare-6222-join        
        JumpTrue     -print-boolean-6223-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6223-join  
        Label        -print-boolean-6223-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6223-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6224-arg1        
        PushI        33                        
        PushI        67                        
        Subtract                               
        Label        -compare-6224-arg2        
        PushI        39                        
        PushI        13                        
        Subtract                               
        Label        -compare-6224-sub         
        Subtract                               
        JumpPos      -compare-6224-false       
        Jump         -compare-6224-true        
        Label        -compare-6224-true        
        PushI        1                         
        Jump         -compare-6224-join        
        Label        -compare-6224-false       
        PushI        0                         
        Jump         -compare-6224-join        
        Label        -compare-6224-join        
        JumpTrue     -print-boolean-6225-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6225-join  
        Label        -print-boolean-6225-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6225-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6226-arg1        
        PushI        78                        
        PushI        87                        
        Subtract                               
        Label        -compare-6226-arg2        
        PushI        74                        
        PushI        50                        
        Subtract                               
        Label        -compare-6226-sub         
        Subtract                               
        JumpPos      -compare-6226-false       
        Jump         -compare-6226-true        
        Label        -compare-6226-true        
        PushI        1                         
        Jump         -compare-6226-join        
        Label        -compare-6226-false       
        PushI        0                         
        Jump         -compare-6226-join        
        Label        -compare-6226-join        
        JumpTrue     -print-boolean-6227-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6227-join  
        Label        -print-boolean-6227-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6227-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6228-arg1        
        PushI        14                        
        PushI        64                        
        Subtract                               
        Label        -compare-6228-arg2        
        PushI        83                        
        PushI        31                        
        Subtract                               
        Label        -compare-6228-sub         
        Subtract                               
        JumpPos      -compare-6228-false       
        Jump         -compare-6228-true        
        Label        -compare-6228-true        
        PushI        1                         
        Jump         -compare-6228-join        
        Label        -compare-6228-false       
        PushI        0                         
        Jump         -compare-6228-join        
        Label        -compare-6228-join        
        JumpTrue     -print-boolean-6229-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6229-join  
        Label        -print-boolean-6229-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6229-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
