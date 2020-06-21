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
        Label        -compare-4814-arg1        
        PushI        60                        
        PushI        47                        
        Multiply                               
        Label        -compare-4814-arg2        
        PushI        49                        
        Label        -compare-4814-sub         
        Subtract                               
        JumpNeg      -compare-4814-true        
        Jump         -compare-4814-false       
        Label        -compare-4814-true        
        PushI        1                         
        Jump         -compare-4814-join        
        Label        -compare-4814-false       
        PushI        0                         
        Jump         -compare-4814-join        
        Label        -compare-4814-join        
        JumpTrue     -print-boolean-4815-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4815-join  
        Label        -print-boolean-4815-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4815-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4816-arg1        
        PushI        22                        
        PushI        46                        
        Multiply                               
        Label        -compare-4816-arg2        
        PushI        3                         
        Label        -compare-4816-sub         
        Subtract                               
        JumpNeg      -compare-4816-true        
        Jump         -compare-4816-false       
        Label        -compare-4816-true        
        PushI        1                         
        Jump         -compare-4816-join        
        Label        -compare-4816-false       
        PushI        0                         
        Jump         -compare-4816-join        
        Label        -compare-4816-join        
        JumpTrue     -print-boolean-4817-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4817-join  
        Label        -print-boolean-4817-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4817-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4818-arg1        
        PushI        45                        
        PushI        12                        
        Multiply                               
        Label        -compare-4818-arg2        
        PushI        26                        
        Label        -compare-4818-sub         
        Subtract                               
        JumpNeg      -compare-4818-true        
        Jump         -compare-4818-false       
        Label        -compare-4818-true        
        PushI        1                         
        Jump         -compare-4818-join        
        Label        -compare-4818-false       
        PushI        0                         
        Jump         -compare-4818-join        
        Label        -compare-4818-join        
        JumpTrue     -print-boolean-4819-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4819-join  
        Label        -print-boolean-4819-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4819-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4820-arg1        
        PushI        52                        
        PushI        98                        
        Multiply                               
        Label        -compare-4820-arg2        
        PushI        99                        
        Label        -compare-4820-sub         
        Subtract                               
        JumpNeg      -compare-4820-true        
        Jump         -compare-4820-false       
        Label        -compare-4820-true        
        PushI        1                         
        Jump         -compare-4820-join        
        Label        -compare-4820-false       
        PushI        0                         
        Jump         -compare-4820-join        
        Label        -compare-4820-join        
        JumpTrue     -print-boolean-4821-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4821-join  
        Label        -print-boolean-4821-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4821-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4822-arg1        
        PushI        59                        
        PushI        23                        
        Multiply                               
        Label        -compare-4822-arg2        
        PushI        47                        
        Label        -compare-4822-sub         
        Subtract                               
        JumpNeg      -compare-4822-true        
        Jump         -compare-4822-false       
        Label        -compare-4822-true        
        PushI        1                         
        Jump         -compare-4822-join        
        Label        -compare-4822-false       
        PushI        0                         
        Jump         -compare-4822-join        
        Label        -compare-4822-join        
        JumpTrue     -print-boolean-4823-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4823-join  
        Label        -print-boolean-4823-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4823-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4824-arg1        
        PushI        9                         
        PushI        53                        
        Multiply                               
        Label        -compare-4824-arg2        
        PushI        85                        
        Label        -compare-4824-sub         
        Subtract                               
        JumpNeg      -compare-4824-true        
        Jump         -compare-4824-false       
        Label        -compare-4824-true        
        PushI        1                         
        Jump         -compare-4824-join        
        Label        -compare-4824-false       
        PushI        0                         
        Jump         -compare-4824-join        
        Label        -compare-4824-join        
        JumpTrue     -print-boolean-4825-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4825-join  
        Label        -print-boolean-4825-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4825-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4826-arg1        
        PushI        45                        
        PushI        98                        
        Multiply                               
        Label        -compare-4826-arg2        
        PushI        58                        
        Label        -compare-4826-sub         
        Subtract                               
        JumpNeg      -compare-4826-true        
        Jump         -compare-4826-false       
        Label        -compare-4826-true        
        PushI        1                         
        Jump         -compare-4826-join        
        Label        -compare-4826-false       
        PushI        0                         
        Jump         -compare-4826-join        
        Label        -compare-4826-join        
        JumpTrue     -print-boolean-4827-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4827-join  
        Label        -print-boolean-4827-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4827-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4828-arg1        
        PushI        89                        
        PushI        44                        
        Multiply                               
        Label        -compare-4828-arg2        
        PushI        98                        
        Label        -compare-4828-sub         
        Subtract                               
        JumpNeg      -compare-4828-true        
        Jump         -compare-4828-false       
        Label        -compare-4828-true        
        PushI        1                         
        Jump         -compare-4828-join        
        Label        -compare-4828-false       
        PushI        0                         
        Jump         -compare-4828-join        
        Label        -compare-4828-join        
        JumpTrue     -print-boolean-4829-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4829-join  
        Label        -print-boolean-4829-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4829-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4830-arg1        
        PushI        6                         
        PushI        50                        
        Multiply                               
        Label        -compare-4830-arg2        
        PushI        42                        
        Label        -compare-4830-sub         
        Subtract                               
        JumpNeg      -compare-4830-true        
        Jump         -compare-4830-false       
        Label        -compare-4830-true        
        PushI        1                         
        Jump         -compare-4830-join        
        Label        -compare-4830-false       
        PushI        0                         
        Jump         -compare-4830-join        
        Label        -compare-4830-join        
        JumpTrue     -print-boolean-4831-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4831-join  
        Label        -print-boolean-4831-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4831-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4832-arg1        
        PushI        49                        
        PushI        67                        
        Multiply                               
        Label        -compare-4832-arg2        
        PushI        28                        
        Label        -compare-4832-sub         
        Subtract                               
        JumpNeg      -compare-4832-true        
        Jump         -compare-4832-false       
        Label        -compare-4832-true        
        PushI        1                         
        Jump         -compare-4832-join        
        Label        -compare-4832-false       
        PushI        0                         
        Jump         -compare-4832-join        
        Label        -compare-4832-join        
        JumpTrue     -print-boolean-4833-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4833-join  
        Label        -print-boolean-4833-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4833-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4834-arg1        
        PushI        93                        
        PushI        17                        
        Multiply                               
        Label        -compare-4834-arg2        
        PushI        99                        
        Label        -compare-4834-sub         
        Subtract                               
        JumpNeg      -compare-4834-true        
        Jump         -compare-4834-false       
        Label        -compare-4834-true        
        PushI        1                         
        Jump         -compare-4834-join        
        Label        -compare-4834-false       
        PushI        0                         
        Jump         -compare-4834-join        
        Label        -compare-4834-join        
        JumpTrue     -print-boolean-4835-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4835-join  
        Label        -print-boolean-4835-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4835-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4836-arg1        
        PushI        10                        
        PushI        8                         
        Multiply                               
        Label        -compare-4836-arg2        
        PushI        64                        
        Label        -compare-4836-sub         
        Subtract                               
        JumpNeg      -compare-4836-true        
        Jump         -compare-4836-false       
        Label        -compare-4836-true        
        PushI        1                         
        Jump         -compare-4836-join        
        Label        -compare-4836-false       
        PushI        0                         
        Jump         -compare-4836-join        
        Label        -compare-4836-join        
        JumpTrue     -print-boolean-4837-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4837-join  
        Label        -print-boolean-4837-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4837-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4838-arg1        
        PushI        53                        
        Label        -compare-4838-arg2        
        PushI        9                         
        PushI        69                        
        Multiply                               
        Label        -compare-4838-sub         
        Subtract                               
        JumpNeg      -compare-4838-true        
        Jump         -compare-4838-false       
        Label        -compare-4838-true        
        PushI        1                         
        Jump         -compare-4838-join        
        Label        -compare-4838-false       
        PushI        0                         
        Jump         -compare-4838-join        
        Label        -compare-4838-join        
        JumpTrue     -print-boolean-4839-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4839-join  
        Label        -print-boolean-4839-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4839-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4840-arg1        
        PushI        76                        
        Label        -compare-4840-arg2        
        PushI        48                        
        PushI        15                        
        Multiply                               
        Label        -compare-4840-sub         
        Subtract                               
        JumpNeg      -compare-4840-true        
        Jump         -compare-4840-false       
        Label        -compare-4840-true        
        PushI        1                         
        Jump         -compare-4840-join        
        Label        -compare-4840-false       
        PushI        0                         
        Jump         -compare-4840-join        
        Label        -compare-4840-join        
        JumpTrue     -print-boolean-4841-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4841-join  
        Label        -print-boolean-4841-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4841-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4842-arg1        
        PushI        44                        
        Label        -compare-4842-arg2        
        PushI        60                        
        PushI        74                        
        Multiply                               
        Label        -compare-4842-sub         
        Subtract                               
        JumpNeg      -compare-4842-true        
        Jump         -compare-4842-false       
        Label        -compare-4842-true        
        PushI        1                         
        Jump         -compare-4842-join        
        Label        -compare-4842-false       
        PushI        0                         
        Jump         -compare-4842-join        
        Label        -compare-4842-join        
        JumpTrue     -print-boolean-4843-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4843-join  
        Label        -print-boolean-4843-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4843-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4844-arg1        
        PushI        67                        
        Label        -compare-4844-arg2        
        PushI        44                        
        PushI        29                        
        Multiply                               
        Label        -compare-4844-sub         
        Subtract                               
        JumpNeg      -compare-4844-true        
        Jump         -compare-4844-false       
        Label        -compare-4844-true        
        PushI        1                         
        Jump         -compare-4844-join        
        Label        -compare-4844-false       
        PushI        0                         
        Jump         -compare-4844-join        
        Label        -compare-4844-join        
        JumpTrue     -print-boolean-4845-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4845-join  
        Label        -print-boolean-4845-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4845-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4846-arg1        
        PushI        73                        
        Label        -compare-4846-arg2        
        PushI        5                         
        PushI        82                        
        Multiply                               
        Label        -compare-4846-sub         
        Subtract                               
        JumpNeg      -compare-4846-true        
        Jump         -compare-4846-false       
        Label        -compare-4846-true        
        PushI        1                         
        Jump         -compare-4846-join        
        Label        -compare-4846-false       
        PushI        0                         
        Jump         -compare-4846-join        
        Label        -compare-4846-join        
        JumpTrue     -print-boolean-4847-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4847-join  
        Label        -print-boolean-4847-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4847-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4848-arg1        
        PushI        7                         
        Label        -compare-4848-arg2        
        PushI        69                        
        PushI        70                        
        Multiply                               
        Label        -compare-4848-sub         
        Subtract                               
        JumpNeg      -compare-4848-true        
        Jump         -compare-4848-false       
        Label        -compare-4848-true        
        PushI        1                         
        Jump         -compare-4848-join        
        Label        -compare-4848-false       
        PushI        0                         
        Jump         -compare-4848-join        
        Label        -compare-4848-join        
        JumpTrue     -print-boolean-4849-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4849-join  
        Label        -print-boolean-4849-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4849-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4850-arg1        
        PushI        54                        
        Label        -compare-4850-arg2        
        PushI        26                        
        PushI        53                        
        Multiply                               
        Label        -compare-4850-sub         
        Subtract                               
        JumpNeg      -compare-4850-true        
        Jump         -compare-4850-false       
        Label        -compare-4850-true        
        PushI        1                         
        Jump         -compare-4850-join        
        Label        -compare-4850-false       
        PushI        0                         
        Jump         -compare-4850-join        
        Label        -compare-4850-join        
        JumpTrue     -print-boolean-4851-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4851-join  
        Label        -print-boolean-4851-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4851-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4852-arg1        
        PushI        49                        
        Label        -compare-4852-arg2        
        PushI        14                        
        PushI        76                        
        Multiply                               
        Label        -compare-4852-sub         
        Subtract                               
        JumpNeg      -compare-4852-true        
        Jump         -compare-4852-false       
        Label        -compare-4852-true        
        PushI        1                         
        Jump         -compare-4852-join        
        Label        -compare-4852-false       
        PushI        0                         
        Jump         -compare-4852-join        
        Label        -compare-4852-join        
        JumpTrue     -print-boolean-4853-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4853-join  
        Label        -print-boolean-4853-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4853-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4854-arg1        
        PushI        75                        
        Label        -compare-4854-arg2        
        PushI        47                        
        PushI        76                        
        Multiply                               
        Label        -compare-4854-sub         
        Subtract                               
        JumpNeg      -compare-4854-true        
        Jump         -compare-4854-false       
        Label        -compare-4854-true        
        PushI        1                         
        Jump         -compare-4854-join        
        Label        -compare-4854-false       
        PushI        0                         
        Jump         -compare-4854-join        
        Label        -compare-4854-join        
        JumpTrue     -print-boolean-4855-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4855-join  
        Label        -print-boolean-4855-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4855-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4856-arg1        
        PushI        68                        
        Label        -compare-4856-arg2        
        PushI        20                        
        PushI        41                        
        Multiply                               
        Label        -compare-4856-sub         
        Subtract                               
        JumpNeg      -compare-4856-true        
        Jump         -compare-4856-false       
        Label        -compare-4856-true        
        PushI        1                         
        Jump         -compare-4856-join        
        Label        -compare-4856-false       
        PushI        0                         
        Jump         -compare-4856-join        
        Label        -compare-4856-join        
        JumpTrue     -print-boolean-4857-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4857-join  
        Label        -print-boolean-4857-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4857-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4858-arg1        
        PushI        88                        
        Label        -compare-4858-arg2        
        PushI        62                        
        PushI        84                        
        Multiply                               
        Label        -compare-4858-sub         
        Subtract                               
        JumpNeg      -compare-4858-true        
        Jump         -compare-4858-false       
        Label        -compare-4858-true        
        PushI        1                         
        Jump         -compare-4858-join        
        Label        -compare-4858-false       
        PushI        0                         
        Jump         -compare-4858-join        
        Label        -compare-4858-join        
        JumpTrue     -print-boolean-4859-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4859-join  
        Label        -print-boolean-4859-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4859-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4860-arg1        
        PushI        4                         
        Label        -compare-4860-arg2        
        PushI        42                        
        PushI        42                        
        Multiply                               
        Label        -compare-4860-sub         
        Subtract                               
        JumpNeg      -compare-4860-true        
        Jump         -compare-4860-false       
        Label        -compare-4860-true        
        PushI        1                         
        Jump         -compare-4860-join        
        Label        -compare-4860-false       
        PushI        0                         
        Jump         -compare-4860-join        
        Label        -compare-4860-join        
        JumpTrue     -print-boolean-4861-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4861-join  
        Label        -print-boolean-4861-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4861-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4862-arg1        
        PushI        94                        
        PushI        9                         
        Multiply                               
        Label        -compare-4862-arg2        
        PushI        4                         
        PushI        48                        
        Multiply                               
        Label        -compare-4862-sub         
        Subtract                               
        JumpNeg      -compare-4862-true        
        Jump         -compare-4862-false       
        Label        -compare-4862-true        
        PushI        1                         
        Jump         -compare-4862-join        
        Label        -compare-4862-false       
        PushI        0                         
        Jump         -compare-4862-join        
        Label        -compare-4862-join        
        JumpTrue     -print-boolean-4863-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4863-join  
        Label        -print-boolean-4863-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4863-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4864-arg1        
        PushI        85                        
        PushI        65                        
        Multiply                               
        Label        -compare-4864-arg2        
        PushI        18                        
        PushI        25                        
        Multiply                               
        Label        -compare-4864-sub         
        Subtract                               
        JumpNeg      -compare-4864-true        
        Jump         -compare-4864-false       
        Label        -compare-4864-true        
        PushI        1                         
        Jump         -compare-4864-join        
        Label        -compare-4864-false       
        PushI        0                         
        Jump         -compare-4864-join        
        Label        -compare-4864-join        
        JumpTrue     -print-boolean-4865-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4865-join  
        Label        -print-boolean-4865-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4865-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4866-arg1        
        PushI        46                        
        PushI        67                        
        Multiply                               
        Label        -compare-4866-arg2        
        PushI        3                         
        PushI        84                        
        Multiply                               
        Label        -compare-4866-sub         
        Subtract                               
        JumpNeg      -compare-4866-true        
        Jump         -compare-4866-false       
        Label        -compare-4866-true        
        PushI        1                         
        Jump         -compare-4866-join        
        Label        -compare-4866-false       
        PushI        0                         
        Jump         -compare-4866-join        
        Label        -compare-4866-join        
        JumpTrue     -print-boolean-4867-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4867-join  
        Label        -print-boolean-4867-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4867-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4868-arg1        
        PushI        21                        
        PushI        11                        
        Multiply                               
        Label        -compare-4868-arg2        
        PushI        27                        
        PushI        88                        
        Multiply                               
        Label        -compare-4868-sub         
        Subtract                               
        JumpNeg      -compare-4868-true        
        Jump         -compare-4868-false       
        Label        -compare-4868-true        
        PushI        1                         
        Jump         -compare-4868-join        
        Label        -compare-4868-false       
        PushI        0                         
        Jump         -compare-4868-join        
        Label        -compare-4868-join        
        JumpTrue     -print-boolean-4869-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4869-join  
        Label        -print-boolean-4869-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4869-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4870-arg1        
        PushI        55                        
        PushI        33                        
        Multiply                               
        Label        -compare-4870-arg2        
        PushI        82                        
        PushI        76                        
        Multiply                               
        Label        -compare-4870-sub         
        Subtract                               
        JumpNeg      -compare-4870-true        
        Jump         -compare-4870-false       
        Label        -compare-4870-true        
        PushI        1                         
        Jump         -compare-4870-join        
        Label        -compare-4870-false       
        PushI        0                         
        Jump         -compare-4870-join        
        Label        -compare-4870-join        
        JumpTrue     -print-boolean-4871-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4871-join  
        Label        -print-boolean-4871-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4871-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4872-arg1        
        PushI        59                        
        PushI        47                        
        Multiply                               
        Label        -compare-4872-arg2        
        PushI        33                        
        PushI        47                        
        Multiply                               
        Label        -compare-4872-sub         
        Subtract                               
        JumpNeg      -compare-4872-true        
        Jump         -compare-4872-false       
        Label        -compare-4872-true        
        PushI        1                         
        Jump         -compare-4872-join        
        Label        -compare-4872-false       
        PushI        0                         
        Jump         -compare-4872-join        
        Label        -compare-4872-join        
        JumpTrue     -print-boolean-4873-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4873-join  
        Label        -print-boolean-4873-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4873-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4874-arg1        
        PushI        38                        
        PushI        78                        
        Multiply                               
        Label        -compare-4874-arg2        
        PushI        6                         
        PushI        81                        
        Multiply                               
        Label        -compare-4874-sub         
        Subtract                               
        JumpNeg      -compare-4874-true        
        Jump         -compare-4874-false       
        Label        -compare-4874-true        
        PushI        1                         
        Jump         -compare-4874-join        
        Label        -compare-4874-false       
        PushI        0                         
        Jump         -compare-4874-join        
        Label        -compare-4874-join        
        JumpTrue     -print-boolean-4875-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4875-join  
        Label        -print-boolean-4875-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4875-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4876-arg1        
        PushI        61                        
        PushI        44                        
        Multiply                               
        Label        -compare-4876-arg2        
        PushI        96                        
        PushI        19                        
        Multiply                               
        Label        -compare-4876-sub         
        Subtract                               
        JumpNeg      -compare-4876-true        
        Jump         -compare-4876-false       
        Label        -compare-4876-true        
        PushI        1                         
        Jump         -compare-4876-join        
        Label        -compare-4876-false       
        PushI        0                         
        Jump         -compare-4876-join        
        Label        -compare-4876-join        
        JumpTrue     -print-boolean-4877-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4877-join  
        Label        -print-boolean-4877-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4877-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4878-arg1        
        PushI        13                        
        PushI        68                        
        Multiply                               
        Label        -compare-4878-arg2        
        PushI        19                        
        PushI        3                         
        Multiply                               
        Label        -compare-4878-sub         
        Subtract                               
        JumpNeg      -compare-4878-true        
        Jump         -compare-4878-false       
        Label        -compare-4878-true        
        PushI        1                         
        Jump         -compare-4878-join        
        Label        -compare-4878-false       
        PushI        0                         
        Jump         -compare-4878-join        
        Label        -compare-4878-join        
        JumpTrue     -print-boolean-4879-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4879-join  
        Label        -print-boolean-4879-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4879-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4880-arg1        
        PushI        30                        
        PushI        64                        
        Multiply                               
        Label        -compare-4880-arg2        
        PushI        5                         
        PushI        18                        
        Multiply                               
        Label        -compare-4880-sub         
        Subtract                               
        JumpNeg      -compare-4880-true        
        Jump         -compare-4880-false       
        Label        -compare-4880-true        
        PushI        1                         
        Jump         -compare-4880-join        
        Label        -compare-4880-false       
        PushI        0                         
        Jump         -compare-4880-join        
        Label        -compare-4880-join        
        JumpTrue     -print-boolean-4881-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4881-join  
        Label        -print-boolean-4881-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4881-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4882-arg1        
        PushI        18                        
        PushI        84                        
        Multiply                               
        Label        -compare-4882-arg2        
        PushI        54                        
        PushI        16                        
        Multiply                               
        Label        -compare-4882-sub         
        Subtract                               
        JumpNeg      -compare-4882-true        
        Jump         -compare-4882-false       
        Label        -compare-4882-true        
        PushI        1                         
        Jump         -compare-4882-join        
        Label        -compare-4882-false       
        PushI        0                         
        Jump         -compare-4882-join        
        Label        -compare-4882-join        
        JumpTrue     -print-boolean-4883-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4883-join  
        Label        -print-boolean-4883-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4883-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4884-arg1        
        PushI        28                        
        PushI        17                        
        Multiply                               
        Label        -compare-4884-arg2        
        PushI        18                        
        PushI        71                        
        Multiply                               
        Label        -compare-4884-sub         
        Subtract                               
        JumpNeg      -compare-4884-true        
        Jump         -compare-4884-false       
        Label        -compare-4884-true        
        PushI        1                         
        Jump         -compare-4884-join        
        Label        -compare-4884-false       
        PushI        0                         
        Jump         -compare-4884-join        
        Label        -compare-4884-join        
        JumpTrue     -print-boolean-4885-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4885-join  
        Label        -print-boolean-4885-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4885-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
