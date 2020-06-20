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
        Label        -compare-5857-arg1        
        PushI        74                        
        PushI        92                        
        Subtract                               
        Label        -compare-5857-arg2        
        PushI        40                        
        Label        -compare-5857-sub         
        Subtract                               
        JumpNeg      -compare-5857-false       
        Jump         -compare-5857-true        
        Label        -compare-5857-true        
        PushI        1                         
        Jump         -compare-5857-join        
        Label        -compare-5857-false       
        PushI        0                         
        Jump         -compare-5857-join        
        Label        -compare-5857-join        
        JumpTrue     -print-boolean-5858-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5858-join  
        Label        -print-boolean-5858-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5858-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5859-arg1        
        PushI        41                        
        PushI        61                        
        Subtract                               
        Label        -compare-5859-arg2        
        PushI        46                        
        Label        -compare-5859-sub         
        Subtract                               
        JumpNeg      -compare-5859-false       
        Jump         -compare-5859-true        
        Label        -compare-5859-true        
        PushI        1                         
        Jump         -compare-5859-join        
        Label        -compare-5859-false       
        PushI        0                         
        Jump         -compare-5859-join        
        Label        -compare-5859-join        
        JumpTrue     -print-boolean-5860-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5860-join  
        Label        -print-boolean-5860-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5860-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5861-arg1        
        PushI        40                        
        PushI        17                        
        Subtract                               
        Label        -compare-5861-arg2        
        PushI        14                        
        Label        -compare-5861-sub         
        Subtract                               
        JumpNeg      -compare-5861-false       
        Jump         -compare-5861-true        
        Label        -compare-5861-true        
        PushI        1                         
        Jump         -compare-5861-join        
        Label        -compare-5861-false       
        PushI        0                         
        Jump         -compare-5861-join        
        Label        -compare-5861-join        
        JumpTrue     -print-boolean-5862-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5862-join  
        Label        -print-boolean-5862-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5862-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5863-arg1        
        PushI        23                        
        PushI        93                        
        Subtract                               
        Label        -compare-5863-arg2        
        PushI        70                        
        Label        -compare-5863-sub         
        Subtract                               
        JumpNeg      -compare-5863-false       
        Jump         -compare-5863-true        
        Label        -compare-5863-true        
        PushI        1                         
        Jump         -compare-5863-join        
        Label        -compare-5863-false       
        PushI        0                         
        Jump         -compare-5863-join        
        Label        -compare-5863-join        
        JumpTrue     -print-boolean-5864-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5864-join  
        Label        -print-boolean-5864-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5864-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5865-arg1        
        PushI        83                        
        PushI        67                        
        Subtract                               
        Label        -compare-5865-arg2        
        PushI        15                        
        Label        -compare-5865-sub         
        Subtract                               
        JumpNeg      -compare-5865-false       
        Jump         -compare-5865-true        
        Label        -compare-5865-true        
        PushI        1                         
        Jump         -compare-5865-join        
        Label        -compare-5865-false       
        PushI        0                         
        Jump         -compare-5865-join        
        Label        -compare-5865-join        
        JumpTrue     -print-boolean-5866-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5866-join  
        Label        -print-boolean-5866-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5866-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5867-arg1        
        PushI        33                        
        PushI        43                        
        Subtract                               
        Label        -compare-5867-arg2        
        PushI        73                        
        Label        -compare-5867-sub         
        Subtract                               
        JumpNeg      -compare-5867-false       
        Jump         -compare-5867-true        
        Label        -compare-5867-true        
        PushI        1                         
        Jump         -compare-5867-join        
        Label        -compare-5867-false       
        PushI        0                         
        Jump         -compare-5867-join        
        Label        -compare-5867-join        
        JumpTrue     -print-boolean-5868-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5868-join  
        Label        -print-boolean-5868-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5868-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5869-arg1        
        PushI        60                        
        PushI        62                        
        Subtract                               
        Label        -compare-5869-arg2        
        PushI        68                        
        Label        -compare-5869-sub         
        Subtract                               
        JumpNeg      -compare-5869-false       
        Jump         -compare-5869-true        
        Label        -compare-5869-true        
        PushI        1                         
        Jump         -compare-5869-join        
        Label        -compare-5869-false       
        PushI        0                         
        Jump         -compare-5869-join        
        Label        -compare-5869-join        
        JumpTrue     -print-boolean-5870-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5870-join  
        Label        -print-boolean-5870-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5870-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5871-arg1        
        PushI        21                        
        PushI        92                        
        Subtract                               
        Label        -compare-5871-arg2        
        PushI        22                        
        Label        -compare-5871-sub         
        Subtract                               
        JumpNeg      -compare-5871-false       
        Jump         -compare-5871-true        
        Label        -compare-5871-true        
        PushI        1                         
        Jump         -compare-5871-join        
        Label        -compare-5871-false       
        PushI        0                         
        Jump         -compare-5871-join        
        Label        -compare-5871-join        
        JumpTrue     -print-boolean-5872-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5872-join  
        Label        -print-boolean-5872-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5872-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5873-arg1        
        PushI        31                        
        PushI        33                        
        Subtract                               
        Label        -compare-5873-arg2        
        PushI        21                        
        Label        -compare-5873-sub         
        Subtract                               
        JumpNeg      -compare-5873-false       
        Jump         -compare-5873-true        
        Label        -compare-5873-true        
        PushI        1                         
        Jump         -compare-5873-join        
        Label        -compare-5873-false       
        PushI        0                         
        Jump         -compare-5873-join        
        Label        -compare-5873-join        
        JumpTrue     -print-boolean-5874-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5874-join  
        Label        -print-boolean-5874-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5874-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5875-arg1        
        PushI        56                        
        PushI        32                        
        Subtract                               
        Label        -compare-5875-arg2        
        PushI        92                        
        Label        -compare-5875-sub         
        Subtract                               
        JumpNeg      -compare-5875-false       
        Jump         -compare-5875-true        
        Label        -compare-5875-true        
        PushI        1                         
        Jump         -compare-5875-join        
        Label        -compare-5875-false       
        PushI        0                         
        Jump         -compare-5875-join        
        Label        -compare-5875-join        
        JumpTrue     -print-boolean-5876-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5876-join  
        Label        -print-boolean-5876-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5876-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5877-arg1        
        PushI        28                        
        PushI        18                        
        Subtract                               
        Label        -compare-5877-arg2        
        PushI        94                        
        Label        -compare-5877-sub         
        Subtract                               
        JumpNeg      -compare-5877-false       
        Jump         -compare-5877-true        
        Label        -compare-5877-true        
        PushI        1                         
        Jump         -compare-5877-join        
        Label        -compare-5877-false       
        PushI        0                         
        Jump         -compare-5877-join        
        Label        -compare-5877-join        
        JumpTrue     -print-boolean-5878-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5878-join  
        Label        -print-boolean-5878-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5878-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5879-arg1        
        PushI        36                        
        PushI        92                        
        Subtract                               
        Label        -compare-5879-arg2        
        PushI        6                         
        Label        -compare-5879-sub         
        Subtract                               
        JumpNeg      -compare-5879-false       
        Jump         -compare-5879-true        
        Label        -compare-5879-true        
        PushI        1                         
        Jump         -compare-5879-join        
        Label        -compare-5879-false       
        PushI        0                         
        Jump         -compare-5879-join        
        Label        -compare-5879-join        
        JumpTrue     -print-boolean-5880-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5880-join  
        Label        -print-boolean-5880-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5880-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5881-arg1        
        PushI        26                        
        Label        -compare-5881-arg2        
        PushI        27                        
        PushI        79                        
        Subtract                               
        Label        -compare-5881-sub         
        Subtract                               
        JumpNeg      -compare-5881-false       
        Jump         -compare-5881-true        
        Label        -compare-5881-true        
        PushI        1                         
        Jump         -compare-5881-join        
        Label        -compare-5881-false       
        PushI        0                         
        Jump         -compare-5881-join        
        Label        -compare-5881-join        
        JumpTrue     -print-boolean-5882-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5882-join  
        Label        -print-boolean-5882-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5882-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5883-arg1        
        PushI        58                        
        Label        -compare-5883-arg2        
        PushI        53                        
        PushI        39                        
        Subtract                               
        Label        -compare-5883-sub         
        Subtract                               
        JumpNeg      -compare-5883-false       
        Jump         -compare-5883-true        
        Label        -compare-5883-true        
        PushI        1                         
        Jump         -compare-5883-join        
        Label        -compare-5883-false       
        PushI        0                         
        Jump         -compare-5883-join        
        Label        -compare-5883-join        
        JumpTrue     -print-boolean-5884-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5884-join  
        Label        -print-boolean-5884-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5884-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5885-arg1        
        PushI        59                        
        Label        -compare-5885-arg2        
        PushI        14                        
        PushI        10                        
        Subtract                               
        Label        -compare-5885-sub         
        Subtract                               
        JumpNeg      -compare-5885-false       
        Jump         -compare-5885-true        
        Label        -compare-5885-true        
        PushI        1                         
        Jump         -compare-5885-join        
        Label        -compare-5885-false       
        PushI        0                         
        Jump         -compare-5885-join        
        Label        -compare-5885-join        
        JumpTrue     -print-boolean-5886-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5886-join  
        Label        -print-boolean-5886-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5886-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5887-arg1        
        PushI        18                        
        Label        -compare-5887-arg2        
        PushI        25                        
        PushI        72                        
        Subtract                               
        Label        -compare-5887-sub         
        Subtract                               
        JumpNeg      -compare-5887-false       
        Jump         -compare-5887-true        
        Label        -compare-5887-true        
        PushI        1                         
        Jump         -compare-5887-join        
        Label        -compare-5887-false       
        PushI        0                         
        Jump         -compare-5887-join        
        Label        -compare-5887-join        
        JumpTrue     -print-boolean-5888-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5888-join  
        Label        -print-boolean-5888-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5888-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5889-arg1        
        PushI        22                        
        Label        -compare-5889-arg2        
        PushI        52                        
        PushI        82                        
        Subtract                               
        Label        -compare-5889-sub         
        Subtract                               
        JumpNeg      -compare-5889-false       
        Jump         -compare-5889-true        
        Label        -compare-5889-true        
        PushI        1                         
        Jump         -compare-5889-join        
        Label        -compare-5889-false       
        PushI        0                         
        Jump         -compare-5889-join        
        Label        -compare-5889-join        
        JumpTrue     -print-boolean-5890-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5890-join  
        Label        -print-boolean-5890-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5890-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5891-arg1        
        PushI        76                        
        Label        -compare-5891-arg2        
        PushI        17                        
        PushI        29                        
        Subtract                               
        Label        -compare-5891-sub         
        Subtract                               
        JumpNeg      -compare-5891-false       
        Jump         -compare-5891-true        
        Label        -compare-5891-true        
        PushI        1                         
        Jump         -compare-5891-join        
        Label        -compare-5891-false       
        PushI        0                         
        Jump         -compare-5891-join        
        Label        -compare-5891-join        
        JumpTrue     -print-boolean-5892-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5892-join  
        Label        -print-boolean-5892-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5892-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5893-arg1        
        PushI        51                        
        Label        -compare-5893-arg2        
        PushI        20                        
        PushI        74                        
        Subtract                               
        Label        -compare-5893-sub         
        Subtract                               
        JumpNeg      -compare-5893-false       
        Jump         -compare-5893-true        
        Label        -compare-5893-true        
        PushI        1                         
        Jump         -compare-5893-join        
        Label        -compare-5893-false       
        PushI        0                         
        Jump         -compare-5893-join        
        Label        -compare-5893-join        
        JumpTrue     -print-boolean-5894-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5894-join  
        Label        -print-boolean-5894-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5894-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5895-arg1        
        PushI        24                        
        Label        -compare-5895-arg2        
        PushI        79                        
        PushI        75                        
        Subtract                               
        Label        -compare-5895-sub         
        Subtract                               
        JumpNeg      -compare-5895-false       
        Jump         -compare-5895-true        
        Label        -compare-5895-true        
        PushI        1                         
        Jump         -compare-5895-join        
        Label        -compare-5895-false       
        PushI        0                         
        Jump         -compare-5895-join        
        Label        -compare-5895-join        
        JumpTrue     -print-boolean-5896-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5896-join  
        Label        -print-boolean-5896-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5896-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5897-arg1        
        PushI        12                        
        Label        -compare-5897-arg2        
        PushI        87                        
        PushI        91                        
        Subtract                               
        Label        -compare-5897-sub         
        Subtract                               
        JumpNeg      -compare-5897-false       
        Jump         -compare-5897-true        
        Label        -compare-5897-true        
        PushI        1                         
        Jump         -compare-5897-join        
        Label        -compare-5897-false       
        PushI        0                         
        Jump         -compare-5897-join        
        Label        -compare-5897-join        
        JumpTrue     -print-boolean-5898-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5898-join  
        Label        -print-boolean-5898-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5898-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5899-arg1        
        PushI        91                        
        Label        -compare-5899-arg2        
        PushI        90                        
        PushI        8                         
        Subtract                               
        Label        -compare-5899-sub         
        Subtract                               
        JumpNeg      -compare-5899-false       
        Jump         -compare-5899-true        
        Label        -compare-5899-true        
        PushI        1                         
        Jump         -compare-5899-join        
        Label        -compare-5899-false       
        PushI        0                         
        Jump         -compare-5899-join        
        Label        -compare-5899-join        
        JumpTrue     -print-boolean-5900-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5900-join  
        Label        -print-boolean-5900-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5900-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5901-arg1        
        PushI        94                        
        Label        -compare-5901-arg2        
        PushI        78                        
        PushI        24                        
        Subtract                               
        Label        -compare-5901-sub         
        Subtract                               
        JumpNeg      -compare-5901-false       
        Jump         -compare-5901-true        
        Label        -compare-5901-true        
        PushI        1                         
        Jump         -compare-5901-join        
        Label        -compare-5901-false       
        PushI        0                         
        Jump         -compare-5901-join        
        Label        -compare-5901-join        
        JumpTrue     -print-boolean-5902-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5902-join  
        Label        -print-boolean-5902-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5902-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5903-arg1        
        PushI        15                        
        Label        -compare-5903-arg2        
        PushI        46                        
        PushI        58                        
        Subtract                               
        Label        -compare-5903-sub         
        Subtract                               
        JumpNeg      -compare-5903-false       
        Jump         -compare-5903-true        
        Label        -compare-5903-true        
        PushI        1                         
        Jump         -compare-5903-join        
        Label        -compare-5903-false       
        PushI        0                         
        Jump         -compare-5903-join        
        Label        -compare-5903-join        
        JumpTrue     -print-boolean-5904-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5904-join  
        Label        -print-boolean-5904-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5904-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5905-arg1        
        PushI        88                        
        PushI        57                        
        Subtract                               
        Label        -compare-5905-arg2        
        PushI        23                        
        PushI        35                        
        Subtract                               
        Label        -compare-5905-sub         
        Subtract                               
        JumpNeg      -compare-5905-false       
        Jump         -compare-5905-true        
        Label        -compare-5905-true        
        PushI        1                         
        Jump         -compare-5905-join        
        Label        -compare-5905-false       
        PushI        0                         
        Jump         -compare-5905-join        
        Label        -compare-5905-join        
        JumpTrue     -print-boolean-5906-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5906-join  
        Label        -print-boolean-5906-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5906-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5907-arg1        
        PushI        95                        
        PushI        8                         
        Subtract                               
        Label        -compare-5907-arg2        
        PushI        68                        
        PushI        44                        
        Subtract                               
        Label        -compare-5907-sub         
        Subtract                               
        JumpNeg      -compare-5907-false       
        Jump         -compare-5907-true        
        Label        -compare-5907-true        
        PushI        1                         
        Jump         -compare-5907-join        
        Label        -compare-5907-false       
        PushI        0                         
        Jump         -compare-5907-join        
        Label        -compare-5907-join        
        JumpTrue     -print-boolean-5908-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5908-join  
        Label        -print-boolean-5908-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5908-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5909-arg1        
        PushI        35                        
        PushI        57                        
        Subtract                               
        Label        -compare-5909-arg2        
        PushI        11                        
        PushI        56                        
        Subtract                               
        Label        -compare-5909-sub         
        Subtract                               
        JumpNeg      -compare-5909-false       
        Jump         -compare-5909-true        
        Label        -compare-5909-true        
        PushI        1                         
        Jump         -compare-5909-join        
        Label        -compare-5909-false       
        PushI        0                         
        Jump         -compare-5909-join        
        Label        -compare-5909-join        
        JumpTrue     -print-boolean-5910-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5910-join  
        Label        -print-boolean-5910-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5910-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5911-arg1        
        PushI        84                        
        PushI        78                        
        Subtract                               
        Label        -compare-5911-arg2        
        PushI        83                        
        PushI        66                        
        Subtract                               
        Label        -compare-5911-sub         
        Subtract                               
        JumpNeg      -compare-5911-false       
        Jump         -compare-5911-true        
        Label        -compare-5911-true        
        PushI        1                         
        Jump         -compare-5911-join        
        Label        -compare-5911-false       
        PushI        0                         
        Jump         -compare-5911-join        
        Label        -compare-5911-join        
        JumpTrue     -print-boolean-5912-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5912-join  
        Label        -print-boolean-5912-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5912-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5913-arg1        
        PushI        39                        
        PushI        97                        
        Subtract                               
        Label        -compare-5913-arg2        
        PushI        83                        
        PushI        47                        
        Subtract                               
        Label        -compare-5913-sub         
        Subtract                               
        JumpNeg      -compare-5913-false       
        Jump         -compare-5913-true        
        Label        -compare-5913-true        
        PushI        1                         
        Jump         -compare-5913-join        
        Label        -compare-5913-false       
        PushI        0                         
        Jump         -compare-5913-join        
        Label        -compare-5913-join        
        JumpTrue     -print-boolean-5914-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5914-join  
        Label        -print-boolean-5914-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5914-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5915-arg1        
        PushI        99                        
        PushI        87                        
        Subtract                               
        Label        -compare-5915-arg2        
        PushI        27                        
        PushI        11                        
        Subtract                               
        Label        -compare-5915-sub         
        Subtract                               
        JumpNeg      -compare-5915-false       
        Jump         -compare-5915-true        
        Label        -compare-5915-true        
        PushI        1                         
        Jump         -compare-5915-join        
        Label        -compare-5915-false       
        PushI        0                         
        Jump         -compare-5915-join        
        Label        -compare-5915-join        
        JumpTrue     -print-boolean-5916-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5916-join  
        Label        -print-boolean-5916-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5916-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5917-arg1        
        PushI        48                        
        PushI        87                        
        Subtract                               
        Label        -compare-5917-arg2        
        PushI        71                        
        PushI        90                        
        Subtract                               
        Label        -compare-5917-sub         
        Subtract                               
        JumpNeg      -compare-5917-false       
        Jump         -compare-5917-true        
        Label        -compare-5917-true        
        PushI        1                         
        Jump         -compare-5917-join        
        Label        -compare-5917-false       
        PushI        0                         
        Jump         -compare-5917-join        
        Label        -compare-5917-join        
        JumpTrue     -print-boolean-5918-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5918-join  
        Label        -print-boolean-5918-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5918-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5919-arg1        
        PushI        66                        
        PushI        84                        
        Subtract                               
        Label        -compare-5919-arg2        
        PushI        53                        
        PushI        82                        
        Subtract                               
        Label        -compare-5919-sub         
        Subtract                               
        JumpNeg      -compare-5919-false       
        Jump         -compare-5919-true        
        Label        -compare-5919-true        
        PushI        1                         
        Jump         -compare-5919-join        
        Label        -compare-5919-false       
        PushI        0                         
        Jump         -compare-5919-join        
        Label        -compare-5919-join        
        JumpTrue     -print-boolean-5920-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5920-join  
        Label        -print-boolean-5920-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5920-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5921-arg1        
        PushI        32                        
        PushI        91                        
        Subtract                               
        Label        -compare-5921-arg2        
        PushI        65                        
        PushI        95                        
        Subtract                               
        Label        -compare-5921-sub         
        Subtract                               
        JumpNeg      -compare-5921-false       
        Jump         -compare-5921-true        
        Label        -compare-5921-true        
        PushI        1                         
        Jump         -compare-5921-join        
        Label        -compare-5921-false       
        PushI        0                         
        Jump         -compare-5921-join        
        Label        -compare-5921-join        
        JumpTrue     -print-boolean-5922-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5922-join  
        Label        -print-boolean-5922-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5922-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5923-arg1        
        PushI        24                        
        PushI        48                        
        Subtract                               
        Label        -compare-5923-arg2        
        PushI        70                        
        PushI        1                         
        Subtract                               
        Label        -compare-5923-sub         
        Subtract                               
        JumpNeg      -compare-5923-false       
        Jump         -compare-5923-true        
        Label        -compare-5923-true        
        PushI        1                         
        Jump         -compare-5923-join        
        Label        -compare-5923-false       
        PushI        0                         
        Jump         -compare-5923-join        
        Label        -compare-5923-join        
        JumpTrue     -print-boolean-5924-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5924-join  
        Label        -print-boolean-5924-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5924-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5925-arg1        
        PushI        45                        
        PushI        56                        
        Subtract                               
        Label        -compare-5925-arg2        
        PushI        80                        
        PushI        25                        
        Subtract                               
        Label        -compare-5925-sub         
        Subtract                               
        JumpNeg      -compare-5925-false       
        Jump         -compare-5925-true        
        Label        -compare-5925-true        
        PushI        1                         
        Jump         -compare-5925-join        
        Label        -compare-5925-false       
        PushI        0                         
        Jump         -compare-5925-join        
        Label        -compare-5925-join        
        JumpTrue     -print-boolean-5926-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5926-join  
        Label        -print-boolean-5926-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5926-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5927-arg1        
        PushI        77                        
        PushI        43                        
        Subtract                               
        Label        -compare-5927-arg2        
        PushI        37                        
        PushI        13                        
        Subtract                               
        Label        -compare-5927-sub         
        Subtract                               
        JumpNeg      -compare-5927-false       
        Jump         -compare-5927-true        
        Label        -compare-5927-true        
        PushI        1                         
        Jump         -compare-5927-join        
        Label        -compare-5927-false       
        PushI        0                         
        Jump         -compare-5927-join        
        Label        -compare-5927-join        
        JumpTrue     -print-boolean-5928-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5928-join  
        Label        -print-boolean-5928-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5928-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
