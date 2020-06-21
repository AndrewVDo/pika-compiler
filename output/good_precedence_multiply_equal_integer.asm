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
        Label        -compare-4382-arg1        
        PushI        14                        
        PushI        86                        
        Multiply                               
        Label        -compare-4382-arg2        
        PushI        71                        
        Label        -compare-4382-sub         
        Subtract                               
        JumpFalse    -compare-4382-true        
        Jump         -compare-4382-false       
        Label        -compare-4382-true        
        PushI        1                         
        Jump         -compare-4382-join        
        Label        -compare-4382-false       
        PushI        0                         
        Jump         -compare-4382-join        
        Label        -compare-4382-join        
        JumpTrue     -print-boolean-4383-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4383-join  
        Label        -print-boolean-4383-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4383-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4384-arg1        
        PushI        6                         
        PushI        64                        
        Multiply                               
        Label        -compare-4384-arg2        
        PushI        21                        
        Label        -compare-4384-sub         
        Subtract                               
        JumpFalse    -compare-4384-true        
        Jump         -compare-4384-false       
        Label        -compare-4384-true        
        PushI        1                         
        Jump         -compare-4384-join        
        Label        -compare-4384-false       
        PushI        0                         
        Jump         -compare-4384-join        
        Label        -compare-4384-join        
        JumpTrue     -print-boolean-4385-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4385-join  
        Label        -print-boolean-4385-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4385-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4386-arg1        
        PushI        11                        
        PushI        7                         
        Multiply                               
        Label        -compare-4386-arg2        
        PushI        11                        
        Label        -compare-4386-sub         
        Subtract                               
        JumpFalse    -compare-4386-true        
        Jump         -compare-4386-false       
        Label        -compare-4386-true        
        PushI        1                         
        Jump         -compare-4386-join        
        Label        -compare-4386-false       
        PushI        0                         
        Jump         -compare-4386-join        
        Label        -compare-4386-join        
        JumpTrue     -print-boolean-4387-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4387-join  
        Label        -print-boolean-4387-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4387-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4388-arg1        
        PushI        34                        
        PushI        37                        
        Multiply                               
        Label        -compare-4388-arg2        
        PushI        82                        
        Label        -compare-4388-sub         
        Subtract                               
        JumpFalse    -compare-4388-true        
        Jump         -compare-4388-false       
        Label        -compare-4388-true        
        PushI        1                         
        Jump         -compare-4388-join        
        Label        -compare-4388-false       
        PushI        0                         
        Jump         -compare-4388-join        
        Label        -compare-4388-join        
        JumpTrue     -print-boolean-4389-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4389-join  
        Label        -print-boolean-4389-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4389-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4390-arg1        
        PushI        53                        
        PushI        94                        
        Multiply                               
        Label        -compare-4390-arg2        
        PushI        88                        
        Label        -compare-4390-sub         
        Subtract                               
        JumpFalse    -compare-4390-true        
        Jump         -compare-4390-false       
        Label        -compare-4390-true        
        PushI        1                         
        Jump         -compare-4390-join        
        Label        -compare-4390-false       
        PushI        0                         
        Jump         -compare-4390-join        
        Label        -compare-4390-join        
        JumpTrue     -print-boolean-4391-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4391-join  
        Label        -print-boolean-4391-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4391-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4392-arg1        
        PushI        90                        
        PushI        37                        
        Multiply                               
        Label        -compare-4392-arg2        
        PushI        47                        
        Label        -compare-4392-sub         
        Subtract                               
        JumpFalse    -compare-4392-true        
        Jump         -compare-4392-false       
        Label        -compare-4392-true        
        PushI        1                         
        Jump         -compare-4392-join        
        Label        -compare-4392-false       
        PushI        0                         
        Jump         -compare-4392-join        
        Label        -compare-4392-join        
        JumpTrue     -print-boolean-4393-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4393-join  
        Label        -print-boolean-4393-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4393-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4394-arg1        
        PushI        90                        
        PushI        72                        
        Multiply                               
        Label        -compare-4394-arg2        
        PushI        61                        
        Label        -compare-4394-sub         
        Subtract                               
        JumpFalse    -compare-4394-true        
        Jump         -compare-4394-false       
        Label        -compare-4394-true        
        PushI        1                         
        Jump         -compare-4394-join        
        Label        -compare-4394-false       
        PushI        0                         
        Jump         -compare-4394-join        
        Label        -compare-4394-join        
        JumpTrue     -print-boolean-4395-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4395-join  
        Label        -print-boolean-4395-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4395-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4396-arg1        
        PushI        87                        
        PushI        86                        
        Multiply                               
        Label        -compare-4396-arg2        
        PushI        49                        
        Label        -compare-4396-sub         
        Subtract                               
        JumpFalse    -compare-4396-true        
        Jump         -compare-4396-false       
        Label        -compare-4396-true        
        PushI        1                         
        Jump         -compare-4396-join        
        Label        -compare-4396-false       
        PushI        0                         
        Jump         -compare-4396-join        
        Label        -compare-4396-join        
        JumpTrue     -print-boolean-4397-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4397-join  
        Label        -print-boolean-4397-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4397-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4398-arg1        
        PushI        31                        
        PushI        70                        
        Multiply                               
        Label        -compare-4398-arg2        
        PushI        94                        
        Label        -compare-4398-sub         
        Subtract                               
        JumpFalse    -compare-4398-true        
        Jump         -compare-4398-false       
        Label        -compare-4398-true        
        PushI        1                         
        Jump         -compare-4398-join        
        Label        -compare-4398-false       
        PushI        0                         
        Jump         -compare-4398-join        
        Label        -compare-4398-join        
        JumpTrue     -print-boolean-4399-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4399-join  
        Label        -print-boolean-4399-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4399-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4400-arg1        
        PushI        98                        
        PushI        86                        
        Multiply                               
        Label        -compare-4400-arg2        
        PushI        99                        
        Label        -compare-4400-sub         
        Subtract                               
        JumpFalse    -compare-4400-true        
        Jump         -compare-4400-false       
        Label        -compare-4400-true        
        PushI        1                         
        Jump         -compare-4400-join        
        Label        -compare-4400-false       
        PushI        0                         
        Jump         -compare-4400-join        
        Label        -compare-4400-join        
        JumpTrue     -print-boolean-4401-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4401-join  
        Label        -print-boolean-4401-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4401-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4402-arg1        
        PushI        57                        
        PushI        86                        
        Multiply                               
        Label        -compare-4402-arg2        
        PushI        46                        
        Label        -compare-4402-sub         
        Subtract                               
        JumpFalse    -compare-4402-true        
        Jump         -compare-4402-false       
        Label        -compare-4402-true        
        PushI        1                         
        Jump         -compare-4402-join        
        Label        -compare-4402-false       
        PushI        0                         
        Jump         -compare-4402-join        
        Label        -compare-4402-join        
        JumpTrue     -print-boolean-4403-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4403-join  
        Label        -print-boolean-4403-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4403-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4404-arg1        
        PushI        59                        
        PushI        42                        
        Multiply                               
        Label        -compare-4404-arg2        
        PushI        54                        
        Label        -compare-4404-sub         
        Subtract                               
        JumpFalse    -compare-4404-true        
        Jump         -compare-4404-false       
        Label        -compare-4404-true        
        PushI        1                         
        Jump         -compare-4404-join        
        Label        -compare-4404-false       
        PushI        0                         
        Jump         -compare-4404-join        
        Label        -compare-4404-join        
        JumpTrue     -print-boolean-4405-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4405-join  
        Label        -print-boolean-4405-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4405-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4406-arg1        
        PushI        67                        
        Label        -compare-4406-arg2        
        PushI        53                        
        PushI        81                        
        Multiply                               
        Label        -compare-4406-sub         
        Subtract                               
        JumpFalse    -compare-4406-true        
        Jump         -compare-4406-false       
        Label        -compare-4406-true        
        PushI        1                         
        Jump         -compare-4406-join        
        Label        -compare-4406-false       
        PushI        0                         
        Jump         -compare-4406-join        
        Label        -compare-4406-join        
        JumpTrue     -print-boolean-4407-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4407-join  
        Label        -print-boolean-4407-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4407-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4408-arg1        
        PushI        38                        
        Label        -compare-4408-arg2        
        PushI        17                        
        PushI        56                        
        Multiply                               
        Label        -compare-4408-sub         
        Subtract                               
        JumpFalse    -compare-4408-true        
        Jump         -compare-4408-false       
        Label        -compare-4408-true        
        PushI        1                         
        Jump         -compare-4408-join        
        Label        -compare-4408-false       
        PushI        0                         
        Jump         -compare-4408-join        
        Label        -compare-4408-join        
        JumpTrue     -print-boolean-4409-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4409-join  
        Label        -print-boolean-4409-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4409-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4410-arg1        
        PushI        56                        
        Label        -compare-4410-arg2        
        PushI        38                        
        PushI        50                        
        Multiply                               
        Label        -compare-4410-sub         
        Subtract                               
        JumpFalse    -compare-4410-true        
        Jump         -compare-4410-false       
        Label        -compare-4410-true        
        PushI        1                         
        Jump         -compare-4410-join        
        Label        -compare-4410-false       
        PushI        0                         
        Jump         -compare-4410-join        
        Label        -compare-4410-join        
        JumpTrue     -print-boolean-4411-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4411-join  
        Label        -print-boolean-4411-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4411-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4412-arg1        
        PushI        71                        
        Label        -compare-4412-arg2        
        PushI        88                        
        PushI        42                        
        Multiply                               
        Label        -compare-4412-sub         
        Subtract                               
        JumpFalse    -compare-4412-true        
        Jump         -compare-4412-false       
        Label        -compare-4412-true        
        PushI        1                         
        Jump         -compare-4412-join        
        Label        -compare-4412-false       
        PushI        0                         
        Jump         -compare-4412-join        
        Label        -compare-4412-join        
        JumpTrue     -print-boolean-4413-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4413-join  
        Label        -print-boolean-4413-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4413-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4414-arg1        
        PushI        46                        
        Label        -compare-4414-arg2        
        PushI        68                        
        PushI        17                        
        Multiply                               
        Label        -compare-4414-sub         
        Subtract                               
        JumpFalse    -compare-4414-true        
        Jump         -compare-4414-false       
        Label        -compare-4414-true        
        PushI        1                         
        Jump         -compare-4414-join        
        Label        -compare-4414-false       
        PushI        0                         
        Jump         -compare-4414-join        
        Label        -compare-4414-join        
        JumpTrue     -print-boolean-4415-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4415-join  
        Label        -print-boolean-4415-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4415-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4416-arg1        
        PushI        65                        
        Label        -compare-4416-arg2        
        PushI        29                        
        PushI        13                        
        Multiply                               
        Label        -compare-4416-sub         
        Subtract                               
        JumpFalse    -compare-4416-true        
        Jump         -compare-4416-false       
        Label        -compare-4416-true        
        PushI        1                         
        Jump         -compare-4416-join        
        Label        -compare-4416-false       
        PushI        0                         
        Jump         -compare-4416-join        
        Label        -compare-4416-join        
        JumpTrue     -print-boolean-4417-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4417-join  
        Label        -print-boolean-4417-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4417-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4418-arg1        
        PushI        17                        
        Label        -compare-4418-arg2        
        PushI        18                        
        PushI        29                        
        Multiply                               
        Label        -compare-4418-sub         
        Subtract                               
        JumpFalse    -compare-4418-true        
        Jump         -compare-4418-false       
        Label        -compare-4418-true        
        PushI        1                         
        Jump         -compare-4418-join        
        Label        -compare-4418-false       
        PushI        0                         
        Jump         -compare-4418-join        
        Label        -compare-4418-join        
        JumpTrue     -print-boolean-4419-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4419-join  
        Label        -print-boolean-4419-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4419-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4420-arg1        
        PushI        3                         
        Label        -compare-4420-arg2        
        PushI        80                        
        PushI        97                        
        Multiply                               
        Label        -compare-4420-sub         
        Subtract                               
        JumpFalse    -compare-4420-true        
        Jump         -compare-4420-false       
        Label        -compare-4420-true        
        PushI        1                         
        Jump         -compare-4420-join        
        Label        -compare-4420-false       
        PushI        0                         
        Jump         -compare-4420-join        
        Label        -compare-4420-join        
        JumpTrue     -print-boolean-4421-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4421-join  
        Label        -print-boolean-4421-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4421-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4422-arg1        
        PushI        9                         
        Label        -compare-4422-arg2        
        PushI        34                        
        PushI        94                        
        Multiply                               
        Label        -compare-4422-sub         
        Subtract                               
        JumpFalse    -compare-4422-true        
        Jump         -compare-4422-false       
        Label        -compare-4422-true        
        PushI        1                         
        Jump         -compare-4422-join        
        Label        -compare-4422-false       
        PushI        0                         
        Jump         -compare-4422-join        
        Label        -compare-4422-join        
        JumpTrue     -print-boolean-4423-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4423-join  
        Label        -print-boolean-4423-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4423-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4424-arg1        
        PushI        51                        
        Label        -compare-4424-arg2        
        PushI        41                        
        PushI        88                        
        Multiply                               
        Label        -compare-4424-sub         
        Subtract                               
        JumpFalse    -compare-4424-true        
        Jump         -compare-4424-false       
        Label        -compare-4424-true        
        PushI        1                         
        Jump         -compare-4424-join        
        Label        -compare-4424-false       
        PushI        0                         
        Jump         -compare-4424-join        
        Label        -compare-4424-join        
        JumpTrue     -print-boolean-4425-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4425-join  
        Label        -print-boolean-4425-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4425-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4426-arg1        
        PushI        49                        
        Label        -compare-4426-arg2        
        PushI        93                        
        PushI        45                        
        Multiply                               
        Label        -compare-4426-sub         
        Subtract                               
        JumpFalse    -compare-4426-true        
        Jump         -compare-4426-false       
        Label        -compare-4426-true        
        PushI        1                         
        Jump         -compare-4426-join        
        Label        -compare-4426-false       
        PushI        0                         
        Jump         -compare-4426-join        
        Label        -compare-4426-join        
        JumpTrue     -print-boolean-4427-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4427-join  
        Label        -print-boolean-4427-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4427-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4428-arg1        
        PushI        17                        
        Label        -compare-4428-arg2        
        PushI        88                        
        PushI        13                        
        Multiply                               
        Label        -compare-4428-sub         
        Subtract                               
        JumpFalse    -compare-4428-true        
        Jump         -compare-4428-false       
        Label        -compare-4428-true        
        PushI        1                         
        Jump         -compare-4428-join        
        Label        -compare-4428-false       
        PushI        0                         
        Jump         -compare-4428-join        
        Label        -compare-4428-join        
        JumpTrue     -print-boolean-4429-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4429-join  
        Label        -print-boolean-4429-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4429-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4430-arg1        
        PushI        5                         
        PushI        73                        
        Multiply                               
        Label        -compare-4430-arg2        
        PushI        27                        
        PushI        69                        
        Multiply                               
        Label        -compare-4430-sub         
        Subtract                               
        JumpFalse    -compare-4430-true        
        Jump         -compare-4430-false       
        Label        -compare-4430-true        
        PushI        1                         
        Jump         -compare-4430-join        
        Label        -compare-4430-false       
        PushI        0                         
        Jump         -compare-4430-join        
        Label        -compare-4430-join        
        JumpTrue     -print-boolean-4431-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4431-join  
        Label        -print-boolean-4431-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4431-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4432-arg1        
        PushI        99                        
        PushI        39                        
        Multiply                               
        Label        -compare-4432-arg2        
        PushI        59                        
        PushI        96                        
        Multiply                               
        Label        -compare-4432-sub         
        Subtract                               
        JumpFalse    -compare-4432-true        
        Jump         -compare-4432-false       
        Label        -compare-4432-true        
        PushI        1                         
        Jump         -compare-4432-join        
        Label        -compare-4432-false       
        PushI        0                         
        Jump         -compare-4432-join        
        Label        -compare-4432-join        
        JumpTrue     -print-boolean-4433-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4433-join  
        Label        -print-boolean-4433-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4433-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4434-arg1        
        PushI        49                        
        PushI        19                        
        Multiply                               
        Label        -compare-4434-arg2        
        PushI        86                        
        PushI        29                        
        Multiply                               
        Label        -compare-4434-sub         
        Subtract                               
        JumpFalse    -compare-4434-true        
        Jump         -compare-4434-false       
        Label        -compare-4434-true        
        PushI        1                         
        Jump         -compare-4434-join        
        Label        -compare-4434-false       
        PushI        0                         
        Jump         -compare-4434-join        
        Label        -compare-4434-join        
        JumpTrue     -print-boolean-4435-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4435-join  
        Label        -print-boolean-4435-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4435-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4436-arg1        
        PushI        6                         
        PushI        84                        
        Multiply                               
        Label        -compare-4436-arg2        
        PushI        2                         
        PushI        56                        
        Multiply                               
        Label        -compare-4436-sub         
        Subtract                               
        JumpFalse    -compare-4436-true        
        Jump         -compare-4436-false       
        Label        -compare-4436-true        
        PushI        1                         
        Jump         -compare-4436-join        
        Label        -compare-4436-false       
        PushI        0                         
        Jump         -compare-4436-join        
        Label        -compare-4436-join        
        JumpTrue     -print-boolean-4437-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4437-join  
        Label        -print-boolean-4437-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4437-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4438-arg1        
        PushI        50                        
        PushI        65                        
        Multiply                               
        Label        -compare-4438-arg2        
        PushI        50                        
        PushI        72                        
        Multiply                               
        Label        -compare-4438-sub         
        Subtract                               
        JumpFalse    -compare-4438-true        
        Jump         -compare-4438-false       
        Label        -compare-4438-true        
        PushI        1                         
        Jump         -compare-4438-join        
        Label        -compare-4438-false       
        PushI        0                         
        Jump         -compare-4438-join        
        Label        -compare-4438-join        
        JumpTrue     -print-boolean-4439-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4439-join  
        Label        -print-boolean-4439-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4439-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4440-arg1        
        PushI        98                        
        PushI        37                        
        Multiply                               
        Label        -compare-4440-arg2        
        PushI        91                        
        PushI        55                        
        Multiply                               
        Label        -compare-4440-sub         
        Subtract                               
        JumpFalse    -compare-4440-true        
        Jump         -compare-4440-false       
        Label        -compare-4440-true        
        PushI        1                         
        Jump         -compare-4440-join        
        Label        -compare-4440-false       
        PushI        0                         
        Jump         -compare-4440-join        
        Label        -compare-4440-join        
        JumpTrue     -print-boolean-4441-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4441-join  
        Label        -print-boolean-4441-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4441-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4442-arg1        
        PushI        74                        
        PushI        74                        
        Multiply                               
        Label        -compare-4442-arg2        
        PushI        45                        
        PushI        87                        
        Multiply                               
        Label        -compare-4442-sub         
        Subtract                               
        JumpFalse    -compare-4442-true        
        Jump         -compare-4442-false       
        Label        -compare-4442-true        
        PushI        1                         
        Jump         -compare-4442-join        
        Label        -compare-4442-false       
        PushI        0                         
        Jump         -compare-4442-join        
        Label        -compare-4442-join        
        JumpTrue     -print-boolean-4443-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4443-join  
        Label        -print-boolean-4443-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4443-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4444-arg1        
        PushI        75                        
        PushI        67                        
        Multiply                               
        Label        -compare-4444-arg2        
        PushI        59                        
        PushI        17                        
        Multiply                               
        Label        -compare-4444-sub         
        Subtract                               
        JumpFalse    -compare-4444-true        
        Jump         -compare-4444-false       
        Label        -compare-4444-true        
        PushI        1                         
        Jump         -compare-4444-join        
        Label        -compare-4444-false       
        PushI        0                         
        Jump         -compare-4444-join        
        Label        -compare-4444-join        
        JumpTrue     -print-boolean-4445-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4445-join  
        Label        -print-boolean-4445-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4445-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4446-arg1        
        PushI        60                        
        PushI        58                        
        Multiply                               
        Label        -compare-4446-arg2        
        PushI        11                        
        PushI        65                        
        Multiply                               
        Label        -compare-4446-sub         
        Subtract                               
        JumpFalse    -compare-4446-true        
        Jump         -compare-4446-false       
        Label        -compare-4446-true        
        PushI        1                         
        Jump         -compare-4446-join        
        Label        -compare-4446-false       
        PushI        0                         
        Jump         -compare-4446-join        
        Label        -compare-4446-join        
        JumpTrue     -print-boolean-4447-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4447-join  
        Label        -print-boolean-4447-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4447-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4448-arg1        
        PushI        97                        
        PushI        81                        
        Multiply                               
        Label        -compare-4448-arg2        
        PushI        96                        
        PushI        79                        
        Multiply                               
        Label        -compare-4448-sub         
        Subtract                               
        JumpFalse    -compare-4448-true        
        Jump         -compare-4448-false       
        Label        -compare-4448-true        
        PushI        1                         
        Jump         -compare-4448-join        
        Label        -compare-4448-false       
        PushI        0                         
        Jump         -compare-4448-join        
        Label        -compare-4448-join        
        JumpTrue     -print-boolean-4449-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4449-join  
        Label        -print-boolean-4449-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4449-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4450-arg1        
        PushI        63                        
        PushI        3                         
        Multiply                               
        Label        -compare-4450-arg2        
        PushI        47                        
        PushI        82                        
        Multiply                               
        Label        -compare-4450-sub         
        Subtract                               
        JumpFalse    -compare-4450-true        
        Jump         -compare-4450-false       
        Label        -compare-4450-true        
        PushI        1                         
        Jump         -compare-4450-join        
        Label        -compare-4450-false       
        PushI        0                         
        Jump         -compare-4450-join        
        Label        -compare-4450-join        
        JumpTrue     -print-boolean-4451-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4451-join  
        Label        -print-boolean-4451-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4451-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4452-arg1        
        PushI        6                         
        PushI        16                        
        Multiply                               
        Label        -compare-4452-arg2        
        PushI        30                        
        PushI        11                        
        Multiply                               
        Label        -compare-4452-sub         
        Subtract                               
        JumpFalse    -compare-4452-true        
        Jump         -compare-4452-false       
        Label        -compare-4452-true        
        PushI        1                         
        Jump         -compare-4452-join        
        Label        -compare-4452-false       
        PushI        0                         
        Jump         -compare-4452-join        
        Label        -compare-4452-join        
        JumpTrue     -print-boolean-4453-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4453-join  
        Label        -print-boolean-4453-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4453-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
