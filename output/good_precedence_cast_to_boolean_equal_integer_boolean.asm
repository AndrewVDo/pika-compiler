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
        Label        -compare-1162-arg1        
        PushI        54                        
        PushI        1                         
        And                                    
        Label        -compare-1162-arg2        
        PushI        1                         
        Label        -compare-1162-sub         
        BEqual                                 
        JumpTrue     -compare-1162-true        
        Jump         -compare-1162-false       
        Label        -compare-1162-true        
        PushI        1                         
        Jump         -compare-1162-join        
        Label        -compare-1162-false       
        PushI        0                         
        Jump         -compare-1162-join        
        Label        -compare-1162-join        
        JumpTrue     -print-boolean-1163-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1163-join  
        Label        -print-boolean-1163-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1163-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1164-arg1        
        PushI        95                        
        PushI        1                         
        And                                    
        Label        -compare-1164-arg2        
        PushI        0                         
        Label        -compare-1164-sub         
        BEqual                                 
        JumpTrue     -compare-1164-true        
        Jump         -compare-1164-false       
        Label        -compare-1164-true        
        PushI        1                         
        Jump         -compare-1164-join        
        Label        -compare-1164-false       
        PushI        0                         
        Jump         -compare-1164-join        
        Label        -compare-1164-join        
        JumpTrue     -print-boolean-1165-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1165-join  
        Label        -print-boolean-1165-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1165-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1166-arg1        
        PushI        7                         
        PushI        1                         
        And                                    
        Label        -compare-1166-arg2        
        PushI        1                         
        Label        -compare-1166-sub         
        BEqual                                 
        JumpTrue     -compare-1166-true        
        Jump         -compare-1166-false       
        Label        -compare-1166-true        
        PushI        1                         
        Jump         -compare-1166-join        
        Label        -compare-1166-false       
        PushI        0                         
        Jump         -compare-1166-join        
        Label        -compare-1166-join        
        JumpTrue     -print-boolean-1167-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1167-join  
        Label        -print-boolean-1167-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1167-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1168-arg1        
        PushI        24                        
        PushI        1                         
        And                                    
        Label        -compare-1168-arg2        
        PushI        1                         
        Label        -compare-1168-sub         
        BEqual                                 
        JumpTrue     -compare-1168-true        
        Jump         -compare-1168-false       
        Label        -compare-1168-true        
        PushI        1                         
        Jump         -compare-1168-join        
        Label        -compare-1168-false       
        PushI        0                         
        Jump         -compare-1168-join        
        Label        -compare-1168-join        
        JumpTrue     -print-boolean-1169-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1169-join  
        Label        -print-boolean-1169-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1169-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1170-arg1        
        PushI        87                        
        PushI        1                         
        And                                    
        Label        -compare-1170-arg2        
        PushI        1                         
        Label        -compare-1170-sub         
        BEqual                                 
        JumpTrue     -compare-1170-true        
        Jump         -compare-1170-false       
        Label        -compare-1170-true        
        PushI        1                         
        Jump         -compare-1170-join        
        Label        -compare-1170-false       
        PushI        0                         
        Jump         -compare-1170-join        
        Label        -compare-1170-join        
        JumpTrue     -print-boolean-1171-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1171-join  
        Label        -print-boolean-1171-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1171-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1172-arg1        
        PushI        90                        
        PushI        1                         
        And                                    
        Label        -compare-1172-arg2        
        PushI        1                         
        Label        -compare-1172-sub         
        BEqual                                 
        JumpTrue     -compare-1172-true        
        Jump         -compare-1172-false       
        Label        -compare-1172-true        
        PushI        1                         
        Jump         -compare-1172-join        
        Label        -compare-1172-false       
        PushI        0                         
        Jump         -compare-1172-join        
        Label        -compare-1172-join        
        JumpTrue     -print-boolean-1173-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1173-join  
        Label        -print-boolean-1173-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1173-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1174-arg1        
        PushI        15                        
        PushI        1                         
        And                                    
        Label        -compare-1174-arg2        
        PushI        1                         
        Label        -compare-1174-sub         
        BEqual                                 
        JumpTrue     -compare-1174-true        
        Jump         -compare-1174-false       
        Label        -compare-1174-true        
        PushI        1                         
        Jump         -compare-1174-join        
        Label        -compare-1174-false       
        PushI        0                         
        Jump         -compare-1174-join        
        Label        -compare-1174-join        
        JumpTrue     -print-boolean-1175-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1175-join  
        Label        -print-boolean-1175-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1175-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1176-arg1        
        PushI        53                        
        PushI        1                         
        And                                    
        Label        -compare-1176-arg2        
        PushI        0                         
        Label        -compare-1176-sub         
        BEqual                                 
        JumpTrue     -compare-1176-true        
        Jump         -compare-1176-false       
        Label        -compare-1176-true        
        PushI        1                         
        Jump         -compare-1176-join        
        Label        -compare-1176-false       
        PushI        0                         
        Jump         -compare-1176-join        
        Label        -compare-1176-join        
        JumpTrue     -print-boolean-1177-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1177-join  
        Label        -print-boolean-1177-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1177-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1178-arg1        
        PushI        46                        
        PushI        1                         
        And                                    
        Label        -compare-1178-arg2        
        PushI        1                         
        Label        -compare-1178-sub         
        BEqual                                 
        JumpTrue     -compare-1178-true        
        Jump         -compare-1178-false       
        Label        -compare-1178-true        
        PushI        1                         
        Jump         -compare-1178-join        
        Label        -compare-1178-false       
        PushI        0                         
        Jump         -compare-1178-join        
        Label        -compare-1178-join        
        JumpTrue     -print-boolean-1179-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1179-join  
        Label        -print-boolean-1179-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1179-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1180-arg1        
        PushI        68                        
        PushI        1                         
        And                                    
        Label        -compare-1180-arg2        
        PushI        0                         
        Label        -compare-1180-sub         
        BEqual                                 
        JumpTrue     -compare-1180-true        
        Jump         -compare-1180-false       
        Label        -compare-1180-true        
        PushI        1                         
        Jump         -compare-1180-join        
        Label        -compare-1180-false       
        PushI        0                         
        Jump         -compare-1180-join        
        Label        -compare-1180-join        
        JumpTrue     -print-boolean-1181-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1181-join  
        Label        -print-boolean-1181-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1181-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1182-arg1        
        PushI        68                        
        PushI        1                         
        And                                    
        Label        -compare-1182-arg2        
        PushI        1                         
        Label        -compare-1182-sub         
        BEqual                                 
        JumpTrue     -compare-1182-true        
        Jump         -compare-1182-false       
        Label        -compare-1182-true        
        PushI        1                         
        Jump         -compare-1182-join        
        Label        -compare-1182-false       
        PushI        0                         
        Jump         -compare-1182-join        
        Label        -compare-1182-join        
        JumpTrue     -print-boolean-1183-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1183-join  
        Label        -print-boolean-1183-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1183-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1184-arg1        
        PushI        9                         
        PushI        1                         
        And                                    
        Label        -compare-1184-arg2        
        PushI        0                         
        Label        -compare-1184-sub         
        BEqual                                 
        JumpTrue     -compare-1184-true        
        Jump         -compare-1184-false       
        Label        -compare-1184-true        
        PushI        1                         
        Jump         -compare-1184-join        
        Label        -compare-1184-false       
        PushI        0                         
        Jump         -compare-1184-join        
        Label        -compare-1184-join        
        JumpTrue     -print-boolean-1185-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1185-join  
        Label        -print-boolean-1185-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1185-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1186-arg1        
        PushI        1                         
        Label        -compare-1186-arg2        
        PushI        81                        
        PushI        1                         
        And                                    
        Label        -compare-1186-sub         
        BEqual                                 
        JumpTrue     -compare-1186-true        
        Jump         -compare-1186-false       
        Label        -compare-1186-true        
        PushI        1                         
        Jump         -compare-1186-join        
        Label        -compare-1186-false       
        PushI        0                         
        Jump         -compare-1186-join        
        Label        -compare-1186-join        
        JumpTrue     -print-boolean-1187-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1187-join  
        Label        -print-boolean-1187-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1187-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1188-arg1        
        PushI        0                         
        Label        -compare-1188-arg2        
        PushI        4                         
        PushI        1                         
        And                                    
        Label        -compare-1188-sub         
        BEqual                                 
        JumpTrue     -compare-1188-true        
        Jump         -compare-1188-false       
        Label        -compare-1188-true        
        PushI        1                         
        Jump         -compare-1188-join        
        Label        -compare-1188-false       
        PushI        0                         
        Jump         -compare-1188-join        
        Label        -compare-1188-join        
        JumpTrue     -print-boolean-1189-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1189-join  
        Label        -print-boolean-1189-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1189-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1190-arg1        
        PushI        0                         
        Label        -compare-1190-arg2        
        PushI        6                         
        PushI        1                         
        And                                    
        Label        -compare-1190-sub         
        BEqual                                 
        JumpTrue     -compare-1190-true        
        Jump         -compare-1190-false       
        Label        -compare-1190-true        
        PushI        1                         
        Jump         -compare-1190-join        
        Label        -compare-1190-false       
        PushI        0                         
        Jump         -compare-1190-join        
        Label        -compare-1190-join        
        JumpTrue     -print-boolean-1191-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1191-join  
        Label        -print-boolean-1191-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1191-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1192-arg1        
        PushI        0                         
        Label        -compare-1192-arg2        
        PushI        86                        
        PushI        1                         
        And                                    
        Label        -compare-1192-sub         
        BEqual                                 
        JumpTrue     -compare-1192-true        
        Jump         -compare-1192-false       
        Label        -compare-1192-true        
        PushI        1                         
        Jump         -compare-1192-join        
        Label        -compare-1192-false       
        PushI        0                         
        Jump         -compare-1192-join        
        Label        -compare-1192-join        
        JumpTrue     -print-boolean-1193-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1193-join  
        Label        -print-boolean-1193-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1193-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1194-arg1        
        PushI        1                         
        Label        -compare-1194-arg2        
        PushI        46                        
        PushI        1                         
        And                                    
        Label        -compare-1194-sub         
        BEqual                                 
        JumpTrue     -compare-1194-true        
        Jump         -compare-1194-false       
        Label        -compare-1194-true        
        PushI        1                         
        Jump         -compare-1194-join        
        Label        -compare-1194-false       
        PushI        0                         
        Jump         -compare-1194-join        
        Label        -compare-1194-join        
        JumpTrue     -print-boolean-1195-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1195-join  
        Label        -print-boolean-1195-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1195-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1196-arg1        
        PushI        0                         
        Label        -compare-1196-arg2        
        PushI        20                        
        PushI        1                         
        And                                    
        Label        -compare-1196-sub         
        BEqual                                 
        JumpTrue     -compare-1196-true        
        Jump         -compare-1196-false       
        Label        -compare-1196-true        
        PushI        1                         
        Jump         -compare-1196-join        
        Label        -compare-1196-false       
        PushI        0                         
        Jump         -compare-1196-join        
        Label        -compare-1196-join        
        JumpTrue     -print-boolean-1197-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1197-join  
        Label        -print-boolean-1197-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1197-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1198-arg1        
        PushI        1                         
        Label        -compare-1198-arg2        
        PushI        85                        
        PushI        1                         
        And                                    
        Label        -compare-1198-sub         
        BEqual                                 
        JumpTrue     -compare-1198-true        
        Jump         -compare-1198-false       
        Label        -compare-1198-true        
        PushI        1                         
        Jump         -compare-1198-join        
        Label        -compare-1198-false       
        PushI        0                         
        Jump         -compare-1198-join        
        Label        -compare-1198-join        
        JumpTrue     -print-boolean-1199-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1199-join  
        Label        -print-boolean-1199-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1199-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1200-arg1        
        PushI        0                         
        Label        -compare-1200-arg2        
        PushI        2                         
        PushI        1                         
        And                                    
        Label        -compare-1200-sub         
        BEqual                                 
        JumpTrue     -compare-1200-true        
        Jump         -compare-1200-false       
        Label        -compare-1200-true        
        PushI        1                         
        Jump         -compare-1200-join        
        Label        -compare-1200-false       
        PushI        0                         
        Jump         -compare-1200-join        
        Label        -compare-1200-join        
        JumpTrue     -print-boolean-1201-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1201-join  
        Label        -print-boolean-1201-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1201-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1202-arg1        
        PushI        1                         
        Label        -compare-1202-arg2        
        PushI        45                        
        PushI        1                         
        And                                    
        Label        -compare-1202-sub         
        BEqual                                 
        JumpTrue     -compare-1202-true        
        Jump         -compare-1202-false       
        Label        -compare-1202-true        
        PushI        1                         
        Jump         -compare-1202-join        
        Label        -compare-1202-false       
        PushI        0                         
        Jump         -compare-1202-join        
        Label        -compare-1202-join        
        JumpTrue     -print-boolean-1203-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1203-join  
        Label        -print-boolean-1203-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1203-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1204-arg1        
        PushI        0                         
        Label        -compare-1204-arg2        
        PushI        89                        
        PushI        1                         
        And                                    
        Label        -compare-1204-sub         
        BEqual                                 
        JumpTrue     -compare-1204-true        
        Jump         -compare-1204-false       
        Label        -compare-1204-true        
        PushI        1                         
        Jump         -compare-1204-join        
        Label        -compare-1204-false       
        PushI        0                         
        Jump         -compare-1204-join        
        Label        -compare-1204-join        
        JumpTrue     -print-boolean-1205-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1205-join  
        Label        -print-boolean-1205-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1205-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1206-arg1        
        PushI        1                         
        Label        -compare-1206-arg2        
        PushI        36                        
        PushI        1                         
        And                                    
        Label        -compare-1206-sub         
        BEqual                                 
        JumpTrue     -compare-1206-true        
        Jump         -compare-1206-false       
        Label        -compare-1206-true        
        PushI        1                         
        Jump         -compare-1206-join        
        Label        -compare-1206-false       
        PushI        0                         
        Jump         -compare-1206-join        
        Label        -compare-1206-join        
        JumpTrue     -print-boolean-1207-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1207-join  
        Label        -print-boolean-1207-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1207-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1208-arg1        
        PushI        0                         
        Label        -compare-1208-arg2        
        PushI        71                        
        PushI        1                         
        And                                    
        Label        -compare-1208-sub         
        BEqual                                 
        JumpTrue     -compare-1208-true        
        Jump         -compare-1208-false       
        Label        -compare-1208-true        
        PushI        1                         
        Jump         -compare-1208-join        
        Label        -compare-1208-false       
        PushI        0                         
        Jump         -compare-1208-join        
        Label        -compare-1208-join        
        JumpTrue     -print-boolean-1209-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1209-join  
        Label        -print-boolean-1209-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1209-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1210-arg1        
        PushI        96                        
        PushI        1                         
        And                                    
        Label        -compare-1210-arg2        
        PushI        53                        
        PushI        1                         
        And                                    
        Label        -compare-1210-sub         
        BEqual                                 
        JumpTrue     -compare-1210-true        
        Jump         -compare-1210-false       
        Label        -compare-1210-true        
        PushI        1                         
        Jump         -compare-1210-join        
        Label        -compare-1210-false       
        PushI        0                         
        Jump         -compare-1210-join        
        Label        -compare-1210-join        
        JumpTrue     -print-boolean-1211-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1211-join  
        Label        -print-boolean-1211-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1211-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1212-arg1        
        PushI        39                        
        PushI        1                         
        And                                    
        Label        -compare-1212-arg2        
        PushI        42                        
        PushI        1                         
        And                                    
        Label        -compare-1212-sub         
        BEqual                                 
        JumpTrue     -compare-1212-true        
        Jump         -compare-1212-false       
        Label        -compare-1212-true        
        PushI        1                         
        Jump         -compare-1212-join        
        Label        -compare-1212-false       
        PushI        0                         
        Jump         -compare-1212-join        
        Label        -compare-1212-join        
        JumpTrue     -print-boolean-1213-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1213-join  
        Label        -print-boolean-1213-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1213-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1214-arg1        
        PushI        30                        
        PushI        1                         
        And                                    
        Label        -compare-1214-arg2        
        PushI        21                        
        PushI        1                         
        And                                    
        Label        -compare-1214-sub         
        BEqual                                 
        JumpTrue     -compare-1214-true        
        Jump         -compare-1214-false       
        Label        -compare-1214-true        
        PushI        1                         
        Jump         -compare-1214-join        
        Label        -compare-1214-false       
        PushI        0                         
        Jump         -compare-1214-join        
        Label        -compare-1214-join        
        JumpTrue     -print-boolean-1215-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1215-join  
        Label        -print-boolean-1215-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1215-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1216-arg1        
        PushI        73                        
        PushI        1                         
        And                                    
        Label        -compare-1216-arg2        
        PushI        29                        
        PushI        1                         
        And                                    
        Label        -compare-1216-sub         
        BEqual                                 
        JumpTrue     -compare-1216-true        
        Jump         -compare-1216-false       
        Label        -compare-1216-true        
        PushI        1                         
        Jump         -compare-1216-join        
        Label        -compare-1216-false       
        PushI        0                         
        Jump         -compare-1216-join        
        Label        -compare-1216-join        
        JumpTrue     -print-boolean-1217-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1217-join  
        Label        -print-boolean-1217-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1217-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1218-arg1        
        PushI        48                        
        PushI        1                         
        And                                    
        Label        -compare-1218-arg2        
        PushI        28                        
        PushI        1                         
        And                                    
        Label        -compare-1218-sub         
        BEqual                                 
        JumpTrue     -compare-1218-true        
        Jump         -compare-1218-false       
        Label        -compare-1218-true        
        PushI        1                         
        Jump         -compare-1218-join        
        Label        -compare-1218-false       
        PushI        0                         
        Jump         -compare-1218-join        
        Label        -compare-1218-join        
        JumpTrue     -print-boolean-1219-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1219-join  
        Label        -print-boolean-1219-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1219-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1220-arg1        
        PushI        70                        
        PushI        1                         
        And                                    
        Label        -compare-1220-arg2        
        PushI        39                        
        PushI        1                         
        And                                    
        Label        -compare-1220-sub         
        BEqual                                 
        JumpTrue     -compare-1220-true        
        Jump         -compare-1220-false       
        Label        -compare-1220-true        
        PushI        1                         
        Jump         -compare-1220-join        
        Label        -compare-1220-false       
        PushI        0                         
        Jump         -compare-1220-join        
        Label        -compare-1220-join        
        JumpTrue     -print-boolean-1221-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1221-join  
        Label        -print-boolean-1221-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1221-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1222-arg1        
        PushI        70                        
        PushI        1                         
        And                                    
        Label        -compare-1222-arg2        
        PushI        48                        
        PushI        1                         
        And                                    
        Label        -compare-1222-sub         
        BEqual                                 
        JumpTrue     -compare-1222-true        
        Jump         -compare-1222-false       
        Label        -compare-1222-true        
        PushI        1                         
        Jump         -compare-1222-join        
        Label        -compare-1222-false       
        PushI        0                         
        Jump         -compare-1222-join        
        Label        -compare-1222-join        
        JumpTrue     -print-boolean-1223-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1223-join  
        Label        -print-boolean-1223-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1223-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1224-arg1        
        PushI        72                        
        PushI        1                         
        And                                    
        Label        -compare-1224-arg2        
        PushI        60                        
        PushI        1                         
        And                                    
        Label        -compare-1224-sub         
        BEqual                                 
        JumpTrue     -compare-1224-true        
        Jump         -compare-1224-false       
        Label        -compare-1224-true        
        PushI        1                         
        Jump         -compare-1224-join        
        Label        -compare-1224-false       
        PushI        0                         
        Jump         -compare-1224-join        
        Label        -compare-1224-join        
        JumpTrue     -print-boolean-1225-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1225-join  
        Label        -print-boolean-1225-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1225-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1226-arg1        
        PushI        90                        
        PushI        1                         
        And                                    
        Label        -compare-1226-arg2        
        PushI        36                        
        PushI        1                         
        And                                    
        Label        -compare-1226-sub         
        BEqual                                 
        JumpTrue     -compare-1226-true        
        Jump         -compare-1226-false       
        Label        -compare-1226-true        
        PushI        1                         
        Jump         -compare-1226-join        
        Label        -compare-1226-false       
        PushI        0                         
        Jump         -compare-1226-join        
        Label        -compare-1226-join        
        JumpTrue     -print-boolean-1227-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1227-join  
        Label        -print-boolean-1227-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1227-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1228-arg1        
        PushI        26                        
        PushI        1                         
        And                                    
        Label        -compare-1228-arg2        
        PushI        47                        
        PushI        1                         
        And                                    
        Label        -compare-1228-sub         
        BEqual                                 
        JumpTrue     -compare-1228-true        
        Jump         -compare-1228-false       
        Label        -compare-1228-true        
        PushI        1                         
        Jump         -compare-1228-join        
        Label        -compare-1228-false       
        PushI        0                         
        Jump         -compare-1228-join        
        Label        -compare-1228-join        
        JumpTrue     -print-boolean-1229-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1229-join  
        Label        -print-boolean-1229-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1229-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1230-arg1        
        PushI        61                        
        PushI        1                         
        And                                    
        Label        -compare-1230-arg2        
        PushI        1                         
        PushI        1                         
        And                                    
        Label        -compare-1230-sub         
        BEqual                                 
        JumpTrue     -compare-1230-true        
        Jump         -compare-1230-false       
        Label        -compare-1230-true        
        PushI        1                         
        Jump         -compare-1230-join        
        Label        -compare-1230-false       
        PushI        0                         
        Jump         -compare-1230-join        
        Label        -compare-1230-join        
        JumpTrue     -print-boolean-1231-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1231-join  
        Label        -print-boolean-1231-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1231-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1232-arg1        
        PushI        36                        
        PushI        1                         
        And                                    
        Label        -compare-1232-arg2        
        PushI        27                        
        PushI        1                         
        And                                    
        Label        -compare-1232-sub         
        BEqual                                 
        JumpTrue     -compare-1232-true        
        Jump         -compare-1232-false       
        Label        -compare-1232-true        
        PushI        1                         
        Jump         -compare-1232-join        
        Label        -compare-1232-false       
        PushI        0                         
        Jump         -compare-1232-join        
        Label        -compare-1232-join        
        JumpTrue     -print-boolean-1233-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1233-join  
        Label        -print-boolean-1233-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1233-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
