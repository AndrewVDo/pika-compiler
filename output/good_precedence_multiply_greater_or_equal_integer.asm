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
        Label        -compare-4657-arg1        
        PushI        8                         
        PushI        5                         
        Multiply                               
        Label        -compare-4657-arg2        
        PushI        93                        
        Label        -compare-4657-sub         
        Subtract                               
        JumpNeg      -compare-4657-false       
        Jump         -compare-4657-true        
        Label        -compare-4657-true        
        PushI        1                         
        Jump         -compare-4657-join        
        Label        -compare-4657-false       
        PushI        0                         
        Jump         -compare-4657-join        
        Label        -compare-4657-join        
        JumpTrue     -print-boolean-4658-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4658-join  
        Label        -print-boolean-4658-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4658-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4659-arg1        
        PushI        9                         
        PushI        15                        
        Multiply                               
        Label        -compare-4659-arg2        
        PushI        43                        
        Label        -compare-4659-sub         
        Subtract                               
        JumpNeg      -compare-4659-false       
        Jump         -compare-4659-true        
        Label        -compare-4659-true        
        PushI        1                         
        Jump         -compare-4659-join        
        Label        -compare-4659-false       
        PushI        0                         
        Jump         -compare-4659-join        
        Label        -compare-4659-join        
        JumpTrue     -print-boolean-4660-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4660-join  
        Label        -print-boolean-4660-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4660-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4661-arg1        
        PushI        83                        
        PushI        5                         
        Multiply                               
        Label        -compare-4661-arg2        
        PushI        77                        
        Label        -compare-4661-sub         
        Subtract                               
        JumpNeg      -compare-4661-false       
        Jump         -compare-4661-true        
        Label        -compare-4661-true        
        PushI        1                         
        Jump         -compare-4661-join        
        Label        -compare-4661-false       
        PushI        0                         
        Jump         -compare-4661-join        
        Label        -compare-4661-join        
        JumpTrue     -print-boolean-4662-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4662-join  
        Label        -print-boolean-4662-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4662-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4663-arg1        
        PushI        13                        
        PushI        99                        
        Multiply                               
        Label        -compare-4663-arg2        
        PushI        6                         
        Label        -compare-4663-sub         
        Subtract                               
        JumpNeg      -compare-4663-false       
        Jump         -compare-4663-true        
        Label        -compare-4663-true        
        PushI        1                         
        Jump         -compare-4663-join        
        Label        -compare-4663-false       
        PushI        0                         
        Jump         -compare-4663-join        
        Label        -compare-4663-join        
        JumpTrue     -print-boolean-4664-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4664-join  
        Label        -print-boolean-4664-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4664-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4665-arg1        
        PushI        87                        
        PushI        77                        
        Multiply                               
        Label        -compare-4665-arg2        
        PushI        91                        
        Label        -compare-4665-sub         
        Subtract                               
        JumpNeg      -compare-4665-false       
        Jump         -compare-4665-true        
        Label        -compare-4665-true        
        PushI        1                         
        Jump         -compare-4665-join        
        Label        -compare-4665-false       
        PushI        0                         
        Jump         -compare-4665-join        
        Label        -compare-4665-join        
        JumpTrue     -print-boolean-4666-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4666-join  
        Label        -print-boolean-4666-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4666-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4667-arg1        
        PushI        12                        
        PushI        32                        
        Multiply                               
        Label        -compare-4667-arg2        
        PushI        15                        
        Label        -compare-4667-sub         
        Subtract                               
        JumpNeg      -compare-4667-false       
        Jump         -compare-4667-true        
        Label        -compare-4667-true        
        PushI        1                         
        Jump         -compare-4667-join        
        Label        -compare-4667-false       
        PushI        0                         
        Jump         -compare-4667-join        
        Label        -compare-4667-join        
        JumpTrue     -print-boolean-4668-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4668-join  
        Label        -print-boolean-4668-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4668-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4669-arg1        
        PushI        66                        
        PushI        25                        
        Multiply                               
        Label        -compare-4669-arg2        
        PushI        80                        
        Label        -compare-4669-sub         
        Subtract                               
        JumpNeg      -compare-4669-false       
        Jump         -compare-4669-true        
        Label        -compare-4669-true        
        PushI        1                         
        Jump         -compare-4669-join        
        Label        -compare-4669-false       
        PushI        0                         
        Jump         -compare-4669-join        
        Label        -compare-4669-join        
        JumpTrue     -print-boolean-4670-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4670-join  
        Label        -print-boolean-4670-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4670-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4671-arg1        
        PushI        35                        
        PushI        7                         
        Multiply                               
        Label        -compare-4671-arg2        
        PushI        76                        
        Label        -compare-4671-sub         
        Subtract                               
        JumpNeg      -compare-4671-false       
        Jump         -compare-4671-true        
        Label        -compare-4671-true        
        PushI        1                         
        Jump         -compare-4671-join        
        Label        -compare-4671-false       
        PushI        0                         
        Jump         -compare-4671-join        
        Label        -compare-4671-join        
        JumpTrue     -print-boolean-4672-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4672-join  
        Label        -print-boolean-4672-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4672-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4673-arg1        
        PushI        41                        
        PushI        27                        
        Multiply                               
        Label        -compare-4673-arg2        
        PushI        35                        
        Label        -compare-4673-sub         
        Subtract                               
        JumpNeg      -compare-4673-false       
        Jump         -compare-4673-true        
        Label        -compare-4673-true        
        PushI        1                         
        Jump         -compare-4673-join        
        Label        -compare-4673-false       
        PushI        0                         
        Jump         -compare-4673-join        
        Label        -compare-4673-join        
        JumpTrue     -print-boolean-4674-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4674-join  
        Label        -print-boolean-4674-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4674-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4675-arg1        
        PushI        40                        
        PushI        52                        
        Multiply                               
        Label        -compare-4675-arg2        
        PushI        9                         
        Label        -compare-4675-sub         
        Subtract                               
        JumpNeg      -compare-4675-false       
        Jump         -compare-4675-true        
        Label        -compare-4675-true        
        PushI        1                         
        Jump         -compare-4675-join        
        Label        -compare-4675-false       
        PushI        0                         
        Jump         -compare-4675-join        
        Label        -compare-4675-join        
        JumpTrue     -print-boolean-4676-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4676-join  
        Label        -print-boolean-4676-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4676-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4677-arg1        
        PushI        56                        
        PushI        2                         
        Multiply                               
        Label        -compare-4677-arg2        
        PushI        30                        
        Label        -compare-4677-sub         
        Subtract                               
        JumpNeg      -compare-4677-false       
        Jump         -compare-4677-true        
        Label        -compare-4677-true        
        PushI        1                         
        Jump         -compare-4677-join        
        Label        -compare-4677-false       
        PushI        0                         
        Jump         -compare-4677-join        
        Label        -compare-4677-join        
        JumpTrue     -print-boolean-4678-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4678-join  
        Label        -print-boolean-4678-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4678-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4679-arg1        
        PushI        72                        
        PushI        67                        
        Multiply                               
        Label        -compare-4679-arg2        
        PushI        91                        
        Label        -compare-4679-sub         
        Subtract                               
        JumpNeg      -compare-4679-false       
        Jump         -compare-4679-true        
        Label        -compare-4679-true        
        PushI        1                         
        Jump         -compare-4679-join        
        Label        -compare-4679-false       
        PushI        0                         
        Jump         -compare-4679-join        
        Label        -compare-4679-join        
        JumpTrue     -print-boolean-4680-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4680-join  
        Label        -print-boolean-4680-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4680-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4681-arg1        
        PushI        94                        
        Label        -compare-4681-arg2        
        PushI        98                        
        PushI        77                        
        Multiply                               
        Label        -compare-4681-sub         
        Subtract                               
        JumpNeg      -compare-4681-false       
        Jump         -compare-4681-true        
        Label        -compare-4681-true        
        PushI        1                         
        Jump         -compare-4681-join        
        Label        -compare-4681-false       
        PushI        0                         
        Jump         -compare-4681-join        
        Label        -compare-4681-join        
        JumpTrue     -print-boolean-4682-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4682-join  
        Label        -print-boolean-4682-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4682-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4683-arg1        
        PushI        26                        
        Label        -compare-4683-arg2        
        PushI        29                        
        PushI        26                        
        Multiply                               
        Label        -compare-4683-sub         
        Subtract                               
        JumpNeg      -compare-4683-false       
        Jump         -compare-4683-true        
        Label        -compare-4683-true        
        PushI        1                         
        Jump         -compare-4683-join        
        Label        -compare-4683-false       
        PushI        0                         
        Jump         -compare-4683-join        
        Label        -compare-4683-join        
        JumpTrue     -print-boolean-4684-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4684-join  
        Label        -print-boolean-4684-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4684-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4685-arg1        
        PushI        54                        
        Label        -compare-4685-arg2        
        PushI        43                        
        PushI        34                        
        Multiply                               
        Label        -compare-4685-sub         
        Subtract                               
        JumpNeg      -compare-4685-false       
        Jump         -compare-4685-true        
        Label        -compare-4685-true        
        PushI        1                         
        Jump         -compare-4685-join        
        Label        -compare-4685-false       
        PushI        0                         
        Jump         -compare-4685-join        
        Label        -compare-4685-join        
        JumpTrue     -print-boolean-4686-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4686-join  
        Label        -print-boolean-4686-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4686-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4687-arg1        
        PushI        45                        
        Label        -compare-4687-arg2        
        PushI        30                        
        PushI        91                        
        Multiply                               
        Label        -compare-4687-sub         
        Subtract                               
        JumpNeg      -compare-4687-false       
        Jump         -compare-4687-true        
        Label        -compare-4687-true        
        PushI        1                         
        Jump         -compare-4687-join        
        Label        -compare-4687-false       
        PushI        0                         
        Jump         -compare-4687-join        
        Label        -compare-4687-join        
        JumpTrue     -print-boolean-4688-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4688-join  
        Label        -print-boolean-4688-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4688-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4689-arg1        
        PushI        43                        
        Label        -compare-4689-arg2        
        PushI        41                        
        PushI        82                        
        Multiply                               
        Label        -compare-4689-sub         
        Subtract                               
        JumpNeg      -compare-4689-false       
        Jump         -compare-4689-true        
        Label        -compare-4689-true        
        PushI        1                         
        Jump         -compare-4689-join        
        Label        -compare-4689-false       
        PushI        0                         
        Jump         -compare-4689-join        
        Label        -compare-4689-join        
        JumpTrue     -print-boolean-4690-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4690-join  
        Label        -print-boolean-4690-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4690-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4691-arg1        
        PushI        52                        
        Label        -compare-4691-arg2        
        PushI        22                        
        PushI        37                        
        Multiply                               
        Label        -compare-4691-sub         
        Subtract                               
        JumpNeg      -compare-4691-false       
        Jump         -compare-4691-true        
        Label        -compare-4691-true        
        PushI        1                         
        Jump         -compare-4691-join        
        Label        -compare-4691-false       
        PushI        0                         
        Jump         -compare-4691-join        
        Label        -compare-4691-join        
        JumpTrue     -print-boolean-4692-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4692-join  
        Label        -print-boolean-4692-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4692-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4693-arg1        
        PushI        30                        
        Label        -compare-4693-arg2        
        PushI        62                        
        PushI        42                        
        Multiply                               
        Label        -compare-4693-sub         
        Subtract                               
        JumpNeg      -compare-4693-false       
        Jump         -compare-4693-true        
        Label        -compare-4693-true        
        PushI        1                         
        Jump         -compare-4693-join        
        Label        -compare-4693-false       
        PushI        0                         
        Jump         -compare-4693-join        
        Label        -compare-4693-join        
        JumpTrue     -print-boolean-4694-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4694-join  
        Label        -print-boolean-4694-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4694-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4695-arg1        
        PushI        61                        
        Label        -compare-4695-arg2        
        PushI        27                        
        PushI        74                        
        Multiply                               
        Label        -compare-4695-sub         
        Subtract                               
        JumpNeg      -compare-4695-false       
        Jump         -compare-4695-true        
        Label        -compare-4695-true        
        PushI        1                         
        Jump         -compare-4695-join        
        Label        -compare-4695-false       
        PushI        0                         
        Jump         -compare-4695-join        
        Label        -compare-4695-join        
        JumpTrue     -print-boolean-4696-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4696-join  
        Label        -print-boolean-4696-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4696-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4697-arg1        
        PushI        38                        
        Label        -compare-4697-arg2        
        PushI        55                        
        PushI        98                        
        Multiply                               
        Label        -compare-4697-sub         
        Subtract                               
        JumpNeg      -compare-4697-false       
        Jump         -compare-4697-true        
        Label        -compare-4697-true        
        PushI        1                         
        Jump         -compare-4697-join        
        Label        -compare-4697-false       
        PushI        0                         
        Jump         -compare-4697-join        
        Label        -compare-4697-join        
        JumpTrue     -print-boolean-4698-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4698-join  
        Label        -print-boolean-4698-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4698-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4699-arg1        
        PushI        93                        
        Label        -compare-4699-arg2        
        PushI        73                        
        PushI        60                        
        Multiply                               
        Label        -compare-4699-sub         
        Subtract                               
        JumpNeg      -compare-4699-false       
        Jump         -compare-4699-true        
        Label        -compare-4699-true        
        PushI        1                         
        Jump         -compare-4699-join        
        Label        -compare-4699-false       
        PushI        0                         
        Jump         -compare-4699-join        
        Label        -compare-4699-join        
        JumpTrue     -print-boolean-4700-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4700-join  
        Label        -print-boolean-4700-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4700-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4701-arg1        
        PushI        41                        
        Label        -compare-4701-arg2        
        PushI        40                        
        PushI        33                        
        Multiply                               
        Label        -compare-4701-sub         
        Subtract                               
        JumpNeg      -compare-4701-false       
        Jump         -compare-4701-true        
        Label        -compare-4701-true        
        PushI        1                         
        Jump         -compare-4701-join        
        Label        -compare-4701-false       
        PushI        0                         
        Jump         -compare-4701-join        
        Label        -compare-4701-join        
        JumpTrue     -print-boolean-4702-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4702-join  
        Label        -print-boolean-4702-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4702-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4703-arg1        
        PushI        18                        
        Label        -compare-4703-arg2        
        PushI        66                        
        PushI        23                        
        Multiply                               
        Label        -compare-4703-sub         
        Subtract                               
        JumpNeg      -compare-4703-false       
        Jump         -compare-4703-true        
        Label        -compare-4703-true        
        PushI        1                         
        Jump         -compare-4703-join        
        Label        -compare-4703-false       
        PushI        0                         
        Jump         -compare-4703-join        
        Label        -compare-4703-join        
        JumpTrue     -print-boolean-4704-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4704-join  
        Label        -print-boolean-4704-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4704-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4705-arg1        
        PushI        55                        
        PushI        11                        
        Multiply                               
        Label        -compare-4705-arg2        
        PushI        62                        
        PushI        73                        
        Multiply                               
        Label        -compare-4705-sub         
        Subtract                               
        JumpNeg      -compare-4705-false       
        Jump         -compare-4705-true        
        Label        -compare-4705-true        
        PushI        1                         
        Jump         -compare-4705-join        
        Label        -compare-4705-false       
        PushI        0                         
        Jump         -compare-4705-join        
        Label        -compare-4705-join        
        JumpTrue     -print-boolean-4706-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4706-join  
        Label        -print-boolean-4706-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4706-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4707-arg1        
        PushI        3                         
        PushI        77                        
        Multiply                               
        Label        -compare-4707-arg2        
        PushI        16                        
        PushI        88                        
        Multiply                               
        Label        -compare-4707-sub         
        Subtract                               
        JumpNeg      -compare-4707-false       
        Jump         -compare-4707-true        
        Label        -compare-4707-true        
        PushI        1                         
        Jump         -compare-4707-join        
        Label        -compare-4707-false       
        PushI        0                         
        Jump         -compare-4707-join        
        Label        -compare-4707-join        
        JumpTrue     -print-boolean-4708-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4708-join  
        Label        -print-boolean-4708-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4708-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4709-arg1        
        PushI        45                        
        PushI        70                        
        Multiply                               
        Label        -compare-4709-arg2        
        PushI        11                        
        PushI        46                        
        Multiply                               
        Label        -compare-4709-sub         
        Subtract                               
        JumpNeg      -compare-4709-false       
        Jump         -compare-4709-true        
        Label        -compare-4709-true        
        PushI        1                         
        Jump         -compare-4709-join        
        Label        -compare-4709-false       
        PushI        0                         
        Jump         -compare-4709-join        
        Label        -compare-4709-join        
        JumpTrue     -print-boolean-4710-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4710-join  
        Label        -print-boolean-4710-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4710-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4711-arg1        
        PushI        13                        
        PushI        52                        
        Multiply                               
        Label        -compare-4711-arg2        
        PushI        63                        
        PushI        97                        
        Multiply                               
        Label        -compare-4711-sub         
        Subtract                               
        JumpNeg      -compare-4711-false       
        Jump         -compare-4711-true        
        Label        -compare-4711-true        
        PushI        1                         
        Jump         -compare-4711-join        
        Label        -compare-4711-false       
        PushI        0                         
        Jump         -compare-4711-join        
        Label        -compare-4711-join        
        JumpTrue     -print-boolean-4712-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4712-join  
        Label        -print-boolean-4712-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4712-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4713-arg1        
        PushI        32                        
        PushI        17                        
        Multiply                               
        Label        -compare-4713-arg2        
        PushI        97                        
        PushI        26                        
        Multiply                               
        Label        -compare-4713-sub         
        Subtract                               
        JumpNeg      -compare-4713-false       
        Jump         -compare-4713-true        
        Label        -compare-4713-true        
        PushI        1                         
        Jump         -compare-4713-join        
        Label        -compare-4713-false       
        PushI        0                         
        Jump         -compare-4713-join        
        Label        -compare-4713-join        
        JumpTrue     -print-boolean-4714-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4714-join  
        Label        -print-boolean-4714-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4714-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4715-arg1        
        PushI        98                        
        PushI        80                        
        Multiply                               
        Label        -compare-4715-arg2        
        PushI        33                        
        PushI        89                        
        Multiply                               
        Label        -compare-4715-sub         
        Subtract                               
        JumpNeg      -compare-4715-false       
        Jump         -compare-4715-true        
        Label        -compare-4715-true        
        PushI        1                         
        Jump         -compare-4715-join        
        Label        -compare-4715-false       
        PushI        0                         
        Jump         -compare-4715-join        
        Label        -compare-4715-join        
        JumpTrue     -print-boolean-4716-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4716-join  
        Label        -print-boolean-4716-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4716-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4717-arg1        
        PushI        34                        
        PushI        12                        
        Multiply                               
        Label        -compare-4717-arg2        
        PushI        96                        
        PushI        99                        
        Multiply                               
        Label        -compare-4717-sub         
        Subtract                               
        JumpNeg      -compare-4717-false       
        Jump         -compare-4717-true        
        Label        -compare-4717-true        
        PushI        1                         
        Jump         -compare-4717-join        
        Label        -compare-4717-false       
        PushI        0                         
        Jump         -compare-4717-join        
        Label        -compare-4717-join        
        JumpTrue     -print-boolean-4718-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4718-join  
        Label        -print-boolean-4718-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4718-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4719-arg1        
        PushI        64                        
        PushI        40                        
        Multiply                               
        Label        -compare-4719-arg2        
        PushI        55                        
        PushI        26                        
        Multiply                               
        Label        -compare-4719-sub         
        Subtract                               
        JumpNeg      -compare-4719-false       
        Jump         -compare-4719-true        
        Label        -compare-4719-true        
        PushI        1                         
        Jump         -compare-4719-join        
        Label        -compare-4719-false       
        PushI        0                         
        Jump         -compare-4719-join        
        Label        -compare-4719-join        
        JumpTrue     -print-boolean-4720-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4720-join  
        Label        -print-boolean-4720-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4720-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4721-arg1        
        PushI        67                        
        PushI        71                        
        Multiply                               
        Label        -compare-4721-arg2        
        PushI        64                        
        PushI        21                        
        Multiply                               
        Label        -compare-4721-sub         
        Subtract                               
        JumpNeg      -compare-4721-false       
        Jump         -compare-4721-true        
        Label        -compare-4721-true        
        PushI        1                         
        Jump         -compare-4721-join        
        Label        -compare-4721-false       
        PushI        0                         
        Jump         -compare-4721-join        
        Label        -compare-4721-join        
        JumpTrue     -print-boolean-4722-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4722-join  
        Label        -print-boolean-4722-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4722-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4723-arg1        
        PushI        59                        
        PushI        42                        
        Multiply                               
        Label        -compare-4723-arg2        
        PushI        64                        
        PushI        92                        
        Multiply                               
        Label        -compare-4723-sub         
        Subtract                               
        JumpNeg      -compare-4723-false       
        Jump         -compare-4723-true        
        Label        -compare-4723-true        
        PushI        1                         
        Jump         -compare-4723-join        
        Label        -compare-4723-false       
        PushI        0                         
        Jump         -compare-4723-join        
        Label        -compare-4723-join        
        JumpTrue     -print-boolean-4724-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4724-join  
        Label        -print-boolean-4724-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4724-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4725-arg1        
        PushI        50                        
        PushI        36                        
        Multiply                               
        Label        -compare-4725-arg2        
        PushI        72                        
        PushI        78                        
        Multiply                               
        Label        -compare-4725-sub         
        Subtract                               
        JumpNeg      -compare-4725-false       
        Jump         -compare-4725-true        
        Label        -compare-4725-true        
        PushI        1                         
        Jump         -compare-4725-join        
        Label        -compare-4725-false       
        PushI        0                         
        Jump         -compare-4725-join        
        Label        -compare-4725-join        
        JumpTrue     -print-boolean-4726-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4726-join  
        Label        -print-boolean-4726-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4726-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4727-arg1        
        PushI        96                        
        PushI        21                        
        Multiply                               
        Label        -compare-4727-arg2        
        PushI        71                        
        PushI        78                        
        Multiply                               
        Label        -compare-4727-sub         
        Subtract                               
        JumpNeg      -compare-4727-false       
        Jump         -compare-4727-true        
        Label        -compare-4727-true        
        PushI        1                         
        Jump         -compare-4727-join        
        Label        -compare-4727-false       
        PushI        0                         
        Jump         -compare-4727-join        
        Label        -compare-4727-join        
        JumpTrue     -print-boolean-4728-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4728-join  
        Label        -print-boolean-4728-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4728-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
