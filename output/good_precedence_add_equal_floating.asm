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
        Label        -compare-222-arg1         
        PushF        9.600000                  
        PushF        2.100000                  
        FAdd                                   
        Label        -compare-222-arg2         
        PushF        5.000000                  
        Label        -compare-222-sub          
        FSubtract                              
        JumpFZero    -compare-222-true         
        Jump         -compare-222-false        
        Label        -compare-222-true         
        PushI        1                         
        Jump         -compare-222-join         
        Label        -compare-222-false        
        PushI        0                         
        Jump         -compare-222-join         
        Label        -compare-222-join         
        JumpTrue     -print-boolean-223-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-223-join   
        Label        -print-boolean-223-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-223-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-224-arg1         
        PushF        5.600000                  
        PushF        2.000000                  
        FAdd                                   
        Label        -compare-224-arg2         
        PushF        6.700000                  
        Label        -compare-224-sub          
        FSubtract                              
        JumpFZero    -compare-224-true         
        Jump         -compare-224-false        
        Label        -compare-224-true         
        PushI        1                         
        Jump         -compare-224-join         
        Label        -compare-224-false        
        PushI        0                         
        Jump         -compare-224-join         
        Label        -compare-224-join         
        JumpTrue     -print-boolean-225-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-225-join   
        Label        -print-boolean-225-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-225-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-226-arg1         
        PushF        4.000000                  
        PushF        2.100000                  
        FAdd                                   
        Label        -compare-226-arg2         
        PushF        1.800000                  
        Label        -compare-226-sub          
        FSubtract                              
        JumpFZero    -compare-226-true         
        Jump         -compare-226-false        
        Label        -compare-226-true         
        PushI        1                         
        Jump         -compare-226-join         
        Label        -compare-226-false        
        PushI        0                         
        Jump         -compare-226-join         
        Label        -compare-226-join         
        JumpTrue     -print-boolean-227-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-227-join   
        Label        -print-boolean-227-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-227-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-228-arg1         
        PushF        8.100000                  
        PushF        2.400000                  
        FAdd                                   
        Label        -compare-228-arg2         
        PushF        6.200000                  
        Label        -compare-228-sub          
        FSubtract                              
        JumpFZero    -compare-228-true         
        Jump         -compare-228-false        
        Label        -compare-228-true         
        PushI        1                         
        Jump         -compare-228-join         
        Label        -compare-228-false        
        PushI        0                         
        Jump         -compare-228-join         
        Label        -compare-228-join         
        JumpTrue     -print-boolean-229-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-229-join   
        Label        -print-boolean-229-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-229-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-230-arg1         
        PushF        9.300000                  
        PushF        7.000000                  
        FAdd                                   
        Label        -compare-230-arg2         
        PushF        2.000000                  
        Label        -compare-230-sub          
        FSubtract                              
        JumpFZero    -compare-230-true         
        Jump         -compare-230-false        
        Label        -compare-230-true         
        PushI        1                         
        Jump         -compare-230-join         
        Label        -compare-230-false        
        PushI        0                         
        Jump         -compare-230-join         
        Label        -compare-230-join         
        JumpTrue     -print-boolean-231-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-231-join   
        Label        -print-boolean-231-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-231-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-232-arg1         
        PushF        1.600000                  
        PushF        2.800000                  
        FAdd                                   
        Label        -compare-232-arg2         
        PushF        1.000000                  
        Label        -compare-232-sub          
        FSubtract                              
        JumpFZero    -compare-232-true         
        Jump         -compare-232-false        
        Label        -compare-232-true         
        PushI        1                         
        Jump         -compare-232-join         
        Label        -compare-232-false        
        PushI        0                         
        Jump         -compare-232-join         
        Label        -compare-232-join         
        JumpTrue     -print-boolean-233-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-233-join   
        Label        -print-boolean-233-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-233-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-234-arg1         
        PushF        5.700000                  
        PushF        7.400000                  
        FAdd                                   
        Label        -compare-234-arg2         
        PushF        5.300000                  
        Label        -compare-234-sub          
        FSubtract                              
        JumpFZero    -compare-234-true         
        Jump         -compare-234-false        
        Label        -compare-234-true         
        PushI        1                         
        Jump         -compare-234-join         
        Label        -compare-234-false        
        PushI        0                         
        Jump         -compare-234-join         
        Label        -compare-234-join         
        JumpTrue     -print-boolean-235-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-235-join   
        Label        -print-boolean-235-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-235-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-236-arg1         
        PushF        1.100000                  
        PushF        6.600000                  
        FAdd                                   
        Label        -compare-236-arg2         
        PushF        4.600000                  
        Label        -compare-236-sub          
        FSubtract                              
        JumpFZero    -compare-236-true         
        Jump         -compare-236-false        
        Label        -compare-236-true         
        PushI        1                         
        Jump         -compare-236-join         
        Label        -compare-236-false        
        PushI        0                         
        Jump         -compare-236-join         
        Label        -compare-236-join         
        JumpTrue     -print-boolean-237-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-237-join   
        Label        -print-boolean-237-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-237-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-238-arg1         
        PushF        7.000000                  
        PushF        8.700000                  
        FAdd                                   
        Label        -compare-238-arg2         
        PushF        3.600000                  
        Label        -compare-238-sub          
        FSubtract                              
        JumpFZero    -compare-238-true         
        Jump         -compare-238-false        
        Label        -compare-238-true         
        PushI        1                         
        Jump         -compare-238-join         
        Label        -compare-238-false        
        PushI        0                         
        Jump         -compare-238-join         
        Label        -compare-238-join         
        JumpTrue     -print-boolean-239-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-239-join   
        Label        -print-boolean-239-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-239-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-240-arg1         
        PushF        4.700000                  
        PushF        8.600000                  
        FAdd                                   
        Label        -compare-240-arg2         
        PushF        5.100000                  
        Label        -compare-240-sub          
        FSubtract                              
        JumpFZero    -compare-240-true         
        Jump         -compare-240-false        
        Label        -compare-240-true         
        PushI        1                         
        Jump         -compare-240-join         
        Label        -compare-240-false        
        PushI        0                         
        Jump         -compare-240-join         
        Label        -compare-240-join         
        JumpTrue     -print-boolean-241-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-241-join   
        Label        -print-boolean-241-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-241-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-242-arg1         
        PushF        7.800000                  
        PushF        3.000000                  
        FAdd                                   
        Label        -compare-242-arg2         
        PushF        7.300000                  
        Label        -compare-242-sub          
        FSubtract                              
        JumpFZero    -compare-242-true         
        Jump         -compare-242-false        
        Label        -compare-242-true         
        PushI        1                         
        Jump         -compare-242-join         
        Label        -compare-242-false        
        PushI        0                         
        Jump         -compare-242-join         
        Label        -compare-242-join         
        JumpTrue     -print-boolean-243-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-243-join   
        Label        -print-boolean-243-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-243-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-244-arg1         
        PushF        3.400000                  
        PushF        5.100000                  
        FAdd                                   
        Label        -compare-244-arg2         
        PushF        6.500000                  
        Label        -compare-244-sub          
        FSubtract                              
        JumpFZero    -compare-244-true         
        Jump         -compare-244-false        
        Label        -compare-244-true         
        PushI        1                         
        Jump         -compare-244-join         
        Label        -compare-244-false        
        PushI        0                         
        Jump         -compare-244-join         
        Label        -compare-244-join         
        JumpTrue     -print-boolean-245-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-245-join   
        Label        -print-boolean-245-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-245-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-246-arg1         
        PushF        7.200000                  
        Label        -compare-246-arg2         
        PushF        7.600000                  
        PushF        2.700000                  
        FAdd                                   
        Label        -compare-246-sub          
        FSubtract                              
        JumpFZero    -compare-246-true         
        Jump         -compare-246-false        
        Label        -compare-246-true         
        PushI        1                         
        Jump         -compare-246-join         
        Label        -compare-246-false        
        PushI        0                         
        Jump         -compare-246-join         
        Label        -compare-246-join         
        JumpTrue     -print-boolean-247-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-247-join   
        Label        -print-boolean-247-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-247-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-248-arg1         
        PushF        3.900000                  
        Label        -compare-248-arg2         
        PushF        5.000000                  
        PushF        4.200000                  
        FAdd                                   
        Label        -compare-248-sub          
        FSubtract                              
        JumpFZero    -compare-248-true         
        Jump         -compare-248-false        
        Label        -compare-248-true         
        PushI        1                         
        Jump         -compare-248-join         
        Label        -compare-248-false        
        PushI        0                         
        Jump         -compare-248-join         
        Label        -compare-248-join         
        JumpTrue     -print-boolean-249-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-249-join   
        Label        -print-boolean-249-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-249-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-250-arg1         
        PushF        7.500000                  
        Label        -compare-250-arg2         
        PushF        7.900000                  
        PushF        3.600000                  
        FAdd                                   
        Label        -compare-250-sub          
        FSubtract                              
        JumpFZero    -compare-250-true         
        Jump         -compare-250-false        
        Label        -compare-250-true         
        PushI        1                         
        Jump         -compare-250-join         
        Label        -compare-250-false        
        PushI        0                         
        Jump         -compare-250-join         
        Label        -compare-250-join         
        JumpTrue     -print-boolean-251-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-251-join   
        Label        -print-boolean-251-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-251-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-252-arg1         
        PushF        7.700000                  
        Label        -compare-252-arg2         
        PushF        6.800000                  
        PushF        7.100000                  
        FAdd                                   
        Label        -compare-252-sub          
        FSubtract                              
        JumpFZero    -compare-252-true         
        Jump         -compare-252-false        
        Label        -compare-252-true         
        PushI        1                         
        Jump         -compare-252-join         
        Label        -compare-252-false        
        PushI        0                         
        Jump         -compare-252-join         
        Label        -compare-252-join         
        JumpTrue     -print-boolean-253-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-253-join   
        Label        -print-boolean-253-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-253-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-254-arg1         
        PushF        9.300000                  
        Label        -compare-254-arg2         
        PushF        3.800000                  
        PushF        1.400000                  
        FAdd                                   
        Label        -compare-254-sub          
        FSubtract                              
        JumpFZero    -compare-254-true         
        Jump         -compare-254-false        
        Label        -compare-254-true         
        PushI        1                         
        Jump         -compare-254-join         
        Label        -compare-254-false        
        PushI        0                         
        Jump         -compare-254-join         
        Label        -compare-254-join         
        JumpTrue     -print-boolean-255-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-255-join   
        Label        -print-boolean-255-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-255-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-256-arg1         
        PushF        2.100000                  
        Label        -compare-256-arg2         
        PushF        6.800000                  
        PushF        9.700000                  
        FAdd                                   
        Label        -compare-256-sub          
        FSubtract                              
        JumpFZero    -compare-256-true         
        Jump         -compare-256-false        
        Label        -compare-256-true         
        PushI        1                         
        Jump         -compare-256-join         
        Label        -compare-256-false        
        PushI        0                         
        Jump         -compare-256-join         
        Label        -compare-256-join         
        JumpTrue     -print-boolean-257-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-257-join   
        Label        -print-boolean-257-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-257-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-258-arg1         
        PushF        2.700000                  
        Label        -compare-258-arg2         
        PushF        9.300000                  
        PushF        4.800000                  
        FAdd                                   
        Label        -compare-258-sub          
        FSubtract                              
        JumpFZero    -compare-258-true         
        Jump         -compare-258-false        
        Label        -compare-258-true         
        PushI        1                         
        Jump         -compare-258-join         
        Label        -compare-258-false        
        PushI        0                         
        Jump         -compare-258-join         
        Label        -compare-258-join         
        JumpTrue     -print-boolean-259-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-259-join   
        Label        -print-boolean-259-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-259-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-260-arg1         
        PushF        7.700000                  
        Label        -compare-260-arg2         
        PushF        5.100000                  
        PushF        3.600000                  
        FAdd                                   
        Label        -compare-260-sub          
        FSubtract                              
        JumpFZero    -compare-260-true         
        Jump         -compare-260-false        
        Label        -compare-260-true         
        PushI        1                         
        Jump         -compare-260-join         
        Label        -compare-260-false        
        PushI        0                         
        Jump         -compare-260-join         
        Label        -compare-260-join         
        JumpTrue     -print-boolean-261-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-261-join   
        Label        -print-boolean-261-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-261-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-262-arg1         
        PushF        5.500000                  
        Label        -compare-262-arg2         
        PushF        2.300000                  
        PushF        5.200000                  
        FAdd                                   
        Label        -compare-262-sub          
        FSubtract                              
        JumpFZero    -compare-262-true         
        Jump         -compare-262-false        
        Label        -compare-262-true         
        PushI        1                         
        Jump         -compare-262-join         
        Label        -compare-262-false        
        PushI        0                         
        Jump         -compare-262-join         
        Label        -compare-262-join         
        JumpTrue     -print-boolean-263-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-263-join   
        Label        -print-boolean-263-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-263-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-264-arg1         
        PushF        6.200000                  
        Label        -compare-264-arg2         
        PushF        3.300000                  
        PushF        4.500000                  
        FAdd                                   
        Label        -compare-264-sub          
        FSubtract                              
        JumpFZero    -compare-264-true         
        Jump         -compare-264-false        
        Label        -compare-264-true         
        PushI        1                         
        Jump         -compare-264-join         
        Label        -compare-264-false        
        PushI        0                         
        Jump         -compare-264-join         
        Label        -compare-264-join         
        JumpTrue     -print-boolean-265-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-265-join   
        Label        -print-boolean-265-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-265-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-266-arg1         
        PushF        2.800000                  
        Label        -compare-266-arg2         
        PushF        5.300000                  
        PushF        9.700000                  
        FAdd                                   
        Label        -compare-266-sub          
        FSubtract                              
        JumpFZero    -compare-266-true         
        Jump         -compare-266-false        
        Label        -compare-266-true         
        PushI        1                         
        Jump         -compare-266-join         
        Label        -compare-266-false        
        PushI        0                         
        Jump         -compare-266-join         
        Label        -compare-266-join         
        JumpTrue     -print-boolean-267-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-267-join   
        Label        -print-boolean-267-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-267-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-268-arg1         
        PushF        6.100000                  
        Label        -compare-268-arg2         
        PushF        7.100000                  
        PushF        7.300000                  
        FAdd                                   
        Label        -compare-268-sub          
        FSubtract                              
        JumpFZero    -compare-268-true         
        Jump         -compare-268-false        
        Label        -compare-268-true         
        PushI        1                         
        Jump         -compare-268-join         
        Label        -compare-268-false        
        PushI        0                         
        Jump         -compare-268-join         
        Label        -compare-268-join         
        JumpTrue     -print-boolean-269-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-269-join   
        Label        -print-boolean-269-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-269-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-270-arg1         
        PushF        3.300000                  
        PushF        2.600000                  
        FAdd                                   
        Label        -compare-270-arg2         
        PushF        3.100000                  
        PushF        7.100000                  
        FAdd                                   
        Label        -compare-270-sub          
        FSubtract                              
        JumpFZero    -compare-270-true         
        Jump         -compare-270-false        
        Label        -compare-270-true         
        PushI        1                         
        Jump         -compare-270-join         
        Label        -compare-270-false        
        PushI        0                         
        Jump         -compare-270-join         
        Label        -compare-270-join         
        JumpTrue     -print-boolean-271-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-271-join   
        Label        -print-boolean-271-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-271-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-272-arg1         
        PushF        2.500000                  
        PushF        1.900000                  
        FAdd                                   
        Label        -compare-272-arg2         
        PushF        3.100000                  
        PushF        5.500000                  
        FAdd                                   
        Label        -compare-272-sub          
        FSubtract                              
        JumpFZero    -compare-272-true         
        Jump         -compare-272-false        
        Label        -compare-272-true         
        PushI        1                         
        Jump         -compare-272-join         
        Label        -compare-272-false        
        PushI        0                         
        Jump         -compare-272-join         
        Label        -compare-272-join         
        JumpTrue     -print-boolean-273-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-273-join   
        Label        -print-boolean-273-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-273-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-274-arg1         
        PushF        1.100000                  
        PushF        9.400000                  
        FAdd                                   
        Label        -compare-274-arg2         
        PushF        6.600000                  
        PushF        2.100000                  
        FAdd                                   
        Label        -compare-274-sub          
        FSubtract                              
        JumpFZero    -compare-274-true         
        Jump         -compare-274-false        
        Label        -compare-274-true         
        PushI        1                         
        Jump         -compare-274-join         
        Label        -compare-274-false        
        PushI        0                         
        Jump         -compare-274-join         
        Label        -compare-274-join         
        JumpTrue     -print-boolean-275-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-275-join   
        Label        -print-boolean-275-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-275-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-276-arg1         
        PushF        3.800000                  
        PushF        5.900000                  
        FAdd                                   
        Label        -compare-276-arg2         
        PushF        1.100000                  
        PushF        9.300000                  
        FAdd                                   
        Label        -compare-276-sub          
        FSubtract                              
        JumpFZero    -compare-276-true         
        Jump         -compare-276-false        
        Label        -compare-276-true         
        PushI        1                         
        Jump         -compare-276-join         
        Label        -compare-276-false        
        PushI        0                         
        Jump         -compare-276-join         
        Label        -compare-276-join         
        JumpTrue     -print-boolean-277-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-277-join   
        Label        -print-boolean-277-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-277-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-278-arg1         
        PushF        7.600000                  
        PushF        4.200000                  
        FAdd                                   
        Label        -compare-278-arg2         
        PushF        3.400000                  
        PushF        9.800000                  
        FAdd                                   
        Label        -compare-278-sub          
        FSubtract                              
        JumpFZero    -compare-278-true         
        Jump         -compare-278-false        
        Label        -compare-278-true         
        PushI        1                         
        Jump         -compare-278-join         
        Label        -compare-278-false        
        PushI        0                         
        Jump         -compare-278-join         
        Label        -compare-278-join         
        JumpTrue     -print-boolean-279-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-279-join   
        Label        -print-boolean-279-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-279-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-280-arg1         
        PushF        4.900000                  
        PushF        5.200000                  
        FAdd                                   
        Label        -compare-280-arg2         
        PushF        3.200000                  
        PushF        1.200000                  
        FAdd                                   
        Label        -compare-280-sub          
        FSubtract                              
        JumpFZero    -compare-280-true         
        Jump         -compare-280-false        
        Label        -compare-280-true         
        PushI        1                         
        Jump         -compare-280-join         
        Label        -compare-280-false        
        PushI        0                         
        Jump         -compare-280-join         
        Label        -compare-280-join         
        JumpTrue     -print-boolean-281-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-281-join   
        Label        -print-boolean-281-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-281-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-282-arg1         
        PushF        7.600000                  
        PushF        9.600000                  
        FAdd                                   
        Label        -compare-282-arg2         
        PushF        6.500000                  
        PushF        9.700000                  
        FAdd                                   
        Label        -compare-282-sub          
        FSubtract                              
        JumpFZero    -compare-282-true         
        Jump         -compare-282-false        
        Label        -compare-282-true         
        PushI        1                         
        Jump         -compare-282-join         
        Label        -compare-282-false        
        PushI        0                         
        Jump         -compare-282-join         
        Label        -compare-282-join         
        JumpTrue     -print-boolean-283-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-283-join   
        Label        -print-boolean-283-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-283-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-284-arg1         
        PushF        7.600000                  
        PushF        9.900000                  
        FAdd                                   
        Label        -compare-284-arg2         
        PushF        2.000000                  
        PushF        8.700000                  
        FAdd                                   
        Label        -compare-284-sub          
        FSubtract                              
        JumpFZero    -compare-284-true         
        Jump         -compare-284-false        
        Label        -compare-284-true         
        PushI        1                         
        Jump         -compare-284-join         
        Label        -compare-284-false        
        PushI        0                         
        Jump         -compare-284-join         
        Label        -compare-284-join         
        JumpTrue     -print-boolean-285-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-285-join   
        Label        -print-boolean-285-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-285-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-286-arg1         
        PushF        5.600000                  
        PushF        5.200000                  
        FAdd                                   
        Label        -compare-286-arg2         
        PushF        6.300000                  
        PushF        2.600000                  
        FAdd                                   
        Label        -compare-286-sub          
        FSubtract                              
        JumpFZero    -compare-286-true         
        Jump         -compare-286-false        
        Label        -compare-286-true         
        PushI        1                         
        Jump         -compare-286-join         
        Label        -compare-286-false        
        PushI        0                         
        Jump         -compare-286-join         
        Label        -compare-286-join         
        JumpTrue     -print-boolean-287-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-287-join   
        Label        -print-boolean-287-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-287-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-288-arg1         
        PushF        1.600000                  
        PushF        7.600000                  
        FAdd                                   
        Label        -compare-288-arg2         
        PushF        9.100000                  
        PushF        2.300000                  
        FAdd                                   
        Label        -compare-288-sub          
        FSubtract                              
        JumpFZero    -compare-288-true         
        Jump         -compare-288-false        
        Label        -compare-288-true         
        PushI        1                         
        Jump         -compare-288-join         
        Label        -compare-288-false        
        PushI        0                         
        Jump         -compare-288-join         
        Label        -compare-288-join         
        JumpTrue     -print-boolean-289-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-289-join   
        Label        -print-boolean-289-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-289-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-290-arg1         
        PushF        9.300000                  
        PushF        4.200000                  
        FAdd                                   
        Label        -compare-290-arg2         
        PushF        6.500000                  
        PushF        4.100000                  
        FAdd                                   
        Label        -compare-290-sub          
        FSubtract                              
        JumpFZero    -compare-290-true         
        Jump         -compare-290-false        
        Label        -compare-290-true         
        PushI        1                         
        Jump         -compare-290-join         
        Label        -compare-290-false        
        PushI        0                         
        Jump         -compare-290-join         
        Label        -compare-290-join         
        JumpTrue     -print-boolean-291-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-291-join   
        Label        -print-boolean-291-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-291-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-292-arg1         
        PushF        6.500000                  
        PushF        6.500000                  
        FAdd                                   
        Label        -compare-292-arg2         
        PushF        4.000000                  
        PushF        2.900000                  
        FAdd                                   
        Label        -compare-292-sub          
        FSubtract                              
        JumpFZero    -compare-292-true         
        Jump         -compare-292-false        
        Label        -compare-292-true         
        PushI        1                         
        Jump         -compare-292-join         
        Label        -compare-292-false        
        PushI        0                         
        Jump         -compare-292-join         
        Label        -compare-292-join         
        JumpTrue     -print-boolean-293-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-293-join   
        Label        -print-boolean-293-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-293-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
