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
        Label        -compare-2246-arg1        
        PushI        117                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2246-arg2        
        PushI        92                        
        Label        -compare-2246-sub         
        Subtract                               
        JumpFalse    -compare-2246-true        
        Jump         -compare-2246-false       
        Label        -compare-2246-true        
        PushI        1                         
        Jump         -compare-2246-join        
        Label        -compare-2246-false       
        PushI        0                         
        Jump         -compare-2246-join        
        Label        -compare-2246-join        
        JumpTrue     -print-boolean-2247-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2247-join  
        Label        -print-boolean-2247-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2247-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2248-arg1        
        PushI        107                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2248-arg2        
        PushI        38                        
        Label        -compare-2248-sub         
        Subtract                               
        JumpFalse    -compare-2248-true        
        Jump         -compare-2248-false       
        Label        -compare-2248-true        
        PushI        1                         
        Jump         -compare-2248-join        
        Label        -compare-2248-false       
        PushI        0                         
        Jump         -compare-2248-join        
        Label        -compare-2248-join        
        JumpTrue     -print-boolean-2249-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2249-join  
        Label        -print-boolean-2249-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2249-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2250-arg1        
        PushI        47                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2250-arg2        
        PushI        8                         
        Label        -compare-2250-sub         
        Subtract                               
        JumpFalse    -compare-2250-true        
        Jump         -compare-2250-false       
        Label        -compare-2250-true        
        PushI        1                         
        Jump         -compare-2250-join        
        Label        -compare-2250-false       
        PushI        0                         
        Jump         -compare-2250-join        
        Label        -compare-2250-join        
        JumpTrue     -print-boolean-2251-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2251-join  
        Label        -print-boolean-2251-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2251-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2252-arg1        
        PushI        97                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2252-arg2        
        PushI        12                        
        Label        -compare-2252-sub         
        Subtract                               
        JumpFalse    -compare-2252-true        
        Jump         -compare-2252-false       
        Label        -compare-2252-true        
        PushI        1                         
        Jump         -compare-2252-join        
        Label        -compare-2252-false       
        PushI        0                         
        Jump         -compare-2252-join        
        Label        -compare-2252-join        
        JumpTrue     -print-boolean-2253-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2253-join  
        Label        -print-boolean-2253-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2253-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2254-arg1        
        PushI        124                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2254-arg2        
        PushI        56                        
        Label        -compare-2254-sub         
        Subtract                               
        JumpFalse    -compare-2254-true        
        Jump         -compare-2254-false       
        Label        -compare-2254-true        
        PushI        1                         
        Jump         -compare-2254-join        
        Label        -compare-2254-false       
        PushI        0                         
        Jump         -compare-2254-join        
        Label        -compare-2254-join        
        JumpTrue     -print-boolean-2255-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2255-join  
        Label        -print-boolean-2255-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2255-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2256-arg1        
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2256-arg2        
        PushI        1                         
        Label        -compare-2256-sub         
        Subtract                               
        JumpFalse    -compare-2256-true        
        Jump         -compare-2256-false       
        Label        -compare-2256-true        
        PushI        1                         
        Jump         -compare-2256-join        
        Label        -compare-2256-false       
        PushI        0                         
        Jump         -compare-2256-join        
        Label        -compare-2256-join        
        JumpTrue     -print-boolean-2257-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2257-join  
        Label        -print-boolean-2257-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2257-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2258-arg1        
        PushI        106                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2258-arg2        
        PushI        30                        
        Label        -compare-2258-sub         
        Subtract                               
        JumpFalse    -compare-2258-true        
        Jump         -compare-2258-false       
        Label        -compare-2258-true        
        PushI        1                         
        Jump         -compare-2258-join        
        Label        -compare-2258-false       
        PushI        0                         
        Jump         -compare-2258-join        
        Label        -compare-2258-join        
        JumpTrue     -print-boolean-2259-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2259-join  
        Label        -print-boolean-2259-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2259-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2260-arg1        
        PushI        108                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2260-arg2        
        PushI        37                        
        Label        -compare-2260-sub         
        Subtract                               
        JumpFalse    -compare-2260-true        
        Jump         -compare-2260-false       
        Label        -compare-2260-true        
        PushI        1                         
        Jump         -compare-2260-join        
        Label        -compare-2260-false       
    