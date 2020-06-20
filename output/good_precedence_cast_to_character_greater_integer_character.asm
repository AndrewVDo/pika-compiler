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
        Label        -compare-1454-arg1        
        PushI        18                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1454-arg2        
        PushI        75                        
        Label        -compare-1454-sub         
        Subtract                               
        JumpPos      -compare-1454-true        
        Jump         -compare-1454-false       
        Label        -compare-1454-true        
        PushI        1                         
        Jump         -compare-1454-join        
        Label        -compare-1454-false       
        PushI        0                         
        Jump         -compare-1454-join        
        Label        -compare-1454-join        
        JumpTrue     -print-boolean-1455-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1455-join  
        Label        -print-boolean-1455-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1455-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1456-arg1        
        PushI        37                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1456-arg2        
        PushI        55                        
        Label        -compare-1456-sub         
        Subtract                               
        JumpPos      -compare-1456-true        
        Jump         -compare-1456-false       
        Label        -compare-1456-true        
        PushI        1                         
        Jump         -compare-1456-join        
        Label        -compare-1456-false       
        PushI        0                         
        Jump         -compare-1456-join        
        Label        -compare-1456-join        
        JumpTrue     -print-boolean-1457-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1457-join  
        Label        -print-boolean-1457-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1457-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1458-arg1        
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1458-arg2        
        PushI        123                       
        Label        -compare-1458-sub         
        Subtract                               
        JumpPos      -compare-1458-true        
        Jump         -compare-1458-false       
        Label        -compare-1458-true        
        PushI        1                         
        Jump         -compare-1458-join        
        Label        -compare-1458-false       
        PushI        0                         
        Jump         -compare-1458-join        
        Label        -compare-1458-join        
        JumpTrue     -print-boolean-1459-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1459-join  
        Label        -print-boolean-1459-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1459-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1460-arg1        
        PushI        97                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1460-arg2        
        PushI        76                        
        Label        -compare-1460-sub         
        Subtract                               
        JumpPos      -compare-1460-true        
        Jump         -compare-1460-false       
        Label        -compare-1460-true        
        PushI        1                         
        Jump         -compare-1460-join        
        Label        -compare-1460-false       
        PushI        0                         
        Jump         -compare-1460-join        
        Label        -compare-1460-join        
        JumpTrue     -print-boolean-1461-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1461-join  
        Label        -print-boolean-1461-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1461-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1462-arg1        
        PushI        46                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1462-arg2        
        PushI        52                        
        Label        -compare-1462-sub         
        Subtract                               
        JumpPos      -compare-1462-true        
        Jump         -compare-1462-false       
        Label        -compare-1462-true        
        PushI        1                         
        Jump         -compare-1462-join        
        Label        -compare-1462-false       
        PushI        0                         
        Jump         -compare-1462-join        
        Label        -compare-1462-join        
        JumpTrue     -print-boolean-1463-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1463-join  
        Label        -print-boolean-1463-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1463-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1464-arg1        
        PushI        51                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1464-arg2        
        PushI        82                        
        Label        -compare-1464-sub         
        Subtract                               
        JumpPos      -compare-1464-true        
        Jump         -compare-1464-false       
        Label        -compare-1464-true        
        PushI        1                         
        Jump         -compare-1464-join        
        Label        -compare-1464-false       
        PushI        0                         
        Jump         -compare-1464-join        
        Label        -compare-1464-join        
        JumpTrue     -print-boolean-1465-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1465-join  
        Label        -print-boolean-1465-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1465-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1466-arg1        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1466-arg2        
        PushI        66                        
        Label        -compare-1466-sub         
        Subtract                               
        JumpPos      -compare-1466-true        
        Jump         -compare-1466-false       
        Label        -compare-1466-true        
        PushI        1                         
        Jump         -compare-1466-join        
        Label        -compare-1466-false       
        PushI        0                         
        Jump         -compare-1466-join        
        Label        -compare-1466-join        
        JumpTrue     -print-boolean-1467-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1467-join  
        Label        -print-boolean-1467-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1467-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1468-arg1        
        PushI        94                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1468-arg2        
        PushI        56                        
        Label        -compare-1468-sub         
        Subtract                               
        JumpPos      -compare-1468-true        
        Jump         -compare-1468-false       
        Label        -compare-1468-true        
        PushI        1                         
        Jump         -compare-1468-join        
        Label        -compare-1468-false       
        PushI        0                         
        Jump         -compare-1468-join        
        Label        -compare-1468-join        
        JumpTrue     -print-boolean-1469-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1469-join  
        Label        -print-boolean-1469-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1469-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1470-arg1        
        PushI        50                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1470-arg2        
        PushI        57                        
        Label        -compare-1470-sub         
        Subtract                               
        JumpPos      -compare-1470-true        
        Jump         -compare-1470-false       
        Label        -compare-1470-true        
        PushI        1                         
        Jump         -compare-1470-join        
        Label        -compare-1470-false       
        PushI        0                         
        Jump         -compare-1470-join        
        Label        -compare-1470-join        
        JumpTrue     -print-boolean-1471-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1471-join  
        Label        -print-boolean-1471-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1471-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1472-arg1        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1472-arg2        
        PushI        53                        
        Label        -compare-1472-sub         
        Subtract                               
        JumpPos      -compare-1472-true        
        Jump         -compare-1472-false       
        Label        -compare-1472-true        
        PushI        1                         
        Jump         -compare-1472-join        
        Label        -compare-1472-false       
        PushI        0                         
        Jump         -compare-1472-join        
        Label        -compare-1472-join        
        JumpTrue     -print-boolean-1473-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1473-join  
        Label        -print-boolean-1473-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1473-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1474-arg1        
        PushI        79                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1474-arg2        
        PushI        38                        
        Label        -compare-1474-sub         
        Subtract                               
        JumpPos      -compare-1474-true        
        Jump         -compare-1474-false       
        Label        -compare-1474-true        
        PushI        1                         
        Jump         -compare-1474-join        
        Label        -compare-1474-false       
        PushI        0                         
        Jump         -compare-1474-join        
        Label        -compare-1474-join        
        JumpTrue     -print-boolean-1475-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1475-join  
        Label        -print-boolean-1475-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1475-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1476-arg1        
        PushI        54                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1476-arg2        
        PushI        71                        
        Label        -compare-1476-sub         
        Subtract                               
        JumpPos      -compare-1476-true        
        Jump         -compare-1476-false       
        Label        -compare-1476-true        
        PushI        1                         
        Jump         -compare-1476-join        
        Label        -compare-1476-false       
        PushI        0                         
        Jump         -compare-1476-join        
        Label        -compare-1476-join        
        JumpTrue     -print-boolean-1477-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1477-join  
        Label        -print-boolean-1477-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1477-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1478-arg1        
        PushI        115                       
        Label        -compare-1478-arg2        
        PushI        8                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1478-sub         
        Subtract                               
        JumpPos      -compare-1478-true        
        Jump         -compare-1478-false       
        Label        -compare-1478-true        
        PushI        1                         
        Jump         -compare-1478-join        
        Label        -compare-1478-false       
        PushI        0                         
        Jump         -compare-1478-join        
        Label        -compare-1478-join        
        JumpTrue     -print-boolean-1479-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1479-join  
        Label        -print-boolean-1479-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1479-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1480-arg1        
        PushI        107                       
        Label        -compare-1480-arg2        
        PushI        95                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1480-sub         
        Subtract                               
        JumpPos      -compare-1480-true        
        Jump         -compare-1480-false       
        Label        -compare-1480-true        
        PushI        1                         
        Jump         -compare-1480-join        
        Label        -compare-1480-false       
        PushI        0                         
        Jump         -compare-1480-join        
        Label        -compare-1480-join        
        JumpTrue     -print-boolean-1481-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1481-join  
        Label        -print-boolean-1481-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1481-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1482-arg1        
        PushI        60                        
        Label        -compare-1482-arg2        
        PushI        50                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1482-sub         
        Subtract                               
        JumpPos      -compare-1482-true        
        Jump         -compare-1482-false       
        Label        -compare-1482-true        
        PushI        1                         
        Jump         -compare-1482-join        
        Label        -compare-1482-false       
        PushI        0                         
        Jump         -compare-1482-join        
        Label        -compare-1482-join        
        JumpTrue     -print-boolean-1483-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1483-join  
        Label        -print-boolean-1483-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1483-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1484-arg1        
        PushI        114                       
        Label        -compare-1484-arg2        
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1484-sub         
        Subtract                               
        JumpPos      -compare-1484-true        
        Jump         -compare-1484-false       
        Label        -compare-1484-true        
        PushI        1                         
        Jump         -compare-1484-join        
        Label        -compare-1484-false       
        PushI        0                         
        Jump         -compare-1484-join        
        Label        -compare-1484-join        
        JumpTrue     -print-boolean-1485-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1485-join  
        Label        -print-boolean-1485-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1485-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1486-arg1        
        PushI        101                       
        Label        -compare-1486-arg2        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1486-sub         
        Subtract                               
        JumpPos      -compare-1486-true        
        Jump         -compare-1486-false       
        Label        -compare-1486-true        
        PushI        1                         
        Jump         -compare-1486-join        
        Label        -compare-1486-false       
        PushI        0                         
        Jump         -compare-1486-join        
        Label        -compare-1486-join        
        JumpTrue     -print-boolean-1487-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1487-join  
        Label        -print-boolean-1487-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1487-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1488-arg1        
        PushI        62                        
        Label        -compare-1488-arg2        
        PushI        59                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1488-sub         
        Subtract                               
        JumpPos      -compare-1488-true        
        Jump         -compare-1488-false       
        Label        -compare-1488-true        
        PushI        1                         
        Jump         -compare-1488-join        
        Label        -compare-1488-false       
        PushI        0                         
        Jump         -compare-1488-join        
        Label        -compare-1488-join        
        JumpTrue     -print-boolean-1489-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1489-join  
        Label        -print-boolean-1489-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1489-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1490-arg1        
        PushI        59                        
        Label        -compare-1490-arg2        
        PushI        19                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1490-sub         
        Subtract                               
        JumpPos      -compare-1490-true        
        Jump         -compare-1490-false       
        Label        -compare-1490-true        
        PushI        1                         
        Jump         -compare-1490-join        
        Label        -compare-1490-false       
        PushI        0                         
        Jump         -compare-1490-join        
        Label        -compare-1490-join        
        JumpTrue     -print-boolean-1491-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1491-join  
        Label        -print-boolean-1491-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1491-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1492-arg1        
        PushI        63                        
        Label        -compare-1492-arg2        
        PushI        34                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1492-sub         
        Subtract                               
        JumpPos      -compare-1492-true        
        Jump         -compare-1492-false       
        Label        -compare-1492-true        
        PushI        1                         
        Jump         -compare-1492-join        
        Label        -compare-1492-false       
        PushI        0                         
        Jump         -compare-1492-join        
        Label        -compare-1492-join        
        JumpTrue     -print-boolean-1493-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1493-join  
        Label        -print-boolean-1493-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1493-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1494-arg1        
        PushI        44                        
        Label        -compare-1494-arg2        
        PushI        96                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1494-sub         
        Subtract                               
        JumpPos      -compare-1494-true        
        Jump         -compare-1494-false       
        Label        -compare-1494-true        
        PushI        1                         
        Jump         -compare-1494-join        
        Label        -compare-1494-false       
        PushI        0                         
        Jump         -compare-1494-join        
        Label        -compare-1494-join        
        JumpTrue     -print-boolean-1495-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1495-join  
        Label        -print-boolean-1495-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1495-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1496-arg1        
        PushI        99                        
        Label        -compare-1496-arg2        
        PushI        46                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1496-sub         
        Subtract                               
        JumpPos      -compare-1496-true        
        Jump         -compare-1496-false       
        Label        -compare-1496-true        
        PushI        1                         
        Jump         -compare-1496-join        
        Label        -compare-1496-false       
        PushI        0                         
        Jump         -compare-1496-join        
        Label        -compare-1496-join        
        JumpTrue     -print-boolean-1497-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1497-join  
        Label        -print-boolean-1497-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1497-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1498-arg1        
        PushI        111                       
        Label        -compare-1498-arg2        
        PushI        64                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1498-sub         
        Subtract                               
        JumpPos      -compare-1498-true        
        Jump         -compare-1498-false       
        Label        -compare-1498-true        
        PushI        1                         
        Jump         -compare-1498-join        
        Label        -compare-1498-false       
        PushI        0                         
        Jump         -compare-1498-join        
        Label        -compare-1498-join        
        JumpTrue     -print-boolean-1499-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1499-join  
        Label        -print-boolean-1499-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1499-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1500-arg1        
        PushI        70                        
        Label        -compare-1500-arg2        
        PushI        41                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1500-sub         
        Subtract                               
        JumpPos      -compare-1500-true        
        Jump         -compare-1500-false       
        Label        -compare-1500-true        
        PushI        1                         
        Jump         -compare-1500-join        
        Label        -compare-1500-false       
        PushI        0                         
        Jump         -compare-1500-join        
        Label        -compare-1500-join        
        JumpTrue     -print-boolean-1501-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1501-join  
        Label        -print-boolean-1501-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1501-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1502-arg1        
        PushI        12                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1502-arg2        
        PushI        71                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1502-sub         
        Subtract                               
        JumpPos      -compare-1502-true        
        Jump         -compare-1502-false       
        Label        -compare-1502-true        
        PushI        1                         
        Jump         -compare-1502-join        
        Label        -compare-1502-false       
        PushI        0                         
        Jump         -compare-1502-join        
        Label        -compare-1502-join        
        JumpTrue     -print-boolean-1503-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1503-join  
        Label        -print-boolean-1503-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1503-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1504-arg1        
        PushI        28                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1504-arg2        
        PushI        1                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1504-sub         
        Subtract                               
        JumpPos      -compare-1504-true        
        Jump         -compare-1504-false       
        Label        -compare-1504-true        
        PushI        1                         
        Jump         -compare-1504-join        
        Label        -compare-1504-false       
        PushI        0                         
        Jump         -compare-1504-join        
        Label        -compare-1504-join        
        JumpTrue     -print-boolean-1505-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1505-join  
        Label        -print-boolean-1505-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1505-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1506-arg1        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1506-arg2        
        PushI        96                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1506-sub         
        Subtract                               
        JumpPos      -compare-1506-true        
        Jump         -compare-1506-false       
        Label        -compare-1506-true        
        PushI        1                         
        Jump         -compare-1506-join        
        Label        -compare-1506-false       
        PushI        0                         
        Jump         -compare-1506-join        
        Label        -compare-1506-join        
        JumpTrue     -print-boolean-1507-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1507-join  
        Label        -print-boolean-1507-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1507-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1508-arg1        
        PushI        38                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1508-arg2        
        PushI        8                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1508-sub         
        Subtract                               
        JumpPos      -compare-1508-true        
        Jump         -compare-1508-false       
        Label        -compare-1508-true        
        PushI        1                         
        Jump         -compare-1508-join        
        Label        -compare-1508-false       
        PushI        0                         
        Jump         -compare-1508-join        
        Label        -compare-1508-join        
        JumpTrue     -print-boolean-1509-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1509-join  
        Label        -print-boolean-1509-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1509-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1510-arg1        
        PushI        79                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1510-arg2        
        PushI        39                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1510-sub         
        Subtract                               
        JumpPos      -compare-1510-true        
        Jump         -compare-1510-false       
        Label        -compare-1510-true        
        PushI        1                         
        Jump         -compare-1510-join        
        Label        -compare-1510-false       
        PushI        0                         
        Jump         -compare-1510-join        
        Label        -compare-1510-join        
        JumpTrue     -print-boolean-1511-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1511-join  
        Label        -print-boolean-1511-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1511-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1512-arg1        
        PushI        77                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1512-arg2        
        PushI        17                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1512-sub         
        Subtract                               
        JumpPos      -compare-1512-true        
        Jump         -compare-1512-false       
        Label        -compare-1512-true        
        PushI        1                         
        Jump         -compare-1512-join        
        Label        -compare-1512-false       
        PushI        0                         
        Jump         -compare-1512-join        
        Label        -compare-1512-join        
        JumpTrue     -print-boolean-1513-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1513-join  
        Label        -print-boolean-1513-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1513-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1514-arg1        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1514-arg2        
        PushI        8                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1514-sub         
        Subtract                               
        JumpPos      -compare-1514-true        
        Jump         -compare-1514-false       
        Label        -compare-1514-true        
        PushI        1                         
        Jump         -compare-1514-join        
        Label        -compare-1514-false       
        PushI        0                         
        Jump         -compare-1514-join        
        Label        -compare-1514-join        
        JumpTrue     -print-boolean-1515-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1515-join  
        Label        -print-boolean-1515-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1515-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1516-arg1        
        PushI        23                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1516-arg2        
        PushI        19                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1516-sub         
        Subtract                               
        JumpPos      -compare-1516-true        
        Jump         -compare-1516-false       
        Label        -compare-1516-true        
        PushI        1                         
        Jump         -compare-1516-join        
        Label        -compare-1516-false       
        PushI        0                         
        Jump         -compare-1516-join        
        Label        -compare-1516-join        
        JumpTrue     -print-boolean-1517-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1517-join  
        Label        -print-boolean-1517-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1517-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1518-arg1        
        PushI        57                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1518-arg2        
        PushI        11                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1518-sub         
        Subtract                               
        JumpPos      -compare-1518-true        
        Jump         -compare-1518-false       
        Label        -compare-1518-true        
        PushI        1                         
        Jump         -compare-1518-join        
        Label        -compare-1518-false       
        PushI        0                         
        Jump         -compare-1518-join        
        Label        -compare-1518-join        
        JumpTrue     -print-boolean-1519-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1519-join  
        Label        -print-boolean-1519-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1519-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1520-arg1        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1520-arg2        
        PushI        27                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1520-sub         
        Subtract                               
        JumpPos      -compare-1520-true        
        Jump         -compare-1520-false       
        Label        -compare-1520-true        
        PushI        1                         
        Jump         -compare-1520-join        
        Label        -compare-1520-false       
        PushI        0                         
        Jump         -compare-1520-join        
        Label        -compare-1520-join        
        JumpTrue     -print-boolean-1521-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1521-join  
        Label        -print-boolean-1521-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1521-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1522-arg1        
        PushI        80                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1522-arg2        
        PushI        73                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1522-sub         
        Subtract                               
        JumpPos      -compare-1522-true        
        Jump         -compare-1522-false       
        Label        -compare-1522-true        
        PushI        1                         
        Jump         -compare-1522-join        
        Label        -compare-1522-false       
        PushI        0                         
        Jump         -compare-1522-join        
        Label        -compare-1522-join        
        JumpTrue     -print-boolean-1523-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1523-join  
        Label        -print-boolean-1523-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1523-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1524-arg1        
        PushI        50                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1524-arg2        
        PushI        97                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1524-sub         
        Subtract                               
        JumpPos      -compare-1524-true        
        Jump         -compare-1524-false       
        Label        -compare-1524-true        
        PushI        1                         
        Jump         -compare-1524-join        
        Label        -compare-1524-false       
        PushI        0                         
        Jump         -compare-1524-join        
        Label        -compare-1524-join        
        JumpTrue     -print-boolean-1525-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1525-join  
        Label        -print-boolean-1525-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1525-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
