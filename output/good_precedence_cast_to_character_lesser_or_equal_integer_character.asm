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
        Label        -compare-1670-arg1        
        PushI        11                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1670-arg2        
        PushI        90                        
        Label        -compare-1670-sub         
        Subtract                               
        JumpPos      -compare-1670-false       
        Jump         -compare-1670-true        
        Label        -compare-1670-true        
        PushI        1                         
        Jump         -compare-1670-join        
        Label        -compare-1670-false       
        PushI        0                         
        Jump         -compare-1670-join        
        Label        -compare-1670-join        
        JumpTrue     -print-boolean-1671-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1671-join  
        Label        -print-boolean-1671-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1671-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1672-arg1        
        PushI        36                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1672-arg2        
        PushI        68                        
        Label        -compare-1672-sub         
        Subtract                               
        JumpPos      -compare-1672-false       
        Jump         -compare-1672-true        
        Label        -compare-1672-true        
        PushI        1                         
        Jump         -compare-1672-join        
        Label        -compare-1672-false       
        PushI        0                         
        Jump         -compare-1672-join        
        Label        -compare-1672-join        
        JumpTrue     -print-boolean-1673-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1673-join  
        Label        -print-boolean-1673-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1673-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1674-arg1        
        PushI        28                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1674-arg2        
        PushI        81                        
        Label        -compare-1674-sub         
        Subtract                               
        JumpPos      -compare-1674-false       
        Jump         -compare-1674-true        
        Label        -compare-1674-true        
        PushI        1                         
        Jump         -compare-1674-join        
        Label        -compare-1674-false       
        PushI        0                         
        Jump         -compare-1674-join        
        Label        -compare-1674-join        
        JumpTrue     -print-boolean-1675-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1675-join  
        Label        -print-boolean-1675-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1675-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1676-arg1        
        PushI        44                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1676-arg2        
        PushI        91                        
        Label        -compare-1676-sub         
        Subtract                               
        JumpPos      -compare-1676-false       
        Jump         -compare-1676-true        
        Label        -compare-1676-true        
        PushI        1                         
        Jump         -compare-1676-join        
        Label        -compare-1676-false       
        PushI        0                         
        Jump         -compare-1676-join        
        Label        -compare-1676-join        
        JumpTrue     -print-boolean-1677-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1677-join  
        Label        -print-boolean-1677-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1677-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1678-arg1        
        PushI        54                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1678-arg2        
        PushI        103                       
        Label        -compare-1678-sub         
        Subtract                               
        JumpPos      -compare-1678-false       
        Jump         -compare-1678-true        
        Label        -compare-1678-true        
        PushI        1                         
        Jump         -compare-1678-join        
        Label        -compare-1678-false       
        PushI        0                         
        Jump         -compare-1678-join        
        Label        -compare-1678-join        
        JumpTrue     -print-boolean-1679-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1679-join  
        Label        -print-boolean-1679-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1679-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1680-arg1        
        PushI        44                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1680-arg2        
        PushI        88                        
        Label        -compare-1680-sub         
        Subtract                               
        JumpPos      -compare-1680-false       
        Jump         -compare-1680-true        
        Label        -compare-1680-true        
        PushI        1                         
        Jump         -compare-1680-join        
        Label        -compare-1680-false       
        PushI        0                         
        Jump         -compare-1680-join        
        Label        -compare-1680-join        
        JumpTrue     -print-boolean-1681-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1681-join  
        Label        -print-boolean-1681-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1681-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1682-arg1        
        PushI        49                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1682-arg2        
        PushI        58                        
        Label        -compare-1682-sub         
        Subtract                               
        JumpPos      -compare-1682-false       
        Jump         -compare-1682-true        
        Label        -compare-1682-true        
        PushI        1                         
        Jump         -compare-1682-join        
        Label        -compare-1682-false       
        PushI        0                         
        Jump         -compare-1682-join        
        Label        -compare-1682-join        
        JumpTrue     -print-boolean-1683-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1683-join  
        Label        -print-boolean-1683-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1683-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1684-arg1        
        PushI        11                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1684-arg2        
        PushI        102                       
        Label        -compare-1684-sub         
        Subtract                               
        JumpPos      -compare-1684-false       
        Jump         -compare-1684-true        
        Label        -compare-1684-true        
        PushI        1                         
        Jump         -compare-1684-join        
        Label        -compare-1684-false       
        PushI        0                         
        Jump         -compare-1684-join        
        Label        -compare-1684-join        
        JumpTrue     -print-boolean-1685-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1685-join  
        Label        -print-boolean-1685-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1685-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1686-arg1        
        PushI        20                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1686-arg2        
        PushI        71                        
        Label        -compare-1686-sub         
        Subtract                               
        JumpPos      -compare-1686-false       
        Jump         -compare-1686-true        
        Label        -compare-1686-true        
        PushI        1                         
        Jump         -compare-1686-join        
        Label        -compare-1686-false       
        PushI        0                         
        Jump         -compare-1686-join        
        Label        -compare-1686-join        
        JumpTrue     -print-boolean-1687-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1687-join  
        Label        -print-boolean-1687-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1687-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1688-arg1        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1688-arg2        
        PushI        55                        
        Label        -compare-1688-sub         
        Subtract                               
        JumpPos      -compare-1688-false       
        Jump         -compare-1688-true        
        Label        -compare-1688-true        
        PushI        1                         
        Jump         -compare-1688-join        
        Label        -compare-1688-false       
        PushI        0                         
        Jump         -compare-1688-join        
        Label        -compare-1688-join        
        JumpTrue     -print-boolean-1689-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1689-join  
        Label        -print-boolean-1689-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1689-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1690-arg1        
        PushI        71                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1690-arg2        
        PushI        58                        
        Label        -compare-1690-sub         
        Subtract                               
        JumpPos      -compare-1690-false       
        Jump         -compare-1690-true        
        Label        -compare-1690-true        
        PushI        1                         
        Jump         -compare-1690-join        
        Label        -compare-1690-false       
        PushI        0                         
        Jump         -compare-1690-join        
        Label        -compare-1690-join        
        JumpTrue     -print-boolean-1691-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1691-join  
        Label        -print-boolean-1691-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1691-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1692-arg1        
        PushI        37                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1692-arg2        
        PushI        69                        
        Label        -compare-1692-sub         
        Subtract                               
        JumpPos      -compare-1692-false       
        Jump         -compare-1692-true        
        Label        -compare-1692-true        
        PushI        1                         
        Jump         -compare-1692-join        
        Label        -compare-1692-false       
        PushI        0                         
        Jump         -compare-1692-join        
        Label        -compare-1692-join        
        JumpTrue     -print-boolean-1693-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1693-join  
        Label        -print-boolean-1693-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1693-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1694-arg1        
        PushI        53                        
        Label        -compare-1694-arg2        
        PushI        68                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1694-sub         
        Subtract                               
        JumpPos      -compare-1694-false       
        Jump         -compare-1694-true        
        Label        -compare-1694-true        
        PushI        1                         
        Jump         -compare-1694-join        
        Label        -compare-1694-false       
        PushI        0                         
        Jump         -compare-1694-join        
        Label        -compare-1694-join        
        JumpTrue     -print-boolean-1695-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1695-join  
        Label        -print-boolean-1695-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1695-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1696-arg1        
        PushI        88                        
        Label        -compare-1696-arg2        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1696-sub         
        Subtract                               
        JumpPos      -compare-1696-false       
        Jump         -compare-1696-true        
        Label        -compare-1696-true        
        PushI        1                         
        Jump         -compare-1696-join        
        Label        -compare-1696-false       
        PushI        0                         
        Jump         -compare-1696-join        
        Label        -compare-1696-join        
        JumpTrue     -print-boolean-1697-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1697-join  
        Label        -print-boolean-1697-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1697-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1698-arg1        
        PushI        109                       
        Label        -compare-1698-arg2        
        PushI        23                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1698-sub         
        Subtract                               
        JumpPos      -compare-1698-false       
        Jump         -compare-1698-true        
        Label        -compare-1698-true        
        PushI        1                         
        Jump         -compare-1698-join        
        Label        -compare-1698-false       
        PushI        0                         
        Jump         -compare-1698-join        
        Label        -compare-1698-join        
        JumpTrue     -print-boolean-1699-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1699-join  
        Label        -print-boolean-1699-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1699-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1700-arg1        
        PushI        83                        
        Label        -compare-1700-arg2        
        PushI        51                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1700-sub         
        Subtract                               
        JumpPos      -compare-1700-false       
        Jump         -compare-1700-true        
        Label        -compare-1700-true        
        PushI        1                         
        Jump         -compare-1700-join        
        Label        -compare-1700-false       
        PushI        0                         
        Jump         -compare-1700-join        
        Label        -compare-1700-join        
        JumpTrue     -print-boolean-1701-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1701-join  
        Label        -print-boolean-1701-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1701-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1702-arg1        
        PushI        84                        
        Label        -compare-1702-arg2        
        PushI        13                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1702-sub         
        Subtract                               
        JumpPos      -compare-1702-false       
        Jump         -compare-1702-true        
        Label        -compare-1702-true        
        PushI        1                         
        Jump         -compare-1702-join        
        Label        -compare-1702-false       
        PushI        0                         
        Jump         -compare-1702-join        
        Label        -compare-1702-join        
        JumpTrue     -print-boolean-1703-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1703-join  
        Label        -print-boolean-1703-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1703-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1704-arg1        
        PushI        98                        
        Label        -compare-1704-arg2        
        PushI        23                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1704-sub         
        Subtract                               
        JumpPos      -compare-1704-false       
        Jump         -compare-1704-true        
        Label        -compare-1704-true        
        PushI        1                         
        Jump         -compare-1704-join        
        Label        -compare-1704-false       
        PushI        0                         
        Jump         -compare-1704-join        
        Label        -compare-1704-join        
        JumpTrue     -print-boolean-1705-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1705-join  
        Label        -print-boolean-1705-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1705-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1706-arg1        
        PushI        89                        
        Label        -compare-1706-arg2        
        PushI        52                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1706-sub         
        Subtract                               
        JumpPos      -compare-1706-false       
        Jump         -compare-1706-true        
        Label        -compare-1706-true        
        PushI        1                         
        Jump         -compare-1706-join        
        Label        -compare-1706-false       
        PushI        0                         
        Jump         -compare-1706-join        
        Label        -compare-1706-join        
        JumpTrue     -print-boolean-1707-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1707-join  
        Label        -print-boolean-1707-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1707-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1708-arg1        
        PushI        53                        
        Label        -compare-1708-arg2        
        PushI        64                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1708-sub         
        Subtract                               
        JumpPos      -compare-1708-false       
        Jump         -compare-1708-true        
        Label        -compare-1708-true        
        PushI        1                         
        Jump         -compare-1708-join        
        Label        -compare-1708-false       
        PushI        0                         
        Jump         -compare-1708-join        
        Label        -compare-1708-join        
        JumpTrue     -print-boolean-1709-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1709-join  
        Label        -print-boolean-1709-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1709-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1710-arg1        
        PushI        55                        
        Label        -compare-1710-arg2        
        PushI        80                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1710-sub         
        Subtract                               
        JumpPos      -compare-1710-false       
        Jump         -compare-1710-true        
        Label        -compare-1710-true        
        PushI        1                         
        Jump         -compare-1710-join        
        Label        -compare-1710-false       
        PushI        0                         
        Jump         -compare-1710-join        
        Label        -compare-1710-join        
        JumpTrue     -print-boolean-1711-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1711-join  
        Label        -print-boolean-1711-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1711-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1712-arg1        
        PushI        37                        
        Label        -compare-1712-arg2        
        PushI        21                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1712-sub         
        Subtract                               
        JumpPos      -compare-1712-false       
        Jump         -compare-1712-true        
        Label        -compare-1712-true        
        PushI        1                         
        Jump         -compare-1712-join        
        Label        -compare-1712-false       
        PushI        0                         
        Jump         -compare-1712-join        
        Label        -compare-1712-join        
        JumpTrue     -print-boolean-1713-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1713-join  
        Label        -print-boolean-1713-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1713-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1714-arg1        
        PushI        78                        
        Label        -compare-1714-arg2        
        PushI        78                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1714-sub         
        Subtract                               
        JumpPos      -compare-1714-false       
        Jump         -compare-1714-true        
        Label        -compare-1714-true        
        PushI        1                         
        Jump         -compare-1714-join        
        Label        -compare-1714-false       
        PushI        0                         
        Jump         -compare-1714-join        
        Label        -compare-1714-join        
        JumpTrue     -print-boolean-1715-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1715-join  
        Label        -print-boolean-1715-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1715-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1716-arg1        
        PushI        52                        
        Label        -compare-1716-arg2        
        PushI        8                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1716-sub         
        Subtract                               
        JumpPos      -compare-1716-false       
        Jump         -compare-1716-true        
        Label        -compare-1716-true        
        PushI        1                         
        Jump         -compare-1716-join        
        Label        -compare-1716-false       
        PushI        0                         
        Jump         -compare-1716-join        
        Label        -compare-1716-join        
        JumpTrue     -print-boolean-1717-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1717-join  
        Label        -print-boolean-1717-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1717-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1718-arg1        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1718-arg2        
        PushI        90                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1718-sub         
        Subtract                               
        JumpPos      -compare-1718-false       
        Jump         -compare-1718-true        
        Label        -compare-1718-true        
        PushI        1                         
        Jump         -compare-1718-join        
        Label        -compare-1718-false       
        PushI        0                         
        Jump         -compare-1718-join        
        Label        -compare-1718-join        
        JumpTrue     -print-boolean-1719-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1719-join  
        Label        -print-boolean-1719-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1719-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1720-arg1        
        PushI        8                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1720-arg2        
        PushI        86                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1720-sub         
        Subtract                               
        JumpPos      -compare-1720-false       
        Jump         -compare-1720-true        
        Label        -compare-1720-true        
        PushI        1                         
        Jump         -compare-1720-join        
        Label        -compare-1720-false       
        PushI        0                         
        Jump         -compare-1720-join        
        Label        -compare-1720-join        
        JumpTrue     -print-boolean-1721-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1721-join  
        Label        -print-boolean-1721-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1721-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1722-arg1        
        PushI        27                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1722-arg2        
        PushI        25                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1722-sub         
        Subtract                               
        JumpPos      -compare-1722-false       
        Jump         -compare-1722-true        
        Label        -compare-1722-true        
        PushI        1                         
        Jump         -compare-1722-join        
        Label        -compare-1722-false       
        PushI        0                         
        Jump         -compare-1722-join        
        Label        -compare-1722-join        
        JumpTrue     -print-boolean-1723-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1723-join  
        Label        -print-boolean-1723-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1723-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1724-arg1        
        PushI        47                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1724-arg2        
        PushI        20                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1724-sub         
        Subtract                               
        JumpPos      -compare-1724-false       
        Jump         -compare-1724-true        
        Label        -compare-1724-true        
        PushI        1                         
        Jump         -compare-1724-join        
        Label        -compare-1724-false       
        PushI        0                         
        Jump         -compare-1724-join        
        Label        -compare-1724-join        
        JumpTrue     -print-boolean-1725-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1725-join  
        Label        -print-boolean-1725-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1725-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1726-arg1        
        PushI        24                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1726-arg2        
        PushI        50                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1726-sub         
        Subtract                               
        JumpPos      -compare-1726-false       
        Jump         -compare-1726-true        
        Label        -compare-1726-true        
        PushI        1                         
        Jump         -compare-1726-join        
        Label        -compare-1726-false       
        PushI        0                         
        Jump         -compare-1726-join        
        Label        -compare-1726-join        
        JumpTrue     -print-boolean-1727-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1727-join  
        Label        -print-boolean-1727-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1727-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1728-arg1        
        PushI        33                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1728-arg2        
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1728-sub         
        Subtract                               
        JumpPos      -compare-1728-false       
        Jump         -compare-1728-true        
        Label        -compare-1728-true        
        PushI        1                         
        Jump         -compare-1728-join        
        Label        -compare-1728-false       
        PushI        0                         
        Jump         -compare-1728-join        
        Label        -compare-1728-join        
        JumpTrue     -print-boolean-1729-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1729-join  
        Label        -print-boolean-1729-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1729-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1730-arg1        
        PushI        60                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1730-arg2        
        PushI        75                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1730-sub         
        Subtract                               
        JumpPos      -compare-1730-false       
        Jump         -compare-1730-true        
        Label        -compare-1730-true        
        PushI        1                         
        Jump         -compare-1730-join        
        Label        -compare-1730-false       
        PushI        0                         
        Jump         -compare-1730-join        
        Label        -compare-1730-join        
        JumpTrue     -print-boolean-1731-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1731-join  
        Label        -print-boolean-1731-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1731-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1732-arg1        
        PushI        69                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1732-arg2        
        PushI        95                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1732-sub         
        Subtract                               
        JumpPos      -compare-1732-false       
        Jump         -compare-1732-true        
        Label        -compare-1732-true        
        PushI        1                         
        Jump         -compare-1732-join        
        Label        -compare-1732-false       
        PushI        0                         
        Jump         -compare-1732-join        
        Label        -compare-1732-join        
        JumpTrue     -print-boolean-1733-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1733-join  
        Label        -print-boolean-1733-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1733-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1734-arg1        
        PushI        92                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1734-arg2        
        PushI        81                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1734-sub         
        Subtract                               
        JumpPos      -compare-1734-false       
        Jump         -compare-1734-true        
        Label        -compare-1734-true        
        PushI        1                         
        Jump         -compare-1734-join        
        Label        -compare-1734-false       
        PushI        0                         
        Jump         -compare-1734-join        
        Label        -compare-1734-join        
        JumpTrue     -print-boolean-1735-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1735-join  
        Label        -print-boolean-1735-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1735-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1736-arg1        
        PushI        6                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1736-arg2        
        PushI        32                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1736-sub         
        Subtract                               
        JumpPos      -compare-1736-false       
        Jump         -compare-1736-true        
        Label        -compare-1736-true        
        PushI        1                         
        Jump         -compare-1736-join        
        Label        -compare-1736-false       
        PushI        0                         
        Jump         -compare-1736-join        
        Label        -compare-1736-join        
        JumpTrue     -print-boolean-1737-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1737-join  
        Label        -print-boolean-1737-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1737-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1738-arg1        
        PushI        80                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1738-arg2        
        PushI        79                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1738-sub         
        Subtract                               
        JumpPos      -compare-1738-false       
        Jump         -compare-1738-true        
        Label        -compare-1738-true        
        PushI        1                         
        Jump         -compare-1738-join        
        Label        -compare-1738-false       
        PushI        0                         
        Jump         -compare-1738-join        
        Label        -compare-1738-join        
        JumpTrue     -print-boolean-1739-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1739-join  
        Label        -print-boolean-1739-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1739-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1740-arg1        
        PushI        17                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1740-arg2        
        PushI        46                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1740-sub         
        Subtract                               
        JumpPos      -compare-1740-false       
        Jump         -compare-1740-true        
        Label        -compare-1740-true        
        PushI        1                         
        Jump         -compare-1740-join        
        Label        -compare-1740-false       
        PushI        0                         
        Jump         -compare-1740-join        
        Label        -compare-1740-join        
        JumpTrue     -print-boolean-1741-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1741-join  
        Label        -print-boolean-1741-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1741-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
