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
        Label        -compare-5089-arg1        
        PushI        44                        
        PushI        35                        
        Multiply                               
        Label        -compare-5089-arg2        
        PushI        37                        
        Label        -compare-5089-sub         
        Subtract                               
        JumpFalse    -compare-5089-false       
        Jump         -compare-5089-true        
        Label        -compare-5089-true        
        PushI        1                         
        Jump         -compare-5089-join        
        Label        -compare-5089-false       
        PushI        0                         
        Jump         -compare-5089-join        
        Label        -compare-5089-join        
        JumpTrue     -print-boolean-5090-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5090-join  
        Label        -print-boolean-5090-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5090-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5091-arg1        
        PushI        75                        
        PushI        50                        
        Multiply                               
        Label        -compare-5091-arg2        
        PushI        30                        
        Label        -compare-5091-sub         
        Subtract                               
        JumpFalse    -compare-5091-false       
        Jump         -compare-5091-true        
        Label        -compare-5091-true        
        PushI        1                         
        Jump         -compare-5091-join        
        Label        -compare-5091-false       
        PushI        0                         
        Jump         -compare-5091-join        
        Label        -compare-5091-join        
        JumpTrue     -print-boolean-5092-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5092-join  
        Label        -print-boolean-5092-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5092-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5093-arg1        
        PushI        85                        
        PushI        1                         
        Multiply                               
        Label        -compare-5093-arg2        
        PushI        6                         
        Label        -compare-5093-sub         
        Subtract                               
        JumpFalse    -compare-5093-false       
        Jump         -compare-5093-true        
        Label        -compare-5093-true        
        PushI        1                         
        Jump         -compare-5093-join        
        Label        -compare-5093-false       
        PushI        0                         
        Jump         -compare-5093-join        
        Label        -compare-5093-join        
        JumpTrue     -print-boolean-5094-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5094-join  
        Label        -print-boolean-5094-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5094-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5095-arg1        
        PushI        26                        
        PushI        58                        
        Multiply                               
        Label        -compare-5095-arg2        
        PushI        4                         
        Label        -compare-5095-sub         
        Subtract                               
        JumpFalse    -compare-5095-false       
        Jump         -compare-5095-true        
        Label        -compare-5095-true        
        PushI        1                         
        Jump         -compare-5095-join        
        Label        -compare-5095-false       
        PushI        0                         
        Jump         -compare-5095-join        
        Label        -compare-5095-join        
        JumpTrue     -print-boolean-5096-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5096-join  
        Label        -print-boolean-5096-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5096-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5097-arg1        
        PushI        40                        
        PushI        10                        
        Multiply                               
        Label        -compare-5097-arg2        
        PushI        25                        
        Label        -compare-5097-sub         
        Subtract                               
        JumpFalse    -compare-5097-false       
        Jump         -compare-5097-true        
        Label        -compare-5097-true        
        PushI        1                         
        Jump         -compare-5097-join        
        Label        -compare-5097-false       
        PushI        0                         
        Jump         -compare-5097-join        
        Label        -compare-5097-join        
        JumpTrue     -print-boolean-5098-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5098-join  
        Label        -print-boolean-5098-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5098-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5099-arg1        
        PushI        85                        
        PushI        8                         
        Multiply                               
        Label        -compare-5099-arg2        
        PushI        49                        
        Label        -compare-5099-sub         
        Subtract                               
        JumpFalse    -compare-5099-false       
        Jump         -compare-5099-true        
        Label        -compare-5099-true        
        PushI        1                         
        Jump         -compare-5099-join        
        Label        -compare-5099-false       
        PushI        0                         
        Jump         -compare-5099-join        
        Label        -compare-5099-join        
        JumpTrue     -print-boolean-5100-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5100-join  
        Label        -print-boolean-5100-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5100-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5101-arg1        
        PushI        85                        
        PushI        64                        
        Multiply                               
        Label        -compare-5101-arg2        
        PushI        99                        
        Label        -compare-5101-sub         
        Subtract                               
        JumpFalse    -compare-5101-false       
        Jump         -compare-5101-true        
        Label        -compare-5101-true        
        PushI        1                         
        Jump         -compare-5101-join        
        Label        -compare-5101-false       
        PushI        0                         
        Jump         -compare-5101-join        
        Label        -compare-5101-join        
        JumpTrue     -print-boolean-5102-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5102-join  
        Label        -print-boolean-5102-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5102-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5103-arg1        
        PushI        80                        
        PushI        32                        
        Multiply                               
        Label        -compare-5103-arg2        
        PushI        39                        
        Label        -compare-5103-sub         
        Subtract                               
        JumpFalse    -compare-5103-false       
        Jump         -compare-5103-true        
        Label        -compare-5103-true        
        PushI        1                         
        Jump         -compare-5103-join        
        Label        -compare-5103-false       
        PushI        0                         
        Jump         -compare-5103-join        
        Label        -compare-5103-join        
        JumpTrue     -print-boolean-5104-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5104-join  
        Label        -print-boolean-5104-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5104-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5105-arg1        
        PushI        34                        
        PushI        90                        
        Multiply                               
        Label        -compare-5105-arg2        
        PushI        70                        
        Label        -compare-5105-sub         
        Subtract                               
        JumpFalse    -compare-5105-false       
        Jump         -compare-5105-true        
        Label        -compare-5105-true        
        PushI        1                         
        Jump         -compare-5105-join        
        Label        -compare-5105-false       
        PushI        0                         
        Jump         -compare-5105-join        
        Label        -compare-5105-join        
        JumpTrue     -print-boolean-5106-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5106-join  
        Label        -print-boolean-5106-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5106-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5107-arg1        
        PushI        82                        
        PushI        20                        
        Multiply                               
        Label        -compare-5107-arg2        
        PushI        16                        
        Label        -compare-5107-sub         
        Subtract                               
        JumpFalse    -compare-5107-false       
        Jump         -compare-5107-true        
        Label        -compare-5107-true        
        PushI        1                         
        Jump         -compare-5107-join        
        Label        -compare-5107-false       
        PushI        0                         
        Jump         -compare-5107-join        
        Label        -compare-5107-join        
        JumpTrue     -print-boolean-5108-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5108-join  
        Label        -print-boolean-5108-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5108-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5109-arg1        
        PushI        46                        
        PushI        23                        
        Multiply                               
        Label        -compare-5109-arg2        
        PushI        83                        
        Label        -compare-5109-sub         
        Subtract                               
        JumpFalse    -compare-5109-false       
        Jump         -compare-5109-true        
        Label        -compare-5109-true        
        PushI        1                         
        Jump         -compare-5109-join        
        Label        -compare-5109-false       
        PushI        0                         
        Jump         -compare-5109-join        
        Label        -compare-5109-join        
        JumpTrue     -print-boolean-5110-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5110-join  
        Label        -print-boolean-5110-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5110-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5111-arg1        
        PushI        99                        
        PushI        71                        
        Multiply                               
        Label        -compare-5111-arg2        
        PushI        8                         
        Label        -compare-5111-sub         
        Subtract                               
        JumpFalse    -compare-5111-false       
        Jump         -compare-5111-true        
        Label        -compare-5111-true        
        PushI        1                         
        Jump         -compare-5111-join        
        Label        -compare-5111-false       
        PushI        0                         
        Jump         -compare-5111-join        
        Label        -compare-5111-join        
        JumpTrue     -print-boolean-5112-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5112-join  
        Label        -print-boolean-5112-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5112-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5113-arg1        
        PushI        10                        
        Label        -compare-5113-arg2        
        PushI        78                        
        PushI        79                        
        Multiply                               
        Label        -compare-5113-sub         
        Subtract                               
        JumpFalse    -compare-5113-false       
        Jump         -compare-5113-true        
        Label        -compare-5113-true        
        PushI        1                         
        Jump         -compare-5113-join        
        Label        -compare-5113-false       
        PushI        0                         
        Jump         -compare-5113-join        
        Label        -compare-5113-join        
        JumpTrue     -print-boolean-5114-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5114-join  
        Label        -print-boolean-5114-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5114-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5115-arg1        
        PushI        89                        
        Label        -compare-5115-arg2        
        PushI        18                        
        PushI        37                        
        Multiply                               
        Label        -compare-5115-sub         
        Subtract                               
        JumpFalse    -compare-5115-false       
        Jump         -compare-5115-true        
        Label        -compare-5115-true        
        PushI        1                         
        Jump         -compare-5115-join        
        Label        -compare-5115-false       
        PushI        0                         
        Jump         -compare-5115-join        
        Label        -compare-5115-join        
        JumpTrue     -print-boolean-5116-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5116-join  
        Label        -print-boolean-5116-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5116-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5117-arg1        
        PushI        52                        
        Label        -compare-5117-arg2        
        PushI        72                        
        PushI        20                        
        Multiply                               
        Label        -compare-5117-sub         
        Subtract                               
        JumpFalse    -compare-5117-false       
        Jump         -compare-5117-true        
        Label        -compare-5117-true        
        PushI        1                         
        Jump         -compare-5117-join        
        Label        -compare-5117-false       
        PushI        0                         
        Jump         -compare-5117-join        
        Label        -compare-5117-join        
        JumpTrue     -print-boolean-5118-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5118-join  
        Label        -print-boolean-5118-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5118-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5119-arg1        
        PushI        70                        
        Label        -compare-5119-arg2        
        PushI        28                        
        PushI        57                        
        Multiply                               
        Label        -compare-5119-sub         
        Subtract                               
        JumpFalse    -compare-5119-false       
        Jump         -compare-5119-true        
        Label        -compare-5119-true        
        PushI        1                         
        Jump         -compare-5119-join        
        Label        -compare-5119-false       
        PushI        0                         
        Jump         -compare-5119-join        
        Label        -compare-5119-join        
        JumpTrue     -print-boolean-5120-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5120-join  
        Label        -print-boolean-5120-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5120-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5121-arg1        
        PushI        65                        
        Label        -compare-5121-arg2        
        PushI        17                        
        PushI        92                        
        Multiply                               
        Label        -compare-5121-sub         
        Subtract                               
        JumpFalse    -compare-5121-false       
        Jump         -compare-5121-true        
        Label        -compare-5121-true        
        PushI        1                         
        Jump         -compare-5121-join        
        Label        -compare-5121-false       
        PushI        0                         
        Jump         -compare-5121-join        
        Label        -compare-5121-join        
        JumpTrue     -print-boolean-5122-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5122-join  
        Label        -print-boolean-5122-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5122-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5123-arg1        
        PushI        49                        
        Label        -compare-5123-arg2        
        PushI        83                        
        PushI        34                        
        Multiply                               
        Label        -compare-5123-sub         
        Subtract                               
        JumpFalse    -compare-5123-false       
        Jump         -compare-5123-true        
        Label        -compare-5123-true        
        PushI        1                         
        Jump         -compare-5123-join        
        Label        -compare-5123-false       
        PushI        0                         
        Jump         -compare-5123-join        
        Label        -compare-5123-join        
        JumpTrue     -print-boolean-5124-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5124-join  
        Label        -print-boolean-5124-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5124-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5125-arg1        
        PushI        25                        
        Label        -compare-5125-arg2        
        PushI        44                        
        PushI        75                        
        Multiply                               
        Label        -compare-5125-sub         
        Subtract                               
        JumpFalse    -compare-5125-false       
        Jump         -compare-5125-true        
        Label        -compare-5125-true        
        PushI        1                         
        Jump         -compare-5125-join        
        Label        -compare-5125-false       
        PushI        0                         
        Jump         -compare-5125-join        
        Label        -compare-5125-join        
        JumpTrue     -print-boolean-5126-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5126-join  
        Label        -print-boolean-5126-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5126-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5127-arg1        
        PushI        86                        
        Label        -compare-5127-arg2        
        PushI        77                        
        PushI        32                        
        Multiply                               
        Label        -compare-5127-sub         
        Subtract                               
        JumpFalse    -compare-5127-false       
        Jump         -compare-5127-true        
        Label        -compare-5127-true        
        PushI        1                         
        Jump         -compare-5127-join        
        Label        -compare-5127-false       
        PushI        0                         
        Jump         -compare-5127-join        
        Label        -compare-5127-join        
        JumpTrue     -print-boolean-5128-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5128-join  
        Label        -print-boolean-5128-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5128-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5129-arg1        
        PushI        1                         
        Label        -compare-5129-arg2        
        PushI        90                        
        PushI        98                        
        Multiply                               
        Label        -compare-5129-sub         
        Subtract                               
        JumpFalse    -compare-5129-false       
        Jump         -compare-5129-true        
        Label        -compare-5129-true        
        PushI        1                         
        Jump         -compare-5129-join        
        Label        -compare-5129-false       
        PushI        0                         
        Jump         -compare-5129-join        
        Label        -compare-5129-join        
        JumpTrue     -print-boolean-5130-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5130-join  
        Label        -print-boolean-5130-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5130-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5131-arg1        
        PushI        63                        
        Label        -compare-5131-arg2        
        PushI        23                        
        PushI        27                        
        Multiply                               
        Label        -compare-5131-sub         
        Subtract                               
        JumpFalse    -compare-5131-false       
        Jump         -compare-5131-true        
        Label        -compare-5131-true        
        PushI        1                         
        Jump         -compare-5131-join        
        Label        -compare-5131-false       
        PushI        0                         
        Jump         -compare-5131-join        
        Label        -compare-5131-join        
        JumpTrue     -print-boolean-5132-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5132-join  
        Label        -print-boolean-5132-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5132-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5133-arg1        
        PushI        23                        
        Label        -compare-5133-arg2        
        PushI        43                        
        PushI        27                        
        Multiply                               
        Label        -compare-5133-sub         
        Subtract                               
        JumpFalse    -compare-5133-false       
        Jump         -compare-5133-true        
        Label        -compare-5133-true        
        PushI        1                         
        Jump         -compare-5133-join        
        Label        -compare-5133-false       
        PushI        0                         
        Jump         -compare-5133-join        
        Label        -compare-5133-join        
        JumpTrue     -print-boolean-5134-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5134-join  
        Label        -print-boolean-5134-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5134-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5135-arg1        
        PushI        15                        
        Label        -compare-5135-arg2        
        PushI        84                        
        PushI        64                        
        Multiply                               
        Label        -compare-5135-sub         
        Subtract                               
        JumpFalse    -compare-5135-false       
        Jump         -compare-5135-true        
        Label        -compare-5135-true        
        PushI        1                         
        Jump         -compare-5135-join        
        Label        -compare-5135-false       
        PushI        0                         
        Jump         -compare-5135-join        
        Label        -compare-5135-join        
        JumpTrue     -print-boolean-5136-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5136-join  
        Label        -print-boolean-5136-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5136-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5137-arg1        
        PushI        60                        
        PushI        47                        
        Multiply                               
        Label        -compare-5137-arg2        
        PushI        79                        
        PushI        57                        
        Multiply                               
        Label        -compare-5137-sub         
        Subtract                               
        JumpFalse    -compare-5137-false       
        Jump         -compare-5137-true        
        Label        -compare-5137-true        
        PushI        1                         
        Jump         -compare-5137-join        
        Label        -compare-5137-false       
        PushI        0                         
        Jump         -compare-5137-join        
        Label        -compare-5137-join        
        JumpTrue     -print-boolean-5138-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5138-join  
        Label        -print-boolean-5138-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5138-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5139-arg1        
        PushI        95                        
        PushI        61                        
        Multiply                               
        Label        -compare-5139-arg2        
        PushI        46                        
        PushI        3                         
        Multiply                               
        Label        -compare-5139-sub         
        Subtract                               
        JumpFalse    -compare-5139-false       
        Jump         -compare-5139-true        
        Label        -compare-5139-true        
        PushI        1                         
        Jump         -compare-5139-join        
        Label        -compare-5139-false       
        PushI        0                         
        Jump         -compare-5139-join        
        Label        -compare-5139-join        
        JumpTrue     -print-boolean-5140-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5140-join  
        Label        -print-boolean-5140-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5140-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5141-arg1        
        PushI        46                        
        PushI        74                        
        Multiply                               
        Label        -compare-5141-arg2        
        PushI        7                         
        PushI        70                        
        Multiply                               
        Label        -compare-5141-sub         
        Subtract                               
        JumpFalse    -compare-5141-false       
        Jump         -compare-5141-true        
        Label        -compare-5141-true        
        PushI        1                         
        Jump         -compare-5141-join        
        Label        -compare-5141-false       
        PushI        0                         
        Jump         -compare-5141-join        
        Label        -compare-5141-join        
        JumpTrue     -print-boolean-5142-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5142-join  
        Label        -print-boolean-5142-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5142-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5143-arg1        
        PushI        61                        
        PushI        7                         
        Multiply                               
        Label        -compare-5143-arg2        
        PushI        69                        
        PushI        84                        
        Multiply                               
        Label        -compare-5143-sub         
        Subtract                               
        JumpFalse    -compare-5143-false       
        Jump         -compare-5143-true        
        Label        -compare-5143-true        
        PushI        1                         
        Jump         -compare-5143-join        
        Label        -compare-5143-false       
        PushI        0                         
        Jump         -compare-5143-join        
        Label        -compare-5143-join        
        JumpTrue     -print-boolean-5144-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5144-join  
        Label        -print-boolean-5144-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5144-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5145-arg1        
        PushI        49                        
        PushI        68                        
        Multiply                               
        Label        -compare-5145-arg2        
        PushI        34                        
        PushI        32                        
        Multiply                               
        Label        -compare-5145-sub         
        Subtract                               
        JumpFalse    -compare-5145-false       
        Jump         -compare-5145-true        
        Label        -compare-5145-true        
        PushI        1                         
        Jump         -compare-5145-join        
        Label        -compare-5145-false       
        PushI        0                         
        Jump         -compare-5145-join        
        Label        -compare-5145-join        
        JumpTrue     -print-boolean-5146-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5146-join  
        Label        -print-boolean-5146-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5146-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5147-arg1        
        PushI        29                        
        PushI        94                        
        Multiply                               
        Label        -compare-5147-arg2        
        PushI        53                        
        PushI        76                        
        Multiply                               
        Label        -compare-5147-sub         
        Subtract                               
        JumpFalse    -compare-5147-false       
        Jump         -compare-5147-true        
        Label        -compare-5147-true        
        PushI        1                         
        Jump         -compare-5147-join        
        Label        -compare-5147-false       
        PushI        0                         
        Jump         -compare-5147-join        
        Label        -compare-5147-join        
        JumpTrue     -print-boolean-5148-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5148-join  
        Label        -print-boolean-5148-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5148-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5149-arg1        
        PushI        43                        
        PushI        79                        
        Multiply                               
        Label        -compare-5149-arg2        
        PushI        13                        
        PushI        80                        
        Multiply                               
        Label        -compare-5149-sub         
        Subtract                               
        JumpFalse    -compare-5149-false       
        Jump         -compare-5149-true        
        Label        -compare-5149-true        
        PushI        1                         
        Jump         -compare-5149-join        
        Label        -compare-5149-false       
        PushI        0                         
        Jump         -compare-5149-join        
        Label        -compare-5149-join        
        JumpTrue     -print-boolean-5150-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5150-join  
        Label        -print-boolean-5150-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5150-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5151-arg1        
        PushI        47                        
        PushI        45                        
        Multiply                               
        Label        -compare-5151-arg2        
        PushI        43                        
        PushI        81                        
        Multiply                               
        Label        -compare-5151-sub         
        Subtract                               
        JumpFalse    -compare-5151-false       
        Jump         -compare-5151-true        
        Label        -compare-5151-true        
        PushI        1                         
        Jump         -compare-5151-join        
        Label        -compare-5151-false       
        PushI        0                         
        Jump         -compare-5151-join        
        Label        -compare-5151-join        
        JumpTrue     -print-boolean-5152-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5152-join  
        Label        -print-boolean-5152-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5152-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5153-arg1        
        PushI        9                         
        PushI        10                        
        Multiply                               
        Label        -compare-5153-arg2        
        PushI        26                        
        PushI        37                        
        Multiply                               
        Label        -compare-5153-sub         
        Subtract                               
        JumpFalse    -compare-5153-false       
        Jump         -compare-5153-true        
        Label        -compare-5153-true        
        PushI        1                         
        Jump         -compare-5153-join        
        Label        -compare-5153-false       
        PushI        0                         
        Jump         -compare-5153-join        
        Label        -compare-5153-join        
        JumpTrue     -print-boolean-5154-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5154-join  
        Label        -print-boolean-5154-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5154-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5155-arg1        
        PushI        95                        
        PushI        64                        
        Multiply                               
        Label        -compare-5155-arg2        
        PushI        20                        
        PushI        6                         
        Multiply                               
        Label        -compare-5155-sub         
        Subtract                               
        JumpFalse    -compare-5155-false       
        Jump         -compare-5155-true        
        Label        -compare-5155-true        
        PushI        1                         
        Jump         -compare-5155-join        
        Label        -compare-5155-false       
        PushI        0                         
        Jump         -compare-5155-join        
        Label        -compare-5155-join        
        JumpTrue     -print-boolean-5156-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5156-join  
        Label        -print-boolean-5156-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5156-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5157-arg1        
        PushI        76                        
        PushI        7                         
        Multiply                               
        Label        -compare-5157-arg2        
        PushI        14                        
        PushI        95                        
        Multiply                               
        Label        -compare-5157-sub         
        Subtract                               
        JumpFalse    -compare-5157-false       
        Jump         -compare-5157-true        
        Label        -compare-5157-true        
        PushI        1                         
        Jump         -compare-5157-join        
        Label        -compare-5157-false       
        PushI        0                         
        Jump         -compare-5157-join        
        Label        -compare-5157-join        
        JumpTrue     -print-boolean-5158-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5158-join  
        Label        -print-boolean-5158-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5158-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5159-arg1        
        PushI        32                        
        PushI        9                         
        Multiply                               
        Label        -compare-5159-arg2        
        PushI        45                        
        PushI        47                        
        Multiply                               
        Label        -compare-5159-sub         
        Subtract                               
        JumpFalse    -compare-5159-false       
        Jump         -compare-5159-true        
        Label        -compare-5159-true        
        PushI        1                         
        Jump         -compare-5159-join        
        Label        -compare-5159-false       
        PushI        0                         
        Jump         -compare-5159-join        
        Label        -compare-5159-join        
        JumpTrue     -print-boolean-5160-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5160-join  
        Label        -print-boolean-5160-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5160-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
