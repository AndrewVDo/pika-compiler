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
        Label        -compare-6289-arg1        
        PushI        38                        
        PushI        82                        
        Subtract                               
        Label        -compare-6289-arg2        
        PushI        7                         
        Label        -compare-6289-sub         
        Subtract                               
        JumpFalse    -compare-6289-false       
        Jump         -compare-6289-true        
        Label        -compare-6289-true        
        PushI        1                         
        Jump         -compare-6289-join        
        Label        -compare-6289-false       
        PushI        0                         
        Jump         -compare-6289-join        
        Label        -compare-6289-join        
        JumpTrue     -print-boolean-6290-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6290-join  
        Label        -print-boolean-6290-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6290-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6291-arg1        
        PushI        9                         
        PushI        32                        
        Subtract                               
        Label        -compare-6291-arg2        
        PushI        35                        
        Label        -compare-6291-sub         
        Subtract                               
        JumpFalse    -compare-6291-false       
        Jump         -compare-6291-true        
        Label        -compare-6291-true        
        PushI        1                         
        Jump         -compare-6291-join        
        Label        -compare-6291-false       
        PushI        0                         
        Jump         -compare-6291-join        
        Label        -compare-6291-join        
        JumpTrue     -print-boolean-6292-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6292-join  
        Label        -print-boolean-6292-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6292-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6293-arg1        
        PushI        25                        
        PushI        31                        
        Subtract                               
        Label        -compare-6293-arg2        
        PushI        44                        
        Label        -compare-6293-sub         
        Subtract                               
        JumpFalse    -compare-6293-false       
        Jump         -compare-6293-true        
        Label        -compare-6293-true        
        PushI        1                         
        Jump         -compare-6293-join        
        Label        -compare-6293-false       
        PushI        0                         
        Jump         -compare-6293-join        
        Label        -compare-6293-join        
        JumpTrue     -print-boolean-6294-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6294-join  
        Label        -print-boolean-6294-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6294-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6295-arg1        
        PushI        96                        
        PushI        77                        
        Subtract                               
        Label        -compare-6295-arg2        
        PushI        30                        
        Label        -compare-6295-sub         
        Subtract                               
        JumpFalse    -compare-6295-false       
        Jump         -compare-6295-true        
        Label        -compare-6295-true        
        PushI        1                         
        Jump         -compare-6295-join        
        Label        -compare-6295-false       
        PushI        0                         
        Jump         -compare-6295-join        
        Label        -compare-6295-join        
        JumpTrue     -print-boolean-6296-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6296-join  
        Label        -print-boolean-6296-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6296-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6297-arg1        
        PushI        36                        
        PushI        20                        
        Subtract                               
        Label        -compare-6297-arg2        
        PushI        19                        
        Label        -compare-6297-sub         
        Subtract                               
        JumpFalse    -compare-6297-false       
        Jump         -compare-6297-true        
        Label        -compare-6297-true        
        PushI        1                         
        Jump         -compare-6297-join        
        Label        -compare-6297-false       
        PushI        0                         
        Jump         -compare-6297-join        
        Label        -compare-6297-join        
        JumpTrue     -print-boolean-6298-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6298-join  
        Label        -print-boolean-6298-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6298-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6299-arg1        
        PushI        26                        
        PushI        32                        
        Subtract                               
        Label        -compare-6299-arg2        
        PushI        88                        
        Label        -compare-6299-sub         
        Subtract                               
        JumpFalse    -compare-6299-false       
        Jump         -compare-6299-true        
        Label        -compare-6299-true        
        PushI        1                         
        Jump         -compare-6299-join        
        Label        -compare-6299-false       
        PushI        0                         
        Jump         -compare-6299-join        
        Label        -compare-6299-join        
        JumpTrue     -print-boolean-6300-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6300-join  
        Label        -print-boolean-6300-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6300-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6301-arg1        
        PushI        59                        
        PushI        41                        
        Subtract                               
        Label        -compare-6301-arg2        
        PushI        63                        
        Label        -compare-6301-sub         
        Subtract                               
        JumpFalse    -compare-6301-false       
        Jump         -compare-6301-true        
        Label        -compare-6301-true        
        PushI        1                         
        Jump         -compare-6301-join        
        Label        -compare-6301-false       
        PushI        0                         
        Jump         -compare-6301-join        
        Label        -compare-6301-join        
        JumpTrue     -print-boolean-6302-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6302-join  
        Label        -print-boolean-6302-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6302-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6303-arg1        
        PushI        88                        
        PushI        60                        
        Subtract                               
        Label        -compare-6303-arg2        
        PushI        29                        
        Label        -compare-6303-sub         
        Subtract                               
        JumpFalse    -compare-6303-false       
        Jump         -compare-6303-true        
        Label        -compare-6303-true        
        PushI        1                         
        Jump         -compare-6303-join        
        Label        -compare-6303-false       
        PushI        0                         
        Jump         -compare-6303-join        
        Label        -compare-6303-join        
        JumpTrue     -print-boolean-6304-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6304-join  
        Label        -print-boolean-6304-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6304-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6305-arg1        
        PushI        85                        
        PushI        55                        
        Subtract                               
        Label        -compare-6305-arg2        
        PushI        27                        
        Label        -compare-6305-sub         
        Subtract                               
        JumpFalse    -compare-6305-false       
        Jump         -compare-6305-true        
        Label        -compare-6305-true        
        PushI        1                         
        Jump         -compare-6305-join        
        Label        -compare-6305-false       
        PushI        0                         
        Jump         -compare-6305-join        
        Label        -compare-6305-join        
        JumpTrue     -print-boolean-6306-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6306-join  
        Label        -print-boolean-6306-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6306-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6307-arg1        
        PushI        68                        
        PushI        30                        
        Subtract                               
        Label        -compare-6307-arg2        
        PushI        28                        
        Label        -compare-6307-sub         
        Subtract                               
        JumpFalse    -compare-6307-false       
        Jump         -compare-6307-true        
        Label        -compare-6307-true        
        PushI        1                         
        Jump         -compare-6307-join        
        Label        -compare-6307-false       
        PushI        0                         
        Jump         -compare-6307-join        
        Label        -compare-6307-join        
        JumpTrue     -print-boolean-6308-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6308-join  
        Label        -print-boolean-6308-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6308-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6309-arg1        
        PushI        26                        
        PushI        94                        
        Subtract                               
        Label        -compare-6309-arg2        
        PushI        73                        
        Label        -compare-6309-sub         
        Subtract                               
        JumpFalse    -compare-6309-false       
        Jump         -compare-6309-true        
        Label        -compare-6309-true        
        PushI        1                         
        Jump         -compare-6309-join        
        Label        -compare-6309-false       
        PushI        0                         
        Jump         -compare-6309-join        
        Label        -compare-6309-join        
        JumpTrue     -print-boolean-6310-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6310-join  
        Label        -print-boolean-6310-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6310-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6311-arg1        
        PushI        94                        
        PushI        5                         
        Subtract                               
        Label        -compare-6311-arg2        
        PushI        25                        
        Label        -compare-6311-sub         
        Subtract                               
        JumpFalse    -compare-6311-false       
        Jump         -compare-6311-true        
        Label        -compare-6311-true        
        PushI        1                         
        Jump         -compare-6311-join        
        Label        -compare-6311-false       
        PushI        0                         
        Jump         -compare-6311-join        
        Label        -compare-6311-join        
        JumpTrue     -print-boolean-6312-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6312-join  
        Label        -print-boolean-6312-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6312-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6313-arg1        
        PushI        70                        
        Label        -compare-6313-arg2        
        PushI        64                        
        PushI        38                        
        Subtract                               
        Label        -compare-6313-sub         
        Subtract                               
        JumpFalse    -compare-6313-false       
        Jump         -compare-6313-true        
        Label        -compare-6313-true        
        PushI        1                         
        Jump         -compare-6313-join        
        Label        -compare-6313-false       
        PushI        0                         
        Jump         -compare-6313-join        
        Label        -compare-6313-join        
        JumpTrue     -print-boolean-6314-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6314-join  
        Label        -print-boolean-6314-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6314-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6315-arg1        
        PushI        75                        
        Label        -compare-6315-arg2        
        PushI        69                        
        PushI        25                        
        Subtract                               
        Label        -compare-6315-sub         
        Subtract                               
        JumpFalse    -compare-6315-false       
        Jump         -compare-6315-true        
        Label        -compare-6315-true        
        PushI        1                         
        Jump         -compare-6315-join        
        Label        -compare-6315-false       
        PushI        0                         
        Jump         -compare-6315-join        
        Label        -compare-6315-join        
        JumpTrue     -print-boolean-6316-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6316-join  
        Label        -print-boolean-6316-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6316-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6317-arg1        
        PushI        41                        
        Label        -compare-6317-arg2        
        PushI        26                        
        PushI        8                         
        Subtract                               
        Label        -compare-6317-sub         
        Subtract                               
        JumpFalse    -compare-6317-false       
        Jump         -compare-6317-true        
        Label        -compare-6317-true        
        PushI        1                         
        Jump         -compare-6317-join        
        Label        -compare-6317-false       
        PushI        0                         
        Jump         -compare-6317-join        
        Label        -compare-6317-join        
        JumpTrue     -print-boolean-6318-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6318-join  
        Label        -print-boolean-6318-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6318-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6319-arg1        
        PushI        99                        
        Label        -compare-6319-arg2        
        PushI        2                         
        PushI        40                        
        Subtract                               
        Label        -compare-6319-sub         
        Subtract                               
        JumpFalse    -compare-6319-false       
        Jump         -compare-6319-true        
        Label        -compare-6319-true        
        PushI        1                         
        Jump         -compare-6319-join        
        Label        -compare-6319-false       
        PushI        0                         
        Jump         -compare-6319-join        
        Label        -compare-6319-join        
        JumpTrue     -print-boolean-6320-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6320-join  
        Label        -print-boolean-6320-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6320-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6321-arg1        
        PushI        40                        
        Label        -compare-6321-arg2        
        PushI        22                        
        PushI        99                        
        Subtract                               
        Label        -compare-6321-sub         
        Subtract                               
        JumpFalse    -compare-6321-false       
        Jump         -compare-6321-true        
        Label        -compare-6321-true        
        PushI        1                         
        Jump         -compare-6321-join        
        Label        -compare-6321-false       
        PushI        0                         
        Jump         -compare-6321-join        
        Label        -compare-6321-join        
        JumpTrue     -print-boolean-6322-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6322-join  
        Label        -print-boolean-6322-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6322-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6323-arg1        
        PushI        85                        
        Label        -compare-6323-arg2        
        PushI        1                         
        PushI        81                        
        Subtract                               
        Label        -compare-6323-sub         
        Subtract                               
        JumpFalse    -compare-6323-false       
        Jump         -compare-6323-true        
        Label        -compare-6323-true        
        PushI        1                         
        Jump         -compare-6323-join        
        Label        -compare-6323-false       
        PushI        0                         
        Jump         -compare-6323-join        
        Label        -compare-6323-join        
        JumpTrue     -print-boolean-6324-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6324-join  
        Label        -print-boolean-6324-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6324-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6325-arg1        
        PushI        58                        
        Label        -compare-6325-arg2        
        PushI        34                        
        PushI        24                        
        Subtract                               
        Label        -compare-6325-sub         
        Subtract                               
        JumpFalse    -compare-6325-false       
        Jump         -compare-6325-true        
        Label        -compare-6325-true        
        PushI        1                         
        Jump         -compare-6325-join        
        Label        -compare-6325-false       
        PushI        0                         
        Jump         -compare-6325-join        
        Label        -compare-6325-join        
        JumpTrue     -print-boolean-6326-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6326-join  
        Label        -print-boolean-6326-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6326-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6327-arg1        
        PushI        89                        
        Label        -compare-6327-arg2        
        PushI        69                        
        PushI        85                        
        Subtract                               
        Label        -compare-6327-sub         
        Subtract                               
        JumpFalse    -compare-6327-false       
        Jump         -compare-6327-true        
        Label        -compare-6327-true        
        PushI        1                         
        Jump         -compare-6327-join        
        Label        -compare-6327-false       
        PushI        0                         
        Jump         -compare-6327-join        
        Label        -compare-6327-join        
        JumpTrue     -print-boolean-6328-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6328-join  
        Label        -print-boolean-6328-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6328-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6329-arg1        
        PushI        82                        
        Label        -compare-6329-arg2        
        PushI        45                        
        PushI        84                        
        Subtract                               
        Label        -compare-6329-sub         
        Subtract                               
        JumpFalse    -compare-6329-false       
        Jump         -compare-6329-true        
        Label        -compare-6329-true        
        PushI        1                         
        Jump         -compare-6329-join        
        Label        -compare-6329-false       
        PushI        0                         
        Jump         -compare-6329-join        
        Label        -compare-6329-join        
        JumpTrue     -print-boolean-6330-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6330-join  
        Label        -print-boolean-6330-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6330-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6331-arg1        
        PushI        96                        
        Label        -compare-6331-arg2        
        PushI        18                        
        PushI        14                        
        Subtract                               
        Label        -compare-6331-sub         
        Subtract                               
        JumpFalse    -compare-6331-false       
        Jump         -compare-6331-true        
        Label        -compare-6331-true        
        PushI        1                         
        Jump         -compare-6331-join        
        Label        -compare-6331-false       
        PushI        0                         
        Jump         -compare-6331-join        
        Label        -compare-6331-join        
        JumpTrue     -print-boolean-6332-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6332-join  
        Label        -print-boolean-6332-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6332-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6333-arg1        
        PushI        25                        
        Label        -compare-6333-arg2        
        PushI        32                        
        PushI        88                        
        Subtract                               
        Label        -compare-6333-sub         
        Subtract                               
        JumpFalse    -compare-6333-false       
        Jump         -compare-6333-true        
        Label        -compare-6333-true        
        PushI        1                         
        Jump         -compare-6333-join        
        Label        -compare-6333-false       
        PushI        0                         
        Jump         -compare-6333-join        
        Label        -compare-6333-join        
        JumpTrue     -print-boolean-6334-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6334-join  
        Label        -print-boolean-6334-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6334-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6335-arg1        
        PushI        82                        
        Label        -compare-6335-arg2        
        PushI        76                        
        PushI        26                        
        Subtract                               
        Label        -compare-6335-sub         
        Subtract                               
        JumpFalse    -compare-6335-false       
        Jump         -compare-6335-true        
        Label        -compare-6335-true        
        PushI        1                         
        Jump         -compare-6335-join        
        Label        -compare-6335-false       
        PushI        0                         
        Jump         -compare-6335-join        
        Label        -compare-6335-join        
        JumpTrue     -print-boolean-6336-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6336-join  
        Label        -print-boolean-6336-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6336-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6337-arg1        
        PushI        51                        
        PushI        92                        
        Subtract                               
        Label        -compare-6337-arg2        
        PushI        38                        
        PushI        12                        
        Subtract                               
        Label        -compare-6337-sub         
        Subtract                               
        JumpFalse    -compare-6337-false       
        Jump         -compare-6337-true        
        Label        -compare-6337-true        
        PushI        1                         
        Jump         -compare-6337-join        
        Label        -compare-6337-false       
        PushI        0                         
        Jump         -compare-6337-join        
        Label        -compare-6337-join        
        JumpTrue     -print-boolean-6338-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6338-join  
        Label        -print-boolean-6338-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6338-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6339-arg1        
        PushI        22                        
        PushI        68                        
        Subtract                               
        Label        -compare-6339-arg2        
        PushI        90                        
        PushI        92                        
        Subtract                               
        Label        -compare-6339-sub         
        Subtract                               
        JumpFalse    -compare-6339-false       
        Jump         -compare-6339-true        
        Label        -compare-6339-true        
        PushI        1                         
        Jump         -compare-6339-join        
        Label        -compare-6339-false       
        PushI        0                         
        Jump         -compare-6339-join        
        Label        -compare-6339-join        
        JumpTrue     -print-boolean-6340-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6340-join  
        Label        -print-boolean-6340-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6340-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6341-arg1        
        PushI        11                        
        PushI        45                        
        Subtract                               
        Label        -compare-6341-arg2        
        PushI        42                        
        PushI        53                        
        Subtract                               
        Label        -compare-6341-sub         
        Subtract                               
        JumpFalse    -compare-6341-false       
        Jump         -compare-6341-true        
        Label        -compare-6341-true        
        PushI        1                         
        Jump         -compare-6341-join        
        Label        -compare-6341-false       
        PushI        0                         
        Jump         -compare-6341-join        
        Label        -compare-6341-join        
        JumpTrue     -print-boolean-6342-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6342-join  
        Label        -print-boolean-6342-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6342-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6343-arg1        
        PushI        99                        
        PushI        94                        
        Subtract                               
        Label        -compare-6343-arg2        
        PushI        45                        
        PushI        68                        
        Subtract                               
        Label        -compare-6343-sub         
        Subtract                               
        JumpFalse    -compare-6343-false       
        Jump         -compare-6343-true        
        Label        -compare-6343-true        
        PushI        1                         
        Jump         -compare-6343-join        
        Label        -compare-6343-false       
        PushI        0                         
        Jump         -compare-6343-join        
        Label        -compare-6343-join        
        JumpTrue     -print-boolean-6344-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6344-join  
        Label        -print-boolean-6344-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6344-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6345-arg1        
        PushI        1                         
        PushI        38                        
        Subtract                               
        Label        -compare-6345-arg2        
        PushI        57                        
        PushI        33                        
        Subtract                               
        Label        -compare-6345-sub         
        Subtract                               
        JumpFalse    -compare-6345-false       
        Jump         -compare-6345-true        
        Label        -compare-6345-true        
        PushI        1                         
        Jump         -compare-6345-join        
        Label        -compare-6345-false       
        PushI        0                         
        Jump         -compare-6345-join        
        Label        -compare-6345-join        
        JumpTrue     -print-boolean-6346-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6346-join  
        Label        -print-boolean-6346-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6346-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6347-arg1        
        PushI        70                        
        PushI        96                        
        Subtract                               
        Label        -compare-6347-arg2        
        PushI        81                        
        PushI        37                        
        Subtract                               
        Label        -compare-6347-sub         
        Subtract                               
        JumpFalse    -compare-6347-false       
        Jump         -compare-6347-true        
        Label        -compare-6347-true        
        PushI        1                         
        Jump         -compare-6347-join        
        Label        -compare-6347-false       
        PushI        0                         
        Jump         -compare-6347-join        
        Label        -compare-6347-join        
        JumpTrue     -print-boolean-6348-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6348-join  
        Label        -print-boolean-6348-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6348-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6349-arg1        
        PushI        33                        
        PushI        10                        
        Subtract                               
        Label        -compare-6349-arg2        
        PushI        95                        
        PushI        21                        
        Subtract                               
        Label        -compare-6349-sub         
        Subtract                               
        JumpFalse    -compare-6349-false       
        Jump         -compare-6349-true        
        Label        -compare-6349-true        
        PushI        1                         
        Jump         -compare-6349-join        
        Label        -compare-6349-false       
        PushI        0                         
        Jump         -compare-6349-join        
        Label        -compare-6349-join        
        JumpTrue     -print-boolean-6350-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6350-join  
        Label        -print-boolean-6350-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6350-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6351-arg1        
        PushI        81                        
        PushI        76                        
        Subtract                               
        Label        -compare-6351-arg2        
        PushI        50                        
        PushI        95                        
        Subtract                               
        Label        -compare-6351-sub         
        Subtract                               
        JumpFalse    -compare-6351-false       
        Jump         -compare-6351-true        
        Label        -compare-6351-true        
        PushI        1                         
        Jump         -compare-6351-join        
        Label        -compare-6351-false       
        PushI        0                         
        Jump         -compare-6351-join        
        Label        -compare-6351-join        
        JumpTrue     -print-boolean-6352-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6352-join  
        Label        -print-boolean-6352-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6352-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6353-arg1        
        PushI        74                        
        PushI        72                        
        Subtract                               
        Label        -compare-6353-arg2        
        PushI        43                        
        PushI        80                        
        Subtract                               
        Label        -compare-6353-sub         
        Subtract                               
        JumpFalse    -compare-6353-false       
        Jump         -compare-6353-true        
        Label        -compare-6353-true        
        PushI        1                         
        Jump         -compare-6353-join        
        Label        -compare-6353-false       
        PushI        0                         
        Jump         -compare-6353-join        
        Label        -compare-6353-join        
        JumpTrue     -print-boolean-6354-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6354-join  
        Label        -print-boolean-6354-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6354-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6355-arg1        
        PushI        97                        
        PushI        19                        
        Subtract                               
        Label        -compare-6355-arg2        
        PushI        19                        
        PushI        89                        
        Subtract                               
        Label        -compare-6355-sub         
        Subtract                               
        JumpFalse    -compare-6355-false       
        Jump         -compare-6355-true        
        Label        -compare-6355-true        
        PushI        1                         
        Jump         -compare-6355-join        
        Label        -compare-6355-false       
        PushI        0                         
        Jump         -compare-6355-join        
        Label        -compare-6355-join        
        JumpTrue     -print-boolean-6356-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6356-join  
        Label        -print-boolean-6356-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6356-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6357-arg1        
        PushI        73                        
        PushI        88                        
        Subtract                               
        Label        -compare-6357-arg2        
        PushI        13                        
        PushI        37                        
        Subtract                               
        Label        -compare-6357-sub         
        Subtract                               
        JumpFalse    -compare-6357-false       
        Jump         -compare-6357-true        
        Label        -compare-6357-true        
        PushI        1                         
        Jump         -compare-6357-join        
        Label        -compare-6357-false       
        PushI        0                         
        Jump         -compare-6357-join        
        Label        -compare-6357-join        
        JumpTrue     -print-boolean-6358-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6358-join  
        Label        -print-boolean-6358-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6358-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6359-arg1        
        PushI        19                        
        PushI        25                        
        Subtract                               
        Label        -compare-6359-arg2        
        PushI        67                        
        PushI        63                        
        Subtract                               
        Label        -compare-6359-sub         
        Subtract                               
        JumpFalse    -compare-6359-false       
        Jump         -compare-6359-true        
        Label        -compare-6359-true        
        PushI        1                         
        Jump         -compare-6359-join        
        Label        -compare-6359-false       
        PushI        0                         
        Jump         -compare-6359-join        
        Label        -compare-6359-join        
        JumpTrue     -print-boolean-6360-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6360-join  
        Label        -print-boolean-6360-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6360-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
