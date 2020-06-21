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
        Label        -compare-6302-arg1        
        PushI        38                        
        PushI        82                        
        Subtract                               
        Label        -compare-6302-arg2        
        PushI        7                         
        Label        -compare-6302-sub         
        Subtract                               
        JumpFalse    -compare-6302-false       
        Jump         -compare-6302-true        
        Label        -compare-6302-true        
        PushI        1                         
        Jump         -compare-6302-join        
        Label        -compare-6302-false       
        PushI        0                         
        Jump         -compare-6302-join        
        Label        -compare-6302-join        
        JumpTrue     -print-boolean-6303-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6303-join  
        Label        -print-boolean-6303-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6303-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6304-arg1        
        PushI        9                         
        PushI        32                        
        Subtract                               
        Label        -compare-6304-arg2        
        PushI        35                        
        Label        -compare-6304-sub         
        Subtract                               
        JumpFalse    -compare-6304-false       
        Jump         -compare-6304-true        
        Label        -compare-6304-true        
        PushI        1                         
        Jump         -compare-6304-join        
        Label        -compare-6304-false       
        PushI        0                         
        Jump         -compare-6304-join        
        Label        -compare-6304-join        
        JumpTrue     -print-boolean-6305-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6305-join  
        Label        -print-boolean-6305-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6305-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6306-arg1        
        PushI        25                        
        PushI        31                        
        Subtract                               
        Label        -compare-6306-arg2        
        PushI        44                        
        Label        -compare-6306-sub         
        Subtract                               
        JumpFalse    -compare-6306-false       
        Jump         -compare-6306-true        
        Label        -compare-6306-true        
        PushI        1                         
        Jump         -compare-6306-join        
        Label        -compare-6306-false       
        PushI        0                         
        Jump         -compare-6306-join        
        Label        -compare-6306-join        
        JumpTrue     -print-boolean-6307-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6307-join  
        Label        -print-boolean-6307-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6307-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6308-arg1        
        PushI        96                        
        PushI        77                        
        Subtract                               
        Label        -compare-6308-arg2        
        PushI        30                        
        Label        -compare-6308-sub         
        Subtract                               
        JumpFalse    -compare-6308-false       
        Jump         -compare-6308-true        
        Label        -compare-6308-true        
        PushI        1                         
        Jump         -compare-6308-join        
        Label        -compare-6308-false       
        PushI        0                         
        Jump         -compare-6308-join        
        Label        -compare-6308-join        
        JumpTrue     -print-boolean-6309-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6309-join  
        Label        -print-boolean-6309-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6309-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6310-arg1        
        PushI        36                        
        PushI        20                        
        Subtract                               
        Label        -compare-6310-arg2        
        PushI        19                        
        Label        -compare-6310-sub         
        Subtract                               
        JumpFalse    -compare-6310-false       
        Jump         -compare-6310-true        
        Label        -compare-6310-true        
        PushI        1                         
        Jump         -compare-6310-join        
        Label        -compare-6310-false       
        PushI        0                         
        Jump         -compare-6310-join        
        Label        -compare-6310-join        
        JumpTrue     -print-boolean-6311-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6311-join  
        Label        -print-boolean-6311-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6311-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6312-arg1        
        PushI        26                        
        PushI        32                        
        Subtract                               
        Label        -compare-6312-arg2        
        PushI        88                        
        Label        -compare-6312-sub         
        Subtract                               
        JumpFalse    -compare-6312-false       
        Jump         -compare-6312-true        
        Label        -compare-6312-true        
        PushI        1                         
        Jump         -compare-6312-join        
        Label        -compare-6312-false       
        PushI        0                         
        Jump         -compare-6312-join        
        Label        -compare-6312-join        
        JumpTrue     -print-boolean-6313-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6313-join  
        Label        -print-boolean-6313-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6313-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6314-arg1        
        PushI        59                        
        PushI        41                        
        Subtract                               
        Label        -compare-6314-arg2        
        PushI        63                        
        Label        -compare-6314-sub         
        Subtract                               
        JumpFalse    -compare-6314-false       
        Jump         -compare-6314-true        
        Label        -compare-6314-true        
        PushI        1                         
        Jump         -compare-6314-join        
        Label        -compare-6314-false       
        PushI        0                         
        Jump         -compare-6314-join        
        Label        -compare-6314-join        
        JumpTrue     -print-boolean-6315-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6315-join  
        Label        -print-boolean-6315-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6315-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6316-arg1        
        PushI        88                        
        PushI        60                        
        Subtract                               
        Label        -compare-6316-arg2        
        PushI        29                        
        Label        -compare-6316-sub         
        Subtract                               
        JumpFalse    -compare-6316-false       
        Jump         -compare-6316-true        
        Label        -compare-6316-true        
        PushI        1                         
        Jump         -compare-6316-join        
        Label        -compare-6316-false       
        PushI        0                         
        Jump         -compare-6316-join        
        Label        -compare-6316-join        
        JumpTrue     -print-boolean-6317-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6317-join  
        Label        -print-boolean-6317-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6317-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6318-arg1        
        PushI        85                        
        PushI        55                        
        Subtract                               
        Label        -compare-6318-arg2        
        PushI        27                        
        Label        -compare-6318-sub         
        Subtract                               
        JumpFalse    -compare-6318-false       
        Jump         -compare-6318-true        
        Label        -compare-6318-true        
        PushI        1                         
        Jump         -compare-6318-join        
        Label        -compare-6318-false       
        PushI        0                         
        Jump         -compare-6318-join        
        Label        -compare-6318-join        
        JumpTrue     -print-boolean-6319-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6319-join  
        Label        -print-boolean-6319-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6319-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6320-arg1        
        PushI        68                        
        PushI        30                        
        Subtract                               
        Label        -compare-6320-arg2        
        PushI        28                        
        Label        -compare-6320-sub         
        Subtract                               
        JumpFalse    -compare-6320-false       
        Jump         -compare-6320-true        
        Label        -compare-6320-true        
        PushI        1                         
        Jump         -compare-6320-join        
        Label        -compare-6320-false       
        PushI        0                         
        Jump         -compare-6320-join        
        Label        -compare-6320-join        
        JumpTrue     -print-boolean-6321-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6321-join  
        Label        -print-boolean-6321-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6321-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6322-arg1        
        PushI        26                        
        PushI        94                        
        Subtract                               
        Label        -compare-6322-arg2        
        PushI        73                        
        Label        -compare-6322-sub         
        Subtract                               
        JumpFalse    -compare-6322-false       
        Jump         -compare-6322-true        
        Label        -compare-6322-true        
        PushI        1                         
        Jump         -compare-6322-join        
        Label        -compare-6322-false       
        PushI        0                         
        Jump         -compare-6322-join        
        Label        -compare-6322-join        
        JumpTrue     -print-boolean-6323-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6323-join  
        Label        -print-boolean-6323-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6323-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6324-arg1        
        PushI        94                        
        PushI        5                         
        Subtract                               
        Label        -compare-6324-arg2        
        PushI        25                        
        Label        -compare-6324-sub         
        Subtract                               
        JumpFalse    -compare-6324-false       
        Jump         -compare-6324-true        
        Label        -compare-6324-true        
        PushI        1                         
        Jump         -compare-6324-join        
        Label        -compare-6324-false       
        PushI        0                         
        Jump         -compare-6324-join        
        Label        -compare-6324-join        
        JumpTrue     -print-boolean-6325-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6325-join  
        Label        -print-boolean-6325-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6325-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6326-arg1        
        PushI        70                        
        Label        -compare-6326-arg2        
        PushI        64                        
        PushI        38                        
        Subtract                               
        Label        -compare-6326-sub         
        Subtract                               
        JumpFalse    -compare-6326-false       
        Jump         -compare-6326-true        
        Label        -compare-6326-true        
        PushI        1                         
        Jump         -compare-6326-join        
        Label        -compare-6326-false       
        PushI        0                         
        Jump         -compare-6326-join        
        Label        -compare-6326-join        
        JumpTrue     -print-boolean-6327-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6327-join  
        Label        -print-boolean-6327-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6327-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6328-arg1        
        PushI        75                        
        Label        -compare-6328-arg2        
        PushI        69                        
        PushI        25                        
        Subtract                               
        Label        -compare-6328-sub         
        Subtract                               
        JumpFalse    -compare-6328-false       
        Jump         -compare-6328-true        
        Label        -compare-6328-true        
        PushI        1                         
        Jump         -compare-6328-join        
        Label        -compare-6328-false       
        PushI        0                         
        Jump         -compare-6328-join        
        Label        -compare-6328-join        
        JumpTrue     -print-boolean-6329-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6329-join  
        Label        -print-boolean-6329-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6329-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6330-arg1        
        PushI        41                        
        Label        -compare-6330-arg2        
        PushI        26                        
        PushI        8                         
        Subtract                               
        Label        -compare-6330-sub         
        Subtract                               
        JumpFalse    -compare-6330-false       
        Jump         -compare-6330-true        
        Label        -compare-6330-true        
        PushI        1                         
        Jump         -compare-6330-join        
        Label        -compare-6330-false       
        PushI        0                         
        Jump         -compare-6330-join        
        Label        -compare-6330-join        
        JumpTrue     -print-boolean-6331-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6331-join  
        Label        -print-boolean-6331-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6331-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6332-arg1        
        PushI        99                        
        Label        -compare-6332-arg2        
        PushI        2                         
        PushI        40                        
        Subtract                               
        Label        -compare-6332-sub         
        Subtract                               
        JumpFalse    -compare-6332-false       
        Jump         -compare-6332-true        
        Label        -compare-6332-true        
        PushI        1                         
        Jump         -compare-6332-join        
        Label        -compare-6332-false       
        PushI        0                         
        Jump         -compare-6332-join        
        Label        -compare-6332-join        
        JumpTrue     -print-boolean-6333-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6333-join  
        Label        -print-boolean-6333-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6333-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6334-arg1        
        PushI        40                        
        Label        -compare-6334-arg2        
        PushI        22                        
        PushI        99                        
        Subtract                               
        Label        -compare-6334-sub         
        Subtract                               
        JumpFalse    -compare-6334-false       
        Jump         -compare-6334-true        
        Label        -compare-6334-true        
        PushI        1                         
        Jump         -compare-6334-join        
        Label        -compare-6334-false       
        PushI        0                         
        Jump         -compare-6334-join        
        Label        -compare-6334-join        
        JumpTrue     -print-boolean-6335-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6335-join  
        Label        -print-boolean-6335-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6335-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6336-arg1        
        PushI        85                        
        Label        -compare-6336-arg2        
        PushI        1                         
        PushI        81                        
        Subtract                               
        Label        -compare-6336-sub         
        Subtract                               
        JumpFalse    -compare-6336-false       
        Jump         -compare-6336-true        
        Label        -compare-6336-true        
        PushI        1                         
        Jump         -compare-6336-join        
        Label        -compare-6336-false       
        PushI        0                         
        Jump         -compare-6336-join        
        Label        -compare-6336-join        
        JumpTrue     -print-boolean-6337-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6337-join  
        Label        -print-boolean-6337-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6337-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6338-arg1        
        PushI        58                        
        Label        -compare-6338-arg2        
        PushI        34                        
        PushI        24                        
        Subtract                               
        Label        -compare-6338-sub         
        Subtract                               
        JumpFalse    -compare-6338-false       
        Jump         -compare-6338-true        
        Label        -compare-6338-true        
        PushI        1                         
        Jump         -compare-6338-join        
        Label        -compare-6338-false       
        PushI        0                         
        Jump         -compare-6338-join        
        Label        -compare-6338-join        
        JumpTrue     -print-boolean-6339-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6339-join  
        Label        -print-boolean-6339-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6339-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6340-arg1        
        PushI        89                        
        Label        -compare-6340-arg2        
        PushI        69                        
        PushI        85                        
        Subtract                               
        Label        -compare-6340-sub         
        Subtract                               
        JumpFalse    -compare-6340-false       
        Jump         -compare-6340-true        
        Label        -compare-6340-true        
        PushI        1                         
        Jump         -compare-6340-join        
        Label        -compare-6340-false       
        PushI        0                         
        Jump         -compare-6340-join        
        Label        -compare-6340-join        
        JumpTrue     -print-boolean-6341-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6341-join  
        Label        -print-boolean-6341-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6341-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6342-arg1        
        PushI        82                        
        Label        -compare-6342-arg2        
        PushI        45                        
        PushI        84                        
        Subtract                               
        Label        -compare-6342-sub         
        Subtract                               
        JumpFalse    -compare-6342-false       
        Jump         -compare-6342-true        
        Label        -compare-6342-true        
        PushI        1                         
        Jump         -compare-6342-join        
        Label        -compare-6342-false       
        PushI        0                         
        Jump         -compare-6342-join        
        Label        -compare-6342-join        
        JumpTrue     -print-boolean-6343-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6343-join  
        Label        -print-boolean-6343-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6343-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6344-arg1        
        PushI        96                        
        Label        -compare-6344-arg2        
        PushI        18                        
        PushI        14                        
        Subtract                               
        Label        -compare-6344-sub         
        Subtract                               
        JumpFalse    -compare-6344-false       
        Jump         -compare-6344-true        
        Label        -compare-6344-true        
        PushI        1                         
        Jump         -compare-6344-join        
        Label        -compare-6344-false       
        PushI        0                         
        Jump         -compare-6344-join        
        Label        -compare-6344-join        
        JumpTrue     -print-boolean-6345-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6345-join  
        Label        -print-boolean-6345-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6345-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6346-arg1        
        PushI        25                        
        Label        -compare-6346-arg2        
        PushI        32                        
        PushI        88                        
        Subtract                               
        Label        -compare-6346-sub         
        Subtract                               
        JumpFalse    -compare-6346-false       
        Jump         -compare-6346-true        
        Label        -compare-6346-true        
        PushI        1                         
        Jump         -compare-6346-join        
        Label        -compare-6346-false       
        PushI        0                         
        Jump         -compare-6346-join        
        Label        -compare-6346-join        
        JumpTrue     -print-boolean-6347-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6347-join  
        Label        -print-boolean-6347-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6347-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6348-arg1        
        PushI        82                        
        Label        -compare-6348-arg2        
        PushI        76                        
        PushI        26                        
        Subtract                               
        Label        -compare-6348-sub         
        Subtract                               
        JumpFalse    -compare-6348-false       
        Jump         -compare-6348-true        
        Label        -compare-6348-true        
        PushI        1                         
        Jump         -compare-6348-join        
        Label        -compare-6348-false       
        PushI        0                         
        Jump         -compare-6348-join        
        Label        -compare-6348-join        
        JumpTrue     -print-boolean-6349-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6349-join  
        Label        -print-boolean-6349-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6349-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6350-arg1        
        PushI        51                        
        PushI        92                        
        Subtract                               
        Label        -compare-6350-arg2        
        PushI        38                        
        PushI        12                        
        Subtract                               
        Label        -compare-6350-sub         
        Subtract                               
        JumpFalse    -compare-6350-false       
        Jump         -compare-6350-true        
        Label        -compare-6350-true        
        PushI        1                         
        Jump         -compare-6350-join        
        Label        -compare-6350-false       
        PushI        0                         
        Jump         -compare-6350-join        
        Label        -compare-6350-join        
        JumpTrue     -print-boolean-6351-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6351-join  
        Label        -print-boolean-6351-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6351-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6352-arg1        
        PushI        22                        
        PushI        68                        
        Subtract                               
        Label        -compare-6352-arg2        
        PushI        90                        
        PushI        92                        
        Subtract                               
        Label        -compare-6352-sub         
        Subtract                               
        JumpFalse    -compare-6352-false       
        Jump         -compare-6352-true        
        Label        -compare-6352-true        
        PushI        1                         
        Jump         -compare-6352-join        
        Label        -compare-6352-false       
        PushI        0                         
        Jump         -compare-6352-join        
        Label        -compare-6352-join        
        JumpTrue     -print-boolean-6353-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6353-join  
        Label        -print-boolean-6353-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6353-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6354-arg1        
        PushI        11                        
        PushI        45                        
        Subtract                               
        Label        -compare-6354-arg2        
        PushI        42                        
        PushI        53                        
        Subtract                               
        Label        -compare-6354-sub         
        Subtract                               
        JumpFalse    -compare-6354-false       
        Jump         -compare-6354-true        
        Label        -compare-6354-true        
        PushI        1                         
        Jump         -compare-6354-join        
        Label        -compare-6354-false       
        PushI        0                         
        Jump         -compare-6354-join        
        Label        -compare-6354-join        
        JumpTrue     -print-boolean-6355-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6355-join  
        Label        -print-boolean-6355-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6355-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6356-arg1        
        PushI        99                        
        PushI        94                        
        Subtract                               
        Label        -compare-6356-arg2        
        PushI        45                        
        PushI        68                        
        Subtract                               
        Label        -compare-6356-sub         
        Subtract                               
        JumpFalse    -compare-6356-false       
        Jump         -compare-6356-true        
        Label        -compare-6356-true        
        PushI        1                         
        Jump         -compare-6356-join        
        Label        -compare-6356-false       
        PushI        0                         
        Jump         -compare-6356-join        
        Label        -compare-6356-join        
        JumpTrue     -print-boolean-6357-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6357-join  
        Label        -print-boolean-6357-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6357-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6358-arg1        
        PushI        1                         
        PushI        38                        
        Subtract                               
        Label        -compare-6358-arg2        
        PushI        57                        
        PushI        33                        
        Subtract                               
        Label        -compare-6358-sub         
        Subtract                               
        JumpFalse    -compare-6358-false       
        Jump         -compare-6358-true        
        Label        -compare-6358-true        
        PushI        1                         
        Jump         -compare-6358-join        
        Label        -compare-6358-false       
        PushI        0                         
        Jump         -compare-6358-join        
        Label        -compare-6358-join        
        JumpTrue     -print-boolean-6359-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6359-join  
        Label        -print-boolean-6359-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6359-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6360-arg1        
        PushI        70                        
        PushI        96                        
        Subtract                               
        Label        -compare-6360-arg2        
        PushI        81                        
        PushI        37                        
        Subtract                               
        Label        -compare-6360-sub         
        Subtract                               
        JumpFalse    -compare-6360-false       
        Jump         -compare-6360-true        
        Label        -compare-6360-true        
        PushI        1                         
        Jump         -compare-6360-join        
        Label        -compare-6360-false       
        PushI        0                         
        Jump         -compare-6360-join        
        Label        -compare-6360-join        
        JumpTrue     -print-boolean-6361-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6361-join  
        Label        -print-boolean-6361-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6361-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6362-arg1        
        PushI        33                        
        PushI        10                        
        Subtract                               
        Label        -compare-6362-arg2        
        PushI        95                        
        PushI        21                        
        Subtract                               
        Label        -compare-6362-sub         
        Subtract                               
        JumpFalse    -compare-6362-false       
        Jump         -compare-6362-true        
        Label        -compare-6362-true        
        PushI        1                         
        Jump         -compare-6362-join        
        Label        -compare-6362-false       
        PushI        0                         
        Jump         -compare-6362-join        
        Label        -compare-6362-join        
        JumpTrue     -print-boolean-6363-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6363-join  
        Label        -print-boolean-6363-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6363-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6364-arg1        
        PushI        81                        
        PushI        76                        
        Subtract                               
        Label        -compare-6364-arg2        
        PushI        50                        
        PushI        95                        
        Subtract                               
        Label        -compare-6364-sub         
        Subtract                               
        JumpFalse    -compare-6364-false       
        Jump         -compare-6364-true        
        Label        -compare-6364-true        
        PushI        1                         
        Jump         -compare-6364-join        
        Label        -compare-6364-false       
        PushI        0                         
        Jump         -compare-6364-join        
        Label        -compare-6364-join        
        JumpTrue     -print-boolean-6365-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6365-join  
        Label        -print-boolean-6365-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6365-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6366-arg1        
        PushI        74                        
        PushI        72                        
        Subtract                               
        Label        -compare-6366-arg2        
        PushI        43                        
        PushI        80                        
        Subtract                               
        Label        -compare-6366-sub         
        Subtract                               
        JumpFalse    -compare-6366-false       
        Jump         -compare-6366-true        
        Label        -compare-6366-true        
        PushI        1                         
        Jump         -compare-6366-join        
        Label        -compare-6366-false       
        PushI        0                         
        Jump         -compare-6366-join        
        Label        -compare-6366-join        
        JumpTrue     -print-boolean-6367-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6367-join  
        Label        -print-boolean-6367-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6367-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6368-arg1        
        PushI        97                        
        PushI        19                        
        Subtract                               
        Label        -compare-6368-arg2        
        PushI        19                        
        PushI        89                        
        Subtract                               
        Label        -compare-6368-sub         
        Subtract                               
        JumpFalse    -compare-6368-false       
        Jump         -compare-6368-true        
        Label        -compare-6368-true        
        PushI        1                         
        Jump         -compare-6368-join        
        Label        -compare-6368-false       
        PushI        0                         
        Jump         -compare-6368-join        
        Label        -compare-6368-join        
        JumpTrue     -print-boolean-6369-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6369-join  
        Label        -print-boolean-6369-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6369-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6370-arg1        
        PushI        73                        
        PushI        88                        
        Subtract                               
        Label        -compare-6370-arg2        
        PushI        13                        
        PushI        37                        
        Subtract                               
        Label        -compare-6370-sub         
        Subtract                               
        JumpFalse    -compare-6370-false       
        Jump         -compare-6370-true        
        Label        -compare-6370-true        
        PushI        1                         
        Jump         -compare-6370-join        
        Label        -compare-6370-false       
        PushI        0                         
        Jump         -compare-6370-join        
        Label        -compare-6370-join        
        JumpTrue     -print-boolean-6371-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6371-join  
        Label        -print-boolean-6371-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6371-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6372-arg1        
        PushI        19                        
        PushI        25                        
        Subtract                               
        Label        -compare-6372-arg2        
        PushI        67                        
        PushI        63                        
        Subtract                               
        Label        -compare-6372-sub         
        Subtract                               
        JumpFalse    -compare-6372-false       
        Jump         -compare-6372-true        
        Label        -compare-6372-true        
        PushI        1                         
        Jump         -compare-6372-join        
        Label        -compare-6372-false       
        PushI        0                         
        Jump         -compare-6372-join        
        Label        -compare-6372-join        
        JumpTrue     -print-boolean-6373-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6373-join  
        Label        -print-boolean-6373-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6373-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
