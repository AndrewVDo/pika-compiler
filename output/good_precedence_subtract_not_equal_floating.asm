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
        Label        -compare-6230-arg1        
        PushF        8.100000                  
        PushF        1.600000                  
        FSubtract                              
        Label        -compare-6230-arg2        
        PushF        9.500000                  
        Label        -compare-6230-sub         
        FSubtract                              
        JumpFZero    -compare-6230-false       
        Jump         -compare-6230-true        
        Label        -compare-6230-true        
        PushI        1                         
        Jump         -compare-6230-join        
        Label        -compare-6230-false       
        PushI        0                         
        Jump         -compare-6230-join        
        Label        -compare-6230-join        
        JumpTrue     -print-boolean-6231-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6231-join  
        Label        -print-boolean-6231-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6231-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6232-arg1        
        PushF        7.900000                  
        PushF        6.200000                  
        FSubtract                              
        Label        -compare-6232-arg2        
        PushF        2.000000                  
        Label        -compare-6232-sub         
        FSubtract                              
        JumpFZero    -compare-6232-false       
        Jump         -compare-6232-true        
        Label        -compare-6232-true        
        PushI        1                         
        Jump         -compare-6232-join        
        Label        -compare-6232-false       
        PushI        0                         
        Jump         -compare-6232-join        
        Label        -compare-6232-join        
        JumpTrue     -print-boolean-6233-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6233-join  
        Label        -print-boolean-6233-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6233-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6234-arg1        
        PushF        6.300000                  
        PushF        4.600000                  
        FSubtract                              
        Label        -compare-6234-arg2        
        PushF        5.200000                  
        Label        -compare-6234-sub         
        FSubtract                              
        JumpFZero    -compare-6234-false       
        Jump         -compare-6234-true        
        Label        -compare-6234-true        
        PushI        1                         
        Jump         -compare-6234-join        
        Label        -compare-6234-false       
        PushI        0                         
        Jump         -compare-6234-join        
        Label        -compare-6234-join        
        JumpTrue     -print-boolean-6235-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6235-join  
        Label        -print-boolean-6235-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6235-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6236-arg1        
        PushF        5.100000                  
        PushF        7.900000                  
        FSubtract                              
        Label        -compare-6236-arg2        
        PushF        5.500000                  
        Label        -compare-6236-sub         
        FSubtract                              
        JumpFZero    -compare-6236-false       
        Jump         -compare-6236-true        
        Label        -compare-6236-true        
        PushI        1                         
        Jump         -compare-6236-join        
        Label        -compare-6236-false       
        PushI        0                         
        Jump         -compare-6236-join        
        Label        -compare-6236-join        
        JumpTrue     -print-boolean-6237-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6237-join  
        Label        -print-boolean-6237-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6237-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6238-arg1        
        PushF        1.200000                  
        PushF        4.900000                  
        FSubtract                              
        Label        -compare-6238-arg2        
        PushF        7.100000                  
        Label        -compare-6238-sub         
        FSubtract                              
        JumpFZero    -compare-6238-false       
        Jump         -compare-6238-true        
        Label        -compare-6238-true        
        PushI        1                         
        Jump         -compare-6238-join        
        Label        -compare-6238-false       
        PushI        0                         
        Jump         -compare-6238-join        
        Label        -compare-6238-join        
        JumpTrue     -print-boolean-6239-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6239-join  
        Label        -print-boolean-6239-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6239-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6240-arg1        
        PushF        2.400000                  
        PushF        3.300000                  
        FSubtract                              
        Label        -compare-6240-arg2        
        PushF        2.800000                  
        Label        -compare-6240-sub         
        FSubtract                              
        JumpFZero    -compare-6240-false       
        Jump         -compare-6240-true        
        Label        -compare-6240-true        
        PushI        1                         
        Jump         -compare-6240-join        
        Label        -compare-6240-false       
        PushI        0                         
        Jump         -compare-6240-join        
        Label        -compare-6240-join        
        JumpTrue     -print-boolean-6241-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6241-join  
        Label        -print-boolean-6241-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6241-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6242-arg1        
        PushF        6.600000                  
        PushF        1.200000                  
        FSubtract                              
        Label        -compare-6242-arg2        
        PushF        4.900000                  
        Label        -compare-6242-sub         
        FSubtract                              
        JumpFZero    -compare-6242-false       
        Jump         -compare-6242-true        
        Label        -compare-6242-true        
        PushI        1                         
        Jump         -compare-6242-join        
        Label        -compare-6242-false       
        PushI        0                         
        Jump         -compare-6242-join        
        Label        -compare-6242-join        
        JumpTrue     -print-boolean-6243-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6243-join  
        Label        -print-boolean-6243-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6243-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6244-arg1        
        PushF        9.400000                  
        PushF        3.200000                  
        FSubtract                              
        Label        -compare-6244-arg2        
        PushF        4.900000                  
        Label        -compare-6244-sub         
        FSubtract                              
        JumpFZero    -compare-6244-false       
        Jump         -compare-6244-true        
        Label        -compare-6244-true        
        PushI        1                         
        Jump         -compare-6244-join        
        Label        -compare-6244-false       
        PushI        0                         
        Jump         -compare-6244-join        
        Label        -compare-6244-join        
        JumpTrue     -print-boolean-6245-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6245-join  
        Label        -print-boolean-6245-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6245-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6246-arg1        
        PushF        6.100000                  
        PushF        5.500000                  
        FSubtract                              
        Label        -compare-6246-arg2        
        PushF        3.600000                  
        Label        -compare-6246-sub         
        FSubtract                              
        JumpFZero    -compare-6246-false       
        Jump         -compare-6246-true        
        Label        -compare-6246-true        
        PushI        1                         
        Jump         -compare-6246-join        
        Label        -compare-6246-false       
        PushI        0                         
        Jump         -compare-6246-join        
        Label        -compare-6246-join        
        JumpTrue     -print-boolean-6247-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6247-join  
        Label        -print-boolean-6247-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6247-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6248-arg1        
        PushF        4.800000                  
        PushF        7.300000                  
        FSubtract                              
        Label        -compare-6248-arg2        
        PushF        7.800000                  
        Label        -compare-6248-sub         
        FSubtract                              
        JumpFZero    -compare-6248-false       
        Jump         -compare-6248-true        
        Label        -compare-6248-true        
        PushI        1                         
        Jump         -compare-6248-join        
        Label        -compare-6248-false       
        PushI        0                         
        Jump         -compare-6248-join        
        Label        -compare-6248-join        
        JumpTrue     -print-boolean-6249-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6249-join  
        Label        -print-boolean-6249-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6249-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6250-arg1        
        PushF        6.000000                  
        PushF        3.400000                  
        FSubtract                              
        Label        -compare-6250-arg2        
        PushF        3.300000                  
        Label        -compare-6250-sub         
        FSubtract                              
        JumpFZero    -compare-6250-false       
        Jump         -compare-6250-true        
        Label        -compare-6250-true        
        PushI        1                         
        Jump         -compare-6250-join        
        Label        -compare-6250-false       
        PushI        0                         
        Jump         -compare-6250-join        
        Label        -compare-6250-join        
        JumpTrue     -print-boolean-6251-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6251-join  
        Label        -print-boolean-6251-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6251-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6252-arg1        
        PushF        4.500000                  
        PushF        3.000000                  
        FSubtract                              
        Label        -compare-6252-arg2        
        PushF        5.400000                  
        Label        -compare-6252-sub         
        FSubtract                              
        JumpFZero    -compare-6252-false       
        Jump         -compare-6252-true        
        Label        -compare-6252-true        
        PushI        1                         
        Jump         -compare-6252-join        
        Label        -compare-6252-false       
        PushI        0                         
        Jump         -compare-6252-join        
        Label        -compare-6252-join        
        JumpTrue     -print-boolean-6253-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6253-join  
        Label        -print-boolean-6253-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6253-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6254-arg1        
        PushF        6.800000                  
        Label        -compare-6254-arg2        
        PushF        1.500000                  
        PushF        3.100000                  
        FSubtract                              
        Label        -compare-6254-sub         
        FSubtract                              
        JumpFZero    -compare-6254-false       
        Jump         -compare-6254-true        
        Label        -compare-6254-true        
        PushI        1                         
        Jump         -compare-6254-join        
        Label        -compare-6254-false       
        PushI        0                         
        Jump         -compare-6254-join        
        Label        -compare-6254-join        
        JumpTrue     -print-boolean-6255-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6255-join  
        Label        -print-boolean-6255-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6255-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6256-arg1        
        PushF        2.700000                  
        Label        -compare-6256-arg2        
        PushF        1.100000                  
        PushF        4.800000                  
        FSubtract                              
        Label        -compare-6256-sub         
        FSubtract                              
        JumpFZero    -compare-6256-false       
        Jump         -compare-6256-true        
        Label        -compare-6256-true        
        PushI        1                         
        Jump         -compare-6256-join        
        Label        -compare-6256-false       
        PushI        0                         
        Jump         -compare-6256-join        
        Label        -compare-6256-join        
        JumpTrue     -print-boolean-6257-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6257-join  
        Label        -print-boolean-6257-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6257-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6258-arg1        
        PushF        5.000000                  
        Label        -compare-6258-arg2        
        PushF        2.600000                  
        PushF        3.300000                  
        FSubtract                              
        Label        -compare-6258-sub         
        FSubtract                              
        JumpFZero    -compare-6258-false       
        Jump         -compare-6258-true        
        Label        -compare-6258-true        
        PushI        1                         
        Jump         -compare-6258-join        
        Label        -compare-6258-false       
        PushI        0                         
        Jump         -compare-6258-join        
        Label        -compare-6258-join        
        JumpTrue     -print-boolean-6259-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6259-join  
        Label        -print-boolean-6259-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6259-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6260-arg1        
        PushF        5.200000                  
        Label        -compare-6260-arg2        
        PushF        1.100000                  
        PushF        3.900000                  
        FSubtract                              
        Label        -compare-6260-sub         
        FSubtract                              
        JumpFZero    -compare-6260-false       
        Jump         -compare-6260-true        
        Label        -compare-6260-true        
        PushI        1                         
        Jump         -compare-6260-join        
        Label        -compare-6260-false       
        PushI        0                         
        Jump         -compare-6260-join        
        Label        -compare-6260-join        
        JumpTrue     -print-boolean-6261-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6261-join  
        Label        -print-boolean-6261-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6261-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6262-arg1        
        PushF        7.700000                  
        Label        -compare-6262-arg2        
        PushF        6.500000                  
        PushF        6.100000                  
        FSubtract                              
        Label        -compare-6262-sub         
        FSubtract                              
        JumpFZero    -compare-6262-false       
        Jump         -compare-6262-true        
        Label        -compare-6262-true        
        PushI        1                         
        Jump         -compare-6262-join        
        Label        -compare-6262-false       
        PushI        0                         
        Jump         -compare-6262-join        
        Label        -compare-6262-join        
        JumpTrue     -print-boolean-6263-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6263-join  
        Label        -print-boolean-6263-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6263-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6264-arg1        
        PushF        2.000000                  
        Label        -compare-6264-arg2        
        PushF        9.200000                  
        PushF        3.100000                  
        FSubtract                              
        Label        -compare-6264-sub         
        FSubtract                              
        JumpFZero    -compare-6264-false       
        Jump         -compare-6264-true        
        Label        -compare-6264-true        
        PushI        1                         
        Jump         -compare-6264-join        
        Label        -compare-6264-false       
        PushI        0                         
        Jump         -compare-6264-join        
        Label        -compare-6264-join        
        JumpTrue     -print-boolean-6265-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6265-join  
        Label        -print-boolean-6265-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6265-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6266-arg1        
        PushF        8.800000                  
        Label        -compare-6266-arg2        
        PushF        6.400000                  
        PushF        2.100000                  
        FSubtract                              
        Label        -compare-6266-sub         
        FSubtract                              
        JumpFZero    -compare-6266-false       
        Jump         -compare-6266-true        
        Label        -compare-6266-true        
        PushI        1                         
        Jump         -compare-6266-join        
        Label        -compare-6266-false       
        PushI        0                         
        Jump         -compare-6266-join        
        Label        -compare-6266-join        
        JumpTrue     -print-boolean-6267-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6267-join  
        Label        -print-boolean-6267-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6267-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6268-arg1        
        PushF        4.900000                  
        Label        -compare-6268-arg2        
        PushF        8.400000                  
        PushF        1.400000                  
        FSubtract                              
        Label        -compare-6268-sub         
        FSubtract                              
        JumpFZero    -compare-6268-false       
        Jump         -compare-6268-true        
        Label        -compare-6268-true        
        PushI        1                         
        Jump         -compare-6268-join        
        Label        -compare-6268-false       
        PushI        0                         
        Jump         -compare-6268-join        
        Label        -compare-6268-join        
        JumpTrue     -print-boolean-6269-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6269-join  
        Label        -print-boolean-6269-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6269-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6270-arg1        
        PushF        8.200000                  
        Label        -compare-6270-arg2        
        PushF        3.000000                  
        PushF        4.400000                  
        FSubtract                              
        Label        -compare-6270-sub         
        FSubtract                              
        JumpFZero    -compare-6270-false       
        Jump         -compare-6270-true        
        Label        -compare-6270-true        
        PushI        1                         
        Jump         -compare-6270-join        
        Label        -compare-6270-false       
        PushI        0                         
        Jump         -compare-6270-join        
        Label        -compare-6270-join        
        JumpTrue     -print-boolean-6271-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6271-join  
        Label        -print-boolean-6271-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6271-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6272-arg1        
        PushF        4.100000                  
        Label        -compare-6272-arg2        
        PushF        3.600000                  
        PushF        8.500000                  
        FSubtract                              
        Label        -compare-6272-sub         
        FSubtract                              
        JumpFZero    -compare-6272-false       
        Jump         -compare-6272-true        
        Label        -compare-6272-true        
        PushI        1                         
        Jump         -compare-6272-join        
        Label        -compare-6272-false       
        PushI        0                         
        Jump         -compare-6272-join        
        Label        -compare-6272-join        
        JumpTrue     -print-boolean-6273-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6273-join  
        Label        -print-boolean-6273-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6273-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6274-arg1        
        PushF        9.900000                  
        Label        -compare-6274-arg2        
        PushF        7.300000                  
        PushF        2.600000                  
        FSubtract                              
        Label        -compare-6274-sub         
        FSubtract                              
        JumpFZero    -compare-6274-false       
        Jump         -compare-6274-true        
        Label        -compare-6274-true        
        PushI        1                         
        Jump         -compare-6274-join        
        Label        -compare-6274-false       
        PushI        0                         
        Jump         -compare-6274-join        
        Label        -compare-6274-join        
        JumpTrue     -print-boolean-6275-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6275-join  
        Label        -print-boolean-6275-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6275-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6276-arg1        
        PushF        3.500000                  
        Label        -compare-6276-arg2        
        PushF        9.000000                  
        PushF        3.700000                  
        FSubtract                              
        Label        -compare-6276-sub         
        FSubtract                              
        JumpFZero    -compare-6276-false       
        Jump         -compare-6276-true        
        Label        -compare-6276-true        
        PushI        1                         
        Jump         -compare-6276-join        
        Label        -compare-6276-false       
        PushI        0                         
        Jump         -compare-6276-join        
        Label        -compare-6276-join        
        JumpTrue     -print-boolean-6277-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6277-join  
        Label        -print-boolean-6277-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6277-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6278-arg1        
        PushF        3.100000                  
        PushF        3.500000                  
        FSubtract                              
        Label        -compare-6278-arg2        
        PushF        4.400000                  
        PushF        7.600000                  
        FSubtract                              
        Label        -compare-6278-sub         
        FSubtract                              
        JumpFZero    -compare-6278-false       
        Jump         -compare-6278-true        
        Label        -compare-6278-true        
        PushI        1                         
        Jump         -compare-6278-join        
        Label        -compare-6278-false       
        PushI        0                         
        Jump         -compare-6278-join        
        Label        -compare-6278-join        
        JumpTrue     -print-boolean-6279-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6279-join  
        Label        -print-boolean-6279-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6279-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6280-arg1        
        PushF        9.800000                  
        PushF        8.300000                  
        FSubtract                              
        Label        -compare-6280-arg2        
        PushF        8.700000                  
        PushF        3.800000                  
        FSubtract                              
        Label        -compare-6280-sub         
        FSubtract                              
        JumpFZero    -compare-6280-false       
        Jump         -compare-6280-true        
        Label        -compare-6280-true        
        PushI        1                         
        Jump         -compare-6280-join        
        Label        -compare-6280-false       
        PushI        0                         
        Jump         -compare-6280-join        
        Label        -compare-6280-join        
        JumpTrue     -print-boolean-6281-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6281-join  
        Label        -print-boolean-6281-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6281-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6282-arg1        
        PushF        7.500000                  
        PushF        3.100000                  
        FSubtract                              
        Label        -compare-6282-arg2        
        PushF        8.700000                  
        PushF        7.700000                  
        FSubtract                              
        Label        -compare-6282-sub         
        FSubtract                              
        JumpFZero    -compare-6282-false       
        Jump         -compare-6282-true        
        Label        -compare-6282-true        
        PushI        1                         
        Jump         -compare-6282-join        
        Label        -compare-6282-false       
        PushI        0                         
        Jump         -compare-6282-join        
        Label        -compare-6282-join        
        JumpTrue     -print-boolean-6283-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6283-join  
        Label        -print-boolean-6283-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6283-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6284-arg1        
        PushF        9.600000                  
        PushF        5.100000                  
        FSubtract                              
        Label        -compare-6284-arg2        
        PushF        5.600000                  
        PushF        7.200000                  
        FSubtract                              
        Label        -compare-6284-sub         
        FSubtract                              
        JumpFZero    -compare-6284-false       
        Jump         -compare-6284-true        
        Label        -compare-6284-true        
        PushI        1                         
        Jump         -compare-6284-join        
        Label        -compare-6284-false       
        PushI        0                         
        Jump         -compare-6284-join        
        Label        -compare-6284-join        
        JumpTrue     -print-boolean-6285-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6285-join  
        Label        -print-boolean-6285-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6285-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6286-arg1        
        PushF        4.000000                  
        PushF        8.100000                  
        FSubtract                              
        Label        -compare-6286-arg2        
        PushF        5.600000                  
        PushF        2.300000                  
        FSubtract                              
        Label        -compare-6286-sub         
        FSubtract                              
        JumpFZero    -compare-6286-false       
        Jump         -compare-6286-true        
        Label        -compare-6286-true        
        PushI        1                         
        Jump         -compare-6286-join        
        Label        -compare-6286-false       
        PushI        0                         
        Jump         -compare-6286-join        
        Label        -compare-6286-join        
        JumpTrue     -print-boolean-6287-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6287-join  
        Label        -print-boolean-6287-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6287-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6288-arg1        
        PushF        4.800000                  
        PushF        1.200000                  
        FSubtract                              
        Label        -compare-6288-arg2        
        PushF        2.000000                  
        PushF        2.600000                  
        FSubtract                              
        Label        -compare-6288-sub         
        FSubtract                              
        JumpFZero    -compare-6288-false       
        Jump         -compare-6288-true        
        Label        -compare-6288-true        
        PushI        1                         
        Jump         -compare-6288-join        
        Label        -compare-6288-false       
        PushI        0                         
        Jump         -compare-6288-join        
        Label        -compare-6288-join        
        JumpTrue     -print-boolean-6289-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6289-join  
        Label        -print-boolean-6289-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6289-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6290-arg1        
        PushF        4.800000                  
        PushF        9.800000                  
        FSubtract                              
        Label        -compare-6290-arg2        
        PushF        5.800000                  
        PushF        2.500000                  
        FSubtract                              
        Label        -compare-6290-sub         
        FSubtract                              
        JumpFZero    -compare-6290-false       
        Jump         -compare-6290-true        
        Label        -compare-6290-true        
        PushI        1                         
        Jump         -compare-6290-join        
        Label        -compare-6290-false       
        PushI        0                         
        Jump         -compare-6290-join        
        Label        -compare-6290-join        
        JumpTrue     -print-boolean-6291-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6291-join  
        Label        -print-boolean-6291-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6291-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6292-arg1        
        PushF        9.900000                  
        PushF        1.000000                  
        FSubtract                              
        Label        -compare-6292-arg2        
        PushF        9.400000                  
        PushF        5.200000                  
        FSubtract                              
        Label        -compare-6292-sub         
        FSubtract                              
        JumpFZero    -compare-6292-false       
        Jump         -compare-6292-true        
        Label        -compare-6292-true        
        PushI        1                         
        Jump         -compare-6292-join        
        Label        -compare-6292-false       
        PushI        0                         
        Jump         -compare-6292-join        
        Label        -compare-6292-join        
        JumpTrue     -print-boolean-6293-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6293-join  
        Label        -print-boolean-6293-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6293-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6294-arg1        
        PushF        8.100000                  
        PushF        5.400000                  
        FSubtract                              
        Label        -compare-6294-arg2        
        PushF        6.500000                  
        PushF        4.300000                  
        FSubtract                              
        Label        -compare-6294-sub         
        FSubtract                              
        JumpFZero    -compare-6294-false       
        Jump         -compare-6294-true        
        Label        -compare-6294-true        
        PushI        1                         
        Jump         -compare-6294-join        
        Label        -compare-6294-false       
        PushI        0                         
        Jump         -compare-6294-join        
        Label        -compare-6294-join        
        JumpTrue     -print-boolean-6295-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6295-join  
        Label        -print-boolean-6295-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6295-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6296-arg1        
        PushF        3.100000                  
        PushF        5.000000                  
        FSubtract                              
        Label        -compare-6296-arg2        
        PushF        4.800000                  
        PushF        7.700000                  
        FSubtract                              
        Label        -compare-6296-sub         
        FSubtract                              
        JumpFZero    -compare-6296-false       
        Jump         -compare-6296-true        
        Label        -compare-6296-true        
        PushI        1                         
        Jump         -compare-6296-join        
        Label        -compare-6296-false       
        PushI        0                         
        Jump         -compare-6296-join        
        Label        -compare-6296-join        
        JumpTrue     -print-boolean-6297-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6297-join  
        Label        -print-boolean-6297-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6297-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6298-arg1        
        PushF        8.800000                  
        PushF        4.200000                  
        FSubtract                              
        Label        -compare-6298-arg2        
        PushF        4.600000                  
        PushF        2.300000                  
        FSubtract                              
        Label        -compare-6298-sub         
        FSubtract                              
        JumpFZero    -compare-6298-false       
        Jump         -compare-6298-true        
        Label        -compare-6298-true        
        PushI        1                         
        Jump         -compare-6298-join        
        Label        -compare-6298-false       
        PushI        0                         
        Jump         -compare-6298-join        
        Label        -compare-6298-join        
        JumpTrue     -print-boolean-6299-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6299-join  
        Label        -print-boolean-6299-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6299-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6300-arg1        
        PushF        3.500000                  
        PushF        3.400000                  
        FSubtract                              
        Label        -compare-6300-arg2        
        PushF        3.600000                  
        PushF        1.300000                  
        FSubtract                              
        Label        -compare-6300-sub         
        FSubtract                              
        JumpFZero    -compare-6300-false       
        Jump         -compare-6300-true        
        Label        -compare-6300-true        
        PushI        1                         
        Jump         -compare-6300-join        
        Label        -compare-6300-false       
        PushI        0                         
        Jump         -compare-6300-join        
        Label        -compare-6300-join        
        JumpTrue     -print-boolean-6301-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6301-join  
        Label        -print-boolean-6301-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6301-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
