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
        Label        -compare-1234-arg1        
        PushI        70                        
        PushI        1                         
        And                                    
        Label        -compare-1234-arg2        
        PushI        1                         
        Label        -compare-1234-sub         
        BEqual                                 
        JumpFalse    -compare-1234-true        
        Jump         -compare-1234-false       
        Label        -compare-1234-true        
        PushI        1                         
        Jump         -compare-1234-join        
        Label        -compare-1234-false       
        PushI        0                         
        Jump         -compare-1234-join        
        Label        -compare-1234-join        
        JumpTrue     -print-boolean-1235-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1235-join  
        Label        -print-boolean-1235-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1235-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1236-arg1        
        PushI        58                        
        PushI        1                         
        And                                    
        Label        -compare-1236-arg2        
        PushI        1                         
        Label        -compare-1236-sub         
        BEqual                                 
        JumpFalse    -compare-1236-true        
        Jump         -compare-1236-false       
        Label        -compare-1236-true        
        PushI        1                         
        Jump         -compare-1236-join        
        Label        -compare-1236-false       
        PushI        0                         
        Jump         -compare-1236-join        
        Label        -compare-1236-join        
        JumpTrue     -print-boolean-1237-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1237-join  
        Label        -print-boolean-1237-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1237-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1238-arg1        
        PushI        49                        
        PushI        1                         
        And                                    
        Label        -compare-1238-arg2        
        PushI        0                         
        Label        -compare-1238-sub         
        BEqual                                 
        JumpFalse    -compare-1238-true        
        Jump         -compare-1238-false       
        Label        -compare-1238-true        
        PushI        1                         
        Jump         -compare-1238-join        
        Label        -compare-1238-false       
        PushI        0                         
        Jump         -compare-1238-join        
        Label        -compare-1238-join        
        JumpTrue     -print-boolean-1239-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1239-join  
        Label        -print-boolean-1239-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1239-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1240-arg1        
        PushI        74                        
        PushI        1                         
        And                                    
        Label        -compare-1240-arg2        
        PushI        1                         
        Label        -compare-1240-sub         
        BEqual                                 
        JumpFalse    -compare-1240-true        
        Jump         -compare-1240-false       
        Label        -compare-1240-true        
        PushI        1                         
        Jump         -compare-1240-join        
        Label        -compare-1240-false       
        PushI        0                         
        Jump         -compare-1240-join        
        Label        -compare-1240-join        
        JumpTrue     -print-boolean-1241-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1241-join  
        Label        -print-boolean-1241-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1241-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1242-arg1        
        PushI        115                       
        PushI        1                         
        And                                    
        Label        -compare-1242-arg2        
        PushI        1                         
        Label        -compare-1242-sub         
        BEqual                                 
        JumpFalse    -compare-1242-true        
        Jump         -compare-1242-false       
        Label        -compare-1242-true        
        PushI        1                         
        Jump         -compare-1242-join        
        Label        -compare-1242-false       
        PushI        0                         
        Jump         -compare-1242-join        
        Label        -compare-1242-join        
        JumpTrue     -print-boolean-1243-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1243-join  
        Label        -print-boolean-1243-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1243-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1244-arg1        
        PushI        34                        
        PushI        1                         
        And                                    
        Label        -compare-1244-arg2        
        PushI        0                         
        Label        -compare-1244-sub         
        BEqual                                 
        JumpFalse    -compare-1244-true        
        Jump         -compare-1244-false       
        Label        -compare-1244-true        
        PushI        1                         
        Jump         -compare-1244-join        
        Label        -compare-1244-false       
        PushI        0                         
        Jump         -compare-1244-join        
        Label        -compare-1244-join        
        JumpTrue     -print-boolean-1245-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1245-join  
        Label        -print-boolean-1245-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1245-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1246-arg1        
        PushI        50                        
        PushI        1                         
        And                                    
        Label        -compare-1246-arg2        
        PushI        1                         
        Label        -compare-1246-sub         
        BEqual                                 
        JumpFalse    -compare-1246-true        
        Jump         -compare-1246-false       
        Label        -compare-1246-true        
        PushI        1                         
        Jump         -compare-1246-join        
        Label        -compare-1246-false       
        PushI        0                         
        Jump         -compare-1246-join        
        Label        -compare-1246-join        
        JumpTrue     -print-boolean-1247-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1247-join  
        Label        -print-boolean-1247-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1247-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1248-arg1        
        PushI        81                        
        PushI        1                         
        And                                    
        Label        -compare-1248-arg2        
        PushI        0                         
        Label        -compare-1248-sub         
        BEqual                                 
        JumpFalse    -compare-1248-true        
        Jump         -compare-1248-false       
        Label        -compare-1248-true        
        PushI        1                         
        Jump         -compare-1248-join        
        Label        -compare-1248-false       
        PushI        0                         
        Jump         -compare-1248-join        
        Label        -compare-1248-join        
        JumpTrue     -print-boolean-1249-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1249-join  
        Label        -print-boolean-1249-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1249-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1250-arg1        
        PushI        70                        
        PushI        1                         
        And                                    
        Label        -compare-1250-arg2        
        PushI        0                         
        Label        -compare-1250-sub         
        BEqual                                 
        JumpFalse    -compare-1250-true        
        Jump         -compare-1250-false       
        Label        -compare-1250-true        
        PushI        1                         
        Jump         -compare-1250-join        
        Label        -compare-1250-false       
        PushI        0                         
        Jump         -compare-1250-join        
        Label        -compare-1250-join        
        JumpTrue     -print-boolean-1251-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1251-join  
        Label        -print-boolean-1251-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1251-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1252-arg1        
        PushI        48                        
        PushI        1                         
        And                                    
        Label        -compare-1252-arg2        
        PushI        1                         
        Label        -compare-1252-sub         
        BEqual                                 
        JumpFalse    -compare-1252-true        
        Jump         -compare-1252-false       
        Label        -compare-1252-true        
        PushI        1                         
        Jump         -compare-1252-join        
        Label        -compare-1252-false       
        PushI        0                         
        Jump         -compare-1252-join        
        Label        -compare-1252-join        
        JumpTrue     -print-boolean-1253-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1253-join  
        Label        -print-boolean-1253-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1253-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1254-arg1        
        PushI        61                        
        PushI        1                         
        And                                    
        Label        -compare-1254-arg2        
        PushI        1                         
        Label        -compare-1254-sub         
        BEqual                                 
        JumpFalse    -compare-1254-true        
        Jump         -compare-1254-false       
        Label        -compare-1254-true        
        PushI        1                         
        Jump         -compare-1254-join        
        Label        -compare-1254-false       
        PushI        0                         
        Jump         -compare-1254-join        
        Label        -compare-1254-join        
        JumpTrue     -print-boolean-1255-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1255-join  
        Label        -print-boolean-1255-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1255-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1256-arg1        
        PushI        101                       
        PushI        1                         
        And                                    
        Label        -compare-1256-arg2        
        PushI        0                         
        Label        -compare-1256-sub         
        BEqual                                 
        JumpFalse    -compare-1256-true        
        Jump         -compare-1256-false       
        Label        -compare-1256-true        
        PushI        1                         
        Jump         -compare-1256-join        
        Label        -compare-1256-false       
        PushI        0                         
        Jump         -compare-1256-join        
        Label        -compare-1256-join        
        JumpTrue     -print-boolean-1257-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1257-join  
        Label        -print-boolean-1257-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1257-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1258-arg1        
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% czero
        LoadC                                  
        PushI        1                         
        And                                    
        Label        -compare-1258-arg2        
        PushI        1                         
        Label        -compare-1258-sub         
        BEqual                                 
        JumpFalse    -compare-1258-true        
        Jump         -compare-1258-false       
        Label        -compare-1258-true        
        PushI        1                         
        Jump         -compare-1258-join        
        Label        -compare-1258-false       
        PushI        0                         
        Jump         -compare-1258-join        
        Label        -compare-1258-join        
        JumpTrue     -print-boolean-1259-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1259-join  
        Label        -print-boolean-1259-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1259-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1260-arg1        
        PushI        0                         
        Label        -compare-1260-arg2        
        PushI        70                        
        PushI        1                         
        And                                    
        Label        -compare-1260-sub         
        BEqual                                 
        JumpFalse    -compare-1260-true        
        Jump         -compare-1260-false       
        Label        -compare-1260-true        
        PushI        1                         
        Jump         -compare-1260-join        
        Label        -compare-1260-false       
        PushI        0                         
        Jump         -compare-1260-join        
        Label        -compare-1260-join        
        JumpTrue     -print-boolean-1261-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1261-join  
        Label        -print-boolean-1261-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1261-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1262-arg1        
        PushI        0                         
        Label        -compare-1262-arg2        
        PushI        51                        
        PushI        1                         
        And                                    
        Label        -compare-1262-sub         
        BEqual                                 
        JumpFalse    -compare-1262-true        
        Jump         -compare-1262-false       
        Label        -compare-1262-true        
        PushI        1                         
        Jump         -compare-1262-join        
        Label        -compare-1262-false       
        PushI        0                         
        Jump         -compare-1262-join        
        Label        -compare-1262-join        
        JumpTrue     -print-boolean-1263-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1263-join  
        Label        -print-boolean-1263-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1263-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1264-arg1        
        PushI        0                         
        Label        -compare-1264-arg2        
        PushI        39                        
        PushI        1                         
        And                                    
        Label        -compare-1264-sub         
        BEqual                                 
        JumpFalse    -compare-1264-true        
        Jump         -compare-1264-false       
        Label        -compare-1264-true        
        PushI        1                         
        Jump         -compare-1264-join        
        Label        -compare-1264-false       
        PushI        0                         
        Jump         -compare-1264-join        
        Label        -compare-1264-join        
        JumpTrue     -print-boolean-1265-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1265-join  
        Label        -print-boolean-1265-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1265-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1266-arg1        
        PushI        1                         
        Label        -compare-1266-arg2        
        PushI        88                        
        PushI        1                         
        And                                    
        Label        -compare-1266-sub         
        BEqual                                 
        JumpFalse    -compare-1266-true        
        Jump         -compare-1266-false       
        Label        -compare-1266-true        
        PushI        1                         
        Jump         -compare-1266-join        
        Label        -compare-1266-false       
        PushI        0                         
        Jump         -compare-1266-join        
        Label        -compare-1266-join        
        JumpTrue     -print-boolean-1267-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1267-join  
        Label        -print-boolean-1267-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1267-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1268-arg1        
        PushI        0                         
        Label        -compare-1268-arg2        
        PushI        105                       
        PushI        1                         
        And                                    
        Label        -compare-1268-sub         
        BEqual                                 
        JumpFalse    -compare-1268-true        
        Jump         -compare-1268-false       
        Label        -compare-1268-true        
        PushI        1                         
        Jump         -compare-1268-join        
        Label        -compare-1268-false       
        PushI        0                         
        Jump         -compare-1268-join        
        Label        -compare-1268-join        
        JumpTrue     -print-boolean-1269-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1269-join  
        Label        -print-boolean-1269-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1269-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1270-arg1        
        PushI        0                         
        Label        -compare-1270-arg2        
        PushI        109                       
        PushI        1                         
        And                                    
        Label        -compare-1270-sub         
        BEqual                                 
        JumpFalse    -compare-1270-true        
        Jump         -compare-1270-false       
        Label        -compare-1270-true        
        PushI        1                         
        Jump         -compare-1270-join        
        Label        -compare-1270-false       
        PushI        0                         
        Jump         -compare-1270-join        
        Label        -compare-1270-join        
        JumpTrue     -print-boolean-1271-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1271-join  
        Label        -print-boolean-1271-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1271-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1272-arg1        
        PushI        0                         
        Label        -compare-1272-arg2        
        PushI        83                        
        PushI        1                         
        And                                    
        Label        -compare-1272-sub         
        BEqual                                 
        JumpFalse    -compare-1272-true        
        Jump         -compare-1272-false       
        Label        -compare-1272-true        
        PushI        1                         
        Jump         -compare-1272-join        
        Label        -compare-1272-false       
        PushI        0                         
        Jump         -compare-1272-join        
        Label        -compare-1272-join        
        JumpTrue     -print-boolean-1273-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1273-join  
        Label        -print-boolean-1273-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1273-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1274-arg1        
        PushI        0                         
        Label        -compare-1274-arg2        
        PushI        39                        
        PushI        1                         
        And                                    
        Label        -compare-1274-sub         
        BEqual                                 
        JumpFalse    -compare-1274-true        
        Jump         -compare-1274-false       
        Label        -compare-1274-true        
        PushI        1                         
        Jump         -compare-1274-join        
        Label        -compare-1274-false       
        PushI        0                         
        Jump         -compare-1274-join        
        Label        -compare-1274-join        
        JumpTrue     -print-boolean-1275-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1275-join  
        Label        -print-boolean-1275-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1275-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1276-arg1        
        PushI        1                         
        Label        -compare-1276-arg2        
        PushI        62                        
        PushI        1                         
        And                                    
        Label        -compare-1276-sub         
        BEqual                                 
        JumpFalse    -compare-1276-true        
        Jump         -compare-1276-false       
        Label        -compare-1276-true        
        PushI        1                         
        Jump         -compare-1276-join        
        Label        -compare-1276-false       
        PushI        0                         
        Jump         -compare-1276-join        
        Label        -compare-1276-join        
        JumpTrue     -print-boolean-1277-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1277-join  
        Label        -print-boolean-1277-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1277-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1278-arg1        
        PushI        0                         
        Label        -compare-1278-arg2        
        PushI        32                        
        PushI        1                         
        And                                    
        Label        -compare-1278-sub         
        BEqual                                 
        JumpFalse    -compare-1278-true        
        Jump         -compare-1278-false       
        Label        -compare-1278-true        
        PushI        1                         
        Jump         -compare-1278-join        
        Label        -compare-1278-false       
        PushI        0                         
        Jump         -compare-1278-join        
        Label        -compare-1278-join        
        JumpTrue     -print-boolean-1279-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1279-join  
        Label        -print-boolean-1279-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1279-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1280-arg1        
        PushI        0                         
        Label        -compare-1280-arg2        
        PushI        92                        
        PushI        1                         
        And                                    
        Label        -compare-1280-sub         
        BEqual                                 
        JumpFalse    -compare-1280-true        
        Jump         -compare-1280-false       
        Label        -compare-1280-true        
        PushI        1                         
        Jump         -compare-1280-join        
        Label        -compare-1280-false       
        PushI        0                         
        Jump         -compare-1280-join        
        Label        -compare-1280-join        
        JumpTrue     -print-boolean-1281-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1281-join  
        Label        -print-boolean-1281-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1281-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1282-arg1        
        PushI        0                         
        Label        -compare-1282-arg2        
        PushI        99                        
        PushI        1                         
        And                                    
        Label        -compare-1282-sub         
        BEqual                                 
        JumpFalse    -compare-1282-true        
        Jump         -compare-1282-false       
        Label        -compare-1282-true        
        PushI        1                         
        Jump         -compare-1282-join        
        Label        -compare-1282-false       
        PushI        0                         
        Jump         -compare-1282-join        
        Label        -compare-1282-join        
        JumpTrue     -print-boolean-1283-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1283-join  
        Label        -print-boolean-1283-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1283-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1284-arg1        
        PushI        0                         
        Label        -compare-1284-arg2        
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% czero
        LoadC                                  
        PushI        1                         
        And                                    
        Label        -compare-1284-sub         
        BEqual                                 
        JumpFalse    -compare-1284-true        
        Jump         -compare-1284-false       
        Label        -compare-1284-true        
        PushI        1                         
        Jump         -compare-1284-join        
        Label        -compare-1284-false       
        PushI        0                         
        Jump         -compare-1284-join        
        Label        -compare-1284-join        
        JumpTrue     -print-boolean-1285-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1285-join  
        Label        -print-boolean-1285-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1285-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1286-arg1        
        PushI        52                        
        PushI        1                         
        And                                    
        Label        -compare-1286-arg2        
        PushI        87                        
        PushI        1                         
        And                                    
        Label        -compare-1286-sub         
        BEqual                                 
        JumpFalse    -compare-1286-true        
        Jump         -compare-1286-false       
        Label        -compare-1286-true        
        PushI        1                         
        Jump         -compare-1286-join        
        Label        -compare-1286-false       
        PushI        0                         
        Jump         -compare-1286-join        
        Label        -compare-1286-join        
        JumpTrue     -print-boolean-1287-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1287-join  
        Label        -print-boolean-1287-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1287-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1288-arg1        
        PushI        123                       
        PushI        1                         
        And                                    
        Label        -compare-1288-arg2        
        PushI        75                        
        PushI        1                         
        And                                    
        Label        -compare-1288-sub         
        BEqual                                 
        JumpFalse    -compare-1288-true        
        Jump         -compare-1288-false       
        Label        -compare-1288-true        
        PushI        1                         
        Jump         -compare-1288-join        
        Label        -compare-1288-false       
        PushI        0                         
        Jump         -compare-1288-join        
        Label        -compare-1288-join        
        JumpTrue     -print-boolean-1289-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1289-join  
        Label        -print-boolean-1289-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1289-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1290-arg1        
        PushI        82                        
        PushI        1                         
        And                                    
        Label        -compare-1290-arg2        
        PushI        119                       
        PushI        1                         
        And                                    
        Label        -compare-1290-sub         
        BEqual                                 
        JumpFalse    -compare-1290-true        
        Jump         -compare-1290-false       
        Label        -compare-1290-true        
        PushI        1                         
        Jump         -compare-1290-join        
        Label        -compare-1290-false       
        PushI        0                         
        Jump         -compare-1290-join        
        Label        -compare-1290-join        
        JumpTrue     -print-boolean-1291-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1291-join  
        Label        -print-boolean-1291-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1291-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1292-arg1        
        PushI        123                       
        PushI        1                         
        And                                    
        Label        -compare-1292-arg2        
        PushI        121                       
        PushI        1                         
        And                                    
        Label        -compare-1292-sub         
        BEqual                                 
        JumpFalse    -compare-1292-true        
        Jump         -compare-1292-false       
        Label        -compare-1292-true        
        PushI        1                         
        Jump         -compare-1292-join        
        Label        -compare-1292-false       
        PushI        0                         
        Jump         -compare-1292-join        
        Label        -compare-1292-join        
        JumpTrue     -print-boolean-1293-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1293-join  
        Label        -print-boolean-1293-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1293-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1294-arg1        
        PushI        88                        
        PushI        1                         
        And                                    
        Label        -compare-1294-arg2        
        PushI        56                        
        PushI        1                         
        And                                    
        Label        -compare-1294-sub         
        BEqual                                 
        JumpFalse    -compare-1294-true        
        Jump         -compare-1294-false       
        Label        -compare-1294-true        
        PushI        1                         
        Jump         -compare-1294-join        
        Label        -compare-1294-false       
        PushI        0                         
        Jump         -compare-1294-join        
        Label        -compare-1294-join        
        JumpTrue     -print-boolean-1295-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1295-join  
        Label        -print-boolean-1295-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1295-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1296-arg1        
        PushI        88                        
        PushI        1                         
        And                                    
        Label        -compare-1296-arg2        
        PushI        101                       
        PushI        1                         
        And                                    
        Label        -compare-1296-sub         
        BEqual                                 
        JumpFalse    -compare-1296-true        
        Jump         -compare-1296-false       
        Label        -compare-1296-true        
        PushI        1                         
        Jump         -compare-1296-join        
        Label        -compare-1296-false       
        PushI        0                         
        Jump         -compare-1296-join        
        Label        -compare-1296-join        
        JumpTrue     -print-boolean-1297-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1297-join  
        Label        -print-boolean-1297-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1297-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1298-arg1        
        PushI        61                        
        PushI        1                         
        And                                    
        Label        -compare-1298-arg2        
        PushI        79                        
        PushI        1                         
        And                                    
        Label        -compare-1298-sub         
        BEqual                                 
        JumpFalse    -compare-1298-true        
        Jump         -compare-1298-false       
        Label        -compare-1298-true        
        PushI        1                         
        Jump         -compare-1298-join        
        Label        -compare-1298-false       
        PushI        0                         
        Jump         -compare-1298-join        
        Label        -compare-1298-join        
        JumpTrue     -print-boolean-1299-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1299-join  
        Label        -print-boolean-1299-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1299-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1300-arg1        
        PushI        122                       
        PushI        1                         
        And                                    
        Label        -compare-1300-arg2        
        PushI        81                        
        PushI        1                         
        And                                    
        Label        -compare-1300-sub         
        BEqual                                 
        JumpFalse    -compare-1300-true        
        Jump         -compare-1300-false       
        Label        -compare-1300-true        
        PushI        1                         
        Jump         -compare-1300-join        
        Label        -compare-1300-false       
        PushI        0                         
        Jump         -compare-1300-join        
        Label        -compare-1300-join        
        JumpTrue     -print-boolean-1301-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1301-join  
        Label        -print-boolean-1301-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1301-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1302-arg1        
        PushI        59                        
        PushI        1                         
        And                                    
        Label        -compare-1302-arg2        
        PushI        100                       
        PushI        1                         
        And                                    
        Label        -compare-1302-sub         
        BEqual                                 
        JumpFalse    -compare-1302-true        
        Jump         -compare-1302-false       
        Label        -compare-1302-true        
        PushI        1                         
        Jump         -compare-1302-join        
        Label        -compare-1302-false       
        PushI        0                         
        Jump         -compare-1302-join        
        Label        -compare-1302-join        
        JumpTrue     -print-boolean-1303-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1303-join  
        Label        -print-boolean-1303-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1303-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1304-arg1        
        PushI        111                       
        PushI        1                         
        And                                    
        Label        -compare-1304-arg2        
        PushI        108                       
        PushI        1                         
        And                                    
        Label        -compare-1304-sub         
        BEqual                                 
        JumpFalse    -compare-1304-true        
        Jump         -compare-1304-false       
        Label        -compare-1304-true        
        PushI        1                         
        Jump         -compare-1304-join        
        Label        -compare-1304-false       
        PushI        0                         
        Jump         -compare-1304-join        
        Label        -compare-1304-join        
        JumpTrue     -print-boolean-1305-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1305-join  
        Label        -print-boolean-1305-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1305-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1306-arg1        
        PushI        74                        
        PushI        1                         
        And                                    
        Label        -compare-1306-arg2        
        PushI        91                        
        PushI        1                         
        And                                    
        Label        -compare-1306-sub         
        BEqual                                 
        JumpFalse    -compare-1306-true        
        Jump         -compare-1306-false       
        Label        -compare-1306-true        
        PushI        1                         
        Jump         -compare-1306-join        
        Label        -compare-1306-false       
        PushI        0                         
        Jump         -compare-1306-join        
        Label        -compare-1306-join        
        JumpTrue     -print-boolean-1307-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1307-join  
        Label        -print-boolean-1307-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1307-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1308-arg1        
        PushI        49                        
        PushI        1                         
        And                                    
        Label        -compare-1308-arg2        
        PushI        90                        
        PushI        1                         
        And                                    
        Label        -compare-1308-sub         
        BEqual                                 
        JumpFalse    -compare-1308-true        
        Jump         -compare-1308-false       
        Label        -compare-1308-true        
        PushI        1                         
        Jump         -compare-1308-join        
        Label        -compare-1308-false       
        PushI        0                         
        Jump         -compare-1308-join        
        Label        -compare-1308-join        
        JumpTrue     -print-boolean-1309-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1309-join  
        Label        -print-boolean-1309-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1309-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
