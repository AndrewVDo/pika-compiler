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
        Label        -compare-4369-arg1        
        PushI        14                        
        PushI        86                        
        Multiply                               
        Label        -compare-4369-arg2        
        PushI        71                        
        Label        -compare-4369-sub         
        Subtract                               
        JumpFalse    -compare-4369-true        
        Jump         -compare-4369-false       
        Label        -compare-4369-true        
        PushI        1                         
        Jump         -compare-4369-join        
        Label        -compare-4369-false       
        PushI        0                         
        Jump         -compare-4369-join        
        Label        -compare-4369-join        
        JumpTrue     -print-boolean-4370-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4370-join  
        Label        -print-boolean-4370-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4370-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4371-arg1        
        PushI        6                         
        PushI        64                        
        Multiply                               
        Label        -compare-4371-arg2        
        PushI        21                        
        Label        -compare-4371-sub         
        Subtract                               
        JumpFalse    -compare-4371-true        
        Jump         -compare-4371-false       
        Label        -compare-4371-true        
        PushI        1                         
        Jump         -compare-4371-join        
        Label        -compare-4371-false       
        PushI        0                         
        Jump         -compare-4371-join        
        Label        -compare-4371-join        
        JumpTrue     -print-boolean-4372-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4372-join  
        Label        -print-boolean-4372-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4372-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4373-arg1        
        PushI        11                        
        PushI        7                         
        Multiply                               
        Label        -compare-4373-arg2        
        PushI        11                        
        Label        -compare-4373-sub         
        Subtract                               
        JumpFalse    -compare-4373-true        
        Jump         -compare-4373-false       
        Label        -compare-4373-true        
        PushI        1                         
        Jump         -compare-4373-join        
        Label        -compare-4373-false       
        PushI        0                         
        Jump         -compare-4373-join        
        Label        -compare-4373-join        
        JumpTrue     -print-boolean-4374-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4374-join  
        Label        -print-boolean-4374-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4374-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4375-arg1        
        PushI        34                        
        PushI        37                        
        Multiply                               
        Label        -compare-4375-arg2        
        PushI        82                        
        Label        -compare-4375-sub         
        Subtract                               
        JumpFalse    -compare-4375-true        
        Jump         -compare-4375-false       
        Label        -compare-4375-true        
        PushI        1                         
        Jump         -compare-4375-join        
        Label        -compare-4375-false       
        PushI        0                         
        Jump         -compare-4375-join        
        Label        -compare-4375-join        
        JumpTrue     -print-boolean-4376-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4376-join  
        Label        -print-boolean-4376-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4376-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4377-arg1        
        PushI        53                        
        PushI        94                        
        Multiply                               
        Label        -compare-4377-arg2        
        PushI        88                        
        Label        -compare-4377-sub         
        Subtract                               
        JumpFalse    -compare-4377-true        
        Jump         -compare-4377-false       
        Label        -compare-4377-true        
        PushI        1                         
        Jump         -compare-4377-join        
        Label        -compare-4377-false       
        PushI        0                         
        Jump         -compare-4377-join        
        Label        -compare-4377-join        
        JumpTrue     -print-boolean-4378-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4378-join  
        Label        -print-boolean-4378-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4378-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4379-arg1        
        PushI        90                        
        PushI        37                        
        Multiply                               
        Label        -compare-4379-arg2        
        PushI        47                        
        Label        -compare-4379-sub         
        Subtract                               
        JumpFalse    -compare-4379-true        
        Jump         -compare-4379-false       
        Label        -compare-4379-true        
        PushI        1                         
        Jump         -compare-4379-join        
        Label        -compare-4379-false       
        PushI        0                         
        Jump         -compare-4379-join        
        Label        -compare-4379-join        
        JumpTrue     -print-boolean-4380-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4380-join  
        Label        -print-boolean-4380-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4380-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4381-arg1        
        PushI        90                        
        PushI        72                        
        Multiply                               
        Label        -compare-4381-arg2        
        PushI        61                        
        Label        -compare-4381-sub         
        Subtract                               
        JumpFalse    -compare-4381-true        
        Jump         -compare-4381-false       
        Label        -compare-4381-true        
        PushI        1                         
        Jump         -compare-4381-join        
        Label        -compare-4381-false       
        PushI        0                         
        Jump         -compare-4381-join        
        Label        -compare-4381-join        
        JumpTrue     -print-boolean-4382-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4382-join  
        Label        -print-boolean-4382-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4382-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4383-arg1        
        PushI        87                        
        PushI        86                        
        Multiply                               
        Label        -compare-4383-arg2        
        PushI        49                        
        Label        -compare-4383-sub         
        Subtract                               
        JumpFalse    -compare-4383-true        
        Jump         -compare-4383-false       
        Label        -compare-4383-true        
        PushI        1                         
        Jump         -compare-4383-join        
        Label        -compare-4383-false       
        PushI        0                         
        Jump         -compare-4383-join        
        Label        -compare-4383-join        
        JumpTrue     -print-boolean-4384-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4384-join  
        Label        -print-boolean-4384-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4384-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4385-arg1        
        PushI        31                        
        PushI        70                        
        Multiply                               
        Label        -compare-4385-arg2        
        PushI        94                        
        Label        -compare-4385-sub         
        Subtract                               
        JumpFalse    -compare-4385-true        
        Jump         -compare-4385-false       
        Label        -compare-4385-true        
        PushI        1                         
        Jump         -compare-4385-join        
        Label        -compare-4385-false       
        PushI        0                         
        Jump         -compare-4385-join        
        Label        -compare-4385-join        
        JumpTrue     -print-boolean-4386-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4386-join  
        Label        -print-boolean-4386-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4386-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4387-arg1        
        PushI        98                        
        PushI        86                        
        Multiply                               
        Label        -compare-4387-arg2        
        PushI        99                        
        Label        -compare-4387-sub         
        Subtract                               
        JumpFalse    -compare-4387-true        
        Jump         -compare-4387-false       
        Label        -compare-4387-true        
        PushI        1                         
        Jump         -compare-4387-join        
        Label        -compare-4387-false       
        PushI        0                         
        Jump         -compare-4387-join        
        Label        -compare-4387-join        
        JumpTrue     -print-boolean-4388-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4388-join  
        Label        -print-boolean-4388-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4388-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4389-arg1        
        PushI        57                        
        PushI        86                        
        Multiply                               
        Label        -compare-4389-arg2        
        PushI        46                        
        Label        -compare-4389-sub         
        Subtract                               
        JumpFalse    -compare-4389-true        
        Jump         -compare-4389-false       
        Label        -compare-4389-true        
        PushI        1                         
        Jump         -compare-4389-join        
        Label        -compare-4389-false       
        PushI        0                         
        Jump         -compare-4389-join        
        Label        -compare-4389-join        
        JumpTrue     -print-boolean-4390-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4390-join  
        Label        -print-boolean-4390-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4390-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4391-arg1        
        PushI        59                        
        PushI        42                        
        Multiply                               
        Label        -compare-4391-arg2        
        PushI        54                        
        Label        -compare-4391-sub         
        Subtract                               
        JumpFalse    -compare-4391-true        
        Jump         -compare-4391-false       
        Label        -compare-4391-true        
        PushI        1                         
        Jump         -compare-4391-join        
        Label        -compare-4391-false       
        PushI        0                         
        Jump         -compare-4391-join        
        Label        -compare-4391-join        
        JumpTrue     -print-boolean-4392-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4392-join  
        Label        -print-boolean-4392-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4392-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4393-arg1        
        PushI        67                        
        Label        -compare-4393-arg2        
        PushI        53                        
        PushI        81                        
        Multiply                               
        Label        -compare-4393-sub         
        Subtract                               
        JumpFalse    -compare-4393-true        
        Jump         -compare-4393-false       
        Label        -compare-4393-true        
        PushI        1                         
        Jump         -compare-4393-join        
        Label        -compare-4393-false       
        PushI        0                         
        Jump         -compare-4393-join        
        Label        -compare-4393-join        
        JumpTrue     -print-boolean-4394-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4394-join  
        Label        -print-boolean-4394-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4394-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4395-arg1        
        PushI        38                        
        Label        -compare-4395-arg2        
        PushI        17                        
        PushI        56                        
        Multiply                               
        Label        -compare-4395-sub         
        Subtract                               
        JumpFalse    -compare-4395-true        
        Jump         -compare-4395-false       
        Label        -compare-4395-true        
        PushI        1                         
        Jump         -compare-4395-join        
        Label        -compare-4395-false       
        PushI        0                         
        Jump         -compare-4395-join        
        Label        -compare-4395-join        
        JumpTrue     -print-boolean-4396-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4396-join  
        Label        -print-boolean-4396-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4396-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4397-arg1        
        PushI        56                        
        Label        -compare-4397-arg2        
        PushI        38                        
        PushI        50                        
        Multiply                               
        Label        -compare-4397-sub         
        Subtract                               
        JumpFalse    -compare-4397-true        
        Jump         -compare-4397-false       
        Label        -compare-4397-true        
        PushI        1                         
        Jump         -compare-4397-join        
        Label        -compare-4397-false       
        PushI        0                         
        Jump         -compare-4397-join        
        Label        -compare-4397-join        
        JumpTrue     -print-boolean-4398-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4398-join  
        Label        -print-boolean-4398-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4398-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4399-arg1        
        PushI        71                        
        Label        -compare-4399-arg2        
        PushI        88                        
        PushI        42                        
        Multiply                               
        Label        -compare-4399-sub         
        Subtract                               
        JumpFalse    -compare-4399-true        
        Jump         -compare-4399-false       
        Label        -compare-4399-true        
        PushI        1                         
        Jump         -compare-4399-join        
        Label        -compare-4399-false       
        PushI        0                         
        Jump         -compare-4399-join        
        Label        -compare-4399-join        
        JumpTrue     -print-boolean-4400-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4400-join  
        Label        -print-boolean-4400-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4400-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4401-arg1        
        PushI        46                        
        Label        -compare-4401-arg2        
        PushI        68                        
        PushI        17                        
        Multiply                               
        Label        -compare-4401-sub         
        Subtract                               
        JumpFalse    -compare-4401-true        
        Jump         -compare-4401-false       
        Label        -compare-4401-true        
        PushI        1                         
        Jump         -compare-4401-join        
        Label        -compare-4401-false       
        PushI        0                         
        Jump         -compare-4401-join        
        Label        -compare-4401-join        
        JumpTrue     -print-boolean-4402-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4402-join  
        Label        -print-boolean-4402-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4402-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4403-arg1        
        PushI        65                        
        Label        -compare-4403-arg2        
        PushI        29                        
        PushI        13                        
        Multiply                               
        Label        -compare-4403-sub         
        Subtract                               
        JumpFalse    -compare-4403-true        
        Jump         -compare-4403-false       
        Label        -compare-4403-true        
        PushI        1                         
        Jump         -compare-4403-join        
        Label        -compare-4403-false       
        PushI        0                         
        Jump         -compare-4403-join        
        Label        -compare-4403-join        
        JumpTrue     -print-boolean-4404-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4404-join  
        Label        -print-boolean-4404-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4404-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4405-arg1        
        PushI        17                        
        Label        -compare-4405-arg2        
        PushI        18                        
        PushI        29                        
        Multiply                               
        Label        -compare-4405-sub         
        Subtract                               
        JumpFalse    -compare-4405-true        
        Jump         -compare-4405-false       
        Label        -compare-4405-true        
        PushI        1                         
        Jump         -compare-4405-join        
        Label        -compare-4405-false       
        PushI        0                         
        Jump         -compare-4405-join        
        Label        -compare-4405-join        
        JumpTrue     -print-boolean-4406-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4406-join  
        Label        -print-boolean-4406-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4406-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4407-arg1        
        PushI        3                         
        Label        -compare-4407-arg2        
        PushI        80                        
        PushI        97                        
        Multiply                               
        Label        -compare-4407-sub         
        Subtract                               
        JumpFalse    -compare-4407-true        
        Jump         -compare-4407-false       
        Label        -compare-4407-true        
        PushI        1                         
        Jump         -compare-4407-join        
        Label        -compare-4407-false       
        PushI        0                         
        Jump         -compare-4407-join        
        Label        -compare-4407-join        
        JumpTrue     -print-boolean-4408-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4408-join  
        Label        -print-boolean-4408-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4408-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4409-arg1        
        PushI        9                         
        Label        -compare-4409-arg2        
        PushI        34                        
        PushI        94                        
        Multiply                               
        Label        -compare-4409-sub         
        Subtract                               
        JumpFalse    -compare-4409-true        
        Jump         -compare-4409-false       
        Label        -compare-4409-true        
        PushI        1                         
        Jump         -compare-4409-join        
        Label        -compare-4409-false       
        PushI        0                         
        Jump         -compare-4409-join        
        Label        -compare-4409-join        
        JumpTrue     -print-boolean-4410-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4410-join  
        Label        -print-boolean-4410-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4410-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4411-arg1        
        PushI        51                        
        Label        -compare-4411-arg2        
        PushI        41                        
        PushI        88                        
        Multiply                               
        Label        -compare-4411-sub         
        Subtract                               
        JumpFalse    -compare-4411-true        
        Jump         -compare-4411-false       
        Label        -compare-4411-true        
        PushI        1                         
        Jump         -compare-4411-join        
        Label        -compare-4411-false       
        PushI        0                         
        Jump         -compare-4411-join        
        Label        -compare-4411-join        
        JumpTrue     -print-boolean-4412-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4412-join  
        Label        -print-boolean-4412-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4412-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4413-arg1        
        PushI        49                        
        Label        -compare-4413-arg2        
        PushI        93                        
        PushI        45                        
        Multiply                               
        Label        -compare-4413-sub         
        Subtract                               
        JumpFalse    -compare-4413-true        
        Jump         -compare-4413-false       
        Label        -compare-4413-true        
        PushI        1                         
        Jump         -compare-4413-join        
        Label        -compare-4413-false       
        PushI        0                         
        Jump         -compare-4413-join        
        Label        -compare-4413-join        
        JumpTrue     -print-boolean-4414-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4414-join  
        Label        -print-boolean-4414-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4414-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4415-arg1        
        PushI        17                        
        Label        -compare-4415-arg2        
        PushI        88                        
        PushI        13                        
        Multiply                               
        Label        -compare-4415-sub         
        Subtract                               
        JumpFalse    -compare-4415-true        
        Jump         -compare-4415-false       
        Label        -compare-4415-true        
        PushI        1                         
        Jump         -compare-4415-join        
        Label        -compare-4415-false       
        PushI        0                         
        Jump         -compare-4415-join        
        Label        -compare-4415-join        
        JumpTrue     -print-boolean-4416-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4416-join  
        Label        -print-boolean-4416-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4416-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4417-arg1        
        PushI        5                         
        PushI        73                        
        Multiply                               
        Label        -compare-4417-arg2        
        PushI        27                        
        PushI        69                        
        Multiply                               
        Label        -compare-4417-sub         
        Subtract                               
        JumpFalse    -compare-4417-true        
        Jump         -compare-4417-false       
        Label        -compare-4417-true        
        PushI        1                         
        Jump         -compare-4417-join        
        Label        -compare-4417-false       
        PushI        0                         
        Jump         -compare-4417-join        
        Label        -compare-4417-join        
        JumpTrue     -print-boolean-4418-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4418-join  
        Label        -print-boolean-4418-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4418-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4419-arg1        
        PushI        99                        
        PushI        39                        
        Multiply                               
        Label        -compare-4419-arg2        
        PushI        59                        
        PushI        96                        
        Multiply                               
        Label        -compare-4419-sub         
        Subtract                               
        JumpFalse    -compare-4419-true        
        Jump         -compare-4419-false       
        Label        -compare-4419-true        
        PushI        1                         
        Jump         -compare-4419-join        
        Label        -compare-4419-false       
        PushI        0                         
        Jump         -compare-4419-join        
        Label        -compare-4419-join        
        JumpTrue     -print-boolean-4420-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4420-join  
        Label        -print-boolean-4420-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4420-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4421-arg1        
        PushI        49                        
        PushI        19                        
        Multiply                               
        Label        -compare-4421-arg2        
        PushI        86                        
        PushI        29                        
        Multiply                               
        Label        -compare-4421-sub         
        Subtract                               
        JumpFalse    -compare-4421-true        
        Jump         -compare-4421-false       
        Label        -compare-4421-true        
        PushI        1                         
        Jump         -compare-4421-join        
        Label        -compare-4421-false       
        PushI        0                         
        Jump         -compare-4421-join        
        Label        -compare-4421-join        
        JumpTrue     -print-boolean-4422-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4422-join  
        Label        -print-boolean-4422-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4422-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4423-arg1        
        PushI        6                         
        PushI        84                        
        Multiply                               
        Label        -compare-4423-arg2        
        PushI        2                         
        PushI        56                        
        Multiply                               
        Label        -compare-4423-sub         
        Subtract                               
        JumpFalse    -compare-4423-true        
        Jump         -compare-4423-false       
        Label        -compare-4423-true        
        PushI        1                         
        Jump         -compare-4423-join        
        Label        -compare-4423-false       
        PushI        0                         
        Jump         -compare-4423-join        
        Label        -compare-4423-join        
        JumpTrue     -print-boolean-4424-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4424-join  
        Label        -print-boolean-4424-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4424-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4425-arg1        
        PushI        50                        
        PushI        65                        
        Multiply                               
        Label        -compare-4425-arg2        
        PushI        50                        
        PushI        72                        
        Multiply                               
        Label        -compare-4425-sub         
        Subtract                               
        JumpFalse    -compare-4425-true        
        Jump         -compare-4425-false       
        Label        -compare-4425-true        
        PushI        1                         
        Jump         -compare-4425-join        
        Label        -compare-4425-false       
        PushI        0                         
        Jump         -compare-4425-join        
        Label        -compare-4425-join        
        JumpTrue     -print-boolean-4426-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4426-join  
        Label        -print-boolean-4426-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4426-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4427-arg1        
        PushI        98                        
        PushI        37                        
        Multiply                               
        Label        -compare-4427-arg2        
        PushI        91                        
        PushI        55                        
        Multiply                               
        Label        -compare-4427-sub         
        Subtract                               
        JumpFalse    -compare-4427-true        
        Jump         -compare-4427-false       
        Label        -compare-4427-true        
        PushI        1                         
        Jump         -compare-4427-join        
        Label        -compare-4427-false       
        PushI        0                         
        Jump         -compare-4427-join        
        Label        -compare-4427-join        
        JumpTrue     -print-boolean-4428-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4428-join  
        Label        -print-boolean-4428-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4428-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4429-arg1        
        PushI        74                        
        PushI        74                        
        Multiply                               
        Label        -compare-4429-arg2        
        PushI        45                        
        PushI        87                        
        Multiply                               
        Label        -compare-4429-sub         
        Subtract                               
        JumpFalse    -compare-4429-true        
        Jump         -compare-4429-false       
        Label        -compare-4429-true        
        PushI        1                         
        Jump         -compare-4429-join        
        Label        -compare-4429-false       
        PushI        0                         
        Jump         -compare-4429-join        
        Label        -compare-4429-join        
        JumpTrue     -print-boolean-4430-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4430-join  
        Label        -print-boolean-4430-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4430-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4431-arg1        
        PushI        75                        
        PushI        67                        
        Multiply                               
        Label        -compare-4431-arg2        
        PushI        59                        
        PushI        17                        
        Multiply                               
        Label        -compare-4431-sub         
        Subtract                               
        JumpFalse    -compare-4431-true        
        Jump         -compare-4431-false       
        Label        -compare-4431-true        
        PushI        1                         
        Jump         -compare-4431-join        
        Label        -compare-4431-false       
        PushI        0                         
        Jump         -compare-4431-join        
        Label        -compare-4431-join        
        JumpTrue     -print-boolean-4432-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4432-join  
        Label        -print-boolean-4432-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4432-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4433-arg1        
        PushI        60                        
        PushI        58                        
        Multiply                               
        Label        -compare-4433-arg2        
        PushI        11                        
        PushI        65                        
        Multiply                               
        Label        -compare-4433-sub         
        Subtract                               
        JumpFalse    -compare-4433-true        
        Jump         -compare-4433-false       
        Label        -compare-4433-true        
        PushI        1                         
        Jump         -compare-4433-join        
        Label        -compare-4433-false       
        PushI        0                         
        Jump         -compare-4433-join        
        Label        -compare-4433-join        
        JumpTrue     -print-boolean-4434-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4434-join  
        Label        -print-boolean-4434-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4434-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4435-arg1        
        PushI        97                        
        PushI        81                        
        Multiply                               
        Label        -compare-4435-arg2        
        PushI        96                        
        PushI        79                        
        Multiply                               
        Label        -compare-4435-sub         
        Subtract                               
        JumpFalse    -compare-4435-true        
        Jump         -compare-4435-false       
        Label        -compare-4435-true        
        PushI        1                         
        Jump         -compare-4435-join        
        Label        -compare-4435-false       
        PushI        0                         
        Jump         -compare-4435-join        
        Label        -compare-4435-join        
        JumpTrue     -print-boolean-4436-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4436-join  
        Label        -print-boolean-4436-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4436-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4437-arg1        
        PushI        63                        
        PushI        3                         
        Multiply                               
        Label        -compare-4437-arg2        
        PushI        47                        
        PushI        82                        
        Multiply                               
        Label        -compare-4437-sub         
        Subtract                               
        JumpFalse    -compare-4437-true        
        Jump         -compare-4437-false       
        Label        -compare-4437-true        
        PushI        1                         
        Jump         -compare-4437-join        
        Label        -compare-4437-false       
        PushI        0                         
        Jump         -compare-4437-join        
        Label        -compare-4437-join        
        JumpTrue     -print-boolean-4438-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4438-join  
        Label        -print-boolean-4438-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4438-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4439-arg1        
        PushI        6                         
        PushI        16                        
        Multiply                               
        Label        -compare-4439-arg2        
        PushI        30                        
        PushI        11                        
        Multiply                               
        Label        -compare-4439-sub         
        Subtract                               
        JumpFalse    -compare-4439-true        
        Jump         -compare-4439-false       
        Label        -compare-4439-true        
        PushI        1                         
        Jump         -compare-4439-join        
        Label        -compare-4439-false       
        PushI        0                         
        Jump         -compare-4439-join        
        Label        -compare-4439-join        
        JumpTrue     -print-boolean-4440-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4440-join  
        Label        -print-boolean-4440-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4440-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
