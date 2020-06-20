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
        Label        -compare-1598-arg1        
        PushI        5                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1598-arg2        
        PushI        62                        
        Label        -compare-1598-sub         
        Subtract                               
        JumpNeg      -compare-1598-true        
        Jump         -compare-1598-false       
        Label        -compare-1598-true        
        PushI        1                         
        Jump         -compare-1598-join        
        Label        -compare-1598-false       
        PushI        0                         
        Jump         -compare-1598-join        
        Label        -compare-1598-join        
        JumpTrue     -print-boolean-1599-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1599-join  
        Label        -print-boolean-1599-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1599-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1600-arg1        
        PushI        48                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1600-arg2        
        PushI        82                        
        Label        -compare-1600-sub         
        Subtract                               
        JumpNeg      -compare-1600-true        
        Jump         -compare-1600-false       
        Label        -compare-1600-true        
        PushI        1                         
        Jump         -compare-1600-join        
        Label        -compare-1600-false       
        PushI        0                         
        Jump         -compare-1600-join        
        Label        -compare-1600-join        
        JumpTrue     -print-boolean-1601-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1601-join  
        Label        -print-boolean-1601-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1601-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1602-arg1        
        PushI        52                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1602-arg2        
        PushI        60                        
        Label        -compare-1602-sub         
        Subtract                               
        JumpNeg      -compare-1602-true        
        Jump         -compare-1602-false       
        Label        -compare-1602-true        
        PushI        1                         
        Jump         -compare-1602-join        
        Label        -compare-1602-false       
        PushI        0                         
        Jump         -compare-1602-join        
        Label        -compare-1602-join        
        JumpTrue     -print-boolean-1603-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1603-join  
        Label        -print-boolean-1603-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1603-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1604-arg1        
        PushI        83                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1604-arg2        
        PushI        95                        
        Label        -compare-1604-sub         
        Subtract                               
        JumpNeg      -compare-1604-true        
        Jump         -compare-1604-false       
        Label        -compare-1604-true        
        PushI        1                         
        Jump         -compare-1604-join        
        Label        -compare-1604-false       
        PushI        0                         
        Jump         -compare-1604-join        
        Label        -compare-1604-join        
        JumpTrue     -print-boolean-1605-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1605-join  
        Label        -print-boolean-1605-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1605-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1606-arg1        
        PushI        95                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1606-arg2        
        PushI        103                       
        Label        -compare-1606-sub         
        Subtract                               
        JumpNeg      -compare-1606-true        
        Jump         -compare-1606-false       
        Label        -compare-1606-true        
        PushI        1                         
        Jump         -compare-1606-join        
        Label        -compare-1606-false       
        PushI        0                         
        Jump         -compare-1606-join        
        Label        -compare-1606-join        
        JumpTrue     -print-boolean-1607-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1607-join  
        Label        -print-boolean-1607-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1607-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1608-arg1        
        PushI        54                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1608-arg2        
        PushI        114                       
        Label        -compare-1608-sub         
        Subtract                               
        JumpNeg      -compare-1608-true        
        Jump         -compare-1608-false       
        Label        -compare-1608-true        
        PushI        1                         
        Jump         -compare-1608-join        
        Label        -compare-1608-false       
        PushI        0                         
        Jump         -compare-1608-join        
        Label        -compare-1608-join        
        JumpTrue     -print-boolean-1609-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1609-join  
        Label        -print-boolean-1609-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1609-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1610-arg1        
        PushI        55                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1610-arg2        
        PushI        39                        
        Label        -compare-1610-sub         
        Subtract                               
        JumpNeg      -compare-1610-true        
        Jump         -compare-1610-false       
        Label        -compare-1610-true        
        PushI        1                         
        Jump         -compare-1610-join        
        Label        -compare-1610-false       
        PushI        0                         
        Jump         -compare-1610-join        
        Label        -compare-1610-join        
        JumpTrue     -print-boolean-1611-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1611-join  
        Label        -print-boolean-1611-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1611-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1612-arg1        
        PushI        99                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1612-arg2        
        PushI        118                       
        Label        -compare-1612-sub         
        Subtract                               
        JumpNeg      -compare-1612-true        
        Jump         -compare-1612-false       
        Label        -compare-1612-true        
        PushI        1                         
        Jump         -compare-1612-join        
        Label        -compare-1612-false       
        PushI        0                         
        Jump         -compare-1612-join        
        Label        -compare-1612-join        
        JumpTrue     -print-boolean-1613-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1613-join  
        Label        -print-boolean-1613-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1613-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1614-arg1        
        PushI        90                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1614-arg2        
        PushI        78                        
        Label        -compare-1614-sub         
        Subtract                               
        JumpNeg      -compare-1614-true        
        Jump         -compare-1614-false       
        Label        -compare-1614-true        
        PushI        1                         
        Jump         -compare-1614-join        
        Label        -compare-1614-false       
        PushI        0                         
        Jump         -compare-1614-join        
        Label        -compare-1614-join        
        JumpTrue     -print-boolean-1615-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1615-join  
        Label        -print-boolean-1615-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1615-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1616-arg1        
        PushI        44                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1616-arg2        
        PushI        122                       
        Label        -compare-1616-sub         
        Subtract                               
        JumpNeg      -compare-1616-true        
        Jump         -compare-1616-false       
        Label        -compare-1616-true        
        PushI        1                         
        Jump         -compare-1616-join        
        Label        -compare-1616-false       
        PushI        0                         
        Jump         -compare-1616-join        
        Label        -compare-1616-join        
        JumpTrue     -print-boolean-1617-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1617-join  
        Label        -print-boolean-1617-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1617-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1618-arg1        
        PushI        47                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1618-arg2        
        PushI        123                       
        Label        -compare-1618-sub         
        Subtract                               
        JumpNeg      -compare-1618-true        
        Jump         -compare-1618-false       
        Label        -compare-1618-true        
        PushI        1                         
        Jump         -compare-1618-join        
        Label        -compare-1618-false       
        PushI        0                         
        Jump         -compare-1618-join        
        Label        -compare-1618-join        
        JumpTrue     -print-boolean-1619-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1619-join  
        Label        -print-boolean-1619-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1619-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1620-arg1        
        PushI        57                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1620-arg2        
        PushI        119                       
        Label        -compare-1620-sub         
        Subtract                               
        JumpNeg      -compare-1620-true        
        Jump         -compare-1620-false       
        Label        -compare-1620-true        
        PushI        1                         
        Jump         -compare-1620-join        
        Label        -compare-1620-false       
        PushI        0                         
        Jump         -compare-1620-join        
        Label        -compare-1620-join        
        JumpTrue     -print-boolean-1621-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1621-join  
        Label        -print-boolean-1621-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1621-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1622-arg1        
        PushI        122                       
        Label        -compare-1622-arg2        
        PushI        25                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1622-sub         
        Subtract                               
        JumpNeg      -compare-1622-true        
        Jump         -compare-1622-false       
        Label        -compare-1622-true        
        PushI        1                         
        Jump         -compare-1622-join        
        Label        -compare-1622-false       
        PushI        0                         
        Jump         -compare-1622-join        
        Label        -compare-1622-join        
        JumpTrue     -print-boolean-1623-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1623-join  
        Label        -print-boolean-1623-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1623-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1624-arg1        
        PushI        101                       
        Label        -compare-1624-arg2        
        PushI        59                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1624-sub         
        Subtract                               
        JumpNeg      -compare-1624-true        
        Jump         -compare-1624-false       
        Label        -compare-1624-true        
        PushI        1                         
        Jump         -compare-1624-join        
        Label        -compare-1624-false       
        PushI        0                         
        Jump         -compare-1624-join        
        Label        -compare-1624-join        
        JumpTrue     -print-boolean-1625-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1625-join  
        Label        -print-boolean-1625-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1625-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1626-arg1        
        PushI        56                        
        Label        -compare-1626-arg2        
        PushI        47                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1626-sub         
        Subtract                               
        JumpNeg      -compare-1626-true        
        Jump         -compare-1626-false       
        Label        -compare-1626-true        
        PushI        1                         
        Jump         -compare-1626-join        
        Label        -compare-1626-false       
        PushI        0                         
        Jump         -compare-1626-join        
        Label        -compare-1626-join        
        JumpTrue     -print-boolean-1627-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1627-join  
        Label        -print-boolean-1627-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1627-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1628-arg1        
        PushI        124                       
        Label        -compare-1628-arg2        
        PushI        23                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1628-sub         
        Subtract                               
        JumpNeg      -compare-1628-true        
        Jump         -compare-1628-false       
        Label        -compare-1628-true        
        PushI        1                         
        Jump         -compare-1628-join        
        Label        -compare-1628-false       
        PushI        0                         
        Jump         -compare-1628-join        
        Label        -compare-1628-join        
        JumpTrue     -print-boolean-1629-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1629-join  
        Label        -print-boolean-1629-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1629-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1630-arg1        
        PushI        68                        
        Label        -compare-1630-arg2        
        PushI        15                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1630-sub         
        Subtract                               
        JumpNeg      -compare-1630-true        
        Jump         -compare-1630-false       
        Label        -compare-1630-true        
        PushI        1                         
        Jump         -compare-1630-join        
        Label        -compare-1630-false       
        PushI        0                         
        Jump         -compare-1630-join        
        Label        -compare-1630-join        
        JumpTrue     -print-boolean-1631-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1631-join  
        Label        -print-boolean-1631-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1631-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1632-arg1        
        PushI        100                       
        Label        -compare-1632-arg2        
        PushI        6                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1632-sub         
        Subtract                               
        JumpNeg      -compare-1632-true        
        Jump         -compare-1632-false       
        Label        -compare-1632-true        
        PushI        1                         
        Jump         -compare-1632-join        
        Label        -compare-1632-false       
        PushI        0                         
        Jump         -compare-1632-join        
        Label        -compare-1632-join        
        JumpTrue     -print-boolean-1633-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1633-join  
        Label        -print-boolean-1633-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1633-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1634-arg1        
        PushI        125                       
        Label        -compare-1634-arg2        
        PushI        4                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1634-sub         
        Subtract                               
        JumpNeg      -compare-1634-true        
        Jump         -compare-1634-false       
        Label        -compare-1634-true        
        PushI        1                         
        Jump         -compare-1634-join        
        Label        -compare-1634-false       
        PushI        0                         
        Jump         -compare-1634-join        
        Label        -compare-1634-join        
        JumpTrue     -print-boolean-1635-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1635-join  
        Label        -print-boolean-1635-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1635-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1636-arg1        
        PushI        53                        
        Label        -compare-1636-arg2        
        PushI        36                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1636-sub         
        Subtract                               
        JumpNeg      -compare-1636-true        
        Jump         -compare-1636-false       
        Label        -compare-1636-true        
        PushI        1                         
        Jump         -compare-1636-join        
        Label        -compare-1636-false       
        PushI        0                         
        Jump         -compare-1636-join        
        Label        -compare-1636-join        
        JumpTrue     -print-boolean-1637-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1637-join  
        Label        -print-boolean-1637-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1637-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1638-arg1        
        PushI        49                        
        Label        -compare-1638-arg2        
        PushI        36                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1638-sub         
        Subtract                               
        JumpNeg      -compare-1638-true        
        Jump         -compare-1638-false       
        Label        -compare-1638-true        
        PushI        1                         
        Jump         -compare-1638-join        
        Label        -compare-1638-false       
        PushI        0                         
        Jump         -compare-1638-join        
        Label        -compare-1638-join        
        JumpTrue     -print-boolean-1639-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1639-join  
        Label        -print-boolean-1639-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1639-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1640-arg1        
        PushI        47                        
        Label        -compare-1640-arg2        
        PushI        20                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1640-sub         
        Subtract                               
        JumpNeg      -compare-1640-true        
        Jump         -compare-1640-false       
        Label        -compare-1640-true        
        PushI        1                         
        Jump         -compare-1640-join        
        Label        -compare-1640-false       
        PushI        0                         
        Jump         -compare-1640-join        
        Label        -compare-1640-join        
        JumpTrue     -print-boolean-1641-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1641-join  
        Label        -print-boolean-1641-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1641-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1642-arg1        
        PushI        124                       
        Label        -compare-1642-arg2        
        PushI        23                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1642-sub         
        Subtract                               
        JumpNeg      -compare-1642-true        
        Jump         -compare-1642-false       
        Label        -compare-1642-true        
        PushI        1                         
        Jump         -compare-1642-join        
        Label        -compare-1642-false       
        PushI        0                         
        Jump         -compare-1642-join        
        Label        -compare-1642-join        
        JumpTrue     -print-boolean-1643-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1643-join  
        Label        -print-boolean-1643-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1643-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1644-arg1        
        PushI        102                       
        Label        -compare-1644-arg2        
        PushI        30                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1644-sub         
        Subtract                               
        JumpNeg      -compare-1644-true        
        Jump         -compare-1644-false       
        Label        -compare-1644-true        
        PushI        1                         
        Jump         -compare-1644-join        
        Label        -compare-1644-false       
        PushI        0                         
        Jump         -compare-1644-join        
        Label        -compare-1644-join        
        JumpTrue     -print-boolean-1645-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1645-join  
        Label        -print-boolean-1645-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1645-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1646-arg1        
        PushI        29                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1646-arg2        
        PushI        64                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1646-sub         
        Subtract                               
        JumpNeg      -compare-1646-true        
        Jump         -compare-1646-false       
        Label        -compare-1646-true        
        PushI        1                         
        Jump         -compare-1646-join        
        Label        -compare-1646-false       
        PushI        0                         
        Jump         -compare-1646-join        
        Label        -compare-1646-join        
        JumpTrue     -print-boolean-1647-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1647-join  
        Label        -print-boolean-1647-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1647-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1648-arg1        
        PushI        24                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1648-arg2        
        PushI        12                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1648-sub         
        Subtract                               
        JumpNeg      -compare-1648-true        
        Jump         -compare-1648-false       
        Label        -compare-1648-true        
        PushI        1                         
        Jump         -compare-1648-join        
        Label        -compare-1648-false       
        PushI        0                         
        Jump         -compare-1648-join        
        Label        -compare-1648-join        
        JumpTrue     -print-boolean-1649-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1649-join  
        Label        -print-boolean-1649-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1649-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1650-arg1        
        PushI        17                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1650-arg2        
        PushI        37                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1650-sub         
        Subtract                               
        JumpNeg      -compare-1650-true        
        Jump         -compare-1650-false       
        Label        -compare-1650-true        
        PushI        1                         
        Jump         -compare-1650-join        
        Label        -compare-1650-false       
        PushI        0                         
        Jump         -compare-1650-join        
        Label        -compare-1650-join        
        JumpTrue     -print-boolean-1651-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1651-join  
        Label        -print-boolean-1651-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1651-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1652-arg1        
        PushI        47                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1652-arg2        
        PushI        91                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1652-sub         
        Subtract                               
        JumpNeg      -compare-1652-true        
        Jump         -compare-1652-false       
        Label        -compare-1652-true        
        PushI        1                         
        Jump         -compare-1652-join        
        Label        -compare-1652-false       
        PushI        0                         
        Jump         -compare-1652-join        
        Label        -compare-1652-join        
        JumpTrue     -print-boolean-1653-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1653-join  
        Label        -print-boolean-1653-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1653-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1654-arg1        
        PushI        99                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1654-arg2        
        PushI        53                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1654-sub         
        Subtract                               
        JumpNeg      -compare-1654-true        
        Jump         -compare-1654-false       
        Label        -compare-1654-true        
        PushI        1                         
        Jump         -compare-1654-join        
        Label        -compare-1654-false       
        PushI        0                         
        Jump         -compare-1654-join        
        Label        -compare-1654-join        
        JumpTrue     -print-boolean-1655-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1655-join  
        Label        -print-boolean-1655-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1655-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1656-arg1        
        PushI        5                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1656-arg2        
        PushI        94                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1656-sub         
        Subtract                               
        JumpNeg      -compare-1656-true        
        Jump         -compare-1656-false       
        Label        -compare-1656-true        
        PushI        1                         
        Jump         -compare-1656-join        
        Label        -compare-1656-false       
        PushI        0                         
        Jump         -compare-1656-join        
        Label        -compare-1656-join        
        JumpTrue     -print-boolean-1657-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1657-join  
        Label        -print-boolean-1657-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1657-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1658-arg1        
        PushI        76                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1658-arg2        
        PushI        12                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1658-sub         
        Subtract                               
        JumpNeg      -compare-1658-true        
        Jump         -compare-1658-false       
        Label        -compare-1658-true        
        PushI        1                         
        Jump         -compare-1658-join        
        Label        -compare-1658-false       
        PushI        0                         
        Jump         -compare-1658-join        
        Label        -compare-1658-join        
        JumpTrue     -print-boolean-1659-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1659-join  
        Label        -print-boolean-1659-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1659-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1660-arg1        
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1660-arg2        
        PushI        11                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1660-sub         
        Subtract                               
        JumpNeg      -compare-1660-true        
        Jump         -compare-1660-false       
        Label        -compare-1660-true        
        PushI        1                         
        Jump         -compare-1660-join        
        Label        -compare-1660-false       
        PushI        0                         
        Jump         -compare-1660-join        
        Label        -compare-1660-join        
        JumpTrue     -print-boolean-1661-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1661-join  
        Label        -print-boolean-1661-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1661-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1662-arg1        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1662-arg2        
        PushI        76                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1662-sub         
        Subtract                               
        JumpNeg      -compare-1662-true        
        Jump         -compare-1662-false       
        Label        -compare-1662-true        
        PushI        1                         
        Jump         -compare-1662-join        
        Label        -compare-1662-false       
        PushI        0                         
        Jump         -compare-1662-join        
        Label        -compare-1662-join        
        JumpTrue     -print-boolean-1663-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1663-join  
        Label        -print-boolean-1663-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1663-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1664-arg1        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1664-arg2        
        PushI        67                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1664-sub         
        Subtract                               
        JumpNeg      -compare-1664-true        
        Jump         -compare-1664-false       
        Label        -compare-1664-true        
        PushI        1                         
        Jump         -compare-1664-join        
        Label        -compare-1664-false       
        PushI        0                         
        Jump         -compare-1664-join        
        Label        -compare-1664-join        
        JumpTrue     -print-boolean-1665-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1665-join  
        Label        -print-boolean-1665-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1665-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1666-arg1        
        PushI        74                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1666-arg2        
        PushI        24                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1666-sub         
        Subtract                               
        JumpNeg      -compare-1666-true        
        Jump         -compare-1666-false       
        Label        -compare-1666-true        
        PushI        1                         
        Jump         -compare-1666-join        
        Label        -compare-1666-false       
        PushI        0                         
        Jump         -compare-1666-join        
        Label        -compare-1666-join        
        JumpTrue     -print-boolean-1667-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1667-join  
        Label        -print-boolean-1667-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1667-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1668-arg1        
        PushI        82                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1668-arg2        
        PushI        30                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1668-sub         
        Subtract                               
        JumpNeg      -compare-1668-true        
        Jump         -compare-1668-false       
        Label        -compare-1668-true        
        PushI        1                         
        Jump         -compare-1668-join        
        Label        -compare-1668-false       
        PushI        0                         
        Jump         -compare-1668-join        
        Label        -compare-1668-join        
        JumpTrue     -print-boolean-1669-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1669-join  
        Label        -print-boolean-1669-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1669-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
