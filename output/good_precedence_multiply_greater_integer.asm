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
        Label        -compare-4513-arg1        
        PushI        8                         
        PushI        21                        
        Multiply                               
        Label        -compare-4513-arg2        
        PushI        15                        
        Label        -compare-4513-sub         
        Subtract                               
        JumpPos      -compare-4513-true        
        Jump         -compare-4513-false       
        Label        -compare-4513-true        
        PushI        1                         
        Jump         -compare-4513-join        
        Label        -compare-4513-false       
        PushI        0                         
        Jump         -compare-4513-join        
        Label        -compare-4513-join        
        JumpTrue     -print-boolean-4514-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4514-join  
        Label        -print-boolean-4514-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4514-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4515-arg1        
        PushI        79                        
        PushI        23                        
        Multiply                               
        Label        -compare-4515-arg2        
        PushI        61                        
        Label        -compare-4515-sub         
        Subtract                               
        JumpPos      -compare-4515-true        
        Jump         -compare-4515-false       
        Label        -compare-4515-true        
        PushI        1                         
        Jump         -compare-4515-join        
        Label        -compare-4515-false       
        PushI        0                         
        Jump         -compare-4515-join        
        Label        -compare-4515-join        
        JumpTrue     -print-boolean-4516-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4516-join  
        Label        -print-boolean-4516-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4516-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4517-arg1        
        PushI        48                        
        PushI        35                        
        Multiply                               
        Label        -compare-4517-arg2        
        PushI        18                        
        Label        -compare-4517-sub         
        Subtract                               
        JumpPos      -compare-4517-true        
        Jump         -compare-4517-false       
        Label        -compare-4517-true        
        PushI        1                         
        Jump         -compare-4517-join        
        Label        -compare-4517-false       
        PushI        0                         
        Jump         -compare-4517-join        
        Label        -compare-4517-join        
        JumpTrue     -print-boolean-4518-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4518-join  
        Label        -print-boolean-4518-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4518-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4519-arg1        
        PushI        65                        
        PushI        44                        
        Multiply                               
        Label        -compare-4519-arg2        
        PushI        93                        
        Label        -compare-4519-sub         
        Subtract                               
        JumpPos      -compare-4519-true        
        Jump         -compare-4519-false       
        Label        -compare-4519-true        
        PushI        1                         
        Jump         -compare-4519-join        
        Label        -compare-4519-false       
        PushI        0                         
        Jump         -compare-4519-join        
        Label        -compare-4519-join        
        JumpTrue     -print-boolean-4520-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4520-join  
        Label        -print-boolean-4520-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4520-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4521-arg1        
        PushI        24                        
        PushI        99                        
        Multiply                               
        Label        -compare-4521-arg2        
        PushI        1                         
        Label        -compare-4521-sub         
        Subtract                               
        JumpPos      -compare-4521-true        
        Jump         -compare-4521-false       
        Label        -compare-4521-true        
        PushI        1                         
        Jump         -compare-4521-join        
        Label        -compare-4521-false       
        PushI        0                         
        Jump         -compare-4521-join        
        Label        -compare-4521-join        
        JumpTrue     -print-boolean-4522-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4522-join  
        Label        -print-boolean-4522-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4522-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4523-arg1        
        PushI        25                        
        PushI        51                        
        Multiply                               
        Label        -compare-4523-arg2        
        PushI        7                         
        Label        -compare-4523-sub         
        Subtract                               
        JumpPos      -compare-4523-true        
        Jump         -compare-4523-false       
        Label        -compare-4523-true        
        PushI        1                         
        Jump         -compare-4523-join        
        Label        -compare-4523-false       
        PushI        0                         
        Jump         -compare-4523-join        
        Label        -compare-4523-join        
        JumpTrue     -print-boolean-4524-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4524-join  
        Label        -print-boolean-4524-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4524-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4525-arg1        
        PushI        29                        
        PushI        85                        
        Multiply                               
        Label        -compare-4525-arg2        
        PushI        9                         
        Label        -compare-4525-sub         
        Subtract                               
        JumpPos      -compare-4525-true        
        Jump         -compare-4525-false       
        Label        -compare-4525-true        
        PushI        1                         
        Jump         -compare-4525-join        
        Label        -compare-4525-false       
        PushI        0                         
        Jump         -compare-4525-join        
        Label        -compare-4525-join        
        JumpTrue     -print-boolean-4526-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4526-join  
        Label        -print-boolean-4526-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4526-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4527-arg1        
        PushI        99                        
        PushI        83                        
        Multiply                               
        Label        -compare-4527-arg2        
        PushI        67                        
        Label        -compare-4527-sub         
        Subtract                               
        JumpPos      -compare-4527-true        
        Jump         -compare-4527-false       
        Label        -compare-4527-true        
        PushI        1                         
        Jump         -compare-4527-join        
        Label        -compare-4527-false       
        PushI        0                         
        Jump         -compare-4527-join        
        Label        -compare-4527-join        
        JumpTrue     -print-boolean-4528-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4528-join  
        Label        -print-boolean-4528-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4528-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4529-arg1        
        PushI        87                        
        PushI        13                        
        Multiply                               
        Label        -compare-4529-arg2        
        PushI        85                        
        Label        -compare-4529-sub         
        Subtract                               
        JumpPos      -compare-4529-true        
        Jump         -compare-4529-false       
        Label        -compare-4529-true        
        PushI        1                         
        Jump         -compare-4529-join        
        Label        -compare-4529-false       
        PushI        0                         
        Jump         -compare-4529-join        
        Label        -compare-4529-join        
        JumpTrue     -print-boolean-4530-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4530-join  
        Label        -print-boolean-4530-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4530-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4531-arg1        
        PushI        19                        
        PushI        47                        
        Multiply                               
        Label        -compare-4531-arg2        
        PushI        82                        
        Label        -compare-4531-sub         
        Subtract                               
        JumpPos      -compare-4531-true        
        Jump         -compare-4531-false       
        Label        -compare-4531-true        
        PushI        1                         
        Jump         -compare-4531-join        
        Label        -compare-4531-false       
        PushI        0                         
        Jump         -compare-4531-join        
        Label        -compare-4531-join        
        JumpTrue     -print-boolean-4532-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4532-join  
        Label        -print-boolean-4532-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4532-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4533-arg1        
        PushI        58                        
        PushI        80                        
        Multiply                               
        Label        -compare-4533-arg2        
        PushI        44                        
        Label        -compare-4533-sub         
        Subtract                               
        JumpPos      -compare-4533-true        
        Jump         -compare-4533-false       
        Label        -compare-4533-true        
        PushI        1                         
        Jump         -compare-4533-join        
        Label        -compare-4533-false       
        PushI        0                         
        Jump         -compare-4533-join        
        Label        -compare-4533-join        
        JumpTrue     -print-boolean-4534-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4534-join  
        Label        -print-boolean-4534-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4534-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4535-arg1        
        PushI        34                        
        PushI        24                        
        Multiply                               
        Label        -compare-4535-arg2        
        PushI        59                        
        Label        -compare-4535-sub         
        Subtract                               
        JumpPos      -compare-4535-true        
        Jump         -compare-4535-false       
        Label        -compare-4535-true        
        PushI        1                         
        Jump         -compare-4535-join        
        Label        -compare-4535-false       
        PushI        0                         
        Jump         -compare-4535-join        
        Label        -compare-4535-join        
        JumpTrue     -print-boolean-4536-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4536-join  
        Label        -print-boolean-4536-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4536-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4537-arg1        
        PushI        8                         
        Label        -compare-4537-arg2        
        PushI        44                        
        PushI        83                        
        Multiply                               
        Label        -compare-4537-sub         
        Subtract                               
        JumpPos      -compare-4537-true        
        Jump         -compare-4537-false       
        Label        -compare-4537-true        
        PushI        1                         
        Jump         -compare-4537-join        
        Label        -compare-4537-false       
        PushI        0                         
        Jump         -compare-4537-join        
        Label        -compare-4537-join        
        JumpTrue     -print-boolean-4538-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4538-join  
        Label        -print-boolean-4538-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4538-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4539-arg1        
        PushI        27                        
        Label        -compare-4539-arg2        
        PushI        71                        
        PushI        40                        
        Multiply                               
        Label        -compare-4539-sub         
        Subtract                               
        JumpPos      -compare-4539-true        
        Jump         -compare-4539-false       
        Label        -compare-4539-true        
        PushI        1                         
        Jump         -compare-4539-join        
        Label        -compare-4539-false       
        PushI        0                         
        Jump         -compare-4539-join        
        Label        -compare-4539-join        
        JumpTrue     -print-boolean-4540-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4540-join  
        Label        -print-boolean-4540-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4540-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4541-arg1        
        PushI        23                        
        Label        -compare-4541-arg2        
        PushI        37                        
        PushI        93                        
        Multiply                               
        Label        -compare-4541-sub         
        Subtract                               
        JumpPos      -compare-4541-true        
        Jump         -compare-4541-false       
        Label        -compare-4541-true        
        PushI        1                         
        Jump         -compare-4541-join        
        Label        -compare-4541-false       
        PushI        0                         
        Jump         -compare-4541-join        
        Label        -compare-4541-join        
        JumpTrue     -print-boolean-4542-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4542-join  
        Label        -print-boolean-4542-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4542-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4543-arg1        
        PushI        60                        
        Label        -compare-4543-arg2        
        PushI        23                        
        PushI        16                        
        Multiply                               
        Label        -compare-4543-sub         
        Subtract                               
        JumpPos      -compare-4543-true        
        Jump         -compare-4543-false       
        Label        -compare-4543-true        
        PushI        1                         
        Jump         -compare-4543-join        
        Label        -compare-4543-false       
        PushI        0                         
        Jump         -compare-4543-join        
        Label        -compare-4543-join        
        JumpTrue     -print-boolean-4544-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4544-join  
        Label        -print-boolean-4544-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4544-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4545-arg1        
        PushI        25                        
        Label        -compare-4545-arg2        
        PushI        30                        
        PushI        94                        
        Multiply                               
        Label        -compare-4545-sub         
        Subtract                               
        JumpPos      -compare-4545-true        
        Jump         -compare-4545-false       
        Label        -compare-4545-true        
        PushI        1                         
        Jump         -compare-4545-join        
        Label        -compare-4545-false       
        PushI        0                         
        Jump         -compare-4545-join        
        Label        -compare-4545-join        
        JumpTrue     -print-boolean-4546-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4546-join  
        Label        -print-boolean-4546-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4546-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4547-arg1        
        PushI        86                        
        Label        -compare-4547-arg2        
        PushI        40                        
        PushI        55                        
        Multiply                               
        Label        -compare-4547-sub         
        Subtract                               
        JumpPos      -compare-4547-true        
        Jump         -compare-4547-false       
        Label        -compare-4547-true        
        PushI        1                         
        Jump         -compare-4547-join        
        Label        -compare-4547-false       
        PushI        0                         
        Jump         -compare-4547-join        
        Label        -compare-4547-join        
        JumpTrue     -print-boolean-4548-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4548-join  
        Label        -print-boolean-4548-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4548-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4549-arg1        
        PushI        32                        
        Label        -compare-4549-arg2        
        PushI        75                        
        PushI        50                        
        Multiply                               
        Label        -compare-4549-sub         
        Subtract                               
        JumpPos      -compare-4549-true        
        Jump         -compare-4549-false       
        Label        -compare-4549-true        
        PushI        1                         
        Jump         -compare-4549-join        
        Label        -compare-4549-false       
        PushI        0                         
        Jump         -compare-4549-join        
        Label        -compare-4549-join        
        JumpTrue     -print-boolean-4550-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4550-join  
        Label        -print-boolean-4550-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4550-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4551-arg1        
        PushI        26                        
        Label        -compare-4551-arg2        
        PushI        58                        
        PushI        10                        
        Multiply                               
        Label        -compare-4551-sub         
        Subtract                               
        JumpPos      -compare-4551-true        
        Jump         -compare-4551-false       
        Label        -compare-4551-true        
        PushI        1                         
        Jump         -compare-4551-join        
        Label        -compare-4551-false       
        PushI        0                         
        Jump         -compare-4551-join        
        Label        -compare-4551-join        
        JumpTrue     -print-boolean-4552-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4552-join  
        Label        -print-boolean-4552-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4552-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4553-arg1        
        PushI        54                        
        Label        -compare-4553-arg2        
        PushI        94                        
        PushI        14                        
        Multiply                               
        Label        -compare-4553-sub         
        Subtract                               
        JumpPos      -compare-4553-true        
        Jump         -compare-4553-false       
        Label        -compare-4553-true        
        PushI        1                         
        Jump         -compare-4553-join        
        Label        -compare-4553-false       
        PushI        0                         
        Jump         -compare-4553-join        
        Label        -compare-4553-join        
        JumpTrue     -print-boolean-4554-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4554-join  
        Label        -print-boolean-4554-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4554-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4555-arg1        
        PushI        58                        
        Label        -compare-4555-arg2        
        PushI        38                        
        PushI        8                         
        Multiply                               
        Label        -compare-4555-sub         
        Subtract                               
        JumpPos      -compare-4555-true        
        Jump         -compare-4555-false       
        Label        -compare-4555-true        
        PushI        1                         
        Jump         -compare-4555-join        
        Label        -compare-4555-false       
        PushI        0                         
        Jump         -compare-4555-join        
        Label        -compare-4555-join        
        JumpTrue     -print-boolean-4556-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4556-join  
        Label        -print-boolean-4556-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4556-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4557-arg1        
        PushI        41                        
        Label        -compare-4557-arg2        
        PushI        56                        
        PushI        94                        
        Multiply                               
        Label        -compare-4557-sub         
        Subtract                               
        JumpPos      -compare-4557-true        
        Jump         -compare-4557-false       
        Label        -compare-4557-true        
        PushI        1                         
        Jump         -compare-4557-join        
        Label        -compare-4557-false       
        PushI        0                         
        Jump         -compare-4557-join        
        Label        -compare-4557-join        
        JumpTrue     -print-boolean-4558-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4558-join  
        Label        -print-boolean-4558-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4558-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4559-arg1        
        PushI        40                        
        Label        -compare-4559-arg2        
        PushI        17                        
        PushI        48                        
        Multiply                               
        Label        -compare-4559-sub         
        Subtract                               
        JumpPos      -compare-4559-true        
        Jump         -compare-4559-false       
        Label        -compare-4559-true        
        PushI        1                         
        Jump         -compare-4559-join        
        Label        -compare-4559-false       
        PushI        0                         
        Jump         -compare-4559-join        
        Label        -compare-4559-join        
        JumpTrue     -print-boolean-4560-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4560-join  
        Label        -print-boolean-4560-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4560-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4561-arg1        
        PushI        79                        
        PushI        51                        
        Multiply                               
        Label        -compare-4561-arg2        
        PushI        43                        
        PushI        80                        
        Multiply                               
        Label        -compare-4561-sub         
        Subtract                               
        JumpPos      -compare-4561-true        
        Jump         -compare-4561-false       
        Label        -compare-4561-true        
        PushI        1                         
        Jump         -compare-4561-join        
        Label        -compare-4561-false       
        PushI        0                         
        Jump         -compare-4561-join        
        Label        -compare-4561-join        
        JumpTrue     -print-boolean-4562-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4562-join  
        Label        -print-boolean-4562-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4562-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4563-arg1        
        PushI        29                        
        PushI        10                        
        Multiply                               
        Label        -compare-4563-arg2        
        PushI        46                        
        PushI        24                        
        Multiply                               
        Label        -compare-4563-sub         
        Subtract                               
        JumpPos      -compare-4563-true        
        Jump         -compare-4563-false       
        Label        -compare-4563-true        
        PushI        1                         
        Jump         -compare-4563-join        
        Label        -compare-4563-false       
        PushI        0                         
        Jump         -compare-4563-join        
        Label        -compare-4563-join        
        JumpTrue     -print-boolean-4564-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4564-join  
        Label        -print-boolean-4564-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4564-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4565-arg1        
        PushI        25                        
        PushI        31                        
        Multiply                               
        Label        -compare-4565-arg2        
        PushI        45                        
        PushI        43                        
        Multiply                               
        Label        -compare-4565-sub         
        Subtract                               
        JumpPos      -compare-4565-true        
        Jump         -compare-4565-false       
        Label        -compare-4565-true        
        PushI        1                         
        Jump         -compare-4565-join        
        Label        -compare-4565-false       
        PushI        0                         
        Jump         -compare-4565-join        
        Label        -compare-4565-join        
        JumpTrue     -print-boolean-4566-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4566-join  
        Label        -print-boolean-4566-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4566-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4567-arg1        
        PushI        64                        
        PushI        9                         
        Multiply                               
        Label        -compare-4567-arg2        
        PushI        6                         
        PushI        62                        
        Multiply                               
        Label        -compare-4567-sub         
        Subtract                               
        JumpPos      -compare-4567-true        
        Jump         -compare-4567-false       
        Label        -compare-4567-true        
        PushI        1                         
        Jump         -compare-4567-join        
        Label        -compare-4567-false       
        PushI        0                         
        Jump         -compare-4567-join        
        Label        -compare-4567-join        
        JumpTrue     -print-boolean-4568-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4568-join  
        Label        -print-boolean-4568-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4568-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4569-arg1        
        PushI        57                        
        PushI        69                        
        Multiply                               
        Label        -compare-4569-arg2        
        PushI        14                        
        PushI        60                        
        Multiply                               
        Label        -compare-4569-sub         
        Subtract                               
        JumpPos      -compare-4569-true        
        Jump         -compare-4569-false       
        Label        -compare-4569-true        
        PushI        1                         
        Jump         -compare-4569-join        
        Label        -compare-4569-false       
        PushI        0                         
        Jump         -compare-4569-join        
        Label        -compare-4569-join        
        JumpTrue     -print-boolean-4570-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4570-join  
        Label        -print-boolean-4570-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4570-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4571-arg1        
        PushI        82                        
        PushI        57                        
        Multiply                               
        Label        -compare-4571-arg2        
        PushI        86                        
        PushI        20                        
        Multiply                               
        Label        -compare-4571-sub         
        Subtract                               
        JumpPos      -compare-4571-true        
        Jump         -compare-4571-false       
        Label        -compare-4571-true        
        PushI        1                         
        Jump         -compare-4571-join        
        Label        -compare-4571-false       
        PushI        0                         
        Jump         -compare-4571-join        
        Label        -compare-4571-join        
        JumpTrue     -print-boolean-4572-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4572-join  
        Label        -print-boolean-4572-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4572-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4573-arg1        
        PushI        14                        
        PushI        24                        
        Multiply                               
        Label        -compare-4573-arg2        
        PushI        25                        
        PushI        61                        
        Multiply                               
        Label        -compare-4573-sub         
        Subtract                               
        JumpPos      -compare-4573-true        
        Jump         -compare-4573-false       
        Label        -compare-4573-true        
        PushI        1                         
        Jump         -compare-4573-join        
        Label        -compare-4573-false       
        PushI        0                         
        Jump         -compare-4573-join        
        Label        -compare-4573-join        
        JumpTrue     -print-boolean-4574-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4574-join  
        Label        -print-boolean-4574-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4574-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4575-arg1        
        PushI        60                        
        PushI        89                        
        Multiply                               
        Label        -compare-4575-arg2        
        PushI        13                        
        PushI        65                        
        Multiply                               
        Label        -compare-4575-sub         
        Subtract                               
        JumpPos      -compare-4575-true        
        Jump         -compare-4575-false       
        Label        -compare-4575-true        
        PushI        1                         
        Jump         -compare-4575-join        
        Label        -compare-4575-false       
        PushI        0                         
        Jump         -compare-4575-join        
        Label        -compare-4575-join        
        JumpTrue     -print-boolean-4576-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4576-join  
        Label        -print-boolean-4576-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4576-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4577-arg1        
        PushI        31                        
        PushI        90                        
        Multiply                               
        Label        -compare-4577-arg2        
        PushI        60                        
        PushI        56                        
        Multiply                               
        Label        -compare-4577-sub         
        Subtract                               
        JumpPos      -compare-4577-true        
        Jump         -compare-4577-false       
        Label        -compare-4577-true        
        PushI        1                         
        Jump         -compare-4577-join        
        Label        -compare-4577-false       
        PushI        0                         
        Jump         -compare-4577-join        
        Label        -compare-4577-join        
        JumpTrue     -print-boolean-4578-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4578-join  
        Label        -print-boolean-4578-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4578-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4579-arg1        
        PushI        29                        
        PushI        29                        
        Multiply                               
        Label        -compare-4579-arg2        
        PushI        63                        
        PushI        89                        
        Multiply                               
        Label        -compare-4579-sub         
        Subtract                               
        JumpPos      -compare-4579-true        
        Jump         -compare-4579-false       
        Label        -compare-4579-true        
        PushI        1                         
        Jump         -compare-4579-join        
        Label        -compare-4579-false       
        PushI        0                         
        Jump         -compare-4579-join        
        Label        -compare-4579-join        
        JumpTrue     -print-boolean-4580-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4580-join  
        Label        -print-boolean-4580-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4580-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4581-arg1        
        PushI        9                         
        PushI        31                        
        Multiply                               
        Label        -compare-4581-arg2        
        PushI        84                        
        PushI        92                        
        Multiply                               
        Label        -compare-4581-sub         
        Subtract                               
        JumpPos      -compare-4581-true        
        Jump         -compare-4581-false       
        Label        -compare-4581-true        
        PushI        1                         
        Jump         -compare-4581-join        
        Label        -compare-4581-false       
        PushI        0                         
        Jump         -compare-4581-join        
        Label        -compare-4581-join        
        JumpTrue     -print-boolean-4582-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4582-join  
        Label        -print-boolean-4582-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4582-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4583-arg1        
        PushI        17                        
        PushI        29                        
        Multiply                               
        Label        -compare-4583-arg2        
        PushI        62                        
        PushI        80                        
        Multiply                               
        Label        -compare-4583-sub         
        Subtract                               
        JumpPos      -compare-4583-true        
        Jump         -compare-4583-false       
        Label        -compare-4583-true        
        PushI        1                         
        Jump         -compare-4583-join        
        Label        -compare-4583-false       
        PushI        0                         
        Jump         -compare-4583-join        
        Label        -compare-4583-join        
        JumpTrue     -print-boolean-4584-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4584-join  
        Label        -print-boolean-4584-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4584-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
