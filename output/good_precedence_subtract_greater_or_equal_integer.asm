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
        Label        -compare-5870-arg1        
        PushI        74                        
        PushI        92                        
        Subtract                               
        Label        -compare-5870-arg2        
        PushI        40                        
        Label        -compare-5870-sub         
        Subtract                               
        JumpNeg      -compare-5870-false       
        Jump         -compare-5870-true        
        Label        -compare-5870-true        
        PushI        1                         
        Jump         -compare-5870-join        
        Label        -compare-5870-false       
        PushI        0                         
        Jump         -compare-5870-join        
        Label        -compare-5870-join        
        JumpTrue     -print-boolean-5871-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5871-join  
        Label        -print-boolean-5871-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5871-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5872-arg1        
        PushI        41                        
        PushI        61                        
        Subtract                               
        Label        -compare-5872-arg2        
        PushI        46                        
        Label        -compare-5872-sub         
        Subtract                               
        JumpNeg      -compare-5872-false       
        Jump         -compare-5872-true        
        Label        -compare-5872-true        
        PushI        1                         
        Jump         -compare-5872-join        
        Label        -compare-5872-false       
        PushI        0                         
        Jump         -compare-5872-join        
        Label        -compare-5872-join        
        JumpTrue     -print-boolean-5873-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5873-join  
        Label        -print-boolean-5873-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5873-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5874-arg1        
        PushI        40                        
        PushI        17                        
        Subtract                               
        Label        -compare-5874-arg2        
        PushI        14                        
        Label        -compare-5874-sub         
        Subtract                               
        JumpNeg      -compare-5874-false       
        Jump         -compare-5874-true        
        Label        -compare-5874-true        
        PushI        1                         
        Jump         -compare-5874-join        
        Label        -compare-5874-false       
        PushI        0                         
        Jump         -compare-5874-join        
        Label        -compare-5874-join        
        JumpTrue     -print-boolean-5875-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5875-join  
        Label        -print-boolean-5875-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5875-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5876-arg1        
        PushI        23                        
        PushI        93                        
        Subtract                               
        Label        -compare-5876-arg2        
        PushI        70                        
        Label        -compare-5876-sub         
        Subtract                               
        JumpNeg      -compare-5876-false       
        Jump         -compare-5876-true        
        Label        -compare-5876-true        
        PushI        1                         
        Jump         -compare-5876-join        
        Label        -compare-5876-false       
        PushI        0                         
        Jump         -compare-5876-join        
        Label        -compare-5876-join        
        JumpTrue     -print-boolean-5877-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5877-join  
        Label        -print-boolean-5877-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5877-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5878-arg1        
        PushI        83                        
        PushI        67                        
        Subtract                               
        Label        -compare-5878-arg2        
        PushI        15                        
        Label        -compare-5878-sub         
        Subtract                               
        JumpNeg      -compare-5878-false       
        Jump         -compare-5878-true        
        Label        -compare-5878-true        
        PushI        1                         
        Jump         -compare-5878-join        
        Label        -compare-5878-false       
        PushI        0                         
        Jump         -compare-5878-join        
        Label        -compare-5878-join        
        JumpTrue     -print-boolean-5879-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5879-join  
        Label        -print-boolean-5879-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5879-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5880-arg1        
        PushI        33                        
        PushI        43                        
        Subtract                               
        Label        -compare-5880-arg2        
        PushI        73                        
        Label        -compare-5880-sub         
        Subtract                               
        JumpNeg      -compare-5880-false       
        Jump         -compare-5880-true        
        Label        -compare-5880-true        
        PushI        1                         
        Jump         -compare-5880-join        
        Label        -compare-5880-false       
        PushI        0                         
        Jump         -compare-5880-join        
        Label        -compare-5880-join        
        JumpTrue     -print-boolean-5881-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5881-join  
        Label        -print-boolean-5881-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5881-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5882-arg1        
        PushI        60                        
        PushI        62                        
        Subtract                               
        Label        -compare-5882-arg2        
        PushI        68                        
        Label        -compare-5882-sub         
        Subtract                               
        JumpNeg      -compare-5882-false       
        Jump         -compare-5882-true        
        Label        -compare-5882-true        
        PushI        1                         
        Jump         -compare-5882-join        
        Label        -compare-5882-false       
        PushI        0                         
        Jump         -compare-5882-join        
        Label        -compare-5882-join        
        JumpTrue     -print-boolean-5883-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5883-join  
        Label        -print-boolean-5883-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5883-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5884-arg1        
        PushI        21                        
        PushI        92                        
        Subtract                               
        Label        -compare-5884-arg2        
        PushI        22                        
        Label        -compare-5884-sub         
        Subtract                               
        JumpNeg      -compare-5884-false       
        Jump         -compare-5884-true        
        Label        -compare-5884-true        
        PushI        1                         
        Jump         -compare-5884-join        
        Label        -compare-5884-false       
        PushI        0                         
        Jump         -compare-5884-join        
        Label        -compare-5884-join        
        JumpTrue     -print-boolean-5885-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5885-join  
        Label        -print-boolean-5885-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5885-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5886-arg1        
        PushI        31                        
        PushI        33                        
        Subtract                               
        Label        -compare-5886-arg2        
        PushI        21                        
        Label        -compare-5886-sub         
        Subtract                               
        JumpNeg      -compare-5886-false       
        Jump         -compare-5886-true        
        Label        -compare-5886-true        
        PushI        1                         
        Jump         -compare-5886-join        
        Label        -compare-5886-false       
        PushI        0                         
        Jump         -compare-5886-join        
        Label        -compare-5886-join        
        JumpTrue     -print-boolean-5887-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5887-join  
        Label        -print-boolean-5887-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5887-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5888-arg1        
        PushI        56                        
        PushI        32                        
        Subtract                               
        Label        -compare-5888-arg2        
        PushI        92                        
        Label        -compare-5888-sub         
        Subtract                               
        JumpNeg      -compare-5888-false       
        Jump         -compare-5888-true        
        Label        -compare-5888-true        
        PushI        1                         
        Jump         -compare-5888-join        
        Label        -compare-5888-false       
        PushI        0                         
        Jump         -compare-5888-join        
        Label        -compare-5888-join        
        JumpTrue     -print-boolean-5889-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5889-join  
        Label        -print-boolean-5889-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5889-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5890-arg1        
        PushI        28                        
        PushI        18                        
        Subtract                               
        Label        -compare-5890-arg2        
        PushI        94                        
        Label        -compare-5890-sub         
        Subtract                               
        JumpNeg      -compare-5890-false       
        Jump         -compare-5890-true        
        Label        -compare-5890-true        
        PushI        1                         
        Jump         -compare-5890-join        
        Label        -compare-5890-false       
        PushI        0                         
        Jump         -compare-5890-join        
        Label        -compare-5890-join        
        JumpTrue     -print-boolean-5891-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5891-join  
        Label        -print-boolean-5891-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5891-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5892-arg1        
        PushI        36                        
        PushI        92                        
        Subtract                               
        Label        -compare-5892-arg2        
        PushI        6                         
        Label        -compare-5892-sub         
        Subtract                               
        JumpNeg      -compare-5892-false       
        Jump         -compare-5892-true        
        Label        -compare-5892-true        
        PushI        1                         
        Jump         -compare-5892-join        
        Label        -compare-5892-false       
        PushI        0                         
        Jump         -compare-5892-join        
        Label        -compare-5892-join        
        JumpTrue     -print-boolean-5893-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5893-join  
        Label        -print-boolean-5893-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5893-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5894-arg1        
        PushI        26                        
        Label        -compare-5894-arg2        
        PushI        27                        
        PushI        79                        
        Subtract                               
        Label        -compare-5894-sub         
        Subtract                               
        JumpNeg      -compare-5894-false       
        Jump         -compare-5894-true        
        Label        -compare-5894-true        
        PushI        1                         
        Jump         -compare-5894-join        
        Label        -compare-5894-false       
        PushI        0                         
        Jump         -compare-5894-join        
        Label        -compare-5894-join        
        JumpTrue     -print-boolean-5895-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5895-join  
        Label        -print-boolean-5895-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5895-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5896-arg1        
        PushI        58                        
        Label        -compare-5896-arg2        
        PushI        53                        
        PushI        39                        
        Subtract                               
        Label        -compare-5896-sub         
        Subtract                               
        JumpNeg      -compare-5896-false       
        Jump         -compare-5896-true        
        Label        -compare-5896-true        
        PushI        1                         
        Jump         -compare-5896-join        
        Label        -compare-5896-false       
        PushI        0                         
        Jump         -compare-5896-join        
        Label        -compare-5896-join        
        JumpTrue     -print-boolean-5897-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5897-join  
        Label        -print-boolean-5897-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5897-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5898-arg1        
        PushI        59                        
        Label        -compare-5898-arg2        
        PushI        14                        
        PushI        10                        
        Subtract                               
        Label        -compare-5898-sub         
        Subtract                               
        JumpNeg      -compare-5898-false       
        Jump         -compare-5898-true        
        Label        -compare-5898-true        
        PushI        1                         
        Jump         -compare-5898-join        
        Label        -compare-5898-false       
        PushI        0                         
        Jump         -compare-5898-join        
        Label        -compare-5898-join        
        JumpTrue     -print-boolean-5899-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5899-join  
        Label        -print-boolean-5899-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5899-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5900-arg1        
        PushI        18                        
        Label        -compare-5900-arg2        
        PushI        25                        
        PushI        72                        
        Subtract                               
        Label        -compare-5900-sub         
        Subtract                               
        JumpNeg      -compare-5900-false       
        Jump         -compare-5900-true        
        Label        -compare-5900-true        
        PushI        1                         
        Jump         -compare-5900-join        
        Label        -compare-5900-false       
        PushI        0                         
        Jump         -compare-5900-join        
        Label        -compare-5900-join        
        JumpTrue     -print-boolean-5901-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5901-join  
        Label        -print-boolean-5901-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5901-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5902-arg1        
        PushI        22                        
        Label        -compare-5902-arg2        
        PushI        52                        
        PushI        82                        
        Subtract                               
        Label        -compare-5902-sub         
        Subtract                               
        JumpNeg      -compare-5902-false       
        Jump         -compare-5902-true        
        Label        -compare-5902-true        
        PushI        1                         
        Jump         -compare-5902-join        
        Label        -compare-5902-false       
        PushI        0                         
        Jump         -compare-5902-join        
        Label        -compare-5902-join        
        JumpTrue     -print-boolean-5903-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5903-join  
        Label        -print-boolean-5903-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5903-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5904-arg1        
        PushI        76                        
        Label        -compare-5904-arg2        
        PushI        17                        
        PushI        29                        
        Subtract                               
        Label        -compare-5904-sub         
        Subtract                               
        JumpNeg      -compare-5904-false       
        Jump         -compare-5904-true        
        Label        -compare-5904-true        
        PushI        1                         
        Jump         -compare-5904-join        
        Label        -compare-5904-false       
        PushI        0                         
        Jump         -compare-5904-join        
        Label        -compare-5904-join        
        JumpTrue     -print-boolean-5905-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5905-join  
        Label        -print-boolean-5905-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5905-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5906-arg1        
        PushI        51                        
        Label        -compare-5906-arg2        
        PushI        20                        
        PushI        74                        
        Subtract                               
        Label        -compare-5906-sub         
        Subtract                               
        JumpNeg      -compare-5906-false       
        Jump         -compare-5906-true        
        Label        -compare-5906-true        
        PushI        1                         
        Jump         -compare-5906-join        
        Label        -compare-5906-false       
        PushI        0                         
        Jump         -compare-5906-join        
        Label        -compare-5906-join        
        JumpTrue     -print-boolean-5907-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5907-join  
        Label        -print-boolean-5907-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5907-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5908-arg1        
        PushI        24                        
        Label        -compare-5908-arg2        
        PushI        79                        
        PushI        75                        
        Subtract                               
        Label        -compare-5908-sub         
        Subtract                               
        JumpNeg      -compare-5908-false       
        Jump         -compare-5908-true        
        Label        -compare-5908-true        
        PushI        1                         
        Jump         -compare-5908-join        
        Label        -compare-5908-false       
        PushI        0                         
        Jump         -compare-5908-join        
        Label        -compare-5908-join        
        JumpTrue     -print-boolean-5909-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5909-join  
        Label        -print-boolean-5909-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5909-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5910-arg1        
        PushI        12                        
        Label        -compare-5910-arg2        
        PushI        87                        
        PushI        91                        
        Subtract                               
        Label        -compare-5910-sub         
        Subtract                               
        JumpNeg      -compare-5910-false       
        Jump         -compare-5910-true        
        Label        -compare-5910-true        
        PushI        1                         
        Jump         -compare-5910-join        
        Label        -compare-5910-false       
        PushI        0                         
        Jump         -compare-5910-join        
        Label        -compare-5910-join        
        JumpTrue     -print-boolean-5911-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5911-join  
        Label        -print-boolean-5911-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5911-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5912-arg1        
        PushI        91                        
        Label        -compare-5912-arg2        
        PushI        90                        
        PushI        8                         
        Subtract                               
        Label        -compare-5912-sub         
        Subtract                               
        JumpNeg      -compare-5912-false       
        Jump         -compare-5912-true        
        Label        -compare-5912-true        
        PushI        1                         
        Jump         -compare-5912-join        
        Label        -compare-5912-false       
        PushI        0                         
        Jump         -compare-5912-join        
        Label        -compare-5912-join        
        JumpTrue     -print-boolean-5913-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5913-join  
        Label        -print-boolean-5913-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5913-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5914-arg1        
        PushI        94                        
        Label        -compare-5914-arg2        
        PushI        78                        
        PushI        24                        
        Subtract                               
        Label        -compare-5914-sub         
        Subtract                               
        JumpNeg      -compare-5914-false       
        Jump         -compare-5914-true        
        Label        -compare-5914-true        
        PushI        1                         
        Jump         -compare-5914-join        
        Label        -compare-5914-false       
        PushI        0                         
        Jump         -compare-5914-join        
        Label        -compare-5914-join        
        JumpTrue     -print-boolean-5915-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5915-join  
        Label        -print-boolean-5915-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5915-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5916-arg1        
        PushI        15                        
        Label        -compare-5916-arg2        
        PushI        46                        
        PushI        58                        
        Subtract                               
        Label        -compare-5916-sub         
        Subtract                               
        JumpNeg      -compare-5916-false       
        Jump         -compare-5916-true        
        Label        -compare-5916-true        
        PushI        1                         
        Jump         -compare-5916-join        
        Label        -compare-5916-false       
        PushI        0                         
        Jump         -compare-5916-join        
        Label        -compare-5916-join        
        JumpTrue     -print-boolean-5917-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5917-join  
        Label        -print-boolean-5917-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5917-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5918-arg1        
        PushI        88                        
        PushI        57                        
        Subtract                               
        Label        -compare-5918-arg2        
        PushI        23                        
        PushI        35                        
        Subtract                               
        Label        -compare-5918-sub         
        Subtract                               
        JumpNeg      -compare-5918-false       
        Jump         -compare-5918-true        
        Label        -compare-5918-true        
        PushI        1                         
        Jump         -compare-5918-join        
        Label        -compare-5918-false       
        PushI        0                         
        Jump         -compare-5918-join        
        Label        -compare-5918-join        
        JumpTrue     -print-boolean-5919-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5919-join  
        Label        -print-boolean-5919-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5919-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5920-arg1        
        PushI        95                        
        PushI        8                         
        Subtract                               
        Label        -compare-5920-arg2        
        PushI        68                        
        PushI        44                        
        Subtract                               
        Label        -compare-5920-sub         
        Subtract                               
        JumpNeg      -compare-5920-false       
        Jump         -compare-5920-true        
        Label        -compare-5920-true        
        PushI        1                         
        Jump         -compare-5920-join        
        Label        -compare-5920-false       
        PushI        0                         
        Jump         -compare-5920-join        
        Label        -compare-5920-join        
        JumpTrue     -print-boolean-5921-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5921-join  
        Label        -print-boolean-5921-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5921-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5922-arg1        
        PushI        35                        
        PushI        57                        
        Subtract                               
        Label        -compare-5922-arg2        
        PushI        11                        
        PushI        56                        
        Subtract                               
        Label        -compare-5922-sub         
        Subtract                               
        JumpNeg      -compare-5922-false       
        Jump         -compare-5922-true        
        Label        -compare-5922-true        
        PushI        1                         
        Jump         -compare-5922-join        
        Label        -compare-5922-false       
        PushI        0                         
        Jump         -compare-5922-join        
        Label        -compare-5922-join        
        JumpTrue     -print-boolean-5923-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5923-join  
        Label        -print-boolean-5923-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5923-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5924-arg1        
        PushI        84                        
        PushI        78                        
        Subtract                               
        Label        -compare-5924-arg2        
        PushI        83                        
        PushI        66                        
        Subtract                               
        Label        -compare-5924-sub         
        Subtract                               
        JumpNeg      -compare-5924-false       
        Jump         -compare-5924-true        
        Label        -compare-5924-true        
        PushI        1                         
        Jump         -compare-5924-join        
        Label        -compare-5924-false       
        PushI        0                         
        Jump         -compare-5924-join        
        Label        -compare-5924-join        
        JumpTrue     -print-boolean-5925-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5925-join  
        Label        -print-boolean-5925-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5925-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5926-arg1        
        PushI        39                        
        PushI        97                        
        Subtract                               
        Label        -compare-5926-arg2        
        PushI        83                        
        PushI        47                        
        Subtract                               
        Label        -compare-5926-sub         
        Subtract                               
        JumpNeg      -compare-5926-false       
        Jump         -compare-5926-true        
        Label        -compare-5926-true        
        PushI        1                         
        Jump         -compare-5926-join        
        Label        -compare-5926-false       
        PushI        0                         
        Jump         -compare-5926-join        
        Label        -compare-5926-join        
        JumpTrue     -print-boolean-5927-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5927-join  
        Label        -print-boolean-5927-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5927-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5928-arg1        
        PushI        99                        
        PushI        87                        
        Subtract                               
        Label        -compare-5928-arg2        
        PushI        27                        
        PushI        11                        
        Subtract                               
        Label        -compare-5928-sub         
        Subtract                               
        JumpNeg      -compare-5928-false       
        Jump         -compare-5928-true        
        Label        -compare-5928-true        
        PushI        1                         
        Jump         -compare-5928-join        
        Label        -compare-5928-false       
        PushI        0                         
        Jump         -compare-5928-join        
        Label        -compare-5928-join        
        JumpTrue     -print-boolean-5929-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5929-join  
        Label        -print-boolean-5929-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5929-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5930-arg1        
        PushI        48                        
        PushI        87                        
        Subtract                               
        Label        -compare-5930-arg2        
        PushI        71                        
        PushI        90                        
        Subtract                               
        Label        -compare-5930-sub         
        Subtract                               
        JumpNeg      -compare-5930-false       
        Jump         -compare-5930-true        
        Label        -compare-5930-true        
        PushI        1                         
        Jump         -compare-5930-join        
        Label        -compare-5930-false       
        PushI        0                         
        Jump         -compare-5930-join        
        Label        -compare-5930-join        
        JumpTrue     -print-boolean-5931-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5931-join  
        Label        -print-boolean-5931-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5931-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5932-arg1        
        PushI        66                        
        PushI        84                        
        Subtract                               
        Label        -compare-5932-arg2        
        PushI        53                        
        PushI        82                        
        Subtract                               
        Label        -compare-5932-sub         
        Subtract                               
        JumpNeg      -compare-5932-false       
        Jump         -compare-5932-true        
        Label        -compare-5932-true        
        PushI        1                         
        Jump         -compare-5932-join        
        Label        -compare-5932-false       
        PushI        0                         
        Jump         -compare-5932-join        
        Label        -compare-5932-join        
        JumpTrue     -print-boolean-5933-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5933-join  
        Label        -print-boolean-5933-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5933-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5934-arg1        
        PushI        32                        
        PushI        91                        
        Subtract                               
        Label        -compare-5934-arg2        
        PushI        65                        
        PushI        95                        
        Subtract                               
        Label        -compare-5934-sub         
        Subtract                               
        JumpNeg      -compare-5934-false       
        Jump         -compare-5934-true        
        Label        -compare-5934-true        
        PushI        1                         
        Jump         -compare-5934-join        
        Label        -compare-5934-false       
        PushI        0                         
        Jump         -compare-5934-join        
        Label        -compare-5934-join        
        JumpTrue     -print-boolean-5935-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5935-join  
        Label        -print-boolean-5935-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5935-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5936-arg1        
        PushI        24                        
        PushI        48                        
        Subtract                               
        Label        -compare-5936-arg2        
        PushI        70                        
        PushI        1                         
        Subtract                               
        Label        -compare-5936-sub         
        Subtract                               
        JumpNeg      -compare-5936-false       
        Jump         -compare-5936-true        
        Label        -compare-5936-true        
        PushI        1                         
        Jump         -compare-5936-join        
        Label        -compare-5936-false       
        PushI        0                         
        Jump         -compare-5936-join        
        Label        -compare-5936-join        
        JumpTrue     -print-boolean-5937-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5937-join  
        Label        -print-boolean-5937-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5937-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5938-arg1        
        PushI        45                        
        PushI        56                        
        Subtract                               
        Label        -compare-5938-arg2        
        PushI        80                        
        PushI        25                        
        Subtract                               
        Label        -compare-5938-sub         
        Subtract                               
        JumpNeg      -compare-5938-false       
        Jump         -compare-5938-true        
        Label        -compare-5938-true        
        PushI        1                         
        Jump         -compare-5938-join        
        Label        -compare-5938-false       
        PushI        0                         
        Jump         -compare-5938-join        
        Label        -compare-5938-join        
        JumpTrue     -print-boolean-5939-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5939-join  
        Label        -print-boolean-5939-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5939-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5940-arg1        
        PushI        77                        
        PushI        43                        
        Subtract                               
        Label        -compare-5940-arg2        
        PushI        37                        
        PushI        13                        
        Subtract                               
        Label        -compare-5940-sub         
        Subtract                               
        JumpNeg      -compare-5940-false       
        Jump         -compare-5940-true        
        Label        -compare-5940-true        
        PushI        1                         
        Jump         -compare-5940-join        
        Label        -compare-5940-false       
        PushI        0                         
        Jump         -compare-5940-join        
        Label        -compare-5940-join        
        JumpTrue     -print-boolean-5941-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5941-join  
        Label        -print-boolean-5941-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5941-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
