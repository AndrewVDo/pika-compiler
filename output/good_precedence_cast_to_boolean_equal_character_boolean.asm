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
        DataZ        1                         
        Label        $$main                    
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% czero
        PushI        0                         
        PushI        127                       
        BTAnd                                  
        StoreC                                 
        Label        -compare-1086-arg1        
        PushI        66                        
        PushI        1                         
        And                                    
        Label        -compare-1086-arg2        
        PushI        0                         
        Label        -compare-1086-sub         
        BEqual                                 
        JumpTrue     -compare-1086-true        
        Jump         -compare-1086-false       
        Label        -compare-1086-true        
        PushI        1                         
        Jump         -compare-1086-join        
        Label        -compare-1086-false       
        PushI        0                         
        Jump         -compare-1086-join        
        Label        -compare-1086-join        
        JumpTrue     -print-boolean-1087-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1087-join  
        Label        -print-boolean-1087-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1087-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1088-arg1        
        PushI        43                        
        PushI        1                         
        And                                    
        Label        -compare-1088-arg2        
        PushI        0                         
        Label        -compare-1088-sub         
        BEqual                                 
        JumpTrue     -compare-1088-true        
        Jump         -compare-1088-false       
        Label        -compare-1088-true        
        PushI        1                         
        Jump         -compare-1088-join        
        Label        -compare-1088-false       
        PushI        0                         
        Jump         -compare-1088-join        
        Label        -compare-1088-join        
        JumpTrue     -print-boolean-1089-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1089-join  
        Label        -print-boolean-1089-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1089-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1090-arg1        
        PushI        114                       
        PushI        1                         
        And                                    
        Label        -compare-1090-arg2        
        PushI        1                         
        Label        -compare-1090-sub         
        BEqual                                 
        JumpTrue     -compare-1090-true        
        Jump         -compare-1090-false       
        Label        -compare-1090-true        
        PushI        1                         
        Jump         -compare-1090-join        
        Label        -compare-1090-false       
        PushI        0                         
        Jump         -compare-1090-join        
        Label        -compare-1090-join        
        JumpTrue     -print-boolean-1091-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1091-join  
        Label        -print-boolean-1091-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1091-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1092-arg1        
        PushI        56                        
        PushI        1                         
        And                                    
        Label        -compare-1092-arg2        
        PushI        1                         
        Label        -compare-1092-sub         
        BEqual                                 
        JumpTrue     -compare-1092-true        
        Jump         -compare-1092-false       
        Label        -compare-1092-true        
        PushI        1                         
        Jump         -compare-1092-join        
        Label        -compare-1092-false       
        PushI        0                         
        Jump         -compare-1092-join        
        Label        -compare-1092-join        
        JumpTrue     -print-boolean-1093-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1093-join  
        Label        -print-boolean-1093-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1093-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1094-arg1        
        PushI        65                        
        PushI        1                         
        And                                    
        Label        -compare-1094-arg2        
        PushI        1                         
        Label        -compare-1094-sub         
        BEqual                                 
        JumpTrue     -compare-1094-true        
        Jump         -compare-1094-false       
        Label        -compare-1094-true        
        PushI        1                         
        Jump         -compare-1094-join        
        Label        -compare-1094-false       
        PushI        0                         
        Jump         -compare-1094-join        
        Label        -compare-1094-join        
        JumpTrue     -print-boolean-1095-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1095-join  
        Label        -print-boolean-1095-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1095-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1096-arg1        
        PushI        51                        
        PushI        1                         
        And                                    
        Label        -compare-1096-arg2        
        PushI        0                         
        Label        -compare-1096-sub         
        BEqual                                 
        JumpTrue     -compare-1096-true        
        Jump         -compare-1096-false       
        Label        -compare-1096-true        
        PushI        1                         
        Jump         -compare-1096-join        
        Label        -compare-1096-false       
        PushI        0                         
        Jump         -compare-1096-join        
        Label        -compare-1096-join        
        JumpTrue     -print-boolean-1097-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1097-join  
        Label        -print-boolean-1097-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1097-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1098-arg1        
        PushI        81                        
        PushI        1                         
        And                                    
        Label        -compare-1098-arg2        
        PushI        0                         
        Label        -compare-1098-sub         
        BEqual                                 
        JumpTrue     -compare-1098-true        
        Jump         -compare-1098-false       
        Label        -compare-1098-true        
        PushI        1                         
        Jump         -compare-1098-join        
        Label        -compare-1098-false       
        PushI        0                         
        Jump         -compare-1098-join        
        Label        -compare-1098-join        
        JumpTrue     -print-boolean-1099-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1099-join  
        Label        -print-boolean-1099-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1099-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1100-arg1        
        PushI        107                       
        PushI        1                         
        And                                    
        Label        -compare-1100-arg2        
        PushI        1                         
        Label        -compare-1100-sub         
        BEqual                                 
        JumpTrue     -compare-1100-true        
        Jump         -compare-1100-false       
        Label        -compare-1100-true        
        PushI        1                         
        Jump         -compare-1100-join        
        Label        -compare-1100-false       
        PushI        0                         
        Jump         -compare-1100-join        
        Label        -compare-1100-join        
        JumpTrue     -print-boolean-1101-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1101-join  
        Label        -print-boolean-1101-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1101-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1102-arg1        
        PushI        48                        
        PushI        1                         
        And                                    
        Label        -compare-1102-arg2        
        PushI        1                         
        Label        -compare-1102-sub         
        BEqual                                 
        JumpTrue     -compare-1102-true        
        Jump         -compare-1102-false       
        Label        -compare-1102-true        
        PushI        1                         
        Jump         -compare-1102-join        
        Label        -compare-1102-false       
        PushI        0                         
        Jump         -compare-1102-join        
        Label        -compare-1102-join        
        JumpTrue     -print-boolean-1103-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1103-join  
        Label        -print-boolean-1103-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1103-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1104-arg1        
        PushI        51                        
        PushI        1                         
        And                                    
        Label        -compare-1104-arg2        
        PushI        0                         
        Label        -compare-1104-sub         
        BEqual                                 
        JumpTrue     -compare-1104-true        
        Jump         -compare-1104-false       
        Label        -compare-1104-true        
        PushI        1                         
        Jump         -compare-1104-join        
        Label        -compare-1104-false       
        PushI        0                         
        Jump         -compare-1104-join        
        Label        -compare-1104-join        
        JumpTrue     -print-boolean-1105-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1105-join  
        Label        -print-boolean-1105-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1105-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1106-arg1        
        PushI        125                       
        PushI        1                         
        And                                    
        Label        -compare-1106-arg2        
        PushI        1                         
        Label        -compare-1106-sub         
        BEqual                                 
        JumpTrue     -compare-1106-true        
        Jump         -compare-1106-false       
        Label        -compare-1106-true        
        PushI        1                         
        Jump         -compare-1106-join        
        Label        -compare-1106-false       
        PushI        0                         
        Jump         -compare-1106-join        
        Label        -compare-1106-join        
        JumpTrue     -print-boolean-1107-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1107-join  
        Label        -print-boolean-1107-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1107-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1108-arg1        
        PushI        61                        
        PushI        1                         
        And                                    
        Label        -compare-1108-arg2        
        PushI        1                         
        Label        -compare-1108-sub         
        BEqual                                 
        JumpTrue     -compare-1108-true        
        Jump         -compare-1108-false       
        Label        -compare-1108-true        
        PushI        1                         
        Jump         -compare-1108-join        
        Label        -compare-1108-false       
        PushI        0                         
        Jump         -compare-1108-join        
        Label        -compare-1108-join        
        JumpTrue     -print-boolean-1109-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1109-join  
        Label        -print-boolean-1109-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1109-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1110-arg1        
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% czero
        LoadC                                  
        PushI        1                         
        And                                    
        Label        -compare-1110-arg2        
        PushI        1                         
        Label        -compare-1110-sub         
        BEqual                                 
        JumpTrue     -compare-1110-true        
        Jump         -compare-1110-false       
        Label        -compare-1110-true        
        PushI        1                         
        Jump         -compare-1110-join        
        Label        -compare-1110-false       
        PushI        0                         
        Jump         -compare-1110-join        
        Label        -compare-1110-join        
        JumpTrue     -print-boolean-1111-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1111-join  
        Label        -print-boolean-1111-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1111-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1112-arg1        
        PushI        1                         
        Label        -compare-1112-arg2        
        PushI        105                       
        PushI        1                         
        And                                    
        Label        -compare-1112-sub         
        BEqual                                 
        JumpTrue     -compare-1112-true        
        Jump         -compare-1112-false       
        Label        -compare-1112-true        
        PushI        1                         
        Jump         -compare-1112-join        
        Label        -compare-1112-false       
        PushI        0                         
        Jump         -compare-1112-join        
        Label        -compare-1112-join        
        JumpTrue     -print-boolean-1113-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1113-join  
        Label        -print-boolean-1113-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1113-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1114-arg1        
        PushI        1                         
        Label        -compare-1114-arg2        
        PushI        105                       
        PushI        1                         
        And                                    
        Label        -compare-1114-sub         
        BEqual                                 
        JumpTrue     -compare-1114-true        
        Jump         -compare-1114-false       
        Label        -compare-1114-true        
        PushI        1                         
        Jump         -compare-1114-join        
        Label        -compare-1114-false       
        PushI        0                         
        Jump         -compare-1114-join        
        Label        -compare-1114-join        
        JumpTrue     -print-boolean-1115-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1115-join  
        Label        -print-boolean-1115-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1115-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1116-arg1        
        PushI        1                         
        Label        -compare-1116-arg2        
        PushI        87                        
        PushI        1                         
        And                                    
        Label        -compare-1116-sub         
        BEqual                                 
        JumpTrue     -compare-1116-true        
        Jump         -compare-1116-false       
        Label        -compare-1116-true        
        PushI        1                         
        Jump         -compare-1116-join        
        Label        -compare-1116-false       
        PushI        0                         
        Jump         -compare-1116-join        
        Label        -compare-1116-join        
        JumpTrue     -print-boolean-1117-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1117-join  
        Label        -print-boolean-1117-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1117-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1118-arg1        
        PushI        0                         
        Label        -compare-1118-arg2        
        PushI        33                        
        PushI        1                         
        And                                    
        Label        -compare-1118-sub         
        BEqual                                 
        JumpTrue     -compare-1118-true        
        Jump         -compare-1118-false       
        Label        -compare-1118-true        
        PushI        1                         
        Jump         -compare-1118-join        
        Label        -compare-1118-false       
        PushI        0                         
        Jump         -compare-1118-join        
        Label        -compare-1118-join        
        JumpTrue     -print-boolean-1119-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1119-join  
        Label        -print-boolean-1119-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1119-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1120-arg1        
        PushI        0                         
        Label        -compare-1120-arg2        
        PushI        41                        
        PushI        1                         
        And                                    
        Label        -compare-1120-sub         
        BEqual                                 
        JumpTrue     -compare-1120-true        
        Jump         -compare-1120-false       
        Label        -compare-1120-true        
        PushI        1                         
        Jump         -compare-1120-join        
        Label        -compare-1120-false       
        PushI        0                         
        Jump         -compare-1120-join        
        Label        -compare-1120-join        
        JumpTrue     -print-boolean-1121-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1121-join  
        Label        -print-boolean-1121-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1121-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1122-arg1        
        PushI        0                         
        Label        -compare-1122-arg2        
        PushI        38                        
        PushI        1                         
        And                                    
        Label        -compare-1122-sub         
        BEqual                                 
        JumpTrue     -compare-1122-true        
        Jump         -compare-1122-false       
        Label        -compare-1122-true        
        PushI        1                         
        Jump         -compare-1122-join        
        Label        -compare-1122-false       
        PushI        0                         
        Jump         -compare-1122-join        
        Label        -compare-1122-join        
        JumpTrue     -print-boolean-1123-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1123-join  
        Label        -print-boolean-1123-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1123-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1124-arg1        
        PushI        0                         
        Label        -compare-1124-arg2        
        PushI        93                        
        PushI        1                         
        And                                    
        Label        -compare-1124-sub         
        BEqual                                 
        JumpTrue     -compare-1124-true        
        Jump         -compare-1124-false       
        Label        -compare-1124-true        
        PushI        1                         
        Jump         -compare-1124-join        
        Label        -compare-1124-false       
        PushI        0                         
        Jump         -compare-1124-join        
        Label        -compare-1124-join        
        JumpTrue     -print-boolean-1125-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1125-join  
        Label        -print-boolean-1125-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1125-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1126-arg1        
        PushI        1                         
        Label        -compare-1126-arg2        
        PushI        89                        
        PushI        1                         
        And                                    
        Label        -compare-1126-sub         
        BEqual                                 
        JumpTrue     -compare-1126-true        
        Jump         -compare-1126-false       
        Label        -compare-1126-true        
        PushI        1                         
        Jump         -compare-1126-join        
        Label        -compare-1126-false       
        PushI        0                         
        Jump         -compare-1126-join        
        Label        -compare-1126-join        
        JumpTrue     -print-boolean-1127-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1127-join  
        Label        -print-boolean-1127-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1127-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1128-arg1        
        PushI        0                         
        Label        -compare-1128-arg2        
        PushI        78                        
        PushI        1                         
        And                                    
        Label        -compare-1128-sub         
        BEqual                                 
        JumpTrue     -compare-1128-true        
        Jump         -compare-1128-false       
        Label        -compare-1128-true        
        PushI        1                         
        Jump         -compare-1128-join        
        Label        -compare-1128-false       
        PushI        0                         
        Jump         -compare-1128-join        
        Label        -compare-1128-join        
        JumpTrue     -print-boolean-1129-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1129-join  
        Label        -print-boolean-1129-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1129-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1130-arg1        
        PushI        1                         
        Label        -compare-1130-arg2        
        PushI        40                        
        PushI        1                         
        And                                    
        Label        -compare-1130-sub         
        BEqual                                 
        JumpTrue     -compare-1130-true        
        Jump         -compare-1130-false       
        Label        -compare-1130-true        
        PushI        1                         
        Jump         -compare-1130-join        
        Label        -compare-1130-false       
        PushI        0                         
        Jump         -compare-1130-join        
        Label        -compare-1130-join        
        JumpTrue     -print-boolean-1131-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1131-join  
        Label        -print-boolean-1131-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1131-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1132-arg1        
        PushI        1                         
        Label        -compare-1132-arg2        
        PushI        77                        
        PushI        1                         
        And                                    
        Label        -compare-1132-sub         
        BEqual                                 
        JumpTrue     -compare-1132-true        
        Jump         -compare-1132-false       
        Label        -compare-1132-true        
        PushI        1                         
        Jump         -compare-1132-join        
        Label        -compare-1132-false       
        PushI        0                         
        Jump         -compare-1132-join        
        Label        -compare-1132-join        
        JumpTrue     -print-boolean-1133-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1133-join  
        Label        -print-boolean-1133-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1133-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1134-arg1        
        PushI        0                         
        Label        -compare-1134-arg2        
        PushI        48                        
        PushI        1                         
        And                                    
        Label        -compare-1134-sub         
        BEqual                                 
        JumpTrue     -compare-1134-true        
        Jump         -compare-1134-false       
        Label        -compare-1134-true        
        PushI        1                         
        Jump         -compare-1134-join        
        Label        -compare-1134-false       
        PushI        0                         
        Jump         -compare-1134-join        
        Label        -compare-1134-join        
        JumpTrue     -print-boolean-1135-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1135-join  
        Label        -print-boolean-1135-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1135-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1136-arg1        
        PushI        0                         
        Label        -compare-1136-arg2        
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% czero
        LoadC                                  
        PushI        1                         
        And                                    
        Label        -compare-1136-sub         
        BEqual                                 
        JumpTrue     -compare-1136-true        
        Jump         -compare-1136-false       
        Label        -compare-1136-true        
        PushI        1                         
        Jump         -compare-1136-join        
        Label        -compare-1136-false       
        PushI        0                         
        Jump         -compare-1136-join        
        Label        -compare-1136-join        
        JumpTrue     -print-boolean-1137-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1137-join  
        Label        -print-boolean-1137-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1137-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1138-arg1        
        PushI        87                        
        PushI        1                         
        And                                    
        Label        -compare-1138-arg2        
        PushI        61                        
        PushI        1                         
        And                                    
        Label        -compare-1138-sub         
        BEqual                                 
        JumpTrue     -compare-1138-true        
        Jump         -compare-1138-false       
        Label        -compare-1138-true        
        PushI        1                         
        Jump         -compare-1138-join        
        Label        -compare-1138-false       
        PushI        0                         
        Jump         -compare-1138-join        
        Label        -compare-1138-join        
        JumpTrue     -print-boolean-1139-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1139-join  
        Label        -print-boolean-1139-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1139-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1140-arg1        
        PushI        113                       
        PushI        1                         
        And                                    
        Label        -compare-1140-arg2        
        PushI        50                        
        PushI        1                         
        And                                    
        Label        -compare-1140-sub         
        BEqual                                 
        JumpTrue     -compare-1140-true        
        Jump         -compare-1140-false       
        Label        -compare-1140-true        
        PushI        1                         
        Jump         -compare-1140-join        
        Label        -compare-1140-false       
        PushI        0                         
        Jump         -compare-1140-join        
        Label        -compare-1140-join        
        JumpTrue     -print-boolean-1141-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1141-join  
        Label        -print-boolean-1141-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1141-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1142-arg1        
        PushI        95                        
        PushI        1                         
        And                                    
        Label        -compare-1142-arg2        
        PushI        42                        
        PushI        1                         
        And                                    
        Label        -compare-1142-sub         
        BEqual                                 
        JumpTrue     -compare-1142-true        
        Jump         -compare-1142-false       
        Label        -compare-1142-true        
        PushI        1                         
        Jump         -compare-1142-join        
        Label        -compare-1142-false       
        PushI        0                         
        Jump         -compare-1142-join        
        Label        -compare-1142-join        
        JumpTrue     -print-boolean-1143-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1143-join  
        Label        -print-boolean-1143-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1143-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1144-arg1        
        PushI        100                       
        PushI        1                         
        And                                    
        Label        -compare-1144-arg2        
        PushI        78                        
        PushI        1                         
        And                                    
        Label        -compare-1144-sub         
        BEqual                                 
        JumpTrue     -compare-1144-true        
        Jump         -compare-1144-false       
        Label        -compare-1144-true        
        PushI        1                         
        Jump         -compare-1144-join        
        Label        -compare-1144-false       
        PushI        0                         
        Jump         -compare-1144-join        
        Label        -compare-1144-join        
        JumpTrue     -print-boolean-1145-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1145-join  
        Label        -print-boolean-1145-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1145-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1146-arg1        
        PushI        37                        
        PushI        1                         
        And                                    
        Label        -compare-1146-arg2        
        PushI        122                       
        PushI        1                         
        And                                    
        Label        -compare-1146-sub         
        BEqual                                 
        JumpTrue     -compare-1146-true        
        Jump         -compare-1146-false       
        Label        -compare-1146-true        
        PushI        1                         
        Jump         -compare-1146-join        
        Label        -compare-1146-false       
        PushI        0                         
        Jump         -compare-1146-join        
        Label        -compare-1146-join        
        JumpTrue     -print-boolean-1147-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1147-join  
        Label        -print-boolean-1147-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1147-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1148-arg1        
        PushI        113                       
        PushI        1                         
        And                                    
        Label        -compare-1148-arg2        
        PushI        83                        
        PushI        1                         
        And                                    
        Label        -compare-1148-sub         
        BEqual                                 
        JumpTrue     -compare-1148-true        
        Jump         -compare-1148-false       
        Label        -compare-1148-true        
        PushI        1                         
        Jump         -compare-1148-join        
        Label        -compare-1148-false       
        PushI        0                         
        Jump         -compare-1148-join        
        Label        -compare-1148-join        
        JumpTrue     -print-boolean-1149-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1149-join  
        Label        -print-boolean-1149-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1149-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1150-arg1        
        PushI        100                       
        PushI        1                         
        And                                    
        Label        -compare-1150-arg2        
        PushI        74                        
        PushI        1                         
        And                                    
        Label        -compare-1150-sub         
        BEqual                                 
        JumpTrue     -compare-1150-true        
        Jump         -compare-1150-false       
        Label        -compare-1150-true        
        PushI        1                         
        Jump         -compare-1150-join        
        Label        -compare-1150-false       
        PushI        0                         
        Jump         -compare-1150-join        
        Label        -compare-1150-join        
        JumpTrue     -print-boolean-1151-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1151-join  
        Label        -print-boolean-1151-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1151-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1152-arg1        
        PushI        78                        
        PushI        1                         
        And                                    
        Label        -compare-1152-arg2        
        PushI        86                        
        PushI        1                         
        And                                    
        Label        -compare-1152-sub         
        BEqual                                 
        JumpTrue     -compare-1152-true        
        Jump         -compare-1152-false       
        Label        -compare-1152-true        
        PushI        1                         
        Jump         -compare-1152-join        
        Label        -compare-1152-false       
        PushI        0                         
        Jump         -compare-1152-join        
        Label        -compare-1152-join        
        JumpTrue     -print-boolean-1153-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1153-join  
        Label        -print-boolean-1153-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1153-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1154-arg1        
        PushI        80                        
        PushI        1                         
        And                                    
        Label        -compare-1154-arg2        
        PushI        96                        
        PushI        1                         
        And                                    
        Label        -compare-1154-sub         
        BEqual                                 
        JumpTrue     -compare-1154-true        
        Jump         -compare-1154-false       
        Label        -compare-1154-true        
        PushI        1                         
        Jump         -compare-1154-join        
        Label        -compare-1154-false       
        PushI        0                         
        Jump         -compare-1154-join        
        Label        -compare-1154-join        
        JumpTrue     -print-boolean-1155-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1155-join  
        Label        -print-boolean-1155-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1155-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1156-arg1        
        PushI        118                       
        PushI        1                         
        And                                    
        Label        -compare-1156-arg2        
        PushI        125                       
        PushI        1                         
        And                                    
        Label        -compare-1156-sub         
        BEqual                                 
        JumpTrue     -compare-1156-true        
        Jump         -compare-1156-false       
        Label        -compare-1156-true        
        PushI        1                         
        Jump         -compare-1156-join        
        Label        -compare-1156-false       
        PushI        0                         
        Jump         -compare-1156-join        
        Label        -compare-1156-join        
        JumpTrue     -print-boolean-1157-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1157-join  
        Label        -print-boolean-1157-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1157-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1158-arg1        
        PushI        52                        
        PushI        1                         
        And                                    
        Label        -compare-1158-arg2        
        PushI        61                        
        PushI        1                         
        And                                    
        Label        -compare-1158-sub         
        BEqual                                 
        JumpTrue     -compare-1158-true        
        Jump         -compare-1158-false       
        Label        -compare-1158-true        
        PushI        1                         
        Jump         -compare-1158-join        
        Label        -compare-1158-false       
        PushI        0                         
        Jump         -compare-1158-join        
        Label        -compare-1158-join        
        JumpTrue     -print-boolean-1159-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1159-join  
        Label        -print-boolean-1159-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1159-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1160-arg1        
        PushI        106                       
        PushI        1                         
        And                                    
        Label        -compare-1160-arg2        
        PushI        108                       
        PushI        1                         
        And                                    
        Label        -compare-1160-sub         
        BEqual                                 
        JumpTrue     -compare-1160-true        
        Jump         -compare-1160-false       
        Label        -compare-1160-true        
        PushI        1                         
        Jump         -compare-1160-join        
        Label        -compare-1160-false       
        PushI        0                         
        Jump         -compare-1160-join        
        Label        -compare-1160-join        
        JumpTrue     -print-boolean-1161-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1161-join  
        Label        -print-boolean-1161-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1161-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
