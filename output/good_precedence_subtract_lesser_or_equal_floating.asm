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
        Label        -compare-6073-arg1        
        PushF        3.700000                  
        PushF        5.200000                  
        FSubtract                              
        Label        -compare-6073-arg2        
        PushF        7.400000                  
        Label        -compare-6073-sub         
        FSubtract                              
        JumpFPos     -compare-6073-false       
        Jump         -compare-6073-true        
        Label        -compare-6073-true        
        PushI        1                         
        Jump         -compare-6073-join        
        Label        -compare-6073-false       
        PushI        0                         
        Jump         -compare-6073-join        
        Label        -compare-6073-join        
        JumpTrue     -print-boolean-6074-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6074-join  
        Label        -print-boolean-6074-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6074-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6075-arg1        
        PushF        5.800000                  
        PushF        7.400000                  
        FSubtract                              
        Label        -compare-6075-arg2        
        PushF        9.200000                  
        Label        -compare-6075-sub         
        FSubtract                              
        JumpFPos     -compare-6075-false       
        Jump         -compare-6075-true        
        Label        -compare-6075-true        
        PushI        1                         
        Jump         -compare-6075-join        
        Label        -compare-6075-false       
        PushI        0                         
        Jump         -compare-6075-join        
        Label        -compare-6075-join        
        JumpTrue     -print-boolean-6076-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6076-join  
        Label        -print-boolean-6076-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6076-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6077-arg1        
        PushF        5.200000                  
        PushF        5.400000                  
        FSubtract                              
        Label        -compare-6077-arg2        
        PushF        9.800000                  
        Label        -compare-6077-sub         
        FSubtract                              
        JumpFPos     -compare-6077-false       
        Jump         -compare-6077-true        
        Label        -compare-6077-true        
        PushI        1                         
        Jump         -compare-6077-join        
        Label        -compare-6077-false       
        PushI        0                         
        Jump         -compare-6077-join        
        Label        -compare-6077-join        
        JumpTrue     -print-boolean-6078-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6078-join  
        Label        -print-boolean-6078-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6078-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6079-arg1        
        PushF        4.000000                  
        PushF        1.900000                  
        FSubtract                              
        Label        -compare-6079-arg2        
        PushF        6.300000                  
        Label        -compare-6079-sub         
        FSubtract                              
        JumpFPos     -compare-6079-false       
        Jump         -compare-6079-true        
        Label        -compare-6079-true        
        PushI        1                         
        Jump         -compare-6079-join        
        Label        -compare-6079-false       
        PushI        0                         
        Jump         -compare-6079-join        
        Label        -compare-6079-join        
        JumpTrue     -print-boolean-6080-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6080-join  
        Label        -print-boolean-6080-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6080-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6081-arg1        
        PushF        3.000000                  
        PushF        2.400000                  
        FSubtract                              
        Label        -compare-6081-arg2        
        PushF        9.600000                  
        Label        -compare-6081-sub         
        FSubtract                              
        JumpFPos     -compare-6081-false       
        Jump         -compare-6081-true        
        Label        -compare-6081-true        
        PushI        1                         
        Jump         -compare-6081-join        
        Label        -compare-6081-false       
        PushI        0                         
        Jump         -compare-6081-join        
        Label        -compare-6081-join        
        JumpTrue     -print-boolean-6082-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6082-join  
        Label        -print-boolean-6082-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6082-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6083-arg1        
        PushF        8.600000                  
        PushF        3.600000                  
        FSubtract                              
        Label        -compare-6083-arg2        
        PushF        5.700000                  
        Label        -compare-6083-sub         
        FSubtract                              
        JumpFPos     -compare-6083-false       
        Jump         -compare-6083-true        
        Label        -compare-6083-true        
        PushI        1                         
        Jump         -compare-6083-join        
        Label        -compare-6083-false       
        PushI        0                         
        Jump         -compare-6083-join        
        Label        -compare-6083-join        
        JumpTrue     -print-boolean-6084-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6084-join  
        Label        -print-boolean-6084-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6084-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6085-arg1        
        PushF        7.000000                  
        PushF        4.400000                  
        FSubtract                              
        Label        -compare-6085-arg2        
        PushF        3.600000                  
        Label        -compare-6085-sub         
        FSubtract                              
        JumpFPos     -compare-6085-false       
        Jump         -compare-6085-true        
        Label        -compare-6085-true        
        PushI        1                         
        Jump         -compare-6085-join        
        Label        -compare-6085-false       
        PushI        0                         
        Jump         -compare-6085-join        
        Label        -compare-6085-join        
        JumpTrue     -print-boolean-6086-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6086-join  
        Label        -print-boolean-6086-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6086-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6087-arg1        
        PushF        5.000000                  
        PushF        6.400000                  
        FSubtract                              
        Label        -compare-6087-arg2        
        PushF        9.200000                  
        Label        -compare-6087-sub         
        FSubtract                              
        JumpFPos     -compare-6087-false       
        Jump         -compare-6087-true        
        Label        -compare-6087-true        
        PushI        1                         
        Jump         -compare-6087-join        
        Label        -compare-6087-false       
        PushI        0                         
        Jump         -compare-6087-join        
        Label        -compare-6087-join        
        JumpTrue     -print-boolean-6088-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6088-join  
        Label        -print-boolean-6088-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6088-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6089-arg1        
        PushF        9.500000                  
        PushF        9.000000                  
        FSubtract                              
        Label        -compare-6089-arg2        
        PushF        3.100000                  
        Label        -compare-6089-sub         
        FSubtract                              
        JumpFPos     -compare-6089-false       
        Jump         -compare-6089-true        
        Label        -compare-6089-true        
        PushI        1                         
        Jump         -compare-6089-join        
        Label        -compare-6089-false       
        PushI        0                         
        Jump         -compare-6089-join        
        Label        -compare-6089-join        
        JumpTrue     -print-boolean-6090-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6090-join  
        Label        -print-boolean-6090-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6090-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6091-arg1        
        PushF        8.600000                  
        PushF        6.400000                  
        FSubtract                              
        Label        -compare-6091-arg2        
        PushF        6.900000                  
        Label        -compare-6091-sub         
        FSubtract                              
        JumpFPos     -compare-6091-false       
        Jump         -compare-6091-true        
        Label        -compare-6091-true        
        PushI        1                         
        Jump         -compare-6091-join        
        Label        -compare-6091-false       
        PushI        0                         
        Jump         -compare-6091-join        
        Label        -compare-6091-join        
        JumpTrue     -print-boolean-6092-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6092-join  
        Label        -print-boolean-6092-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6092-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6093-arg1        
        PushF        1.600000                  
        PushF        9.300000                  
        FSubtract                              
        Label        -compare-6093-arg2        
        PushF        3.200000                  
        Label        -compare-6093-sub         
        FSubtract                              
        JumpFPos     -compare-6093-false       
        Jump         -compare-6093-true        
        Label        -compare-6093-true        
        PushI        1                         
        Jump         -compare-6093-join        
        Label        -compare-6093-false       
        PushI        0                         
        Jump         -compare-6093-join        
        Label        -compare-6093-join        
        JumpTrue     -print-boolean-6094-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6094-join  
        Label        -print-boolean-6094-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6094-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6095-arg1        
        PushF        6.200000                  
        PushF        6.800000                  
        FSubtract                              
        Label        -compare-6095-arg2        
        PushF        4.100000                  
        Label        -compare-6095-sub         
        FSubtract                              
        JumpFPos     -compare-6095-false       
        Jump         -compare-6095-true        
        Label        -compare-6095-true        
        PushI        1                         
        Jump         -compare-6095-join        
        Label        -compare-6095-false       
        PushI        0                         
        Jump         -compare-6095-join        
        Label        -compare-6095-join        
        JumpTrue     -print-boolean-6096-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6096-join  
        Label        -print-boolean-6096-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6096-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6097-arg1        
        PushF        3.700000                  
        Label        -compare-6097-arg2        
        PushF        6.700000                  
        PushF        7.300000                  
        FSubtract                              
        Label        -compare-6097-sub         
        FSubtract                              
        JumpFPos     -compare-6097-false       
        Jump         -compare-6097-true        
        Label        -compare-6097-true        
        PushI        1                         
        Jump         -compare-6097-join        
        Label        -compare-6097-false       
        PushI        0                         
        Jump         -compare-6097-join        
        Label        -compare-6097-join        
        JumpTrue     -print-boolean-6098-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6098-join  
        Label        -print-boolean-6098-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6098-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6099-arg1        
        PushF        1.500000                  
        Label        -compare-6099-arg2        
        PushF        8.100000                  
        PushF        9.100000                  
        FSubtract                              
        Label        -compare-6099-sub         
        FSubtract                              
        JumpFPos     -compare-6099-false       
        Jump         -compare-6099-true        
        Label        -compare-6099-true        
        PushI        1                         
        Jump         -compare-6099-join        
        Label        -compare-6099-false       
        PushI        0                         
        Jump         -compare-6099-join        
        Label        -compare-6099-join        
        JumpTrue     -print-boolean-6100-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6100-join  
        Label        -print-boolean-6100-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6100-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6101-arg1        
        PushF        2.900000                  
        Label        -compare-6101-arg2        
        PushF        2.600000                  
        PushF        5.100000                  
        FSubtract                              
        Label        -compare-6101-sub         
        FSubtract                              
        JumpFPos     -compare-6101-false       
        Jump         -compare-6101-true        
        Label        -compare-6101-true        
        PushI        1                         
        Jump         -compare-6101-join        
        Label        -compare-6101-false       
        PushI        0                         
        Jump         -compare-6101-join        
        Label        -compare-6101-join        
        JumpTrue     -print-boolean-6102-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6102-join  
        Label        -print-boolean-6102-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6102-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6103-arg1        
        PushF        2.300000                  
        Label        -compare-6103-arg2        
        PushF        6.400000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-6103-sub         
        FSubtract                              
        JumpFPos     -compare-6103-false       
        Jump         -compare-6103-true        
        Label        -compare-6103-true        
        PushI        1                         
        Jump         -compare-6103-join        
        Label        -compare-6103-false       
        PushI        0                         
        Jump         -compare-6103-join        
        Label        -compare-6103-join        
        JumpTrue     -print-boolean-6104-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6104-join  
        Label        -print-boolean-6104-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6104-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6105-arg1        
        PushF        5.800000                  
        Label        -compare-6105-arg2        
        PushF        4.100000                  
        PushF        1.300000                  
        FSubtract                              
        Label        -compare-6105-sub         
        FSubtract                              
        JumpFPos     -compare-6105-false       
        Jump         -compare-6105-true        
        Label        -compare-6105-true        
        PushI        1                         
        Jump         -compare-6105-join        
        Label        -compare-6105-false       
        PushI        0                         
        Jump         -compare-6105-join        
        Label        -compare-6105-join        
        JumpTrue     -print-boolean-6106-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6106-join  
        Label        -print-boolean-6106-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6106-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6107-arg1        
        PushF        9.800000                  
        Label        -compare-6107-arg2        
        PushF        6.400000                  
        PushF        4.700000                  
        FSubtract                              
        Label        -compare-6107-sub         
        FSubtract                              
        JumpFPos     -compare-6107-false       
        Jump         -compare-6107-true        
        Label        -compare-6107-true        
        PushI        1                         
        Jump         -compare-6107-join        
        Label        -compare-6107-false       
        PushI        0                         
        Jump         -compare-6107-join        
        Label        -compare-6107-join        
        JumpTrue     -print-boolean-6108-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6108-join  
        Label        -print-boolean-6108-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6108-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6109-arg1        
        PushF        4.800000                  
        Label        -compare-6109-arg2        
        PushF        3.300000                  
        PushF        6.000000                  
        FSubtract                              
        Label        -compare-6109-sub         
        FSubtract                              
        JumpFPos     -compare-6109-false       
        Jump         -compare-6109-true        
        Label        -compare-6109-true        
        PushI        1                         
        Jump         -compare-6109-join        
        Label        -compare-6109-false       
        PushI        0                         
        Jump         -compare-6109-join        
        Label        -compare-6109-join        
        JumpTrue     -print-boolean-6110-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6110-join  
        Label        -print-boolean-6110-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6110-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6111-arg1        
        PushF        1.200000                  
        Label        -compare-6111-arg2        
        PushF        8.400000                  
        PushF        4.900000                  
        FSubtract                              
        Label        -compare-6111-sub         
        FSubtract                              
        JumpFPos     -compare-6111-false       
        Jump         -compare-6111-true        
        Label        -compare-6111-true        
        PushI        1                         
        Jump         -compare-6111-join        
        Label        -compare-6111-false       
        PushI        0                         
        Jump         -compare-6111-join        
        Label        -compare-6111-join        
        JumpTrue     -print-boolean-6112-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6112-join  
        Label        -print-boolean-6112-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6112-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6113-arg1        
        PushF        8.400000                  
        Label        -compare-6113-arg2        
        PushF        7.700000                  
        PushF        2.300000                  
        FSubtract                              
        Label        -compare-6113-sub         
        FSubtract                              
        JumpFPos     -compare-6113-false       
        Jump         -compare-6113-true        
        Label        -compare-6113-true        
        PushI        1                         
        Jump         -compare-6113-join        
        Label        -compare-6113-false       
        PushI        0                         
        Jump         -compare-6113-join        
        Label        -compare-6113-join        
        JumpTrue     -print-boolean-6114-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6114-join  
        Label        -print-boolean-6114-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6114-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6115-arg1        
        PushF        9.600000                  
        Label        -compare-6115-arg2        
        PushF        2.000000                  
        PushF        6.700000                  
        FSubtract                              
        Label        -compare-6115-sub         
        FSubtract                              
        JumpFPos     -compare-6115-false       
        Jump         -compare-6115-true        
        Label        -compare-6115-true        
        PushI        1                         
        Jump         -compare-6115-join        
        Label        -compare-6115-false       
        PushI        0                         
        Jump         -compare-6115-join        
        Label        -compare-6115-join        
        JumpTrue     -print-boolean-6116-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6116-join  
        Label        -print-boolean-6116-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6116-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6117-arg1        
        PushF        7.300000                  
        Label        -compare-6117-arg2        
        PushF        6.700000                  
        PushF        7.600000                  
        FSubtract                              
        Label        -compare-6117-sub         
        FSubtract                              
        JumpFPos     -compare-6117-false       
        Jump         -compare-6117-true        
        Label        -compare-6117-true        
        PushI        1                         
        Jump         -compare-6117-join        
        Label        -compare-6117-false       
        PushI        0                         
        Jump         -compare-6117-join        
        Label        -compare-6117-join        
        JumpTrue     -print-boolean-6118-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6118-join  
        Label        -print-boolean-6118-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6118-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6119-arg1        
        PushF        7.500000                  
        Label        -compare-6119-arg2        
        PushF        3.100000                  
        PushF        4.400000                  
        FSubtract                              
        Label        -compare-6119-sub         
        FSubtract                              
        JumpFPos     -compare-6119-false       
        Jump         -compare-6119-true        
        Label        -compare-6119-true        
        PushI        1                         
        Jump         -compare-6119-join        
        Label        -compare-6119-false       
        PushI        0                         
        Jump         -compare-6119-join        
        Label        -compare-6119-join        
        JumpTrue     -print-boolean-6120-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6120-join  
        Label        -print-boolean-6120-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6120-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6121-arg1        
        PushF        7.400000                  
        PushF        5.500000                  
        FSubtract                              
        Label        -compare-6121-arg2        
        PushF        4.200000                  
        PushF        1.400000                  
        FSubtract                              
        Label        -compare-6121-sub         
        FSubtract                              
        JumpFPos     -compare-6121-false       
        Jump         -compare-6121-true        
        Label        -compare-6121-true        
        PushI        1                         
        Jump         -compare-6121-join        
        Label        -compare-6121-false       
        PushI        0                         
        Jump         -compare-6121-join        
        Label        -compare-6121-join        
        JumpTrue     -print-boolean-6122-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6122-join  
        Label        -print-boolean-6122-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6122-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6123-arg1        
        PushF        6.800000                  
        PushF        6.800000                  
        FSubtract                              
        Label        -compare-6123-arg2        
        PushF        7.700000                  
        PushF        5.200000                  
        FSubtract                              
        Label        -compare-6123-sub         
        FSubtract                              
        JumpFPos     -compare-6123-false       
        Jump         -compare-6123-true        
        Label        -compare-6123-true        
        PushI        1                         
        Jump         -compare-6123-join        
        Label        -compare-6123-false       
        PushI        0                         
        Jump         -compare-6123-join        
        Label        -compare-6123-join        
        JumpTrue     -print-boolean-6124-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6124-join  
        Label        -print-boolean-6124-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6124-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6125-arg1        
        PushF        1.100000                  
        PushF        1.000000                  
        FSubtract                              
        Label        -compare-6125-arg2        
        PushF        5.600000                  
        PushF        1.600000                  
        FSubtract                              
        Label        -compare-6125-sub         
        FSubtract                              
        JumpFPos     -compare-6125-false       
        Jump         -compare-6125-true        
        Label        -compare-6125-true        
        PushI        1                         
        Jump         -compare-6125-join        
        Label        -compare-6125-false       
        PushI        0                         
        Jump         -compare-6125-join        
        Label        -compare-6125-join        
        JumpTrue     -print-boolean-6126-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6126-join  
        Label        -print-boolean-6126-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6126-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6127-arg1        
        PushF        3.300000                  
        PushF        3.000000                  
        FSubtract                              
        Label        -compare-6127-arg2        
        PushF        8.600000                  
        PushF        9.400000                  
        FSubtract                              
        Label        -compare-6127-sub         
        FSubtract                              
        JumpFPos     -compare-6127-false       
        Jump         -compare-6127-true        
        Label        -compare-6127-true        
        PushI        1                         
        Jump         -compare-6127-join        
        Label        -compare-6127-false       
        PushI        0                         
        Jump         -compare-6127-join        
        Label        -compare-6127-join        
        JumpTrue     -print-boolean-6128-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6128-join  
        Label        -print-boolean-6128-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6128-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6129-arg1        
        PushF        3.200000                  
        PushF        5.200000                  
        FSubtract                              
        Label        -compare-6129-arg2        
        PushF        2.700000                  
        PushF        2.200000                  
        FSubtract                              
        Label        -compare-6129-sub         
        FSubtract                              
        JumpFPos     -compare-6129-false       
        Jump         -compare-6129-true        
        Label        -compare-6129-true        
        PushI        1                         
        Jump         -compare-6129-join        
        Label        -compare-6129-false       
        PushI        0                         
        Jump         -compare-6129-join        
        Label        -compare-6129-join        
        JumpTrue     -print-boolean-6130-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6130-join  
        Label        -print-boolean-6130-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6130-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6131-arg1        
        PushF        5.400000                  
        PushF        8.800000                  
        FSubtract                              
        Label        -compare-6131-arg2        
        PushF        6.400000                  
        PushF        4.100000                  
        FSubtract                              
        Label        -compare-6131-sub         
        FSubtract                              
        JumpFPos     -compare-6131-false       
        Jump         -compare-6131-true        
        Label        -compare-6131-true        
        PushI        1                         
        Jump         -compare-6131-join        
        Label        -compare-6131-false       
        PushI        0                         
        Jump         -compare-6131-join        
        Label        -compare-6131-join        
        JumpTrue     -print-boolean-6132-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6132-join  
        Label        -print-boolean-6132-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6132-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6133-arg1        
        PushF        7.300000                  
        PushF        3.300000                  
        FSubtract                              
        Label        -compare-6133-arg2        
        PushF        2.400000                  
        PushF        8.500000                  
        FSubtract                              
        Label        -compare-6133-sub         
        FSubtract                              
        JumpFPos     -compare-6133-false       
        Jump         -compare-6133-true        
        Label        -compare-6133-true        
        PushI        1                         
        Jump         -compare-6133-join        
        Label        -compare-6133-false       
        PushI        0                         
        Jump         -compare-6133-join        
        Label        -compare-6133-join        
        JumpTrue     -print-boolean-6134-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6134-join  
        Label        -print-boolean-6134-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6134-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6135-arg1        
        PushF        2.200000                  
        PushF        1.700000                  
        FSubtract                              
        Label        -compare-6135-arg2        
        PushF        8.400000                  
        PushF        3.900000                  
        FSubtract                              
        Label        -compare-6135-sub         
        FSubtract                              
        JumpFPos     -compare-6135-false       
        Jump         -compare-6135-true        
        Label        -compare-6135-true        
        PushI        1                         
        Jump         -compare-6135-join        
        Label        -compare-6135-false       
        PushI        0                         
        Jump         -compare-6135-join        
        Label        -compare-6135-join        
        JumpTrue     -print-boolean-6136-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6136-join  
        Label        -print-boolean-6136-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6136-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6137-arg1        
        PushF        2.900000                  
        PushF        5.400000                  
        FSubtract                              
        Label        -compare-6137-arg2        
        PushF        2.400000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-6137-sub         
        FSubtract                              
        JumpFPos     -compare-6137-false       
        Jump         -compare-6137-true        
        Label        -compare-6137-true        
        PushI        1                         
        Jump         -compare-6137-join        
        Label        -compare-6137-false       
        PushI        0                         
        Jump         -compare-6137-join        
        Label        -compare-6137-join        
        JumpTrue     -print-boolean-6138-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6138-join  
        Label        -print-boolean-6138-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6138-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6139-arg1        
        PushF        8.000000                  
        PushF        6.700000                  
        FSubtract                              
        Label        -compare-6139-arg2        
        PushF        9.900000                  
        PushF        6.900000                  
        FSubtract                              
        Label        -compare-6139-sub         
        FSubtract                              
        JumpFPos     -compare-6139-false       
        Jump         -compare-6139-true        
        Label        -compare-6139-true        
        PushI        1                         
        Jump         -compare-6139-join        
        Label        -compare-6139-false       
        PushI        0                         
        Jump         -compare-6139-join        
        Label        -compare-6139-join        
        JumpTrue     -print-boolean-6140-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6140-join  
        Label        -print-boolean-6140-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6140-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6141-arg1        
        PushF        4.000000                  
        PushF        8.400000                  
        FSubtract                              
        Label        -compare-6141-arg2        
        PushF        8.600000                  
        PushF        3.100000                  
        FSubtract                              
        Label        -compare-6141-sub         
        FSubtract                              
        JumpFPos     -compare-6141-false       
        Jump         -compare-6141-true        
        Label        -compare-6141-true        
        PushI        1                         
        Jump         -compare-6141-join        
        Label        -compare-6141-false       
        PushI        0                         
        Jump         -compare-6141-join        
        Label        -compare-6141-join        
        JumpTrue     -print-boolean-6142-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6142-join  
        Label        -print-boolean-6142-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6142-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6143-arg1        
        PushF        6.000000                  
        PushF        3.400000                  
        FSubtract                              
        Label        -compare-6143-arg2        
        PushF        4.500000                  
        PushF        1.700000                  
        FSubtract                              
        Label        -compare-6143-sub         
        FSubtract                              
        JumpFPos     -compare-6143-false       
        Jump         -compare-6143-true        
        Label        -compare-6143-true        
        PushI        1                         
        Jump         -compare-6143-join        
        Label        -compare-6143-false       
        PushI        0                         
        Jump         -compare-6143-join        
        Label        -compare-6143-join        
        JumpTrue     -print-boolean-6144-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6144-join  
        Label        -print-boolean-6144-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6144-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
