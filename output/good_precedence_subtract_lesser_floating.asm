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
        Label        -compare-5929-arg1        
        PushF        8.000000                  
        PushF        9.100000                  
        FSubtract                              
        Label        -compare-5929-arg2        
        PushF        5.200000                  
        Label        -compare-5929-sub         
        FSubtract                              
        JumpFNeg     -compare-5929-true        
        Jump         -compare-5929-false       
        Label        -compare-5929-true        
        PushI        1                         
        Jump         -compare-5929-join        
        Label        -compare-5929-false       
        PushI        0                         
        Jump         -compare-5929-join        
        Label        -compare-5929-join        
        JumpTrue     -print-boolean-5930-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5930-join  
        Label        -print-boolean-5930-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5930-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5931-arg1        
        PushF        3.600000                  
        PushF        2.000000                  
        FSubtract                              
        Label        -compare-5931-arg2        
        PushF        4.300000                  
        Label        -compare-5931-sub         
        FSubtract                              
        JumpFNeg     -compare-5931-true        
        Jump         -compare-5931-false       
        Label        -compare-5931-true        
        PushI        1                         
        Jump         -compare-5931-join        
        Label        -compare-5931-false       
        PushI        0                         
        Jump         -compare-5931-join        
        Label        -compare-5931-join        
        JumpTrue     -print-boolean-5932-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5932-join  
        Label        -print-boolean-5932-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5932-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5933-arg1        
        PushF        6.500000                  
        PushF        8.600000                  
        FSubtract                              
        Label        -compare-5933-arg2        
        PushF        8.500000                  
        Label        -compare-5933-sub         
        FSubtract                              
        JumpFNeg     -compare-5933-true        
        Jump         -compare-5933-false       
        Label        -compare-5933-true        
        PushI        1                         
        Jump         -compare-5933-join        
        Label        -compare-5933-false       
        PushI        0                         
        Jump         -compare-5933-join        
        Label        -compare-5933-join        
        JumpTrue     -print-boolean-5934-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5934-join  
        Label        -print-boolean-5934-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5934-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5935-arg1        
        PushF        4.400000                  
        PushF        5.000000                  
        FSubtract                              
        Label        -compare-5935-arg2        
        PushF        3.600000                  
        Label        -compare-5935-sub         
        FSubtract                              
        JumpFNeg     -compare-5935-true        
        Jump         -compare-5935-false       
        Label        -compare-5935-true        
        PushI        1                         
        Jump         -compare-5935-join        
        Label        -compare-5935-false       
        PushI        0                         
        Jump         -compare-5935-join        
        Label        -compare-5935-join        
        JumpTrue     -print-boolean-5936-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5936-join  
        Label        -print-boolean-5936-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5936-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5937-arg1        
        PushF        2.700000                  
        PushF        1.100000                  
        FSubtract                              
        Label        -compare-5937-arg2        
        PushF        6.600000                  
        Label        -compare-5937-sub         
        FSubtract                              
        JumpFNeg     -compare-5937-true        
        Jump         -compare-5937-false       
        Label        -compare-5937-true        
        PushI        1                         
        Jump         -compare-5937-join        
        Label        -compare-5937-false       
        PushI        0                         
        Jump         -compare-5937-join        
        Label        -compare-5937-join        
        JumpTrue     -print-boolean-5938-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5938-join  
        Label        -print-boolean-5938-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5938-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5939-arg1        
        PushF        1.800000                  
        PushF        6.500000                  
        FSubtract                              
        Label        -compare-5939-arg2        
        PushF        5.500000                  
        Label        -compare-5939-sub         
        FSubtract                              
        JumpFNeg     -compare-5939-true        
        Jump         -compare-5939-false       
        Label        -compare-5939-true        
        PushI        1                         
        Jump         -compare-5939-join        
        Label        -compare-5939-false       
        PushI        0                         
        Jump         -compare-5939-join        
        Label        -compare-5939-join        
        JumpTrue     -print-boolean-5940-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5940-join  
        Label        -print-boolean-5940-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5940-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5941-arg1        
        PushF        9.400000                  
        PushF        9.500000                  
        FSubtract                              
        Label        -compare-5941-arg2        
        PushF        7.000000                  
        Label        -compare-5941-sub         
        FSubtract                              
        JumpFNeg     -compare-5941-true        
        Jump         -compare-5941-false       
        Label        -compare-5941-true        
        PushI        1                         
        Jump         -compare-5941-join        
        Label        -compare-5941-false       
        PushI        0                         
        Jump         -compare-5941-join        
        Label        -compare-5941-join        
        JumpTrue     -print-boolean-5942-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5942-join  
        Label        -print-boolean-5942-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5942-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5943-arg1        
        PushF        9.600000                  
        PushF        7.300000                  
        FSubtract                              
        Label        -compare-5943-arg2        
        PushF        2.900000                  
        Label        -compare-5943-sub         
        FSubtract                              
        JumpFNeg     -compare-5943-true        
        Jump         -compare-5943-false       
        Label        -compare-5943-true        
        PushI        1                         
        Jump         -compare-5943-join        
        Label        -compare-5943-false       
        PushI        0                         
        Jump         -compare-5943-join        
        Label        -compare-5943-join        
        JumpTrue     -print-boolean-5944-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5944-join  
        Label        -print-boolean-5944-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5944-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5945-arg1        
        PushF        2.600000                  
        PushF        6.300000                  
        FSubtract                              
        Label        -compare-5945-arg2        
        PushF        5.400000                  
        Label        -compare-5945-sub         
        FSubtract                              
        JumpFNeg     -compare-5945-true        
        Jump         -compare-5945-false       
        Label        -compare-5945-true        
        PushI        1                         
        Jump         -compare-5945-join        
        Label        -compare-5945-false       
        PushI        0                         
        Jump         -compare-5945-join        
        Label        -compare-5945-join        
        JumpTrue     -print-boolean-5946-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5946-join  
        Label        -print-boolean-5946-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5946-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5947-arg1        
        PushF        9.200000                  
        PushF        7.200000                  
        FSubtract                              
        Label        -compare-5947-arg2        
        PushF        5.000000                  
        Label        -compare-5947-sub         
        FSubtract                              
        JumpFNeg     -compare-5947-true        
        Jump         -compare-5947-false       
        Label        -compare-5947-true        
        PushI        1                         
        Jump         -compare-5947-join        
        Label        -compare-5947-false       
        PushI        0                         
        Jump         -compare-5947-join        
        Label        -compare-5947-join        
        JumpTrue     -print-boolean-5948-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5948-join  
        Label        -print-boolean-5948-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5948-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5949-arg1        
        PushF        9.900000                  
        PushF        2.900000                  
        FSubtract                              
        Label        -compare-5949-arg2        
        PushF        2.200000                  
        Label        -compare-5949-sub         
        FSubtract                              
        JumpFNeg     -compare-5949-true        
        Jump         -compare-5949-false       
        Label        -compare-5949-true        
        PushI        1                         
        Jump         -compare-5949-join        
        Label        -compare-5949-false       
        PushI        0                         
        Jump         -compare-5949-join        
        Label        -compare-5949-join        
        JumpTrue     -print-boolean-5950-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5950-join  
        Label        -print-boolean-5950-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5950-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5951-arg1        
        PushF        6.000000                  
        PushF        4.400000                  
        FSubtract                              
        Label        -compare-5951-arg2        
        PushF        7.200000                  
        Label        -compare-5951-sub         
        FSubtract                              
        JumpFNeg     -compare-5951-true        
        Jump         -compare-5951-false       
        Label        -compare-5951-true        
        PushI        1                         
        Jump         -compare-5951-join        
        Label        -compare-5951-false       
        PushI        0                         
        Jump         -compare-5951-join        
        Label        -compare-5951-join        
        JumpTrue     -print-boolean-5952-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5952-join  
        Label        -print-boolean-5952-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5952-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5953-arg1        
        PushF        5.300000                  
        Label        -compare-5953-arg2        
        PushF        9.500000                  
        PushF        8.800000                  
        FSubtract                              
        Label        -compare-5953-sub         
        FSubtract                              
        JumpFNeg     -compare-5953-true        
        Jump         -compare-5953-false       
        Label        -compare-5953-true        
        PushI        1                         
        Jump         -compare-5953-join        
        Label        -compare-5953-false       
        PushI        0                         
        Jump         -compare-5953-join        
        Label        -compare-5953-join        
        JumpTrue     -print-boolean-5954-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5954-join  
        Label        -print-boolean-5954-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5954-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5955-arg1        
        PushF        6.300000                  
        Label        -compare-5955-arg2        
        PushF        9.000000                  
        PushF        4.700000                  
        FSubtract                              
        Label        -compare-5955-sub         
        FSubtract                              
        JumpFNeg     -compare-5955-true        
        Jump         -compare-5955-false       
        Label        -compare-5955-true        
        PushI        1                         
        Jump         -compare-5955-join        
        Label        -compare-5955-false       
        PushI        0                         
        Jump         -compare-5955-join        
        Label        -compare-5955-join        
        JumpTrue     -print-boolean-5956-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5956-join  
        Label        -print-boolean-5956-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5956-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5957-arg1        
        PushF        5.700000                  
        Label        -compare-5957-arg2        
        PushF        6.500000                  
        PushF        3.900000                  
        FSubtract                              
        Label        -compare-5957-sub         
        FSubtract                              
        JumpFNeg     -compare-5957-true        
        Jump         -compare-5957-false       
        Label        -compare-5957-true        
        PushI        1                         
        Jump         -compare-5957-join        
        Label        -compare-5957-false       
        PushI        0                         
        Jump         -compare-5957-join        
        Label        -compare-5957-join        
        JumpTrue     -print-boolean-5958-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5958-join  
        Label        -print-boolean-5958-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5958-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5959-arg1        
        PushF        6.500000                  
        Label        -compare-5959-arg2        
        PushF        7.800000                  
        PushF        2.400000                  
        FSubtract                              
        Label        -compare-5959-sub         
        FSubtract                              
        JumpFNeg     -compare-5959-true        
        Jump         -compare-5959-false       
        Label        -compare-5959-true        
        PushI        1                         
        Jump         -compare-5959-join        
        Label        -compare-5959-false       
        PushI        0                         
        Jump         -compare-5959-join        
        Label        -compare-5959-join        
        JumpTrue     -print-boolean-5960-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5960-join  
        Label        -print-boolean-5960-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5960-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5961-arg1        
        PushF        6.300000                  
        Label        -compare-5961-arg2        
        PushF        5.700000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-5961-sub         
        FSubtract                              
        JumpFNeg     -compare-5961-true        
        Jump         -compare-5961-false       
        Label        -compare-5961-true        
        PushI        1                         
        Jump         -compare-5961-join        
        Label        -compare-5961-false       
        PushI        0                         
        Jump         -compare-5961-join        
        Label        -compare-5961-join        
        JumpTrue     -print-boolean-5962-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5962-join  
        Label        -print-boolean-5962-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5962-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5963-arg1        
        PushF        9.900000                  
        Label        -compare-5963-arg2        
        PushF        9.600000                  
        PushF        3.800000                  
        FSubtract                              
        Label        -compare-5963-sub         
        FSubtract                              
        JumpFNeg     -compare-5963-true        
        Jump         -compare-5963-false       
        Label        -compare-5963-true        
        PushI        1                         
        Jump         -compare-5963-join        
        Label        -compare-5963-false       
        PushI        0                         
        Jump         -compare-5963-join        
        Label        -compare-5963-join        
        JumpTrue     -print-boolean-5964-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5964-join  
        Label        -print-boolean-5964-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5964-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5965-arg1        
        PushF        8.700000                  
        Label        -compare-5965-arg2        
        PushF        4.900000                  
        PushF        9.400000                  
        FSubtract                              
        Label        -compare-5965-sub         
        FSubtract                              
        JumpFNeg     -compare-5965-true        
        Jump         -compare-5965-false       
        Label        -compare-5965-true        
        PushI        1                         
        Jump         -compare-5965-join        
        Label        -compare-5965-false       
        PushI        0                         
        Jump         -compare-5965-join        
        Label        -compare-5965-join        
        JumpTrue     -print-boolean-5966-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5966-join  
        Label        -print-boolean-5966-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5966-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5967-arg1        
        PushF        4.100000                  
        Label        -compare-5967-arg2        
        PushF        2.300000                  
        PushF        6.700000                  
        FSubtract                              
        Label        -compare-5967-sub         
        FSubtract                              
        JumpFNeg     -compare-5967-true        
        Jump         -compare-5967-false       
        Label        -compare-5967-true        
        PushI        1                         
        Jump         -compare-5967-join        
        Label        -compare-5967-false       
        PushI        0                         
        Jump         -compare-5967-join        
        Label        -compare-5967-join        
        JumpTrue     -print-boolean-5968-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5968-join  
        Label        -print-boolean-5968-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5968-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5969-arg1        
        PushF        3.800000                  
        Label        -compare-5969-arg2        
        PushF        8.900000                  
        PushF        8.600000                  
        FSubtract                              
        Label        -compare-5969-sub         
        FSubtract                              
        JumpFNeg     -compare-5969-true        
        Jump         -compare-5969-false       
        Label        -compare-5969-true        
        PushI        1                         
        Jump         -compare-5969-join        
        Label        -compare-5969-false       
        PushI        0                         
        Jump         -compare-5969-join        
        Label        -compare-5969-join        
        JumpTrue     -print-boolean-5970-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5970-join  
        Label        -print-boolean-5970-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5970-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5971-arg1        
        PushF        1.900000                  
        Label        -compare-5971-arg2        
        PushF        3.900000                  
        PushF        5.900000                  
        FSubtract                              
        Label        -compare-5971-sub         
        FSubtract                              
        JumpFNeg     -compare-5971-true        
        Jump         -compare-5971-false       
        Label        -compare-5971-true        
        PushI        1                         
        Jump         -compare-5971-join        
        Label        -compare-5971-false       
        PushI        0                         
        Jump         -compare-5971-join        
        Label        -compare-5971-join        
        JumpTrue     -print-boolean-5972-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5972-join  
        Label        -print-boolean-5972-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5972-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5973-arg1        
        PushF        4.200000                  
        Label        -compare-5973-arg2        
        PushF        8.500000                  
        PushF        9.700000                  
        FSubtract                              
        Label        -compare-5973-sub         
        FSubtract                              
        JumpFNeg     -compare-5973-true        
        Jump         -compare-5973-false       
        Label        -compare-5973-true        
        PushI        1                         
        Jump         -compare-5973-join        
        Label        -compare-5973-false       
        PushI        0                         
        Jump         -compare-5973-join        
        Label        -compare-5973-join        
        JumpTrue     -print-boolean-5974-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5974-join  
        Label        -print-boolean-5974-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5974-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5975-arg1        
        PushF        4.600000                  
        Label        -compare-5975-arg2        
        PushF        6.000000                  
        PushF        7.900000                  
        FSubtract                              
        Label        -compare-5975-sub         
        FSubtract                              
        JumpFNeg     -compare-5975-true        
        Jump         -compare-5975-false       
        Label        -compare-5975-true        
        PushI        1                         
        Jump         -compare-5975-join        
        Label        -compare-5975-false       
        PushI        0                         
        Jump         -compare-5975-join        
        Label        -compare-5975-join        
        JumpTrue     -print-boolean-5976-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5976-join  
        Label        -print-boolean-5976-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5976-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5977-arg1        
        PushF        6.800000                  
        PushF        6.000000                  
        FSubtract                              
        Label        -compare-5977-arg2        
        PushF        6.300000                  
        PushF        5.800000                  
        FSubtract                              
        Label        -compare-5977-sub         
        FSubtract                              
        JumpFNeg     -compare-5977-true        
        Jump         -compare-5977-false       
        Label        -compare-5977-true        
        PushI        1                         
        Jump         -compare-5977-join        
        Label        -compare-5977-false       
        PushI        0                         
        Jump         -compare-5977-join        
        Label        -compare-5977-join        
        JumpTrue     -print-boolean-5978-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5978-join  
        Label        -print-boolean-5978-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5978-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5979-arg1        
        PushF        1.700000                  
        PushF        7.100000                  
        FSubtract                              
        Label        -compare-5979-arg2        
        PushF        9.300000                  
        PushF        7.300000                  
        FSubtract                              
        Label        -compare-5979-sub         
        FSubtract                              
        JumpFNeg     -compare-5979-true        
        Jump         -compare-5979-false       
        Label        -compare-5979-true        
        PushI        1                         
        Jump         -compare-5979-join        
        Label        -compare-5979-false       
        PushI        0                         
        Jump         -compare-5979-join        
        Label        -compare-5979-join        
        JumpTrue     -print-boolean-5980-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5980-join  
        Label        -print-boolean-5980-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5980-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5981-arg1        
        PushF        6.900000                  
        PushF        3.200000                  
        FSubtract                              
        Label        -compare-5981-arg2        
        PushF        3.300000                  
        PushF        2.800000                  
        FSubtract                              
        Label        -compare-5981-sub         
        FSubtract                              
        JumpFNeg     -compare-5981-true        
        Jump         -compare-5981-false       
        Label        -compare-5981-true        
        PushI        1                         
        Jump         -compare-5981-join        
        Label        -compare-5981-false       
        PushI        0                         
        Jump         -compare-5981-join        
        Label        -compare-5981-join        
        JumpTrue     -print-boolean-5982-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5982-join  
        Label        -print-boolean-5982-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5982-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5983-arg1        
        PushF        8.500000                  
        PushF        5.100000                  
        FSubtract                              
        Label        -compare-5983-arg2        
        PushF        8.700000                  
        PushF        2.000000                  
        FSubtract                              
        Label        -compare-5983-sub         
        FSubtract                              
        JumpFNeg     -compare-5983-true        
        Jump         -compare-5983-false       
        Label        -compare-5983-true        
        PushI        1                         
        Jump         -compare-5983-join        
        Label        -compare-5983-false       
        PushI        0                         
        Jump         -compare-5983-join        
        Label        -compare-5983-join        
        JumpTrue     -print-boolean-5984-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5984-join  
        Label        -print-boolean-5984-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5984-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5985-arg1        
        PushF        5.700000                  
        PushF        7.900000                  
        FSubtract                              
        Label        -compare-5985-arg2        
        PushF        4.700000                  
        PushF        8.200000                  
        FSubtract                              
        Label        -compare-5985-sub         
        FSubtract                              
        JumpFNeg     -compare-5985-true        
        Jump         -compare-5985-false       
        Label        -compare-5985-true        
        PushI        1                         
        Jump         -compare-5985-join        
        Label        -compare-5985-false       
        PushI        0                         
        Jump         -compare-5985-join        
        Label        -compare-5985-join        
        JumpTrue     -print-boolean-5986-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5986-join  
        Label        -print-boolean-5986-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5986-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5987-arg1        
        PushF        6.400000                  
        PushF        2.400000                  
        FSubtract                              
        Label        -compare-5987-arg2        
        PushF        3.300000                  
        PushF        4.000000                  
        FSubtract                              
        Label        -compare-5987-sub         
        FSubtract                              
        JumpFNeg     -compare-5987-true        
        Jump         -compare-5987-false       
        Label        -compare-5987-true        
        PushI        1                         
        Jump         -compare-5987-join        
        Label        -compare-5987-false       
        PushI        0                         
        Jump         -compare-5987-join        
        Label        -compare-5987-join        
        JumpTrue     -print-boolean-5988-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5988-join  
        Label        -print-boolean-5988-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5988-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5989-arg1        
        PushF        2.100000                  
        PushF        7.100000                  
        FSubtract                              
        Label        -compare-5989-arg2        
        PushF        6.000000                  
        PushF        3.100000                  
        FSubtract                              
        Label        -compare-5989-sub         
        FSubtract                              
        JumpFNeg     -compare-5989-true        
        Jump         -compare-5989-false       
        Label        -compare-5989-true        
        PushI        1                         
        Jump         -compare-5989-join        
        Label        -compare-5989-false       
        PushI        0                         
        Jump         -compare-5989-join        
        Label        -compare-5989-join        
        JumpTrue     -print-boolean-5990-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5990-join  
        Label        -print-boolean-5990-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5990-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5991-arg1        
        PushF        4.100000                  
        PushF        2.100000                  
        FSubtract                              
        Label        -compare-5991-arg2        
        PushF        8.600000                  
        PushF        8.300000                  
        FSubtract                              
        Label        -compare-5991-sub         
        FSubtract                              
        JumpFNeg     -compare-5991-true        
        Jump         -compare-5991-false       
        Label        -compare-5991-true        
        PushI        1                         
        Jump         -compare-5991-join        
        Label        -compare-5991-false       
        PushI        0                         
        Jump         -compare-5991-join        
        Label        -compare-5991-join        
        JumpTrue     -print-boolean-5992-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5992-join  
        Label        -print-boolean-5992-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5992-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5993-arg1        
        PushF        6.800000                  
        PushF        1.400000                  
        FSubtract                              
        Label        -compare-5993-arg2        
        PushF        7.500000                  
        PushF        9.900000                  
        FSubtract                              
        Label        -compare-5993-sub         
        FSubtract                              
        JumpFNeg     -compare-5993-true        
        Jump         -compare-5993-false       
        Label        -compare-5993-true        
        PushI        1                         
        Jump         -compare-5993-join        
        Label        -compare-5993-false       
        PushI        0                         
        Jump         -compare-5993-join        
        Label        -compare-5993-join        
        JumpTrue     -print-boolean-5994-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5994-join  
        Label        -print-boolean-5994-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5994-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5995-arg1        
        PushF        5.500000                  
        PushF        9.800000                  
        FSubtract                              
        Label        -compare-5995-arg2        
        PushF        4.900000                  
        PushF        8.100000                  
        FSubtract                              
        Label        -compare-5995-sub         
        FSubtract                              
        JumpFNeg     -compare-5995-true        
        Jump         -compare-5995-false       
        Label        -compare-5995-true        
        PushI        1                         
        Jump         -compare-5995-join        
        Label        -compare-5995-false       
        PushI        0                         
        Jump         -compare-5995-join        
        Label        -compare-5995-join        
        JumpTrue     -print-boolean-5996-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5996-join  
        Label        -print-boolean-5996-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5996-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5997-arg1        
        PushF        3.900000                  
        PushF        6.400000                  
        FSubtract                              
        Label        -compare-5997-arg2        
        PushF        1.200000                  
        PushF        5.400000                  
        FSubtract                              
        Label        -compare-5997-sub         
        FSubtract                              
        JumpFNeg     -compare-5997-true        
        Jump         -compare-5997-false       
        Label        -compare-5997-true        
        PushI        1                         
        Jump         -compare-5997-join        
        Label        -compare-5997-false       
        PushI        0                         
        Jump         -compare-5997-join        
        Label        -compare-5997-join        
        JumpTrue     -print-boolean-5998-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5998-join  
        Label        -print-boolean-5998-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5998-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5999-arg1        
        PushF        2.700000                  
        PushF        2.700000                  
        FSubtract                              
        Label        -compare-5999-arg2        
        PushF        3.400000                  
        PushF        3.400000                  
        FSubtract                              
        Label        -compare-5999-sub         
        FSubtract                              
        JumpFNeg     -compare-5999-true        
        Jump         -compare-5999-false       
        Label        -compare-5999-true        
        PushI        1                         
        Jump         -compare-5999-join        
        Label        -compare-5999-false       
        PushI        0                         
        Jump         -compare-5999-join        
        Label        -compare-5999-join        
        JumpTrue     -print-boolean-6000-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6000-join  
        Label        -print-boolean-6000-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6000-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
