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
        Label        -compare-4801-arg1        
        PushI        60                        
        PushI        47                        
        Multiply                               
        Label        -compare-4801-arg2        
        PushI        49                        
        Label        -compare-4801-sub         
        Subtract                               
        JumpNeg      -compare-4801-true        
        Jump         -compare-4801-false       
        Label        -compare-4801-true        
        PushI        1                         
        Jump         -compare-4801-join        
        Label        -compare-4801-false       
        PushI        0                         
        Jump         -compare-4801-join        
        Label        -compare-4801-join        
        JumpTrue     -print-boolean-4802-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4802-join  
        Label        -print-boolean-4802-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4802-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4803-arg1        
        PushI        22                        
        PushI        46                        
        Multiply                               
        Label        -compare-4803-arg2        
        PushI        3                         
        Label        -compare-4803-sub         
        Subtract                               
        JumpNeg      -compare-4803-true        
        Jump         -compare-4803-false       
        Label        -compare-4803-true        
        PushI        1                         
        Jump         -compare-4803-join        
        Label        -compare-4803-false       
        PushI        0                         
        Jump         -compare-4803-join        
        Label        -compare-4803-join        
        JumpTrue     -print-boolean-4804-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4804-join  
        Label        -print-boolean-4804-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4804-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4805-arg1        
        PushI        45                        
        PushI        12                        
        Multiply                               
        Label        -compare-4805-arg2        
        PushI        26                        
        Label        -compare-4805-sub         
        Subtract                               
        JumpNeg      -compare-4805-true        
        Jump         -compare-4805-false       
        Label        -compare-4805-true        
        PushI        1                         
        Jump         -compare-4805-join        
        Label        -compare-4805-false       
        PushI        0                         
        Jump         -compare-4805-join        
        Label        -compare-4805-join        
        JumpTrue     -print-boolean-4806-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4806-join  
        Label        -print-boolean-4806-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4806-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4807-arg1        
        PushI        52                        
        PushI        98                        
        Multiply                               
        Label        -compare-4807-arg2        
        PushI        99                        
        Label        -compare-4807-sub         
        Subtract                               
        JumpNeg      -compare-4807-true        
        Jump         -compare-4807-false       
        Label        -compare-4807-true        
        PushI        1                         
        Jump         -compare-4807-join        
        Label        -compare-4807-false       
        PushI        0                         
        Jump         -compare-4807-join        
        Label        -compare-4807-join        
        JumpTrue     -print-boolean-4808-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4808-join  
        Label        -print-boolean-4808-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4808-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4809-arg1        
        PushI        59                        
        PushI        23                        
        Multiply                               
        Label        -compare-4809-arg2        
        PushI        47                        
        Label        -compare-4809-sub         
        Subtract                               
        JumpNeg      -compare-4809-true        
        Jump         -compare-4809-false       
        Label        -compare-4809-true        
        PushI        1                         
        Jump         -compare-4809-join        
        Label        -compare-4809-false       
        PushI        0                         
        Jump         -compare-4809-join        
        Label        -compare-4809-join        
        JumpTrue     -print-boolean-4810-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4810-join  
        Label        -print-boolean-4810-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4810-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4811-arg1        
        PushI        9                         
        PushI        53                        
        Multiply                               
        Label        -compare-4811-arg2        
        PushI        85                        
        Label        -compare-4811-sub         
        Subtract                               
        JumpNeg      -compare-4811-true        
        Jump         -compare-4811-false       
        Label        -compare-4811-true        
        PushI        1                         
        Jump         -compare-4811-join        
        Label        -compare-4811-false       
        PushI        0                         
        Jump         -compare-4811-join        
        Label        -compare-4811-join        
        JumpTrue     -print-boolean-4812-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4812-join  
        Label        -print-boolean-4812-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4812-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4813-arg1        
        PushI        45                        
        PushI        98                        
        Multiply                               
        Label        -compare-4813-arg2        
        PushI        58                        
        Label        -compare-4813-sub         
        Subtract                               
        JumpNeg      -compare-4813-true        
        Jump         -compare-4813-false       
        Label        -compare-4813-true        
        PushI        1                         
        Jump         -compare-4813-join        
        Label        -compare-4813-false       
        PushI        0                         
        Jump         -compare-4813-join        
        Label        -compare-4813-join        
        JumpTrue     -print-boolean-4814-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4814-join  
        Label        -print-boolean-4814-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4814-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4815-arg1        
        PushI        89                        
        PushI        44                        
        Multiply                               
        Label        -compare-4815-arg2        
        PushI        98                        
        Label        -compare-4815-sub         
        Subtract                               
        JumpNeg      -compare-4815-true        
        Jump         -compare-4815-false       
        Label        -compare-4815-true        
        PushI        1                         
        Jump         -compare-4815-join        
        Label        -compare-4815-false       
        PushI        0                         
        Jump         -compare-4815-join        
        Label        -compare-4815-join        
        JumpTrue     -print-boolean-4816-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4816-join  
        Label        -print-boolean-4816-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4816-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4817-arg1        
        PushI        6                         
        PushI        50                        
        Multiply                               
        Label        -compare-4817-arg2        
        PushI        42                        
        Label        -compare-4817-sub         
        Subtract                               
        JumpNeg      -compare-4817-true        
        Jump         -compare-4817-false       
        Label        -compare-4817-true        
        PushI        1                         
        Jump         -compare-4817-join        
        Label        -compare-4817-false       
        PushI        0                         
        Jump         -compare-4817-join        
        Label        -compare-4817-join        
        JumpTrue     -print-boolean-4818-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4818-join  
        Label        -print-boolean-4818-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4818-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4819-arg1        
        PushI        49                        
        PushI        67                        
        Multiply                               
        Label        -compare-4819-arg2        
        PushI        28                        
        Label        -compare-4819-sub         
        Subtract                               
        JumpNeg      -compare-4819-true        
        Jump         -compare-4819-false       
        Label        -compare-4819-true        
        PushI        1                         
        Jump         -compare-4819-join        
        Label        -compare-4819-false       
        PushI        0                         
        Jump         -compare-4819-join        
        Label        -compare-4819-join        
        JumpTrue     -print-boolean-4820-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4820-join  
        Label        -print-boolean-4820-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4820-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4821-arg1        
        PushI        93                        
        PushI        17                        
        Multiply                               
        Label        -compare-4821-arg2        
        PushI        99                        
        Label        -compare-4821-sub         
        Subtract                               
        JumpNeg      -compare-4821-true        
        Jump         -compare-4821-false       
        Label        -compare-4821-true        
        PushI        1                         
        Jump         -compare-4821-join        
        Label        -compare-4821-false       
        PushI        0                         
        Jump         -compare-4821-join        
        Label        -compare-4821-join        
        JumpTrue     -print-boolean-4822-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4822-join  
        Label        -print-boolean-4822-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4822-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4823-arg1        
        PushI        10                        
        PushI        8                         
        Multiply                               
        Label        -compare-4823-arg2        
        PushI        64                        
        Label        -compare-4823-sub         
        Subtract                               
        JumpNeg      -compare-4823-true        
        Jump         -compare-4823-false       
        Label        -compare-4823-true        
        PushI        1                         
        Jump         -compare-4823-join        
        Label        -compare-4823-false       
        PushI        0                         
        Jump         -compare-4823-join        
        Label        -compare-4823-join        
        JumpTrue     -print-boolean-4824-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4824-join  
        Label        -print-boolean-4824-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4824-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4825-arg1        
        PushI        53                        
        Label        -compare-4825-arg2        
        PushI        9                         
        PushI        69                        
        Multiply                               
        Label        -compare-4825-sub         
        Subtract                               
        JumpNeg      -compare-4825-true        
        Jump         -compare-4825-false       
        Label        -compare-4825-true        
        PushI        1                         
        Jump         -compare-4825-join        
        Label        -compare-4825-false       
        PushI        0                         
        Jump         -compare-4825-join        
        Label        -compare-4825-join        
        JumpTrue     -print-boolean-4826-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4826-join  
        Label        -print-boolean-4826-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4826-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4827-arg1        
        PushI        76                        
        Label        -compare-4827-arg2        
        PushI        48                        
        PushI        15                        
        Multiply                               
        Label        -compare-4827-sub         
        Subtract                               
        JumpNeg      -compare-4827-true        
        Jump         -compare-4827-false       
        Label        -compare-4827-true        
        PushI        1                         
        Jump         -compare-4827-join        
        Label        -compare-4827-false       
        PushI        0                         
        Jump         -compare-4827-join        
        Label        -compare-4827-join        
        JumpTrue     -print-boolean-4828-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4828-join  
        Label        -print-boolean-4828-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4828-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4829-arg1        
        PushI        44                        
        Label        -compare-4829-arg2        
        PushI        60                        
        PushI        74                        
        Multiply                               
        Label        -compare-4829-sub         
        Subtract                               
        JumpNeg      -compare-4829-true        
        Jump         -compare-4829-false       
        Label        -compare-4829-true        
        PushI        1                         
        Jump         -compare-4829-join        
        Label        -compare-4829-false       
        PushI        0                         
        Jump         -compare-4829-join        
        Label        -compare-4829-join        
        JumpTrue     -print-boolean-4830-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4830-join  
        Label        -print-boolean-4830-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4830-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4831-arg1        
        PushI        67                        
        Label        -compare-4831-arg2        
        PushI        44                        
        PushI        29                        
        Multiply                               
        Label        -compare-4831-sub         
        Subtract                               
        JumpNeg      -compare-4831-true        
        Jump         -compare-4831-false       
        Label        -compare-4831-true        
        PushI        1                         
        Jump         -compare-4831-join        
        Label        -compare-4831-false       
        PushI        0                         
        Jump         -compare-4831-join        
        Label        -compare-4831-join        
        JumpTrue     -print-boolean-4832-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4832-join  
        Label        -print-boolean-4832-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4832-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4833-arg1        
        PushI        73                        
        Label        -compare-4833-arg2        
        PushI        5                         
        PushI        82                        
        Multiply                               
        Label        -compare-4833-sub         
        Subtract                               
        JumpNeg      -compare-4833-true        
        Jump         -compare-4833-false       
        Label        -compare-4833-true        
        PushI        1                         
        Jump         -compare-4833-join        
        Label        -compare-4833-false       
        PushI        0                         
        Jump         -compare-4833-join        
        Label        -compare-4833-join        
        JumpTrue     -print-boolean-4834-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4834-join  
        Label        -print-boolean-4834-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4834-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4835-arg1        
        PushI        7                         
        Label        -compare-4835-arg2        
        PushI        69                        
        PushI        70                        
        Multiply                               
        Label        -compare-4835-sub         
        Subtract                               
        JumpNeg      -compare-4835-true        
        Jump         -compare-4835-false       
        Label        -compare-4835-true        
        PushI        1                         
        Jump         -compare-4835-join        
        Label        -compare-4835-false       
        PushI        0                         
        Jump         -compare-4835-join        
        Label        -compare-4835-join        
        JumpTrue     -print-boolean-4836-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4836-join  
        Label        -print-boolean-4836-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4836-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4837-arg1        
        PushI        54                        
        Label        -compare-4837-arg2        
        PushI        26                        
        PushI        53                        
        Multiply                               
        Label        -compare-4837-sub         
        Subtract                               
        JumpNeg      -compare-4837-true        
        Jump         -compare-4837-false       
        Label        -compare-4837-true        
        PushI        1                         
        Jump         -compare-4837-join        
        Label        -compare-4837-false       
        PushI        0                         
        Jump         -compare-4837-join        
        Label        -compare-4837-join        
        JumpTrue     -print-boolean-4838-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4838-join  
        Label        -print-boolean-4838-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4838-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4839-arg1        
        PushI        49                        
        Label        -compare-4839-arg2        
        PushI        14                        
        PushI        76                        
        Multiply                               
        Label        -compare-4839-sub         
        Subtract                               
        JumpNeg      -compare-4839-true        
        Jump         -compare-4839-false       
        Label        -compare-4839-true        
        PushI        1                         
        Jump         -compare-4839-join        
        Label        -compare-4839-false       
        PushI        0                         
        Jump         -compare-4839-join        
        Label        -compare-4839-join        
        JumpTrue     -print-boolean-4840-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4840-join  
        Label        -print-boolean-4840-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4840-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4841-arg1        
        PushI        75                        
        Label        -compare-4841-arg2        
        PushI        47                        
        PushI        76                        
        Multiply                               
        Label        -compare-4841-sub         
        Subtract                               
        JumpNeg      -compare-4841-true        
        Jump         -compare-4841-false       
        Label        -compare-4841-true        
        PushI        1                         
        Jump         -compare-4841-join        
        Label        -compare-4841-false       
        PushI        0                         
        Jump         -compare-4841-join        
        Label        -compare-4841-join        
        JumpTrue     -print-boolean-4842-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4842-join  
        Label        -print-boolean-4842-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4842-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4843-arg1        
        PushI        68                        
        Label        -compare-4843-arg2        
        PushI        20                        
        PushI        41                        
        Multiply                               
        Label        -compare-4843-sub         
        Subtract                               
        JumpNeg      -compare-4843-true        
        Jump         -compare-4843-false       
        Label        -compare-4843-true        
        PushI        1                         
        Jump         -compare-4843-join        
        Label        -compare-4843-false       
        PushI        0                         
        Jump         -compare-4843-join        
        Label        -compare-4843-join        
        JumpTrue     -print-boolean-4844-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4844-join  
        Label        -print-boolean-4844-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4844-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4845-arg1        
        PushI        88                        
        Label        -compare-4845-arg2        
        PushI        62                        
        PushI        84                        
        Multiply                               
        Label        -compare-4845-sub         
        Subtract                               
        JumpNeg      -compare-4845-true        
        Jump         -compare-4845-false       
        Label        -compare-4845-true        
        PushI        1                         
        Jump         -compare-4845-join        
        Label        -compare-4845-false       
        PushI        0                         
        Jump         -compare-4845-join        
        Label        -compare-4845-join        
        JumpTrue     -print-boolean-4846-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4846-join  
        Label        -print-boolean-4846-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4846-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4847-arg1        
        PushI        4                         
        Label        -compare-4847-arg2        
        PushI        42                        
        PushI        42                        
        Multiply                               
        Label        -compare-4847-sub         
        Subtract                               
        JumpNeg      -compare-4847-true        
        Jump         -compare-4847-false       
        Label        -compare-4847-true        
        PushI        1                         
        Jump         -compare-4847-join        
        Label        -compare-4847-false       
        PushI        0                         
        Jump         -compare-4847-join        
        Label        -compare-4847-join        
        JumpTrue     -print-boolean-4848-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4848-join  
        Label        -print-boolean-4848-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4848-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4849-arg1        
        PushI        94                        
        PushI        9                         
        Multiply                               
        Label        -compare-4849-arg2        
        PushI        4                         
        PushI        48                        
        Multiply                               
        Label        -compare-4849-sub         
        Subtract                               
        JumpNeg      -compare-4849-true        
        Jump         -compare-4849-false       
        Label        -compare-4849-true        
        PushI        1                         
        Jump         -compare-4849-join        
        Label        -compare-4849-false       
        PushI        0                         
        Jump         -compare-4849-join        
        Label        -compare-4849-join        
        JumpTrue     -print-boolean-4850-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4850-join  
        Label        -print-boolean-4850-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4850-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4851-arg1        
        PushI        85                        
        PushI        65                        
        Multiply                               
        Label        -compare-4851-arg2        
        PushI        18                        
        PushI        25                        
        Multiply                               
        Label        -compare-4851-sub         
        Subtract                               
        JumpNeg      -compare-4851-true        
        Jump         -compare-4851-false       
        Label        -compare-4851-true        
        PushI        1                         
        Jump         -compare-4851-join        
        Label        -compare-4851-false       
        PushI        0                         
        Jump         -compare-4851-join        
        Label        -compare-4851-join        
        JumpTrue     -print-boolean-4852-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4852-join  
        Label        -print-boolean-4852-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4852-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4853-arg1        
        PushI        46                        
        PushI        67                        
        Multiply                               
        Label        -compare-4853-arg2        
        PushI        3                         
        PushI        84                        
        Multiply                               
        Label        -compare-4853-sub         
        Subtract                               
        JumpNeg      -compare-4853-true        
        Jump         -compare-4853-false       
        Label        -compare-4853-true        
        PushI        1                         
        Jump         -compare-4853-join        
        Label        -compare-4853-false       
        PushI        0                         
        Jump         -compare-4853-join        
        Label        -compare-4853-join        
        JumpTrue     -print-boolean-4854-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4854-join  
        Label        -print-boolean-4854-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4854-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4855-arg1        
        PushI        21                        
        PushI        11                        
        Multiply                               
        Label        -compare-4855-arg2        
        PushI        27                        
        PushI        88                        
        Multiply                               
        Label        -compare-4855-sub         
        Subtract                               
        JumpNeg      -compare-4855-true        
        Jump         -compare-4855-false       
        Label        -compare-4855-true        
        PushI        1                         
        Jump         -compare-4855-join        
        Label        -compare-4855-false       
        PushI        0                         
        Jump         -compare-4855-join        
        Label        -compare-4855-join        
        JumpTrue     -print-boolean-4856-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4856-join  
        Label        -print-boolean-4856-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4856-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4857-arg1        
        PushI        55                        
        PushI        33                        
        Multiply                               
        Label        -compare-4857-arg2        
        PushI        82                        
        PushI        76                        
        Multiply                               
        Label        -compare-4857-sub         
        Subtract                               
        JumpNeg      -compare-4857-true        
        Jump         -compare-4857-false       
        Label        -compare-4857-true        
        PushI        1                         
        Jump         -compare-4857-join        
        Label        -compare-4857-false       
        PushI        0                         
        Jump         -compare-4857-join        
        Label        -compare-4857-join        
        JumpTrue     -print-boolean-4858-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4858-join  
        Label        -print-boolean-4858-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4858-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4859-arg1        
        PushI        59                        
        PushI        47                        
        Multiply                               
        Label        -compare-4859-arg2        
        PushI        33                        
        PushI        47                        
        Multiply                               
        Label        -compare-4859-sub         
        Subtract                               
        JumpNeg      -compare-4859-true        
        Jump         -compare-4859-false       
        Label        -compare-4859-true        
        PushI        1                         
        Jump         -compare-4859-join        
        Label        -compare-4859-false       
        PushI        0                         
        Jump         -compare-4859-join        
        Label        -compare-4859-join        
        JumpTrue     -print-boolean-4860-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4860-join  
        Label        -print-boolean-4860-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4860-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4861-arg1        
        PushI        38                        
        PushI        78                        
        Multiply                               
        Label        -compare-4861-arg2        
        PushI        6                         
        PushI        81                        
        Multiply                               
        Label        -compare-4861-sub         
        Subtract                               
        JumpNeg      -compare-4861-true        
        Jump         -compare-4861-false       
        Label        -compare-4861-true        
        PushI        1                         
        Jump         -compare-4861-join        
        Label        -compare-4861-false       
        PushI        0                         
        Jump         -compare-4861-join        
        Label        -compare-4861-join        
        JumpTrue     -print-boolean-4862-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4862-join  
        Label        -print-boolean-4862-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4862-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4863-arg1        
        PushI        61                        
        PushI        44                        
        Multiply                               
        Label        -compare-4863-arg2        
        PushI        96                        
        PushI        19                        
        Multiply                               
        Label        -compare-4863-sub         
        Subtract                               
        JumpNeg      -compare-4863-true        
        Jump         -compare-4863-false       
        Label        -compare-4863-true        
        PushI        1                         
        Jump         -compare-4863-join        
        Label        -compare-4863-false       
        PushI        0                         
        Jump         -compare-4863-join        
        Label        -compare-4863-join        
        JumpTrue     -print-boolean-4864-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4864-join  
        Label        -print-boolean-4864-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4864-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4865-arg1        
        PushI        13                        
        PushI        68                        
        Multiply                               
        Label        -compare-4865-arg2        
        PushI        19                        
        PushI        3                         
        Multiply                               
        Label        -compare-4865-sub         
        Subtract                               
        JumpNeg      -compare-4865-true        
        Jump         -compare-4865-false       
        Label        -compare-4865-true        
        PushI        1                         
        Jump         -compare-4865-join        
        Label        -compare-4865-false       
        PushI        0                         
        Jump         -compare-4865-join        
        Label        -compare-4865-join        
        JumpTrue     -print-boolean-4866-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4866-join  
        Label        -print-boolean-4866-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4866-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4867-arg1        
        PushI        30                        
        PushI        64                        
        Multiply                               
        Label        -compare-4867-arg2        
        PushI        5                         
        PushI        18                        
        Multiply                               
        Label        -compare-4867-sub         
        Subtract                               
        JumpNeg      -compare-4867-true        
        Jump         -compare-4867-false       
        Label        -compare-4867-true        
        PushI        1                         
        Jump         -compare-4867-join        
        Label        -compare-4867-false       
        PushI        0                         
        Jump         -compare-4867-join        
        Label        -compare-4867-join        
        JumpTrue     -print-boolean-4868-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4868-join  
        Label        -print-boolean-4868-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4868-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4869-arg1        
        PushI        18                        
        PushI        84                        
        Multiply                               
        Label        -compare-4869-arg2        
        PushI        54                        
        PushI        16                        
        Multiply                               
        Label        -compare-4869-sub         
        Subtract                               
        JumpNeg      -compare-4869-true        
        Jump         -compare-4869-false       
        Label        -compare-4869-true        
        PushI        1                         
        Jump         -compare-4869-join        
        Label        -compare-4869-false       
        PushI        0                         
        Jump         -compare-4869-join        
        Label        -compare-4869-join        
        JumpTrue     -print-boolean-4870-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4870-join  
        Label        -print-boolean-4870-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4870-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4871-arg1        
        PushI        28                        
        PushI        17                        
        Multiply                               
        Label        -compare-4871-arg2        
        PushI        18                        
        PushI        71                        
        Multiply                               
        Label        -compare-4871-sub         
        Subtract                               
        JumpNeg      -compare-4871-true        
        Jump         -compare-4871-false       
        Label        -compare-4871-true        
        PushI        1                         
        Jump         -compare-4871-join        
        Label        -compare-4871-false       
        PushI        0                         
        Jump         -compare-4871-join        
        Label        -compare-4871-join        
        JumpTrue     -print-boolean-4872-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4872-join  
        Label        -print-boolean-4872-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4872-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
