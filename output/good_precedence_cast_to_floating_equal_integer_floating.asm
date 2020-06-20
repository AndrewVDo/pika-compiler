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
        Label        -compare-1814-arg1        
        PushI        88                        
        ConvertF                               
        Label        -compare-1814-arg2        
        PushF        7.300000                  
        Label        -compare-1814-sub         
        FSubtract                              
        JumpFZero    -compare-1814-true        
        Jump         -compare-1814-false       
        Label        -compare-1814-true        
        PushI        1                         
        Jump         -compare-1814-join        
        Label        -compare-1814-false       
        PushI        0                         
        Jump         -compare-1814-join        
        Label        -compare-1814-join        
        JumpTrue     -print-boolean-1815-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1815-join  
        Label        -print-boolean-1815-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1815-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1816-arg1        
        PushI        25                        
        ConvertF                               
        Label        -compare-1816-arg2        
        PushF        2.300000                  
        Label        -compare-1816-sub         
        FSubtract                              
        JumpFZero    -compare-1816-true        
        Jump         -compare-1816-false       
        Label        -compare-1816-true        
        PushI        1                         
        Jump         -compare-1816-join        
        Label        -compare-1816-false       
        PushI        0                         
        Jump         -compare-1816-join        
        Label        -compare-1816-join        
        JumpTrue     -print-boolean-1817-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1817-join  
        Label        -print-boolean-1817-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1817-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1818-arg1        
        PushI        1                         
        ConvertF                               
        Label        -compare-1818-arg2        
        PushF        8.400000                  
        Label        -compare-1818-sub         
        FSubtract                              
        JumpFZero    -compare-1818-true        
        Jump         -compare-1818-false       
        Label        -compare-1818-true        
        PushI        1                         
        Jump         -compare-1818-join        
        Label        -compare-1818-false       
        PushI        0                         
        Jump         -compare-1818-join        
        Label        -compare-1818-join        
        JumpTrue     -print-boolean-1819-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1819-join  
        Label        -print-boolean-1819-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1819-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1820-arg1        
        PushI        42                        
        ConvertF                               
        Label        -compare-1820-arg2        
        PushF        5.300000                  
        Label        -compare-1820-sub         
        FSubtract                              
        JumpFZero    -compare-1820-true        
        Jump         -compare-1820-false       
        Label        -compare-1820-true        
        PushI        1                         
        Jump         -compare-1820-join        
        Label        -compare-1820-false       
        PushI        0                         
        Jump         -compare-1820-join        
        Label        -compare-1820-join        
        JumpTrue     -print-boolean-1821-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1821-join  
        Label        -print-boolean-1821-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1821-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1822-arg1        
        PushI        37                        
        ConvertF                               
        Label        -compare-1822-arg2        
        PushF        2.600000                  
        Label        -compare-1822-sub         
        FSubtract                              
        JumpFZero    -compare-1822-true        
        Jump         -compare-1822-false       
        Label        -compare-1822-true        
        PushI        1                         
        Jump         -compare-1822-join        
        Label        -compare-1822-false       
        PushI        0                         
        Jump         -compare-1822-join        
        Label        -compare-1822-join        
        JumpTrue     -print-boolean-1823-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1823-join  
        Label        -print-boolean-1823-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1823-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1824-arg1        
        PushI        72                        
        ConvertF                               
        Label        -compare-1824-arg2        
        PushF        3.700000                  
        Label        -compare-1824-sub         
        FSubtract                              
        JumpFZero    -compare-1824-true        
        Jump         -compare-1824-false       
        Label        -compare-1824-true        
        PushI        1                         
        Jump         -compare-1824-join        
        Label        -compare-1824-false       
        PushI        0                         
        Jump         -compare-1824-join        
        Label        -compare-1824-join        
        JumpTrue     -print-boolean-1825-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1825-join  
        Label        -print-boolean-1825-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1825-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1826-arg1        
        PushI        40                        
        ConvertF                               
        Label        -compare-1826-arg2        
        PushF        8.600000                  
        Label        -compare-1826-sub         
        FSubtract                              
        JumpFZero    -compare-1826-true        
        Jump         -compare-1826-false       
        Label        -compare-1826-true        
        PushI        1                         
        Jump         -compare-1826-join        
        Label        -compare-1826-false       
        PushI        0                         
        Jump         -compare-1826-join        
        Label        -compare-1826-join        
        JumpTrue     -print-boolean-1827-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1827-join  
        Label        -print-boolean-1827-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1827-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1828-arg1        
        PushI        93                        
        ConvertF                               
        Label        -compare-1828-arg2        
        PushF        7.900000                  
        Label        -compare-1828-sub         
        FSubtract                              
        JumpFZero    -compare-1828-true        
        Jump         -compare-1828-false       
        Label        -compare-1828-true        
        PushI        1                         
        Jump         -compare-1828-join        
        Label        -compare-1828-false       
        PushI        0                         
        Jump         -compare-1828-join        
        Label        -compare-1828-join        
        JumpTrue     -print-boolean-1829-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1829-join  
        Label        -print-boolean-1829-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1829-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1830-arg1        
        PushI        65                        
        ConvertF                               
        Label        -compare-1830-arg2        
        PushF        4.800000                  
        Label        -compare-1830-sub         
        FSubtract                              
        JumpFZero    -compare-1830-true        
        Jump         -compare-1830-false       
        Label        -compare-1830-true        
        PushI        1                         
        Jump         -compare-1830-join        
        Label        -compare-1830-false       
        PushI        0                         
        Jump         -compare-1830-join        
        Label        -compare-1830-join        
        JumpTrue     -print-boolean-1831-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1831-join  
        Label        -print-boolean-1831-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1831-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1832-arg1        
        PushI        56                        
        ConvertF                               
        Label        -compare-1832-arg2        
        PushF        6.700000                  
        Label        -compare-1832-sub         
        FSubtract                              
        JumpFZero    -compare-1832-true        
        Jump         -compare-1832-false       
        Label        -compare-1832-true        
        PushI        1                         
        Jump         -compare-1832-join        
        Label        -compare-1832-false       
        PushI        0                         
        Jump         -compare-1832-join        
        Label        -compare-1832-join        
        JumpTrue     -print-boolean-1833-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1833-join  
        Label        -print-boolean-1833-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1833-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1834-arg1        
        PushI        46                        
        ConvertF                               
        Label        -compare-1834-arg2        
        PushF        7.400000                  
        Label        -compare-1834-sub         
        FSubtract                              
        JumpFZero    -compare-1834-true        
        Jump         -compare-1834-false       
        Label        -compare-1834-true        
        PushI        1                         
        Jump         -compare-1834-join        
        Label        -compare-1834-false       
        PushI        0                         
        Jump         -compare-1834-join        
        Label        -compare-1834-join        
        JumpTrue     -print-boolean-1835-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1835-join  
        Label        -print-boolean-1835-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1835-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1836-arg1        
        PushI        93                        
        ConvertF                               
        Label        -compare-1836-arg2        
        PushF        7.600000                  
        Label        -compare-1836-sub         
        FSubtract                              
        JumpFZero    -compare-1836-true        
        Jump         -compare-1836-false       
        Label        -compare-1836-true        
        PushI        1                         
        Jump         -compare-1836-join        
        Label        -compare-1836-false       
        PushI        0                         
        Jump         -compare-1836-join        
        Label        -compare-1836-join        
        JumpTrue     -print-boolean-1837-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1837-join  
        Label        -print-boolean-1837-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1837-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1838-arg1        
        PushF        5.900000                  
        Label        -compare-1838-arg2        
        PushI        75                        
        ConvertF                               
        Label        -compare-1838-sub         
        FSubtract                              
        JumpFZero    -compare-1838-true        
        Jump         -compare-1838-false       
        Label        -compare-1838-true        
        PushI        1                         
        Jump         -compare-1838-join        
        Label        -compare-1838-false       
        PushI        0                         
        Jump         -compare-1838-join        
        Label        -compare-1838-join        
        JumpTrue     -print-boolean-1839-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1839-join  
        Label        -print-boolean-1839-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1839-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1840-arg1        
        PushF        3.100000                  
        Label        -compare-1840-arg2        
        PushI        1                         
        ConvertF                               
        Label        -compare-1840-sub         
        FSubtract                              
        JumpFZero    -compare-1840-true        
        Jump         -compare-1840-false       
        Label        -compare-1840-true        
        PushI        1                         
        Jump         -compare-1840-join        
        Label        -compare-1840-false       
        PushI        0                         
        Jump         -compare-1840-join        
        Label        -compare-1840-join        
        JumpTrue     -print-boolean-1841-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1841-join  
        Label        -print-boolean-1841-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1841-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1842-arg1        
        PushF        4.300000                  
        Label        -compare-1842-arg2        
        PushI        80                        
        ConvertF                               
        Label        -compare-1842-sub         
        FSubtract                              
        JumpFZero    -compare-1842-true        
        Jump         -compare-1842-false       
        Label        -compare-1842-true        
        PushI        1                         
        Jump         -compare-1842-join        
        Label        -compare-1842-false       
        PushI        0                         
        Jump         -compare-1842-join        
        Label        -compare-1842-join        
        JumpTrue     -print-boolean-1843-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1843-join  
        Label        -print-boolean-1843-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1843-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1844-arg1        
        PushF        7.700000                  
        Label        -compare-1844-arg2        
        PushI        81                        
        ConvertF                               
        Label        -compare-1844-sub         
        FSubtract                              
        JumpFZero    -compare-1844-true        
        Jump         -compare-1844-false       
        Label        -compare-1844-true        
        PushI        1                         
        Jump         -compare-1844-join        
        Label        -compare-1844-false       
        PushI        0                         
        Jump         -compare-1844-join        
        Label        -compare-1844-join        
        JumpTrue     -print-boolean-1845-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1845-join  
        Label        -print-boolean-1845-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1845-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1846-arg1        
        PushF        5.300000                  
        Label        -compare-1846-arg2        
        PushI        71                        
        ConvertF                               
        Label        -compare-1846-sub         
        FSubtract                              
        JumpFZero    -compare-1846-true        
        Jump         -compare-1846-false       
        Label        -compare-1846-true        
        PushI        1                         
        Jump         -compare-1846-join        
        Label        -compare-1846-false       
        PushI        0                         
        Jump         -compare-1846-join        
        Label        -compare-1846-join        
        JumpTrue     -print-boolean-1847-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1847-join  
        Label        -print-boolean-1847-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1847-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1848-arg1        
        PushF        4.000000                  
        Label        -compare-1848-arg2        
        PushI        56                        
        ConvertF                               
        Label        -compare-1848-sub         
        FSubtract                              
        JumpFZero    -compare-1848-true        
        Jump         -compare-1848-false       
        Label        -compare-1848-true        
        PushI        1                         
        Jump         -compare-1848-join        
        Label        -compare-1848-false       
        PushI        0                         
        Jump         -compare-1848-join        
        Label        -compare-1848-join        
        JumpTrue     -print-boolean-1849-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1849-join  
        Label        -print-boolean-1849-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1849-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1850-arg1        
        PushF        1.300000                  
        Label        -compare-1850-arg2        
        PushI        22                        
        ConvertF                               
        Label        -compare-1850-sub         
        FSubtract                              
        JumpFZero    -compare-1850-true        
        Jump         -compare-1850-false       
        Label        -compare-1850-true        
        PushI        1                         
        Jump         -compare-1850-join        
        Label        -compare-1850-false       
        PushI        0                         
        Jump         -compare-1850-join        
        Label        -compare-1850-join        
        JumpTrue     -print-boolean-1851-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1851-join  
        Label        -print-boolean-1851-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1851-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1852-arg1        
        PushF        6.900000                  
        Label        -compare-1852-arg2        
        PushI        46                        
        ConvertF                               
        Label        -compare-1852-sub         
        FSubtract                              
        JumpFZero    -compare-1852-true        
        Jump         -compare-1852-false       
        Label        -compare-1852-true        
        PushI        1                         
        Jump         -compare-1852-join        
        Label        -compare-1852-false       
        PushI        0                         
        Jump         -compare-1852-join        
        Label        -compare-1852-join        
        JumpTrue     -print-boolean-1853-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1853-join  
        Label        -print-boolean-1853-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1853-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1854-arg1        
        PushF        2.400000                  
        Label        -compare-1854-arg2        
        PushI        22                        
        ConvertF                               
        Label        -compare-1854-sub         
        FSubtract                              
        JumpFZero    -compare-1854-true        
        Jump         -compare-1854-false       
        Label        -compare-1854-true        
        PushI        1                         
        Jump         -compare-1854-join        
        Label        -compare-1854-false       
        PushI        0                         
        Jump         -compare-1854-join        
        Label        -compare-1854-join        
        JumpTrue     -print-boolean-1855-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1855-join  
        Label        -print-boolean-1855-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1855-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1856-arg1        
        PushF        7.900000                  
        Label        -compare-1856-arg2        
        PushI        14                        
        ConvertF                               
        Label        -compare-1856-sub         
        FSubtract                              
        JumpFZero    -compare-1856-true        
        Jump         -compare-1856-false       
        Label        -compare-1856-true        
        PushI        1                         
        Jump         -compare-1856-join        
        Label        -compare-1856-false       
        PushI        0                         
        Jump         -compare-1856-join        
        Label        -compare-1856-join        
        JumpTrue     -print-boolean-1857-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1857-join  
        Label        -print-boolean-1857-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1857-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1858-arg1        
        PushF        5.500000                  
        Label        -compare-1858-arg2        
        PushI        6                         
        ConvertF                               
        Label        -compare-1858-sub         
        FSubtract                              
        JumpFZero    -compare-1858-true        
        Jump         -compare-1858-false       
        Label        -compare-1858-true        
        PushI        1                         
        Jump         -compare-1858-join        
        Label        -compare-1858-false       
        PushI        0                         
        Jump         -compare-1858-join        
        Label        -compare-1858-join        
        JumpTrue     -print-boolean-1859-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1859-join  
        Label        -print-boolean-1859-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1859-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1860-arg1        
        PushF        6.900000                  
        Label        -compare-1860-arg2        
        PushI        43                        
        ConvertF                               
        Label        -compare-1860-sub         
        FSubtract                              
        JumpFZero    -compare-1860-true        
        Jump         -compare-1860-false       
        Label        -compare-1860-true        
        PushI        1                         
        Jump         -compare-1860-join        
        Label        -compare-1860-false       
        PushI        0                         
        Jump         -compare-1860-join        
        Label        -compare-1860-join        
        JumpTrue     -print-boolean-1861-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1861-join  
        Label        -print-boolean-1861-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1861-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1862-arg1        
        PushI        40                        
        ConvertF                               
        Label        -compare-1862-arg2        
        PushI        17                        
        ConvertF                               
        Label        -compare-1862-sub         
        FSubtract                              
        JumpFZero    -compare-1862-true        
        Jump         -compare-1862-false       
        Label        -compare-1862-true        
        PushI        1                         
        Jump         -compare-1862-join        
        Label        -compare-1862-false       
        PushI        0                         
        Jump         -compare-1862-join        
        Label        -compare-1862-join        
        JumpTrue     -print-boolean-1863-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1863-join  
        Label        -print-boolean-1863-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1863-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1864-arg1        
        PushI        54                        
        ConvertF                               
        Label        -compare-1864-arg2        
        PushI        7                         
        ConvertF                               
        Label        -compare-1864-sub         
        FSubtract                              
        JumpFZero    -compare-1864-true        
        Jump         -compare-1864-false       
        Label        -compare-1864-true        
        PushI        1                         
        Jump         -compare-1864-join        
        Label        -compare-1864-false       
        PushI        0                         
        Jump         -compare-1864-join        
        Label        -compare-1864-join        
        JumpTrue     -print-boolean-1865-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1865-join  
        Label        -print-boolean-1865-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1865-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1866-arg1        
        PushI        13                        
        ConvertF                               
        Label        -compare-1866-arg2        
        PushI        43                        
        ConvertF                               
        Label        -compare-1866-sub         
        FSubtract                              
        JumpFZero    -compare-1866-true        
        Jump         -compare-1866-false       
        Label        -compare-1866-true        
        PushI        1                         
        Jump         -compare-1866-join        
        Label        -compare-1866-false       
        PushI        0                         
        Jump         -compare-1866-join        
        Label        -compare-1866-join        
        JumpTrue     -print-boolean-1867-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1867-join  
        Label        -print-boolean-1867-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1867-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1868-arg1        
        PushI        14                        
        ConvertF                               
        Label        -compare-1868-arg2        
        PushI        60                        
        ConvertF                               
        Label        -compare-1868-sub         
        FSubtract                              
        JumpFZero    -compare-1868-true        
        Jump         -compare-1868-false       
        Label        -compare-1868-true        
        PushI        1                         
        Jump         -compare-1868-join        
        Label        -compare-1868-false       
        PushI        0                         
        Jump         -compare-1868-join        
        Label        -compare-1868-join        
        JumpTrue     -print-boolean-1869-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1869-join  
        Label        -print-boolean-1869-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1869-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1870-arg1        
        PushI        22                        
        ConvertF                               
        Label        -compare-1870-arg2        
        PushI        85                        
        ConvertF                               
        Label        -compare-1870-sub         
        FSubtract                              
        JumpFZero    -compare-1870-true        
        Jump         -compare-1870-false       
        Label        -compare-1870-true        
        PushI        1                         
        Jump         -compare-1870-join        
        Label        -compare-1870-false       
        PushI        0                         
        Jump         -compare-1870-join        
        Label        -compare-1870-join        
        JumpTrue     -print-boolean-1871-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1871-join  
        Label        -print-boolean-1871-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1871-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1872-arg1        
        PushI        18                        
        ConvertF                               
        Label        -compare-1872-arg2        
        PushI        42                        
        ConvertF                               
        Label        -compare-1872-sub         
        FSubtract                              
        JumpFZero    -compare-1872-true        
        Jump         -compare-1872-false       
        Label        -compare-1872-true        
        PushI        1                         
        Jump         -compare-1872-join        
        Label        -compare-1872-false       
        PushI        0                         
        Jump         -compare-1872-join        
        Label        -compare-1872-join        
        JumpTrue     -print-boolean-1873-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1873-join  
        Label        -print-boolean-1873-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1873-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1874-arg1        
        PushI        94                        
        ConvertF                               
        Label        -compare-1874-arg2        
        PushI        92                        
        ConvertF                               
        Label        -compare-1874-sub         
        FSubtract                              
        JumpFZero    -compare-1874-true        
        Jump         -compare-1874-false       
        Label        -compare-1874-true        
        PushI        1                         
        Jump         -compare-1874-join        
        Label        -compare-1874-false       
        PushI        0                         
        Jump         -compare-1874-join        
        Label        -compare-1874-join        
        JumpTrue     -print-boolean-1875-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1875-join  
        Label        -print-boolean-1875-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1875-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1876-arg1        
        PushI        53                        
        ConvertF                               
        Label        -compare-1876-arg2        
        PushI        96                        
        ConvertF                               
        Label        -compare-1876-sub         
        FSubtract                              
        JumpFZero    -compare-1876-true        
        Jump         -compare-1876-false       
        Label        -compare-1876-true        
        PushI        1                         
        Jump         -compare-1876-join        
        Label        -compare-1876-false       
        PushI        0                         
        Jump         -compare-1876-join        
        Label        -compare-1876-join        
        JumpTrue     -print-boolean-1877-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1877-join  
        Label        -print-boolean-1877-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1877-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1878-arg1        
        PushI        46                        
        ConvertF                               
        Label        -compare-1878-arg2        
        PushI        15                        
        ConvertF                               
        Label        -compare-1878-sub         
        FSubtract                              
        JumpFZero    -compare-1878-true        
        Jump         -compare-1878-false       
        Label        -compare-1878-true        
        PushI        1                         
        Jump         -compare-1878-join        
        Label        -compare-1878-false       
        PushI        0                         
        Jump         -compare-1878-join        
        Label        -compare-1878-join        
        JumpTrue     -print-boolean-1879-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1879-join  
        Label        -print-boolean-1879-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1879-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1880-arg1        
        PushI        29                        
        ConvertF                               
        Label        -compare-1880-arg2        
        PushI        70                        
        ConvertF                               
        Label        -compare-1880-sub         
        FSubtract                              
        JumpFZero    -compare-1880-true        
        Jump         -compare-1880-false       
        Label        -compare-1880-true        
        PushI        1                         
        Jump         -compare-1880-join        
        Label        -compare-1880-false       
        PushI        0                         
        Jump         -compare-1880-join        
        Label        -compare-1880-join        
        JumpTrue     -print-boolean-1881-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1881-join  
        Label        -print-boolean-1881-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1881-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1882-arg1        
        PushI        39                        
        ConvertF                               
        Label        -compare-1882-arg2        
        PushI        47                        
        ConvertF                               
        Label        -compare-1882-sub         
        FSubtract                              
        JumpFZero    -compare-1882-true        
        Jump         -compare-1882-false       
        Label        -compare-1882-true        
        PushI        1                         
        Jump         -compare-1882-join        
        Label        -compare-1882-false       
        PushI        0                         
        Jump         -compare-1882-join        
        Label        -compare-1882-join        
        JumpTrue     -print-boolean-1883-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1883-join  
        Label        -print-boolean-1883-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1883-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1884-arg1        
        PushI        17                        
        ConvertF                               
        Label        -compare-1884-arg2        
        PushI        27                        
        ConvertF                               
        Label        -compare-1884-sub         
        FSubtract                              
        JumpFZero    -compare-1884-true        
        Jump         -compare-1884-false       
        Label        -compare-1884-true        
        PushI        1                         
        Jump         -compare-1884-join        
        Label        -compare-1884-false       
        PushI        0                         
        Jump         -compare-1884-join        
        Label        -compare-1884-join        
        JumpTrue     -print-boolean-1885-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1885-join  
        Label        -print-boolean-1885-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1885-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
