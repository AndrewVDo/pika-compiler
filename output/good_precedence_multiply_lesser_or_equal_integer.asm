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
        Label        -compare-4945-arg1        
        PushI        42                        
        PushI        16                        
        Multiply                               
        Label        -compare-4945-arg2        
        PushI        69                        
        Label        -compare-4945-sub         
        Subtract                               
        JumpPos      -compare-4945-false       
        Jump         -compare-4945-true        
        Label        -compare-4945-true        
        PushI        1                         
        Jump         -compare-4945-join        
        Label        -compare-4945-false       
        PushI        0                         
        Jump         -compare-4945-join        
        Label        -compare-4945-join        
        JumpTrue     -print-boolean-4946-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4946-join  
        Label        -print-boolean-4946-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4946-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4947-arg1        
        PushI        12                        
        PushI        6                         
        Multiply                               
        Label        -compare-4947-arg2        
        PushI        20                        
        Label        -compare-4947-sub         
        Subtract                               
        JumpPos      -compare-4947-false       
        Jump         -compare-4947-true        
        Label        -compare-4947-true        
        PushI        1                         
        Jump         -compare-4947-join        
        Label        -compare-4947-false       
        PushI        0                         
        Jump         -compare-4947-join        
        Label        -compare-4947-join        
        JumpTrue     -print-boolean-4948-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4948-join  
        Label        -print-boolean-4948-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4948-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4949-arg1        
        PushI        94                        
        PushI        88                        
        Multiply                               
        Label        -compare-4949-arg2        
        PushI        24                        
        Label        -compare-4949-sub         
        Subtract                               
        JumpPos      -compare-4949-false       
        Jump         -compare-4949-true        
        Label        -compare-4949-true        
        PushI        1                         
        Jump         -compare-4949-join        
        Label        -compare-4949-false       
        PushI        0                         
        Jump         -compare-4949-join        
        Label        -compare-4949-join        
        JumpTrue     -print-boolean-4950-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4950-join  
        Label        -print-boolean-4950-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4950-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4951-arg1        
        PushI        66                        
        PushI        11                        
        Multiply                               
        Label        -compare-4951-arg2        
        PushI        90                        
        Label        -compare-4951-sub         
        Subtract                               
        JumpPos      -compare-4951-false       
        Jump         -compare-4951-true        
        Label        -compare-4951-true        
        PushI        1                         
        Jump         -compare-4951-join        
        Label        -compare-4951-false       
        PushI        0                         
        Jump         -compare-4951-join        
        Label        -compare-4951-join        
        JumpTrue     -print-boolean-4952-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4952-join  
        Label        -print-boolean-4952-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4952-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4953-arg1        
        PushI        77                        
        PushI        67                        
        Multiply                               
        Label        -compare-4953-arg2        
        PushI        81                        
        Label        -compare-4953-sub         
        Subtract                               
        JumpPos      -compare-4953-false       
        Jump         -compare-4953-true        
        Label        -compare-4953-true        
        PushI        1                         
        Jump         -compare-4953-join        
        Label        -compare-4953-false       
        PushI        0                         
        Jump         -compare-4953-join        
        Label        -compare-4953-join        
        JumpTrue     -print-boolean-4954-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4954-join  
        Label        -print-boolean-4954-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4954-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4955-arg1        
        PushI        80                        
        PushI        76                        
        Multiply                               
        Label        -compare-4955-arg2        
        PushI        30                        
        Label        -compare-4955-sub         
        Subtract                               
        JumpPos      -compare-4955-false       
        Jump         -compare-4955-true        
        Label        -compare-4955-true        
        PushI        1                         
        Jump         -compare-4955-join        
        Label        -compare-4955-false       
        PushI        0                         
        Jump         -compare-4955-join        
        Label        -compare-4955-join        
        JumpTrue     -print-boolean-4956-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4956-join  
        Label        -print-boolean-4956-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4956-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4957-arg1        
        PushI        76                        
        PushI        79                        
        Multiply                               
        Label        -compare-4957-arg2        
        PushI        5                         
        Label        -compare-4957-sub         
        Subtract                               
        JumpPos      -compare-4957-false       
        Jump         -compare-4957-true        
        Label        -compare-4957-true        
        PushI        1                         
        Jump         -compare-4957-join        
        Label        -compare-4957-false       
        PushI        0                         
        Jump         -compare-4957-join        
        Label        -compare-4957-join        
        JumpTrue     -print-boolean-4958-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4958-join  
        Label        -print-boolean-4958-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4958-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4959-arg1        
        PushI        4                         
        PushI        94                        
        Multiply                               
        Label        -compare-4959-arg2        
        PushI        4                         
        Label        -compare-4959-sub         
        Subtract                               
        JumpPos      -compare-4959-false       
        Jump         -compare-4959-true        
        Label        -compare-4959-true        
        PushI        1                         
        Jump         -compare-4959-join        
        Label        -compare-4959-false       
        PushI        0                         
        Jump         -compare-4959-join        
        Label        -compare-4959-join        
        JumpTrue     -print-boolean-4960-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4960-join  
        Label        -print-boolean-4960-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4960-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4961-arg1        
        PushI        22                        
        PushI        27                        
        Multiply                               
        Label        -compare-4961-arg2        
        PushI        92                        
        Label        -compare-4961-sub         
        Subtract                               
        JumpPos      -compare-4961-false       
        Jump         -compare-4961-true        
        Label        -compare-4961-true        
        PushI        1                         
        Jump         -compare-4961-join        
        Label        -compare-4961-false       
        PushI        0                         
        Jump         -compare-4961-join        
        Label        -compare-4961-join        
        JumpTrue     -print-boolean-4962-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4962-join  
        Label        -print-boolean-4962-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4962-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4963-arg1        
        PushI        29                        
        PushI        56                        
        Multiply                               
        Label        -compare-4963-arg2        
        PushI        77                        
        Label        -compare-4963-sub         
        Subtract                               
        JumpPos      -compare-4963-false       
        Jump         -compare-4963-true        
        Label        -compare-4963-true        
        PushI        1                         
        Jump         -compare-4963-join        
        Label        -compare-4963-false       
        PushI        0                         
        Jump         -compare-4963-join        
        Label        -compare-4963-join        
        JumpTrue     -print-boolean-4964-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4964-join  
        Label        -print-boolean-4964-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4964-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4965-arg1        
        PushI        52                        
        PushI        10                        
        Multiply                               
        Label        -compare-4965-arg2        
        PushI        50                        
        Label        -compare-4965-sub         
        Subtract                               
        JumpPos      -compare-4965-false       
        Jump         -compare-4965-true        
        Label        -compare-4965-true        
        PushI        1                         
        Jump         -compare-4965-join        
        Label        -compare-4965-false       
        PushI        0                         
        Jump         -compare-4965-join        
        Label        -compare-4965-join        
        JumpTrue     -print-boolean-4966-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4966-join  
        Label        -print-boolean-4966-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4966-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4967-arg1        
        PushI        91                        
        PushI        68                        
        Multiply                               
        Label        -compare-4967-arg2        
        PushI        20                        
        Label        -compare-4967-sub         
        Subtract                               
        JumpPos      -compare-4967-false       
        Jump         -compare-4967-true        
        Label        -compare-4967-true        
        PushI        1                         
        Jump         -compare-4967-join        
        Label        -compare-4967-false       
        PushI        0                         
        Jump         -compare-4967-join        
        Label        -compare-4967-join        
        JumpTrue     -print-boolean-4968-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4968-join  
        Label        -print-boolean-4968-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4968-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4969-arg1        
        PushI        49                        
        Label        -compare-4969-arg2        
        PushI        8                         
        PushI        83                        
        Multiply                               
        Label        -compare-4969-sub         
        Subtract                               
        JumpPos      -compare-4969-false       
        Jump         -compare-4969-true        
        Label        -compare-4969-true        
        PushI        1                         
        Jump         -compare-4969-join        
        Label        -compare-4969-false       
        PushI        0                         
        Jump         -compare-4969-join        
        Label        -compare-4969-join        
        JumpTrue     -print-boolean-4970-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4970-join  
        Label        -print-boolean-4970-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4970-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4971-arg1        
        PushI        82                        
        Label        -compare-4971-arg2        
        PushI        29                        
        PushI        45                        
        Multiply                               
        Label        -compare-4971-sub         
        Subtract                               
        JumpPos      -compare-4971-false       
        Jump         -compare-4971-true        
        Label        -compare-4971-true        
        PushI        1                         
        Jump         -compare-4971-join        
        Label        -compare-4971-false       
        PushI        0                         
        Jump         -compare-4971-join        
        Label        -compare-4971-join        
        JumpTrue     -print-boolean-4972-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4972-join  
        Label        -print-boolean-4972-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4972-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4973-arg1        
        PushI        53                        
        Label        -compare-4973-arg2        
        PushI        55                        
        PushI        14                        
        Multiply                               
        Label        -compare-4973-sub         
        Subtract                               
        JumpPos      -compare-4973-false       
        Jump         -compare-4973-true        
        Label        -compare-4973-true        
        PushI        1                         
        Jump         -compare-4973-join        
        Label        -compare-4973-false       
        PushI        0                         
        Jump         -compare-4973-join        
        Label        -compare-4973-join        
        JumpTrue     -print-boolean-4974-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4974-join  
        Label        -print-boolean-4974-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4974-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4975-arg1        
        PushI        97                        
        Label        -compare-4975-arg2        
        PushI        83                        
        PushI        29                        
        Multiply                               
        Label        -compare-4975-sub         
        Subtract                               
        JumpPos      -compare-4975-false       
        Jump         -compare-4975-true        
        Label        -compare-4975-true        
        PushI        1                         
        Jump         -compare-4975-join        
        Label        -compare-4975-false       
        PushI        0                         
        Jump         -compare-4975-join        
        Label        -compare-4975-join        
        JumpTrue     -print-boolean-4976-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4976-join  
        Label        -print-boolean-4976-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4976-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4977-arg1        
        PushI        49                        
        Label        -compare-4977-arg2        
        PushI        1                         
        PushI        73                        
        Multiply                               
        Label        -compare-4977-sub         
        Subtract                               
        JumpPos      -compare-4977-false       
        Jump         -compare-4977-true        
        Label        -compare-4977-true        
        PushI        1                         
        Jump         -compare-4977-join        
        Label        -compare-4977-false       
        PushI        0                         
        Jump         -compare-4977-join        
        Label        -compare-4977-join        
        JumpTrue     -print-boolean-4978-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4978-join  
        Label        -print-boolean-4978-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4978-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4979-arg1        
        PushI        2                         
        Label        -compare-4979-arg2        
        PushI        55                        
        PushI        89                        
        Multiply                               
        Label        -compare-4979-sub         
        Subtract                               
        JumpPos      -compare-4979-false       
        Jump         -compare-4979-true        
        Label        -compare-4979-true        
        PushI        1                         
        Jump         -compare-4979-join        
        Label        -compare-4979-false       
        PushI        0                         
        Jump         -compare-4979-join        
        Label        -compare-4979-join        
        JumpTrue     -print-boolean-4980-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4980-join  
        Label        -print-boolean-4980-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4980-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4981-arg1        
        PushI        31                        
        Label        -compare-4981-arg2        
        PushI        74                        
        PushI        52                        
        Multiply                               
        Label        -compare-4981-sub         
        Subtract                               
        JumpPos      -compare-4981-false       
        Jump         -compare-4981-true        
        Label        -compare-4981-true        
        PushI        1                         
        Jump         -compare-4981-join        
        Label        -compare-4981-false       
        PushI        0                         
        Jump         -compare-4981-join        
        Label        -compare-4981-join        
        JumpTrue     -print-boolean-4982-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4982-join  
        Label        -print-boolean-4982-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4982-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4983-arg1        
        PushI        28                        
        Label        -compare-4983-arg2        
        PushI        55                        
        PushI        88                        
        Multiply                               
        Label        -compare-4983-sub         
        Subtract                               
        JumpPos      -compare-4983-false       
        Jump         -compare-4983-true        
        Label        -compare-4983-true        
        PushI        1                         
        Jump         -compare-4983-join        
        Label        -compare-4983-false       
        PushI        0                         
        Jump         -compare-4983-join        
        Label        -compare-4983-join        
        JumpTrue     -print-boolean-4984-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4984-join  
        Label        -print-boolean-4984-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4984-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4985-arg1        
        PushI        68                        
        Label        -compare-4985-arg2        
        PushI        48                        
        PushI        3                         
        Multiply                               
        Label        -compare-4985-sub         
        Subtract                               
        JumpPos      -compare-4985-false       
        Jump         -compare-4985-true        
        Label        -compare-4985-true        
        PushI        1                         
        Jump         -compare-4985-join        
        Label        -compare-4985-false       
        PushI        0                         
        Jump         -compare-4985-join        
        Label        -compare-4985-join        
        JumpTrue     -print-boolean-4986-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4986-join  
        Label        -print-boolean-4986-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4986-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4987-arg1        
        PushI        81                        
        Label        -compare-4987-arg2        
        PushI        50                        
        PushI        85                        
        Multiply                               
        Label        -compare-4987-sub         
        Subtract                               
        JumpPos      -compare-4987-false       
        Jump         -compare-4987-true        
        Label        -compare-4987-true        
        PushI        1                         
        Jump         -compare-4987-join        
        Label        -compare-4987-false       
        PushI        0                         
        Jump         -compare-4987-join        
        Label        -compare-4987-join        
        JumpTrue     -print-boolean-4988-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4988-join  
        Label        -print-boolean-4988-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4988-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4989-arg1        
        PushI        36                        
        Label        -compare-4989-arg2        
        PushI        60                        
        PushI        29                        
        Multiply                               
        Label        -compare-4989-sub         
        Subtract                               
        JumpPos      -compare-4989-false       
        Jump         -compare-4989-true        
        Label        -compare-4989-true        
        PushI        1                         
        Jump         -compare-4989-join        
        Label        -compare-4989-false       
        PushI        0                         
        Jump         -compare-4989-join        
        Label        -compare-4989-join        
        JumpTrue     -print-boolean-4990-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4990-join  
        Label        -print-boolean-4990-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4990-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4991-arg1        
        PushI        61                        
        Label        -compare-4991-arg2        
        PushI        4                         
        PushI        81                        
        Multiply                               
        Label        -compare-4991-sub         
        Subtract                               
        JumpPos      -compare-4991-false       
        Jump         -compare-4991-true        
        Label        -compare-4991-true        
        PushI        1                         
        Jump         -compare-4991-join        
        Label        -compare-4991-false       
        PushI        0                         
        Jump         -compare-4991-join        
        Label        -compare-4991-join        
        JumpTrue     -print-boolean-4992-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4992-join  
        Label        -print-boolean-4992-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4992-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4993-arg1        
        PushI        35                        
        PushI        74                        
        Multiply                               
        Label        -compare-4993-arg2        
        PushI        94                        
        PushI        59                        
        Multiply                               
        Label        -compare-4993-sub         
        Subtract                               
        JumpPos      -compare-4993-false       
        Jump         -compare-4993-true        
        Label        -compare-4993-true        
        PushI        1                         
        Jump         -compare-4993-join        
        Label        -compare-4993-false       
        PushI        0                         
        Jump         -compare-4993-join        
        Label        -compare-4993-join        
        JumpTrue     -print-boolean-4994-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4994-join  
        Label        -print-boolean-4994-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4994-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4995-arg1        
        PushI        56                        
        PushI        60                        
        Multiply                               
        Label        -compare-4995-arg2        
        PushI        33                        
        PushI        23                        
        Multiply                               
        Label        -compare-4995-sub         
        Subtract                               
        JumpPos      -compare-4995-false       
        Jump         -compare-4995-true        
        Label        -compare-4995-true        
        PushI        1                         
        Jump         -compare-4995-join        
        Label        -compare-4995-false       
        PushI        0                         
        Jump         -compare-4995-join        
        Label        -compare-4995-join        
        JumpTrue     -print-boolean-4996-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4996-join  
        Label        -print-boolean-4996-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4996-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4997-arg1        
        PushI        22                        
        PushI        1                         
        Multiply                               
        Label        -compare-4997-arg2        
        PushI        67                        
        PushI        53                        
        Multiply                               
        Label        -compare-4997-sub         
        Subtract                               
        JumpPos      -compare-4997-false       
        Jump         -compare-4997-true        
        Label        -compare-4997-true        
        PushI        1                         
        Jump         -compare-4997-join        
        Label        -compare-4997-false       
        PushI        0                         
        Jump         -compare-4997-join        
        Label        -compare-4997-join        
        JumpTrue     -print-boolean-4998-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4998-join  
        Label        -print-boolean-4998-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4998-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4999-arg1        
        PushI        35                        
        PushI        32                        
        Multiply                               
        Label        -compare-4999-arg2        
        PushI        52                        
        PushI        40                        
        Multiply                               
        Label        -compare-4999-sub         
        Subtract                               
        JumpPos      -compare-4999-false       
        Jump         -compare-4999-true        
        Label        -compare-4999-true        
        PushI        1                         
        Jump         -compare-4999-join        
        Label        -compare-4999-false       
        PushI        0                         
        Jump         -compare-4999-join        
        Label        -compare-4999-join        
        JumpTrue     -print-boolean-5000-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5000-join  
        Label        -print-boolean-5000-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5000-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5001-arg1        
        PushI        9                         
        PushI        56                        
        Multiply                               
        Label        -compare-5001-arg2        
        PushI        90                        
        PushI        57                        
        Multiply                               
        Label        -compare-5001-sub         
        Subtract                               
        JumpPos      -compare-5001-false       
        Jump         -compare-5001-true        
        Label        -compare-5001-true        
        PushI        1                         
        Jump         -compare-5001-join        
        Label        -compare-5001-false       
        PushI        0                         
        Jump         -compare-5001-join        
        Label        -compare-5001-join        
        JumpTrue     -print-boolean-5002-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5002-join  
        Label        -print-boolean-5002-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5002-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5003-arg1        
        PushI        51                        
        PushI        25                        
        Multiply                               
        Label        -compare-5003-arg2        
        PushI        62                        
        PushI        3                         
        Multiply                               
        Label        -compare-5003-sub         
        Subtract                               
        JumpPos      -compare-5003-false       
        Jump         -compare-5003-true        
        Label        -compare-5003-true        
        PushI        1                         
        Jump         -compare-5003-join        
        Label        -compare-5003-false       
        PushI        0                         
        Jump         -compare-5003-join        
        Label        -compare-5003-join        
        JumpTrue     -print-boolean-5004-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5004-join  
        Label        -print-boolean-5004-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5004-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5005-arg1        
        PushI        70                        
        PushI        9                         
        Multiply                               
        Label        -compare-5005-arg2        
        PushI        70                        
        PushI        79                        
        Multiply                               
        Label        -compare-5005-sub         
        Subtract                               
        JumpPos      -compare-5005-false       
        Jump         -compare-5005-true        
        Label        -compare-5005-true        
        PushI        1                         
        Jump         -compare-5005-join        
        Label        -compare-5005-false       
        PushI        0                         
        Jump         -compare-5005-join        
        Label        -compare-5005-join        
        JumpTrue     -print-boolean-5006-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5006-join  
        Label        -print-boolean-5006-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5006-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5007-arg1        
        PushI        43                        
        PushI        53                        
        Multiply                               
        Label        -compare-5007-arg2        
        PushI        36                        
        PushI        63                        
        Multiply                               
        Label        -compare-5007-sub         
        Subtract                               
        JumpPos      -compare-5007-false       
        Jump         -compare-5007-true        
        Label        -compare-5007-true        
        PushI        1                         
        Jump         -compare-5007-join        
        Label        -compare-5007-false       
        PushI        0                         
        Jump         -compare-5007-join        
        Label        -compare-5007-join        
        JumpTrue     -print-boolean-5008-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5008-join  
        Label        -print-boolean-5008-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5008-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5009-arg1        
        PushI        25                        
        PushI        6                         
        Multiply                               
        Label        -compare-5009-arg2        
        PushI        58                        
        PushI        18                        
        Multiply                               
        Label        -compare-5009-sub         
        Subtract                               
        JumpPos      -compare-5009-false       
        Jump         -compare-5009-true        
        Label        -compare-5009-true        
        PushI        1                         
        Jump         -compare-5009-join        
        Label        -compare-5009-false       
        PushI        0                         
        Jump         -compare-5009-join        
        Label        -compare-5009-join        
        JumpTrue     -print-boolean-5010-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5010-join  
        Label        -print-boolean-5010-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5010-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5011-arg1        
        PushI        58                        
        PushI        18                        
        Multiply                               
        Label        -compare-5011-arg2        
        PushI        31                        
        PushI        64                        
        Multiply                               
        Label        -compare-5011-sub         
        Subtract                               
        JumpPos      -compare-5011-false       
        Jump         -compare-5011-true        
        Label        -compare-5011-true        
        PushI        1                         
        Jump         -compare-5011-join        
        Label        -compare-5011-false       
        PushI        0                         
        Jump         -compare-5011-join        
        Label        -compare-5011-join        
        JumpTrue     -print-boolean-5012-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5012-join  
        Label        -print-boolean-5012-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5012-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5013-arg1        
        PushI        57                        
        PushI        84                        
        Multiply                               
        Label        -compare-5013-arg2        
        PushI        1                         
        PushI        97                        
        Multiply                               
        Label        -compare-5013-sub         
        Subtract                               
        JumpPos      -compare-5013-false       
        Jump         -compare-5013-true        
        Label        -compare-5013-true        
        PushI        1                         
        Jump         -compare-5013-join        
        Label        -compare-5013-false       
        PushI        0                         
        Jump         -compare-5013-join        
        Label        -compare-5013-join        
        JumpTrue     -print-boolean-5014-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5014-join  
        Label        -print-boolean-5014-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5014-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5015-arg1        
        PushI        95                        
        PushI        92                        
        Multiply                               
        Label        -compare-5015-arg2        
        PushI        46                        
        PushI        48                        
        Multiply                               
        Label        -compare-5015-sub         
        Subtract                               
        JumpPos      -compare-5015-false       
        Jump         -compare-5015-true        
        Label        -compare-5015-true        
        PushI        1                         
        Jump         -compare-5015-join        
        Label        -compare-5015-false       
        PushI        0                         
        Jump         -compare-5015-join        
        Label        -compare-5015-join        
        JumpTrue     -print-boolean-5016-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5016-join  
        Label        -print-boolean-5016-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5016-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
