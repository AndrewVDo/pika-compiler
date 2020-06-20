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
        Label        -compare-1310-arg1        
        PushI        18                        
        PushI        1                         
        And                                    
        Label        -compare-1310-arg2        
        PushI        0                         
        Label        -compare-1310-sub         
        BEqual                                 
        JumpFalse    -compare-1310-true        
        Jump         -compare-1310-false       
        Label        -compare-1310-true        
        PushI        1                         
        Jump         -compare-1310-join        
        Label        -compare-1310-false       
        PushI        0                         
        Jump         -compare-1310-join        
        Label        -compare-1310-join        
        JumpTrue     -print-boolean-1311-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1311-join  
        Label        -print-boolean-1311-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1311-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1312-arg1        
        PushI        60                        
        PushI        1                         
        And                                    
        Label        -compare-1312-arg2        
        PushI        1                         
        Label        -compare-1312-sub         
        BEqual                                 
        JumpFalse    -compare-1312-true        
        Jump         -compare-1312-false       
        Label        -compare-1312-true        
        PushI        1                         
        Jump         -compare-1312-join        
        Label        -compare-1312-false       
        PushI        0                         
        Jump         -compare-1312-join        
        Label        -compare-1312-join        
        JumpTrue     -print-boolean-1313-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1313-join  
        Label        -print-boolean-1313-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1313-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1314-arg1        
        PushI        76                        
        PushI        1                         
        And                                    
        Label        -compare-1314-arg2        
        PushI        0                         
        Label        -compare-1314-sub         
        BEqual                                 
        JumpFalse    -compare-1314-true        
        Jump         -compare-1314-false       
        Label        -compare-1314-true        
        PushI        1                         
        Jump         -compare-1314-join        
        Label        -compare-1314-false       
        PushI        0                         
        Jump         -compare-1314-join        
        Label        -compare-1314-join        
        JumpTrue     -print-boolean-1315-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1315-join  
        Label        -print-boolean-1315-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1315-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1316-arg1        
        PushI        2                         
        PushI        1                         
        And                                    
        Label        -compare-1316-arg2        
        PushI        1                         
        Label        -compare-1316-sub         
        BEqual                                 
        JumpFalse    -compare-1316-true        
        Jump         -compare-1316-false       
        Label        -compare-1316-true        
        PushI        1                         
        Jump         -compare-1316-join        
        Label        -compare-1316-false       
        PushI        0                         
        Jump         -compare-1316-join        
        Label        -compare-1316-join        
        JumpTrue     -print-boolean-1317-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1317-join  
        Label        -print-boolean-1317-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1317-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1318-arg1        
        PushI        74                        
        PushI        1                         
        And                                    
        Label        -compare-1318-arg2        
        PushI        0                         
        Label        -compare-1318-sub         
        BEqual                                 
        JumpFalse    -compare-1318-true        
        Jump         -compare-1318-false       
        Label        -compare-1318-true        
        PushI        1                         
        Jump         -compare-1318-join        
        Label        -compare-1318-false       
        PushI        0                         
        Jump         -compare-1318-join        
        Label        -compare-1318-join        
        JumpTrue     -print-boolean-1319-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1319-join  
        Label        -print-boolean-1319-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1319-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1320-arg1        
        PushI        87                        
        PushI        1                         
        And                                    
        Label        -compare-1320-arg2        
        PushI        1                         
        Label        -compare-1320-sub         
        BEqual                                 
        JumpFalse    -compare-1320-true        
        Jump         -compare-1320-false       
        Label        -compare-1320-true        
        PushI        1                         
        Jump         -compare-1320-join        
        Label        -compare-1320-false       
        PushI        0                         
        Jump         -compare-1320-join        
        Label        -compare-1320-join        
        JumpTrue     -print-boolean-1321-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1321-join  
        Label        -print-boolean-1321-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1321-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1322-arg1        
        PushI        24                        
        PushI        1                         
        And                                    
        Label        -compare-1322-arg2        
        PushI        1                         
        Label        -compare-1322-sub         
        BEqual                                 
        JumpFalse    -compare-1322-true        
        Jump         -compare-1322-false       
        Label        -compare-1322-true        
        PushI        1                         
        Jump         -compare-1322-join        
        Label        -compare-1322-false       
        PushI        0                         
        Jump         -compare-1322-join        
        Label        -compare-1322-join        
        JumpTrue     -print-boolean-1323-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1323-join  
        Label        -print-boolean-1323-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1323-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1324-arg1        
        PushI        83                        
        PushI        1                         
        And                                    
        Label        -compare-1324-arg2        
        PushI        1                         
        Label        -compare-1324-sub         
        BEqual                                 
        JumpFalse    -compare-1324-true        
        Jump         -compare-1324-false       
        Label        -compare-1324-true        
        PushI        1                         
        Jump         -compare-1324-join        
        Label        -compare-1324-false       
        PushI        0                         
        Jump         -compare-1324-join        
        Label        -compare-1324-join        
        JumpTrue     -print-boolean-1325-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1325-join  
        Label        -print-boolean-1325-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1325-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1326-arg1        
        PushI        60                        
        PushI        1                         
        And                                    
        Label        -compare-1326-arg2        
        PushI        0                         
        Label        -compare-1326-sub         
        BEqual                                 
        JumpFalse    -compare-1326-true        
        Jump         -compare-1326-false       
        Label        -compare-1326-true        
        PushI        1                         
        Jump         -compare-1326-join        
        Label        -compare-1326-false       
        PushI        0                         
        Jump         -compare-1326-join        
        Label        -compare-1326-join        
        JumpTrue     -print-boolean-1327-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1327-join  
        Label        -print-boolean-1327-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1327-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1328-arg1        
        PushI        32                        
        PushI        1                         
        And                                    
        Label        -compare-1328-arg2        
        PushI        0                         
        Label        -compare-1328-sub         
        BEqual                                 
        JumpFalse    -compare-1328-true        
        Jump         -compare-1328-false       
        Label        -compare-1328-true        
        PushI        1                         
        Jump         -compare-1328-join        
        Label        -compare-1328-false       
        PushI        0                         
        Jump         -compare-1328-join        
        Label        -compare-1328-join        
        JumpTrue     -print-boolean-1329-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1329-join  
        Label        -print-boolean-1329-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1329-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1330-arg1        
        PushI        89                        
        PushI        1                         
        And                                    
        Label        -compare-1330-arg2        
        PushI        0                         
        Label        -compare-1330-sub         
        BEqual                                 
        JumpFalse    -compare-1330-true        
        Jump         -compare-1330-false       
        Label        -compare-1330-true        
        PushI        1                         
        Jump         -compare-1330-join        
        Label        -compare-1330-false       
        PushI        0                         
        Jump         -compare-1330-join        
        Label        -compare-1330-join        
        JumpTrue     -print-boolean-1331-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1331-join  
        Label        -print-boolean-1331-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1331-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1332-arg1        
        PushI        80                        
        PushI        1                         
        And                                    
        Label        -compare-1332-arg2        
        PushI        0                         
        Label        -compare-1332-sub         
        BEqual                                 
        JumpFalse    -compare-1332-true        
        Jump         -compare-1332-false       
        Label        -compare-1332-true        
        PushI        1                         
        Jump         -compare-1332-join        
        Label        -compare-1332-false       
        PushI        0                         
        Jump         -compare-1332-join        
        Label        -compare-1332-join        
        JumpTrue     -print-boolean-1333-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1333-join  
        Label        -print-boolean-1333-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1333-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1334-arg1        
        PushI        0                         
        Label        -compare-1334-arg2        
        PushI        37                        
        PushI        1                         
        And                                    
        Label        -compare-1334-sub         
        BEqual                                 
        JumpFalse    -compare-1334-true        
        Jump         -compare-1334-false       
        Label        -compare-1334-true        
        PushI        1                         
        Jump         -compare-1334-join        
        Label        -compare-1334-false       
        PushI        0                         
        Jump         -compare-1334-join        
        Label        -compare-1334-join        
        JumpTrue     -print-boolean-1335-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1335-join  
        Label        -print-boolean-1335-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1335-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1336-arg1        
        PushI        1                         
        Label        -compare-1336-arg2        
        PushI        29                        
        PushI        1                         
        And                                    
        Label        -compare-1336-sub         
        BEqual                                 
        JumpFalse    -compare-1336-true        
        Jump         -compare-1336-false       
        Label        -compare-1336-true        
        PushI        1                         
        Jump         -compare-1336-join        
        Label        -compare-1336-false       
        PushI        0                         
        Jump         -compare-1336-join        
        Label        -compare-1336-join        
        JumpTrue     -print-boolean-1337-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1337-join  
        Label        -print-boolean-1337-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1337-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1338-arg1        
        PushI        1                         
        Label        -compare-1338-arg2        
        PushI        68                        
        PushI        1                         
        And                                    
        Label        -compare-1338-sub         
        BEqual                                 
        JumpFalse    -compare-1338-true        
        Jump         -compare-1338-false       
        Label        -compare-1338-true        
        PushI        1                         
        Jump         -compare-1338-join        
        Label        -compare-1338-false       
        PushI        0                         
        Jump         -compare-1338-join        
        Label        -compare-1338-join        
        JumpTrue     -print-boolean-1339-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1339-join  
        Label        -print-boolean-1339-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1339-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1340-arg1        
        PushI        1                         
        Label        -compare-1340-arg2        
        PushI        59                        
        PushI        1                         
        And                                    
        Label        -compare-1340-sub         
        BEqual                                 
        JumpFalse    -compare-1340-true        
        Jump         -compare-1340-false       
        Label        -compare-1340-true        
        PushI        1                         
        Jump         -compare-1340-join        
        Label        -compare-1340-false       
        PushI        0                         
        Jump         -compare-1340-join        
        Label        -compare-1340-join        
        JumpTrue     -print-boolean-1341-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1341-join  
        Label        -print-boolean-1341-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1341-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1342-arg1        
        PushI        0                         
        Label        -compare-1342-arg2        
        PushI        69                        
        PushI        1                         
        And                                    
        Label        -compare-1342-sub         
        BEqual                                 
        JumpFalse    -compare-1342-true        
        Jump         -compare-1342-false       
        Label        -compare-1342-true        
        PushI        1                         
        Jump         -compare-1342-join        
        Label        -compare-1342-false       
        PushI        0                         
        Jump         -compare-1342-join        
        Label        -compare-1342-join        
        JumpTrue     -print-boolean-1343-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1343-join  
        Label        -print-boolean-1343-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1343-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1344-arg1        
        PushI        0                         
        Label        -compare-1344-arg2        
        PushI        48                        
        PushI        1                         
        And                                    
        Label        -compare-1344-sub         
        BEqual                                 
        JumpFalse    -compare-1344-true        
        Jump         -compare-1344-false       
        Label        -compare-1344-true        
        PushI        1                         
        Jump         -compare-1344-join        
        Label        -compare-1344-false       
        PushI        0                         
        Jump         -compare-1344-join        
        Label        -compare-1344-join        
        JumpTrue     -print-boolean-1345-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1345-join  
        Label        -print-boolean-1345-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1345-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1346-arg1        
        PushI        1                         
        Label        -compare-1346-arg2        
        PushI        74                        
        PushI        1                         
        And                                    
        Label        -compare-1346-sub         
        BEqual                                 
        JumpFalse    -compare-1346-true        
        Jump         -compare-1346-false       
        Label        -compare-1346-true        
        PushI        1                         
        Jump         -compare-1346-join        
        Label        -compare-1346-false       
        PushI        0                         
        Jump         -compare-1346-join        
        Label        -compare-1346-join        
        JumpTrue     -print-boolean-1347-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1347-join  
        Label        -print-boolean-1347-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1347-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1348-arg1        
        PushI        0                         
        Label        -compare-1348-arg2        
        PushI        36                        
        PushI        1                         
        And                                    
        Label        -compare-1348-sub         
        BEqual                                 
        JumpFalse    -compare-1348-true        
        Jump         -compare-1348-false       
        Label        -compare-1348-true        
        PushI        1                         
        Jump         -compare-1348-join        
        Label        -compare-1348-false       
        PushI        0                         
        Jump         -compare-1348-join        
        Label        -compare-1348-join        
        JumpTrue     -print-boolean-1349-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1349-join  
        Label        -print-boolean-1349-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1349-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1350-arg1        
        PushI        1                         
        Label        -compare-1350-arg2        
        PushI        9                         
        PushI        1                         
        And                                    
        Label        -compare-1350-sub         
        BEqual                                 
        JumpFalse    -compare-1350-true        
        Jump         -compare-1350-false       
        Label        -compare-1350-true        
        PushI        1                         
        Jump         -compare-1350-join        
        Label        -compare-1350-false       
        PushI        0                         
        Jump         -compare-1350-join        
        Label        -compare-1350-join        
        JumpTrue     -print-boolean-1351-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1351-join  
        Label        -print-boolean-1351-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1351-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1352-arg1        
        PushI        1                         
        Label        -compare-1352-arg2        
        PushI        79                        
        PushI        1                         
        And                                    
        Label        -compare-1352-sub         
        BEqual                                 
        JumpFalse    -compare-1352-true        
        Jump         -compare-1352-false       
        Label        -compare-1352-true        
        PushI        1                         
        Jump         -compare-1352-join        
        Label        -compare-1352-false       
        PushI        0                         
        Jump         -compare-1352-join        
        Label        -compare-1352-join        
        JumpTrue     -print-boolean-1353-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1353-join  
        Label        -print-boolean-1353-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1353-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1354-arg1        
        PushI        0                         
        Label        -compare-1354-arg2        
        PushI        36                        
        PushI        1                         
        And                                    
        Label        -compare-1354-sub         
        BEqual                                 
        JumpFalse    -compare-1354-true        
        Jump         -compare-1354-false       
        Label        -compare-1354-true        
        PushI        1                         
        Jump         -compare-1354-join        
        Label        -compare-1354-false       
        PushI        0                         
        Jump         -compare-1354-join        
        Label        -compare-1354-join        
        JumpTrue     -print-boolean-1355-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1355-join  
        Label        -print-boolean-1355-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1355-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1356-arg1        
        PushI        1                         
        Label        -compare-1356-arg2        
        PushI        72                        
        PushI        1                         
        And                                    
        Label        -compare-1356-sub         
        BEqual                                 
        JumpFalse    -compare-1356-true        
        Jump         -compare-1356-false       
        Label        -compare-1356-true        
        PushI        1                         
        Jump         -compare-1356-join        
        Label        -compare-1356-false       
        PushI        0                         
        Jump         -compare-1356-join        
        Label        -compare-1356-join        
        JumpTrue     -print-boolean-1357-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1357-join  
        Label        -print-boolean-1357-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1357-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1358-arg1        
        PushI        13                        
        PushI        1                         
        And                                    
        Label        -compare-1358-arg2        
        PushI        27                        
        PushI        1                         
        And                                    
        Label        -compare-1358-sub         
        BEqual                                 
        JumpFalse    -compare-1358-true        
        Jump         -compare-1358-false       
        Label        -compare-1358-true        
        PushI        1                         
        Jump         -compare-1358-join        
        Label        -compare-1358-false       
        PushI        0                         
        Jump         -compare-1358-join        
        Label        -compare-1358-join        
        JumpTrue     -print-boolean-1359-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1359-join  
        Label        -print-boolean-1359-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1359-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1360-arg1        
        PushI        70                        
        PushI        1                         
        And                                    
        Label        -compare-1360-arg2        
        PushI        8                         
        PushI        1                         
        And                                    
        Label        -compare-1360-sub         
        BEqual                                 
        JumpFalse    -compare-1360-true        
        Jump         -compare-1360-false       
        Label        -compare-1360-true        
        PushI        1                         
        Jump         -compare-1360-join        
        Label        -compare-1360-false       
        PushI        0                         
        Jump         -compare-1360-join        
        Label        -compare-1360-join        
        JumpTrue     -print-boolean-1361-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1361-join  
        Label        -print-boolean-1361-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1361-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1362-arg1        
        PushI        65                        
        PushI        1                         
        And                                    
        Label        -compare-1362-arg2        
        PushI        75                        
        PushI        1                         
        And                                    
        Label        -compare-1362-sub         
        BEqual                                 
        JumpFalse    -compare-1362-true        
        Jump         -compare-1362-false       
        Label        -compare-1362-true        
        PushI        1                         
        Jump         -compare-1362-join        
        Label        -compare-1362-false       
        PushI        0                         
        Jump         -compare-1362-join        
        Label        -compare-1362-join        
        JumpTrue     -print-boolean-1363-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1363-join  
        Label        -print-boolean-1363-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1363-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1364-arg1        
        PushI        92                        
        PushI        1                         
        And                                    
        Label        -compare-1364-arg2        
        PushI        98                        
        PushI        1                         
        And                                    
        Label        -compare-1364-sub         
        BEqual                                 
        JumpFalse    -compare-1364-true        
        Jump         -compare-1364-false       
        Label        -compare-1364-true        
        PushI        1                         
        Jump         -compare-1364-join        
        Label        -compare-1364-false       
        PushI        0                         
        Jump         -compare-1364-join        
        Label        -compare-1364-join        
        JumpTrue     -print-boolean-1365-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1365-join  
        Label        -print-boolean-1365-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1365-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1366-arg1        
        PushI        72                        
        PushI        1                         
        And                                    
        Label        -compare-1366-arg2        
        PushI        67                        
        PushI        1                         
        And                                    
        Label        -compare-1366-sub         
        BEqual                                 
        JumpFalse    -compare-1366-true        
        Jump         -compare-1366-false       
        Label        -compare-1366-true        
        PushI        1                         
        Jump         -compare-1366-join        
        Label        -compare-1366-false       
        PushI        0                         
        Jump         -compare-1366-join        
        Label        -compare-1366-join        
        JumpTrue     -print-boolean-1367-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1367-join  
        Label        -print-boolean-1367-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1367-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1368-arg1        
        PushI        35                        
        PushI        1                         
        And                                    
        Label        -compare-1368-arg2        
        PushI        64                        
        PushI        1                         
        And                                    
        Label        -compare-1368-sub         
        BEqual                                 
        JumpFalse    -compare-1368-true        
        Jump         -compare-1368-false       
        Label        -compare-1368-true        
        PushI        1                         
        Jump         -compare-1368-join        
        Label        -compare-1368-false       
        PushI        0                         
        Jump         -compare-1368-join        
        Label        -compare-1368-join        
        JumpTrue     -print-boolean-1369-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1369-join  
        Label        -print-boolean-1369-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1369-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1370-arg1        
        PushI        77                        
        PushI        1                         
        And                                    
        Label        -compare-1370-arg2        
        PushI        19                        
        PushI        1                         
        And                                    
        Label        -compare-1370-sub         
        BEqual                                 
        JumpFalse    -compare-1370-true        
        Jump         -compare-1370-false       
        Label        -compare-1370-true        
        PushI        1                         
        Jump         -compare-1370-join        
        Label        -compare-1370-false       
        PushI        0                         
        Jump         -compare-1370-join        
        Label        -compare-1370-join        
        JumpTrue     -print-boolean-1371-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1371-join  
        Label        -print-boolean-1371-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1371-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1372-arg1        
        PushI        98                        
        PushI        1                         
        And                                    
        Label        -compare-1372-arg2        
        PushI        14                        
        PushI        1                         
        And                                    
        Label        -compare-1372-sub         
        BEqual                                 
        JumpFalse    -compare-1372-true        
        Jump         -compare-1372-false       
        Label        -compare-1372-true        
        PushI        1                         
        Jump         -compare-1372-join        
        Label        -compare-1372-false       
        PushI        0                         
        Jump         -compare-1372-join        
        Label        -compare-1372-join        
        JumpTrue     -print-boolean-1373-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1373-join  
        Label        -print-boolean-1373-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1373-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1374-arg1        
        PushI        16                        
        PushI        1                         
        And                                    
        Label        -compare-1374-arg2        
        PushI        1                         
        PushI        1                         
        And                                    
        Label        -compare-1374-sub         
        BEqual                                 
        JumpFalse    -compare-1374-true        
        Jump         -compare-1374-false       
        Label        -compare-1374-true        
        PushI        1                         
        Jump         -compare-1374-join        
        Label        -compare-1374-false       
        PushI        0                         
        Jump         -compare-1374-join        
        Label        -compare-1374-join        
        JumpTrue     -print-boolean-1375-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1375-join  
        Label        -print-boolean-1375-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1375-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1376-arg1        
        PushI        52                        
        PushI        1                         
        And                                    
        Label        -compare-1376-arg2        
        PushI        64                        
        PushI        1                         
        And                                    
        Label        -compare-1376-sub         
        BEqual                                 
        JumpFalse    -compare-1376-true        
        Jump         -compare-1376-false       
        Label        -compare-1376-true        
        PushI        1                         
        Jump         -compare-1376-join        
        Label        -compare-1376-false       
        PushI        0                         
        Jump         -compare-1376-join        
        Label        -compare-1376-join        
        JumpTrue     -print-boolean-1377-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1377-join  
        Label        -print-boolean-1377-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1377-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1378-arg1        
        PushI        53                        
        PushI        1                         
        And                                    
        Label        -compare-1378-arg2        
        PushI        93                        
        PushI        1                         
        And                                    
        Label        -compare-1378-sub         
        BEqual                                 
        JumpFalse    -compare-1378-true        
        Jump         -compare-1378-false       
        Label        -compare-1378-true        
        PushI        1                         
        Jump         -compare-1378-join        
        Label        -compare-1378-false       
        PushI        0                         
        Jump         -compare-1378-join        
        Label        -compare-1378-join        
        JumpTrue     -print-boolean-1379-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1379-join  
        Label        -print-boolean-1379-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1379-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1380-arg1        
        PushI        86                        
        PushI        1                         
        And                                    
        Label        -compare-1380-arg2        
        PushI        83                        
        PushI        1                         
        And                                    
        Label        -compare-1380-sub         
        BEqual                                 
        JumpFalse    -compare-1380-true        
        Jump         -compare-1380-false       
        Label        -compare-1380-true        
        PushI        1                         
        Jump         -compare-1380-join        
        Label        -compare-1380-false       
        PushI        0                         
        Jump         -compare-1380-join        
        Label        -compare-1380-join        
        JumpTrue     -print-boolean-1381-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1381-join  
        Label        -print-boolean-1381-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1381-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
