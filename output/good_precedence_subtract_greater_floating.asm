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
        Label        -compare-5654-arg1        
        PushF        6.500000                  
        PushF        9.500000                  
        FSubtract                              
        Label        -compare-5654-arg2        
        PushF        4.300000                  
        Label        -compare-5654-sub         
        FSubtract                              
        JumpFPos     -compare-5654-true        
        Jump         -compare-5654-false       
        Label        -compare-5654-true        
        PushI        1                         
        Jump         -compare-5654-join        
        Label        -compare-5654-false       
        PushI        0                         
        Jump         -compare-5654-join        
        Label        -compare-5654-join        
        JumpTrue     -print-boolean-5655-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5655-join  
        Label        -print-boolean-5655-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5655-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5656-arg1        
        PushF        6.800000                  
        PushF        2.600000                  
        FSubtract                              
        Label        -compare-5656-arg2        
        PushF        7.200000                  
        Label        -compare-5656-sub         
        FSubtract                              
        JumpFPos     -compare-5656-true        
        Jump         -compare-5656-false       
        Label        -compare-5656-true        
        PushI        1                         
        Jump         -compare-5656-join        
        Label        -compare-5656-false       
        PushI        0                         
        Jump         -compare-5656-join        
        Label        -compare-5656-join        
        JumpTrue     -print-boolean-5657-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5657-join  
        Label        -print-boolean-5657-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5657-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5658-arg1        
        PushF        8.100000                  
        PushF        3.400000                  
        FSubtract                              
        Label        -compare-5658-arg2        
        PushF        3.000000                  
        Label        -compare-5658-sub         
        FSubtract                              
        JumpFPos     -compare-5658-true        
        Jump         -compare-5658-false       
        Label        -compare-5658-true        
        PushI        1                         
        Jump         -compare-5658-join        
        Label        -compare-5658-false       
        PushI        0                         
        Jump         -compare-5658-join        
        Label        -compare-5658-join        
        JumpTrue     -print-boolean-5659-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5659-join  
        Label        -print-boolean-5659-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5659-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5660-arg1        
        PushF        2.400000                  
        PushF        5.000000                  
        FSubtract                              
        Label        -compare-5660-arg2        
        PushF        1.800000                  
        Label        -compare-5660-sub         
        FSubtract                              
        JumpFPos     -compare-5660-true        
        Jump         -compare-5660-false       
        Label        -compare-5660-true        
        PushI        1                         
        Jump         -compare-5660-join        
        Label        -compare-5660-false       
        PushI        0                         
        Jump         -compare-5660-join        
        Label        -compare-5660-join        
        JumpTrue     -print-boolean-5661-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5661-join  
        Label        -print-boolean-5661-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5661-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5662-arg1        
        PushF        6.900000                  
        PushF        6.500000                  
        FSubtract                              
        Label        -compare-5662-arg2        
        PushF        6.900000                  
        Label        -compare-5662-sub         
        FSubtract                              
        JumpFPos     -compare-5662-true        
        Jump         -compare-5662-false       
        Label        -compare-5662-true        
        PushI        1                         
        Jump         -compare-5662-join        
        Label        -compare-5662-false       
        PushI        0                         
        Jump         -compare-5662-join        
        Label        -compare-5662-join        
        JumpTrue     -print-boolean-5663-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5663-join  
        Label        -print-boolean-5663-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5663-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5664-arg1        
        PushF        8.000000                  
        PushF        7.800000                  
        FSubtract                              
        Label        -compare-5664-arg2        
        PushF        4.500000                  
        Label        -compare-5664-sub         
        FSubtract                              
        JumpFPos     -compare-5664-true        
        Jump         -compare-5664-false       
        Label        -compare-5664-true        
        PushI        1                         
        Jump         -compare-5664-join        
        Label        -compare-5664-false       
        PushI        0                         
        Jump         -compare-5664-join        
        Label        -compare-5664-join        
        JumpTrue     -print-boolean-5665-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5665-join  
        Label        -print-boolean-5665-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5665-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5666-arg1        
        PushF        4.200000                  
        PushF        8.800000                  
        FSubtract                              
        Label        -compare-5666-arg2        
        PushF        1.900000                  
        Label        -compare-5666-sub         
        FSubtract                              
        JumpFPos     -compare-5666-true        
        Jump         -compare-5666-false       
        Label        -compare-5666-true        
        PushI        1                         
        Jump         -compare-5666-join        
        Label        -compare-5666-false       
        PushI        0                         
        Jump         -compare-5666-join        
        Label        -compare-5666-join        
        JumpTrue     -print-boolean-5667-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5667-join  
        Label        -print-boolean-5667-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5667-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5668-arg1        
        PushF        6.100000                  
        PushF        4.800000                  
        FSubtract                              
        Label        -compare-5668-arg2        
        PushF        1.800000                  
        Label        -compare-5668-sub         
        FSubtract                              
        JumpFPos     -compare-5668-true        
        Jump         -compare-5668-false       
        Label        -compare-5668-true        
        PushI        1                         
        Jump         -compare-5668-join        
        Label        -compare-5668-false       
        PushI        0                         
        Jump         -compare-5668-join        
        Label        -compare-5668-join        
        JumpTrue     -print-boolean-5669-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5669-join  
        Label        -print-boolean-5669-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5669-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5670-arg1        
        PushF        8.800000                  
        PushF        6.200000                  
        FSubtract                              
        Label        -compare-5670-arg2        
        PushF        9.900000                  
        Label        -compare-5670-sub         
        FSubtract                              
        JumpFPos     -compare-5670-true        
        Jump         -compare-5670-false       
        Label        -compare-5670-true        
        PushI        1                         
        Jump         -compare-5670-join        
        Label        -compare-5670-false       
        PushI        0                         
        Jump         -compare-5670-join        
        Label        -compare-5670-join        
        JumpTrue     -print-boolean-5671-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5671-join  
        Label        -print-boolean-5671-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5671-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5672-arg1        
        PushF        9.500000                  
        PushF        8.900000                  
        FSubtract                              
        Label        -compare-5672-arg2        
        PushF        3.700000                  
        Label        -compare-5672-sub         
        FSubtract                              
        JumpFPos     -compare-5672-true        
        Jump         -compare-5672-false       
        Label        -compare-5672-true        
        PushI        1                         
        Jump         -compare-5672-join        
        Label        -compare-5672-false       
        PushI        0                         
        Jump         -compare-5672-join        
        Label        -compare-5672-join        
        JumpTrue     -print-boolean-5673-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5673-join  
        Label        -print-boolean-5673-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5673-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5674-arg1        
        PushF        8.800000                  
        PushF        6.000000                  
        FSubtract                              
        Label        -compare-5674-arg2        
        PushF        8.200000                  
        Label        -compare-5674-sub         
        FSubtract                              
        JumpFPos     -compare-5674-true        
        Jump         -compare-5674-false       
        Label        -compare-5674-true        
        PushI        1                         
        Jump         -compare-5674-join        
        Label        -compare-5674-false       
        PushI        0                         
        Jump         -compare-5674-join        
        Label        -compare-5674-join        
        JumpTrue     -print-boolean-5675-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5675-join  
        Label        -print-boolean-5675-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5675-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5676-arg1        
        PushF        5.900000                  
        PushF        2.400000                  
        FSubtract                              
        Label        -compare-5676-arg2        
        PushF        1.100000                  
        Label        -compare-5676-sub         
        FSubtract                              
        JumpFPos     -compare-5676-true        
        Jump         -compare-5676-false       
        Label        -compare-5676-true        
        PushI        1                         
        Jump         -compare-5676-join        
        Label        -compare-5676-false       
        PushI        0                         
        Jump         -compare-5676-join        
        Label        -compare-5676-join        
        JumpTrue     -print-boolean-5677-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5677-join  
        Label        -print-boolean-5677-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5677-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5678-arg1        
        PushF        8.800000                  
        Label        -compare-5678-arg2        
        PushF        7.200000                  
        PushF        2.800000                  
        FSubtract                              
        Label        -compare-5678-sub         
        FSubtract                              
        JumpFPos     -compare-5678-true        
        Jump         -compare-5678-false       
        Label        -compare-5678-true        
        PushI        1                         
        Jump         -compare-5678-join        
        Label        -compare-5678-false       
        PushI        0                         
        Jump         -compare-5678-join        
        Label        -compare-5678-join        
        JumpTrue     -print-boolean-5679-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5679-join  
        Label        -print-boolean-5679-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5679-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5680-arg1        
        PushF        8.500000                  
        Label        -compare-5680-arg2        
        PushF        4.500000                  
        PushF        8.900000                  
        FSubtract                              
        Label        -compare-5680-sub         
        FSubtract                              
        JumpFPos     -compare-5680-true        
        Jump         -compare-5680-false       
        Label        -compare-5680-true        
        PushI        1                         
        Jump         -compare-5680-join        
        Label        -compare-5680-false       
        PushI        0                         
        Jump         -compare-5680-join        
        Label        -compare-5680-join        
        JumpTrue     -print-boolean-5681-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5681-join  
        Label        -print-boolean-5681-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5681-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5682-arg1        
        PushF        6.800000                  
        Label        -compare-5682-arg2        
        PushF        9.800000                  
        PushF        6.300000                  
        FSubtract                              
        Label        -compare-5682-sub         
        FSubtract                              
        JumpFPos     -compare-5682-true        
        Jump         -compare-5682-false       
        Label        -compare-5682-true        
        PushI        1                         
        Jump         -compare-5682-join        
        Label        -compare-5682-false       
        PushI        0                         
        Jump         -compare-5682-join        
        Label        -compare-5682-join        
        JumpTrue     -print-boolean-5683-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5683-join  
        Label        -print-boolean-5683-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5683-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5684-arg1        
        PushF        1.500000                  
        Label        -compare-5684-arg2        
        PushF        4.000000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-5684-sub         
        FSubtract                              
        JumpFPos     -compare-5684-true        
        Jump         -compare-5684-false       
        Label        -compare-5684-true        
        PushI        1                         
        Jump         -compare-5684-join        
        Label        -compare-5684-false       
        PushI        0                         
        Jump         -compare-5684-join        
        Label        -compare-5684-join        
        JumpTrue     -print-boolean-5685-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5685-join  
        Label        -print-boolean-5685-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5685-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5686-arg1        
        PushF        4.300000                  
        Label        -compare-5686-arg2        
        PushF        2.700000                  
        PushF        6.200000                  
        FSubtract                              
        Label        -compare-5686-sub         
        FSubtract                              
        JumpFPos     -compare-5686-true        
        Jump         -compare-5686-false       
        Label        -compare-5686-true        
        PushI        1                         
        Jump         -compare-5686-join        
        Label        -compare-5686-false       
        PushI        0                         
        Jump         -compare-5686-join        
        Label        -compare-5686-join        
        JumpTrue     -print-boolean-5687-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5687-join  
        Label        -print-boolean-5687-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5687-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5688-arg1        
        PushF        3.100000                  
        Label        -compare-5688-arg2        
        PushF        9.400000                  
        PushF        3.800000                  
        FSubtract                              
        Label        -compare-5688-sub         
        FSubtract                              
        JumpFPos     -compare-5688-true        
        Jump         -compare-5688-false       
        Label        -compare-5688-true        
        PushI        1                         
        Jump         -compare-5688-join        
        Label        -compare-5688-false       
        PushI        0                         
        Jump         -compare-5688-join        
        Label        -compare-5688-join        
        JumpTrue     -print-boolean-5689-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5689-join  
        Label        -print-boolean-5689-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5689-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5690-arg1        
        PushF        2.000000                  
        Label        -compare-5690-arg2        
        PushF        4.100000                  
        PushF        6.600000                  
        FSubtract                              
        Label        -compare-5690-sub         
        FSubtract                              
        JumpFPos     -compare-5690-true        
        Jump         -compare-5690-false       
        Label        -compare-5690-true        
        PushI        1                         
        Jump         -compare-5690-join        
        Label        -compare-5690-false       
        PushI        0                         
        Jump         -compare-5690-join        
        Label        -compare-5690-join        
        JumpTrue     -print-boolean-5691-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5691-join  
        Label        -print-boolean-5691-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5691-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5692-arg1        
        PushF        8.400000                  
        Label        -compare-5692-arg2        
        PushF        7.000000                  
        PushF        3.100000                  
        FSubtract                              
        Label        -compare-5692-sub         
        FSubtract                              
        JumpFPos     -compare-5692-true        
        Jump         -compare-5692-false       
        Label        -compare-5692-true        
        PushI        1                         
        Jump         -compare-5692-join        
        Label        -compare-5692-false       
        PushI        0                         
        Jump         -compare-5692-join        
        Label        -compare-5692-join        
        JumpTrue     -print-boolean-5693-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5693-join  
        Label        -print-boolean-5693-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5693-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5694-arg1        
        PushF        7.700000                  
        Label        -compare-5694-arg2        
        PushF        1.400000                  
        PushF        1.900000                  
        FSubtract                              
        Label        -compare-5694-sub         
        FSubtract                              
        JumpFPos     -compare-5694-true        
        Jump         -compare-5694-false       
        Label        -compare-5694-true        
        PushI        1                         
        Jump         -compare-5694-join        
        Label        -compare-5694-false       
        PushI        0                         
        Jump         -compare-5694-join        
        Label        -compare-5694-join        
        JumpTrue     -print-boolean-5695-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5695-join  
        Label        -print-boolean-5695-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5695-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5696-arg1        
        PushF        3.100000                  
        Label        -compare-5696-arg2        
        PushF        7.500000                  
        PushF        5.800000                  
        FSubtract                              
        Label        -compare-5696-sub         
        FSubtract                              
        JumpFPos     -compare-5696-true        
        Jump         -compare-5696-false       
        Label        -compare-5696-true        
        PushI        1                         
        Jump         -compare-5696-join        
        Label        -compare-5696-false       
        PushI        0                         
        Jump         -compare-5696-join        
        Label        -compare-5696-join        
        JumpTrue     -print-boolean-5697-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5697-join  
        Label        -print-boolean-5697-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5697-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5698-arg1        
        PushF        1.200000                  
        Label        -compare-5698-arg2        
        PushF        9.000000                  
        PushF        1.300000                  
        FSubtract                              
        Label        -compare-5698-sub         
        FSubtract                              
        JumpFPos     -compare-5698-true        
        Jump         -compare-5698-false       
        Label        -compare-5698-true        
        PushI        1                         
        Jump         -compare-5698-join        
        Label        -compare-5698-false       
        PushI        0                         
        Jump         -compare-5698-join        
        Label        -compare-5698-join        
        JumpTrue     -print-boolean-5699-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5699-join  
        Label        -print-boolean-5699-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5699-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5700-arg1        
        PushF        5.500000                  
        Label        -compare-5700-arg2        
        PushF        8.300000                  
        PushF        9.600000                  
        FSubtract                              
        Label        -compare-5700-sub         
        FSubtract                              
        JumpFPos     -compare-5700-true        
        Jump         -compare-5700-false       
        Label        -compare-5700-true        
        PushI        1                         
        Jump         -compare-5700-join        
        Label        -compare-5700-false       
        PushI        0                         
        Jump         -compare-5700-join        
        Label        -compare-5700-join        
        JumpTrue     -print-boolean-5701-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5701-join  
        Label        -print-boolean-5701-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5701-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5702-arg1        
        PushF        4.400000                  
        PushF        8.000000                  
        FSubtract                              
        Label        -compare-5702-arg2        
        PushF        8.200000                  
        PushF        2.600000                  
        FSubtract                              
        Label        -compare-5702-sub         
        FSubtract                              
        JumpFPos     -compare-5702-true        
        Jump         -compare-5702-false       
        Label        -compare-5702-true        
        PushI        1                         
        Jump         -compare-5702-join        
        Label        -compare-5702-false       
        PushI        0                         
        Jump         -compare-5702-join        
        Label        -compare-5702-join        
        JumpTrue     -print-boolean-5703-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5703-join  
        Label        -print-boolean-5703-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5703-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5704-arg1        
        PushF        4.200000                  
        PushF        7.300000                  
        FSubtract                              
        Label        -compare-5704-arg2        
        PushF        5.800000                  
        PushF        5.800000                  
        FSubtract                              
        Label        -compare-5704-sub         
        FSubtract                              
        JumpFPos     -compare-5704-true        
        Jump         -compare-5704-false       
        Label        -compare-5704-true        
        PushI        1                         
        Jump         -compare-5704-join        
        Label        -compare-5704-false       
        PushI        0                         
        Jump         -compare-5704-join        
        Label        -compare-5704-join        
        JumpTrue     -print-boolean-5705-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5705-join  
        Label        -print-boolean-5705-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5705-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5706-arg1        
        PushF        3.300000                  
        PushF        9.000000                  
        FSubtract                              
        Label        -compare-5706-arg2        
        PushF        4.200000                  
        PushF        2.000000                  
        FSubtract                              
        Label        -compare-5706-sub         
        FSubtract                              
        JumpFPos     -compare-5706-true        
        Jump         -compare-5706-false       
        Label        -compare-5706-true        
        PushI        1                         
        Jump         -compare-5706-join        
        Label        -compare-5706-false       
        PushI        0                         
        Jump         -compare-5706-join        
        Label        -compare-5706-join        
        JumpTrue     -print-boolean-5707-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5707-join  
        Label        -print-boolean-5707-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5707-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5708-arg1        
        PushF        8.700000                  
        PushF        3.800000                  
        FSubtract                              
        Label        -compare-5708-arg2        
        PushF        6.700000                  
        PushF        7.000000                  
        FSubtract                              
        Label        -compare-5708-sub         
        FSubtract                              
        JumpFPos     -compare-5708-true        
        Jump         -compare-5708-false       
        Label        -compare-5708-true        
        PushI        1                         
        Jump         -compare-5708-join        
        Label        -compare-5708-false       
        PushI        0                         
        Jump         -compare-5708-join        
        Label        -compare-5708-join        
        JumpTrue     -print-boolean-5709-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5709-join  
        Label        -print-boolean-5709-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5709-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5710-arg1        
        PushF        4.900000                  
        PushF        6.600000                  
        FSubtract                              
        Label        -compare-5710-arg2        
        PushF        8.300000                  
        PushF        4.900000                  
        FSubtract                              
        Label        -compare-5710-sub         
        FSubtract                              
        JumpFPos     -compare-5710-true        
        Jump         -compare-5710-false       
        Label        -compare-5710-true        
        PushI        1                         
        Jump         -compare-5710-join        
        Label        -compare-5710-false       
        PushI        0                         
        Jump         -compare-5710-join        
        Label        -compare-5710-join        
        JumpTrue     -print-boolean-5711-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5711-join  
        Label        -print-boolean-5711-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5711-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5712-arg1        
        PushF        6.700000                  
        PushF        6.800000                  
        FSubtract                              
        Label        -compare-5712-arg2        
        PushF        5.100000                  
        PushF        7.700000                  
        FSubtract                              
        Label        -compare-5712-sub         
        FSubtract                              
        JumpFPos     -compare-5712-true        
        Jump         -compare-5712-false       
        Label        -compare-5712-true        
        PushI        1                         
        Jump         -compare-5712-join        
        Label        -compare-5712-false       
        PushI        0                         
        Jump         -compare-5712-join        
        Label        -compare-5712-join        
        JumpTrue     -print-boolean-5713-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5713-join  
        Label        -print-boolean-5713-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5713-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5714-arg1        
        PushF        5.200000                  
        PushF        4.500000                  
        FSubtract                              
        Label        -compare-5714-arg2        
        PushF        1.500000                  
        PushF        2.300000                  
        FSubtract                              
        Label        -compare-5714-sub         
        FSubtract                              
        JumpFPos     -compare-5714-true        
        Jump         -compare-5714-false       
        Label        -compare-5714-true        
        PushI        1                         
        Jump         -compare-5714-join        
        Label        -compare-5714-false       
        PushI        0                         
        Jump         -compare-5714-join        
        Label        -compare-5714-join        
        JumpTrue     -print-boolean-5715-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5715-join  
        Label        -print-boolean-5715-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5715-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5716-arg1        
        PushF        2.700000                  
        PushF        6.000000                  
        FSubtract                              
        Label        -compare-5716-arg2        
        PushF        2.800000                  
        PushF        7.200000                  
        FSubtract                              
        Label        -compare-5716-sub         
        FSubtract                              
        JumpFPos     -compare-5716-true        
        Jump         -compare-5716-false       
        Label        -compare-5716-true        
        PushI        1                         
        Jump         -compare-5716-join        
        Label        -compare-5716-false       
        PushI        0                         
        Jump         -compare-5716-join        
        Label        -compare-5716-join        
        JumpTrue     -print-boolean-5717-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5717-join  
        Label        -print-boolean-5717-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5717-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5718-arg1        
        PushF        1.400000                  
        PushF        5.400000                  
        FSubtract                              
        Label        -compare-5718-arg2        
        PushF        1.900000                  
        PushF        1.300000                  
        FSubtract                              
        Label        -compare-5718-sub         
        FSubtract                              
        JumpFPos     -compare-5718-true        
        Jump         -compare-5718-false       
        Label        -compare-5718-true        
        PushI        1                         
        Jump         -compare-5718-join        
        Label        -compare-5718-false       
        PushI        0                         
        Jump         -compare-5718-join        
        Label        -compare-5718-join        
        JumpTrue     -print-boolean-5719-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5719-join  
        Label        -print-boolean-5719-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5719-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5720-arg1        
        PushF        7.200000                  
        PushF        5.700000                  
        FSubtract                              
        Label        -compare-5720-arg2        
        PushF        4.800000                  
        PushF        1.000000                  
        FSubtract                              
        Label        -compare-5720-sub         
        FSubtract                              
        JumpFPos     -compare-5720-true        
        Jump         -compare-5720-false       
        Label        -compare-5720-true        
        PushI        1                         
        Jump         -compare-5720-join        
        Label        -compare-5720-false       
        PushI        0                         
        Jump         -compare-5720-join        
        Label        -compare-5720-join        
        JumpTrue     -print-boolean-5721-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5721-join  
        Label        -print-boolean-5721-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5721-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5722-arg1        
        PushF        9.400000                  
        PushF        7.800000                  
        FSubtract                              
        Label        -compare-5722-arg2        
        PushF        7.100000                  
        PushF        9.500000                  
        FSubtract                              
        Label        -compare-5722-sub         
        FSubtract                              
        JumpFPos     -compare-5722-true        
        Jump         -compare-5722-false       
        Label        -compare-5722-true        
        PushI        1                         
        Jump         -compare-5722-join        
        Label        -compare-5722-false       
        PushI        0                         
        Jump         -compare-5722-join        
        Label        -compare-5722-join        
        JumpTrue     -print-boolean-5723-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5723-join  
        Label        -print-boolean-5723-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5723-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5724-arg1        
        PushF        5.300000                  
        PushF        1.400000                  
        FSubtract                              
        Label        -compare-5724-arg2        
        PushF        4.500000                  
        PushF        1.600000                  
        FSubtract                              
        Label        -compare-5724-sub         
        FSubtract                              
        JumpFPos     -compare-5724-true        
        Jump         -compare-5724-false       
        Label        -compare-5724-true        
        PushI        1                         
        Jump         -compare-5724-join        
        Label        -compare-5724-false       
        PushI        0                         
        Jump         -compare-5724-join        
        Label        -compare-5724-join        
        JumpTrue     -print-boolean-5725-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5725-join  
        Label        -print-boolean-5725-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5725-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
