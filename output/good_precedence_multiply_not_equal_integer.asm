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
        Label        -compare-5102-arg1        
        PushI        44                        
        PushI        35                        
        Multiply                               
        Label        -compare-5102-arg2        
        PushI        37                        
        Label        -compare-5102-sub         
        Subtract                               
        JumpFalse    -compare-5102-false       
        Jump         -compare-5102-true        
        Label        -compare-5102-true        
        PushI        1                         
        Jump         -compare-5102-join        
        Label        -compare-5102-false       
        PushI        0                         
        Jump         -compare-5102-join        
        Label        -compare-5102-join        
        JumpTrue     -print-boolean-5103-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5103-join  
        Label        -print-boolean-5103-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5103-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5104-arg1        
        PushI        75                        
        PushI        50                        
        Multiply                               
        Label        -compare-5104-arg2        
        PushI        30                        
        Label        -compare-5104-sub         
        Subtract                               
        JumpFalse    -compare-5104-false       
        Jump         -compare-5104-true        
        Label        -compare-5104-true        
        PushI        1                         
        Jump         -compare-5104-join        
        Label        -compare-5104-false       
        PushI        0                         
        Jump         -compare-5104-join        
        Label        -compare-5104-join        
        JumpTrue     -print-boolean-5105-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5105-join  
        Label        -print-boolean-5105-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5105-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5106-arg1        
        PushI        85                        
        PushI        1                         
        Multiply                               
        Label        -compare-5106-arg2        
        PushI        6                         
        Label        -compare-5106-sub         
        Subtract                               
        JumpFalse    -compare-5106-false       
        Jump         -compare-5106-true        
        Label        -compare-5106-true        
        PushI        1                         
        Jump         -compare-5106-join        
        Label        -compare-5106-false       
        PushI        0                         
        Jump         -compare-5106-join        
        Label        -compare-5106-join        
        JumpTrue     -print-boolean-5107-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5107-join  
        Label        -print-boolean-5107-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5107-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5108-arg1        
        PushI        26                        
        PushI        58                        
        Multiply                               
        Label        -compare-5108-arg2        
        PushI        4                         
        Label        -compare-5108-sub         
        Subtract                               
        JumpFalse    -compare-5108-false       
        Jump         -compare-5108-true        
        Label        -compare-5108-true        
        PushI        1                         
        Jump         -compare-5108-join        
        Label        -compare-5108-false       
        PushI        0                         
        Jump         -compare-5108-join        
        Label        -compare-5108-join        
        JumpTrue     -print-boolean-5109-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5109-join  
        Label        -print-boolean-5109-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5109-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5110-arg1        
        PushI        40                        
        PushI        10                        
        Multiply                               
        Label        -compare-5110-arg2        
        PushI        25                        
        Label        -compare-5110-sub         
        Subtract                               
        JumpFalse    -compare-5110-false       
        Jump         -compare-5110-true        
        Label        -compare-5110-true        
        PushI        1                         
        Jump         -compare-5110-join        
        Label        -compare-5110-false       
        PushI        0                         
        Jump         -compare-5110-join        
        Label        -compare-5110-join        
        JumpTrue     -print-boolean-5111-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5111-join  
        Label        -print-boolean-5111-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5111-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5112-arg1        
        PushI        85                        
        PushI        8                         
        Multiply                               
        Label        -compare-5112-arg2        
        PushI        49                        
        Label        -compare-5112-sub         
        Subtract                               
        JumpFalse    -compare-5112-false       
        Jump         -compare-5112-true        
        Label        -compare-5112-true        
        PushI        1                         
        Jump         -compare-5112-join        
        Label        -compare-5112-false       
        PushI        0                         
        Jump         -compare-5112-join        
        Label        -compare-5112-join        
        JumpTrue     -print-boolean-5113-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5113-join  
        Label        -print-boolean-5113-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5113-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5114-arg1        
        PushI        85                        
        PushI        64                        
        Multiply                               
        Label        -compare-5114-arg2        
        PushI        99                        
        Label        -compare-5114-sub         
        Subtract                               
        JumpFalse    -compare-5114-false       
        Jump         -compare-5114-true        
        Label        -compare-5114-true        
        PushI        1                         
        Jump         -compare-5114-join        
        Label        -compare-5114-false       
        PushI        0                         
        Jump         -compare-5114-join        
        Label        -compare-5114-join        
        JumpTrue     -print-boolean-5115-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5115-join  
        Label        -print-boolean-5115-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5115-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5116-arg1        
        PushI        80                        
        PushI        32                        
        Multiply                               
        Label        -compare-5116-arg2        
        PushI        39                        
        Label        -compare-5116-sub         
        Subtract                               
        JumpFalse    -compare-5116-false       
        Jump         -compare-5116-true        
        Label        -compare-5116-true        
        PushI        1                         
        Jump         -compare-5116-join        
        Label        -compare-5116-false       
        PushI        0                         
        Jump         -compare-5116-join        
        Label        -compare-5116-join        
        JumpTrue     -print-boolean-5117-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5117-join  
        Label        -print-boolean-5117-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5117-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5118-arg1        
        PushI        34                        
        PushI        90                        
        Multiply                               
        Label        -compare-5118-arg2        
        PushI        70                        
        Label        -compare-5118-sub         
        Subtract                               
        JumpFalse    -compare-5118-false       
        Jump         -compare-5118-true        
        Label        -compare-5118-true        
        PushI        1                         
        Jump         -compare-5118-join        
        Label        -compare-5118-false       
        PushI        0                         
        Jump         -compare-5118-join        
        Label        -compare-5118-join        
        JumpTrue     -print-boolean-5119-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5119-join  
        Label        -print-boolean-5119-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5119-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5120-arg1        
        PushI        82                        
        PushI        20                        
        Multiply                               
        Label        -compare-5120-arg2        
        PushI        16                        
        Label        -compare-5120-sub         
        Subtract                               
        JumpFalse    -compare-5120-false       
        Jump         -compare-5120-true        
        Label        -compare-5120-true        
        PushI        1                         
        Jump         -compare-5120-join        
        Label        -compare-5120-false       
        PushI        0                         
        Jump         -compare-5120-join        
        Label        -compare-5120-join        
        JumpTrue     -print-boolean-5121-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5121-join  
        Label        -print-boolean-5121-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5121-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5122-arg1        
        PushI        46                        
        PushI        23                        
        Multiply                               
        Label        -compare-5122-arg2        
        PushI        83                        
        Label        -compare-5122-sub         
        Subtract                               
        JumpFalse    -compare-5122-false       
        Jump         -compare-5122-true        
        Label        -compare-5122-true        
        PushI        1                         
        Jump         -compare-5122-join        
        Label        -compare-5122-false       
        PushI        0                         
        Jump         -compare-5122-join        
        Label        -compare-5122-join        
        JumpTrue     -print-boolean-5123-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5123-join  
        Label        -print-boolean-5123-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5123-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5124-arg1        
        PushI        99                        
        PushI        71                        
        Multiply                               
        Label        -compare-5124-arg2        
        PushI        8                         
        Label        -compare-5124-sub         
        Subtract                               
        JumpFalse    -compare-5124-false       
        Jump         -compare-5124-true        
        Label        -compare-5124-true        
        PushI        1                         
        Jump         -compare-5124-join        
        Label        -compare-5124-false       
        PushI        0                         
        Jump         -compare-5124-join        
        Label        -compare-5124-join        
        JumpTrue     -print-boolean-5125-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5125-join  
        Label        -print-boolean-5125-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5125-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5126-arg1        
        PushI        10                        
        Label        -compare-5126-arg2        
        PushI        78                        
        PushI        79                        
        Multiply                               
        Label        -compare-5126-sub         
        Subtract                               
        JumpFalse    -compare-5126-false       
        Jump         -compare-5126-true        
        Label        -compare-5126-true        
        PushI        1                         
        Jump         -compare-5126-join        
        Label        -compare-5126-false       
        PushI        0                         
        Jump         -compare-5126-join        
        Label        -compare-5126-join        
        JumpTrue     -print-boolean-5127-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5127-join  
        Label        -print-boolean-5127-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5127-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5128-arg1        
        PushI        89                        
        Label        -compare-5128-arg2        
        PushI        18                        
        PushI        37                        
        Multiply                               
        Label        -compare-5128-sub         
        Subtract                               
        JumpFalse    -compare-5128-false       
        Jump         -compare-5128-true        
        Label        -compare-5128-true        
        PushI        1                         
        Jump         -compare-5128-join        
        Label        -compare-5128-false       
        PushI        0                         
        Jump         -compare-5128-join        
        Label        -compare-5128-join        
        JumpTrue     -print-boolean-5129-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5129-join  
        Label        -print-boolean-5129-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5129-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5130-arg1        
        PushI        52                        
        Label        -compare-5130-arg2        
        PushI        72                        
        PushI        20                        
        Multiply                               
        Label        -compare-5130-sub         
        Subtract                               
        JumpFalse    -compare-5130-false       
        Jump         -compare-5130-true        
        Label        -compare-5130-true        
        PushI        1                         
        Jump         -compare-5130-join        
        Label        -compare-5130-false       
        PushI        0                         
        Jump         -compare-5130-join        
        Label        -compare-5130-join        
        JumpTrue     -print-boolean-5131-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5131-join  
        Label        -print-boolean-5131-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5131-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5132-arg1        
        PushI        70                        
        Label        -compare-5132-arg2        
        PushI        28                        
        PushI        57                        
        Multiply                               
        Label        -compare-5132-sub         
        Subtract                               
        JumpFalse    -compare-5132-false       
        Jump         -compare-5132-true        
        Label        -compare-5132-true        
        PushI        1                         
        Jump         -compare-5132-join        
        Label        -compare-5132-false       
        PushI        0                         
        Jump         -compare-5132-join        
        Label        -compare-5132-join        
        JumpTrue     -print-boolean-5133-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5133-join  
        Label        -print-boolean-5133-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5133-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5134-arg1        
        PushI        65                        
        Label        -compare-5134-arg2        
        PushI        17                        
        PushI        92                        
        Multiply                               
        Label        -compare-5134-sub         
        Subtract                               
        JumpFalse    -compare-5134-false       
        Jump         -compare-5134-true        
        Label        -compare-5134-true        
        PushI        1                         
        Jump         -compare-5134-join        
        Label        -compare-5134-false       
        PushI        0                         
        Jump         -compare-5134-join        
        Label        -compare-5134-join        
        JumpTrue     -print-boolean-5135-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5135-join  
        Label        -print-boolean-5135-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5135-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5136-arg1        
        PushI        49                        
        Label        -compare-5136-arg2        
        PushI        83                        
        PushI        34                        
        Multiply                               
        Label        -compare-5136-sub         
        Subtract                               
        JumpFalse    -compare-5136-false       
        Jump         -compare-5136-true        
        Label        -compare-5136-true        
        PushI        1                         
        Jump         -compare-5136-join        
        Label        -compare-5136-false       
        PushI        0                         
        Jump         -compare-5136-join        
        Label        -compare-5136-join        
        JumpTrue     -print-boolean-5137-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5137-join  
        Label        -print-boolean-5137-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5137-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5138-arg1        
        PushI        25                        
        Label        -compare-5138-arg2        
        PushI        44                        
        PushI        75                        
        Multiply                               
        Label        -compare-5138-sub         
        Subtract                               
        JumpFalse    -compare-5138-false       
        Jump         -compare-5138-true        
        Label        -compare-5138-true        
        PushI        1                         
        Jump         -compare-5138-join        
        Label        -compare-5138-false       
        PushI        0                         
        Jump         -compare-5138-join        
        Label        -compare-5138-join        
        JumpTrue     -print-boolean-5139-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5139-join  
        Label        -print-boolean-5139-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5139-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5140-arg1        
        PushI        86                        
        Label        -compare-5140-arg2        
        PushI        77                        
        PushI        32                        
        Multiply                               
        Label        -compare-5140-sub         
        Subtract                               
        JumpFalse    -compare-5140-false       
        Jump         -compare-5140-true        
        Label        -compare-5140-true        
        PushI        1                         
        Jump         -compare-5140-join        
        Label        -compare-5140-false       
        PushI        0                         
        Jump         -compare-5140-join        
        Label        -compare-5140-join        
        JumpTrue     -print-boolean-5141-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5141-join  
        Label        -print-boolean-5141-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5141-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5142-arg1        
        PushI        1                         
        Label        -compare-5142-arg2        
        PushI        90                        
        PushI        98                        
        Multiply                               
        Label        -compare-5142-sub         
        Subtract                               
        JumpFalse    -compare-5142-false       
        Jump         -compare-5142-true        
        Label        -compare-5142-true        
        PushI        1                         
        Jump         -compare-5142-join        
        Label        -compare-5142-false       
        PushI        0                         
        Jump         -compare-5142-join        
        Label        -compare-5142-join        
        JumpTrue     -print-boolean-5143-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5143-join  
        Label        -print-boolean-5143-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5143-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5144-arg1        
        PushI        63                        
        Label        -compare-5144-arg2        
        PushI        23                        
        PushI        27                        
        Multiply                               
        Label        -compare-5144-sub         
        Subtract                               
        JumpFalse    -compare-5144-false       
        Jump         -compare-5144-true        
        Label        -compare-5144-true        
        PushI        1                         
        Jump         -compare-5144-join        
        Label        -compare-5144-false       
        PushI        0                         
        Jump         -compare-5144-join        
        Label        -compare-5144-join        
        JumpTrue     -print-boolean-5145-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5145-join  
        Label        -print-boolean-5145-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5145-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5146-arg1        
        PushI        23                        
        Label        -compare-5146-arg2        
        PushI        43                        
        PushI        27                        
        Multiply                               
        Label        -compare-5146-sub         
        Subtract                               
        JumpFalse    -compare-5146-false       
        Jump         -compare-5146-true        
        Label        -compare-5146-true        
        PushI        1                         
        Jump         -compare-5146-join        
        Label        -compare-5146-false       
        PushI        0                         
        Jump         -compare-5146-join        
        Label        -compare-5146-join        
        JumpTrue     -print-boolean-5147-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5147-join  
        Label        -print-boolean-5147-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5147-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5148-arg1        
        PushI        15                        
        Label        -compare-5148-arg2        
        PushI        84                        
        PushI        64                        
        Multiply                               
        Label        -compare-5148-sub         
        Subtract                               
        JumpFalse    -compare-5148-false       
        Jump         -compare-5148-true        
        Label        -compare-5148-true        
        PushI        1                         
        Jump         -compare-5148-join        
        Label        -compare-5148-false       
        PushI        0                         
        Jump         -compare-5148-join        
        Label        -compare-5148-join        
        JumpTrue     -print-boolean-5149-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5149-join  
        Label        -print-boolean-5149-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5149-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5150-arg1        
        PushI        60                        
        PushI        47                        
        Multiply                               
        Label        -compare-5150-arg2        
        PushI        79                        
        PushI        57                        
        Multiply                               
        Label        -compare-5150-sub         
        Subtract                               
        JumpFalse    -compare-5150-false       
        Jump         -compare-5150-true        
        Label        -compare-5150-true        
        PushI        1                         
        Jump         -compare-5150-join        
        Label        -compare-5150-false       
        PushI        0                         
        Jump         -compare-5150-join        
        Label        -compare-5150-join        
        JumpTrue     -print-boolean-5151-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5151-join  
        Label        -print-boolean-5151-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5151-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5152-arg1        
        PushI        95                        
        PushI        61                        
        Multiply                               
        Label        -compare-5152-arg2        
        PushI        46                        
        PushI        3                         
        Multiply                               
        Label        -compare-5152-sub         
        Subtract                               
        JumpFalse    -compare-5152-false       
        Jump         -compare-5152-true        
        Label        -compare-5152-true        
        PushI        1                         
        Jump         -compare-5152-join        
        Label        -compare-5152-false       
        PushI        0                         
        Jump         -compare-5152-join        
        Label        -compare-5152-join        
        JumpTrue     -print-boolean-5153-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5153-join  
        Label        -print-boolean-5153-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5153-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5154-arg1        
        PushI        46                        
        PushI        74                        
        Multiply                               
        Label        -compare-5154-arg2        
        PushI        7                         
        PushI        70                        
        Multiply                               
        Label        -compare-5154-sub         
        Subtract                               
        JumpFalse    -compare-5154-false       
        Jump         -compare-5154-true        
        Label        -compare-5154-true        
        PushI        1                         
        Jump         -compare-5154-join        
        Label        -compare-5154-false       
        PushI        0                         
        Jump         -compare-5154-join        
        Label        -compare-5154-join        
        JumpTrue     -print-boolean-5155-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5155-join  
        Label        -print-boolean-5155-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5155-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5156-arg1        
        PushI        61                        
        PushI        7                         
        Multiply                               
        Label        -compare-5156-arg2        
        PushI        69                        
        PushI        84                        
        Multiply                               
        Label        -compare-5156-sub         
        Subtract                               
        JumpFalse    -compare-5156-false       
        Jump         -compare-5156-true        
        Label        -compare-5156-true        
        PushI        1                         
        Jump         -compare-5156-join        
        Label        -compare-5156-false       
        PushI        0                         
        Jump         -compare-5156-join        
        Label        -compare-5156-join        
        JumpTrue     -print-boolean-5157-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5157-join  
        Label        -print-boolean-5157-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5157-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5158-arg1        
        PushI        49                        
        PushI        68                        
        Multiply                               
        Label        -compare-5158-arg2        
        PushI        34                        
        PushI        32                        
        Multiply                               
        Label        -compare-5158-sub         
        Subtract                               
        JumpFalse    -compare-5158-false       
        Jump         -compare-5158-true        
        Label        -compare-5158-true        
        PushI        1                         
        Jump         -compare-5158-join        
        Label        -compare-5158-false       
        PushI        0                         
        Jump         -compare-5158-join        
        Label        -compare-5158-join        
        JumpTrue     -print-boolean-5159-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5159-join  
        Label        -print-boolean-5159-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5159-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5160-arg1        
        PushI        29                        
        PushI        94                        
        Multiply                               
        Label        -compare-5160-arg2        
        PushI        53                        
        PushI        76                        
        Multiply                               
        Label        -compare-5160-sub         
        Subtract                               
        JumpFalse    -compare-5160-false       
        Jump         -compare-5160-true        
        Label        -compare-5160-true        
        PushI        1                         
        Jump         -compare-5160-join        
        Label        -compare-5160-false       
        PushI        0                         
        Jump         -compare-5160-join        
        Label        -compare-5160-join        
        JumpTrue     -print-boolean-5161-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5161-join  
        Label        -print-boolean-5161-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5161-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5162-arg1        
        PushI        43                        
        PushI        79                        
        Multiply                               
        Label        -compare-5162-arg2        
        PushI        13                        
        PushI        80                        
        Multiply                               
        Label        -compare-5162-sub         
        Subtract                               
        JumpFalse    -compare-5162-false       
        Jump         -compare-5162-true        
        Label        -compare-5162-true        
        PushI        1                         
        Jump         -compare-5162-join        
        Label        -compare-5162-false       
        PushI        0                         
        Jump         -compare-5162-join        
        Label        -compare-5162-join        
        JumpTrue     -print-boolean-5163-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5163-join  
        Label        -print-boolean-5163-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5163-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5164-arg1        
        PushI        47                        
        PushI        45                        
        Multiply                               
        Label        -compare-5164-arg2        
        PushI        43                        
        PushI        81                        
        Multiply                               
        Label        -compare-5164-sub         
        Subtract                               
        JumpFalse    -compare-5164-false       
        Jump         -compare-5164-true        
        Label        -compare-5164-true        
        PushI        1                         
        Jump         -compare-5164-join        
        Label        -compare-5164-false       
        PushI        0                         
        Jump         -compare-5164-join        
        Label        -compare-5164-join        
        JumpTrue     -print-boolean-5165-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5165-join  
        Label        -print-boolean-5165-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5165-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5166-arg1        
        PushI        9                         
        PushI        10                        
        Multiply                               
        Label        -compare-5166-arg2        
        PushI        26                        
        PushI        37                        
        Multiply                               
        Label        -compare-5166-sub         
        Subtract                               
        JumpFalse    -compare-5166-false       
        Jump         -compare-5166-true        
        Label        -compare-5166-true        
        PushI        1                         
        Jump         -compare-5166-join        
        Label        -compare-5166-false       
        PushI        0                         
        Jump         -compare-5166-join        
        Label        -compare-5166-join        
        JumpTrue     -print-boolean-5167-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5167-join  
        Label        -print-boolean-5167-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5167-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5168-arg1        
        PushI        95                        
        PushI        64                        
        Multiply                               
        Label        -compare-5168-arg2        
        PushI        20                        
        PushI        6                         
        Multiply                               
        Label        -compare-5168-sub         
        Subtract                               
        JumpFalse    -compare-5168-false       
        Jump         -compare-5168-true        
        Label        -compare-5168-true        
        PushI        1                         
        Jump         -compare-5168-join        
        Label        -compare-5168-false       
        PushI        0                         
        Jump         -compare-5168-join        
        Label        -compare-5168-join        
        JumpTrue     -print-boolean-5169-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5169-join  
        Label        -print-boolean-5169-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5169-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5170-arg1        
        PushI        76                        
        PushI        7                         
        Multiply                               
        Label        -compare-5170-arg2        
        PushI        14                        
        PushI        95                        
        Multiply                               
        Label        -compare-5170-sub         
        Subtract                               
        JumpFalse    -compare-5170-false       
        Jump         -compare-5170-true        
        Label        -compare-5170-true        
        PushI        1                         
        Jump         -compare-5170-join        
        Label        -compare-5170-false       
        PushI        0                         
        Jump         -compare-5170-join        
        Label        -compare-5170-join        
        JumpTrue     -print-boolean-5171-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5171-join  
        Label        -print-boolean-5171-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5171-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5172-arg1        
        PushI        32                        
        PushI        9                         
        Multiply                               
        Label        -compare-5172-arg2        
        PushI        45                        
        PushI        47                        
        Multiply                               
        Label        -compare-5172-sub         
        Subtract                               
        JumpFalse    -compare-5172-false       
        Jump         -compare-5172-true        
        Label        -compare-5172-true        
        PushI        1                         
        Jump         -compare-5172-join        
        Label        -compare-5172-false       
        PushI        0                         
        Jump         -compare-5172-join        
        Label        -compare-5172-join        
        JumpTrue     -print-boolean-5173-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5173-join  
        Label        -print-boolean-5173-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5173-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
