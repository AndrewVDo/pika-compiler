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
        Label        -compare-5942-arg1        
        PushF        8.000000                  
        PushF        9.100000                  
        FSubtract                              
        Label        -compare-5942-arg2        
        PushF        5.200000                  
        Label        -compare-5942-sub         
        FSubtract                              
        JumpFNeg     -compare-5942-true        
        Jump         -compare-5942-false       
        Label        -compare-5942-true        
        PushI        1                         
        Jump         -compare-5942-join        
        Label        -compare-5942-false       
        PushI        0                         
        Jump         -compare-5942-join        
        Label        -compare-5942-join        
        JumpTrue     -print-boolean-5943-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5943-join  
        Label        -print-boolean-5943-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5943-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5944-arg1        
        PushF        3.600000                  
        PushF        2.000000                  
        FSubtract                              
        Label        -compare-5944-arg2        
        PushF        4.300000                  
        Label        -compare-5944-sub         
        FSubtract                              
        JumpFNeg     -compare-5944-true        
        Jump         -compare-5944-false       
        Label        -compare-5944-true        
        PushI        1                         
        Jump         -compare-5944-join        
        Label        -compare-5944-false       
        PushI        0                         
        Jump         -compare-5944-join        
        Label        -compare-5944-join        
        JumpTrue     -print-boolean-5945-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5945-join  
        Label        -print-boolean-5945-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5945-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5946-arg1        
        PushF        6.500000                  
        PushF        8.600000                  
        FSubtract                              
        Label        -compare-5946-arg2        
        PushF        8.500000                  
        Label        -compare-5946-sub         
        FSubtract                              
        JumpFNeg     -compare-5946-true        
        Jump         -compare-5946-false       
        Label        -compare-5946-true        
        PushI        1                         
        Jump         -compare-5946-join        
        Label        -compare-5946-false       
        PushI        0                         
        Jump         -compare-5946-join        
        Label        -compare-5946-join        
        JumpTrue     -print-boolean-5947-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5947-join  
        Label        -print-boolean-5947-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5947-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5948-arg1        
        PushF        4.400000                  
        PushF        5.000000                  
        FSubtract                              
        Label        -compare-5948-arg2        
        PushF        3.600000                  
        Label        -compare-5948-sub         
        FSubtract                              
        JumpFNeg     -compare-5948-true        
        Jump         -compare-5948-false       
        Label        -compare-5948-true        
        PushI        1                         
        Jump         -compare-5948-join        
        Label        -compare-5948-false       
        PushI        0                         
        Jump         -compare-5948-join        
        Label        -compare-5948-join        
        JumpTrue     -print-boolean-5949-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5949-join  
        Label        -print-boolean-5949-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5949-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5950-arg1        
        PushF        2.700000                  
        PushF        1.100000                  
        FSubtract                              
        Label        -compare-5950-arg2        
        PushF        6.600000                  
        Label        -compare-5950-sub         
        FSubtract                              
        JumpFNeg     -compare-5950-true        
        Jump         -compare-5950-false       
        Label        -compare-5950-true        
        PushI        1                         
        Jump         -compare-5950-join        
        Label        -compare-5950-false       
        PushI        0                         
        Jump         -compare-5950-join        
        Label        -compare-5950-join        
        JumpTrue     -print-boolean-5951-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5951-join  
        Label        -print-boolean-5951-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5951-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5952-arg1        
        PushF        1.800000                  
        PushF        6.500000                  
        FSubtract                              
        Label        -compare-5952-arg2        
        PushF        5.500000                  
        Label        -compare-5952-sub         
        FSubtract                              
        JumpFNeg     -compare-5952-true        
        Jump         -compare-5952-false       
        Label        -compare-5952-true        
        PushI        1                         
        Jump         -compare-5952-join        
        Label        -compare-5952-false       
        PushI        0                         
        Jump         -compare-5952-join        
        Label        -compare-5952-join        
        JumpTrue     -print-boolean-5953-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5953-join  
        Label        -print-boolean-5953-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5953-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5954-arg1        
        PushF        9.400000                  
        PushF        9.500000                  
        FSubtract                              
        Label        -compare-5954-arg2        
        PushF        7.000000                  
        Label        -compare-5954-sub         
        FSubtract                              
        JumpFNeg     -compare-5954-true        
        Jump         -compare-5954-false       
        Label        -compare-5954-true        
        PushI        1                         
        Jump         -compare-5954-join        
        Label        -compare-5954-false       
        PushI        0                         
        Jump         -compare-5954-join        
        Label        -compare-5954-join        
        JumpTrue     -print-boolean-5955-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5955-join  
        Label        -print-boolean-5955-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5955-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5956-arg1        
        PushF        9.600000                  
        PushF        7.300000                  
        FSubtract                              
        Label        -compare-5956-arg2        
        PushF        2.900000                  
        Label        -compare-5956-sub         
        FSubtract                              
        JumpFNeg     -compare-5956-true        
        Jump         -compare-5956-false       
        Label        -compare-5956-true        
        PushI        1                         
        Jump         -compare-5956-join        
        Label        -compare-5956-false       
        PushI        0                         
        Jump         -compare-5956-join        
        Label        -compare-5956-join        
        JumpTrue     -print-boolean-5957-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5957-join  
        Label        -print-boolean-5957-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5957-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5958-arg1        
        PushF        2.600000                  
        PushF        6.300000                  
        FSubtract                              
        Label        -compare-5958-arg2        
        PushF        5.400000                  
        Label        -compare-5958-sub         
        FSubtract                              
        JumpFNeg     -compare-5958-true        
        Jump         -compare-5958-false       
        Label        -compare-5958-true        
        PushI        1                         
        Jump         -compare-5958-join        
        Label        -compare-5958-false       
        PushI        0                         
        Jump         -compare-5958-join        
        Label        -compare-5958-join        
        JumpTrue     -print-boolean-5959-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5959-join  
        Label        -print-boolean-5959-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5959-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5960-arg1        
        PushF        9.200000                  
        PushF        7.200000                  
        FSubtract                              
        Label        -compare-5960-arg2        
        PushF        5.000000                  
        Label        -compare-5960-sub         
        FSubtract                              
        JumpFNeg     -compare-5960-true        
        Jump         -compare-5960-false       
        Label        -compare-5960-true        
        PushI        1                         
        Jump         -compare-5960-join        
        Label        -compare-5960-false       
        PushI        0                         
        Jump         -compare-5960-join        
        Label        -compare-5960-join        
        JumpTrue     -print-boolean-5961-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5961-join  
        Label        -print-boolean-5961-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5961-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5962-arg1        
        PushF        9.900000                  
        PushF        2.900000                  
        FSubtract                              
        Label        -compare-5962-arg2        
        PushF        2.200000                  
        Label        -compare-5962-sub         
        FSubtract                              
        JumpFNeg     -compare-5962-true        
        Jump         -compare-5962-false       
        Label        -compare-5962-true        
        PushI        1                         
        Jump         -compare-5962-join        
        Label        -compare-5962-false       
        PushI        0                         
        Jump         -compare-5962-join        
        Label        -compare-5962-join        
        JumpTrue     -print-boolean-5963-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5963-join  
        Label        -print-boolean-5963-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5963-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5964-arg1        
        PushF        6.000000                  
        PushF        4.400000                  
        FSubtract                              
        Label        -compare-5964-arg2        
        PushF        7.200000                  
        Label        -compare-5964-sub         
        FSubtract                              
        JumpFNeg     -compare-5964-true        
        Jump         -compare-5964-false       
        Label        -compare-5964-true        
        PushI        1                         
        Jump         -compare-5964-join        
        Label        -compare-5964-false       
        PushI        0                         
        Jump         -compare-5964-join        
        Label        -compare-5964-join        
        JumpTrue     -print-boolean-5965-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5965-join  
        Label        -print-boolean-5965-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5965-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5966-arg1        
        PushF        5.300000                  
        Label        -compare-5966-arg2        
        PushF        9.500000                  
        PushF        8.800000                  
        FSubtract                              
        Label        -compare-5966-sub         
        FSubtract                              
        JumpFNeg     -compare-5966-true        
        Jump         -compare-5966-false       
        Label        -compare-5966-true        
        PushI        1                         
        Jump         -compare-5966-join        
        Label        -compare-5966-false       
        PushI        0                         
        Jump         -compare-5966-join        
        Label        -compare-5966-join        
        JumpTrue     -print-boolean-5967-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5967-join  
        Label        -print-boolean-5967-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5967-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5968-arg1        
        PushF        6.300000                  
        Label        -compare-5968-arg2        
        PushF        9.000000                  
        PushF        4.700000                  
        FSubtract                              
        Label        -compare-5968-sub         
        FSubtract                              
        JumpFNeg     -compare-5968-true        
        Jump         -compare-5968-false       
        Label        -compare-5968-true        
        PushI        1                         
        Jump         -compare-5968-join        
        Label        -compare-5968-false       
        PushI        0                         
        Jump         -compare-5968-join        
        Label        -compare-5968-join        
        JumpTrue     -print-boolean-5969-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5969-join  
        Label        -print-boolean-5969-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5969-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5970-arg1        
        PushF        5.700000                  
        Label        -compare-5970-arg2        
        PushF        6.500000                  
        PushF        3.900000                  
        FSubtract                              
        Label        -compare-5970-sub         
        FSubtract                              
        JumpFNeg     -compare-5970-true        
        Jump         -compare-5970-false       
        Label        -compare-5970-true        
        PushI        1                         
        Jump         -compare-5970-join        
        Label        -compare-5970-false       
        PushI        0                         
        Jump         -compare-5970-join        
        Label        -compare-5970-join        
        JumpTrue     -print-boolean-5971-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5971-join  
        Label        -print-boolean-5971-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5971-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5972-arg1        
        PushF        6.500000                  
        Label        -compare-5972-arg2        
        PushF        7.800000                  
        PushF        2.400000                  
        FSubtract                              
        Label        -compare-5972-sub         
        FSubtract                              
        JumpFNeg     -compare-5972-true        
        Jump         -compare-5972-false       
        Label        -compare-5972-true        
        PushI        1                         
        Jump         -compare-5972-join        
        Label        -compare-5972-false       
        PushI        0                         
        Jump         -compare-5972-join        
        Label        -compare-5972-join        
        JumpTrue     -print-boolean-5973-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5973-join  
        Label        -print-boolean-5973-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5973-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5974-arg1        
        PushF        6.300000                  
        Label        -compare-5974-arg2        
        PushF        5.700000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-5974-sub         
        FSubtract                              
        JumpFNeg     -compare-5974-true        
        Jump         -compare-5974-false       
        Label        -compare-5974-true        
        PushI        1                         
        Jump         -compare-5974-join        
        Label        -compare-5974-false       
        PushI        0                         
        Jump         -compare-5974-join        
        Label        -compare-5974-join        
        JumpTrue     -print-boolean-5975-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5975-join  
        Label        -print-boolean-5975-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5975-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5976-arg1        
        PushF        9.900000                  
        Label        -compare-5976-arg2        
        PushF        9.600000                  
        PushF        3.800000                  
        FSubtract                              
        Label        -compare-5976-sub         
        FSubtract                              
        JumpFNeg     -compare-5976-true        
        Jump         -compare-5976-false       
        Label        -compare-5976-true        
        PushI        1                         
        Jump         -compare-5976-join        
        Label        -compare-5976-false       
        PushI        0                         
        Jump         -compare-5976-join        
        Label        -compare-5976-join        
        JumpTrue     -print-boolean-5977-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5977-join  
        Label        -print-boolean-5977-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5977-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5978-arg1        
        PushF        8.700000                  
        Label        -compare-5978-arg2        
        PushF        4.900000                  
        PushF        9.400000                  
        FSubtract                              
        Label        -compare-5978-sub         
        FSubtract                              
        JumpFNeg     -compare-5978-true        
        Jump         -compare-5978-false       
        Label        -compare-5978-true        
        PushI        1                         
        Jump         -compare-5978-join        
        Label        -compare-5978-false       
        PushI        0                         
        Jump         -compare-5978-join        
        Label        -compare-5978-join        
        JumpTrue     -print-boolean-5979-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5979-join  
        Label        -print-boolean-5979-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5979-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5980-arg1        
        PushF        4.100000                  
        Label        -compare-5980-arg2        
        PushF        2.300000                  
        PushF        6.700000                  
        FSubtract                              
        Label        -compare-5980-sub         
        FSubtract                              
        JumpFNeg     -compare-5980-true        
        Jump         -compare-5980-false       
        Label        -compare-5980-true        
        PushI        1                         
        Jump         -compare-5980-join        
        Label        -compare-5980-false       
        PushI        0                         
        Jump         -compare-5980-join        
        Label        -compare-5980-join        
        JumpTrue     -print-boolean-5981-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5981-join  
        Label        -print-boolean-5981-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5981-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5982-arg1        
        PushF        3.800000                  
        Label        -compare-5982-arg2        
        PushF        8.900000                  
        PushF        8.600000                  
        FSubtract                              
        Label        -compare-5982-sub         
        FSubtract                              
        JumpFNeg     -compare-5982-true        
        Jump         -compare-5982-false       
        Label        -compare-5982-true        
        PushI        1                         
        Jump         -compare-5982-join        
        Label        -compare-5982-false       
        PushI        0                         
        Jump         -compare-5982-join        
        Label        -compare-5982-join        
        JumpTrue     -print-boolean-5983-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5983-join  
        Label        -print-boolean-5983-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5983-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5984-arg1        
        PushF        1.900000                  
        Label        -compare-5984-arg2        
        PushF        3.900000                  
        PushF        5.900000                  
        FSubtract                              
        Label        -compare-5984-sub         
        FSubtract                              
        JumpFNeg     -compare-5984-true        
        Jump         -compare-5984-false       
        Label        -compare-5984-true        
        PushI        1                         
        Jump         -compare-5984-join        
        Label        -compare-5984-false       
        PushI        0                         
        Jump         -compare-5984-join        
        Label        -compare-5984-join        
        JumpTrue     -print-boolean-5985-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5985-join  
        Label        -print-boolean-5985-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5985-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5986-arg1        
        PushF        4.200000                  
        Label        -compare-5986-arg2        
        PushF        8.500000                  
        PushF        9.700000                  
        FSubtract                              
        Label        -compare-5986-sub         
        FSubtract                              
        JumpFNeg     -compare-5986-true        
        Jump         -compare-5986-false       
        Label        -compare-5986-true        
        PushI        1                         
        Jump         -compare-5986-join        
        Label        -compare-5986-false       
        PushI        0                         
        Jump         -compare-5986-join        
        Label        -compare-5986-join        
        JumpTrue     -print-boolean-5987-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5987-join  
        Label        -print-boolean-5987-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5987-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5988-arg1        
        PushF        4.600000                  
        Label        -compare-5988-arg2        
        PushF        6.000000                  
        PushF        7.900000                  
        FSubtract                              
        Label        -compare-5988-sub         
        FSubtract                              
        JumpFNeg     -compare-5988-true        
        Jump         -compare-5988-false       
        Label        -compare-5988-true        
        PushI        1                         
        Jump         -compare-5988-join        
        Label        -compare-5988-false       
        PushI        0                         
        Jump         -compare-5988-join        
        Label        -compare-5988-join        
        JumpTrue     -print-boolean-5989-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5989-join  
        Label        -print-boolean-5989-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5989-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5990-arg1        
        PushF        6.800000                  
        PushF        6.000000                  
        FSubtract                              
        Label        -compare-5990-arg2        
        PushF        6.300000                  
        PushF        5.800000                  
        FSubtract                              
        Label        -compare-5990-sub         
        FSubtract                              
        JumpFNeg     -compare-5990-true        
        Jump         -compare-5990-false       
        Label        -compare-5990-true        
        PushI        1                         
        Jump         -compare-5990-join        
        Label        -compare-5990-false       
        PushI        0                         
        Jump         -compare-5990-join        
        Label        -compare-5990-join        
        JumpTrue     -print-boolean-5991-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5991-join  
        Label        -print-boolean-5991-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5991-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5992-arg1        
        PushF        1.700000                  
        PushF        7.100000                  
        FSubtract                              
        Label        -compare-5992-arg2        
        PushF        9.300000                  
        PushF        7.300000                  
        FSubtract                              
        Label        -compare-5992-sub         
        FSubtract                              
        JumpFNeg     -compare-5992-true        
        Jump         -compare-5992-false       
        Label        -compare-5992-true        
        PushI        1                         
        Jump         -compare-5992-join        
        Label        -compare-5992-false       
        PushI        0                         
        Jump         -compare-5992-join        
        Label        -compare-5992-join        
        JumpTrue     -print-boolean-5993-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5993-join  
        Label        -print-boolean-5993-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5993-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5994-arg1        
        PushF        6.900000                  
        PushF        3.200000                  
        FSubtract                              
        Label        -compare-5994-arg2        
        PushF        3.300000                  
        PushF        2.800000                  
        FSubtract                              
        Label        -compare-5994-sub         
        FSubtract                              
        JumpFNeg     -compare-5994-true        
        Jump         -compare-5994-false       
        Label        -compare-5994-true        
        PushI        1                         
        Jump         -compare-5994-join        
        Label        -compare-5994-false       
        PushI        0                         
        Jump         -compare-5994-join        
        Label        -compare-5994-join        
        JumpTrue     -print-boolean-5995-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5995-join  
        Label        -print-boolean-5995-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5995-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5996-arg1        
        PushF        8.500000                  
        PushF        5.100000                  
        FSubtract                              
        Label        -compare-5996-arg2        
        PushF        8.700000                  
        PushF        2.000000                  
        FSubtract                              
        Label        -compare-5996-sub         
        FSubtract                              
        JumpFNeg     -compare-5996-true        
        Jump         -compare-5996-false       
        Label        -compare-5996-true        
        PushI        1                         
        Jump         -compare-5996-join        
        Label        -compare-5996-false       
        PushI        0                         
        Jump         -compare-5996-join        
        Label        -compare-5996-join        
        JumpTrue     -print-boolean-5997-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5997-join  
        Label        -print-boolean-5997-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5997-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5998-arg1        
        PushF        5.700000                  
        PushF        7.900000                  
        FSubtract                              
        Label        -compare-5998-arg2        
        PushF        4.700000                  
        PushF        8.200000                  
        FSubtract                              
        Label        -compare-5998-sub         
        FSubtract                              
        JumpFNeg     -compare-5998-true        
        Jump         -compare-5998-false       
        Label        -compare-5998-true        
        PushI        1                         
        Jump         -compare-5998-join        
        Label        -compare-5998-false       
        PushI        0                         
        Jump         -compare-5998-join        
        Label        -compare-5998-join        
        JumpTrue     -print-boolean-5999-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5999-join  
        Label        -print-boolean-5999-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5999-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6000-arg1        
        PushF        6.400000                  
        PushF        2.400000                  
        FSubtract                              
        Label        -compare-6000-arg2        
        PushF        3.300000                  
        PushF        4.000000                  
        FSubtract                              
        Label        -compare-6000-sub         
        FSubtract                              
        JumpFNeg     -compare-6000-true        
        Jump         -compare-6000-false       
        Label        -compare-6000-true        
        PushI        1                         
        Jump         -compare-6000-join        
        Label        -compare-6000-false       
        PushI        0                         
        Jump         -compare-6000-join        
        Label        -compare-6000-join        
        JumpTrue     -print-boolean-6001-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6001-join  
        Label        -print-boolean-6001-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6001-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6002-arg1        
        PushF        2.100000                  
        PushF        7.100000                  
        FSubtract                              
        Label        -compare-6002-arg2        
        PushF        6.000000                  
        PushF        3.100000                  
        FSubtract                              
        Label        -compare-6002-sub         
        FSubtract                              
        JumpFNeg     -compare-6002-true        
        Jump         -compare-6002-false       
        Label        -compare-6002-true        
        PushI        1                         
        Jump         -compare-6002-join        
        Label        -compare-6002-false       
        PushI        0                         
        Jump         -compare-6002-join        
        Label        -compare-6002-join        
        JumpTrue     -print-boolean-6003-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6003-join  
        Label        -print-boolean-6003-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6003-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6004-arg1        
        PushF        4.100000                  
        PushF        2.100000                  
        FSubtract                              
        Label        -compare-6004-arg2        
        PushF        8.600000                  
        PushF        8.300000                  
        FSubtract                              
        Label        -compare-6004-sub         
        FSubtract                              
        JumpFNeg     -compare-6004-true        
        Jump         -compare-6004-false       
        Label        -compare-6004-true        
        PushI        1                         
        Jump         -compare-6004-join        
        Label        -compare-6004-false       
        PushI        0                         
        Jump         -compare-6004-join        
        Label        -compare-6004-join        
        JumpTrue     -print-boolean-6005-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6005-join  
        Label        -print-boolean-6005-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6005-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6006-arg1        
        PushF        6.800000                  
        PushF        1.400000                  
        FSubtract                              
        Label        -compare-6006-arg2        
        PushF        7.500000                  
        PushF        9.900000                  
        FSubtract                              
        Label        -compare-6006-sub         
        FSubtract                              
        JumpFNeg     -compare-6006-true        
        Jump         -compare-6006-false       
        Label        -compare-6006-true        
        PushI        1                         
        Jump         -compare-6006-join        
        Label        -compare-6006-false       
        PushI        0                         
        Jump         -compare-6006-join        
        Label        -compare-6006-join        
        JumpTrue     -print-boolean-6007-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6007-join  
        Label        -print-boolean-6007-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6007-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6008-arg1        
        PushF        5.500000                  
        PushF        9.800000                  
        FSubtract                              
        Label        -compare-6008-arg2        
        PushF        4.900000                  
        PushF        8.100000                  
        FSubtract                              
        Label        -compare-6008-sub         
        FSubtract                              
        JumpFNeg     -compare-6008-true        
        Jump         -compare-6008-false       
        Label        -compare-6008-true        
        PushI        1                         
        Jump         -compare-6008-join        
        Label        -compare-6008-false       
        PushI        0                         
        Jump         -compare-6008-join        
        Label        -compare-6008-join        
        JumpTrue     -print-boolean-6009-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6009-join  
        Label        -print-boolean-6009-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6009-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6010-arg1        
        PushF        3.900000                  
        PushF        6.400000                  
        FSubtract                              
        Label        -compare-6010-arg2        
        PushF        1.200000                  
        PushF        5.400000                  
        FSubtract                              
        Label        -compare-6010-sub         
        FSubtract                              
        JumpFNeg     -compare-6010-true        
        Jump         -compare-6010-false       
        Label        -compare-6010-true        
        PushI        1                         
        Jump         -compare-6010-join        
        Label        -compare-6010-false       
        PushI        0                         
        Jump         -compare-6010-join        
        Label        -compare-6010-join        
        JumpTrue     -print-boolean-6011-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6011-join  
        Label        -print-boolean-6011-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6011-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6012-arg1        
        PushF        2.700000                  
        PushF        2.700000                  
        FSubtract                              
        Label        -compare-6012-arg2        
        PushF        3.400000                  
        PushF        3.400000                  
        FSubtract                              
        Label        -compare-6012-sub         
        FSubtract                              
        JumpFNeg     -compare-6012-true        
        Jump         -compare-6012-false       
        Label        -compare-6012-true        
        PushI        1                         
        Jump         -compare-6012-join        
        Label        -compare-6012-false       
        PushI        0                         
        Jump         -compare-6012-join        
        Label        -compare-6012-join        
        JumpTrue     -print-boolean-6013-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6013-join  
        Label        -print-boolean-6013-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6013-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
