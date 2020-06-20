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
        Label        -compare-942-arg1         
        PushF        2.100000                  
        PushF        8.500000                  
        FAdd                                   
        Label        -compare-942-arg2         
        PushF        1.500000                  
        Label        -compare-942-sub          
        FSubtract                              
        JumpFZero    -compare-942-false        
        Jump         -compare-942-true         
        Label        -compare-942-true         
        PushI        1                         
        Jump         -compare-942-join         
        Label        -compare-942-false        
        PushI        0                         
        Jump         -compare-942-join         
        Label        -compare-942-join         
        JumpTrue     -print-boolean-943-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-943-join   
        Label        -print-boolean-943-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-943-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-944-arg1         
        PushF        2.300000                  
        PushF        5.000000                  
        FAdd                                   
        Label        -compare-944-arg2         
        PushF        3.000000                  
        Label        -compare-944-sub          
        FSubtract                              
        JumpFZero    -compare-944-false        
        Jump         -compare-944-true         
        Label        -compare-944-true         
        PushI        1                         
        Jump         -compare-944-join         
        Label        -compare-944-false        
        PushI        0                         
        Jump         -compare-944-join         
        Label        -compare-944-join         
        JumpTrue     -print-boolean-945-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-945-join   
        Label        -print-boolean-945-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-945-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-946-arg1         
        PushF        5.200000                  
        PushF        1.800000                  
        FAdd                                   
        Label        -compare-946-arg2         
        PushF        9.000000                  
        Label        -compare-946-sub          
        FSubtract                              
        JumpFZero    -compare-946-false        
        Jump         -compare-946-true         
        Label        -compare-946-true         
        PushI        1                         
        Jump         -compare-946-join         
        Label        -compare-946-false        
        PushI        0                         
        Jump         -compare-946-join         
        Label        -compare-946-join         
        JumpTrue     -print-boolean-947-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-947-join   
        Label        -print-boolean-947-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-947-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-948-arg1         
        PushF        8.800000                  
        PushF        6.800000                  
        FAdd                                   
        Label        -compare-948-arg2         
        PushF        8.400000                  
        Label        -compare-948-sub          
        FSubtract                              
        JumpFZero    -compare-948-false        
        Jump         -compare-948-true         
        Label        -compare-948-true         
        PushI        1                         
        Jump         -compare-948-join         
        Label        -compare-948-false        
        PushI        0                         
        Jump         -compare-948-join         
        Label        -compare-948-join         
        JumpTrue     -print-boolean-949-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-949-join   
        Label        -print-boolean-949-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-949-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-950-arg1         
        PushF        5.300000                  
        PushF        6.000000                  
        FAdd                                   
        Label        -compare-950-arg2         
        PushF        9.100000                  
        Label        -compare-950-sub          
        FSubtract                              
        JumpFZero    -compare-950-false        
        Jump         -compare-950-true         
        Label        -compare-950-true         
        PushI        1                         
        Jump         -compare-950-join         
        Label        -compare-950-false        
        PushI        0                         
        Jump         -compare-950-join         
        Label        -compare-950-join         
        JumpTrue     -print-boolean-951-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-951-join   
        Label        -print-boolean-951-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-951-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-952-arg1         
        PushF        4.300000                  
        PushF        6.100000                  
        FAdd                                   
        Label        -compare-952-arg2         
        PushF        4.200000                  
        Label        -compare-952-sub          
        FSubtract                              
        JumpFZero    -compare-952-false        
        Jump         -compare-952-true         
        Label        -compare-952-true         
        PushI        1                         
        Jump         -compare-952-join         
        Label        -compare-952-false        
        PushI        0                         
        Jump         -compare-952-join         
        Label        -compare-952-join         
        JumpTrue     -print-boolean-953-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-953-join   
        Label        -print-boolean-953-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-953-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-954-arg1         
        PushF        6.900000                  
        PushF        3.500000                  
        FAdd                                   
        Label        -compare-954-arg2         
        PushF        3.800000                  
        Label        -compare-954-sub          
        FSubtract                              
        JumpFZero    -compare-954-false        
        Jump         -compare-954-true         
        Label        -compare-954-true         
        PushI        1                         
        Jump         -compare-954-join         
        Label        -compare-954-false        
        PushI        0                         
        Jump         -compare-954-join         
        Label        -compare-954-join         
        JumpTrue     -print-boolean-955-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-955-join   
        Label        -print-boolean-955-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-955-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-956-arg1         
        PushF        3.100000                  
        PushF        4.800000                  
        FAdd                                   
        Label        -compare-956-arg2         
        PushF        3.500000                  
        Label        -compare-956-sub          
        FSubtract                              
        JumpFZero    -compare-956-false        
        Jump         -compare-956-true         
        Label        -compare-956-true         
        PushI        1                         
        Jump         -compare-956-join         
        Label        -compare-956-false        
        PushI        0                         
        Jump         -compare-956-join         
        Label        -compare-956-join         
        JumpTrue     -print-boolean-957-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-957-join   
        Label        -print-boolean-957-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-957-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-958-arg1         
        PushF        6.400000                  
        PushF        1.300000                  
        FAdd                                   
        Label        -compare-958-arg2         
        PushF        8.400000                  
        Label        -compare-958-sub          
        FSubtract                              
        JumpFZero    -compare-958-false        
        Jump         -compare-958-true         
        Label        -compare-958-true         
        PushI        1                         
        Jump         -compare-958-join         
        Label        -compare-958-false        
        PushI        0                         
        Jump         -compare-958-join         
        Label        -compare-958-join         
        JumpTrue     -print-boolean-959-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-959-join   
        Label        -print-boolean-959-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-959-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-960-arg1         
        PushF        6.000000                  
        PushF        8.300000                  
        FAdd                                   
        Label        -compare-960-arg2         
        PushF        6.900000                  
        Label        -compare-960-sub          
        FSubtract                              
        JumpFZero    -compare-960-false        
        Jump         -compare-960-true         
        Label        -compare-960-true         
        PushI        1                         
        Jump         -compare-960-join         
        Label        -compare-960-false        
        PushI        0                         
        Jump         -compare-960-join         
        Label        -compare-960-join         
        JumpTrue     -print-boolean-961-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-961-join   
        Label        -print-boolean-961-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-961-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-962-arg1         
        PushF        3.400000                  
        PushF        6.300000                  
        FAdd                                   
        Label        -compare-962-arg2         
        PushF        7.700000                  
        Label        -compare-962-sub          
        FSubtract                              
        JumpFZero    -compare-962-false        
        Jump         -compare-962-true         
        Label        -compare-962-true         
        PushI        1                         
        Jump         -compare-962-join         
        Label        -compare-962-false        
        PushI        0                         
        Jump         -compare-962-join         
        Label        -compare-962-join         
        JumpTrue     -print-boolean-963-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-963-join   
        Label        -print-boolean-963-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-963-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-964-arg1         
        PushF        2.000000                  
        PushF        2.600000                  
        FAdd                                   
        Label        -compare-964-arg2         
        PushF        6.400000                  
        Label        -compare-964-sub          
        FSubtract                              
        JumpFZero    -compare-964-false        
        Jump         -compare-964-true         
        Label        -compare-964-true         
        PushI        1                         
        Jump         -compare-964-join         
        Label        -compare-964-false        
        PushI        0                         
        Jump         -compare-964-join         
        Label        -compare-964-join         
        JumpTrue     -print-boolean-965-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-965-join   
        Label        -print-boolean-965-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-965-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-966-arg1         
        PushF        4.100000                  
        Label        -compare-966-arg2         
        PushF        2.800000                  
        PushF        1.500000                  
        FAdd                                   
        Label        -compare-966-sub          
        FSubtract                              
        JumpFZero    -compare-966-false        
        Jump         -compare-966-true         
        Label        -compare-966-true         
        PushI        1                         
        Jump         -compare-966-join         
        Label        -compare-966-false        
        PushI        0                         
        Jump         -compare-966-join         
        Label        -compare-966-join         
        JumpTrue     -print-boolean-967-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-967-join   
        Label        -print-boolean-967-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-967-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-968-arg1         
        PushF        3.200000                  
        Label        -compare-968-arg2         
        PushF        4.600000                  
        PushF        2.300000                  
        FAdd                                   
        Label        -compare-968-sub          
        FSubtract                              
        JumpFZero    -compare-968-false        
        Jump         -compare-968-true         
        Label        -compare-968-true         
        PushI        1                         
        Jump         -compare-968-join         
        Label        -compare-968-false        
        PushI        0                         
        Jump         -compare-968-join         
        Label        -compare-968-join         
        JumpTrue     -print-boolean-969-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-969-join   
        Label        -print-boolean-969-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-969-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-970-arg1         
        PushF        3.000000                  
        Label        -compare-970-arg2         
        PushF        3.200000                  
        PushF        4.400000                  
        FAdd                                   
        Label        -compare-970-sub          
        FSubtract                              
        JumpFZero    -compare-970-false        
        Jump         -compare-970-true         
        Label        -compare-970-true         
        PushI        1                         
        Jump         -compare-970-join         
        Label        -compare-970-false        
        PushI        0                         
        Jump         -compare-970-join         
        Label        -compare-970-join         
        JumpTrue     -print-boolean-971-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-971-join   
        Label        -print-boolean-971-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-971-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-972-arg1         
        PushF        3.700000                  
        Label        -compare-972-arg2         
        PushF        7.200000                  
        PushF        4.900000                  
        FAdd                                   
        Label        -compare-972-sub          
        FSubtract                              
        JumpFZero    -compare-972-false        
        Jump         -compare-972-true         
        Label        -compare-972-true         
        PushI        1                         
        Jump         -compare-972-join         
        Label        -compare-972-false        
        PushI        0                         
        Jump         -compare-972-join         
        Label        -compare-972-join         
        JumpTrue     -print-boolean-973-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-973-join   
        Label        -print-boolean-973-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-973-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-974-arg1         
        PushF        8.000000                  
        Label        -compare-974-arg2         
        PushF        7.400000                  
        PushF        6.500000                  
        FAdd                                   
        Label        -compare-974-sub          
        FSubtract                              
        JumpFZero    -compare-974-false        
        Jump         -compare-974-true         
        Label        -compare-974-true         
        PushI        1                         
        Jump         -compare-974-join         
        Label        -compare-974-false        
        PushI        0                         
        Jump         -compare-974-join         
        Label        -compare-974-join         
        JumpTrue     -print-boolean-975-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-975-join   
        Label        -print-boolean-975-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-975-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-976-arg1         
        PushF        6.400000                  
        Label        -compare-976-arg2         
        PushF        3.500000                  
        PushF        8.000000                  
        FAdd                                   
        Label        -compare-976-sub          
        FSubtract                              
        JumpFZero    -compare-976-false        
        Jump         -compare-976-true         
        Label        -compare-976-true         
        PushI        1                         
        Jump         -compare-976-join         
        Label        -compare-976-false        
        PushI        0                         
        Jump         -compare-976-join         
        Label        -compare-976-join         
        JumpTrue     -print-boolean-977-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-977-join   
        Label        -print-boolean-977-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-977-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-978-arg1         
        PushF        4.700000                  
        Label        -compare-978-arg2         
        PushF        3.200000                  
        PushF        5.800000                  
        FAdd                                   
        Label        -compare-978-sub          
        FSubtract                              
        JumpFZero    -compare-978-false        
        Jump         -compare-978-true         
        Label        -compare-978-true         
        PushI        1                         
        Jump         -compare-978-join         
        Label        -compare-978-false        
        PushI        0                         
        Jump         -compare-978-join         
        Label        -compare-978-join         
        JumpTrue     -print-boolean-979-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-979-join   
        Label        -print-boolean-979-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-979-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-980-arg1         
        PushF        2.100000                  
        Label        -compare-980-arg2         
        PushF        5.500000                  
        PushF        6.400000                  
        FAdd                                   
        Label        -compare-980-sub          
        FSubtract                              
        JumpFZero    -compare-980-false        
        Jump         -compare-980-true         
        Label        -compare-980-true         
        PushI        1                         
        Jump         -compare-980-join         
        Label        -compare-980-false        
        PushI        0                         
        Jump         -compare-980-join         
        Label        -compare-980-join         
        JumpTrue     -print-boolean-981-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-981-join   
        Label        -print-boolean-981-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-981-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-982-arg1         
        PushF        6.000000                  
        Label        -compare-982-arg2         
        PushF        2.600000                  
        PushF        2.700000                  
        FAdd                                   
        Label        -compare-982-sub          
        FSubtract                              
        JumpFZero    -compare-982-false        
        Jump         -compare-982-true         
        Label        -compare-982-true         
        PushI        1                         
        Jump         -compare-982-join         
        Label        -compare-982-false        
        PushI        0                         
        Jump         -compare-982-join         
        Label        -compare-982-join         
        JumpTrue     -print-boolean-983-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-983-join   
        Label        -print-boolean-983-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-983-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-984-arg1         
        PushF        4.200000                  
        Label        -compare-984-arg2         
        PushF        8.000000                  
        PushF        9.500000                  
        FAdd                                   
        Label        -compare-984-sub          
        FSubtract                              
        JumpFZero    -compare-984-false        
        Jump         -compare-984-true         
        Label        -compare-984-true         
        PushI        1                         
        Jump         -compare-984-join         
        Label        -compare-984-false        
        PushI        0                         
        Jump         -compare-984-join         
        Label        -compare-984-join         
        JumpTrue     -print-boolean-985-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-985-join   
        Label        -print-boolean-985-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-985-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-986-arg1         
        PushF        4.500000                  
        Label        -compare-986-arg2         
        PushF        4.900000                  
        PushF        9.200000                  
        FAdd                                   
        Label        -compare-986-sub          
        FSubtract                              
        JumpFZero    -compare-986-false        
        Jump         -compare-986-true         
        Label        -compare-986-true         
        PushI        1                         
        Jump         -compare-986-join         
        Label        -compare-986-false        
        PushI        0                         
        Jump         -compare-986-join         
        Label        -compare-986-join         
        JumpTrue     -print-boolean-987-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-987-join   
        Label        -print-boolean-987-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-987-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-988-arg1         
        PushF        4.400000                  
        Label        -compare-988-arg2         
        PushF        9.900000                  
        PushF        7.400000                  
        FAdd                                   
        Label        -compare-988-sub          
        FSubtract                              
        JumpFZero    -compare-988-false        
        Jump         -compare-988-true         
        Label        -compare-988-true         
        PushI        1                         
        Jump         -compare-988-join         
        Label        -compare-988-false        
        PushI        0                         
        Jump         -compare-988-join         
        Label        -compare-988-join         
        JumpTrue     -print-boolean-989-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-989-join   
        Label        -print-boolean-989-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-989-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-990-arg1         
        PushF        3.800000                  
        PushF        9.900000                  
        FAdd                                   
        Label        -compare-990-arg2         
        PushF        8.500000                  
        PushF        4.000000                  
        FAdd                                   
        Label        -compare-990-sub          
        FSubtract                              
        JumpFZero    -compare-990-false        
        Jump         -compare-990-true         
        Label        -compare-990-true         
        PushI        1                         
        Jump         -compare-990-join         
        Label        -compare-990-false        
        PushI        0                         
        Jump         -compare-990-join         
        Label        -compare-990-join         
        JumpTrue     -print-boolean-991-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-991-join   
        Label        -print-boolean-991-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-991-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-992-arg1         
        PushF        7.400000                  
        PushF        9.300000                  
        FAdd                                   
        Label        -compare-992-arg2         
        PushF        4.900000                  
        PushF        6.700000                  
        FAdd                                   
        Label        -compare-992-sub          
        FSubtract                              
        JumpFZero    -compare-992-false        
        Jump         -compare-992-true         
        Label        -compare-992-true         
        PushI        1                         
        Jump         -compare-992-join         
        Label        -compare-992-false        
        PushI        0                         
        Jump         -compare-992-join         
        Label        -compare-992-join         
        JumpTrue     -print-boolean-993-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-993-join   
        Label        -print-boolean-993-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-993-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-994-arg1         
        PushF        9.900000                  
        PushF        4.600000                  
        FAdd                                   
        Label        -compare-994-arg2         
        PushF        4.400000                  
        PushF        9.300000                  
        FAdd                                   
        Label        -compare-994-sub          
        FSubtract                              
        JumpFZero    -compare-994-false        
        Jump         -compare-994-true         
        Label        -compare-994-true         
        PushI        1                         
        Jump         -compare-994-join         
        Label        -compare-994-false        
        PushI        0                         
        Jump         -compare-994-join         
        Label        -compare-994-join         
        JumpTrue     -print-boolean-995-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-995-join   
        Label        -print-boolean-995-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-995-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-996-arg1         
        PushF        8.100000                  
        PushF        9.700000                  
        FAdd                                   
        Label        -compare-996-arg2         
        PushF        8.000000                  
        PushF        2.400000                  
        FAdd                                   
        Label        -compare-996-sub          
        FSubtract                              
        JumpFZero    -compare-996-false        
        Jump         -compare-996-true         
        Label        -compare-996-true         
        PushI        1                         
        Jump         -compare-996-join         
        Label        -compare-996-false        
        PushI        0                         
        Jump         -compare-996-join         
        Label        -compare-996-join         
        JumpTrue     -print-boolean-997-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-997-join   
        Label        -print-boolean-997-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-997-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-998-arg1         
        PushF        5.900000                  
        PushF        3.800000                  
        FAdd                                   
        Label        -compare-998-arg2         
        PushF        2.400000                  
        PushF        1.200000                  
        FAdd                                   
        Label        -compare-998-sub          
        FSubtract                              
        JumpFZero    -compare-998-false        
        Jump         -compare-998-true         
        Label        -compare-998-true         
        PushI        1                         
        Jump         -compare-998-join         
        Label        -compare-998-false        
        PushI        0                         
        Jump         -compare-998-join         
        Label        -compare-998-join         
        JumpTrue     -print-boolean-999-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-999-join   
        Label        -print-boolean-999-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-999-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1000-arg1        
        PushF        8.000000                  
        PushF        6.100000                  
        FAdd                                   
        Label        -compare-1000-arg2        
        PushF        3.700000                  
        PushF        7.200000                  
        FAdd                                   
        Label        -compare-1000-sub         
        FSubtract                              
        JumpFZero    -compare-1000-false       
        Jump         -compare-1000-true        
        Label        -compare-1000-true        
        PushI        1                         
        Jump         -compare-1000-join        
        Label        -compare-1000-false       
        PushI        0                         
        Jump         -compare-1000-join        
        Label        -compare-1000-join        
        JumpTrue     -print-boolean-1001-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1001-join  
        Label        -print-boolean-1001-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1001-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1002-arg1        
        PushF        5.500000                  
        PushF        2.600000                  
        FAdd                                   
        Label        -compare-1002-arg2        
        PushF        9.500000                  
        PushF        1.200000                  
        FAdd                                   
        Label        -compare-1002-sub         
        FSubtract                              
        JumpFZero    -compare-1002-false       
        Jump         -compare-1002-true        
        Label        -compare-1002-true        
        PushI        1                         
        Jump         -compare-1002-join        
        Label        -compare-1002-false       
        PushI        0                         
        Jump         -compare-1002-join        
        Label        -compare-1002-join        
        JumpTrue     -print-boolean-1003-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1003-join  
        Label        -print-boolean-1003-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1003-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1004-arg1        
        PushF        8.300000                  
        PushF        5.800000                  
        FAdd                                   
        Label        -compare-1004-arg2        
        PushF        6.000000                  
        PushF        1.700000                  
        FAdd                                   
        Label        -compare-1004-sub         
        FSubtract                              
        JumpFZero    -compare-1004-false       
        Jump         -compare-1004-true        
        Label        -compare-1004-true        
        PushI        1                         
        Jump         -compare-1004-join        
        Label        -compare-1004-false       
        PushI        0                         
        Jump         -compare-1004-join        
        Label        -compare-1004-join        
        JumpTrue     -print-boolean-1005-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1005-join  
        Label        -print-boolean-1005-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1005-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1006-arg1        
        PushF        6.400000                  
        PushF        3.100000                  
        FAdd                                   
        Label        -compare-1006-arg2        
        PushF        5.100000                  
        PushF        1.700000                  
        FAdd                                   
        Label        -compare-1006-sub         
        FSubtract                              
        JumpFZero    -compare-1006-false       
        Jump         -compare-1006-true        
        Label        -compare-1006-true        
        PushI        1                         
        Jump         -compare-1006-join        
        Label        -compare-1006-false       
        PushI        0                         
        Jump         -compare-1006-join        
        Label        -compare-1006-join        
        JumpTrue     -print-boolean-1007-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1007-join  
        Label        -print-boolean-1007-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1007-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1008-arg1        
        PushF        3.500000                  
        PushF        7.500000                  
        FAdd                                   
        Label        -compare-1008-arg2        
        PushF        7.300000                  
        PushF        6.200000                  
        FAdd                                   
        Label        -compare-1008-sub         
        FSubtract                              
        JumpFZero    -compare-1008-false       
        Jump         -compare-1008-true        
        Label        -compare-1008-true        
        PushI        1                         
        Jump         -compare-1008-join        
        Label        -compare-1008-false       
        PushI        0                         
        Jump         -compare-1008-join        
        Label        -compare-1008-join        
        JumpTrue     -print-boolean-1009-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1009-join  
        Label        -print-boolean-1009-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1009-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1010-arg1        
        PushF        7.600000                  
        PushF        2.200000                  
        FAdd                                   
        Label        -compare-1010-arg2        
        PushF        9.200000                  
        PushF        6.200000                  
        FAdd                                   
        Label        -compare-1010-sub         
        FSubtract                              
        JumpFZero    -compare-1010-false       
        Jump         -compare-1010-true        
        Label        -compare-1010-true        
        PushI        1                         
        Jump         -compare-1010-join        
        Label        -compare-1010-false       
        PushI        0                         
        Jump         -compare-1010-join        
        Label        -compare-1010-join        
        JumpTrue     -print-boolean-1011-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1011-join  
        Label        -print-boolean-1011-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1011-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1012-arg1        
        PushF        2.800000                  
        PushF        5.400000                  
        FAdd                                   
        Label        -compare-1012-arg2        
        PushF        3.300000                  
        PushF        6.800000                  
        FAdd                                   
        Label        -compare-1012-sub         
        FSubtract                              
        JumpFZero    -compare-1012-false       
        Jump         -compare-1012-true        
        Label        -compare-1012-true        
        PushI        1                         
        Jump         -compare-1012-join        
        Label        -compare-1012-false       
        PushI        0                         
        Jump         -compare-1012-join        
        Label        -compare-1012-join        
        JumpTrue     -print-boolean-1013-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1013-join  
        Label        -print-boolean-1013-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1013-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
