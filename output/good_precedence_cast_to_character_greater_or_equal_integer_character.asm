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
        Label        -compare-1526-arg1        
        PushI        50                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1526-arg2        
        PushI        106                       
        Label        -compare-1526-sub         
        Subtract                               
        JumpNeg      -compare-1526-false       
        Jump         -compare-1526-true        
        Label        -compare-1526-true        
        PushI        1                         
        Jump         -compare-1526-join        
        Label        -compare-1526-false       
        PushI        0                         
        Jump         -compare-1526-join        
        Label        -compare-1526-join        
        JumpTrue     -print-boolean-1527-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1527-join  
        Label        -print-boolean-1527-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1527-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1528-arg1        
        PushI        56                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1528-arg2        
        PushI        32                        
        Label        -compare-1528-sub         
        Subtract                               
        JumpNeg      -compare-1528-false       
        Jump         -compare-1528-true        
        Label        -compare-1528-true        
        PushI        1                         
        Jump         -compare-1528-join        
        Label        -compare-1528-false       
        PushI        0                         
        Jump         -compare-1528-join        
        Label        -compare-1528-join        
        JumpTrue     -print-boolean-1529-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1529-join  
        Label        -print-boolean-1529-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1529-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1530-arg1        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1530-arg2        
        PushI        97                        
        Label        -compare-1530-sub         
        Subtract                               
        JumpNeg      -compare-1530-false       
        Jump         -compare-1530-true        
        Label        -compare-1530-true        
        PushI        1                         
        Jump         -compare-1530-join        
        Label        -compare-1530-false       
        PushI        0                         
        Jump         -compare-1530-join        
        Label        -compare-1530-join        
        JumpTrue     -print-boolean-1531-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1531-join  
        Label        -print-boolean-1531-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1531-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1532-arg1        
        PushI        88                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1532-arg2        
        PushI        51                        
        Label        -compare-1532-sub         
        Subtract                               
        JumpNeg      -compare-1532-false       
        Jump         -compare-1532-true        
        Label        -compare-1532-true        
        PushI        1                         
        Jump         -compare-1532-join        
        Label        -compare-1532-false       
        PushI        0                         
        Jump         -compare-1532-join        
        Label        -compare-1532-join        
        JumpTrue     -print-boolean-1533-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1533-join  
        Label        -print-boolean-1533-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1533-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1534-arg1        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1534-arg2        
        PushI        104                       
        Label        -compare-1534-sub         
        Subtract                               
        JumpNeg      -compare-1534-false       
        Jump         -compare-1534-true        
        Label        -compare-1534-true        
        PushI        1                         
        Jump         -compare-1534-join        
        Label        -compare-1534-false       
        PushI        0                         
        Jump         -compare-1534-join        
        Label        -compare-1534-join        
        JumpTrue     -print-boolean-1535-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1535-join  
        Label        -print-boolean-1535-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1535-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1536-arg1        
        PushI        23                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1536-arg2        
        PushI        122                       
        Label        -compare-1536-sub         
        Subtract                               
        JumpNeg      -compare-1536-false       
        Jump         -compare-1536-true        
        Label        -compare-1536-true        
        PushI        1                         
        Jump         -compare-1536-join        
        Label        -compare-1536-false       
        PushI        0                         
        Jump         -compare-1536-join        
        Label        -compare-1536-join        
        JumpTrue     -print-boolean-1537-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1537-join  
        Label        -print-boolean-1537-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1537-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1538-arg1        
        PushI        77                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1538-arg2        
        PushI        96                        
        Label        -compare-1538-sub         
        Subtract                               
        JumpNeg      -compare-1538-false       
        Jump         -compare-1538-true        
        Label        -compare-1538-true        
        PushI        1                         
        Jump         -compare-1538-join        
        Label        -compare-1538-false       
        PushI        0                         
        Jump         -compare-1538-join        
        Label        -compare-1538-join        
        JumpTrue     -print-boolean-1539-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1539-join  
        Label        -print-boolean-1539-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1539-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1540-arg1        
        PushI        68                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1540-arg2        
        PushI        50                        
        Label        -compare-1540-sub         
        Subtract                               
        JumpNeg      -compare-1540-false       
        Jump         -compare-1540-true        
        Label        -compare-1540-true        
        PushI        1                         
        Jump         -compare-1540-join        
        Label        -compare-1540-false       
        PushI        0                         
        Jump         -compare-1540-join        
        Label        -compare-1540-join        
        JumpTrue     -print-boolean-1541-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1541-join  
        Label        -print-boolean-1541-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1541-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1542-arg1        
        PushI        51                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1542-arg2        
        PushI        34                        
        Label        -compare-1542-sub         
        Subtract                               
        JumpNeg      -compare-1542-false       
        Jump         -compare-1542-true        
        Label        -compare-1542-true        
        PushI        1                         
        Jump         -compare-1542-join        
        Label        -compare-1542-false       
        PushI        0                         
        Jump         -compare-1542-join        
        Label        -compare-1542-join        
        JumpTrue     -print-boolean-1543-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1543-join  
        Label        -print-boolean-1543-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1543-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1544-arg1        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1544-arg2        
        PushI        77                        
        Label        -compare-1544-sub         
        Subtract                               
        JumpNeg      -compare-1544-false       
        Jump         -compare-1544-true        
        Label        -compare-1544-true        
        PushI        1                         
        Jump         -compare-1544-join        
        Label        -compare-1544-false       
        PushI        0                         
        Jump         -compare-1544-join        
        Label        -compare-1544-join        
        JumpTrue     -print-boolean-1545-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1545-join  
        Label        -print-boolean-1545-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1545-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1546-arg1        
        PushI        9                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1546-arg2        
        PushI        83                        
        Label        -compare-1546-sub         
        Subtract                               
        JumpNeg      -compare-1546-false       
        Jump         -compare-1546-true        
        Label        -compare-1546-true        
        PushI        1                         
        Jump         -compare-1546-join        
        Label        -compare-1546-false       
        PushI        0                         
        Jump         -compare-1546-join        
        Label        -compare-1546-join        
        JumpTrue     -print-boolean-1547-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1547-join  
        Label        -print-boolean-1547-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1547-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1548-arg1        
        PushI        38                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1548-arg2        
        PushI        82                        
        Label        -compare-1548-sub         
        Subtract                               
        JumpNeg      -compare-1548-false       
        Jump         -compare-1548-true        
        Label        -compare-1548-true        
        PushI        1                         
        Jump         -compare-1548-join        
        Label        -compare-1548-false       
        PushI        0                         
        Jump         -compare-1548-join        
        Label        -compare-1548-join        
        JumpTrue     -print-boolean-1549-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1549-join  
        Label        -print-boolean-1549-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1549-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1550-arg1        
        PushI        38                        
        Label        -compare-1550-arg2        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1550-sub         
        Subtract                               
        JumpNeg      -compare-1550-false       
        Jump         -compare-1550-true        
        Label        -compare-1550-true        
        PushI        1                         
        Jump         -compare-1550-join        
        Label        -compare-1550-false       
        PushI        0                         
        Jump         -compare-1550-join        
        Label        -compare-1550-join        
        JumpTrue     -print-boolean-1551-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1551-join  
        Label        -print-boolean-1551-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1551-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1552-arg1        
        PushI        35                        
        Label        -compare-1552-arg2        
        PushI        56                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1552-sub         
        Subtract                               
        JumpNeg      -compare-1552-false       
        Jump         -compare-1552-true        
        Label        -compare-1552-true        
        PushI        1                         
        Jump         -compare-1552-join        
        Label        -compare-1552-false       
        PushI        0                         
        Jump         -compare-1552-join        
        Label        -compare-1552-join        
        JumpTrue     -print-boolean-1553-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1553-join  
        Label        -print-boolean-1553-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1553-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1554-arg1        
        PushI        78                        
        Label        -compare-1554-arg2        
        PushI        21                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1554-sub         
        Subtract                               
        JumpNeg      -compare-1554-false       
        Jump         -compare-1554-true        
        Label        -compare-1554-true        
        PushI        1                         
        Jump         -compare-1554-join        
        Label        -compare-1554-false       
        PushI        0                         
        Jump         -compare-1554-join        
        Label        -compare-1554-join        
        JumpTrue     -print-boolean-1555-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1555-join  
        Label        -print-boolean-1555-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1555-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1556-arg1        
        PushI        46                        
        Label        -compare-1556-arg2        
        PushI        8                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1556-sub         
        Subtract                               
        JumpNeg      -compare-1556-false       
        Jump         -compare-1556-true        
        Label        -compare-1556-true        
        PushI        1                         
        Jump         -compare-1556-join        
        Label        -compare-1556-false       
        PushI        0                         
        Jump         -compare-1556-join        
        Label        -compare-1556-join        
        JumpTrue     -print-boolean-1557-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1557-join  
        Label        -print-boolean-1557-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1557-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1558-arg1        
        PushI        62                        
        Label        -compare-1558-arg2        
        PushI        33                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1558-sub         
        Subtract                               
        JumpNeg      -compare-1558-false       
        Jump         -compare-1558-true        
        Label        -compare-1558-true        
        PushI        1                         
        Jump         -compare-1558-join        
        Label        -compare-1558-false       
        PushI        0                         
        Jump         -compare-1558-join        
        Label        -compare-1558-join        
        JumpTrue     -print-boolean-1559-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1559-join  
        Label        -print-boolean-1559-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1559-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1560-arg1        
        PushI        76                        
        Label        -compare-1560-arg2        
        PushI        25                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1560-sub         
        Subtract                               
        JumpNeg      -compare-1560-false       
        Jump         -compare-1560-true        
        Label        -compare-1560-true        
        PushI        1                         
        Jump         -compare-1560-join        
        Label        -compare-1560-false       
        PushI        0                         
        Jump         -compare-1560-join        
        Label        -compare-1560-join        
        JumpTrue     -print-boolean-1561-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1561-join  
        Label        -print-boolean-1561-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1561-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1562-arg1        
        PushI        102                       
        Label        -compare-1562-arg2        
        PushI        69                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1562-sub         
        Subtract                               
        JumpNeg      -compare-1562-false       
        Jump         -compare-1562-true        
        Label        -compare-1562-true        
        PushI        1                         
        Jump         -compare-1562-join        
        Label        -compare-1562-false       
        PushI        0                         
        Jump         -compare-1562-join        
        Label        -compare-1562-join        
        JumpTrue     -print-boolean-1563-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1563-join  
        Label        -print-boolean-1563-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1563-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1564-arg1        
        PushI        69                        
        Label        -compare-1564-arg2        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1564-sub         
        Subtract                               
        JumpNeg      -compare-1564-false       
        Jump         -compare-1564-true        
        Label        -compare-1564-true        
        PushI        1                         
        Jump         -compare-1564-join        
        Label        -compare-1564-false       
        PushI        0                         
        Jump         -compare-1564-join        
        Label        -compare-1564-join        
        JumpTrue     -print-boolean-1565-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1565-join  
        Label        -print-boolean-1565-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1565-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1566-arg1        
        PushI        38                        
        Label        -compare-1566-arg2        
        PushI        43                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1566-sub         
        Subtract                               
        JumpNeg      -compare-1566-false       
        Jump         -compare-1566-true        
        Label        -compare-1566-true        
        PushI        1                         
        Jump         -compare-1566-join        
        Label        -compare-1566-false       
        PushI        0                         
        Jump         -compare-1566-join        
        Label        -compare-1566-join        
        JumpTrue     -print-boolean-1567-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1567-join  
        Label        -print-boolean-1567-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1567-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1568-arg1        
        PushI        118                       
        Label        -compare-1568-arg2        
        PushI        95                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1568-sub         
        Subtract                               
        JumpNeg      -compare-1568-false       
        Jump         -compare-1568-true        
        Label        -compare-1568-true        
        PushI        1                         
        Jump         -compare-1568-join        
        Label        -compare-1568-false       
        PushI        0                         
        Jump         -compare-1568-join        
        Label        -compare-1568-join        
        JumpTrue     -print-boolean-1569-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1569-join  
        Label        -print-boolean-1569-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1569-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1570-arg1        
        PushI        83                        
        Label        -compare-1570-arg2        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1570-sub         
        Subtract                               
        JumpNeg      -compare-1570-false       
        Jump         -compare-1570-true        
        Label        -compare-1570-true        
        PushI        1                         
        Jump         -compare-1570-join        
        Label        -compare-1570-false       
        PushI        0                         
        Jump         -compare-1570-join        
        Label        -compare-1570-join        
        JumpTrue     -print-boolean-1571-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1571-join  
        Label        -print-boolean-1571-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1571-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1572-arg1        
        PushI        105                       
        Label        -compare-1572-arg2        
        PushI        91                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1572-sub         
        Subtract                               
        JumpNeg      -compare-1572-false       
        Jump         -compare-1572-true        
        Label        -compare-1572-true        
        PushI        1                         
        Jump         -compare-1572-join        
        Label        -compare-1572-false       
        PushI        0                         
        Jump         -compare-1572-join        
        Label        -compare-1572-join        
        JumpTrue     -print-boolean-1573-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1573-join  
        Label        -print-boolean-1573-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1573-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1574-arg1        
        PushI        54                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1574-arg2        
        PushI        65                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1574-sub         
        Subtract                               
        JumpNeg      -compare-1574-false       
        Jump         -compare-1574-true        
        Label        -compare-1574-true        
        PushI        1                         
        Jump         -compare-1574-join        
        Label        -compare-1574-false       
        PushI        0                         
        Jump         -compare-1574-join        
        Label        -compare-1574-join        
        JumpTrue     -print-boolean-1575-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1575-join  
        Label        -print-boolean-1575-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1575-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1576-arg1        
        PushI        62                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1576-arg2        
        PushI        96                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1576-sub         
        Subtract                               
        JumpNeg      -compare-1576-false       
        Jump         -compare-1576-true        
        Label        -compare-1576-true        
        PushI        1                         
        Jump         -compare-1576-join        
        Label        -compare-1576-false       
        PushI        0                         
        Jump         -compare-1576-join        
        Label        -compare-1576-join        
        JumpTrue     -print-boolean-1577-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1577-join  
        Label        -print-boolean-1577-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1577-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1578-arg1        
        PushI        14                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1578-arg2        
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1578-sub         
        Subtract                               
        JumpNeg      -compare-1578-false       
        Jump         -compare-1578-true        
        Label        -compare-1578-true        
        PushI        1                         
        Jump         -compare-1578-join        
        Label        -compare-1578-false       
        PushI        0                         
        Jump         -compare-1578-join        
        Label        -compare-1578-join        
        JumpTrue     -print-boolean-1579-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1579-join  
        Label        -print-boolean-1579-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1579-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1580-arg1        
        PushI        26                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1580-arg2        
        PushI        1                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1580-sub         
        Subtract                               
        JumpNeg      -compare-1580-false       
        Jump         -compare-1580-true        
        Label        -compare-1580-true        
        PushI        1                         
        Jump         -compare-1580-join        
        Label        -compare-1580-false       
        PushI        0                         
        Jump         -compare-1580-join        
        Label        -compare-1580-join        
        JumpTrue     -print-boolean-1581-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1581-join  
        Label        -print-boolean-1581-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1581-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1582-arg1        
        PushI        80                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1582-arg2        
        PushI        94                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1582-sub         
        Subtract                               
        JumpNeg      -compare-1582-false       
        Jump         -compare-1582-true        
        Label        -compare-1582-true        
        PushI        1                         
        Jump         -compare-1582-join        
        Label        -compare-1582-false       
        PushI        0                         
        Jump         -compare-1582-join        
        Label        -compare-1582-join        
        JumpTrue     -print-boolean-1583-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1583-join  
        Label        -print-boolean-1583-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1583-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1584-arg1        
        PushI        5                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1584-arg2        
        PushI        16                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1584-sub         
        Subtract                               
        JumpNeg      -compare-1584-false       
        Jump         -compare-1584-true        
        Label        -compare-1584-true        
        PushI        1                         
        Jump         -compare-1584-join        
        Label        -compare-1584-false       
        PushI        0                         
        Jump         -compare-1584-join        
        Label        -compare-1584-join        
        JumpTrue     -print-boolean-1585-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1585-join  
        Label        -print-boolean-1585-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1585-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1586-arg1        
        PushI        60                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1586-arg2        
        PushI        41                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1586-sub         
        Subtract                               
        JumpNeg      -compare-1586-false       
        Jump         -compare-1586-true        
        Label        -compare-1586-true        
        PushI        1                         
        Jump         -compare-1586-join        
        Label        -compare-1586-false       
        PushI        0                         
        Jump         -compare-1586-join        
        Label        -compare-1586-join        
        JumpTrue     -print-boolean-1587-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1587-join  
        Label        -print-boolean-1587-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1587-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1588-arg1        
        PushI        82                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1588-arg2        
        PushI        60                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1588-sub         
        Subtract                               
        JumpNeg      -compare-1588-false       
        Jump         -compare-1588-true        
        Label        -compare-1588-true        
        PushI        1                         
        Jump         -compare-1588-join        
        Label        -compare-1588-false       
        PushI        0                         
        Jump         -compare-1588-join        
        Label        -compare-1588-join        
        JumpTrue     -print-boolean-1589-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1589-join  
        Label        -print-boolean-1589-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1589-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1590-arg1        
        PushI        37                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1590-arg2        
        PushI        46                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1590-sub         
        Subtract                               
        JumpNeg      -compare-1590-false       
        Jump         -compare-1590-true        
        Label        -compare-1590-true        
        PushI        1                         
        Jump         -compare-1590-join        
        Label        -compare-1590-false       
        PushI        0                         
        Jump         -compare-1590-join        
        Label        -compare-1590-join        
        JumpTrue     -print-boolean-1591-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1591-join  
        Label        -print-boolean-1591-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1591-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1592-arg1        
        PushI        33                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1592-arg2        
        PushI        78                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1592-sub         
        Subtract                               
        JumpNeg      -compare-1592-false       
        Jump         -compare-1592-true        
        Label        -compare-1592-true        
        PushI        1                         
        Jump         -compare-1592-join        
        Label        -compare-1592-false       
        PushI        0                         
        Jump         -compare-1592-join        
        Label        -compare-1592-join        
        JumpTrue     -print-boolean-1593-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1593-join  
        Label        -print-boolean-1593-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1593-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1594-arg1        
        PushI        41                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1594-arg2        
        PushI        21                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1594-sub         
        Subtract                               
        JumpNeg      -compare-1594-false       
        Jump         -compare-1594-true        
        Label        -compare-1594-true        
        PushI        1                         
        Jump         -compare-1594-join        
        Label        -compare-1594-false       
        PushI        0                         
        Jump         -compare-1594-join        
        Label        -compare-1594-join        
        JumpTrue     -print-boolean-1595-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1595-join  
        Label        -print-boolean-1595-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1595-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1596-arg1        
        PushI        18                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1596-arg2        
        PushI        88                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1596-sub         
        Subtract                               
        JumpNeg      -compare-1596-false       
        Jump         -compare-1596-true        
        Label        -compare-1596-true        
        PushI        1                         
        Jump         -compare-1596-join        
        Label        -compare-1596-false       
        PushI        0                         
        Jump         -compare-1596-join        
        Label        -compare-1596-join        
        JumpTrue     -print-boolean-1597-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1597-join  
        Label        -print-boolean-1597-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1597-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
