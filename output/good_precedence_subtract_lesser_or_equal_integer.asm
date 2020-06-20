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
        Label        -compare-6145-arg1        
        PushI        14                        
        PushI        59                        
        Subtract                               
        Label        -compare-6145-arg2        
        PushI        23                        
        Label        -compare-6145-sub         
        Subtract                               
        JumpPos      -compare-6145-false       
        Jump         -compare-6145-true        
        Label        -compare-6145-true        
        PushI        1                         
        Jump         -compare-6145-join        
        Label        -compare-6145-false       
        PushI        0                         
        Jump         -compare-6145-join        
        Label        -compare-6145-join        
        JumpTrue     -print-boolean-6146-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6146-join  
        Label        -print-boolean-6146-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6146-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6147-arg1        
        PushI        49                        
        PushI        14                        
        Subtract                               
        Label        -compare-6147-arg2        
        PushI        14                        
        Label        -compare-6147-sub         
        Subtract                               
        JumpPos      -compare-6147-false       
        Jump         -compare-6147-true        
        Label        -compare-6147-true        
        PushI        1                         
        Jump         -compare-6147-join        
        Label        -compare-6147-false       
        PushI        0                         
        Jump         -compare-6147-join        
        Label        -compare-6147-join        
        JumpTrue     -print-boolean-6148-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6148-join  
        Label        -print-boolean-6148-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6148-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6149-arg1        
        PushI        46                        
        PushI        16                        
        Subtract                               
        Label        -compare-6149-arg2        
        PushI        8                         
        Label        -compare-6149-sub         
        Subtract                               
        JumpPos      -compare-6149-false       
        Jump         -compare-6149-true        
        Label        -compare-6149-true        
        PushI        1                         
        Jump         -compare-6149-join        
        Label        -compare-6149-false       
        PushI        0                         
        Jump         -compare-6149-join        
        Label        -compare-6149-join        
        JumpTrue     -print-boolean-6150-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6150-join  
        Label        -print-boolean-6150-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6150-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6151-arg1        
        PushI        21                        
        PushI        82                        
        Subtract                               
        Label        -compare-6151-arg2        
        PushI        34                        
        Label        -compare-6151-sub         
        Subtract                               
        JumpPos      -compare-6151-false       
        Jump         -compare-6151-true        
        Label        -compare-6151-true        
        PushI        1                         
        Jump         -compare-6151-join        
        Label        -compare-6151-false       
        PushI        0                         
        Jump         -compare-6151-join        
        Label        -compare-6151-join        
        JumpTrue     -print-boolean-6152-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6152-join  
        Label        -print-boolean-6152-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6152-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6153-arg1        
        PushI        34                        
        PushI        28                        
        Subtract                               
        Label        -compare-6153-arg2        
        PushI        29                        
        Label        -compare-6153-sub         
        Subtract                               
        JumpPos      -compare-6153-false       
        Jump         -compare-6153-true        
        Label        -compare-6153-true        
        PushI        1                         
        Jump         -compare-6153-join        
        Label        -compare-6153-false       
        PushI        0                         
        Jump         -compare-6153-join        
        Label        -compare-6153-join        
        JumpTrue     -print-boolean-6154-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6154-join  
        Label        -print-boolean-6154-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6154-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6155-arg1        
        PushI        61                        
        PushI        18                        
        Subtract                               
        Label        -compare-6155-arg2        
        PushI        90                        
        Label        -compare-6155-sub         
        Subtract                               
        JumpPos      -compare-6155-false       
        Jump         -compare-6155-true        
        Label        -compare-6155-true        
        PushI        1                         
        Jump         -compare-6155-join        
        Label        -compare-6155-false       
        PushI        0                         
        Jump         -compare-6155-join        
        Label        -compare-6155-join        
        JumpTrue     -print-boolean-6156-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6156-join  
        Label        -print-boolean-6156-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6156-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6157-arg1        
        PushI        40                        
        PushI        68                        
        Subtract                               
        Label        -compare-6157-arg2        
        PushI        74                        
        Label        -compare-6157-sub         
        Subtract                               
        JumpPos      -compare-6157-false       
        Jump         -compare-6157-true        
        Label        -compare-6157-true        
        PushI        1                         
        Jump         -compare-6157-join        
        Label        -compare-6157-false       
        PushI        0                         
        Jump         -compare-6157-join        
        Label        -compare-6157-join        
        JumpTrue     -print-boolean-6158-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6158-join  
        Label        -print-boolean-6158-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6158-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6159-arg1        
        PushI        46                        
        PushI        51                        
        Subtract                               
        Label        -compare-6159-arg2        
        PushI        26                        
        Label        -compare-6159-sub         
        Subtract                               
        JumpPos      -compare-6159-false       
        Jump         -compare-6159-true        
        Label        -compare-6159-true        
        PushI        1                         
        Jump         -compare-6159-join        
        Label        -compare-6159-false       
        PushI        0                         
        Jump         -compare-6159-join        
        Label        -compare-6159-join        
        JumpTrue     -print-boolean-6160-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6160-join  
        Label        -print-boolean-6160-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6160-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6161-arg1        
        PushI        81                        
        PushI        38                        
        Subtract                               
        Label        -compare-6161-arg2        
        PushI        68                        
        Label        -compare-6161-sub         
        Subtract                               
        JumpPos      -compare-6161-false       
        Jump         -compare-6161-true        
        Label        -compare-6161-true        
        PushI        1                         
        Jump         -compare-6161-join        
        Label        -compare-6161-false       
        PushI        0                         
        Jump         -compare-6161-join        
        Label        -compare-6161-join        
        JumpTrue     -print-boolean-6162-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6162-join  
        Label        -print-boolean-6162-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6162-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6163-arg1        
        PushI        82                        
        PushI        54                        
        Subtract                               
        Label        -compare-6163-arg2        
        PushI        3                         
        Label        -compare-6163-sub         
        Subtract                               
        JumpPos      -compare-6163-false       
        Jump         -compare-6163-true        
        Label        -compare-6163-true        
        PushI        1                         
        Jump         -compare-6163-join        
        Label        -compare-6163-false       
        PushI        0                         
        Jump         -compare-6163-join        
        Label        -compare-6163-join        
        JumpTrue     -print-boolean-6164-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6164-join  
        Label        -print-boolean-6164-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6164-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6165-arg1        
        PushI        37                        
        PushI        13                        
        Subtract                               
        Label        -compare-6165-arg2        
        PushI        3                         
        Label        -compare-6165-sub         
        Subtract                               
        JumpPos      -compare-6165-false       
        Jump         -compare-6165-true        
        Label        -compare-6165-true        
        PushI        1                         
        Jump         -compare-6165-join        
        Label        -compare-6165-false       
        PushI        0                         
        Jump         -compare-6165-join        
        Label        -compare-6165-join        
        JumpTrue     -print-boolean-6166-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6166-join  
        Label        -print-boolean-6166-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6166-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6167-arg1        
        PushI        70                        
        PushI        8                         
        Subtract                               
        Label        -compare-6167-arg2        
        PushI        84                        
        Label        -compare-6167-sub         
        Subtract                               
        JumpPos      -compare-6167-false       
        Jump         -compare-6167-true        
        Label        -compare-6167-true        
        PushI        1                         
        Jump         -compare-6167-join        
        Label        -compare-6167-false       
        PushI        0                         
        Jump         -compare-6167-join        
        Label        -compare-6167-join        
        JumpTrue     -print-boolean-6168-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6168-join  
        Label        -print-boolean-6168-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6168-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6169-arg1        
        PushI        74                        
        Label        -compare-6169-arg2        
        PushI        71                        
        PushI        59                        
        Subtract                               
        Label        -compare-6169-sub         
        Subtract                               
        JumpPos      -compare-6169-false       
        Jump         -compare-6169-true        
        Label        -compare-6169-true        
        PushI        1                         
        Jump         -compare-6169-join        
        Label        -compare-6169-false       
        PushI        0                         
        Jump         -compare-6169-join        
        Label        -compare-6169-join        
        JumpTrue     -print-boolean-6170-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6170-join  
        Label        -print-boolean-6170-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6170-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6171-arg1        
        PushI        84                        
        Label        -compare-6171-arg2        
        PushI        49                        
        PushI        85                        
        Subtract                               
        Label        -compare-6171-sub         
        Subtract                               
        JumpPos      -compare-6171-false       
        Jump         -compare-6171-true        
        Label        -compare-6171-true        
        PushI        1                         
        Jump         -compare-6171-join        
        Label        -compare-6171-false       
        PushI        0                         
        Jump         -compare-6171-join        
        Label        -compare-6171-join        
        JumpTrue     -print-boolean-6172-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6172-join  
        Label        -print-boolean-6172-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6172-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6173-arg1        
        PushI        61                        
        Label        -compare-6173-arg2        
        PushI        48                        
        PushI        92                        
        Subtract                               
        Label        -compare-6173-sub         
        Subtract                               
        JumpPos      -compare-6173-false       
        Jump         -compare-6173-true        
        Label        -compare-6173-true        
        PushI        1                         
        Jump         -compare-6173-join        
        Label        -compare-6173-false       
        PushI        0                         
        Jump         -compare-6173-join        
        Label        -compare-6173-join        
        JumpTrue     -print-boolean-6174-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6174-join  
        Label        -print-boolean-6174-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6174-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6175-arg1        
        PushI        36                        
        Label        -compare-6175-arg2        
        PushI        60                        
        PushI        41                        
        Subtract                               
        Label        -compare-6175-sub         
        Subtract                               
        JumpPos      -compare-6175-false       
        Jump         -compare-6175-true        
        Label        -compare-6175-true        
        PushI        1                         
        Jump         -compare-6175-join        
        Label        -compare-6175-false       
        PushI        0                         
        Jump         -compare-6175-join        
        Label        -compare-6175-join        
        JumpTrue     -print-boolean-6176-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6176-join  
        Label        -print-boolean-6176-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6176-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6177-arg1        
        PushI        65                        
        Label        -compare-6177-arg2        
        PushI        44                        
        PushI        28                        
        Subtract                               
        Label        -compare-6177-sub         
        Subtract                               
        JumpPos      -compare-6177-false       
        Jump         -compare-6177-true        
        Label        -compare-6177-true        
        PushI        1                         
        Jump         -compare-6177-join        
        Label        -compare-6177-false       
        PushI        0                         
        Jump         -compare-6177-join        
        Label        -compare-6177-join        
        JumpTrue     -print-boolean-6178-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6178-join  
        Label        -print-boolean-6178-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6178-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6179-arg1        
        PushI        20                        
        Label        -compare-6179-arg2        
        PushI        41                        
        PushI        69                        
        Subtract                               
        Label        -compare-6179-sub         
        Subtract                               
        JumpPos      -compare-6179-false       
        Jump         -compare-6179-true        
        Label        -compare-6179-true        
        PushI        1                         
        Jump         -compare-6179-join        
        Label        -compare-6179-false       
        PushI        0                         
        Jump         -compare-6179-join        
        Label        -compare-6179-join        
        JumpTrue     -print-boolean-6180-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6180-join  
        Label        -print-boolean-6180-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6180-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6181-arg1        
        PushI        25                        
        Label        -compare-6181-arg2        
        PushI        53                        
        PushI        63                        
        Subtract                               
        Label        -compare-6181-sub         
        Subtract                               
        JumpPos      -compare-6181-false       
        Jump         -compare-6181-true        
        Label        -compare-6181-true        
        PushI        1                         
        Jump         -compare-6181-join        
        Label        -compare-6181-false       
        PushI        0                         
        Jump         -compare-6181-join        
        Label        -compare-6181-join        
        JumpTrue     -print-boolean-6182-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6182-join  
        Label        -print-boolean-6182-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6182-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6183-arg1        
        PushI        55                        
        Label        -compare-6183-arg2        
        PushI        70                        
        PushI        15                        
        Subtract                               
        Label        -compare-6183-sub         
        Subtract                               
        JumpPos      -compare-6183-false       
        Jump         -compare-6183-true        
        Label        -compare-6183-true        
        PushI        1                         
        Jump         -compare-6183-join        
        Label        -compare-6183-false       
        PushI        0                         
        Jump         -compare-6183-join        
        Label        -compare-6183-join        
        JumpTrue     -print-boolean-6184-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6184-join  
        Label        -print-boolean-6184-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6184-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6185-arg1        
        PushI        33                        
        Label        -compare-6185-arg2        
        PushI        86                        
        PushI        73                        
        Subtract                               
        Label        -compare-6185-sub         
        Subtract                               
        JumpPos      -compare-6185-false       
        Jump         -compare-6185-true        
        Label        -compare-6185-true        
        PushI        1                         
        Jump         -compare-6185-join        
        Label        -compare-6185-false       
        PushI        0                         
        Jump         -compare-6185-join        
        Label        -compare-6185-join        
        JumpTrue     -print-boolean-6186-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6186-join  
        Label        -print-boolean-6186-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6186-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6187-arg1        
        PushI        4                         
        Label        -compare-6187-arg2        
        PushI        82                        
        PushI        61                        
        Subtract                               
        Label        -compare-6187-sub         
        Subtract                               
        JumpPos      -compare-6187-false       
        Jump         -compare-6187-true        
        Label        -compare-6187-true        
        PushI        1                         
        Jump         -compare-6187-join        
        Label        -compare-6187-false       
        PushI        0                         
        Jump         -compare-6187-join        
        Label        -compare-6187-join        
        JumpTrue     -print-boolean-6188-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6188-join  
        Label        -print-boolean-6188-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6188-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6189-arg1        
        PushI        14                        
        Label        -compare-6189-arg2        
        PushI        88                        
        PushI        50                        
        Subtract                               
        Label        -compare-6189-sub         
        Subtract                               
        JumpPos      -compare-6189-false       
        Jump         -compare-6189-true        
        Label        -compare-6189-true        
        PushI        1                         
        Jump         -compare-6189-join        
        Label        -compare-6189-false       
        PushI        0                         
        Jump         -compare-6189-join        
        Label        -compare-6189-join        
        JumpTrue     -print-boolean-6190-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6190-join  
        Label        -print-boolean-6190-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6190-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6191-arg1        
        PushI        38                        
        Label        -compare-6191-arg2        
        PushI        51                        
        PushI        27                        
        Subtract                               
        Label        -compare-6191-sub         
        Subtract                               
        JumpPos      -compare-6191-false       
        Jump         -compare-6191-true        
        Label        -compare-6191-true        
        PushI        1                         
        Jump         -compare-6191-join        
        Label        -compare-6191-false       
        PushI        0                         
        Jump         -compare-6191-join        
        Label        -compare-6191-join        
        JumpTrue     -print-boolean-6192-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6192-join  
        Label        -print-boolean-6192-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6192-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6193-arg1        
        PushI        93                        
        PushI        87                        
        Subtract                               
        Label        -compare-6193-arg2        
        PushI        96                        
        PushI        97                        
        Subtract                               
        Label        -compare-6193-sub         
        Subtract                               
        JumpPos      -compare-6193-false       
        Jump         -compare-6193-true        
        Label        -compare-6193-true        
        PushI        1                         
        Jump         -compare-6193-join        
        Label        -compare-6193-false       
        PushI        0                         
        Jump         -compare-6193-join        
        Label        -compare-6193-join        
        JumpTrue     -print-boolean-6194-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6194-join  
        Label        -print-boolean-6194-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6194-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6195-arg1        
        PushI        87                        
        PushI        85                        
        Subtract                               
        Label        -compare-6195-arg2        
        PushI        60                        
        PushI        5                         
        Subtract                               
        Label        -compare-6195-sub         
        Subtract                               
        JumpPos      -compare-6195-false       
        Jump         -compare-6195-true        
        Label        -compare-6195-true        
        PushI        1                         
        Jump         -compare-6195-join        
        Label        -compare-6195-false       
        PushI        0                         
        Jump         -compare-6195-join        
        Label        -compare-6195-join        
        JumpTrue     -print-boolean-6196-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6196-join  
        Label        -print-boolean-6196-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6196-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6197-arg1        
        PushI        22                        
        PushI        41                        
        Subtract                               
        Label        -compare-6197-arg2        
        PushI        5                         
        PushI        71                        
        Subtract                               
        Label        -compare-6197-sub         
        Subtract                               
        JumpPos      -compare-6197-false       
        Jump         -compare-6197-true        
        Label        -compare-6197-true        
        PushI        1                         
        Jump         -compare-6197-join        
        Label        -compare-6197-false       
        PushI        0                         
        Jump         -compare-6197-join        
        Label        -compare-6197-join        
        JumpTrue     -print-boolean-6198-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6198-join  
        Label        -print-boolean-6198-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6198-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6199-arg1        
        PushI        93                        
        PushI        8                         
        Subtract                               
        Label        -compare-6199-arg2        
        PushI        30                        
        PushI        27                        
        Subtract                               
        Label        -compare-6199-sub         
        Subtract                               
        JumpPos      -compare-6199-false       
        Jump         -compare-6199-true        
        Label        -compare-6199-true        
        PushI        1                         
        Jump         -compare-6199-join        
        Label        -compare-6199-false       
        PushI        0                         
        Jump         -compare-6199-join        
        Label        -compare-6199-join        
        JumpTrue     -print-boolean-6200-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6200-join  
        Label        -print-boolean-6200-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6200-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6201-arg1        
        PushI        81                        
        PushI        6                         
        Subtract                               
        Label        -compare-6201-arg2        
        PushI        35                        
        PushI        85                        
        Subtract                               
        Label        -compare-6201-sub         
        Subtract                               
        JumpPos      -compare-6201-false       
        Jump         -compare-6201-true        
        Label        -compare-6201-true        
        PushI        1                         
        Jump         -compare-6201-join        
        Label        -compare-6201-false       
        PushI        0                         
        Jump         -compare-6201-join        
        Label        -compare-6201-join        
        JumpTrue     -print-boolean-6202-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6202-join  
        Label        -print-boolean-6202-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6202-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6203-arg1        
        PushI        42                        
        PushI        90                        
        Subtract                               
        Label        -compare-6203-arg2        
        PushI        28                        
        PushI        22                        
        Subtract                               
        Label        -compare-6203-sub         
        Subtract                               
        JumpPos      -compare-6203-false       
        Jump         -compare-6203-true        
        Label        -compare-6203-true        
        PushI        1                         
        Jump         -compare-6203-join        
        Label        -compare-6203-false       
        PushI        0                         
        Jump         -compare-6203-join        
        Label        -compare-6203-join        
        JumpTrue     -print-boolean-6204-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6204-join  
        Label        -print-boolean-6204-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6204-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6205-arg1        
        PushI        98                        
        PushI        47                        
        Subtract                               
        Label        -compare-6205-arg2        
        PushI        19                        
        PushI        38                        
        Subtract                               
        Label        -compare-6205-sub         
        Subtract                               
        JumpPos      -compare-6205-false       
        Jump         -compare-6205-true        
        Label        -compare-6205-true        
        PushI        1                         
        Jump         -compare-6205-join        
        Label        -compare-6205-false       
        PushI        0                         
        Jump         -compare-6205-join        
        Label        -compare-6205-join        
        JumpTrue     -print-boolean-6206-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6206-join  
        Label        -print-boolean-6206-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6206-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6207-arg1        
        PushI        81                        
        PushI        32                        
        Subtract                               
        Label        -compare-6207-arg2        
        PushI        71                        
        PushI        61                        
        Subtract                               
        Label        -compare-6207-sub         
        Subtract                               
        JumpPos      -compare-6207-false       
        Jump         -compare-6207-true        
        Label        -compare-6207-true        
        PushI        1                         
        Jump         -compare-6207-join        
        Label        -compare-6207-false       
        PushI        0                         
        Jump         -compare-6207-join        
        Label        -compare-6207-join        
        JumpTrue     -print-boolean-6208-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6208-join  
        Label        -print-boolean-6208-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6208-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6209-arg1        
        PushI        78                        
        PushI        66                        
        Subtract                               
        Label        -compare-6209-arg2        
        PushI        3                         
        PushI        69                        
        Subtract                               
        Label        -compare-6209-sub         
        Subtract                               
        JumpPos      -compare-6209-false       
        Jump         -compare-6209-true        
        Label        -compare-6209-true        
        PushI        1                         
        Jump         -compare-6209-join        
        Label        -compare-6209-false       
        PushI        0                         
        Jump         -compare-6209-join        
        Label        -compare-6209-join        
        JumpTrue     -print-boolean-6210-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6210-join  
        Label        -print-boolean-6210-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6210-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6211-arg1        
        PushI        33                        
        PushI        67                        
        Subtract                               
        Label        -compare-6211-arg2        
        PushI        39                        
        PushI        13                        
        Subtract                               
        Label        -compare-6211-sub         
        Subtract                               
        JumpPos      -compare-6211-false       
        Jump         -compare-6211-true        
        Label        -compare-6211-true        
        PushI        1                         
        Jump         -compare-6211-join        
        Label        -compare-6211-false       
        PushI        0                         
        Jump         -compare-6211-join        
        Label        -compare-6211-join        
        JumpTrue     -print-boolean-6212-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6212-join  
        Label        -print-boolean-6212-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6212-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6213-arg1        
        PushI        78                        
        PushI        87                        
        Subtract                               
        Label        -compare-6213-arg2        
        PushI        74                        
        PushI        50                        
        Subtract                               
        Label        -compare-6213-sub         
        Subtract                               
        JumpPos      -compare-6213-false       
        Jump         -compare-6213-true        
        Label        -compare-6213-true        
        PushI        1                         
        Jump         -compare-6213-join        
        Label        -compare-6213-false       
        PushI        0                         
        Jump         -compare-6213-join        
        Label        -compare-6213-join        
        JumpTrue     -print-boolean-6214-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6214-join  
        Label        -print-boolean-6214-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6214-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6215-arg1        
        PushI        14                        
        PushI        64                        
        Subtract                               
        Label        -compare-6215-arg2        
        PushI        83                        
        PushI        31                        
        Subtract                               
        Label        -compare-6215-sub         
        Subtract                               
        JumpPos      -compare-6215-false       
        Jump         -compare-6215-true        
        Label        -compare-6215-true        
        PushI        1                         
        Jump         -compare-6215-join        
        Label        -compare-6215-false       
        PushI        0                         
        Jump         -compare-6215-join        
        Label        -compare-6215-join        
        JumpTrue     -print-boolean-6216-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6216-join  
        Label        -print-boolean-6216-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6216-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
