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
        Label        -compare-1742-arg1        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1742-arg2        
        PushI        76                        
        Label        -compare-1742-sub         
        Subtract                               
        JumpFalse    -compare-1742-false       
        Jump         -compare-1742-true        
        Label        -compare-1742-true        
        PushI        1                         
        Jump         -compare-1742-join        
        Label        -compare-1742-false       
        PushI        0                         
        Jump         -compare-1742-join        
        Label        -compare-1742-join        
        JumpTrue     -print-boolean-1743-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1743-join  
        Label        -print-boolean-1743-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1743-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1744-arg1        
        PushI        15                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1744-arg2        
        PushI        36                        
        Label        -compare-1744-sub         
        Subtract                               
        JumpFalse    -compare-1744-false       
        Jump         -compare-1744-true        
        Label        -compare-1744-true        
        PushI        1                         
        Jump         -compare-1744-join        
        Label        -compare-1744-false       
        PushI        0                         
        Jump         -compare-1744-join        
        Label        -compare-1744-join        
        JumpTrue     -print-boolean-1745-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1745-join  
        Label        -print-boolean-1745-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1745-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1746-arg1        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1746-arg2        
        PushI        56                        
        Label        -compare-1746-sub         
        Subtract                               
        JumpFalse    -compare-1746-false       
        Jump         -compare-1746-true        
        Label        -compare-1746-true        
        PushI        1                         
        Jump         -compare-1746-join        
        Label        -compare-1746-false       
        PushI        0                         
        Jump         -compare-1746-join        
        Label        -compare-1746-join        
        JumpTrue     -print-boolean-1747-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1747-join  
        Label        -print-boolean-1747-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1747-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1748-arg1        
        PushI        23                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1748-arg2        
        PushI        89                        
        Label        -compare-1748-sub         
        Subtract                               
        JumpFalse    -compare-1748-false       
        Jump         -compare-1748-true        
        Label        -compare-1748-true        
        PushI        1                         
        Jump         -compare-1748-join        
        Label        -compare-1748-false       
        PushI        0                         
        Jump         -compare-1748-join        
        Label        -compare-1748-join        
        JumpTrue     -print-boolean-1749-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1749-join  
        Label        -print-boolean-1749-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1749-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1750-arg1        
        PushI        6                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1750-arg2        
        PushI        37                        
        Label        -compare-1750-sub         
        Subtract                               
        JumpFalse    -compare-1750-false       
        Jump         -compare-1750-true        
        Label        -compare-1750-true        
        PushI        1                         
        Jump         -compare-1750-join        
        Label        -compare-1750-false       
        PushI        0                         
        Jump         -compare-1750-join        
        Label        -compare-1750-join        
        JumpTrue     -print-boolean-1751-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1751-join  
        Label        -print-boolean-1751-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1751-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1752-arg1        
        PushI        86                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1752-arg2        
        PushI        56                        
        Label        -compare-1752-sub         
        Subtract                               
        JumpFalse    -compare-1752-false       
        Jump         -compare-1752-true        
        Label        -compare-1752-true        
        PushI        1                         
        Jump         -compare-1752-join        
        Label        -compare-1752-false       
        PushI        0                         
        Jump         -compare-1752-join        
        Label        -compare-1752-join        
        JumpTrue     -print-boolean-1753-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1753-join  
        Label        -print-boolean-1753-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1753-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1754-arg1        
        PushI        45                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1754-arg2        
        PushI        71                        
        Label        -compare-1754-sub         
        Subtract                               
        JumpFalse    -compare-1754-false       
        Jump         -compare-1754-true        
        Label        -compare-1754-true        
        PushI        1                         
        Jump         -compare-1754-join        
        Label        -compare-1754-false       
        PushI        0                         
        Jump         -compare-1754-join        
        Label        -compare-1754-join        
        JumpTrue     -print-boolean-1755-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1755-join  
        Label        -print-boolean-1755-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1755-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1756-arg1        
        PushI        95                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1756-arg2        
        PushI        50                        
        Label        -compare-1756-sub         
        Subtract                               
        JumpFalse    -compare-1756-false       
        Jump         -compare-1756-true        
        Label        -compare-1756-true        
        PushI        1                         
        Jump         -compare-1756-join        
        Label        -compare-1756-false       
        PushI        0                         
        Jump         -compare-1756-join        
        Label        -compare-1756-join        
        JumpTrue     -print-boolean-1757-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1757-join  
        Label        -print-boolean-1757-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1757-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1758-arg1        
        PushI        87                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1758-arg2        
        PushI        37                        
        Label        -compare-1758-sub         
        Subtract                               
        JumpFalse    -compare-1758-false       
        Jump         -compare-1758-true        
        Label        -compare-1758-true        
        PushI        1                         
        Jump         -compare-1758-join        
        Label        -compare-1758-false       
        PushI        0                         
        Jump         -compare-1758-join        
        Label        -compare-1758-join        
        JumpTrue     -print-boolean-1759-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1759-join  
        Label        -print-boolean-1759-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1759-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1760-arg1        
        PushI        64                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1760-arg2        
        PushI        34                        
        Label        -compare-1760-sub         
        Subtract                               
        JumpFalse    -compare-1760-false       
        Jump         -compare-1760-true        
        Label        -compare-1760-true        
        PushI        1                         
        Jump         -compare-1760-join        
        Label        -compare-1760-false       
        PushI        0                         
        Jump         -compare-1760-join        
        Label        -compare-1760-join        
        JumpTrue     -print-boolean-1761-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1761-join  
        Label        -print-boolean-1761-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1761-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1762-arg1        
        PushI        32                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1762-arg2        
        PushI        52                        
        Label        -compare-1762-sub         
        Subtract                               
        JumpFalse    -compare-1762-false       
        Jump         -compare-1762-true        
        Label        -compare-1762-true        
        PushI        1                         
        Jump         -compare-1762-join        
        Label        -compare-1762-false       
        PushI        0                         
        Jump         -compare-1762-join        
        Label        -compare-1762-join        
        JumpTrue     -print-boolean-1763-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1763-join  
        Label        -print-boolean-1763-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1763-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1764-arg1        
        PushI        73                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1764-arg2        
        PushI        49                        
        Label        -compare-1764-sub         
        Subtract                               
        JumpFalse    -compare-1764-false       
        Jump         -compare-1764-true        
        Label        -compare-1764-true        
        PushI        1                         
        Jump         -compare-1764-join        
        Label        -compare-1764-false       
        PushI        0                         
        Jump         -compare-1764-join        
        Label        -compare-1764-join        
        JumpTrue     -print-boolean-1765-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1765-join  
        Label        -print-boolean-1765-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1765-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1766-arg1        
        PushI        46                        
        Label        -compare-1766-arg2        
        PushI        5                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1766-sub         
        Subtract                               
        JumpFalse    -compare-1766-false       
        Jump         -compare-1766-true        
        Label        -compare-1766-true        
        PushI        1                         
        Jump         -compare-1766-join        
        Label        -compare-1766-false       
        PushI        0                         
        Jump         -compare-1766-join        
        Label        -compare-1766-join        
        JumpTrue     -print-boolean-1767-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1767-join  
        Label        -print-boolean-1767-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1767-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1768-arg1        
        PushI        43                        
        Label        -compare-1768-arg2        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1768-sub         
        Subtract                               
        JumpFalse    -compare-1768-false       
        Jump         -compare-1768-true        
        Label        -compare-1768-true        
        PushI        1                         
        Jump         -compare-1768-join        
        Label        -compare-1768-false       
        PushI        0                         
        Jump         -compare-1768-join        
        Label        -compare-1768-join        
        JumpTrue     -print-boolean-1769-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1769-join  
        Label        -print-boolean-1769-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1769-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1770-arg1        
        PushI        59                        
        Label        -compare-1770-arg2        
        PushI        33                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1770-sub         
        Subtract                               
        JumpFalse    -compare-1770-false       
        Jump         -compare-1770-true        
        Label        -compare-1770-true        
        PushI        1                         
        Jump         -compare-1770-join        
        Label        -compare-1770-false       
        PushI        0                         
        Jump         -compare-1770-join        
        Label        -compare-1770-join        
        JumpTrue     -print-boolean-1771-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1771-join  
        Label        -print-boolean-1771-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1771-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1772-arg1        
        PushI        104                       
        Label        -compare-1772-arg2        
        PushI        20                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1772-sub         
        Subtract                               
        JumpFalse    -compare-1772-false       
        Jump         -compare-1772-true        
        Label        -compare-1772-true        
        PushI        1                         
        Jump         -compare-1772-join        
        Label        -compare-1772-false       
        PushI        0                         
        Jump         -compare-1772-join        
        Label        -compare-1772-join        
        JumpTrue     -print-boolean-1773-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1773-join  
        Label        -print-boolean-1773-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1773-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1774-arg1        
        PushI        76                        
        Label        -compare-1774-arg2        
        PushI        82                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1774-sub         
        Subtract                               
        JumpFalse    -compare-1774-false       
        Jump         -compare-1774-true        
        Label        -compare-1774-true        
        PushI        1                         
        Jump         -compare-1774-join        
        Label        -compare-1774-false       
        PushI        0                         
        Jump         -compare-1774-join        
        Label        -compare-1774-join        
        JumpTrue     -print-boolean-1775-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1775-join  
        Label        -print-boolean-1775-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1775-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1776-arg1        
        PushI        83                        
        Label        -compare-1776-arg2        
        PushI        23                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1776-sub         
        Subtract                               
        JumpFalse    -compare-1776-false       
        Jump         -compare-1776-true        
        Label        -compare-1776-true        
        PushI        1                         
        Jump         -compare-1776-join        
        Label        -compare-1776-false       
        PushI        0                         
        Jump         -compare-1776-join        
        Label        -compare-1776-join        
        JumpTrue     -print-boolean-1777-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1777-join  
        Label        -print-boolean-1777-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1777-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1778-arg1        
        PushI        89                        
        Label        -compare-1778-arg2        
        PushI        84                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1778-sub         
        Subtract                               
        JumpFalse    -compare-1778-false       
        Jump         -compare-1778-true        
        Label        -compare-1778-true        
        PushI        1                         
        Jump         -compare-1778-join        
        Label        -compare-1778-false       
        PushI        0                         
        Jump         -compare-1778-join        
        Label        -compare-1778-join        
        JumpTrue     -print-boolean-1779-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1779-join  
        Label        -print-boolean-1779-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1779-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1780-arg1        
        PushI        68                        
        Label        -compare-1780-arg2        
        PushI        27                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1780-sub         
        Subtract                               
        JumpFalse    -compare-1780-false       
        Jump         -compare-1780-true        
        Label        -compare-1780-true        
        PushI        1                         
        Jump         -compare-1780-join        
        Label        -compare-1780-false       
        PushI        0                         
        Jump         -compare-1780-join        
        Label        -compare-1780-join        
        JumpTrue     -print-boolean-1781-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1781-join  
        Label        -print-boolean-1781-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1781-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1782-arg1        
        PushI        117                       
        Label        -compare-1782-arg2        
        PushI        20                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1782-sub         
        Subtract                               
        JumpFalse    -compare-1782-false       
        Jump         -compare-1782-true        
        Label        -compare-1782-true        
        PushI        1                         
        Jump         -compare-1782-join        
        Label        -compare-1782-false       
        PushI        0                         
        Jump         -compare-1782-join        
        Label        -compare-1782-join        
        JumpTrue     -print-boolean-1783-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1783-join  
        Label        -print-boolean-1783-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1783-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1784-arg1        
        PushI        92                        
        Label        -compare-1784-arg2        
        PushI        93                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1784-sub         
        Subtract                               
        JumpFalse    -compare-1784-false       
        Jump         -compare-1784-true        
        Label        -compare-1784-true        
        PushI        1                         
        Jump         -compare-1784-join        
        Label        -compare-1784-false       
        PushI        0                         
        Jump         -compare-1784-join        
        Label        -compare-1784-join        
        JumpTrue     -print-boolean-1785-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1785-join  
        Label        -print-boolean-1785-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1785-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1786-arg1        
        PushI        98                        
        Label        -compare-1786-arg2        
        PushI        88                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1786-sub         
        Subtract                               
        JumpFalse    -compare-1786-false       
        Jump         -compare-1786-true        
        Label        -compare-1786-true        
        PushI        1                         
        Jump         -compare-1786-join        
        Label        -compare-1786-false       
        PushI        0                         
        Jump         -compare-1786-join        
        Label        -compare-1786-join        
        JumpTrue     -print-boolean-1787-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1787-join  
        Label        -print-boolean-1787-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1787-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1788-arg1        
        PushI        87                        
        Label        -compare-1788-arg2        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1788-sub         
        Subtract                               
        JumpFalse    -compare-1788-false       
        Jump         -compare-1788-true        
        Label        -compare-1788-true        
        PushI        1                         
        Jump         -compare-1788-join        
        Label        -compare-1788-false       
        PushI        0                         
        Jump         -compare-1788-join        
        Label        -compare-1788-join        
        JumpTrue     -print-boolean-1789-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1789-join  
        Label        -print-boolean-1789-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1789-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1790-arg1        
        PushI        57                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1790-arg2        
        PushI        39                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1790-sub         
        Subtract                               
        JumpFalse    -compare-1790-false       
        Jump         -compare-1790-true        
        Label        -compare-1790-true        
        PushI        1                         
        Jump         -compare-1790-join        
        Label        -compare-1790-false       
        PushI        0                         
        Jump         -compare-1790-join        
        Label        -compare-1790-join        
        JumpTrue     -print-boolean-1791-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1791-join  
        Label        -print-boolean-1791-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1791-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1792-arg1        
        PushI        31                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1792-arg2        
        PushI        49                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1792-sub         
        Subtract                               
        JumpFalse    -compare-1792-false       
        Jump         -compare-1792-true        
        Label        -compare-1792-true        
        PushI        1                         
        Jump         -compare-1792-join        
        Label        -compare-1792-false       
        PushI        0                         
        Jump         -compare-1792-join        
        Label        -compare-1792-join        
        JumpTrue     -print-boolean-1793-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1793-join  
        Label        -print-boolean-1793-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1793-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1794-arg1        
        PushI        68                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1794-arg2        
        PushI        75                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1794-sub         
        Subtract                               
        JumpFalse    -compare-1794-false       
        Jump         -compare-1794-true        
        Label        -compare-1794-true        
        PushI        1                         
        Jump         -compare-1794-join        
        Label        -compare-1794-false       
        PushI        0                         
        Jump         -compare-1794-join        
        Label        -compare-1794-join        
        JumpTrue     -print-boolean-1795-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1795-join  
        Label        -print-boolean-1795-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1795-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1796-arg1        
        PushI        52                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1796-arg2        
        PushI        9                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1796-sub         
        Subtract                               
        JumpFalse    -compare-1796-false       
        Jump         -compare-1796-true        
        Label        -compare-1796-true        
        PushI        1                         
        Jump         -compare-1796-join        
        Label        -compare-1796-false       
        PushI        0                         
        Jump         -compare-1796-join        
        Label        -compare-1796-join        
        JumpTrue     -print-boolean-1797-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1797-join  
        Label        -print-boolean-1797-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1797-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1798-arg1        
        PushI        19                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1798-arg2        
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1798-sub         
        Subtract                               
        JumpFalse    -compare-1798-false       
        Jump         -compare-1798-true        
        Label        -compare-1798-true        
        PushI        1                         
        Jump         -compare-1798-join        
        Label        -compare-1798-false       
        PushI        0                         
        Jump         -compare-1798-join        
        Label        -compare-1798-join        
        JumpTrue     -print-boolean-1799-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1799-join  
        Label        -print-boolean-1799-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1799-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1800-arg1        
        PushI        50                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1800-arg2        
        PushI        10                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1800-sub         
        Subtract                               
        JumpFalse    -compare-1800-false       
        Jump         -compare-1800-true        
        Label        -compare-1800-true        
        PushI        1                         
        Jump         -compare-1800-join        
        Label        -compare-1800-false       
        PushI        0                         
        Jump         -compare-1800-join        
        Label        -compare-1800-join        
        JumpTrue     -print-boolean-1801-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1801-join  
        Label        -print-boolean-1801-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1801-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1802-arg1        
        PushI        43                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1802-arg2        
        PushI        58                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1802-sub         
        Subtract                               
        JumpFalse    -compare-1802-false       
        Jump         -compare-1802-true        
        Label        -compare-1802-true        
        PushI        1                         
        Jump         -compare-1802-join        
        Label        -compare-1802-false       
        PushI        0                         
        Jump         -compare-1802-join        
        Label        -compare-1802-join        
        JumpTrue     -print-boolean-1803-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1803-join  
        Label        -print-boolean-1803-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1803-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1804-arg1        
        PushI        6                         
        PushI        127                       
        BTAnd                                  
        Label        -compare-1804-arg2        
        PushI        67                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1804-sub         
        Subtract                               
        JumpFalse    -compare-1804-false       
        Jump         -compare-1804-true        
        Label        -compare-1804-true        
        PushI        1                         
        Jump         -compare-1804-join        
        Label        -compare-1804-false       
        PushI        0                         
        Jump         -compare-1804-join        
        Label        -compare-1804-join        
        JumpTrue     -print-boolean-1805-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1805-join  
        Label        -print-boolean-1805-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1805-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1806-arg1        
        PushI        93                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1806-arg2        
        PushI        10                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1806-sub         
        Subtract                               
        JumpFalse    -compare-1806-false       
        Jump         -compare-1806-true        
        Label        -compare-1806-true        
        PushI        1                         
        Jump         -compare-1806-join        
        Label        -compare-1806-false       
        PushI        0                         
        Jump         -compare-1806-join        
        Label        -compare-1806-join        
        JumpTrue     -print-boolean-1807-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1807-join  
        Label        -print-boolean-1807-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1807-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1808-arg1        
        PushI        45                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1808-arg2        
        PushI        41                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1808-sub         
        Subtract                               
        JumpFalse    -compare-1808-false       
        Jump         -compare-1808-true        
        Label        -compare-1808-true        
        PushI        1                         
        Jump         -compare-1808-join        
        Label        -compare-1808-false       
        PushI        0                         
        Jump         -compare-1808-join        
        Label        -compare-1808-join        
        JumpTrue     -print-boolean-1809-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1809-join  
        Label        -print-boolean-1809-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1809-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1810-arg1        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1810-arg2        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1810-sub         
        Subtract                               
        JumpFalse    -compare-1810-false       
        Jump         -compare-1810-true        
        Label        -compare-1810-true        
        PushI        1                         
        Jump         -compare-1810-join        
        Label        -compare-1810-false       
        PushI        0                         
        Jump         -compare-1810-join        
        Label        -compare-1810-join        
        JumpTrue     -print-boolean-1811-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1811-join  
        Label        -print-boolean-1811-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1811-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1812-arg1        
        PushI        23                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1812-arg2        
        PushI        76                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-1812-sub         
        Subtract                               
        JumpFalse    -compare-1812-false       
        Jump         -compare-1812-true        
        Label        -compare-1812-true        
        PushI        1                         
        Jump         -compare-1812-join        
        Label        -compare-1812-false       
        PushI        0                         
        Jump         -compare-1812-join        
        Label        -compare-1812-join        
        JumpTrue     -print-boolean-1813-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1813-join  
        Label        -print-boolean-1813-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1813-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
