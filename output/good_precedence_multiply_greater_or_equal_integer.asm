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
        Label        -compare-4670-arg1        
        PushI        8                         
        PushI        5                         
        Multiply                               
        Label        -compare-4670-arg2        
        PushI        93                        
        Label        -compare-4670-sub         
        Subtract                               
        JumpNeg      -compare-4670-false       
        Jump         -compare-4670-true        
        Label        -compare-4670-true        
        PushI        1                         
        Jump         -compare-4670-join        
        Label        -compare-4670-false       
        PushI        0                         
        Jump         -compare-4670-join        
        Label        -compare-4670-join        
        JumpTrue     -print-boolean-4671-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4671-join  
        Label        -print-boolean-4671-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4671-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4672-arg1        
        PushI        9                         
        PushI        15                        
        Multiply                               
        Label        -compare-4672-arg2        
        PushI        43                        
        Label        -compare-4672-sub         
        Subtract                               
        JumpNeg      -compare-4672-false       
        Jump         -compare-4672-true        
        Label        -compare-4672-true        
        PushI        1                         
        Jump         -compare-4672-join        
        Label        -compare-4672-false       
        PushI        0                         
        Jump         -compare-4672-join        
        Label        -compare-4672-join        
        JumpTrue     -print-boolean-4673-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4673-join  
        Label        -print-boolean-4673-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4673-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4674-arg1        
        PushI        83                        
        PushI        5                         
        Multiply                               
        Label        -compare-4674-arg2        
        PushI        77                        
        Label        -compare-4674-sub         
        Subtract                               
        JumpNeg      -compare-4674-false       
        Jump         -compare-4674-true        
        Label        -compare-4674-true        
        PushI        1                         
        Jump         -compare-4674-join        
        Label        -compare-4674-false       
        PushI        0                         
        Jump         -compare-4674-join        
        Label        -compare-4674-join        
        JumpTrue     -print-boolean-4675-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4675-join  
        Label        -print-boolean-4675-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4675-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4676-arg1        
        PushI        13                        
        PushI        99                        
        Multiply                               
        Label        -compare-4676-arg2        
        PushI        6                         
        Label        -compare-4676-sub         
        Subtract                               
        JumpNeg      -compare-4676-false       
        Jump         -compare-4676-true        
        Label        -compare-4676-true        
        PushI        1                         
        Jump         -compare-4676-join        
        Label        -compare-4676-false       
        PushI        0                         
        Jump         -compare-4676-join        
        Label        -compare-4676-join        
        JumpTrue     -print-boolean-4677-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4677-join  
        Label        -print-boolean-4677-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4677-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4678-arg1        
        PushI        87                        
        PushI        77                        
        Multiply                               
        Label        -compare-4678-arg2        
        PushI        91                        
        Label        -compare-4678-sub         
        Subtract                               
        JumpNeg      -compare-4678-false       
        Jump         -compare-4678-true        
        Label        -compare-4678-true        
        PushI        1                         
        Jump         -compare-4678-join        
        Label        -compare-4678-false       
        PushI        0                         
        Jump         -compare-4678-join        
        Label        -compare-4678-join        
        JumpTrue     -print-boolean-4679-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4679-join  
        Label        -print-boolean-4679-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4679-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4680-arg1        
        PushI        12                        
        PushI        32                        
        Multiply                               
        Label        -compare-4680-arg2        
        PushI        15                        
        Label        -compare-4680-sub         
        Subtract                               
        JumpNeg      -compare-4680-false       
        Jump         -compare-4680-true        
        Label        -compare-4680-true        
        PushI        1                         
        Jump         -compare-4680-join        
        Label        -compare-4680-false       
        PushI        0                         
        Jump         -compare-4680-join        
        Label        -compare-4680-join        
        JumpTrue     -print-boolean-4681-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4681-join  
        Label        -print-boolean-4681-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4681-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4682-arg1        
        PushI        66                        
        PushI        25                        
        Multiply                               
        Label        -compare-4682-arg2        
        PushI        80                        
        Label        -compare-4682-sub         
        Subtract                               
        JumpNeg      -compare-4682-false       
        Jump         -compare-4682-true        
        Label        -compare-4682-true        
        PushI        1                         
        Jump         -compare-4682-join        
        Label        -compare-4682-false       
        PushI        0                         
        Jump         -compare-4682-join        
        Label        -compare-4682-join        
        JumpTrue     -print-boolean-4683-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4683-join  
        Label        -print-boolean-4683-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4683-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4684-arg1        
        PushI        35                        
        PushI        7                         
        Multiply                               
        Label        -compare-4684-arg2        
        PushI        76                        
        Label        -compare-4684-sub         
        Subtract                               
        JumpNeg      -compare-4684-false       
        Jump         -compare-4684-true        
        Label        -compare-4684-true        
        PushI        1                         
        Jump         -compare-4684-join        
        Label        -compare-4684-false       
        PushI        0                         
        Jump         -compare-4684-join        
        Label        -compare-4684-join        
        JumpTrue     -print-boolean-4685-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4685-join  
        Label        -print-boolean-4685-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4685-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4686-arg1        
        PushI        41                        
        PushI        27                        
        Multiply                               
        Label        -compare-4686-arg2        
        PushI        35                        
        Label        -compare-4686-sub         
        Subtract                               
        JumpNeg      -compare-4686-false       
        Jump         -compare-4686-true        
        Label        -compare-4686-true        
        PushI        1                         
        Jump         -compare-4686-join        
        Label        -compare-4686-false       
        PushI        0                         
        Jump         -compare-4686-join        
        Label        -compare-4686-join        
        JumpTrue     -print-boolean-4687-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4687-join  
        Label        -print-boolean-4687-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4687-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4688-arg1        
        PushI        40                        
        PushI        52                        
        Multiply                               
        Label        -compare-4688-arg2        
        PushI        9                         
        Label        -compare-4688-sub         
        Subtract                               
        JumpNeg      -compare-4688-false       
        Jump         -compare-4688-true        
        Label        -compare-4688-true        
        PushI        1                         
        Jump         -compare-4688-join        
        Label        -compare-4688-false       
        PushI        0                         
        Jump         -compare-4688-join        
        Label        -compare-4688-join        
        JumpTrue     -print-boolean-4689-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4689-join  
        Label        -print-boolean-4689-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4689-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4690-arg1        
        PushI        56                        
        PushI        2                         
        Multiply                               
        Label        -compare-4690-arg2        
        PushI        30                        
        Label        -compare-4690-sub         
        Subtract                               
        JumpNeg      -compare-4690-false       
        Jump         -compare-4690-true        
        Label        -compare-4690-true        
        PushI        1                         
        Jump         -compare-4690-join        
        Label        -compare-4690-false       
        PushI        0                         
        Jump         -compare-4690-join        
        Label        -compare-4690-join        
        JumpTrue     -print-boolean-4691-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4691-join  
        Label        -print-boolean-4691-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4691-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4692-arg1        
        PushI        72                        
        PushI        67                        
        Multiply                               
        Label        -compare-4692-arg2        
        PushI        91                        
        Label        -compare-4692-sub         
        Subtract                               
        JumpNeg      -compare-4692-false       
        Jump         -compare-4692-true        
        Label        -compare-4692-true        
        PushI        1                         
        Jump         -compare-4692-join        
        Label        -compare-4692-false       
        PushI        0                         
        Jump         -compare-4692-join        
        Label        -compare-4692-join        
        JumpTrue     -print-boolean-4693-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4693-join  
        Label        -print-boolean-4693-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4693-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4694-arg1        
        PushI        94                        
        Label        -compare-4694-arg2        
        PushI        98                        
        PushI        77                        
        Multiply                               
        Label        -compare-4694-sub         
        Subtract                               
        JumpNeg      -compare-4694-false       
        Jump         -compare-4694-true        
        Label        -compare-4694-true        
        PushI        1                         
        Jump         -compare-4694-join        
        Label        -compare-4694-false       
        PushI        0                         
        Jump         -compare-4694-join        
        Label        -compare-4694-join        
        JumpTrue     -print-boolean-4695-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4695-join  
        Label        -print-boolean-4695-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4695-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4696-arg1        
        PushI        26                        
        Label        -compare-4696-arg2        
        PushI        29                        
        PushI        26                        
        Multiply                               
        Label        -compare-4696-sub         
        Subtract                               
        JumpNeg      -compare-4696-false       
        Jump         -compare-4696-true        
        Label        -compare-4696-true        
        PushI        1                         
        Jump         -compare-4696-join        
        Label        -compare-4696-false       
        PushI        0                         
        Jump         -compare-4696-join        
        Label        -compare-4696-join        
        JumpTrue     -print-boolean-4697-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4697-join  
        Label        -print-boolean-4697-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4697-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4698-arg1        
        PushI        54                        
        Label        -compare-4698-arg2        
        PushI        43                        
        PushI        34                        
        Multiply                               
        Label        -compare-4698-sub         
        Subtract                               
        JumpNeg      -compare-4698-false       
        Jump         -compare-4698-true        
        Label        -compare-4698-true        
        PushI        1                         
        Jump         -compare-4698-join        
        Label        -compare-4698-false       
        PushI        0                         
        Jump         -compare-4698-join        
        Label        -compare-4698-join        
        JumpTrue     -print-boolean-4699-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4699-join  
        Label        -print-boolean-4699-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4699-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4700-arg1        
        PushI        45                        
        Label        -compare-4700-arg2        
        PushI        30                        
        PushI        91                        
        Multiply                               
        Label        -compare-4700-sub         
        Subtract                               
        JumpNeg      -compare-4700-false       
        Jump         -compare-4700-true        
        Label        -compare-4700-true        
        PushI        1                         
        Jump         -compare-4700-join        
        Label        -compare-4700-false       
        PushI        0                         
        Jump         -compare-4700-join        
        Label        -compare-4700-join        
        JumpTrue     -print-boolean-4701-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4701-join  
        Label        -print-boolean-4701-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4701-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4702-arg1        
        PushI        43                        
        Label        -compare-4702-arg2        
        PushI        41                        
        PushI        82                        
        Multiply                               
        Label        -compare-4702-sub         
        Subtract                               
        JumpNeg      -compare-4702-false       
        Jump         -compare-4702-true        
        Label        -compare-4702-true        
        PushI        1                         
        Jump         -compare-4702-join        
        Label        -compare-4702-false       
        PushI        0                         
        Jump         -compare-4702-join        
        Label        -compare-4702-join        
        JumpTrue     -print-boolean-4703-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4703-join  
        Label        -print-boolean-4703-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4703-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4704-arg1        
        PushI        52                        
        Label        -compare-4704-arg2        
        PushI        22                        
        PushI        37                        
        Multiply                               
        Label        -compare-4704-sub         
        Subtract                               
        JumpNeg      -compare-4704-false       
        Jump         -compare-4704-true        
        Label        -compare-4704-true        
        PushI        1                         
        Jump         -compare-4704-join        
        Label        -compare-4704-false       
        PushI        0                         
        Jump         -compare-4704-join        
        Label        -compare-4704-join        
        JumpTrue     -print-boolean-4705-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4705-join  
        Label        -print-boolean-4705-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4705-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4706-arg1        
        PushI        30                        
        Label        -compare-4706-arg2        
        PushI        62                        
        PushI        42                        
        Multiply                               
        Label        -compare-4706-sub         
        Subtract                               
        JumpNeg      -compare-4706-false       
        Jump         -compare-4706-true        
        Label        -compare-4706-true        
        PushI        1                         
        Jump         -compare-4706-join        
        Label        -compare-4706-false       
        PushI        0                         
        Jump         -compare-4706-join        
        Label        -compare-4706-join        
        JumpTrue     -print-boolean-4707-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4707-join  
        Label        -print-boolean-4707-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4707-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4708-arg1        
        PushI        61                        
        Label        -compare-4708-arg2        
        PushI        27                        
        PushI        74                        
        Multiply                               
        Label        -compare-4708-sub         
        Subtract                               
        JumpNeg      -compare-4708-false       
        Jump         -compare-4708-true        
        Label        -compare-4708-true        
        PushI        1                         
        Jump         -compare-4708-join        
        Label        -compare-4708-false       
        PushI        0                         
        Jump         -compare-4708-join        
        Label        -compare-4708-join        
        JumpTrue     -print-boolean-4709-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4709-join  
        Label        -print-boolean-4709-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4709-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4710-arg1        
        PushI        38                        
        Label        -compare-4710-arg2        
        PushI        55                        
        PushI        98                        
        Multiply                               
        Label        -compare-4710-sub         
        Subtract                               
        JumpNeg      -compare-4710-false       
        Jump         -compare-4710-true        
        Label        -compare-4710-true        
        PushI        1                         
        Jump         -compare-4710-join        
        Label        -compare-4710-false       
        PushI        0                         
        Jump         -compare-4710-join        
        Label        -compare-4710-join        
        JumpTrue     -print-boolean-4711-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4711-join  
        Label        -print-boolean-4711-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4711-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4712-arg1        
        PushI        93                        
        Label        -compare-4712-arg2        
        PushI        73                        
        PushI        60                        
        Multiply                               
        Label        -compare-4712-sub         
        Subtract                               
        JumpNeg      -compare-4712-false       
        Jump         -compare-4712-true        
        Label        -compare-4712-true        
        PushI        1                         
        Jump         -compare-4712-join        
        Label        -compare-4712-false       
        PushI        0                         
        Jump         -compare-4712-join        
        Label        -compare-4712-join        
        JumpTrue     -print-boolean-4713-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4713-join  
        Label        -print-boolean-4713-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4713-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4714-arg1        
        PushI        41                        
        Label        -compare-4714-arg2        
        PushI        40                        
        PushI        33                        
        Multiply                               
        Label        -compare-4714-sub         
        Subtract                               
        JumpNeg      -compare-4714-false       
        Jump         -compare-4714-true        
        Label        -compare-4714-true        
        PushI        1                         
        Jump         -compare-4714-join        
        Label        -compare-4714-false       
        PushI        0                         
        Jump         -compare-4714-join        
        Label        -compare-4714-join        
        JumpTrue     -print-boolean-4715-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4715-join  
        Label        -print-boolean-4715-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4715-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4716-arg1        
        PushI        18                        
        Label        -compare-4716-arg2        
        PushI        66                        
        PushI        23                        
        Multiply                               
        Label        -compare-4716-sub         
        Subtract                               
        JumpNeg      -compare-4716-false       
        Jump         -compare-4716-true        
        Label        -compare-4716-true        
        PushI        1                         
        Jump         -compare-4716-join        
        Label        -compare-4716-false       
        PushI        0                         
        Jump         -compare-4716-join        
        Label        -compare-4716-join        
        JumpTrue     -print-boolean-4717-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4717-join  
        Label        -print-boolean-4717-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4717-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4718-arg1        
        PushI        55                        
        PushI        11                        
        Multiply                               
        Label        -compare-4718-arg2        
        PushI        62                        
        PushI        73                        
        Multiply                               
        Label        -compare-4718-sub         
        Subtract                               
        JumpNeg      -compare-4718-false       
        Jump         -compare-4718-true        
        Label        -compare-4718-true        
        PushI        1                         
        Jump         -compare-4718-join        
        Label        -compare-4718-false       
        PushI        0                         
        Jump         -compare-4718-join        
        Label        -compare-4718-join        
        JumpTrue     -print-boolean-4719-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4719-join  
        Label        -print-boolean-4719-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4719-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4720-arg1        
        PushI        3                         
        PushI        77                        
        Multiply                               
        Label        -compare-4720-arg2        
        PushI        16                        
        PushI        88                        
        Multiply                               
        Label        -compare-4720-sub         
        Subtract                               
        JumpNeg      -compare-4720-false       
        Jump         -compare-4720-true        
        Label        -compare-4720-true        
        PushI        1                         
        Jump         -compare-4720-join        
        Label        -compare-4720-false       
        PushI        0                         
        Jump         -compare-4720-join        
        Label        -compare-4720-join        
        JumpTrue     -print-boolean-4721-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4721-join  
        Label        -print-boolean-4721-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4721-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4722-arg1        
        PushI        45                        
        PushI        70                        
        Multiply                               
        Label        -compare-4722-arg2        
        PushI        11                        
        PushI        46                        
        Multiply                               
        Label        -compare-4722-sub         
        Subtract                               
        JumpNeg      -compare-4722-false       
        Jump         -compare-4722-true        
        Label        -compare-4722-true        
        PushI        1                         
        Jump         -compare-4722-join        
        Label        -compare-4722-false       
        PushI        0                         
        Jump         -compare-4722-join        
        Label        -compare-4722-join        
        JumpTrue     -print-boolean-4723-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4723-join  
        Label        -print-boolean-4723-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4723-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4724-arg1        
        PushI        13                        
        PushI        52                        
        Multiply                               
        Label        -compare-4724-arg2        
        PushI        63                        
        PushI        97                        
        Multiply                               
        Label        -compare-4724-sub         
        Subtract                               
        JumpNeg      -compare-4724-false       
        Jump         -compare-4724-true        
        Label        -compare-4724-true        
        PushI        1                         
        Jump         -compare-4724-join        
        Label        -compare-4724-false       
        PushI        0                         
        Jump         -compare-4724-join        
        Label        -compare-4724-join        
        JumpTrue     -print-boolean-4725-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4725-join  
        Label        -print-boolean-4725-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4725-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4726-arg1        
        PushI        32                        
        PushI        17                        
        Multiply                               
        Label        -compare-4726-arg2        
        PushI        97                        
        PushI        26                        
        Multiply                               
        Label        -compare-4726-sub         
        Subtract                               
        JumpNeg      -compare-4726-false       
        Jump         -compare-4726-true        
        Label        -compare-4726-true        
        PushI        1                         
        Jump         -compare-4726-join        
        Label        -compare-4726-false       
        PushI        0                         
        Jump         -compare-4726-join        
        Label        -compare-4726-join        
        JumpTrue     -print-boolean-4727-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4727-join  
        Label        -print-boolean-4727-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4727-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4728-arg1        
        PushI        98                        
        PushI        80                        
        Multiply                               
        Label        -compare-4728-arg2        
        PushI        33                        
        PushI        89                        
        Multiply                               
        Label        -compare-4728-sub         
        Subtract                               
        JumpNeg      -compare-4728-false       
        Jump         -compare-4728-true        
        Label        -compare-4728-true        
        PushI        1                         
        Jump         -compare-4728-join        
        Label        -compare-4728-false       
        PushI        0                         
        Jump         -compare-4728-join        
        Label        -compare-4728-join        
        JumpTrue     -print-boolean-4729-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4729-join  
        Label        -print-boolean-4729-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4729-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4730-arg1        
        PushI        34                        
        PushI        12                        
        Multiply                               
        Label        -compare-4730-arg2        
        PushI        96                        
        PushI        99                        
        Multiply                               
        Label        -compare-4730-sub         
        Subtract                               
        JumpNeg      -compare-4730-false       
        Jump         -compare-4730-true        
        Label        -compare-4730-true        
        PushI        1                         
        Jump         -compare-4730-join        
        Label        -compare-4730-false       
        PushI        0                         
        Jump         -compare-4730-join        
        Label        -compare-4730-join        
        JumpTrue     -print-boolean-4731-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4731-join  
        Label        -print-boolean-4731-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4731-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4732-arg1        
        PushI        64                        
        PushI        40                        
        Multiply                               
        Label        -compare-4732-arg2        
        PushI        55                        
        PushI        26                        
        Multiply                               
        Label        -compare-4732-sub         
        Subtract                               
        JumpNeg      -compare-4732-false       
        Jump         -compare-4732-true        
        Label        -compare-4732-true        
        PushI        1                         
        Jump         -compare-4732-join        
        Label        -compare-4732-false       
        PushI        0                         
        Jump         -compare-4732-join        
        Label        -compare-4732-join        
        JumpTrue     -print-boolean-4733-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4733-join  
        Label        -print-boolean-4733-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4733-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4734-arg1        
        PushI        67                        
        PushI        71                        
        Multiply                               
        Label        -compare-4734-arg2        
        PushI        64                        
        PushI        21                        
        Multiply                               
        Label        -compare-4734-sub         
        Subtract                               
        JumpNeg      -compare-4734-false       
        Jump         -compare-4734-true        
        Label        -compare-4734-true        
        PushI        1                         
        Jump         -compare-4734-join        
        Label        -compare-4734-false       
        PushI        0                         
        Jump         -compare-4734-join        
        Label        -compare-4734-join        
        JumpTrue     -print-boolean-4735-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4735-join  
        Label        -print-boolean-4735-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4735-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4736-arg1        
        PushI        59                        
        PushI        42                        
        Multiply                               
        Label        -compare-4736-arg2        
        PushI        64                        
        PushI        92                        
        Multiply                               
        Label        -compare-4736-sub         
        Subtract                               
        JumpNeg      -compare-4736-false       
        Jump         -compare-4736-true        
        Label        -compare-4736-true        
        PushI        1                         
        Jump         -compare-4736-join        
        Label        -compare-4736-false       
        PushI        0                         
        Jump         -compare-4736-join        
        Label        -compare-4736-join        
        JumpTrue     -print-boolean-4737-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4737-join  
        Label        -print-boolean-4737-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4737-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4738-arg1        
        PushI        50                        
        PushI        36                        
        Multiply                               
        Label        -compare-4738-arg2        
        PushI        72                        
        PushI        78                        
        Multiply                               
        Label        -compare-4738-sub         
        Subtract                               
        JumpNeg      -compare-4738-false       
        Jump         -compare-4738-true        
        Label        -compare-4738-true        
        PushI        1                         
        Jump         -compare-4738-join        
        Label        -compare-4738-false       
        PushI        0                         
        Jump         -compare-4738-join        
        Label        -compare-4738-join        
        JumpTrue     -print-boolean-4739-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4739-join  
        Label        -print-boolean-4739-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4739-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4740-arg1        
        PushI        96                        
        PushI        21                        
        Multiply                               
        Label        -compare-4740-arg2        
        PushI        71                        
        PushI        78                        
        Multiply                               
        Label        -compare-4740-sub         
        Subtract                               
        JumpNeg      -compare-4740-false       
        Jump         -compare-4740-true        
        Label        -compare-4740-true        
        PushI        1                         
        Jump         -compare-4740-join        
        Label        -compare-4740-false       
        PushI        0                         
        Jump         -compare-4740-join        
        Label        -compare-4740-join        
        JumpTrue     -print-boolean-4741-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4741-join  
        Label        -print-boolean-4741-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4741-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
