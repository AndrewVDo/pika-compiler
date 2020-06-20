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
        Label        -compare-654-arg1         
        PushF        4.100000                  
        PushF        1.400000                  
        FAdd                                   
        Label        -compare-654-arg2         
        PushF        5.100000                  
        Label        -compare-654-sub          
        FSubtract                              
        JumpFNeg     -compare-654-true         
        Jump         -compare-654-false        
        Label        -compare-654-true         
        PushI        1                         
        Jump         -compare-654-join         
        Label        -compare-654-false        
        PushI        0                         
        Jump         -compare-654-join         
        Label        -compare-654-join         
        JumpTrue     -print-boolean-655-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-655-join   
        Label        -print-boolean-655-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-655-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-656-arg1         
        PushF        2.800000                  
        PushF        7.400000                  
        FAdd                                   
        Label        -compare-656-arg2         
        PushF        6.900000                  
        Label        -compare-656-sub          
        FSubtract                              
        JumpFNeg     -compare-656-true         
        Jump         -compare-656-false        
        Label        -compare-656-true         
        PushI        1                         
        Jump         -compare-656-join         
        Label        -compare-656-false        
        PushI        0                         
        Jump         -compare-656-join         
        Label        -compare-656-join         
        JumpTrue     -print-boolean-657-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-657-join   
        Label        -print-boolean-657-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-657-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-658-arg1         
        PushF        6.100000                  
        PushF        5.300000                  
        FAdd                                   
        Label        -compare-658-arg2         
        PushF        2.800000                  
        Label        -compare-658-sub          
        FSubtract                              
        JumpFNeg     -compare-658-true         
        Jump         -compare-658-false        
        Label        -compare-658-true         
        PushI        1                         
        Jump         -compare-658-join         
        Label        -compare-658-false        
        PushI        0                         
        Jump         -compare-658-join         
        Label        -compare-658-join         
        JumpTrue     -print-boolean-659-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-659-join   
        Label        -print-boolean-659-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-659-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-660-arg1         
        PushF        1.100000                  
        PushF        6.800000                  
        FAdd                                   
        Label        -compare-660-arg2         
        PushF        4.800000                  
        Label        -compare-660-sub          
        FSubtract                              
        JumpFNeg     -compare-660-true         
        Jump         -compare-660-false        
        Label        -compare-660-true         
        PushI        1                         
        Jump         -compare-660-join         
        Label        -compare-660-false        
        PushI        0                         
        Jump         -compare-660-join         
        Label        -compare-660-join         
        JumpTrue     -print-boolean-661-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-661-join   
        Label        -print-boolean-661-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-661-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-662-arg1         
        PushF        9.300000                  
        PushF        8.500000                  
        FAdd                                   
        Label        -compare-662-arg2         
        PushF        6.300000                  
        Label        -compare-662-sub          
        FSubtract                              
        JumpFNeg     -compare-662-true         
        Jump         -compare-662-false        
        Label        -compare-662-true         
        PushI        1                         
        Jump         -compare-662-join         
        Label        -compare-662-false        
        PushI        0                         
        Jump         -compare-662-join         
        Label        -compare-662-join         
        JumpTrue     -print-boolean-663-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-663-join   
        Label        -print-boolean-663-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-663-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-664-arg1         
        PushF        7.300000                  
        PushF        7.400000                  
        FAdd                                   
        Label        -compare-664-arg2         
        PushF        6.600000                  
        Label        -compare-664-sub          
        FSubtract                              
        JumpFNeg     -compare-664-true         
        Jump         -compare-664-false        
        Label        -compare-664-true         
        PushI        1                         
        Jump         -compare-664-join         
        Label        -compare-664-false        
        PushI        0                         
        Jump         -compare-664-join         
        Label        -compare-664-join         
        JumpTrue     -print-boolean-665-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-665-join   
        Label        -print-boolean-665-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-665-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-666-arg1         
        PushF        3.900000                  
        PushF        1.800000                  
        FAdd                                   
        Label        -compare-666-arg2         
        PushF        6.900000                  
        Label        -compare-666-sub          
        FSubtract                              
        JumpFNeg     -compare-666-true         
        Jump         -compare-666-false        
        Label        -compare-666-true         
        PushI        1                         
        Jump         -compare-666-join         
        Label        -compare-666-false        
        PushI        0                         
        Jump         -compare-666-join         
        Label        -compare-666-join         
        JumpTrue     -print-boolean-667-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-667-join   
        Label        -print-boolean-667-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-667-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-668-arg1         
        PushF        1.100000                  
        PushF        3.800000                  
        FAdd                                   
        Label        -compare-668-arg2         
        PushF        9.500000                  
        Label        -compare-668-sub          
        FSubtract                              
        JumpFNeg     -compare-668-true         
        Jump         -compare-668-false        
        Label        -compare-668-true         
        PushI        1                         
        Jump         -compare-668-join         
        Label        -compare-668-false        
        PushI        0                         
        Jump         -compare-668-join         
        Label        -compare-668-join         
        JumpTrue     -print-boolean-669-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-669-join   
        Label        -print-boolean-669-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-669-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-670-arg1         
        PushF        4.100000                  
        PushF        7.300000                  
        FAdd                                   
        Label        -compare-670-arg2         
        PushF        8.500000                  
        Label        -compare-670-sub          
        FSubtract                              
        JumpFNeg     -compare-670-true         
        Jump         -compare-670-false        
        Label        -compare-670-true         
        PushI        1                         
        Jump         -compare-670-join         
        Label        -compare-670-false        
        PushI        0                         
        Jump         -compare-670-join         
        Label        -compare-670-join         
        JumpTrue     -print-boolean-671-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-671-join   
        Label        -print-boolean-671-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-671-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-672-arg1         
        PushF        6.900000                  
        PushF        9.300000                  
        FAdd                                   
        Label        -compare-672-arg2         
        PushF        3.800000                  
        Label        -compare-672-sub          
        FSubtract                              
        JumpFNeg     -compare-672-true         
        Jump         -compare-672-false        
        Label        -compare-672-true         
        PushI        1                         
        Jump         -compare-672-join         
        Label        -compare-672-false        
        PushI        0                         
        Jump         -compare-672-join         
        Label        -compare-672-join         
        JumpTrue     -print-boolean-673-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-673-join   
        Label        -print-boolean-673-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-673-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-674-arg1         
        PushF        5.800000                  
        PushF        1.000000                  
        FAdd                                   
        Label        -compare-674-arg2         
        PushF        5.100000                  
        Label        -compare-674-sub          
        FSubtract                              
        JumpFNeg     -compare-674-true         
        Jump         -compare-674-false        
        Label        -compare-674-true         
        PushI        1                         
        Jump         -compare-674-join         
        Label        -compare-674-false        
        PushI        0                         
        Jump         -compare-674-join         
        Label        -compare-674-join         
        JumpTrue     -print-boolean-675-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-675-join   
        Label        -print-boolean-675-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-675-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-676-arg1         
        PushF        2.900000                  
        PushF        3.400000                  
        FAdd                                   
        Label        -compare-676-arg2         
        PushF        3.300000                  
        Label        -compare-676-sub          
        FSubtract                              
        JumpFNeg     -compare-676-true         
        Jump         -compare-676-false        
        Label        -compare-676-true         
        PushI        1                         
        Jump         -compare-676-join         
        Label        -compare-676-false        
        PushI        0                         
        Jump         -compare-676-join         
        Label        -compare-676-join         
        JumpTrue     -print-boolean-677-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-677-join   
        Label        -print-boolean-677-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-677-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-678-arg1         
        PushF        7.700000                  
        Label        -compare-678-arg2         
        PushF        7.300000                  
        PushF        8.900000                  
        FAdd                                   
        Label        -compare-678-sub          
        FSubtract                              
        JumpFNeg     -compare-678-true         
        Jump         -compare-678-false        
        Label        -compare-678-true         
        PushI        1                         
        Jump         -compare-678-join         
        Label        -compare-678-false        
        PushI        0                         
        Jump         -compare-678-join         
        Label        -compare-678-join         
        JumpTrue     -print-boolean-679-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-679-join   
        Label        -print-boolean-679-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-679-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-680-arg1         
        PushF        9.500000                  
        Label        -compare-680-arg2         
        PushF        8.700000                  
        PushF        9.500000                  
        FAdd                                   
        Label        -compare-680-sub          
        FSubtract                              
        JumpFNeg     -compare-680-true         
        Jump         -compare-680-false        
        Label        -compare-680-true         
        PushI        1                         
        Jump         -compare-680-join         
        Label        -compare-680-false        
        PushI        0                         
        Jump         -compare-680-join         
        Label        -compare-680-join         
        JumpTrue     -print-boolean-681-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-681-join   
        Label        -print-boolean-681-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-681-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-682-arg1         
        PushF        5.700000                  
        Label        -compare-682-arg2         
        PushF        3.900000                  
        PushF        3.900000                  
        FAdd                                   
        Label        -compare-682-sub          
        FSubtract                              
        JumpFNeg     -compare-682-true         
        Jump         -compare-682-false        
        Label        -compare-682-true         
        PushI        1                         
        Jump         -compare-682-join         
        Label        -compare-682-false        
        PushI        0                         
        Jump         -compare-682-join         
        Label        -compare-682-join         
        JumpTrue     -print-boolean-683-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-683-join   
        Label        -print-boolean-683-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-683-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-684-arg1         
        PushF        4.400000                  
        Label        -compare-684-arg2         
        PushF        6.200000                  
        PushF        1.700000                  
        FAdd                                   
        Label        -compare-684-sub          
        FSubtract                              
        JumpFNeg     -compare-684-true         
        Jump         -compare-684-false        
        Label        -compare-684-true         
        PushI        1                         
        Jump         -compare-684-join         
        Label        -compare-684-false        
        PushI        0                         
        Jump         -compare-684-join         
        Label        -compare-684-join         
        JumpTrue     -print-boolean-685-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-685-join   
        Label        -print-boolean-685-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-685-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-686-arg1         
        PushF        8.500000                  
        Label        -compare-686-arg2         
        PushF        2.000000                  
        PushF        5.900000                  
        FAdd                                   
        Label        -compare-686-sub          
        FSubtract                              
        JumpFNeg     -compare-686-true         
        Jump         -compare-686-false        
        Label        -compare-686-true         
        PushI        1                         
        Jump         -compare-686-join         
        Label        -compare-686-false        
        PushI        0                         
        Jump         -compare-686-join         
        Label        -compare-686-join         
        JumpTrue     -print-boolean-687-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-687-join   
        Label        -print-boolean-687-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-687-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-688-arg1         
        PushF        1.400000                  
        Label        -compare-688-arg2         
        PushF        9.900000                  
        PushF        7.100000                  
        FAdd                                   
        Label        -compare-688-sub          
        FSubtract                              
        JumpFNeg     -compare-688-true         
        Jump         -compare-688-false        
        Label        -compare-688-true         
        PushI        1                         
        Jump         -compare-688-join         
        Label        -compare-688-false        
        PushI        0                         
        Jump         -compare-688-join         
        Label        -compare-688-join         
        JumpTrue     -print-boolean-689-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-689-join   
        Label        -print-boolean-689-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-689-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-690-arg1         
        PushF        6.200000                  
        Label        -compare-690-arg2         
        PushF        1.000000                  
        PushF        8.100000                  
        FAdd                                   
        Label        -compare-690-sub          
        FSubtract                              
        JumpFNeg     -compare-690-true         
        Jump         -compare-690-false        
        Label        -compare-690-true         
        PushI        1                         
        Jump         -compare-690-join         
        Label        -compare-690-false        
        PushI        0                         
        Jump         -compare-690-join         
        Label        -compare-690-join         
        JumpTrue     -print-boolean-691-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-691-join   
        Label        -print-boolean-691-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-691-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-692-arg1         
        PushF        7.400000                  
        Label        -compare-692-arg2         
        PushF        2.900000                  
        PushF        8.900000                  
        FAdd                                   
        Label        -compare-692-sub          
        FSubtract                              
        JumpFNeg     -compare-692-true         
        Jump         -compare-692-false        
        Label        -compare-692-true         
        PushI        1                         
        Jump         -compare-692-join         
        Label        -compare-692-false        
        PushI        0                         
        Jump         -compare-692-join         
        Label        -compare-692-join         
        JumpTrue     -print-boolean-693-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-693-join   
        Label        -print-boolean-693-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-693-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-694-arg1         
        PushF        8.900000                  
        Label        -compare-694-arg2         
        PushF        8.600000                  
        PushF        6.300000                  
        FAdd                                   
        Label        -compare-694-sub          
        FSubtract                              
        JumpFNeg     -compare-694-true         
        Jump         -compare-694-false        
        Label        -compare-694-true         
        PushI        1                         
        Jump         -compare-694-join         
        Label        -compare-694-false        
        PushI        0                         
        Jump         -compare-694-join         
        Label        -compare-694-join         
        JumpTrue     -print-boolean-695-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-695-join   
        Label        -print-boolean-695-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-695-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-696-arg1         
        PushF        8.600000                  
        Label        -compare-696-arg2         
        PushF        9.600000                  
        PushF        7.800000                  
        FAdd                                   
        Label        -compare-696-sub          
        FSubtract                              
        JumpFNeg     -compare-696-true         
        Jump         -compare-696-false        
        Label        -compare-696-true         
        PushI        1                         
        Jump         -compare-696-join         
        Label        -compare-696-false        
        PushI        0                         
        Jump         -compare-696-join         
        Label        -compare-696-join         
        JumpTrue     -print-boolean-697-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-697-join   
        Label        -print-boolean-697-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-697-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-698-arg1         
        PushF        6.100000                  
        Label        -compare-698-arg2         
        PushF        8.900000                  
        PushF        6.400000                  
        FAdd                                   
        Label        -compare-698-sub          
        FSubtract                              
        JumpFNeg     -compare-698-true         
        Jump         -compare-698-false        
        Label        -compare-698-true         
        PushI        1                         
        Jump         -compare-698-join         
        Label        -compare-698-false        
        PushI        0                         
        Jump         -compare-698-join         
        Label        -compare-698-join         
        JumpTrue     -print-boolean-699-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-699-join   
        Label        -print-boolean-699-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-699-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-700-arg1         
        PushF        6.600000                  
        Label        -compare-700-arg2         
        PushF        8.400000                  
        PushF        9.700000                  
        FAdd                                   
        Label        -compare-700-sub          
        FSubtract                              
        JumpFNeg     -compare-700-true         
        Jump         -compare-700-false        
        Label        -compare-700-true         
        PushI        1                         
        Jump         -compare-700-join         
        Label        -compare-700-false        
        PushI        0                         
        Jump         -compare-700-join         
        Label        -compare-700-join         
        JumpTrue     -print-boolean-701-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-701-join   
        Label        -print-boolean-701-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-701-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-702-arg1         
        PushF        5.700000                  
        PushF        4.300000                  
        FAdd                                   
        Label        -compare-702-arg2         
        PushF        2.800000                  
        PushF        3.200000                  
        FAdd                                   
        Label        -compare-702-sub          
        FSubtract                              
        JumpFNeg     -compare-702-true         
        Jump         -compare-702-false        
        Label        -compare-702-true         
        PushI        1                         
        Jump         -compare-702-join         
        Label        -compare-702-false        
        PushI        0                         
        Jump         -compare-702-join         
        Label        -compare-702-join         
        JumpTrue     -print-boolean-703-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-703-join   
        Label        -print-boolean-703-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-703-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-704-arg1         
        PushF        2.900000                  
        PushF        2.300000                  
        FAdd                                   
        Label        -compare-704-arg2         
        PushF        8.500000                  
        PushF        2.100000                  
        FAdd                                   
        Label        -compare-704-sub          
        FSubtract                              
        JumpFNeg     -compare-704-true         
        Jump         -compare-704-false        
        Label        -compare-704-true         
        PushI        1                         
        Jump         -compare-704-join         
        Label        -compare-704-false        
        PushI        0                         
        Jump         -compare-704-join         
        Label        -compare-704-join         
        JumpTrue     -print-boolean-705-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-705-join   
        Label        -print-boolean-705-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-705-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-706-arg1         
        PushF        3.400000                  
        PushF        8.300000                  
        FAdd                                   
        Label        -compare-706-arg2         
        PushF        2.600000                  
        PushF        1.000000                  
        FAdd                                   
        Label        -compare-706-sub          
        FSubtract                              
        JumpFNeg     -compare-706-true         
        Jump         -compare-706-false        
        Label        -compare-706-true         
        PushI        1                         
        Jump         -compare-706-join         
        Label        -compare-706-false        
        PushI        0                         
        Jump         -compare-706-join         
        Label        -compare-706-join         
        JumpTrue     -print-boolean-707-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-707-join   
        Label        -print-boolean-707-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-707-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-708-arg1         
        PushF        4.400000                  
        PushF        2.100000                  
        FAdd                                   
        Label        -compare-708-arg2         
        PushF        1.800000                  
        PushF        6.000000                  
        FAdd                                   
        Label        -compare-708-sub          
        FSubtract                              
        JumpFNeg     -compare-708-true         
        Jump         -compare-708-false        
        Label        -compare-708-true         
        PushI        1                         
        Jump         -compare-708-join         
        Label        -compare-708-false        
        PushI        0                         
        Jump         -compare-708-join         
        Label        -compare-708-join         
        JumpTrue     -print-boolean-709-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-709-join   
        Label        -print-boolean-709-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-709-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-710-arg1         
        PushF        5.200000                  
        PushF        1.100000                  
        FAdd                                   
        Label        -compare-710-arg2         
        PushF        8.000000                  
        PushF        3.400000                  
        FAdd                                   
        Label        -compare-710-sub          
        FSubtract                              
        JumpFNeg     -compare-710-true         
        Jump         -compare-710-false        
        Label        -compare-710-true         
        PushI        1                         
        Jump         -compare-710-join         
        Label        -compare-710-false        
        PushI        0                         
        Jump         -compare-710-join         
        Label        -compare-710-join         
        JumpTrue     -print-boolean-711-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-711-join   
        Label        -print-boolean-711-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-711-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-712-arg1         
        PushF        1.900000                  
        PushF        6.600000                  
        FAdd                                   
        Label        -compare-712-arg2         
        PushF        4.000000                  
        PushF        6.400000                  
        FAdd                                   
        Label        -compare-712-sub          
        FSubtract                              
        JumpFNeg     -compare-712-true         
        Jump         -compare-712-false        
        Label        -compare-712-true         
        PushI        1                         
        Jump         -compare-712-join         
        Label        -compare-712-false        
        PushI        0                         
        Jump         -compare-712-join         
        Label        -compare-712-join         
        JumpTrue     -print-boolean-713-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-713-join   
        Label        -print-boolean-713-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-713-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-714-arg1         
        PushF        6.200000                  
        PushF        4.500000                  
        FAdd                                   
        Label        -compare-714-arg2         
        PushF        9.200000                  
        PushF        9.500000                  
        FAdd                                   
        Label        -compare-714-sub          
        FSubtract                              
        JumpFNeg     -compare-714-true         
        Jump         -compare-714-false        
        Label        -compare-714-true         
        PushI        1                         
        Jump         -compare-714-join         
        Label        -compare-714-false        
        PushI        0                         
        Jump         -compare-714-join         
        Label        -compare-714-join         
        JumpTrue     -print-boolean-715-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-715-join   
        Label        -print-boolean-715-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-715-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-716-arg1         
        PushF        2.900000                  
        PushF        9.700000                  
        FAdd                                   
        Label        -compare-716-arg2         
        PushF        6.900000                  
        PushF        7.300000                  
        FAdd                                   
        Label        -compare-716-sub          
        FSubtract                              
        JumpFNeg     -compare-716-true         
        Jump         -compare-716-false        
        Label        -compare-716-true         
        PushI        1                         
        Jump         -compare-716-join         
        Label        -compare-716-false        
        PushI        0                         
        Jump         -compare-716-join         
        Label        -compare-716-join         
        JumpTrue     -print-boolean-717-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-717-join   
        Label        -print-boolean-717-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-717-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-718-arg1         
        PushF        1.700000                  
        PushF        2.200000                  
        FAdd                                   
        Label        -compare-718-arg2         
        PushF        4.700000                  
        PushF        7.600000                  
        FAdd                                   
        Label        -compare-718-sub          
        FSubtract                              
        JumpFNeg     -compare-718-true         
        Jump         -compare-718-false        
        Label        -compare-718-true         
        PushI        1                         
        Jump         -compare-718-join         
        Label        -compare-718-false        
        PushI        0                         
        Jump         -compare-718-join         
        Label        -compare-718-join         
        JumpTrue     -print-boolean-719-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-719-join   
        Label        -print-boolean-719-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-719-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-720-arg1         
        PushF        8.500000                  
        PushF        9.200000                  
        FAdd                                   
        Label        -compare-720-arg2         
        PushF        5.600000                  
        PushF        9.900000                  
        FAdd                                   
        Label        -compare-720-sub          
        FSubtract                              
        JumpFNeg     -compare-720-true         
        Jump         -compare-720-false        
        Label        -compare-720-true         
        PushI        1                         
        Jump         -compare-720-join         
        Label        -compare-720-false        
        PushI        0                         
        Jump         -compare-720-join         
        Label        -compare-720-join         
        JumpTrue     -print-boolean-721-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-721-join   
        Label        -print-boolean-721-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-721-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-722-arg1         
        PushF        3.900000                  
        PushF        5.300000                  
        FAdd                                   
        Label        -compare-722-arg2         
        PushF        4.300000                  
        PushF        4.600000                  
        FAdd                                   
        Label        -compare-722-sub          
        FSubtract                              
        JumpFNeg     -compare-722-true         
        Jump         -compare-722-false        
        Label        -compare-722-true         
        PushI        1                         
        Jump         -compare-722-join         
        Label        -compare-722-false        
        PushI        0                         
        Jump         -compare-722-join         
        Label        -compare-722-join         
        JumpTrue     -print-boolean-723-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-723-join   
        Label        -print-boolean-723-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-723-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-724-arg1         
        PushF        7.200000                  
        PushF        5.000000                  
        FAdd                                   
        Label        -compare-724-arg2         
        PushF        5.200000                  
        PushF        1.500000                  
        FAdd                                   
        Label        -compare-724-sub          
        FSubtract                              
        JumpFNeg     -compare-724-true         
        Jump         -compare-724-false        
        Label        -compare-724-true         
        PushI        1                         
        Jump         -compare-724-join         
        Label        -compare-724-false        
        PushI        0                         
        Jump         -compare-724-join         
        Label        -compare-724-join         
        JumpTrue     -print-boolean-725-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-725-join   
        Label        -print-boolean-725-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-725-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
