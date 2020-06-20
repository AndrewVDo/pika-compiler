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
        Label        -compare-1958-arg1        
        PushI        60                        
        ConvertF                               
        Label        -compare-1958-arg2        
        PushF        2.400000                  
        Label        -compare-1958-sub         
        FSubtract                              
        JumpFNeg     -compare-1958-false       
        Jump         -compare-1958-true        
        Label        -compare-1958-true        
        PushI        1                         
        Jump         -compare-1958-join        
        Label        -compare-1958-false       
        PushI        0                         
        Jump         -compare-1958-join        
        Label        -compare-1958-join        
        JumpTrue     -print-boolean-1959-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1959-join  
        Label        -print-boolean-1959-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1959-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1960-arg1        
        PushI        13                        
        ConvertF                               
        Label        -compare-1960-arg2        
        PushF        8.300000                  
        Label        -compare-1960-sub         
        FSubtract                              
        JumpFNeg     -compare-1960-false       
        Jump         -compare-1960-true        
        Label        -compare-1960-true        
        PushI        1                         
        Jump         -compare-1960-join        
        Label        -compare-1960-false       
        PushI        0                         
        Jump         -compare-1960-join        
        Label        -compare-1960-join        
        JumpTrue     -print-boolean-1961-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1961-join  
        Label        -print-boolean-1961-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1961-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1962-arg1        
        PushI        78                        
        ConvertF                               
        Label        -compare-1962-arg2        
        PushF        5.200000                  
        Label        -compare-1962-sub         
        FSubtract                              
        JumpFNeg     -compare-1962-false       
        Jump         -compare-1962-true        
        Label        -compare-1962-true        
        PushI        1                         
        Jump         -compare-1962-join        
        Label        -compare-1962-false       
        PushI        0                         
        Jump         -compare-1962-join        
        Label        -compare-1962-join        
        JumpTrue     -print-boolean-1963-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1963-join  
        Label        -print-boolean-1963-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1963-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1964-arg1        
        PushI        42                        
        ConvertF                               
        Label        -compare-1964-arg2        
        PushF        8.000000                  
        Label        -compare-1964-sub         
        FSubtract                              
        JumpFNeg     -compare-1964-false       
        Jump         -compare-1964-true        
        Label        -compare-1964-true        
        PushI        1                         
        Jump         -compare-1964-join        
        Label        -compare-1964-false       
        PushI        0                         
        Jump         -compare-1964-join        
        Label        -compare-1964-join        
        JumpTrue     -print-boolean-1965-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1965-join  
        Label        -print-boolean-1965-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1965-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1966-arg1        
        PushI        35                        
        ConvertF                               
        Label        -compare-1966-arg2        
        PushF        4.900000                  
        Label        -compare-1966-sub         
        FSubtract                              
        JumpFNeg     -compare-1966-false       
        Jump         -compare-1966-true        
        Label        -compare-1966-true        
        PushI        1                         
        Jump         -compare-1966-join        
        Label        -compare-1966-false       
        PushI        0                         
        Jump         -compare-1966-join        
        Label        -compare-1966-join        
        JumpTrue     -print-boolean-1967-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1967-join  
        Label        -print-boolean-1967-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1967-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1968-arg1        
        PushI        37                        
        ConvertF                               
        Label        -compare-1968-arg2        
        PushF        1.800000                  
        Label        -compare-1968-sub         
        FSubtract                              
        JumpFNeg     -compare-1968-false       
        Jump         -compare-1968-true        
        Label        -compare-1968-true        
        PushI        1                         
        Jump         -compare-1968-join        
        Label        -compare-1968-false       
        PushI        0                         
        Jump         -compare-1968-join        
        Label        -compare-1968-join        
        JumpTrue     -print-boolean-1969-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1969-join  
        Label        -print-boolean-1969-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1969-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1970-arg1        
        PushI        47                        
        ConvertF                               
        Label        -compare-1970-arg2        
        PushF        9.900000                  
        Label        -compare-1970-sub         
        FSubtract                              
        JumpFNeg     -compare-1970-false       
        Jump         -compare-1970-true        
        Label        -compare-1970-true        
        PushI        1                         
        Jump         -compare-1970-join        
        Label        -compare-1970-false       
        PushI        0                         
        Jump         -compare-1970-join        
        Label        -compare-1970-join        
        JumpTrue     -print-boolean-1971-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1971-join  
        Label        -print-boolean-1971-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1971-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1972-arg1        
        PushI        20                        
        ConvertF                               
        Label        -compare-1972-arg2        
        PushF        8.800000                  
        Label        -compare-1972-sub         
        FSubtract                              
        JumpFNeg     -compare-1972-false       
        Jump         -compare-1972-true        
        Label        -compare-1972-true        
        PushI        1                         
        Jump         -compare-1972-join        
        Label        -compare-1972-false       
        PushI        0                         
        Jump         -compare-1972-join        
        Label        -compare-1972-join        
        JumpTrue     -print-boolean-1973-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1973-join  
        Label        -print-boolean-1973-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1973-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1974-arg1        
        PushI        5                         
        ConvertF                               
        Label        -compare-1974-arg2        
        PushF        2.200000                  
        Label        -compare-1974-sub         
        FSubtract                              
        JumpFNeg     -compare-1974-false       
        Jump         -compare-1974-true        
        Label        -compare-1974-true        
        PushI        1                         
        Jump         -compare-1974-join        
        Label        -compare-1974-false       
        PushI        0                         
        Jump         -compare-1974-join        
        Label        -compare-1974-join        
        JumpTrue     -print-boolean-1975-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1975-join  
        Label        -print-boolean-1975-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1975-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1976-arg1        
        PushI        20                        
        ConvertF                               
        Label        -compare-1976-arg2        
        PushF        4.300000                  
        Label        -compare-1976-sub         
        FSubtract                              
        JumpFNeg     -compare-1976-false       
        Jump         -compare-1976-true        
        Label        -compare-1976-true        
        PushI        1                         
        Jump         -compare-1976-join        
        Label        -compare-1976-false       
        PushI        0                         
        Jump         -compare-1976-join        
        Label        -compare-1976-join        
        JumpTrue     -print-boolean-1977-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1977-join  
        Label        -print-boolean-1977-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1977-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1978-arg1        
        PushI        36                        
        ConvertF                               
        Label        -compare-1978-arg2        
        PushF        1.700000                  
        Label        -compare-1978-sub         
        FSubtract                              
        JumpFNeg     -compare-1978-false       
        Jump         -compare-1978-true        
        Label        -compare-1978-true        
        PushI        1                         
        Jump         -compare-1978-join        
        Label        -compare-1978-false       
        PushI        0                         
        Jump         -compare-1978-join        
        Label        -compare-1978-join        
        JumpTrue     -print-boolean-1979-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1979-join  
        Label        -print-boolean-1979-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1979-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1980-arg1        
        PushI        72                        
        ConvertF                               
        Label        -compare-1980-arg2        
        PushF        4.200000                  
        Label        -compare-1980-sub         
        FSubtract                              
        JumpFNeg     -compare-1980-false       
        Jump         -compare-1980-true        
        Label        -compare-1980-true        
        PushI        1                         
        Jump         -compare-1980-join        
        Label        -compare-1980-false       
        PushI        0                         
        Jump         -compare-1980-join        
        Label        -compare-1980-join        
        JumpTrue     -print-boolean-1981-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1981-join  
        Label        -print-boolean-1981-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1981-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1982-arg1        
        PushF        3.100000                  
        Label        -compare-1982-arg2        
        PushI        13                        
        ConvertF                               
        Label        -compare-1982-sub         
        FSubtract                              
        JumpFNeg     -compare-1982-false       
        Jump         -compare-1982-true        
        Label        -compare-1982-true        
        PushI        1                         
        Jump         -compare-1982-join        
        Label        -compare-1982-false       
        PushI        0                         
        Jump         -compare-1982-join        
        Label        -compare-1982-join        
        JumpTrue     -print-boolean-1983-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1983-join  
        Label        -print-boolean-1983-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1983-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1984-arg1        
        PushF        7.800000                  
        Label        -compare-1984-arg2        
        PushI        46                        
        ConvertF                               
        Label        -compare-1984-sub         
        FSubtract                              
        JumpFNeg     -compare-1984-false       
        Jump         -compare-1984-true        
        Label        -compare-1984-true        
        PushI        1                         
        Jump         -compare-1984-join        
        Label        -compare-1984-false       
        PushI        0                         
        Jump         -compare-1984-join        
        Label        -compare-1984-join        
        JumpTrue     -print-boolean-1985-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1985-join  
        Label        -print-boolean-1985-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1985-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1986-arg1        
        PushF        3.600000                  
        Label        -compare-1986-arg2        
        PushI        20                        
        ConvertF                               
        Label        -compare-1986-sub         
        FSubtract                              
        JumpFNeg     -compare-1986-false       
        Jump         -compare-1986-true        
        Label        -compare-1986-true        
        PushI        1                         
        Jump         -compare-1986-join        
        Label        -compare-1986-false       
        PushI        0                         
        Jump         -compare-1986-join        
        Label        -compare-1986-join        
        JumpTrue     -print-boolean-1987-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1987-join  
        Label        -print-boolean-1987-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1987-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1988-arg1        
        PushF        6.800000                  
        Label        -compare-1988-arg2        
        PushI        79                        
        ConvertF                               
        Label        -compare-1988-sub         
        FSubtract                              
        JumpFNeg     -compare-1988-false       
        Jump         -compare-1988-true        
        Label        -compare-1988-true        
        PushI        1                         
        Jump         -compare-1988-join        
        Label        -compare-1988-false       
        PushI        0                         
        Jump         -compare-1988-join        
        Label        -compare-1988-join        
        JumpTrue     -print-boolean-1989-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1989-join  
        Label        -print-boolean-1989-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1989-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1990-arg1        
        PushF        4.900000                  
        Label        -compare-1990-arg2        
        PushI        26                        
        ConvertF                               
        Label        -compare-1990-sub         
        FSubtract                              
        JumpFNeg     -compare-1990-false       
        Jump         -compare-1990-true        
        Label        -compare-1990-true        
        PushI        1                         
        Jump         -compare-1990-join        
        Label        -compare-1990-false       
        PushI        0                         
        Jump         -compare-1990-join        
        Label        -compare-1990-join        
        JumpTrue     -print-boolean-1991-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1991-join  
        Label        -print-boolean-1991-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1991-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1992-arg1        
        PushF        2.300000                  
        Label        -compare-1992-arg2        
        PushI        18                        
        ConvertF                               
        Label        -compare-1992-sub         
        FSubtract                              
        JumpFNeg     -compare-1992-false       
        Jump         -compare-1992-true        
        Label        -compare-1992-true        
        PushI        1                         
        Jump         -compare-1992-join        
        Label        -compare-1992-false       
        PushI        0                         
        Jump         -compare-1992-join        
        Label        -compare-1992-join        
        JumpTrue     -print-boolean-1993-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1993-join  
        Label        -print-boolean-1993-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1993-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1994-arg1        
        PushF        2.200000                  
        Label        -compare-1994-arg2        
        PushI        52                        
        ConvertF                               
        Label        -compare-1994-sub         
        FSubtract                              
        JumpFNeg     -compare-1994-false       
        Jump         -compare-1994-true        
        Label        -compare-1994-true        
        PushI        1                         
        Jump         -compare-1994-join        
        Label        -compare-1994-false       
        PushI        0                         
        Jump         -compare-1994-join        
        Label        -compare-1994-join        
        JumpTrue     -print-boolean-1995-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1995-join  
        Label        -print-boolean-1995-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1995-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1996-arg1        
        PushF        5.200000                  
        Label        -compare-1996-arg2        
        PushI        23                        
        ConvertF                               
        Label        -compare-1996-sub         
        FSubtract                              
        JumpFNeg     -compare-1996-false       
        Jump         -compare-1996-true        
        Label        -compare-1996-true        
        PushI        1                         
        Jump         -compare-1996-join        
        Label        -compare-1996-false       
        PushI        0                         
        Jump         -compare-1996-join        
        Label        -compare-1996-join        
        JumpTrue     -print-boolean-1997-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1997-join  
        Label        -print-boolean-1997-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1997-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1998-arg1        
        PushF        3.100000                  
        Label        -compare-1998-arg2        
        PushI        63                        
        ConvertF                               
        Label        -compare-1998-sub         
        FSubtract                              
        JumpFNeg     -compare-1998-false       
        Jump         -compare-1998-true        
        Label        -compare-1998-true        
        PushI        1                         
        Jump         -compare-1998-join        
        Label        -compare-1998-false       
        PushI        0                         
        Jump         -compare-1998-join        
        Label        -compare-1998-join        
        JumpTrue     -print-boolean-1999-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1999-join  
        Label        -print-boolean-1999-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1999-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2000-arg1        
        PushF        3.100000                  
        Label        -compare-2000-arg2        
        PushI        23                        
        ConvertF                               
        Label        -compare-2000-sub         
        FSubtract                              
        JumpFNeg     -compare-2000-false       
        Jump         -compare-2000-true        
        Label        -compare-2000-true        
        PushI        1                         
        Jump         -compare-2000-join        
        Label        -compare-2000-false       
        PushI        0                         
        Jump         -compare-2000-join        
        Label        -compare-2000-join        
        JumpTrue     -print-boolean-2001-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2001-join  
        Label        -print-boolean-2001-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2001-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2002-arg1        
        PushF        8.600000                  
        Label        -compare-2002-arg2        
        PushI        9                         
        ConvertF                               
        Label        -compare-2002-sub         
        FSubtract                              
        JumpFNeg     -compare-2002-false       
        Jump         -compare-2002-true        
        Label        -compare-2002-true        
        PushI        1                         
        Jump         -compare-2002-join        
        Label        -compare-2002-false       
        PushI        0                         
        Jump         -compare-2002-join        
        Label        -compare-2002-join        
        JumpTrue     -print-boolean-2003-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2003-join  
        Label        -print-boolean-2003-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2003-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2004-arg1        
        PushF        3.900000                  
        Label        -compare-2004-arg2        
        PushI        16                        
        ConvertF                               
        Label        -compare-2004-sub         
        FSubtract                              
        JumpFNeg     -compare-2004-false       
        Jump         -compare-2004-true        
        Label        -compare-2004-true        
        PushI        1                         
        Jump         -compare-2004-join        
        Label        -compare-2004-false       
        PushI        0                         
        Jump         -compare-2004-join        
        Label        -compare-2004-join        
        JumpTrue     -print-boolean-2005-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2005-join  
        Label        -print-boolean-2005-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2005-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2006-arg1        
        PushI        72                        
        ConvertF                               
        Label        -compare-2006-arg2        
        PushI        33                        
        ConvertF                               
        Label        -compare-2006-sub         
        FSubtract                              
        JumpFNeg     -compare-2006-false       
        Jump         -compare-2006-true        
        Label        -compare-2006-true        
        PushI        1                         
        Jump         -compare-2006-join        
        Label        -compare-2006-false       
        PushI        0                         
        Jump         -compare-2006-join        
        Label        -compare-2006-join        
        JumpTrue     -print-boolean-2007-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2007-join  
        Label        -print-boolean-2007-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2007-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2008-arg1        
        PushI        81                        
        ConvertF                               
        Label        -compare-2008-arg2        
        PushI        41                        
        ConvertF                               
        Label        -compare-2008-sub         
        FSubtract                              
        JumpFNeg     -compare-2008-false       
        Jump         -compare-2008-true        
        Label        -compare-2008-true        
        PushI        1                         
        Jump         -compare-2008-join        
        Label        -compare-2008-false       
        PushI        0                         
        Jump         -compare-2008-join        
        Label        -compare-2008-join        
        JumpTrue     -print-boolean-2009-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2009-join  
        Label        -print-boolean-2009-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2009-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2010-arg1        
        PushI        21                        
        ConvertF                               
        Label        -compare-2010-arg2        
        PushI        54                        
        ConvertF                               
        Label        -compare-2010-sub         
        FSubtract                              
        JumpFNeg     -compare-2010-false       
        Jump         -compare-2010-true        
        Label        -compare-2010-true        
        PushI        1                         
        Jump         -compare-2010-join        
        Label        -compare-2010-false       
        PushI        0                         
        Jump         -compare-2010-join        
        Label        -compare-2010-join        
        JumpTrue     -print-boolean-2011-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2011-join  
        Label        -print-boolean-2011-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2011-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2012-arg1        
        PushI        74                        
        ConvertF                               
        Label        -compare-2012-arg2        
        PushI        53                        
        ConvertF                               
        Label        -compare-2012-sub         
        FSubtract                              
        JumpFNeg     -compare-2012-false       
        Jump         -compare-2012-true        
        Label        -compare-2012-true        
        PushI        1                         
        Jump         -compare-2012-join        
        Label        -compare-2012-false       
        PushI        0                         
        Jump         -compare-2012-join        
        Label        -compare-2012-join        
        JumpTrue     -print-boolean-2013-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2013-join  
        Label        -print-boolean-2013-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2013-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2014-arg1        
        PushI        62                        
        ConvertF                               
        Label        -compare-2014-arg2        
        PushI        93                        
        ConvertF                               
        Label        -compare-2014-sub         
        FSubtract                              
        JumpFNeg     -compare-2014-false       
        Jump         -compare-2014-true        
        Label        -compare-2014-true        
        PushI        1                         
        Jump         -compare-2014-join        
        Label        -compare-2014-false       
        PushI        0                         
        Jump         -compare-2014-join        
        Label        -compare-2014-join        
        JumpTrue     -print-boolean-2015-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2015-join  
        Label        -print-boolean-2015-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2015-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2016-arg1        
        PushI        64                        
        ConvertF                               
        Label        -compare-2016-arg2        
        PushI        98                        
        ConvertF                               
        Label        -compare-2016-sub         
        FSubtract                              
        JumpFNeg     -compare-2016-false       
        Jump         -compare-2016-true        
        Label        -compare-2016-true        
        PushI        1                         
        Jump         -compare-2016-join        
        Label        -compare-2016-false       
        PushI        0                         
        Jump         -compare-2016-join        
        Label        -compare-2016-join        
        JumpTrue     -print-boolean-2017-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2017-join  
        Label        -print-boolean-2017-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2017-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2018-arg1        
        PushI        94                        
        ConvertF                               
        Label        -compare-2018-arg2        
        PushI        41                        
        ConvertF                               
        Label        -compare-2018-sub         
        FSubtract                              
        JumpFNeg     -compare-2018-false       
        Jump         -compare-2018-true        
        Label        -compare-2018-true        
        PushI        1                         
        Jump         -compare-2018-join        
        Label        -compare-2018-false       
        PushI        0                         
        Jump         -compare-2018-join        
        Label        -compare-2018-join        
        JumpTrue     -print-boolean-2019-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2019-join  
        Label        -print-boolean-2019-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2019-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2020-arg1        
        PushI        80                        
        ConvertF                               
        Label        -compare-2020-arg2        
        PushI        51                        
        ConvertF                               
        Label        -compare-2020-sub         
        FSubtract                              
        JumpFNeg     -compare-2020-false       
        Jump         -compare-2020-true        
        Label        -compare-2020-true        
        PushI        1                         
        Jump         -compare-2020-join        
        Label        -compare-2020-false       
        PushI        0                         
        Jump         -compare-2020-join        
        Label        -compare-2020-join        
        JumpTrue     -print-boolean-2021-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2021-join  
        Label        -print-boolean-2021-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2021-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2022-arg1        
        PushI        90                        
        ConvertF                               
        Label        -compare-2022-arg2        
        PushI        5                         
        ConvertF                               
        Label        -compare-2022-sub         
        FSubtract                              
        JumpFNeg     -compare-2022-false       
        Jump         -compare-2022-true        
        Label        -compare-2022-true        
        PushI        1                         
        Jump         -compare-2022-join        
        Label        -compare-2022-false       
        PushI        0                         
        Jump         -compare-2022-join        
        Label        -compare-2022-join        
        JumpTrue     -print-boolean-2023-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2023-join  
        Label        -print-boolean-2023-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2023-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2024-arg1        
        PushI        96                        
        ConvertF                               
        Label        -compare-2024-arg2        
        PushI        93                        
        ConvertF                               
        Label        -compare-2024-sub         
        FSubtract                              
        JumpFNeg     -compare-2024-false       
        Jump         -compare-2024-true        
        Label        -compare-2024-true        
        PushI        1                         
        Jump         -compare-2024-join        
        Label        -compare-2024-false       
        PushI        0                         
        Jump         -compare-2024-join        
        Label        -compare-2024-join        
        JumpTrue     -print-boolean-2025-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2025-join  
        Label        -print-boolean-2025-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2025-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2026-arg1        
        PushI        33                        
        ConvertF                               
        Label        -compare-2026-arg2        
        PushI        94                        
        ConvertF                               
        Label        -compare-2026-sub         
        FSubtract                              
        JumpFNeg     -compare-2026-false       
        Jump         -compare-2026-true        
        Label        -compare-2026-true        
        PushI        1                         
        Jump         -compare-2026-join        
        Label        -compare-2026-false       
        PushI        0                         
        Jump         -compare-2026-join        
        Label        -compare-2026-join        
        JumpTrue     -print-boolean-2027-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2027-join  
        Label        -print-boolean-2027-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2027-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2028-arg1        
        PushI        35                        
        ConvertF                               
        Label        -compare-2028-arg2        
        PushI        80                        
        ConvertF                               
        Label        -compare-2028-sub         
        FSubtract                              
        JumpFNeg     -compare-2028-false       
        Jump         -compare-2028-true        
        Label        -compare-2028-true        
        PushI        1                         
        Jump         -compare-2028-join        
        Label        -compare-2028-false       
        PushI        0                         
        Jump         -compare-2028-join        
        Label        -compare-2028-join        
        JumpTrue     -print-boolean-2029-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2029-join  
        Label        -print-boolean-2029-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2029-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
