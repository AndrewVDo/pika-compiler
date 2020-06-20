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
        Label        -compare-1382-arg1        
        PushI        98                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1382-arg2        
        PushI        87                        
        Label        -compare-1382-sub         
        Subtract                               
        JumpFalse    -compare-1382-true        
        Jump         -compare-1382-false       
        Label        -compare-1382-true        
        PushI        1                         
        Jump         -compare-1382-join        
        Label        -compare-1382-false       
        PushI        0                         
        Jump         -compare-1382-join        
        Label        -compare-1382-join        
        JumpTrue     -print-boolean-1383-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1383-join  
        Label        -print-boolean-1383-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1383-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1384-arg1        
        PushI        4                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1384-arg2        
        PushI        34                        
        Label        -compare-1384-sub         
        Subtract                               
        JumpFalse    -compare-1384-true        
        Jump         -compare-1384-false       
        Label        -compare-1384-true        
        PushI        1                         
        Jump         -compare-1384-join        
        Label        -compare-1384-false       
        PushI        0                         
        Jump         -compare-1384-join        
        Label        -compare-1384-join        
        JumpTrue     -print-boolean-1385-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1385-join  
        Label        -print-boolean-1385-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1385-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1386-arg1        
        PushI        80                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1386-arg2        
        PushI        113                       
        Label        -compare-1386-sub         
        Subtract                               
        JumpFalse    -compare-1386-true        
        Jump         -compare-1386-false       
        Label        -compare-1386-true        
        PushI        1                         
        Jump         -compare-1386-join        
        Label        -compare-1386-false       
        PushI        0                         
        Jump         -compare-1386-join        
        Label        -compare-1386-join        
        JumpTrue     -print-boolean-1387-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1387-join  
        Label        -print-boolean-1387-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1387-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1388-arg1        
        PushI        14                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1388-arg2        
        PushI        59                        
        Label        -compare-1388-sub         
        Subtract                               
        JumpFalse    -compare-1388-true        
        Jump         -compare-1388-false       
        Label        -compare-1388-true        
        PushI        1                         
        Jump         -compare-1388-join        
        Label        -compare-1388-false       
        PushI        0                         
        Jump         -compare-1388-join        
        Label        -compare-1388-join        
        JumpTrue     -print-boolean-1389-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1389-join  
        Label        -print-boolean-1389-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1389-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1390-arg1        
        PushI        62                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1390-arg2        
        PushI        73                        
        Label        -compare-1390-sub         
        Subtract                               
        JumpFalse    -compare-1390-true        
        Jump         -compare-1390-false       
        Label        -compare-1390-true        
        PushI        1                         
        Jump         -compare-1390-join        
        Label        -compare-1390-false       
        PushI        0                         
        Jump         -compare-1390-join        
        Label        -compare-1390-join        
        JumpTrue     -print-boolean-1391-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1391-join  
        Label        -print-boolean-1391-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1391-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1392-arg1        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1392-arg2        
        PushI        46                        
        Label        -compare-1392-sub         
        Subtract                               
        JumpFalse    -compare-1392-true        
        Jump         -compare-1392-false       
        Label        -compare-1392-true        
        PushI        1                         
        Jump         -compare-1392-join        
        Label        -compare-1392-false       
        PushI        0                         
        Jump         -compare-1392-join        
        Label        -compare-1392-join        
        JumpTrue     -print-boolean-1393-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1393-join  
        Label        -print-boolean-1393-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1393-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1394-arg1        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1394-arg2        
        PushI        32                        
        Label        -compare-1394-sub         
        Subtract                               
        JumpFalse    -compare-1394-true        
        Jump         -compare-1394-false       
        Label        -compare-1394-true        
        PushI        1                         
        Jump         -compare-1394-join        
        Label        -compare-1394-false       
        PushI        0                         
        Jump         -compare-1394-join        
        Label        -compare-1394-join        
        JumpTrue     -print-boolean-1395-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1395-join  
        Label        -print-boolean-1395-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1395-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1396-arg1        
        PushI        49                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1396-arg2        
        PushI        82                        
        Label        -compare-1396-sub         
        Subtract                               
        JumpFalse    -compare-1396-true        
        Jump         -compare-1396-false       
        Label        -compare-1396-true        
        PushI        1                         
        Jump         -compare-1396-join        
        Label        -compare-1396-false       
        PushI        0                         
        Jump         -compare-1396-join        
        Label        -compare-1396-join        
        JumpTrue     -print-boolean-1397-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1397-join  
        Label        -print-boolean-1397-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1397-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1398-arg1        
        PushI        12                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1398-arg2        
        PushI        123                       
        Label        -compare-1398-sub         
        Subtract                               
        JumpFalse    -compare-1398-true        
        Jump         -compare-1398-false       
        Label        -compare-1398-true        
        PushI        1                         
        Jump         -compare-1398-join        
        Label        -compare-1398-false       
        PushI        0                         
        Jump         -compare-1398-join        
        Label        -compare-1398-join        
        JumpTrue     -print-boolean-1399-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1399-join  
        Label        -print-boolean-1399-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1399-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1400-arg1        
        PushI        54                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1400-arg2        
        PushI        124                       
        Label        -compare-1400-sub         
        Subtract                               
        JumpFalse    -compare-1400-true        
        Jump         -compare-1400-false       
        Label        -compare-1400-true        
        PushI        1                         
        Jump         -compare-1400-join        
        Label        -compare-1400-false       
        PushI        0                         
        Jump         -compare-1400-join        
        Label        -compare-1400-join        
        JumpTrue     -print-boolean-1401-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1401-join  
        Label        -print-boolean-1401-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1401-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1402-arg1        
        PushI        3                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1402-arg2        
        PushI        49                        
        Label        -compare-1402-sub         
        Subtract                               
        JumpFalse    -compare-1402-true        
        Jump         -compare-1402-false       
        Label        -compare-1402-true        
        PushI        1                         
        Jump         -compare-1402-join        
        Label        -compare-1402-false       
        PushI        0                         
        Jump         -compare-1402-join        
        Label        -compare-1402-join        
        JumpTrue     -print-boolean-1403-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1403-join  
        Label        -print-boolean-1403-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1403-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1404-arg1        
        PushI        38                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1404-arg2        
        PushI        32                        
        Label        -compare-1404-sub         
        Subtract                               
        JumpFalse    -compare-1404-true        
        Jump         -compare-1404-false       
        Label        -compare-1404-true        
        PushI        1                         
        Jump         -compare-1404-join        
        Label        -compare-1404-false       
        PushI        0                         
        Jump         -compare-1404-join        
        Label        -compare-1404-join        
        JumpTrue     -print-boolean-1405-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1405-join  
        Label        -print-boolean-1405-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1405-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1406-arg1        
        PushI        97                        
        Label        -compare-1406-arg2        
        PushI        77                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1406-sub         
        Subtract                               
        JumpFalse    -compare-1406-true        
        Jump         -compare-1406-false       
        Label        -compare-1406-true        
        PushI        1                         
        Jump         -compare-1406-join        
        Label        -compare-1406-false       
        PushI        0                         
        Jump         -compare-1406-join        
        Label        -compare-1406-join        
        JumpTrue     -print-boolean-1407-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1407-join  
        Label        -print-boolean-1407-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1407-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1408-arg1        
        PushI        74                        
        Label        -compare-1408-arg2        
        PushI        3                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1408-sub         
        Subtract                               
        JumpFalse    -compare-1408-true        
        Jump         -compare-1408-false       
        Label        -compare-1408-true        
        PushI        1                         
        Jump         -compare-1408-join        
        Label        -compare-1408-false       
        PushI        0                         
        Jump         -compare-1408-join        
        Label        -compare-1408-join        
        JumpTrue     -print-boolean-1409-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1409-join  
        Label        -print-boolean-1409-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1409-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1410-arg1        
        PushI        62                        
        Label        -compare-1410-arg2        
        PushI        32                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1410-sub         
        Subtract                               
        JumpFalse    -compare-1410-true        
        Jump         -compare-1410-false       
        Label        -compare-1410-true        
        PushI        1                         
        Jump         -compare-1410-join        
        Label        -compare-1410-false       
        PushI        0                         
        Jump         -compare-1410-join        
        Label        -compare-1410-join        
        JumpTrue     -print-boolean-1411-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1411-join  
        Label        -print-boolean-1411-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1411-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1412-arg1        
        PushI        85                        
        Label        -compare-1412-arg2        
        PushI        67                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1412-sub         
        Subtract                               
        JumpFalse    -compare-1412-true        
        Jump         -compare-1412-false       
        Label        -compare-1412-true        
        PushI        1                         
        Jump         -compare-1412-join        
        Label        -compare-1412-false       
        PushI        0                         
        Jump         -compare-1412-join        
        Label        -compare-1412-join        
        JumpTrue     -print-boolean-1413-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1413-join  
        Label        -print-boolean-1413-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1413-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1414-arg1        
        PushI        50                        
        Label        -compare-1414-arg2        
        PushI        27                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1414-sub         
        Subtract                               
        JumpFalse    -compare-1414-true        
        Jump         -compare-1414-false       
        Label        -compare-1414-true        
        PushI        1                         
        Jump         -compare-1414-join        
        Label        -compare-1414-false       
        PushI        0                         
        Jump         -compare-1414-join        
        Label        -compare-1414-join        
        JumpTrue     -print-boolean-1415-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1415-join  
        Label        -print-boolean-1415-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1415-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1416-arg1        
        PushI        89                        
        Label        -compare-1416-arg2        
        PushI        21                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1416-sub         
        Subtract                               
        JumpFalse    -compare-1416-true        
        Jump         -compare-1416-false       
        Label        -compare-1416-true        
        PushI        1                         
        Jump         -compare-1416-join        
        Label        -compare-1416-false       
        PushI        0                         
        Jump         -compare-1416-join        
        Label        -compare-1416-join        
        JumpTrue     -print-boolean-1417-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1417-join  
        Label        -print-boolean-1417-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1417-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1418-arg1        
        PushI        81                        
        Label        -compare-1418-arg2        
        PushI        93                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1418-sub         
        Subtract                               
        JumpFalse    -compare-1418-true        
        Jump         -compare-1418-false       
        Label        -compare-1418-true        
        PushI        1                         
        Jump         -compare-1418-join        
        Label        -compare-1418-false       
        PushI        0                         
        Jump         -compare-1418-join        
        Label        -compare-1418-join        
        JumpTrue     -print-boolean-1419-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1419-join  
        Label        -print-boolean-1419-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1419-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1420-arg1        
        PushI        37                        
        Label        -compare-1420-arg2        
        PushI        66                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1420-sub         
        Subtract                               
        JumpFalse    -compare-1420-true        
        Jump         -compare-1420-false       
        Label        -compare-1420-true        
        PushI        1                         
        Jump         -compare-1420-join        
        Label        -compare-1420-false       
        PushI        0                         
        Jump         -compare-1420-join        
        Label        -compare-1420-join        
        JumpTrue     -print-boolean-1421-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1421-join  
        Label        -print-boolean-1421-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1421-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1422-arg1        
        PushI        124                       
        Label        -compare-1422-arg2        
        PushI        51                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1422-sub         
        Subtract                               
        JumpFalse    -compare-1422-true        
        Jump         -compare-1422-false       
        Label        -compare-1422-true        
        PushI        1                         
        Jump         -compare-1422-join        
        Label        -compare-1422-false       
        PushI        0                         
        Jump         -compare-1422-join        
        Label        -compare-1422-join        
        JumpTrue     -print-boolean-1423-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1423-join  
        Label        -print-boolean-1423-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1423-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1424-arg1        
        PushI        64                        
        Label        -compare-1424-arg2        
        PushI        27                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1424-sub         
        Subtract                               
        JumpFalse    -compare-1424-true        
        Jump         -compare-1424-false       
        Label        -compare-1424-true        
        PushI        1                         
        Jump         -compare-1424-join        
        Label        -compare-1424-false       
        PushI        0                         
        Jump         -compare-1424-join        
        Label        -compare-1424-join        
        JumpTrue     -print-boolean-1425-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1425-join  
        Label        -print-boolean-1425-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1425-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1426-arg1        
        PushI        93                        
        Label        -compare-1426-arg2        
        PushI        91                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1426-sub         
        Subtract                               
        JumpFalse    -compare-1426-true        
        Jump         -compare-1426-false       
        Label        -compare-1426-true        
        PushI        1                         
        Jump         -compare-1426-join        
        Label        -compare-1426-false       
        PushI        0                         
        Jump         -compare-1426-join        
        Label        -compare-1426-join        
        JumpTrue     -print-boolean-1427-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1427-join  
        Label        -print-boolean-1427-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1427-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1428-arg1        
        PushI        122                       
        Label        -compare-1428-arg2        
        PushI        23                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1428-sub         
        Subtract                               
        JumpFalse    -compare-1428-true        
        Jump         -compare-1428-false       
        Label        -compare-1428-true        
        PushI        1                         
        Jump         -compare-1428-join        
        Label        -compare-1428-false       
        PushI        0                         
        Jump         -compare-1428-join        
        Label        -compare-1428-join        
        JumpTrue     -print-boolean-1429-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1429-join  
        Label        -print-boolean-1429-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1429-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1430-arg1        
        PushI        32                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1430-arg2        
        PushI        83                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1430-sub         
        Subtract                               
        JumpFalse    -compare-1430-true        
        Jump         -compare-1430-false       
        Label        -compare-1430-true        
        PushI        1                         
        Jump         -compare-1430-join        
        Label        -compare-1430-false       
        PushI        0                         
        Jump         -compare-1430-join        
        Label        -compare-1430-join        
        JumpTrue     -print-boolean-1431-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1431-join  
        Label        -print-boolean-1431-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1431-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1432-arg1        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1432-arg2        
        PushI        33                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1432-sub         
        Subtract                               
        JumpFalse    -compare-1432-true        
        Jump         -compare-1432-false       
        Label        -compare-1432-true        
        PushI        1                         
        Jump         -compare-1432-join        
        Label        -compare-1432-false       
        PushI        0                         
        Jump         -compare-1432-join        
        Label        -compare-1432-join        
        JumpTrue     -print-boolean-1433-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1433-join  
        Label        -print-boolean-1433-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1433-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1434-arg1        
        PushI        70                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1434-arg2        
        PushI        83                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1434-sub         
        Subtract                               
        JumpFalse    -compare-1434-true        
        Jump         -compare-1434-false       
        Label        -compare-1434-true        
        PushI        1                         
        Jump         -compare-1434-join        
        Label        -compare-1434-false       
        PushI        0                         
        Jump         -compare-1434-join        
        Label        -compare-1434-join        
        JumpTrue     -print-boolean-1435-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1435-join  
        Label        -print-boolean-1435-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1435-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1436-arg1        
        PushI        14                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1436-arg2        
        PushI        69                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1436-sub         
        Subtract                               
        JumpFalse    -compare-1436-true        
        Jump         -compare-1436-false       
        Label        -compare-1436-true        
        PushI        1                         
        Jump         -compare-1436-join        
        Label        -compare-1436-false       
        PushI        0                         
        Jump         -compare-1436-join        
        Label        -compare-1436-join        
        JumpTrue     -print-boolean-1437-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1437-join  
        Label        -print-boolean-1437-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1437-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1438-arg1        
        PushI        15                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1438-arg2        
        PushI        75                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1438-sub         
        Subtract                               
        JumpFalse    -compare-1438-true        
        Jump         -compare-1438-false       
        Label        -compare-1438-true        
        PushI        1                         
        Jump         -compare-1438-join        
        Label        -compare-1438-false       
        PushI        0                         
        Jump         -compare-1438-join        
        Label        -compare-1438-join        
        JumpTrue     -print-boolean-1439-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1439-join  
        Label        -print-boolean-1439-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1439-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1440-arg1        
        PushI        73                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1440-arg2        
        PushI        27                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1440-sub         
        Subtract                               
        JumpFalse    -compare-1440-true        
        Jump         -compare-1440-false       
        Label        -compare-1440-true        
        PushI        1                         
        Jump         -compare-1440-join        
        Label        -compare-1440-false       
        PushI        0                         
        Jump         -compare-1440-join        
        Label        -compare-1440-join        
        JumpTrue     -print-boolean-1441-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1441-join  
        Label        -print-boolean-1441-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1441-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1442-arg1        
        PushI        18                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1442-arg2        
        PushI        8                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1442-sub         
        Subtract                               
        JumpFalse    -compare-1442-true        
        Jump         -compare-1442-false       
        Label        -compare-1442-true        
        PushI        1                         
        Jump         -compare-1442-join        
        Label        -compare-1442-false       
        PushI        0                         
        Jump         -compare-1442-join        
        Label        -compare-1442-join        
        JumpTrue     -print-boolean-1443-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1443-join  
        Label        -print-boolean-1443-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1443-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1444-arg1        
        PushI        29                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1444-arg2        
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1444-sub         
        Subtract                               
        JumpFalse    -compare-1444-true        
        Jump         -compare-1444-false       
        Label        -compare-1444-true        
        PushI        1                         
        Jump         -compare-1444-join        
        Label        -compare-1444-false       
        PushI        0                         
        Jump         -compare-1444-join        
        Label        -compare-1444-join        
        JumpTrue     -print-boolean-1445-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1445-join  
        Label        -print-boolean-1445-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1445-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1446-arg1        
        PushI        88                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1446-arg2        
        PushI        43                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1446-sub         
        Subtract                               
        JumpFalse    -compare-1446-true        
        Jump         -compare-1446-false       
        Label        -compare-1446-true        
        PushI        1                         
        Jump         -compare-1446-join        
        Label        -compare-1446-false       
        PushI        0                         
        Jump         -compare-1446-join        
        Label        -compare-1446-join        
        JumpTrue     -print-boolean-1447-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1447-join  
        Label        -print-boolean-1447-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1447-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1448-arg1        
        PushI        9                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1448-arg2        
        PushI        65                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1448-sub         
        Subtract                               
        JumpFalse    -compare-1448-true        
        Jump         -compare-1448-false       
        Label        -compare-1448-true        
        PushI        1                         
        Jump         -compare-1448-join        
        Label        -compare-1448-false       
        PushI        0                         
        Jump         -compare-1448-join        
        Label        -compare-1448-join        
        JumpTrue     -print-boolean-1449-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1449-join  
        Label        -print-boolean-1449-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1449-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1450-arg1        
        PushI        41                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1450-arg2        
        PushI        55                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1450-sub         
        Subtract                               
        JumpFalse    -compare-1450-true        
        Jump         -compare-1450-false       
        Label        -compare-1450-true        
        PushI        1                         
        Jump         -compare-1450-join        
        Label        -compare-1450-false       
        PushI        0                         
        Jump         -compare-1450-join        
        Label        -compare-1450-join        
        JumpTrue     -print-boolean-1451-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1451-join  
        Label        -print-boolean-1451-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1451-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1452-arg1        
        PushI        29                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1452-arg2        
        PushI        77                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1452-sub         
        Subtract                               
        JumpFalse    -compare-1452-true        
        Jump         -compare-1452-false       
        Label        -compare-1452-true        
        PushI        1                         
        Jump         -compare-1452-join        
        Label        -compare-1452-false       
        PushI        0                         
        Jump         -compare-1452-join        
        Label        -compare-1452-join        
        JumpTrue     -print-boolean-1453-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1453-join  
        Label        -print-boolean-1453-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1453-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
