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
        Label        -compare-4526-arg1        
        PushI        8                         
        PushI        21                        
        Multiply                               
        Label        -compare-4526-arg2        
        PushI        15                        
        Label        -compare-4526-sub         
        Subtract                               
        JumpPos      -compare-4526-true        
        Jump         -compare-4526-false       
        Label        -compare-4526-true        
        PushI        1                         
        Jump         -compare-4526-join        
        Label        -compare-4526-false       
        PushI        0                         
        Jump         -compare-4526-join        
        Label        -compare-4526-join        
        JumpTrue     -print-boolean-4527-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4527-join  
        Label        -print-boolean-4527-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4527-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4528-arg1        
        PushI        79                        
        PushI        23                        
        Multiply                               
        Label        -compare-4528-arg2        
        PushI        61                        
        Label        -compare-4528-sub         
        Subtract                               
        JumpPos      -compare-4528-true        
        Jump         -compare-4528-false       
        Label        -compare-4528-true        
        PushI        1                         
        Jump         -compare-4528-join        
        Label        -compare-4528-false       
        PushI        0                         
        Jump         -compare-4528-join        
        Label        -compare-4528-join        
        JumpTrue     -print-boolean-4529-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4529-join  
        Label        -print-boolean-4529-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4529-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4530-arg1        
        PushI        48                        
        PushI        35                        
        Multiply                               
        Label        -compare-4530-arg2        
        PushI        18                        
        Label        -compare-4530-sub         
        Subtract                               
        JumpPos      -compare-4530-true        
        Jump         -compare-4530-false       
        Label        -compare-4530-true        
        PushI        1                         
        Jump         -compare-4530-join        
        Label        -compare-4530-false       
        PushI        0                         
        Jump         -compare-4530-join        
        Label        -compare-4530-join        
        JumpTrue     -print-boolean-4531-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4531-join  
        Label        -print-boolean-4531-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4531-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4532-arg1        
        PushI        65                        
        PushI        44                        
        Multiply                               
        Label        -compare-4532-arg2        
        PushI        93                        
        Label        -compare-4532-sub         
        Subtract                               
        JumpPos      -compare-4532-true        
        Jump         -compare-4532-false       
        Label        -compare-4532-true        
        PushI        1                         
        Jump         -compare-4532-join        
        Label        -compare-4532-false       
        PushI        0                         
        Jump         -compare-4532-join        
        Label        -compare-4532-join        
        JumpTrue     -print-boolean-4533-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4533-join  
        Label        -print-boolean-4533-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4533-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4534-arg1        
        PushI        24                        
        PushI        99                        
        Multiply                               
        Label        -compare-4534-arg2        
        PushI        1                         
        Label        -compare-4534-sub         
        Subtract                               
        JumpPos      -compare-4534-true        
        Jump         -compare-4534-false       
        Label        -compare-4534-true        
        PushI        1                         
        Jump         -compare-4534-join        
        Label        -compare-4534-false       
        PushI        0                         
        Jump         -compare-4534-join        
        Label        -compare-4534-join        
        JumpTrue     -print-boolean-4535-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4535-join  
        Label        -print-boolean-4535-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4535-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4536-arg1        
        PushI        25                        
        PushI        51                        
        Multiply                               
        Label        -compare-4536-arg2        
        PushI        7                         
        Label        -compare-4536-sub         
        Subtract                               
        JumpPos      -compare-4536-true        
        Jump         -compare-4536-false       
        Label        -compare-4536-true        
        PushI        1                         
        Jump         -compare-4536-join        
        Label        -compare-4536-false       
        PushI        0                         
        Jump         -compare-4536-join        
        Label        -compare-4536-join        
        JumpTrue     -print-boolean-4537-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4537-join  
        Label        -print-boolean-4537-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4537-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4538-arg1        
        PushI        29                        
        PushI        85                        
        Multiply                               
        Label        -compare-4538-arg2        
        PushI        9                         
        Label        -compare-4538-sub         
        Subtract                               
        JumpPos      -compare-4538-true        
        Jump         -compare-4538-false       
        Label        -compare-4538-true        
        PushI        1                         
        Jump         -compare-4538-join        
        Label        -compare-4538-false       
        PushI        0                         
        Jump         -compare-4538-join        
        Label        -compare-4538-join        
        JumpTrue     -print-boolean-4539-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4539-join  
        Label        -print-boolean-4539-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4539-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4540-arg1        
        PushI        99                        
        PushI        83                        
        Multiply                               
        Label        -compare-4540-arg2        
        PushI        67                        
        Label        -compare-4540-sub         
        Subtract                               
        JumpPos      -compare-4540-true        
        Jump         -compare-4540-false       
        Label        -compare-4540-true        
        PushI        1                         
        Jump         -compare-4540-join        
        Label        -compare-4540-false       
        PushI        0                         
        Jump         -compare-4540-join        
        Label        -compare-4540-join        
        JumpTrue     -print-boolean-4541-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4541-join  
        Label        -print-boolean-4541-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4541-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4542-arg1        
        PushI        87                        
        PushI        13                        
        Multiply                               
        Label        -compare-4542-arg2        
        PushI        85                        
        Label        -compare-4542-sub         
        Subtract                               
        JumpPos      -compare-4542-true        
        Jump         -compare-4542-false       
        Label        -compare-4542-true        
        PushI        1                         
        Jump         -compare-4542-join        
        Label        -compare-4542-false       
        PushI        0                         
        Jump         -compare-4542-join        
        Label        -compare-4542-join        
        JumpTrue     -print-boolean-4543-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4543-join  
        Label        -print-boolean-4543-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4543-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4544-arg1        
        PushI        19                        
        PushI        47                        
        Multiply                               
        Label        -compare-4544-arg2        
        PushI        82                        
        Label        -compare-4544-sub         
        Subtract                               
        JumpPos      -compare-4544-true        
        Jump         -compare-4544-false       
        Label        -compare-4544-true        
        PushI        1                         
        Jump         -compare-4544-join        
        Label        -compare-4544-false       
        PushI        0                         
        Jump         -compare-4544-join        
        Label        -compare-4544-join        
        JumpTrue     -print-boolean-4545-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4545-join  
        Label        -print-boolean-4545-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4545-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4546-arg1        
        PushI        58                        
        PushI        80                        
        Multiply                               
        Label        -compare-4546-arg2        
        PushI        44                        
        Label        -compare-4546-sub         
        Subtract                               
        JumpPos      -compare-4546-true        
        Jump         -compare-4546-false       
        Label        -compare-4546-true        
        PushI        1                         
        Jump         -compare-4546-join        
        Label        -compare-4546-false       
        PushI        0                         
        Jump         -compare-4546-join        
        Label        -compare-4546-join        
        JumpTrue     -print-boolean-4547-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4547-join  
        Label        -print-boolean-4547-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4547-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4548-arg1        
        PushI        34                        
        PushI        24                        
        Multiply                               
        Label        -compare-4548-arg2        
        PushI        59                        
        Label        -compare-4548-sub         
        Subtract                               
        JumpPos      -compare-4548-true        
        Jump         -compare-4548-false       
        Label        -compare-4548-true        
        PushI        1                         
        Jump         -compare-4548-join        
        Label        -compare-4548-false       
        PushI        0                         
        Jump         -compare-4548-join        
        Label        -compare-4548-join        
        JumpTrue     -print-boolean-4549-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4549-join  
        Label        -print-boolean-4549-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4549-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4550-arg1        
        PushI        8                         
        Label        -compare-4550-arg2        
        PushI        44                        
        PushI        83                        
        Multiply                               
        Label        -compare-4550-sub         
        Subtract                               
        JumpPos      -compare-4550-true        
        Jump         -compare-4550-false       
        Label        -compare-4550-true        
        PushI        1                         
        Jump         -compare-4550-join        
        Label        -compare-4550-false       
        PushI        0                         
        Jump         -compare-4550-join        
        Label        -compare-4550-join        
        JumpTrue     -print-boolean-4551-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4551-join  
        Label        -print-boolean-4551-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4551-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4552-arg1        
        PushI        27                        
        Label        -compare-4552-arg2        
        PushI        71                        
        PushI        40                        
        Multiply                               
        Label        -compare-4552-sub         
        Subtract                               
        JumpPos      -compare-4552-true        
        Jump         -compare-4552-false       
        Label        -compare-4552-true        
        PushI        1                         
        Jump         -compare-4552-join        
        Label        -compare-4552-false       
        PushI        0                         
        Jump         -compare-4552-join        
        Label        -compare-4552-join        
        JumpTrue     -print-boolean-4553-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4553-join  
        Label        -print-boolean-4553-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4553-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4554-arg1        
        PushI        23                        
        Label        -compare-4554-arg2        
        PushI        37                        
        PushI        93                        
        Multiply                               
        Label        -compare-4554-sub         
        Subtract                               
        JumpPos      -compare-4554-true        
        Jump         -compare-4554-false       
        Label        -compare-4554-true        
        PushI        1                         
        Jump         -compare-4554-join        
        Label        -compare-4554-false       
        PushI        0                         
        Jump         -compare-4554-join        
        Label        -compare-4554-join        
        JumpTrue     -print-boolean-4555-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4555-join  
        Label        -print-boolean-4555-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4555-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4556-arg1        
        PushI        60                        
        Label        -compare-4556-arg2        
        PushI        23                        
        PushI        16                        
        Multiply                               
        Label        -compare-4556-sub         
        Subtract                               
        JumpPos      -compare-4556-true        
        Jump         -compare-4556-false       
        Label        -compare-4556-true        
        PushI        1                         
        Jump         -compare-4556-join        
        Label        -compare-4556-false       
        PushI        0                         
        Jump         -compare-4556-join        
        Label        -compare-4556-join        
        JumpTrue     -print-boolean-4557-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4557-join  
        Label        -print-boolean-4557-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4557-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4558-arg1        
        PushI        25                        
        Label        -compare-4558-arg2        
        PushI        30                        
        PushI        94                        
        Multiply                               
        Label        -compare-4558-sub         
        Subtract                               
        JumpPos      -compare-4558-true        
        Jump         -compare-4558-false       
        Label        -compare-4558-true        
        PushI        1                         
        Jump         -compare-4558-join        
        Label        -compare-4558-false       
        PushI        0                         
        Jump         -compare-4558-join        
        Label        -compare-4558-join        
        JumpTrue     -print-boolean-4559-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4559-join  
        Label        -print-boolean-4559-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4559-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4560-arg1        
        PushI        86                        
        Label        -compare-4560-arg2        
        PushI        40                        
        PushI        55                        
        Multiply                               
        Label        -compare-4560-sub         
        Subtract                               
        JumpPos      -compare-4560-true        
        Jump         -compare-4560-false       
        Label        -compare-4560-true        
        PushI        1                         
        Jump         -compare-4560-join        
        Label        -compare-4560-false       
        PushI        0                         
        Jump         -compare-4560-join        
        Label        -compare-4560-join        
        JumpTrue     -print-boolean-4561-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4561-join  
        Label        -print-boolean-4561-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4561-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4562-arg1        
        PushI        32                        
        Label        -compare-4562-arg2        
        PushI        75                        
        PushI        50                        
        Multiply                               
        Label        -compare-4562-sub         
        Subtract                               
        JumpPos      -compare-4562-true        
        Jump         -compare-4562-false       
        Label        -compare-4562-true        
        PushI        1                         
        Jump         -compare-4562-join        
        Label        -compare-4562-false       
        PushI        0                         
        Jump         -compare-4562-join        
        Label        -compare-4562-join        
        JumpTrue     -print-boolean-4563-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4563-join  
        Label        -print-boolean-4563-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4563-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4564-arg1        
        PushI        26                        
        Label        -compare-4564-arg2        
        PushI        58                        
        PushI        10                        
        Multiply                               
        Label        -compare-4564-sub         
        Subtract                               
        JumpPos      -compare-4564-true        
        Jump         -compare-4564-false       
        Label        -compare-4564-true        
        PushI        1                         
        Jump         -compare-4564-join        
        Label        -compare-4564-false       
        PushI        0                         
        Jump         -compare-4564-join        
        Label        -compare-4564-join        
        JumpTrue     -print-boolean-4565-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4565-join  
        Label        -print-boolean-4565-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4565-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4566-arg1        
        PushI        54                        
        Label        -compare-4566-arg2        
        PushI        94                        
        PushI        14                        
        Multiply                               
        Label        -compare-4566-sub         
        Subtract                               
        JumpPos      -compare-4566-true        
        Jump         -compare-4566-false       
        Label        -compare-4566-true        
        PushI        1                         
        Jump         -compare-4566-join        
        Label        -compare-4566-false       
        PushI        0                         
        Jump         -compare-4566-join        
        Label        -compare-4566-join        
        JumpTrue     -print-boolean-4567-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4567-join  
        Label        -print-boolean-4567-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4567-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4568-arg1        
        PushI        58                        
        Label        -compare-4568-arg2        
        PushI        38                        
        PushI        8                         
        Multiply                               
        Label        -compare-4568-sub         
        Subtract                               
        JumpPos      -compare-4568-true        
        Jump         -compare-4568-false       
        Label        -compare-4568-true        
        PushI        1                         
        Jump         -compare-4568-join        
        Label        -compare-4568-false       
        PushI        0                         
        Jump         -compare-4568-join        
        Label        -compare-4568-join        
        JumpTrue     -print-boolean-4569-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4569-join  
        Label        -print-boolean-4569-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4569-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4570-arg1        
        PushI        41                        
        Label        -compare-4570-arg2        
        PushI        56                        
        PushI        94                        
        Multiply                               
        Label        -compare-4570-sub         
        Subtract                               
        JumpPos      -compare-4570-true        
        Jump         -compare-4570-false       
        Label        -compare-4570-true        
        PushI        1                         
        Jump         -compare-4570-join        
        Label        -compare-4570-false       
        PushI        0                         
        Jump         -compare-4570-join        
        Label        -compare-4570-join        
        JumpTrue     -print-boolean-4571-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4571-join  
        Label        -print-boolean-4571-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4571-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4572-arg1        
        PushI        40                        
        Label        -compare-4572-arg2        
        PushI        17                        
        PushI        48                        
        Multiply                               
        Label        -compare-4572-sub         
        Subtract                               
        JumpPos      -compare-4572-true        
        Jump         -compare-4572-false       
        Label        -compare-4572-true        
        PushI        1                         
        Jump         -compare-4572-join        
        Label        -compare-4572-false       
        PushI        0                         
        Jump         -compare-4572-join        
        Label        -compare-4572-join        
        JumpTrue     -print-boolean-4573-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4573-join  
        Label        -print-boolean-4573-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4573-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4574-arg1        
        PushI        79                        
        PushI        51                        
        Multiply                               
        Label        -compare-4574-arg2        
        PushI        43                        
        PushI        80                        
        Multiply                               
        Label        -compare-4574-sub         
        Subtract                               
        JumpPos      -compare-4574-true        
        Jump         -compare-4574-false       
        Label        -compare-4574-true        
        PushI        1                         
        Jump         -compare-4574-join        
        Label        -compare-4574-false       
        PushI        0                         
        Jump         -compare-4574-join        
        Label        -compare-4574-join        
        JumpTrue     -print-boolean-4575-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4575-join  
        Label        -print-boolean-4575-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4575-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4576-arg1        
        PushI        29                        
        PushI        10                        
        Multiply                               
        Label        -compare-4576-arg2        
        PushI        46                        
        PushI        24                        
        Multiply                               
        Label        -compare-4576-sub         
        Subtract                               
        JumpPos      -compare-4576-true        
        Jump         -compare-4576-false       
        Label        -compare-4576-true        
        PushI        1                         
        Jump         -compare-4576-join        
        Label        -compare-4576-false       
        PushI        0                         
        Jump         -compare-4576-join        
        Label        -compare-4576-join        
        JumpTrue     -print-boolean-4577-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4577-join  
        Label        -print-boolean-4577-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4577-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4578-arg1        
        PushI        25                        
        PushI        31                        
        Multiply                               
        Label        -compare-4578-arg2        
        PushI        45                        
        PushI        43                        
        Multiply                               
        Label        -compare-4578-sub         
        Subtract                               
        JumpPos      -compare-4578-true        
        Jump         -compare-4578-false       
        Label        -compare-4578-true        
        PushI        1                         
        Jump         -compare-4578-join        
        Label        -compare-4578-false       
        PushI        0                         
        Jump         -compare-4578-join        
        Label        -compare-4578-join        
        JumpTrue     -print-boolean-4579-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4579-join  
        Label        -print-boolean-4579-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4579-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4580-arg1        
        PushI        64                        
        PushI        9                         
        Multiply                               
        Label        -compare-4580-arg2        
        PushI        6                         
        PushI        62                        
        Multiply                               
        Label        -compare-4580-sub         
        Subtract                               
        JumpPos      -compare-4580-true        
        Jump         -compare-4580-false       
        Label        -compare-4580-true        
        PushI        1                         
        Jump         -compare-4580-join        
        Label        -compare-4580-false       
        PushI        0                         
        Jump         -compare-4580-join        
        Label        -compare-4580-join        
        JumpTrue     -print-boolean-4581-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4581-join  
        Label        -print-boolean-4581-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4581-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4582-arg1        
        PushI        57                        
        PushI        69                        
        Multiply                               
        Label        -compare-4582-arg2        
        PushI        14                        
        PushI        60                        
        Multiply                               
        Label        -compare-4582-sub         
        Subtract                               
        JumpPos      -compare-4582-true        
        Jump         -compare-4582-false       
        Label        -compare-4582-true        
        PushI        1                         
        Jump         -compare-4582-join        
        Label        -compare-4582-false       
        PushI        0                         
        Jump         -compare-4582-join        
        Label        -compare-4582-join        
        JumpTrue     -print-boolean-4583-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4583-join  
        Label        -print-boolean-4583-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4583-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4584-arg1        
        PushI        82                        
        PushI        57                        
        Multiply                               
        Label        -compare-4584-arg2        
        PushI        86                        
        PushI        20                        
        Multiply                               
        Label        -compare-4584-sub         
        Subtract                               
        JumpPos      -compare-4584-true        
        Jump         -compare-4584-false       
        Label        -compare-4584-true        
        PushI        1                         
        Jump         -compare-4584-join        
        Label        -compare-4584-false       
        PushI        0                         
        Jump         -compare-4584-join        
        Label        -compare-4584-join        
        JumpTrue     -print-boolean-4585-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4585-join  
        Label        -print-boolean-4585-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4585-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4586-arg1        
        PushI        14                        
        PushI        24                        
        Multiply                               
        Label        -compare-4586-arg2        
        PushI        25                        
        PushI        61                        
        Multiply                               
        Label        -compare-4586-sub         
        Subtract                               
        JumpPos      -compare-4586-true        
        Jump         -compare-4586-false       
        Label        -compare-4586-true        
        PushI        1                         
        Jump         -compare-4586-join        
        Label        -compare-4586-false       
        PushI        0                         
        Jump         -compare-4586-join        
        Label        -compare-4586-join        
        JumpTrue     -print-boolean-4587-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4587-join  
        Label        -print-boolean-4587-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4587-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4588-arg1        
        PushI        60                        
        PushI        89                        
        Multiply                               
        Label        -compare-4588-arg2        
        PushI        13                        
        PushI        65                        
        Multiply                               
        Label        -compare-4588-sub         
        Subtract                               
        JumpPos      -compare-4588-true        
        Jump         -compare-4588-false       
        Label        -compare-4588-true        
        PushI        1                         
        Jump         -compare-4588-join        
        Label        -compare-4588-false       
        PushI        0                         
        Jump         -compare-4588-join        
        Label        -compare-4588-join        
        JumpTrue     -print-boolean-4589-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4589-join  
        Label        -print-boolean-4589-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4589-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4590-arg1        
        PushI        31                        
        PushI        90                        
        Multiply                               
        Label        -compare-4590-arg2        
        PushI        60                        
        PushI        56                        
        Multiply                               
        Label        -compare-4590-sub         
        Subtract                               
        JumpPos      -compare-4590-true        
        Jump         -compare-4590-false       
        Label        -compare-4590-true        
        PushI        1                         
        Jump         -compare-4590-join        
        Label        -compare-4590-false       
        PushI        0                         
        Jump         -compare-4590-join        
        Label        -compare-4590-join        
        JumpTrue     -print-boolean-4591-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4591-join  
        Label        -print-boolean-4591-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4591-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4592-arg1        
        PushI        29                        
        PushI        29                        
        Multiply                               
        Label        -compare-4592-arg2        
        PushI        63                        
        PushI        89                        
        Multiply                               
        Label        -compare-4592-sub         
        Subtract                               
        JumpPos      -compare-4592-true        
        Jump         -compare-4592-false       
        Label        -compare-4592-true        
        PushI        1                         
        Jump         -compare-4592-join        
        Label        -compare-4592-false       
        PushI        0                         
        Jump         -compare-4592-join        
        Label        -compare-4592-join        
        JumpTrue     -print-boolean-4593-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4593-join  
        Label        -print-boolean-4593-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4593-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4594-arg1        
        PushI        9                         
        PushI        31                        
        Multiply                               
        Label        -compare-4594-arg2        
        PushI        84                        
        PushI        92                        
        Multiply                               
        Label        -compare-4594-sub         
        Subtract                               
        JumpPos      -compare-4594-true        
        Jump         -compare-4594-false       
        Label        -compare-4594-true        
        PushI        1                         
        Jump         -compare-4594-join        
        Label        -compare-4594-false       
        PushI        0                         
        Jump         -compare-4594-join        
        Label        -compare-4594-join        
        JumpTrue     -print-boolean-4595-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4595-join  
        Label        -print-boolean-4595-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4595-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-4596-arg1        
        PushI        17                        
        PushI        29                        
        Multiply                               
        Label        -compare-4596-arg2        
        PushI        62                        
        PushI        80                        
        Multiply                               
        Label        -compare-4596-sub         
        Subtract                               
        JumpPos      -compare-4596-true        
        Jump         -compare-4596-false       
        Label        -compare-4596-true        
        PushI        1                         
        Jump         -compare-4596-join        
        Label        -compare-4596-false       
        PushI        0                         
        Jump         -compare-4596-join        
        Label        -compare-4596-join        
        JumpTrue     -print-boolean-4597-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-4597-join  
        Label        -print-boolean-4597-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-4597-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
