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
        Label        -compare-6086-arg1        
        PushF        3.700000                  
        PushF        5.200000                  
        FSubtract                              
        Label        -compare-6086-arg2        
        PushF        7.400000                  
        Label        -compare-6086-sub         
        FSubtract                              
        JumpFPos     -compare-6086-false       
        Jump         -compare-6086-true        
        Label        -compare-6086-true        
        PushI        1                         
        Jump         -compare-6086-join        
        Label        -compare-6086-false       
        PushI        0                         
        Jump         -compare-6086-join        
        Label        -compare-6086-join        
        JumpTrue     -print-boolean-6087-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6087-join  
        Label        -print-boolean-6087-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6087-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6088-arg1        
        PushF        5.800000                  
        PushF        7.400000                  
        FSubtract                              
        Label        -compare-6088-arg2        
        PushF        9.200000                  
        Label        -compare-6088-sub         
        FSubtract                              
        JumpFPos     -compare-6088-false       
        Jump         -compare-6088-true        
        Label        -compare-6088-true        
        PushI        1                         
        Jump         -compare-6088-join        
        Label        -compare-6088-false       
        PushI        0                         
        Jump         -compare-6088-join        
        Label        -compare-6088-join        
        JumpTrue     -print-boolean-6089-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6089-join  
        Label        -print-boolean-6089-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6089-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6090-arg1        
        PushF        5.200000                  
        PushF        5.400000                  
        FSubtract                              
        Label        -compare-6090-arg2        
        PushF        9.800000                  
        Label        -compare-6090-sub         
        FSubtract                              
        JumpFPos     -compare-6090-false       
        Jump         -compare-6090-true        
        Label        -compare-6090-true        
        PushI        1                         
        Jump         -compare-6090-join        
        Label        -compare-6090-false       
        PushI        0                         
        Jump         -compare-6090-join        
        Label        -compare-6090-join        
        JumpTrue     -print-boolean-6091-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6091-join  
        Label        -print-boolean-6091-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6091-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6092-arg1        
        PushF        4.000000                  
        PushF        1.900000                  
        FSubtract                              
        Label        -compare-6092-arg2        
        PushF        6.300000                  
        Label        -compare-6092-sub         
        FSubtract                              
        JumpFPos     -compare-6092-false       
        Jump         -compare-6092-true        
        Label        -compare-6092-true        
        PushI        1                         
        Jump         -compare-6092-join        
        Label        -compare-6092-false       
        PushI        0                         
        Jump         -compare-6092-join        
        Label        -compare-6092-join        
        JumpTrue     -print-boolean-6093-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6093-join  
        Label        -print-boolean-6093-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6093-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6094-arg1        
        PushF        3.000000                  
        PushF        2.400000                  
        FSubtract                              
        Label        -compare-6094-arg2        
        PushF        9.600000                  
        Label        -compare-6094-sub         
        FSubtract                              
        JumpFPos     -compare-6094-false       
        Jump         -compare-6094-true        
        Label        -compare-6094-true        
        PushI        1                         
        Jump         -compare-6094-join        
        Label        -compare-6094-false       
        PushI        0                         
        Jump         -compare-6094-join        
        Label        -compare-6094-join        
        JumpTrue     -print-boolean-6095-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6095-join  
        Label        -print-boolean-6095-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6095-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6096-arg1        
        PushF        8.600000                  
        PushF        3.600000                  
        FSubtract                              
        Label        -compare-6096-arg2        
        PushF        5.700000                  
        Label        -compare-6096-sub         
        FSubtract                              
        JumpFPos     -compare-6096-false       
        Jump         -compare-6096-true        
        Label        -compare-6096-true        
        PushI        1                         
        Jump         -compare-6096-join        
        Label        -compare-6096-false       
        PushI        0                         
        Jump         -compare-6096-join        
        Label        -compare-6096-join        
        JumpTrue     -print-boolean-6097-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6097-join  
        Label        -print-boolean-6097-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6097-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6098-arg1        
        PushF        7.000000                  
        PushF        4.400000                  
        FSubtract                              
        Label        -compare-6098-arg2        
        PushF        3.600000                  
        Label        -compare-6098-sub         
        FSubtract                              
        JumpFPos     -compare-6098-false       
        Jump         -compare-6098-true        
        Label        -compare-6098-true        
        PushI        1                         
        Jump         -compare-6098-join        
        Label        -compare-6098-false       
        PushI        0                         
        Jump         -compare-6098-join        
        Label        -compare-6098-join        
        JumpTrue     -print-boolean-6099-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6099-join  
        Label        -print-boolean-6099-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6099-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6100-arg1        
        PushF        5.000000                  
        PushF        6.400000                  
        FSubtract                              
        Label        -compare-6100-arg2        
        PushF        9.200000                  
        Label        -compare-6100-sub         
        FSubtract                              
        JumpFPos     -compare-6100-false       
        Jump         -compare-6100-true        
        Label        -compare-6100-true        
        PushI        1                         
        Jump         -compare-6100-join        
        Label        -compare-6100-false       
        PushI        0                         
        Jump         -compare-6100-join        
        Label        -compare-6100-join        
        JumpTrue     -print-boolean-6101-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6101-join  
        Label        -print-boolean-6101-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6101-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6102-arg1        
        PushF        9.500000                  
        PushF        9.000000                  
        FSubtract                              
        Label        -compare-6102-arg2        
        PushF        3.100000                  
        Label        -compare-6102-sub         
        FSubtract                              
        JumpFPos     -compare-6102-false       
        Jump         -compare-6102-true        
        Label        -compare-6102-true        
        PushI        1                         
        Jump         -compare-6102-join        
        Label        -compare-6102-false       
        PushI        0                         
        Jump         -compare-6102-join        
        Label        -compare-6102-join        
        JumpTrue     -print-boolean-6103-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6103-join  
        Label        -print-boolean-6103-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6103-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6104-arg1        
        PushF        8.600000                  
        PushF        6.400000                  
        FSubtract                              
        Label        -compare-6104-arg2        
        PushF        6.900000                  
        Label        -compare-6104-sub         
        FSubtract                              
        JumpFPos     -compare-6104-false       
        Jump         -compare-6104-true        
        Label        -compare-6104-true        
        PushI        1                         
        Jump         -compare-6104-join        
        Label        -compare-6104-false       
        PushI        0                         
        Jump         -compare-6104-join        
        Label        -compare-6104-join        
        JumpTrue     -print-boolean-6105-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6105-join  
        Label        -print-boolean-6105-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6105-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6106-arg1        
        PushF        1.600000                  
        PushF        9.300000                  
        FSubtract                              
        Label        -compare-6106-arg2        
        PushF        3.200000                  
        Label        -compare-6106-sub         
        FSubtract                              
        JumpFPos     -compare-6106-false       
        Jump         -compare-6106-true        
        Label        -compare-6106-true        
        PushI        1                         
        Jump         -compare-6106-join        
        Label        -compare-6106-false       
        PushI        0                         
        Jump         -compare-6106-join        
        Label        -compare-6106-join        
        JumpTrue     -print-boolean-6107-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6107-join  
        Label        -print-boolean-6107-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6107-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6108-arg1        
        PushF        6.200000                  
        PushF        6.800000                  
        FSubtract                              
        Label        -compare-6108-arg2        
        PushF        4.100000                  
        Label        -compare-6108-sub         
        FSubtract                              
        JumpFPos     -compare-6108-false       
        Jump         -compare-6108-true        
        Label        -compare-6108-true        
        PushI        1                         
        Jump         -compare-6108-join        
        Label        -compare-6108-false       
        PushI        0                         
        Jump         -compare-6108-join        
        Label        -compare-6108-join        
        JumpTrue     -print-boolean-6109-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6109-join  
        Label        -print-boolean-6109-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6109-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6110-arg1        
        PushF        3.700000                  
        Label        -compare-6110-arg2        
        PushF        6.700000                  
        PushF        7.300000                  
        FSubtract                              
        Label        -compare-6110-sub         
        FSubtract                              
        JumpFPos     -compare-6110-false       
        Jump         -compare-6110-true        
        Label        -compare-6110-true        
        PushI        1                         
        Jump         -compare-6110-join        
        Label        -compare-6110-false       
        PushI        0                         
        Jump         -compare-6110-join        
        Label        -compare-6110-join        
        JumpTrue     -print-boolean-6111-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6111-join  
        Label        -print-boolean-6111-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6111-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6112-arg1        
        PushF        1.500000                  
        Label        -compare-6112-arg2        
        PushF        8.100000                  
        PushF        9.100000                  
        FSubtract                              
        Label        -compare-6112-sub         
        FSubtract                              
        JumpFPos     -compare-6112-false       
        Jump         -compare-6112-true        
        Label        -compare-6112-true        
        PushI        1                         
        Jump         -compare-6112-join        
        Label        -compare-6112-false       
        PushI        0                         
        Jump         -compare-6112-join        
        Label        -compare-6112-join        
        JumpTrue     -print-boolean-6113-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6113-join  
        Label        -print-boolean-6113-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6113-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6114-arg1        
        PushF        2.900000                  
        Label        -compare-6114-arg2        
        PushF        2.600000                  
        PushF        5.100000                  
        FSubtract                              
        Label        -compare-6114-sub         
        FSubtract                              
        JumpFPos     -compare-6114-false       
        Jump         -compare-6114-true        
        Label        -compare-6114-true        
        PushI        1                         
        Jump         -compare-6114-join        
        Label        -compare-6114-false       
        PushI        0                         
        Jump         -compare-6114-join        
        Label        -compare-6114-join        
        JumpTrue     -print-boolean-6115-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6115-join  
        Label        -print-boolean-6115-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6115-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6116-arg1        
        PushF        2.300000                  
        Label        -compare-6116-arg2        
        PushF        6.400000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-6116-sub         
        FSubtract                              
        JumpFPos     -compare-6116-false       
        Jump         -compare-6116-true        
        Label        -compare-6116-true        
        PushI        1                         
        Jump         -compare-6116-join        
        Label        -compare-6116-false       
        PushI        0                         
        Jump         -compare-6116-join        
        Label        -compare-6116-join        
        JumpTrue     -print-boolean-6117-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6117-join  
        Label        -print-boolean-6117-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6117-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6118-arg1        
        PushF        5.800000                  
        Label        -compare-6118-arg2        
        PushF        4.100000                  
        PushF        1.300000                  
        FSubtract                              
        Label        -compare-6118-sub         
        FSubtract                              
        JumpFPos     -compare-6118-false       
        Jump         -compare-6118-true        
        Label        -compare-6118-true        
        PushI        1                         
        Jump         -compare-6118-join        
        Label        -compare-6118-false       
        PushI        0                         
        Jump         -compare-6118-join        
        Label        -compare-6118-join        
        JumpTrue     -print-boolean-6119-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6119-join  
        Label        -print-boolean-6119-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6119-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6120-arg1        
        PushF        9.800000                  
        Label        -compare-6120-arg2        
        PushF        6.400000                  
        PushF        4.700000                  
        FSubtract                              
        Label        -compare-6120-sub         
        FSubtract                              
        JumpFPos     -compare-6120-false       
        Jump         -compare-6120-true        
        Label        -compare-6120-true        
        PushI        1                         
        Jump         -compare-6120-join        
        Label        -compare-6120-false       
        PushI        0                         
        Jump         -compare-6120-join        
        Label        -compare-6120-join        
        JumpTrue     -print-boolean-6121-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6121-join  
        Label        -print-boolean-6121-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6121-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6122-arg1        
        PushF        4.800000                  
        Label        -compare-6122-arg2        
        PushF        3.300000                  
        PushF        6.000000                  
        FSubtract                              
        Label        -compare-6122-sub         
        FSubtract                              
        JumpFPos     -compare-6122-false       
        Jump         -compare-6122-true        
        Label        -compare-6122-true        
        PushI        1                         
        Jump         -compare-6122-join        
        Label        -compare-6122-false       
        PushI        0                         
        Jump         -compare-6122-join        
        Label        -compare-6122-join        
        JumpTrue     -print-boolean-6123-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6123-join  
        Label        -print-boolean-6123-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6123-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6124-arg1        
        PushF        1.200000                  
        Label        -compare-6124-arg2        
        PushF        8.400000                  
        PushF        4.900000                  
        FSubtract                              
        Label        -compare-6124-sub         
        FSubtract                              
        JumpFPos     -compare-6124-false       
        Jump         -compare-6124-true        
        Label        -compare-6124-true        
        PushI        1                         
        Jump         -compare-6124-join        
        Label        -compare-6124-false       
        PushI        0                         
        Jump         -compare-6124-join        
        Label        -compare-6124-join        
        JumpTrue     -print-boolean-6125-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6125-join  
        Label        -print-boolean-6125-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6125-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6126-arg1        
        PushF        8.400000                  
        Label        -compare-6126-arg2        
        PushF        7.700000                  
        PushF        2.300000                  
        FSubtract                              
        Label        -compare-6126-sub         
        FSubtract                              
        JumpFPos     -compare-6126-false       
        Jump         -compare-6126-true        
        Label        -compare-6126-true        
        PushI        1                         
        Jump         -compare-6126-join        
        Label        -compare-6126-false       
        PushI        0                         
        Jump         -compare-6126-join        
        Label        -compare-6126-join        
        JumpTrue     -print-boolean-6127-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6127-join  
        Label        -print-boolean-6127-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6127-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6128-arg1        
        PushF        9.600000                  
        Label        -compare-6128-arg2        
        PushF        2.000000                  
        PushF        6.700000                  
        FSubtract                              
        Label        -compare-6128-sub         
        FSubtract                              
        JumpFPos     -compare-6128-false       
        Jump         -compare-6128-true        
        Label        -compare-6128-true        
        PushI        1                         
        Jump         -compare-6128-join        
        Label        -compare-6128-false       
        PushI        0                         
        Jump         -compare-6128-join        
        Label        -compare-6128-join        
        JumpTrue     -print-boolean-6129-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6129-join  
        Label        -print-boolean-6129-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6129-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6130-arg1        
        PushF        7.300000                  
        Label        -compare-6130-arg2        
        PushF        6.700000                  
        PushF        7.600000                  
        FSubtract                              
        Label        -compare-6130-sub         
        FSubtract                              
        JumpFPos     -compare-6130-false       
        Jump         -compare-6130-true        
        Label        -compare-6130-true        
        PushI        1                         
        Jump         -compare-6130-join        
        Label        -compare-6130-false       
        PushI        0                         
        Jump         -compare-6130-join        
        Label        -compare-6130-join        
        JumpTrue     -print-boolean-6131-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6131-join  
        Label        -print-boolean-6131-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6131-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6132-arg1        
        PushF        7.500000                  
        Label        -compare-6132-arg2        
        PushF        3.100000                  
        PushF        4.400000                  
        FSubtract                              
        Label        -compare-6132-sub         
        FSubtract                              
        JumpFPos     -compare-6132-false       
        Jump         -compare-6132-true        
        Label        -compare-6132-true        
        PushI        1                         
        Jump         -compare-6132-join        
        Label        -compare-6132-false       
        PushI        0                         
        Jump         -compare-6132-join        
        Label        -compare-6132-join        
        JumpTrue     -print-boolean-6133-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6133-join  
        Label        -print-boolean-6133-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6133-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6134-arg1        
        PushF        7.400000                  
        PushF        5.500000                  
        FSubtract                              
        Label        -compare-6134-arg2        
        PushF        4.200000                  
        PushF        1.400000                  
        FSubtract                              
        Label        -compare-6134-sub         
        FSubtract                              
        JumpFPos     -compare-6134-false       
        Jump         -compare-6134-true        
        Label        -compare-6134-true        
        PushI        1                         
        Jump         -compare-6134-join        
        Label        -compare-6134-false       
        PushI        0                         
        Jump         -compare-6134-join        
        Label        -compare-6134-join        
        JumpTrue     -print-boolean-6135-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6135-join  
        Label        -print-boolean-6135-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6135-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6136-arg1        
        PushF        6.800000                  
        PushF        6.800000                  
        FSubtract                              
        Label        -compare-6136-arg2        
        PushF        7.700000                  
        PushF        5.200000                  
        FSubtract                              
        Label        -compare-6136-sub         
        FSubtract                              
        JumpFPos     -compare-6136-false       
        Jump         -compare-6136-true        
        Label        -compare-6136-true        
        PushI        1                         
        Jump         -compare-6136-join        
        Label        -compare-6136-false       
        PushI        0                         
        Jump         -compare-6136-join        
        Label        -compare-6136-join        
        JumpTrue     -print-boolean-6137-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6137-join  
        Label        -print-boolean-6137-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6137-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6138-arg1        
        PushF        1.100000                  
        PushF        1.000000                  
        FSubtract                              
        Label        -compare-6138-arg2        
        PushF        5.600000                  
        PushF        1.600000                  
        FSubtract                              
        Label        -compare-6138-sub         
        FSubtract                              
        JumpFPos     -compare-6138-false       
        Jump         -compare-6138-true        
        Label        -compare-6138-true        
        PushI        1                         
        Jump         -compare-6138-join        
        Label        -compare-6138-false       
        PushI        0                         
        Jump         -compare-6138-join        
        Label        -compare-6138-join        
        JumpTrue     -print-boolean-6139-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6139-join  
        Label        -print-boolean-6139-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6139-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6140-arg1        
        PushF        3.300000                  
        PushF        3.000000                  
        FSubtract                              
        Label        -compare-6140-arg2        
        PushF        8.600000                  
        PushF        9.400000                  
        FSubtract                              
        Label        -compare-6140-sub         
        FSubtract                              
        JumpFPos     -compare-6140-false       
        Jump         -compare-6140-true        
        Label        -compare-6140-true        
        PushI        1                         
        Jump         -compare-6140-join        
        Label        -compare-6140-false       
        PushI        0                         
        Jump         -compare-6140-join        
        Label        -compare-6140-join        
        JumpTrue     -print-boolean-6141-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6141-join  
        Label        -print-boolean-6141-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6141-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6142-arg1        
        PushF        3.200000                  
        PushF        5.200000                  
        FSubtract                              
        Label        -compare-6142-arg2        
        PushF        2.700000                  
        PushF        2.200000                  
        FSubtract                              
        Label        -compare-6142-sub         
        FSubtract                              
        JumpFPos     -compare-6142-false       
        Jump         -compare-6142-true        
        Label        -compare-6142-true        
        PushI        1                         
        Jump         -compare-6142-join        
        Label        -compare-6142-false       
        PushI        0                         
        Jump         -compare-6142-join        
        Label        -compare-6142-join        
        JumpTrue     -print-boolean-6143-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6143-join  
        Label        -print-boolean-6143-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6143-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6144-arg1        
        PushF        5.400000                  
        PushF        8.800000                  
        FSubtract                              
        Label        -compare-6144-arg2        
        PushF        6.400000                  
        PushF        4.100000                  
        FSubtract                              
        Label        -compare-6144-sub         
        FSubtract                              
        JumpFPos     -compare-6144-false       
        Jump         -compare-6144-true        
        Label        -compare-6144-true        
        PushI        1                         
        Jump         -compare-6144-join        
        Label        -compare-6144-false       
        PushI        0                         
        Jump         -compare-6144-join        
        Label        -compare-6144-join        
        JumpTrue     -print-boolean-6145-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6145-join  
        Label        -print-boolean-6145-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6145-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6146-arg1        
        PushF        7.300000                  
        PushF        3.300000                  
        FSubtract                              
        Label        -compare-6146-arg2        
        PushF        2.400000                  
        PushF        8.500000                  
        FSubtract                              
        Label        -compare-6146-sub         
        FSubtract                              
        JumpFPos     -compare-6146-false       
        Jump         -compare-6146-true        
        Label        -compare-6146-true        
        PushI        1                         
        Jump         -compare-6146-join        
        Label        -compare-6146-false       
        PushI        0                         
        Jump         -compare-6146-join        
        Label        -compare-6146-join        
        JumpTrue     -print-boolean-6147-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6147-join  
        Label        -print-boolean-6147-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6147-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6148-arg1        
        PushF        2.200000                  
        PushF        1.700000                  
        FSubtract                              
        Label        -compare-6148-arg2        
        PushF        8.400000                  
        PushF        3.900000                  
        FSubtract                              
        Label        -compare-6148-sub         
        FSubtract                              
        JumpFPos     -compare-6148-false       
        Jump         -compare-6148-true        
        Label        -compare-6148-true        
        PushI        1                         
        Jump         -compare-6148-join        
        Label        -compare-6148-false       
        PushI        0                         
        Jump         -compare-6148-join        
        Label        -compare-6148-join        
        JumpTrue     -print-boolean-6149-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6149-join  
        Label        -print-boolean-6149-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6149-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6150-arg1        
        PushF        2.900000                  
        PushF        5.400000                  
        FSubtract                              
        Label        -compare-6150-arg2        
        PushF        2.400000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-6150-sub         
        FSubtract                              
        JumpFPos     -compare-6150-false       
        Jump         -compare-6150-true        
        Label        -compare-6150-true        
        PushI        1                         
        Jump         -compare-6150-join        
        Label        -compare-6150-false       
        PushI        0                         
        Jump         -compare-6150-join        
        Label        -compare-6150-join        
        JumpTrue     -print-boolean-6151-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6151-join  
        Label        -print-boolean-6151-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6151-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6152-arg1        
        PushF        8.000000                  
        PushF        6.700000                  
        FSubtract                              
        Label        -compare-6152-arg2        
        PushF        9.900000                  
        PushF        6.900000                  
        FSubtract                              
        Label        -compare-6152-sub         
        FSubtract                              
        JumpFPos     -compare-6152-false       
        Jump         -compare-6152-true        
        Label        -compare-6152-true        
        PushI        1                         
        Jump         -compare-6152-join        
        Label        -compare-6152-false       
        PushI        0                         
        Jump         -compare-6152-join        
        Label        -compare-6152-join        
        JumpTrue     -print-boolean-6153-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6153-join  
        Label        -print-boolean-6153-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6153-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6154-arg1        
        PushF        4.000000                  
        PushF        8.400000                  
        FSubtract                              
        Label        -compare-6154-arg2        
        PushF        8.600000                  
        PushF        3.100000                  
        FSubtract                              
        Label        -compare-6154-sub         
        FSubtract                              
        JumpFPos     -compare-6154-false       
        Jump         -compare-6154-true        
        Label        -compare-6154-true        
        PushI        1                         
        Jump         -compare-6154-join        
        Label        -compare-6154-false       
        PushI        0                         
        Jump         -compare-6154-join        
        Label        -compare-6154-join        
        JumpTrue     -print-boolean-6155-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6155-join  
        Label        -print-boolean-6155-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6155-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6156-arg1        
        PushF        6.000000                  
        PushF        3.400000                  
        FSubtract                              
        Label        -compare-6156-arg2        
        PushF        4.500000                  
        PushF        1.700000                  
        FSubtract                              
        Label        -compare-6156-sub         
        FSubtract                              
        JumpFPos     -compare-6156-false       
        Jump         -compare-6156-true        
        Label        -compare-6156-true        
        PushI        1                         
        Jump         -compare-6156-join        
        Label        -compare-6156-false       
        PushI        0                         
        Jump         -compare-6156-join        
        Label        -compare-6156-join        
        JumpTrue     -print-boolean-6157-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6157-join  
        Label        -print-boolean-6157-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6157-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
