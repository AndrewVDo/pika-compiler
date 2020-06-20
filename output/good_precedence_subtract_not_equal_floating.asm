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
        Label        -compare-6217-arg1        
        PushF        8.100000                  
        PushF        1.600000                  
        FSubtract                              
        Label        -compare-6217-arg2        
        PushF        9.500000                  
        Label        -compare-6217-sub         
        FSubtract                              
        JumpFZero    -compare-6217-false       
        Jump         -compare-6217-true        
        Label        -compare-6217-true        
        PushI        1                         
        Jump         -compare-6217-join        
        Label        -compare-6217-false       
        PushI        0                         
        Jump         -compare-6217-join        
        Label        -compare-6217-join        
        JumpTrue     -print-boolean-6218-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6218-join  
        Label        -print-boolean-6218-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6218-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6219-arg1        
        PushF        7.900000                  
        PushF        6.200000                  
        FSubtract                              
        Label        -compare-6219-arg2        
        PushF        2.000000                  
        Label        -compare-6219-sub         
        FSubtract                              
        JumpFZero    -compare-6219-false       
        Jump         -compare-6219-true        
        Label        -compare-6219-true        
        PushI        1                         
        Jump         -compare-6219-join        
        Label        -compare-6219-false       
        PushI        0                         
        Jump         -compare-6219-join        
        Label        -compare-6219-join        
        JumpTrue     -print-boolean-6220-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6220-join  
        Label        -print-boolean-6220-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6220-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6221-arg1        
        PushF        6.300000                  
        PushF        4.600000                  
        FSubtract                              
        Label        -compare-6221-arg2        
        PushF        5.200000                  
        Label        -compare-6221-sub         
        FSubtract                              
        JumpFZero    -compare-6221-false       
        Jump         -compare-6221-true        
        Label        -compare-6221-true        
        PushI        1                         
        Jump         -compare-6221-join        
        Label        -compare-6221-false       
        PushI        0                         
        Jump         -compare-6221-join        
        Label        -compare-6221-join        
        JumpTrue     -print-boolean-6222-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6222-join  
        Label        -print-boolean-6222-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6222-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6223-arg1        
        PushF        5.100000                  
        PushF        7.900000                  
        FSubtract                              
        Label        -compare-6223-arg2        
        PushF        5.500000                  
        Label        -compare-6223-sub         
        FSubtract                              
        JumpFZero    -compare-6223-false       
        Jump         -compare-6223-true        
        Label        -compare-6223-true        
        PushI        1                         
        Jump         -compare-6223-join        
        Label        -compare-6223-false       
        PushI        0                         
        Jump         -compare-6223-join        
        Label        -compare-6223-join        
        JumpTrue     -print-boolean-6224-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6224-join  
        Label        -print-boolean-6224-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6224-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6225-arg1        
        PushF        1.200000                  
        PushF        4.900000                  
        FSubtract                              
        Label        -compare-6225-arg2        
        PushF        7.100000                  
        Label        -compare-6225-sub         
        FSubtract                              
        JumpFZero    -compare-6225-false       
        Jump         -compare-6225-true        
        Label        -compare-6225-true        
        PushI        1                         
        Jump         -compare-6225-join        
        Label        -compare-6225-false       
        PushI        0                         
        Jump         -compare-6225-join        
        Label        -compare-6225-join        
        JumpTrue     -print-boolean-6226-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6226-join  
        Label        -print-boolean-6226-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6226-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6227-arg1        
        PushF        2.400000                  
        PushF        3.300000                  
        FSubtract                              
        Label        -compare-6227-arg2        
        PushF        2.800000                  
        Label        -compare-6227-sub         
        FSubtract                              
        JumpFZero    -compare-6227-false       
        Jump         -compare-6227-true        
        Label        -compare-6227-true        
        PushI        1                         
        Jump         -compare-6227-join        
        Label        -compare-6227-false       
        PushI        0                         
        Jump         -compare-6227-join        
        Label        -compare-6227-join        
        JumpTrue     -print-boolean-6228-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6228-join  
        Label        -print-boolean-6228-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6228-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6229-arg1        
        PushF        6.600000                  
        PushF        1.200000                  
        FSubtract                              
        Label        -compare-6229-arg2        
        PushF        4.900000                  
        Label        -compare-6229-sub         
        FSubtract                              
        JumpFZero    -compare-6229-false       
        Jump         -compare-6229-true        
        Label        -compare-6229-true        
        PushI        1                         
        Jump         -compare-6229-join        
        Label        -compare-6229-false       
        PushI        0                         
        Jump         -compare-6229-join        
        Label        -compare-6229-join        
        JumpTrue     -print-boolean-6230-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6230-join  
        Label        -print-boolean-6230-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6230-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6231-arg1        
        PushF        9.400000                  
        PushF        3.200000                  
        FSubtract                              
        Label        -compare-6231-arg2        
        PushF        4.900000                  
        Label        -compare-6231-sub         
        FSubtract                              
        JumpFZero    -compare-6231-false       
        Jump         -compare-6231-true        
        Label        -compare-6231-true        
        PushI        1                         
        Jump         -compare-6231-join        
        Label        -compare-6231-false       
        PushI        0                         
        Jump         -compare-6231-join        
        Label        -compare-6231-join        
        JumpTrue     -print-boolean-6232-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6232-join  
        Label        -print-boolean-6232-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6232-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6233-arg1        
        PushF        6.100000                  
        PushF        5.500000                  
        FSubtract                              
        Label        -compare-6233-arg2        
        PushF        3.600000                  
        Label        -compare-6233-sub         
        FSubtract                              
        JumpFZero    -compare-6233-false       
        Jump         -compare-6233-true        
        Label        -compare-6233-true        
        PushI        1                         
        Jump         -compare-6233-join        
        Label        -compare-6233-false       
        PushI        0                         
        Jump         -compare-6233-join        
        Label        -compare-6233-join        
        JumpTrue     -print-boolean-6234-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6234-join  
        Label        -print-boolean-6234-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6234-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6235-arg1        
        PushF        4.800000                  
        PushF        7.300000                  
        FSubtract                              
        Label        -compare-6235-arg2        
        PushF        7.800000                  
        Label        -compare-6235-sub         
        FSubtract                              
        JumpFZero    -compare-6235-false       
        Jump         -compare-6235-true        
        Label        -compare-6235-true        
        PushI        1                         
        Jump         -compare-6235-join        
        Label        -compare-6235-false       
        PushI        0                         
        Jump         -compare-6235-join        
        Label        -compare-6235-join        
        JumpTrue     -print-boolean-6236-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6236-join  
        Label        -print-boolean-6236-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6236-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6237-arg1        
        PushF        6.000000                  
        PushF        3.400000                  
        FSubtract                              
        Label        -compare-6237-arg2        
        PushF        3.300000                  
        Label        -compare-6237-sub         
        FSubtract                              
        JumpFZero    -compare-6237-false       
        Jump         -compare-6237-true        
        Label        -compare-6237-true        
        PushI        1                         
        Jump         -compare-6237-join        
        Label        -compare-6237-false       
        PushI        0                         
        Jump         -compare-6237-join        
        Label        -compare-6237-join        
        JumpTrue     -print-boolean-6238-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6238-join  
        Label        -print-boolean-6238-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6238-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6239-arg1        
        PushF        4.500000                  
        PushF        3.000000                  
        FSubtract                              
        Label        -compare-6239-arg2        
        PushF        5.400000                  
        Label        -compare-6239-sub         
        FSubtract                              
        JumpFZero    -compare-6239-false       
        Jump         -compare-6239-true        
        Label        -compare-6239-true        
        PushI        1                         
        Jump         -compare-6239-join        
        Label        -compare-6239-false       
        PushI        0                         
        Jump         -compare-6239-join        
        Label        -compare-6239-join        
        JumpTrue     -print-boolean-6240-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6240-join  
        Label        -print-boolean-6240-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6240-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6241-arg1        
        PushF        6.800000                  
        Label        -compare-6241-arg2        
        PushF        1.500000                  
        PushF        3.100000                  
        FSubtract                              
        Label        -compare-6241-sub         
        FSubtract                              
        JumpFZero    -compare-6241-false       
        Jump         -compare-6241-true        
        Label        -compare-6241-true        
        PushI        1                         
        Jump         -compare-6241-join        
        Label        -compare-6241-false       
        PushI        0                         
        Jump         -compare-6241-join        
        Label        -compare-6241-join        
        JumpTrue     -print-boolean-6242-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6242-join  
        Label        -print-boolean-6242-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6242-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6243-arg1        
        PushF        2.700000                  
        Label        -compare-6243-arg2        
        PushF        1.100000                  
        PushF        4.800000                  
        FSubtract                              
        Label        -compare-6243-sub         
        FSubtract                              
        JumpFZero    -compare-6243-false       
        Jump         -compare-6243-true        
        Label        -compare-6243-true        
        PushI        1                         
        Jump         -compare-6243-join        
        Label        -compare-6243-false       
        PushI        0                         
        Jump         -compare-6243-join        
        Label        -compare-6243-join        
        JumpTrue     -print-boolean-6244-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6244-join  
        Label        -print-boolean-6244-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6244-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6245-arg1        
        PushF        5.000000                  
        Label        -compare-6245-arg2        
        PushF        2.600000                  
        PushF        3.300000                  
        FSubtract                              
        Label        -compare-6245-sub         
        FSubtract                              
        JumpFZero    -compare-6245-false       
        Jump         -compare-6245-true        
        Label        -compare-6245-true        
        PushI        1                         
        Jump         -compare-6245-join        
        Label        -compare-6245-false       
        PushI        0                         
        Jump         -compare-6245-join        
        Label        -compare-6245-join        
        JumpTrue     -print-boolean-6246-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6246-join  
        Label        -print-boolean-6246-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6246-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6247-arg1        
        PushF        5.200000                  
        Label        -compare-6247-arg2        
        PushF        1.100000                  
        PushF        3.900000                  
        FSubtract                              
        Label        -compare-6247-sub         
        FSubtract                              
        JumpFZero    -compare-6247-false       
        Jump         -compare-6247-true        
        Label        -compare-6247-true        
        PushI        1                         
        Jump         -compare-6247-join        
        Label        -compare-6247-false       
        PushI        0                         
        Jump         -compare-6247-join        
        Label        -compare-6247-join        
        JumpTrue     -print-boolean-6248-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6248-join  
        Label        -print-boolean-6248-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6248-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6249-arg1        
        PushF        7.700000                  
        Label        -compare-6249-arg2        
        PushF        6.500000                  
        PushF        6.100000                  
        FSubtract                              
        Label        -compare-6249-sub         
        FSubtract                              
        JumpFZero    -compare-6249-false       
        Jump         -compare-6249-true        
        Label        -compare-6249-true        
        PushI        1                         
        Jump         -compare-6249-join        
        Label        -compare-6249-false       
        PushI        0                         
        Jump         -compare-6249-join        
        Label        -compare-6249-join        
        JumpTrue     -print-boolean-6250-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6250-join  
        Label        -print-boolean-6250-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6250-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6251-arg1        
        PushF        2.000000                  
        Label        -compare-6251-arg2        
        PushF        9.200000                  
        PushF        3.100000                  
        FSubtract                              
        Label        -compare-6251-sub         
        FSubtract                              
        JumpFZero    -compare-6251-false       
        Jump         -compare-6251-true        
        Label        -compare-6251-true        
        PushI        1                         
        Jump         -compare-6251-join        
        Label        -compare-6251-false       
        PushI        0                         
        Jump         -compare-6251-join        
        Label        -compare-6251-join        
        JumpTrue     -print-boolean-6252-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6252-join  
        Label        -print-boolean-6252-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6252-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6253-arg1        
        PushF        8.800000                  
        Label        -compare-6253-arg2        
        PushF        6.400000                  
        PushF        2.100000                  
        FSubtract                              
        Label        -compare-6253-sub         
        FSubtract                              
        JumpFZero    -compare-6253-false       
        Jump         -compare-6253-true        
        Label        -compare-6253-true        
        PushI        1                         
        Jump         -compare-6253-join        
        Label        -compare-6253-false       
        PushI        0                         
        Jump         -compare-6253-join        
        Label        -compare-6253-join        
        JumpTrue     -print-boolean-6254-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6254-join  
        Label        -print-boolean-6254-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6254-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6255-arg1        
        PushF        4.900000                  
        Label        -compare-6255-arg2        
        PushF        8.400000                  
        PushF        1.400000                  
        FSubtract                              
        Label        -compare-6255-sub         
        FSubtract                              
        JumpFZero    -compare-6255-false       
        Jump         -compare-6255-true        
        Label        -compare-6255-true        
        PushI        1                         
        Jump         -compare-6255-join        
        Label        -compare-6255-false       
        PushI        0                         
        Jump         -compare-6255-join        
        Label        -compare-6255-join        
        JumpTrue     -print-boolean-6256-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6256-join  
        Label        -print-boolean-6256-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6256-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6257-arg1        
        PushF        8.200000                  
        Label        -compare-6257-arg2        
        PushF        3.000000                  
        PushF        4.400000                  
        FSubtract                              
        Label        -compare-6257-sub         
        FSubtract                              
        JumpFZero    -compare-6257-false       
        Jump         -compare-6257-true        
        Label        -compare-6257-true        
        PushI        1                         
        Jump         -compare-6257-join        
        Label        -compare-6257-false       
        PushI        0                         
        Jump         -compare-6257-join        
        Label        -compare-6257-join        
        JumpTrue     -print-boolean-6258-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6258-join  
        Label        -print-boolean-6258-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6258-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6259-arg1        
        PushF        4.100000                  
        Label        -compare-6259-arg2        
        PushF        3.600000                  
        PushF        8.500000                  
        FSubtract                              
        Label        -compare-6259-sub         
        FSubtract                              
        JumpFZero    -compare-6259-false       
        Jump         -compare-6259-true        
        Label        -compare-6259-true        
        PushI        1                         
        Jump         -compare-6259-join        
        Label        -compare-6259-false       
        PushI        0                         
        Jump         -compare-6259-join        
        Label        -compare-6259-join        
        JumpTrue     -print-boolean-6260-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6260-join  
        Label        -print-boolean-6260-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6260-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6261-arg1        
        PushF        9.900000                  
        Label        -compare-6261-arg2        
        PushF        7.300000                  
        PushF        2.600000                  
        FSubtract                              
        Label        -compare-6261-sub         
        FSubtract                              
        JumpFZero    -compare-6261-false       
        Jump         -compare-6261-true        
        Label        -compare-6261-true        
        PushI        1                         
        Jump         -compare-6261-join        
        Label        -compare-6261-false       
        PushI        0                         
        Jump         -compare-6261-join        
        Label        -compare-6261-join        
        JumpTrue     -print-boolean-6262-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6262-join  
        Label        -print-boolean-6262-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6262-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6263-arg1        
        PushF        3.500000                  
        Label        -compare-6263-arg2        
        PushF        9.000000                  
        PushF        3.700000                  
        FSubtract                              
        Label        -compare-6263-sub         
        FSubtract                              
        JumpFZero    -compare-6263-false       
        Jump         -compare-6263-true        
        Label        -compare-6263-true        
        PushI        1                         
        Jump         -compare-6263-join        
        Label        -compare-6263-false       
        PushI        0                         
        Jump         -compare-6263-join        
        Label        -compare-6263-join        
        JumpTrue     -print-boolean-6264-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6264-join  
        Label        -print-boolean-6264-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6264-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6265-arg1        
        PushF        3.100000                  
        PushF        3.500000                  
        FSubtract                              
        Label        -compare-6265-arg2        
        PushF        4.400000                  
        PushF        7.600000                  
        FSubtract                              
        Label        -compare-6265-sub         
        FSubtract                              
        JumpFZero    -compare-6265-false       
        Jump         -compare-6265-true        
        Label        -compare-6265-true        
        PushI        1                         
        Jump         -compare-6265-join        
        Label        -compare-6265-false       
        PushI        0                         
        Jump         -compare-6265-join        
        Label        -compare-6265-join        
        JumpTrue     -print-boolean-6266-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6266-join  
        Label        -print-boolean-6266-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6266-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6267-arg1        
        PushF        9.800000                  
        PushF        8.300000                  
        FSubtract                              
        Label        -compare-6267-arg2        
        PushF        8.700000                  
        PushF        3.800000                  
        FSubtract                              
        Label        -compare-6267-sub         
        FSubtract                              
        JumpFZero    -compare-6267-false       
        Jump         -compare-6267-true        
        Label        -compare-6267-true        
        PushI        1                         
        Jump         -compare-6267-join        
        Label        -compare-6267-false       
        PushI        0                         
        Jump         -compare-6267-join        
        Label        -compare-6267-join        
        JumpTrue     -print-boolean-6268-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6268-join  
        Label        -print-boolean-6268-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6268-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6269-arg1        
        PushF        7.500000                  
        PushF        3.100000                  
        FSubtract                              
        Label        -compare-6269-arg2        
        PushF        8.700000                  
        PushF        7.700000                  
        FSubtract                              
        Label        -compare-6269-sub         
        FSubtract                              
        JumpFZero    -compare-6269-false       
        Jump         -compare-6269-true        
        Label        -compare-6269-true        
        PushI        1                         
        Jump         -compare-6269-join        
        Label        -compare-6269-false       
        PushI        0                         
        Jump         -compare-6269-join        
        Label        -compare-6269-join        
        JumpTrue     -print-boolean-6270-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6270-join  
        Label        -print-boolean-6270-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6270-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6271-arg1        
        PushF        9.600000                  
        PushF        5.100000                  
        FSubtract                              
        Label        -compare-6271-arg2        
        PushF        5.600000                  
        PushF        7.200000                  
        FSubtract                              
        Label        -compare-6271-sub         
        FSubtract                              
        JumpFZero    -compare-6271-false       
        Jump         -compare-6271-true        
        Label        -compare-6271-true        
        PushI        1                         
        Jump         -compare-6271-join        
        Label        -compare-6271-false       
        PushI        0                         
        Jump         -compare-6271-join        
        Label        -compare-6271-join        
        JumpTrue     -print-boolean-6272-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6272-join  
        Label        -print-boolean-6272-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6272-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6273-arg1        
        PushF        4.000000                  
        PushF        8.100000                  
        FSubtract                              
        Label        -compare-6273-arg2        
        PushF        5.600000                  
        PushF        2.300000                  
        FSubtract                              
        Label        -compare-6273-sub         
        FSubtract                              
        JumpFZero    -compare-6273-false       
        Jump         -compare-6273-true        
        Label        -compare-6273-true        
        PushI        1                         
        Jump         -compare-6273-join        
        Label        -compare-6273-false       
        PushI        0                         
        Jump         -compare-6273-join        
        Label        -compare-6273-join        
        JumpTrue     -print-boolean-6274-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6274-join  
        Label        -print-boolean-6274-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6274-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6275-arg1        
        PushF        4.800000                  
        PushF        1.200000                  
        FSubtract                              
        Label        -compare-6275-arg2        
        PushF        2.000000                  
        PushF        2.600000                  
        FSubtract                              
        Label        -compare-6275-sub         
        FSubtract                              
        JumpFZero    -compare-6275-false       
        Jump         -compare-6275-true        
        Label        -compare-6275-true        
        PushI        1                         
        Jump         -compare-6275-join        
        Label        -compare-6275-false       
        PushI        0                         
        Jump         -compare-6275-join        
        Label        -compare-6275-join        
        JumpTrue     -print-boolean-6276-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6276-join  
        Label        -print-boolean-6276-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6276-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6277-arg1        
        PushF        4.800000                  
        PushF        9.800000                  
        FSubtract                              
        Label        -compare-6277-arg2        
        PushF        5.800000                  
        PushF        2.500000                  
        FSubtract                              
        Label        -compare-6277-sub         
        FSubtract                              
        JumpFZero    -compare-6277-false       
        Jump         -compare-6277-true        
        Label        -compare-6277-true        
        PushI        1                         
        Jump         -compare-6277-join        
        Label        -compare-6277-false       
        PushI        0                         
        Jump         -compare-6277-join        
        Label        -compare-6277-join        
        JumpTrue     -print-boolean-6278-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6278-join  
        Label        -print-boolean-6278-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6278-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6279-arg1        
        PushF        9.900000                  
        PushF        1.000000                  
        FSubtract                              
        Label        -compare-6279-arg2        
        PushF        9.400000                  
        PushF        5.200000                  
        FSubtract                              
        Label        -compare-6279-sub         
        FSubtract                              
        JumpFZero    -compare-6279-false       
        Jump         -compare-6279-true        
        Label        -compare-6279-true        
        PushI        1                         
        Jump         -compare-6279-join        
        Label        -compare-6279-false       
        PushI        0                         
        Jump         -compare-6279-join        
        Label        -compare-6279-join        
        JumpTrue     -print-boolean-6280-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6280-join  
        Label        -print-boolean-6280-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6280-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6281-arg1        
        PushF        8.100000                  
        PushF        5.400000                  
        FSubtract                              
        Label        -compare-6281-arg2        
        PushF        6.500000                  
        PushF        4.300000                  
        FSubtract                              
        Label        -compare-6281-sub         
        FSubtract                              
        JumpFZero    -compare-6281-false       
        Jump         -compare-6281-true        
        Label        -compare-6281-true        
        PushI        1                         
        Jump         -compare-6281-join        
        Label        -compare-6281-false       
        PushI        0                         
        Jump         -compare-6281-join        
        Label        -compare-6281-join        
        JumpTrue     -print-boolean-6282-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6282-join  
        Label        -print-boolean-6282-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6282-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6283-arg1        
        PushF        3.100000                  
        PushF        5.000000                  
        FSubtract                              
        Label        -compare-6283-arg2        
        PushF        4.800000                  
        PushF        7.700000                  
        FSubtract                              
        Label        -compare-6283-sub         
        FSubtract                              
        JumpFZero    -compare-6283-false       
        Jump         -compare-6283-true        
        Label        -compare-6283-true        
        PushI        1                         
        Jump         -compare-6283-join        
        Label        -compare-6283-false       
        PushI        0                         
        Jump         -compare-6283-join        
        Label        -compare-6283-join        
        JumpTrue     -print-boolean-6284-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6284-join  
        Label        -print-boolean-6284-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6284-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6285-arg1        
        PushF        8.800000                  
        PushF        4.200000                  
        FSubtract                              
        Label        -compare-6285-arg2        
        PushF        4.600000                  
        PushF        2.300000                  
        FSubtract                              
        Label        -compare-6285-sub         
        FSubtract                              
        JumpFZero    -compare-6285-false       
        Jump         -compare-6285-true        
        Label        -compare-6285-true        
        PushI        1                         
        Jump         -compare-6285-join        
        Label        -compare-6285-false       
        PushI        0                         
        Jump         -compare-6285-join        
        Label        -compare-6285-join        
        JumpTrue     -print-boolean-6286-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6286-join  
        Label        -print-boolean-6286-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6286-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6287-arg1        
        PushF        3.500000                  
        PushF        3.400000                  
        FSubtract                              
        Label        -compare-6287-arg2        
        PushF        3.600000                  
        PushF        1.300000                  
        FSubtract                              
        Label        -compare-6287-sub         
        FSubtract                              
        JumpFZero    -compare-6287-false       
        Jump         -compare-6287-true        
        Label        -compare-6287-true        
        PushI        1                         
        Jump         -compare-6287-join        
        Label        -compare-6287-false       
        PushI        0                         
        Jump         -compare-6287-join        
        Label        -compare-6287-join        
        JumpTrue     -print-boolean-6288-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6288-join  
        Label        -print-boolean-6288-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6288-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
