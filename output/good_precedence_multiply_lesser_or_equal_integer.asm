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
        Label        -compare-4958-arg1        
        PushI        42                        
        PushI        16                        
        Multiply                               
        Label        -compare-4958-arg2        
        PushI        69                        
        Label        -compare-4958-sub         
        Subtract                               
        JumpPos      -compare-4958-false       
        Jump         -compare-4958-true        
        Label        -compare-4958-true        
        PushI        1                         
        Jump         -compare-4958-join        
        Label        -compare-4958-false       
        PushI        0                         
        Jump         -compare-4958-join        
        Label        -compare-4958-join        
        JumpTrue     -print-boolean-4959-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4959-join  
        Label        -print-boolean-4959-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4959-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4960-arg1        
        PushI        12                        
        PushI        6                         
        Multiply                               
        Label        -compare-4960-arg2        
        PushI        20                        
        Label        -compare-4960-sub         
        Subtract                               
        JumpPos      -compare-4960-false       
        Jump         -compare-4960-true        
        Label        -compare-4960-true        
        PushI        1                         
        Jump         -compare-4960-join        
        Label        -compare-4960-false       
        PushI        0                         
        Jump         -compare-4960-join        
        Label        -compare-4960-join        
        JumpTrue     -print-boolean-4961-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4961-join  
        Label        -print-boolean-4961-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4961-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4962-arg1        
        PushI        94                        
        PushI        88                        
        Multiply                               
        Label        -compare-4962-arg2        
        PushI        24                        
        Label        -compare-4962-sub         
        Subtract                               
        JumpPos      -compare-4962-false       
        Jump         -compare-4962-true        
        Label        -compare-4962-true        
        PushI        1                         
        Jump         -compare-4962-join        
        Label        -compare-4962-false       
        PushI        0                         
        Jump         -compare-4962-join        
        Label        -compare-4962-join        
        JumpTrue     -print-boolean-4963-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4963-join  
        Label        -print-boolean-4963-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4963-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4964-arg1        
        PushI        66                        
        PushI        11                        
        Multiply                               
        Label        -compare-4964-arg2        
        PushI        90                        
        Label        -compare-4964-sub         
        Subtract                               
        JumpPos      -compare-4964-false       
        Jump         -compare-4964-true        
        Label        -compare-4964-true        
        PushI        1                         
        Jump         -compare-4964-join        
        Label        -compare-4964-false       
        PushI        0                         
        Jump         -compare-4964-join        
        Label        -compare-4964-join        
        JumpTrue     -print-boolean-4965-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4965-join  
        Label        -print-boolean-4965-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4965-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4966-arg1        
        PushI        77                        
        PushI        67                        
        Multiply                               
        Label        -compare-4966-arg2        
        PushI        81                        
        Label        -compare-4966-sub         
        Subtract                               
        JumpPos      -compare-4966-false       
        Jump         -compare-4966-true        
        Label        -compare-4966-true        
        PushI        1                         
        Jump         -compare-4966-join        
        Label        -compare-4966-false       
        PushI        0                         
        Jump         -compare-4966-join        
        Label        -compare-4966-join        
        JumpTrue     -print-boolean-4967-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4967-join  
        Label        -print-boolean-4967-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4967-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4968-arg1        
        PushI        80                        
        PushI        76                        
        Multiply                               
        Label        -compare-4968-arg2        
        PushI        30                        
        Label        -compare-4968-sub         
        Subtract                               
        JumpPos      -compare-4968-false       
        Jump         -compare-4968-true        
        Label        -compare-4968-true        
        PushI        1                         
        Jump         -compare-4968-join        
        Label        -compare-4968-false       
        PushI        0                         
        Jump         -compare-4968-join        
        Label        -compare-4968-join        
        JumpTrue     -print-boolean-4969-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4969-join  
        Label        -print-boolean-4969-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4969-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4970-arg1        
        PushI        76                        
        PushI        79                        
        Multiply                               
        Label        -compare-4970-arg2        
        PushI        5                         
        Label        -compare-4970-sub         
        Subtract                               
        JumpPos      -compare-4970-false       
        Jump         -compare-4970-true        
        Label        -compare-4970-true        
        PushI        1                         
        Jump         -compare-4970-join        
        Label        -compare-4970-false       
        PushI        0                         
        Jump         -compare-4970-join        
        Label        -compare-4970-join        
        JumpTrue     -print-boolean-4971-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4971-join  
        Label        -print-boolean-4971-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4971-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4972-arg1        
        PushI        4                         
        PushI        94                        
        Multiply                               
        Label        -compare-4972-arg2        
        PushI        4                         
        Label        -compare-4972-sub         
        Subtract                               
        JumpPos      -compare-4972-false       
        Jump         -compare-4972-true        
        Label        -compare-4972-true        
        PushI        1                         
        Jump         -compare-4972-join        
        Label        -compare-4972-false       
        PushI        0                         
        Jump         -compare-4972-join        
        Label        -compare-4972-join        
        JumpTrue     -print-boolean-4973-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4973-join  
        Label        -print-boolean-4973-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4973-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4974-arg1        
        PushI        22                        
        PushI        27                        
        Multiply                               
        Label        -compare-4974-arg2        
        PushI        92                        
        Label        -compare-4974-sub         
        Subtract                               
        JumpPos      -compare-4974-false       
        Jump         -compare-4974-true        
        Label        -compare-4974-true        
        PushI        1                         
        Jump         -compare-4974-join        
        Label        -compare-4974-false       
        PushI        0                         
        Jump         -compare-4974-join        
        Label        -compare-4974-join        
        JumpTrue     -print-boolean-4975-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4975-join  
        Label        -print-boolean-4975-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4975-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4976-arg1        
        PushI        29                        
        PushI        56                        
        Multiply                               
        Label        -compare-4976-arg2        
        PushI        77                        
        Label        -compare-4976-sub         
        Subtract                               
        JumpPos      -compare-4976-false       
        Jump         -compare-4976-true        
        Label        -compare-4976-true        
        PushI        1                         
        Jump         -compare-4976-join        
        Label        -compare-4976-false       
        PushI        0                         
        Jump         -compare-4976-join        
        Label        -compare-4976-join        
        JumpTrue     -print-boolean-4977-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4977-join  
        Label        -print-boolean-4977-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4977-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4978-arg1        
        PushI        52                        
        PushI        10                        
        Multiply                               
        Label        -compare-4978-arg2        
        PushI        50                        
        Label        -compare-4978-sub         
        Subtract                               
        JumpPos      -compare-4978-false       
        Jump         -compare-4978-true        
        Label        -compare-4978-true        
        PushI        1                         
        Jump         -compare-4978-join        
        Label        -compare-4978-false       
        PushI        0                         
        Jump         -compare-4978-join        
        Label        -compare-4978-join        
        JumpTrue     -print-boolean-4979-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4979-join  
        Label        -print-boolean-4979-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4979-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4980-arg1        
        PushI        91                        
        PushI        68                        
        Multiply                               
        Label        -compare-4980-arg2        
        PushI        20                        
        Label        -compare-4980-sub         
        Subtract                               
        JumpPos      -compare-4980-false       
        Jump         -compare-4980-true        
        Label        -compare-4980-true        
        PushI        1                         
        Jump         -compare-4980-join        
        Label        -compare-4980-false       
        PushI        0                         
        Jump         -compare-4980-join        
        Label        -compare-4980-join        
        JumpTrue     -print-boolean-4981-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4981-join  
        Label        -print-boolean-4981-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4981-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4982-arg1        
        PushI        49                        
        Label        -compare-4982-arg2        
        PushI        8                         
        PushI        83                        
        Multiply                               
        Label        -compare-4982-sub         
        Subtract                               
        JumpPos      -compare-4982-false       
        Jump         -compare-4982-true        
        Label        -compare-4982-true        
        PushI        1                         
        Jump         -compare-4982-join        
        Label        -compare-4982-false       
        PushI        0                         
        Jump         -compare-4982-join        
        Label        -compare-4982-join        
        JumpTrue     -print-boolean-4983-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4983-join  
        Label        -print-boolean-4983-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4983-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4984-arg1        
        PushI        82                        
        Label        -compare-4984-arg2        
        PushI        29                        
        PushI        45                        
        Multiply                               
        Label        -compare-4984-sub         
        Subtract                               
        JumpPos      -compare-4984-false       
        Jump         -compare-4984-true        
        Label        -compare-4984-true        
        PushI        1                         
        Jump         -compare-4984-join        
        Label        -compare-4984-false       
        PushI        0                         
        Jump         -compare-4984-join        
        Label        -compare-4984-join        
        JumpTrue     -print-boolean-4985-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4985-join  
        Label        -print-boolean-4985-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4985-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4986-arg1        
        PushI        53                        
        Label        -compare-4986-arg2        
        PushI        55                        
        PushI        14                        
        Multiply                               
        Label        -compare-4986-sub         
        Subtract                               
        JumpPos      -compare-4986-false       
        Jump         -compare-4986-true        
        Label        -compare-4986-true        
        PushI        1                         
        Jump         -compare-4986-join        
        Label        -compare-4986-false       
        PushI        0                         
        Jump         -compare-4986-join        
        Label        -compare-4986-join        
        JumpTrue     -print-boolean-4987-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4987-join  
        Label        -print-boolean-4987-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4987-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4988-arg1        
        PushI        97                        
        Label        -compare-4988-arg2        
        PushI        83                        
        PushI        29                        
        Multiply                               
        Label        -compare-4988-sub         
        Subtract                               
        JumpPos      -compare-4988-false       
        Jump         -compare-4988-true        
        Label        -compare-4988-true        
        PushI        1                         
        Jump         -compare-4988-join        
        Label        -compare-4988-false       
        PushI        0                         
        Jump         -compare-4988-join        
        Label        -compare-4988-join        
        JumpTrue     -print-boolean-4989-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4989-join  
        Label        -print-boolean-4989-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4989-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4990-arg1        
        PushI        49                        
        Label        -compare-4990-arg2        
        PushI        1                         
        PushI        73                        
        Multiply                               
        Label        -compare-4990-sub         
        Subtract                               
        JumpPos      -compare-4990-false       
        Jump         -compare-4990-true        
        Label        -compare-4990-true        
        PushI        1                         
        Jump         -compare-4990-join        
        Label        -compare-4990-false       
        PushI        0                         
        Jump         -compare-4990-join        
        Label        -compare-4990-join        
        JumpTrue     -print-boolean-4991-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4991-join  
        Label        -print-boolean-4991-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4991-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4992-arg1        
        PushI        2                         
        Label        -compare-4992-arg2        
        PushI        55                        
        PushI        89                        
        Multiply                               
        Label        -compare-4992-sub         
        Subtract                               
        JumpPos      -compare-4992-false       
        Jump         -compare-4992-true        
        Label        -compare-4992-true        
        PushI        1                         
        Jump         -compare-4992-join        
        Label        -compare-4992-false       
        PushI        0                         
        Jump         -compare-4992-join        
        Label        -compare-4992-join        
        JumpTrue     -print-boolean-4993-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4993-join  
        Label        -print-boolean-4993-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4993-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4994-arg1        
        PushI        31                        
        Label        -compare-4994-arg2        
        PushI        74                        
        PushI        52                        
        Multiply                               
        Label        -compare-4994-sub         
        Subtract                               
        JumpPos      -compare-4994-false       
        Jump         -compare-4994-true        
        Label        -compare-4994-true        
        PushI        1                         
        Jump         -compare-4994-join        
        Label        -compare-4994-false       
        PushI        0                         
        Jump         -compare-4994-join        
        Label        -compare-4994-join        
        JumpTrue     -print-boolean-4995-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4995-join  
        Label        -print-boolean-4995-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4995-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4996-arg1        
        PushI        28                        
        Label        -compare-4996-arg2        
        PushI        55                        
        PushI        88                        
        Multiply                               
        Label        -compare-4996-sub         
        Subtract                               
        JumpPos      -compare-4996-false       
        Jump         -compare-4996-true        
        Label        -compare-4996-true        
        PushI        1                         
        Jump         -compare-4996-join        
        Label        -compare-4996-false       
        PushI        0                         
        Jump         -compare-4996-join        
        Label        -compare-4996-join        
        JumpTrue     -print-boolean-4997-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4997-join  
        Label        -print-boolean-4997-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4997-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4998-arg1        
        PushI        68                        
        Label        -compare-4998-arg2        
        PushI        48                        
        PushI        3                         
        Multiply                               
        Label        -compare-4998-sub         
        Subtract                               
        JumpPos      -compare-4998-false       
        Jump         -compare-4998-true        
        Label        -compare-4998-true        
        PushI        1                         
        Jump         -compare-4998-join        
        Label        -compare-4998-false       
        PushI        0                         
        Jump         -compare-4998-join        
        Label        -compare-4998-join        
        JumpTrue     -print-boolean-4999-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4999-join  
        Label        -print-boolean-4999-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4999-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5000-arg1        
        PushI        81                        
        Label        -compare-5000-arg2        
        PushI        50                        
        PushI        85                        
        Multiply                               
        Label        -compare-5000-sub         
        Subtract                               
        JumpPos      -compare-5000-false       
        Jump         -compare-5000-true        
        Label        -compare-5000-true        
        PushI        1                         
        Jump         -compare-5000-join        
        Label        -compare-5000-false       
        PushI        0                         
        Jump         -compare-5000-join        
        Label        -compare-5000-join        
        JumpTrue     -print-boolean-5001-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5001-join  
        Label        -print-boolean-5001-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5001-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5002-arg1        
        PushI        36                        
        Label        -compare-5002-arg2        
        PushI        60                        
        PushI        29                        
        Multiply                               
        Label        -compare-5002-sub         
        Subtract                               
        JumpPos      -compare-5002-false       
        Jump         -compare-5002-true        
        Label        -compare-5002-true        
        PushI        1                         
        Jump         -compare-5002-join        
        Label        -compare-5002-false       
        PushI        0                         
        Jump         -compare-5002-join        
        Label        -compare-5002-join        
        JumpTrue     -print-boolean-5003-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5003-join  
        Label        -print-boolean-5003-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5003-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5004-arg1        
        PushI        61                        
        Label        -compare-5004-arg2        
        PushI        4                         
        PushI        81                        
        Multiply                               
        Label        -compare-5004-sub         
        Subtract                               
        JumpPos      -compare-5004-false       
        Jump         -compare-5004-true        
        Label        -compare-5004-true        
        PushI        1                         
        Jump         -compare-5004-join        
        Label        -compare-5004-false       
        PushI        0                         
        Jump         -compare-5004-join        
        Label        -compare-5004-join        
        JumpTrue     -print-boolean-5005-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5005-join  
        Label        -print-boolean-5005-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5005-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5006-arg1        
        PushI        35                        
        PushI        74                        
        Multiply                               
        Label        -compare-5006-arg2        
        PushI        94                        
        PushI        59                        
        Multiply                               
        Label        -compare-5006-sub         
        Subtract                               
        JumpPos      -compare-5006-false       
        Jump         -compare-5006-true        
        Label        -compare-5006-true        
        PushI        1                         
        Jump         -compare-5006-join        
        Label        -compare-5006-false       
        PushI        0                         
        Jump         -compare-5006-join        
        Label        -compare-5006-join        
        JumpTrue     -print-boolean-5007-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5007-join  
        Label        -print-boolean-5007-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5007-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5008-arg1        
        PushI        56                        
        PushI        60                        
        Multiply                               
        Label        -compare-5008-arg2        
        PushI        33                        
        PushI        23                        
        Multiply                               
        Label        -compare-5008-sub         
        Subtract                               
        JumpPos      -compare-5008-false       
        Jump         -compare-5008-true        
        Label        -compare-5008-true        
        PushI        1                         
        Jump         -compare-5008-join        
        Label        -compare-5008-false       
        PushI        0                         
        Jump         -compare-5008-join        
        Label        -compare-5008-join        
        JumpTrue     -print-boolean-5009-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5009-join  
        Label        -print-boolean-5009-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5009-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5010-arg1        
        PushI        22                        
        PushI        1                         
        Multiply                               
        Label        -compare-5010-arg2        
        PushI        67                        
        PushI        53                        
        Multiply                               
        Label        -compare-5010-sub         
        Subtract                               
        JumpPos      -compare-5010-false       
        Jump         -compare-5010-true        
        Label        -compare-5010-true        
        PushI        1                         
        Jump         -compare-5010-join        
        Label        -compare-5010-false       
        PushI        0                         
        Jump         -compare-5010-join        
        Label        -compare-5010-join        
        JumpTrue     -print-boolean-5011-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5011-join  
        Label        -print-boolean-5011-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5011-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5012-arg1        
        PushI        35                        
        PushI        32                        
        Multiply                               
        Label        -compare-5012-arg2        
        PushI        52                        
        PushI        40                        
        Multiply                               
        Label        -compare-5012-sub         
        Subtract                               
        JumpPos      -compare-5012-false       
        Jump         -compare-5012-true        
        Label        -compare-5012-true        
        PushI        1                         
        Jump         -compare-5012-join        
        Label        -compare-5012-false       
        PushI        0                         
        Jump         -compare-5012-join        
        Label        -compare-5012-join        
        JumpTrue     -print-boolean-5013-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5013-join  
        Label        -print-boolean-5013-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5013-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5014-arg1        
        PushI        9                         
        PushI        56                        
        Multiply                               
        Label        -compare-5014-arg2        
        PushI        90                        
        PushI        57                        
        Multiply                               
        Label        -compare-5014-sub         
        Subtract                               
        JumpPos      -compare-5014-false       
        Jump         -compare-5014-true        
        Label        -compare-5014-true        
        PushI        1                         
        Jump         -compare-5014-join        
        Label        -compare-5014-false       
        PushI        0                         
        Jump         -compare-5014-join        
        Label        -compare-5014-join        
        JumpTrue     -print-boolean-5015-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5015-join  
        Label        -print-boolean-5015-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5015-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5016-arg1        
        PushI        51                        
        PushI        25                        
        Multiply                               
        Label        -compare-5016-arg2        
        PushI        62                        
        PushI        3                         
        Multiply                               
        Label        -compare-5016-sub         
        Subtract                               
        JumpPos      -compare-5016-false       
        Jump         -compare-5016-true        
        Label        -compare-5016-true        
        PushI        1                         
        Jump         -compare-5016-join        
        Label        -compare-5016-false       
        PushI        0                         
        Jump         -compare-5016-join        
        Label        -compare-5016-join        
        JumpTrue     -print-boolean-5017-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5017-join  
        Label        -print-boolean-5017-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5017-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5018-arg1        
        PushI        70                        
        PushI        9                         
        Multiply                               
        Label        -compare-5018-arg2        
        PushI        70                        
        PushI        79                        
        Multiply                               
        Label        -compare-5018-sub         
        Subtract                               
        JumpPos      -compare-5018-false       
        Jump         -compare-5018-true        
        Label        -compare-5018-true        
        PushI        1                         
        Jump         -compare-5018-join        
        Label        -compare-5018-false       
        PushI        0                         
        Jump         -compare-5018-join        
        Label        -compare-5018-join        
        JumpTrue     -print-boolean-5019-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5019-join  
        Label        -print-boolean-5019-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5019-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5020-arg1        
        PushI        43                        
        PushI        53                        
        Multiply                               
        Label        -compare-5020-arg2        
        PushI        36                        
        PushI        63                        
        Multiply                               
        Label        -compare-5020-sub         
        Subtract                               
        JumpPos      -compare-5020-false       
        Jump         -compare-5020-true        
        Label        -compare-5020-true        
        PushI        1                         
        Jump         -compare-5020-join        
        Label        -compare-5020-false       
        PushI        0                         
        Jump         -compare-5020-join        
        Label        -compare-5020-join        
        JumpTrue     -print-boolean-5021-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5021-join  
        Label        -print-boolean-5021-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5021-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5022-arg1        
        PushI        25                        
        PushI        6                         
        Multiply                               
        Label        -compare-5022-arg2        
        PushI        58                        
        PushI        18                        
        Multiply                               
        Label        -compare-5022-sub         
        Subtract                               
        JumpPos      -compare-5022-false       
        Jump         -compare-5022-true        
        Label        -compare-5022-true        
        PushI        1                         
        Jump         -compare-5022-join        
        Label        -compare-5022-false       
        PushI        0                         
        Jump         -compare-5022-join        
        Label        -compare-5022-join        
        JumpTrue     -print-boolean-5023-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5023-join  
        Label        -print-boolean-5023-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5023-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5024-arg1        
        PushI        58                        
        PushI        18                        
        Multiply                               
        Label        -compare-5024-arg2        
        PushI        31                        
        PushI        64                        
        Multiply                               
        Label        -compare-5024-sub         
        Subtract                               
        JumpPos      -compare-5024-false       
        Jump         -compare-5024-true        
        Label        -compare-5024-true        
        PushI        1                         
        Jump         -compare-5024-join        
        Label        -compare-5024-false       
        PushI        0                         
        Jump         -compare-5024-join        
        Label        -compare-5024-join        
        JumpTrue     -print-boolean-5025-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5025-join  
        Label        -print-boolean-5025-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5025-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5026-arg1        
        PushI        57                        
        PushI        84                        
        Multiply                               
        Label        -compare-5026-arg2        
        PushI        1                         
        PushI        97                        
        Multiply                               
        Label        -compare-5026-sub         
        Subtract                               
        JumpPos      -compare-5026-false       
        Jump         -compare-5026-true        
        Label        -compare-5026-true        
        PushI        1                         
        Jump         -compare-5026-join        
        Label        -compare-5026-false       
        PushI        0                         
        Jump         -compare-5026-join        
        Label        -compare-5026-join        
        JumpTrue     -print-boolean-5027-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5027-join  
        Label        -print-boolean-5027-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5027-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5028-arg1        
        PushI        95                        
        PushI        92                        
        Multiply                               
        Label        -compare-5028-arg2        
        PushI        46                        
        PushI        48                        
        Multiply                               
        Label        -compare-5028-sub         
        Subtract                               
        JumpPos      -compare-5028-false       
        Jump         -compare-5028-true        
        Label        -compare-5028-true        
        PushI        1                         
        Jump         -compare-5028-join        
        Label        -compare-5028-false       
        PushI        0                         
        Jump         -compare-5028-join        
        Label        -compare-5028-join        
        JumpTrue     -print-boolean-5029-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5029-join  
        Label        -print-boolean-5029-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5029-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
