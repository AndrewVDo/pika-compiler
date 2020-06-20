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
        Label        -compare-1886-arg1        
        PushI        19                        
        ConvertF                               
        Label        -compare-1886-arg2        
        PushF        3.200000                  
        Label        -compare-1886-sub         
        FSubtract                              
        JumpFPos     -compare-1886-true        
        Jump         -compare-1886-false       
        Label        -compare-1886-true        
        PushI        1                         
        Jump         -compare-1886-join        
        Label        -compare-1886-false       
        PushI        0                         
        Jump         -compare-1886-join        
        Label        -compare-1886-join        
        JumpTrue     -print-boolean-1887-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1887-join  
        Label        -print-boolean-1887-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1887-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1888-arg1        
        PushI        94                        
        ConvertF                               
        Label        -compare-1888-arg2        
        PushF        1.700000                  
        Label        -compare-1888-sub         
        FSubtract                              
        JumpFPos     -compare-1888-true        
        Jump         -compare-1888-false       
        Label        -compare-1888-true        
        PushI        1                         
        Jump         -compare-1888-join        
        Label        -compare-1888-false       
        PushI        0                         
        Jump         -compare-1888-join        
        Label        -compare-1888-join        
        JumpTrue     -print-boolean-1889-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1889-join  
        Label        -print-boolean-1889-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1889-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1890-arg1        
        PushI        64                        
        ConvertF                               
        Label        -compare-1890-arg2        
        PushF        2.500000                  
        Label        -compare-1890-sub         
        FSubtract                              
        JumpFPos     -compare-1890-true        
        Jump         -compare-1890-false       
        Label        -compare-1890-true        
        PushI        1                         
        Jump         -compare-1890-join        
        Label        -compare-1890-false       
        PushI        0                         
        Jump         -compare-1890-join        
        Label        -compare-1890-join        
        JumpTrue     -print-boolean-1891-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1891-join  
        Label        -print-boolean-1891-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1891-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1892-arg1        
        PushI        70                        
        ConvertF                               
        Label        -compare-1892-arg2        
        PushF        2.900000                  
        Label        -compare-1892-sub         
        FSubtract                              
        JumpFPos     -compare-1892-true        
        Jump         -compare-1892-false       
        Label        -compare-1892-true        
        PushI        1                         
        Jump         -compare-1892-join        
        Label        -compare-1892-false       
        PushI        0                         
        Jump         -compare-1892-join        
        Label        -compare-1892-join        
        JumpTrue     -print-boolean-1893-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1893-join  
        Label        -print-boolean-1893-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1893-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1894-arg1        
        PushI        83                        
        ConvertF                               
        Label        -compare-1894-arg2        
        PushF        3.400000                  
        Label        -compare-1894-sub         
        FSubtract                              
        JumpFPos     -compare-1894-true        
        Jump         -compare-1894-false       
        Label        -compare-1894-true        
        PushI        1                         
        Jump         -compare-1894-join        
        Label        -compare-1894-false       
        PushI        0                         
        Jump         -compare-1894-join        
        Label        -compare-1894-join        
        JumpTrue     -print-boolean-1895-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1895-join  
        Label        -print-boolean-1895-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1895-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1896-arg1        
        PushI        7                         
        ConvertF                               
        Label        -compare-1896-arg2        
        PushF        2.300000                  
        Label        -compare-1896-sub         
        FSubtract                              
        JumpFPos     -compare-1896-true        
        Jump         -compare-1896-false       
        Label        -compare-1896-true        
        PushI        1                         
        Jump         -compare-1896-join        
        Label        -compare-1896-false       
        PushI        0                         
        Jump         -compare-1896-join        
        Label        -compare-1896-join        
        JumpTrue     -print-boolean-1897-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1897-join  
        Label        -print-boolean-1897-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1897-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1898-arg1        
        PushI        3                         
        ConvertF                               
        Label        -compare-1898-arg2        
        PushF        4.700000                  
        Label        -compare-1898-sub         
        FSubtract                              
        JumpFPos     -compare-1898-true        
        Jump         -compare-1898-false       
        Label        -compare-1898-true        
        PushI        1                         
        Jump         -compare-1898-join        
        Label        -compare-1898-false       
        PushI        0                         
        Jump         -compare-1898-join        
        Label        -compare-1898-join        
        JumpTrue     -print-boolean-1899-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1899-join  
        Label        -print-boolean-1899-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1899-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1900-arg1        
        PushI        99                        
        ConvertF                               
        Label        -compare-1900-arg2        
        PushF        3.800000                  
        Label        -compare-1900-sub         
        FSubtract                              
        JumpFPos     -compare-1900-true        
        Jump         -compare-1900-false       
        Label        -compare-1900-true        
        PushI        1                         
        Jump         -compare-1900-join        
        Label        -compare-1900-false       
        PushI        0                         
        Jump         -compare-1900-join        
        Label        -compare-1900-join        
        JumpTrue     -print-boolean-1901-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1901-join  
        Label        -print-boolean-1901-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1901-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1902-arg1        
        PushI        14                        
        ConvertF                               
        Label        -compare-1902-arg2        
        PushF        2.500000                  
        Label        -compare-1902-sub         
        FSubtract                              
        JumpFPos     -compare-1902-true        
        Jump         -compare-1902-false       
        Label        -compare-1902-true        
        PushI        1                         
        Jump         -compare-1902-join        
        Label        -compare-1902-false       
        PushI        0                         
        Jump         -compare-1902-join        
        Label        -compare-1902-join        
        JumpTrue     -print-boolean-1903-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1903-join  
        Label        -print-boolean-1903-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1903-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1904-arg1        
        PushI        1                         
        ConvertF                               
        Label        -compare-1904-arg2        
        PushF        8.600000                  
        Label        -compare-1904-sub         
        FSubtract                              
        JumpFPos     -compare-1904-true        
        Jump         -compare-1904-false       
        Label        -compare-1904-true        
        PushI        1                         
        Jump         -compare-1904-join        
        Label        -compare-1904-false       
        PushI        0                         
        Jump         -compare-1904-join        
        Label        -compare-1904-join        
        JumpTrue     -print-boolean-1905-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1905-join  
        Label        -print-boolean-1905-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1905-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1906-arg1        
        PushI        14                        
        ConvertF                               
        Label        -compare-1906-arg2        
        PushF        8.400000                  
        Label        -compare-1906-sub         
        FSubtract                              
        JumpFPos     -compare-1906-true        
        Jump         -compare-1906-false       
        Label        -compare-1906-true        
        PushI        1                         
        Jump         -compare-1906-join        
        Label        -compare-1906-false       
        PushI        0                         
        Jump         -compare-1906-join        
        Label        -compare-1906-join        
        JumpTrue     -print-boolean-1907-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1907-join  
        Label        -print-boolean-1907-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1907-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1908-arg1        
        PushI        38                        
        ConvertF                               
        Label        -compare-1908-arg2        
        PushF        4.100000                  
        Label        -compare-1908-sub         
        FSubtract                              
        JumpFPos     -compare-1908-true        
        Jump         -compare-1908-false       
        Label        -compare-1908-true        
        PushI        1                         
        Jump         -compare-1908-join        
        Label        -compare-1908-false       
        PushI        0                         
        Jump         -compare-1908-join        
        Label        -compare-1908-join        
        JumpTrue     -print-boolean-1909-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1909-join  
        Label        -print-boolean-1909-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1909-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1910-arg1        
        PushF        8.200000                  
        Label        -compare-1910-arg2        
        PushI        1                         
        ConvertF                               
        Label        -compare-1910-sub         
        FSubtract                              
        JumpFPos     -compare-1910-true        
        Jump         -compare-1910-false       
        Label        -compare-1910-true        
        PushI        1                         
        Jump         -compare-1910-join        
        Label        -compare-1910-false       
        PushI        0                         
        Jump         -compare-1910-join        
        Label        -compare-1910-join        
        JumpTrue     -print-boolean-1911-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1911-join  
        Label        -print-boolean-1911-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1911-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1912-arg1        
        PushF        3.200000                  
        Label        -compare-1912-arg2        
        PushI        35                        
        ConvertF                               
        Label        -compare-1912-sub         
        FSubtract                              
        JumpFPos     -compare-1912-true        
        Jump         -compare-1912-false       
        Label        -compare-1912-true        
        PushI        1                         
        Jump         -compare-1912-join        
        Label        -compare-1912-false       
        PushI        0                         
        Jump         -compare-1912-join        
        Label        -compare-1912-join        
        JumpTrue     -print-boolean-1913-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1913-join  
        Label        -print-boolean-1913-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1913-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1914-arg1        
        PushF        4.200000                  
        Label        -compare-1914-arg2        
        PushI        98                        
        ConvertF                               
        Label        -compare-1914-sub         
        FSubtract                              
        JumpFPos     -compare-1914-true        
        Jump         -compare-1914-false       
        Label        -compare-1914-true        
        PushI        1                         
        Jump         -compare-1914-join        
        Label        -compare-1914-false       
        PushI        0                         
        Jump         -compare-1914-join        
        Label        -compare-1914-join        
        JumpTrue     -print-boolean-1915-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1915-join  
        Label        -print-boolean-1915-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1915-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1916-arg1        
        PushF        7.800000                  
        Label        -compare-1916-arg2        
        PushI        57                        
        ConvertF                               
        Label        -compare-1916-sub         
        FSubtract                              
        JumpFPos     -compare-1916-true        
        Jump         -compare-1916-false       
        Label        -compare-1916-true        
        PushI        1                         
        Jump         -compare-1916-join        
        Label        -compare-1916-false       
        PushI        0                         
        Jump         -compare-1916-join        
        Label        -compare-1916-join        
        JumpTrue     -print-boolean-1917-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1917-join  
        Label        -print-boolean-1917-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1917-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1918-arg1        
        PushF        4.500000                  
        Label        -compare-1918-arg2        
        PushI        98                        
        ConvertF                               
        Label        -compare-1918-sub         
        FSubtract                              
        JumpFPos     -compare-1918-true        
        Jump         -compare-1918-false       
        Label        -compare-1918-true        
        PushI        1                         
        Jump         -compare-1918-join        
        Label        -compare-1918-false       
        PushI        0                         
        Jump         -compare-1918-join        
        Label        -compare-1918-join        
        JumpTrue     -print-boolean-1919-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1919-join  
        Label        -print-boolean-1919-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1919-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1920-arg1        
        PushF        4.200000                  
        Label        -compare-1920-arg2        
        PushI        37                        
        ConvertF                               
        Label        -compare-1920-sub         
        FSubtract                              
        JumpFPos     -compare-1920-true        
        Jump         -compare-1920-false       
        Label        -compare-1920-true        
        PushI        1                         
        Jump         -compare-1920-join        
        Label        -compare-1920-false       
        PushI        0                         
        Jump         -compare-1920-join        
        Label        -compare-1920-join        
        JumpTrue     -print-boolean-1921-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1921-join  
        Label        -print-boolean-1921-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1921-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1922-arg1        
        PushF        9.700000                  
        Label        -compare-1922-arg2        
        PushI        2                         
        ConvertF                               
        Label        -compare-1922-sub         
        FSubtract                              
        JumpFPos     -compare-1922-true        
        Jump         -compare-1922-false       
        Label        -compare-1922-true        
        PushI        1                         
        Jump         -compare-1922-join        
        Label        -compare-1922-false       
        PushI        0                         
        Jump         -compare-1922-join        
        Label        -compare-1922-join        
        JumpTrue     -print-boolean-1923-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1923-join  
        Label        -print-boolean-1923-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1923-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1924-arg1        
        PushF        4.200000                  
        Label        -compare-1924-arg2        
        PushI        7                         
        ConvertF                               
        Label        -compare-1924-sub         
        FSubtract                              
        JumpFPos     -compare-1924-true        
        Jump         -compare-1924-false       
        Label        -compare-1924-true        
        PushI        1                         
        Jump         -compare-1924-join        
        Label        -compare-1924-false       
        PushI        0                         
        Jump         -compare-1924-join        
        Label        -compare-1924-join        
        JumpTrue     -print-boolean-1925-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1925-join  
        Label        -print-boolean-1925-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1925-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1926-arg1        
        PushF        5.600000                  
        Label        -compare-1926-arg2        
        PushI        95                        
        ConvertF                               
        Label        -compare-1926-sub         
        FSubtract                              
        JumpFPos     -compare-1926-true        
        Jump         -compare-1926-false       
        Label        -compare-1926-true        
        PushI        1                         
        Jump         -compare-1926-join        
        Label        -compare-1926-false       
        PushI        0                         
        Jump         -compare-1926-join        
        Label        -compare-1926-join        
        JumpTrue     -print-boolean-1927-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1927-join  
        Label        -print-boolean-1927-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1927-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1928-arg1        
        PushF        8.900000                  
        Label        -compare-1928-arg2        
        PushI        49                        
        ConvertF                               
        Label        -compare-1928-sub         
        FSubtract                              
        JumpFPos     -compare-1928-true        
        Jump         -compare-1928-false       
        Label        -compare-1928-true        
        PushI        1                         
        Jump         -compare-1928-join        
        Label        -compare-1928-false       
        PushI        0                         
        Jump         -compare-1928-join        
        Label        -compare-1928-join        
        JumpTrue     -print-boolean-1929-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1929-join  
        Label        -print-boolean-1929-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1929-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1930-arg1        
        PushF        4.400000                  
        Label        -compare-1930-arg2        
        PushI        48                        
        ConvertF                               
        Label        -compare-1930-sub         
        FSubtract                              
        JumpFPos     -compare-1930-true        
        Jump         -compare-1930-false       
        Label        -compare-1930-true        
        PushI        1                         
        Jump         -compare-1930-join        
        Label        -compare-1930-false       
        PushI        0                         
        Jump         -compare-1930-join        
        Label        -compare-1930-join        
        JumpTrue     -print-boolean-1931-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1931-join  
        Label        -print-boolean-1931-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1931-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1932-arg1        
        PushF        6.000000                  
        Label        -compare-1932-arg2        
        PushI        60                        
        ConvertF                               
        Label        -compare-1932-sub         
        FSubtract                              
        JumpFPos     -compare-1932-true        
        Jump         -compare-1932-false       
        Label        -compare-1932-true        
        PushI        1                         
        Jump         -compare-1932-join        
        Label        -compare-1932-false       
        PushI        0                         
        Jump         -compare-1932-join        
        Label        -compare-1932-join        
        JumpTrue     -print-boolean-1933-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1933-join  
        Label        -print-boolean-1933-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1933-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1934-arg1        
        PushI        21                        
        ConvertF                               
        Label        -compare-1934-arg2        
        PushI        35                        
        ConvertF                               
        Label        -compare-1934-sub         
        FSubtract                              
        JumpFPos     -compare-1934-true        
        Jump         -compare-1934-false       
        Label        -compare-1934-true        
        PushI        1                         
        Jump         -compare-1934-join        
        Label        -compare-1934-false       
        PushI        0                         
        Jump         -compare-1934-join        
        Label        -compare-1934-join        
        JumpTrue     -print-boolean-1935-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1935-join  
        Label        -print-boolean-1935-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1935-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1936-arg1        
        PushI        70                        
        ConvertF                               
        Label        -compare-1936-arg2        
        PushI        13                        
        ConvertF                               
        Label        -compare-1936-sub         
        FSubtract                              
        JumpFPos     -compare-1936-true        
        Jump         -compare-1936-false       
        Label        -compare-1936-true        
        PushI        1                         
        Jump         -compare-1936-join        
        Label        -compare-1936-false       
        PushI        0                         
        Jump         -compare-1936-join        
        Label        -compare-1936-join        
        JumpTrue     -print-boolean-1937-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1937-join  
        Label        -print-boolean-1937-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1937-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1938-arg1        
        PushI        88                        
        ConvertF                               
        Label        -compare-1938-arg2        
        PushI        42                        
        ConvertF                               
        Label        -compare-1938-sub         
        FSubtract                              
        JumpFPos     -compare-1938-true        
        Jump         -compare-1938-false       
        Label        -compare-1938-true        
        PushI        1                         
        Jump         -compare-1938-join        
        Label        -compare-1938-false       
        PushI        0                         
        Jump         -compare-1938-join        
        Label        -compare-1938-join        
        JumpTrue     -print-boolean-1939-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1939-join  
        Label        -print-boolean-1939-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1939-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1940-arg1        
        PushI        17                        
        ConvertF                               
        Label        -compare-1940-arg2        
        PushI        29                        
        ConvertF                               
        Label        -compare-1940-sub         
        FSubtract                              
        JumpFPos     -compare-1940-true        
        Jump         -compare-1940-false       
        Label        -compare-1940-true        
        PushI        1                         
        Jump         -compare-1940-join        
        Label        -compare-1940-false       
        PushI        0                         
        Jump         -compare-1940-join        
        Label        -compare-1940-join        
        JumpTrue     -print-boolean-1941-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1941-join  
        Label        -print-boolean-1941-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1941-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1942-arg1        
        PushI        50                        
        ConvertF                               
        Label        -compare-1942-arg2        
        PushI        91                        
        ConvertF                               
        Label        -compare-1942-sub         
        FSubtract                              
        JumpFPos     -compare-1942-true        
        Jump         -compare-1942-false       
        Label        -compare-1942-true        
        PushI        1                         
        Jump         -compare-1942-join        
        Label        -compare-1942-false       
        PushI        0                         
        Jump         -compare-1942-join        
        Label        -compare-1942-join        
        JumpTrue     -print-boolean-1943-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1943-join  
        Label        -print-boolean-1943-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1943-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1944-arg1        
        PushI        45                        
        ConvertF                               
        Label        -compare-1944-arg2        
        PushI        81                        
        ConvertF                               
        Label        -compare-1944-sub         
        FSubtract                              
        JumpFPos     -compare-1944-true        
        Jump         -compare-1944-false       
        Label        -compare-1944-true        
        PushI        1                         
        Jump         -compare-1944-join        
        Label        -compare-1944-false       
        PushI        0                         
        Jump         -compare-1944-join        
        Label        -compare-1944-join        
        JumpTrue     -print-boolean-1945-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1945-join  
        Label        -print-boolean-1945-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1945-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1946-arg1        
        PushI        91                        
        ConvertF                               
        Label        -compare-1946-arg2        
        PushI        71                        
        ConvertF                               
        Label        -compare-1946-sub         
        FSubtract                              
        JumpFPos     -compare-1946-true        
        Jump         -compare-1946-false       
        Label        -compare-1946-true        
        PushI        1                         
        Jump         -compare-1946-join        
        Label        -compare-1946-false       
        PushI        0                         
        Jump         -compare-1946-join        
        Label        -compare-1946-join        
        JumpTrue     -print-boolean-1947-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1947-join  
        Label        -print-boolean-1947-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1947-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1948-arg1        
        PushI        60                        
        ConvertF                               
        Label        -compare-1948-arg2        
        PushI        67                        
        ConvertF                               
        Label        -compare-1948-sub         
        FSubtract                              
        JumpFPos     -compare-1948-true        
        Jump         -compare-1948-false       
        Label        -compare-1948-true        
        PushI        1                         
        Jump         -compare-1948-join        
        Label        -compare-1948-false       
        PushI        0                         
        Jump         -compare-1948-join        
        Label        -compare-1948-join        
        JumpTrue     -print-boolean-1949-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1949-join  
        Label        -print-boolean-1949-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1949-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1950-arg1        
        PushI        40                        
        ConvertF                               
        Label        -compare-1950-arg2        
        PushI        46                        
        ConvertF                               
        Label        -compare-1950-sub         
        FSubtract                              
        JumpFPos     -compare-1950-true        
        Jump         -compare-1950-false       
        Label        -compare-1950-true        
        PushI        1                         
        Jump         -compare-1950-join        
        Label        -compare-1950-false       
        PushI        0                         
        Jump         -compare-1950-join        
        Label        -compare-1950-join        
        JumpTrue     -print-boolean-1951-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1951-join  
        Label        -print-boolean-1951-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1951-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1952-arg1        
        PushI        37                        
        ConvertF                               
        Label        -compare-1952-arg2        
        PushI        98                        
        ConvertF                               
        Label        -compare-1952-sub         
        FSubtract                              
        JumpFPos     -compare-1952-true        
        Jump         -compare-1952-false       
        Label        -compare-1952-true        
        PushI        1                         
        Jump         -compare-1952-join        
        Label        -compare-1952-false       
        PushI        0                         
        Jump         -compare-1952-join        
        Label        -compare-1952-join        
        JumpTrue     -print-boolean-1953-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1953-join  
        Label        -print-boolean-1953-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1953-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1954-arg1        
        PushI        43                        
        ConvertF                               
        Label        -compare-1954-arg2        
        PushI        65                        
        ConvertF                               
        Label        -compare-1954-sub         
        FSubtract                              
        JumpFPos     -compare-1954-true        
        Jump         -compare-1954-false       
        Label        -compare-1954-true        
        PushI        1                         
        Jump         -compare-1954-join        
        Label        -compare-1954-false       
        PushI        0                         
        Jump         -compare-1954-join        
        Label        -compare-1954-join        
        JumpTrue     -print-boolean-1955-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1955-join  
        Label        -print-boolean-1955-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1955-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1956-arg1        
        PushI        58                        
        ConvertF                               
        Label        -compare-1956-arg2        
        PushI        87                        
        ConvertF                               
        Label        -compare-1956-sub         
        FSubtract                              
        JumpFPos     -compare-1956-true        
        Jump         -compare-1956-false       
        Label        -compare-1956-true        
        PushI        1                         
        Jump         -compare-1956-join        
        Label        -compare-1956-false       
        PushI        0                         
        Jump         -compare-1956-join        
        Label        -compare-1956-join        
        JumpTrue     -print-boolean-1957-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1957-join  
        Label        -print-boolean-1957-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1957-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
