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
        Label        -compare-5641-arg1        
        PushF        6.500000                  
        PushF        9.500000                  
        FSubtract                              
        Label        -compare-5641-arg2        
        PushF        4.300000                  
        Label        -compare-5641-sub         
        FSubtract                              
        JumpFPos     -compare-5641-true        
        Jump         -compare-5641-false       
        Label        -compare-5641-true        
        PushI        1                         
        Jump         -compare-5641-join        
        Label        -compare-5641-false       
        PushI        0                         
        Jump         -compare-5641-join        
        Label        -compare-5641-join        
        JumpTrue     -print-boolean-5642-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5642-join  
        Label        -print-boolean-5642-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5642-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5643-arg1        
        PushF        6.800000                  
        PushF        2.600000                  
        FSubtract                              
        Label        -compare-5643-arg2        
        PushF        7.200000                  
        Label        -compare-5643-sub         
        FSubtract                              
        JumpFPos     -compare-5643-true        
        Jump         -compare-5643-false       
        Label        -compare-5643-true        
        PushI        1                         
        Jump         -compare-5643-join        
        Label        -compare-5643-false       
        PushI        0                         
        Jump         -compare-5643-join        
        Label        -compare-5643-join        
        JumpTrue     -print-boolean-5644-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5644-join  
        Label        -print-boolean-5644-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5644-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5645-arg1        
        PushF        8.100000                  
        PushF        3.400000                  
        FSubtract                              
        Label        -compare-5645-arg2        
        PushF        3.000000                  
        Label        -compare-5645-sub         
        FSubtract                              
        JumpFPos     -compare-5645-true        
        Jump         -compare-5645-false       
        Label        -compare-5645-true        
        PushI        1                         
        Jump         -compare-5645-join        
        Label        -compare-5645-false       
        PushI        0                         
        Jump         -compare-5645-join        
        Label        -compare-5645-join        
        JumpTrue     -print-boolean-5646-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5646-join  
        Label        -print-boolean-5646-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5646-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5647-arg1        
        PushF        2.400000                  
        PushF        5.000000                  
        FSubtract                              
        Label        -compare-5647-arg2        
        PushF        1.800000                  
        Label        -compare-5647-sub         
        FSubtract                              
        JumpFPos     -compare-5647-true        
        Jump         -compare-5647-false       
        Label        -compare-5647-true        
        PushI        1                         
        Jump         -compare-5647-join        
        Label        -compare-5647-false       
        PushI        0                         
        Jump         -compare-5647-join        
        Label        -compare-5647-join        
        JumpTrue     -print-boolean-5648-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5648-join  
        Label        -print-boolean-5648-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5648-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5649-arg1        
        PushF        6.900000                  
        PushF        6.500000                  
        FSubtract                              
        Label        -compare-5649-arg2        
        PushF        6.900000                  
        Label        -compare-5649-sub         
        FSubtract                              
        JumpFPos     -compare-5649-true        
        Jump         -compare-5649-false       
        Label        -compare-5649-true        
        PushI        1                         
        Jump         -compare-5649-join        
        Label        -compare-5649-false       
        PushI        0                         
        Jump         -compare-5649-join        
        Label        -compare-5649-join        
        JumpTrue     -print-boolean-5650-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5650-join  
        Label        -print-boolean-5650-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5650-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5651-arg1        
        PushF        8.000000                  
        PushF        7.800000                  
        FSubtract                              
        Label        -compare-5651-arg2        
        PushF        4.500000                  
        Label        -compare-5651-sub         
        FSubtract                              
        JumpFPos     -compare-5651-true        
        Jump         -compare-5651-false       
        Label        -compare-5651-true        
        PushI        1                         
        Jump         -compare-5651-join        
        Label        -compare-5651-false       
        PushI        0                         
        Jump         -compare-5651-join        
        Label        -compare-5651-join        
        JumpTrue     -print-boolean-5652-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5652-join  
        Label        -print-boolean-5652-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5652-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5653-arg1        
        PushF        4.200000                  
        PushF        8.800000                  
        FSubtract                              
        Label        -compare-5653-arg2        
        PushF        1.900000                  
        Label        -compare-5653-sub         
        FSubtract                              
        JumpFPos     -compare-5653-true        
        Jump         -compare-5653-false       
        Label        -compare-5653-true        
        PushI        1                         
        Jump         -compare-5653-join        
        Label        -compare-5653-false       
        PushI        0                         
        Jump         -compare-5653-join        
        Label        -compare-5653-join        
        JumpTrue     -print-boolean-5654-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5654-join  
        Label        -print-boolean-5654-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5654-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5655-arg1        
        PushF        6.100000                  
        PushF        4.800000                  
        FSubtract                              
        Label        -compare-5655-arg2        
        PushF        1.800000                  
        Label        -compare-5655-sub         
        FSubtract                              
        JumpFPos     -compare-5655-true        
        Jump         -compare-5655-false       
        Label        -compare-5655-true        
        PushI        1                         
        Jump         -compare-5655-join        
        Label        -compare-5655-false       
        PushI        0                         
        Jump         -compare-5655-join        
        Label        -compare-5655-join        
        JumpTrue     -print-boolean-5656-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5656-join  
        Label        -print-boolean-5656-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5656-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5657-arg1        
        PushF        8.800000                  
        PushF        6.200000                  
        FSubtract                              
        Label        -compare-5657-arg2        
        PushF        9.900000                  
        Label        -compare-5657-sub         
        FSubtract                              
        JumpFPos     -compare-5657-true        
        Jump         -compare-5657-false       
        Label        -compare-5657-true        
        PushI        1                         
        Jump         -compare-5657-join        
        Label        -compare-5657-false       
        PushI        0                         
        Jump         -compare-5657-join        
        Label        -compare-5657-join        
        JumpTrue     -print-boolean-5658-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5658-join  
        Label        -print-boolean-5658-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5658-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5659-arg1        
        PushF        9.500000                  
        PushF        8.900000                  
        FSubtract                              
        Label        -compare-5659-arg2        
        PushF        3.700000                  
        Label        -compare-5659-sub         
        FSubtract                              
        JumpFPos     -compare-5659-true        
        Jump         -compare-5659-false       
        Label        -compare-5659-true        
        PushI        1                         
        Jump         -compare-5659-join        
        Label        -compare-5659-false       
        PushI        0                         
        Jump         -compare-5659-join        
        Label        -compare-5659-join        
        JumpTrue     -print-boolean-5660-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5660-join  
        Label        -print-boolean-5660-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5660-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5661-arg1        
        PushF        8.800000                  
        PushF        6.000000                  
        FSubtract                              
        Label        -compare-5661-arg2        
        PushF        8.200000                  
        Label        -compare-5661-sub         
        FSubtract                              
        JumpFPos     -compare-5661-true        
        Jump         -compare-5661-false       
        Label        -compare-5661-true        
        PushI        1                         
        Jump         -compare-5661-join        
        Label        -compare-5661-false       
        PushI        0                         
        Jump         -compare-5661-join        
        Label        -compare-5661-join        
        JumpTrue     -print-boolean-5662-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5662-join  
        Label        -print-boolean-5662-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5662-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5663-arg1        
        PushF        5.900000                  
        PushF        2.400000                  
        FSubtract                              
        Label        -compare-5663-arg2        
        PushF        1.100000                  
        Label        -compare-5663-sub         
        FSubtract                              
        JumpFPos     -compare-5663-true        
        Jump         -compare-5663-false       
        Label        -compare-5663-true        
        PushI        1                         
        Jump         -compare-5663-join        
        Label        -compare-5663-false       
        PushI        0                         
        Jump         -compare-5663-join        
        Label        -compare-5663-join        
        JumpTrue     -print-boolean-5664-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5664-join  
        Label        -print-boolean-5664-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5664-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5665-arg1        
        PushF        8.800000                  
        Label        -compare-5665-arg2        
        PushF        7.200000                  
        PushF        2.800000                  
        FSubtract                              
        Label        -compare-5665-sub         
        FSubtract                              
        JumpFPos     -compare-5665-true        
        Jump         -compare-5665-false       
        Label        -compare-5665-true        
        PushI        1                         
        Jump         -compare-5665-join        
        Label        -compare-5665-false       
        PushI        0                         
        Jump         -compare-5665-join        
        Label        -compare-5665-join        
        JumpTrue     -print-boolean-5666-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5666-join  
        Label        -print-boolean-5666-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5666-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5667-arg1        
        PushF        8.500000                  
        Label        -compare-5667-arg2        
        PushF        4.500000                  
        PushF        8.900000                  
        FSubtract                              
        Label        -compare-5667-sub         
        FSubtract                              
        JumpFPos     -compare-5667-true        
        Jump         -compare-5667-false       
        Label        -compare-5667-true        
        PushI        1                         
        Jump         -compare-5667-join        
        Label        -compare-5667-false       
        PushI        0                         
        Jump         -compare-5667-join        
        Label        -compare-5667-join        
        JumpTrue     -print-boolean-5668-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5668-join  
        Label        -print-boolean-5668-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5668-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5669-arg1        
        PushF        6.800000                  
        Label        -compare-5669-arg2        
        PushF        9.800000                  
        PushF        6.300000                  
        FSubtract                              
        Label        -compare-5669-sub         
        FSubtract                              
        JumpFPos     -compare-5669-true        
        Jump         -compare-5669-false       
        Label        -compare-5669-true        
        PushI        1                         
        Jump         -compare-5669-join        
        Label        -compare-5669-false       
        PushI        0                         
        Jump         -compare-5669-join        
        Label        -compare-5669-join        
        JumpTrue     -print-boolean-5670-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5670-join  
        Label        -print-boolean-5670-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5670-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5671-arg1        
        PushF        1.500000                  
        Label        -compare-5671-arg2        
        PushF        4.000000                  
        PushF        8.700000                  
        FSubtract                              
        Label        -compare-5671-sub         
        FSubtract                              
        JumpFPos     -compare-5671-true        
        Jump         -compare-5671-false       
        Label        -compare-5671-true        
        PushI        1                         
        Jump         -compare-5671-join        
        Label        -compare-5671-false       
        PushI        0                         
        Jump         -compare-5671-join        
        Label        -compare-5671-join        
        JumpTrue     -print-boolean-5672-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5672-join  
        Label        -print-boolean-5672-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5672-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5673-arg1        
        PushF        4.300000                  
        Label        -compare-5673-arg2        
        PushF        2.700000                  
        PushF        6.200000                  
        FSubtract                              
        Label        -compare-5673-sub         
        FSubtract                              
        JumpFPos     -compare-5673-true        
        Jump         -compare-5673-false       
        Label        -compare-5673-true        
        PushI        1                         
        Jump         -compare-5673-join        
        Label        -compare-5673-false       
        PushI        0                         
        Jump         -compare-5673-join        
        Label        -compare-5673-join        
        JumpTrue     -print-boolean-5674-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5674-join  
        Label        -print-boolean-5674-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5674-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5675-arg1        
        PushF        3.100000                  
        Label        -compare-5675-arg2        
        PushF        9.400000                  
        PushF        3.800000                  
        FSubtract                              
        Label        -compare-5675-sub         
        FSubtract                              
        JumpFPos     -compare-5675-true        
        Jump         -compare-5675-false       
        Label        -compare-5675-true        
        PushI        1                         
        Jump         -compare-5675-join        
        Label        -compare-5675-false       
        PushI        0                         
        Jump         -compare-5675-join        
        Label        -compare-5675-join        
        JumpTrue     -print-boolean-5676-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5676-join  
        Label        -print-boolean-5676-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5676-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5677-arg1        
        PushF        2.000000                  
        Label        -compare-5677-arg2        
        PushF        4.100000                  
        PushF        6.600000                  
        FSubtract                              
        Label        -compare-5677-sub         
        FSubtract                              
        JumpFPos     -compare-5677-true        
        Jump         -compare-5677-false       
        Label        -compare-5677-true        
        PushI        1                         
        Jump         -compare-5677-join        
        Label        -compare-5677-false       
        PushI        0                         
        Jump         -compare-5677-join        
        Label        -compare-5677-join        
        JumpTrue     -print-boolean-5678-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5678-join  
        Label        -print-boolean-5678-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5678-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5679-arg1        
        PushF        8.400000                  
        Label        -compare-5679-arg2        
        PushF        7.000000                  
        PushF        3.100000                  
        FSubtract                              
        Label        -compare-5679-sub         
        FSubtract                              
        JumpFPos     -compare-5679-true        
        Jump         -compare-5679-false       
        Label        -compare-5679-true        
        PushI        1                         
        Jump         -compare-5679-join        
        Label        -compare-5679-false       
        PushI        0                         
        Jump         -compare-5679-join        
        Label        -compare-5679-join        
        JumpTrue     -print-boolean-5680-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5680-join  
        Label        -print-boolean-5680-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5680-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5681-arg1        
        PushF        7.700000                  
        Label        -compare-5681-arg2        
        PushF        1.400000                  
        PushF        1.900000                  
        FSubtract                              
        Label        -compare-5681-sub         
        FSubtract                              
        JumpFPos     -compare-5681-true        
        Jump         -compare-5681-false       
        Label        -compare-5681-true        
        PushI        1                         
        Jump         -compare-5681-join        
        Label        -compare-5681-false       
        PushI        0                         
        Jump         -compare-5681-join        
        Label        -compare-5681-join        
        JumpTrue     -print-boolean-5682-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5682-join  
        Label        -print-boolean-5682-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5682-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5683-arg1        
        PushF        3.100000                  
        Label        -compare-5683-arg2        
        PushF        7.500000                  
        PushF        5.800000                  
        FSubtract                              
        Label        -compare-5683-sub         
        FSubtract                              
        JumpFPos     -compare-5683-true        
        Jump         -compare-5683-false       
        Label        -compare-5683-true        
        PushI        1                         
        Jump         -compare-5683-join        
        Label        -compare-5683-false       
        PushI        0                         
        Jump         -compare-5683-join        
        Label        -compare-5683-join        
        JumpTrue     -print-boolean-5684-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5684-join  
        Label        -print-boolean-5684-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5684-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5685-arg1        
        PushF        1.200000                  
        Label        -compare-5685-arg2        
        PushF        9.000000                  
        PushF        1.300000                  
        FSubtract                              
        Label        -compare-5685-sub         
        FSubtract                              
        JumpFPos     -compare-5685-true        
        Jump         -compare-5685-false       
        Label        -compare-5685-true        
        PushI        1                         
        Jump         -compare-5685-join        
        Label        -compare-5685-false       
        PushI        0                         
        Jump         -compare-5685-join        
        Label        -compare-5685-join        
        JumpTrue     -print-boolean-5686-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5686-join  
        Label        -print-boolean-5686-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5686-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5687-arg1        
        PushF        5.500000                  
        Label        -compare-5687-arg2        
        PushF        8.300000                  
        PushF        9.600000                  
        FSubtract                              
        Label        -compare-5687-sub         
        FSubtract                              
        JumpFPos     -compare-5687-true        
        Jump         -compare-5687-false       
        Label        -compare-5687-true        
        PushI        1                         
        Jump         -compare-5687-join        
        Label        -compare-5687-false       
        PushI        0                         
        Jump         -compare-5687-join        
        Label        -compare-5687-join        
        JumpTrue     -print-boolean-5688-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5688-join  
        Label        -print-boolean-5688-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5688-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5689-arg1        
        PushF        4.400000                  
        PushF        8.000000                  
        FSubtract                              
        Label        -compare-5689-arg2        
        PushF        8.200000                  
        PushF        2.600000                  
        FSubtract                              
        Label        -compare-5689-sub         
        FSubtract                              
        JumpFPos     -compare-5689-true        
        Jump         -compare-5689-false       
        Label        -compare-5689-true        
        PushI        1                         
        Jump         -compare-5689-join        
        Label        -compare-5689-false       
        PushI        0                         
        Jump         -compare-5689-join        
        Label        -compare-5689-join        
        JumpTrue     -print-boolean-5690-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5690-join  
        Label        -print-boolean-5690-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5690-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5691-arg1        
        PushF        4.200000                  
        PushF        7.300000                  
        FSubtract                              
        Label        -compare-5691-arg2        
        PushF        5.800000                  
        PushF        5.800000                  
        FSubtract                              
        Label        -compare-5691-sub         
        FSubtract                              
        JumpFPos     -compare-5691-true        
        Jump         -compare-5691-false       
        Label        -compare-5691-true        
        PushI        1                         
        Jump         -compare-5691-join        
        Label        -compare-5691-false       
        PushI        0                         
        Jump         -compare-5691-join        
        Label        -compare-5691-join        
        JumpTrue     -print-boolean-5692-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5692-join  
        Label        -print-boolean-5692-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5692-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5693-arg1        
        PushF        3.300000                  
        PushF        9.000000                  
        FSubtract                              
        Label        -compare-5693-arg2        
        PushF        4.200000                  
        PushF        2.000000                  
        FSubtract                              
        Label        -compare-5693-sub         
        FSubtract                              
        JumpFPos     -compare-5693-true        
        Jump         -compare-5693-false       
        Label        -compare-5693-true        
        PushI        1                         
        Jump         -compare-5693-join        
        Label        -compare-5693-false       
        PushI        0                         
        Jump         -compare-5693-join        
        Label        -compare-5693-join        
        JumpTrue     -print-boolean-5694-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5694-join  
        Label        -print-boolean-5694-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5694-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5695-arg1        
        PushF        8.700000                  
        PushF        3.800000                  
        FSubtract                              
        Label        -compare-5695-arg2        
        PushF        6.700000                  
        PushF        7.000000                  
        FSubtract                              
        Label        -compare-5695-sub         
        FSubtract                              
        JumpFPos     -compare-5695-true        
        Jump         -compare-5695-false       
        Label        -compare-5695-true        
        PushI        1                         
        Jump         -compare-5695-join        
        Label        -compare-5695-false       
        PushI        0                         
        Jump         -compare-5695-join        
        Label        -compare-5695-join        
        JumpTrue     -print-boolean-5696-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5696-join  
        Label        -print-boolean-5696-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5696-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5697-arg1        
        PushF        4.900000                  
        PushF        6.600000                  
        FSubtract                              
        Label        -compare-5697-arg2        
        PushF        8.300000                  
        PushF        4.900000                  
        FSubtract                              
        Label        -compare-5697-sub         
        FSubtract                              
        JumpFPos     -compare-5697-true        
        Jump         -compare-5697-false       
        Label        -compare-5697-true        
        PushI        1                         
        Jump         -compare-5697-join        
        Label        -compare-5697-false       
        PushI        0                         
        Jump         -compare-5697-join        
        Label        -compare-5697-join        
        JumpTrue     -print-boolean-5698-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5698-join  
        Label        -print-boolean-5698-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5698-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5699-arg1        
        PushF        6.700000                  
        PushF        6.800000                  
        FSubtract                              
        Label        -compare-5699-arg2        
        PushF        5.100000                  
        PushF        7.700000                  
        FSubtract                              
        Label        -compare-5699-sub         
        FSubtract                              
        JumpFPos     -compare-5699-true        
        Jump         -compare-5699-false       
        Label        -compare-5699-true        
        PushI        1                         
        Jump         -compare-5699-join        
        Label        -compare-5699-false       
        PushI        0                         
        Jump         -compare-5699-join        
        Label        -compare-5699-join        
        JumpTrue     -print-boolean-5700-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5700-join  
        Label        -print-boolean-5700-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5700-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5701-arg1        
        PushF        5.200000                  
        PushF        4.500000                  
        FSubtract                              
        Label        -compare-5701-arg2        
        PushF        1.500000                  
        PushF        2.300000                  
        FSubtract                              
        Label        -compare-5701-sub         
        FSubtract                              
        JumpFPos     -compare-5701-true        
        Jump         -compare-5701-false       
        Label        -compare-5701-true        
        PushI        1                         
        Jump         -compare-5701-join        
        Label        -compare-5701-false       
        PushI        0                         
        Jump         -compare-5701-join        
        Label        -compare-5701-join        
        JumpTrue     -print-boolean-5702-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5702-join  
        Label        -print-boolean-5702-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5702-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5703-arg1        
        PushF        2.700000                  
        PushF        6.000000                  
        FSubtract                              
        Label        -compare-5703-arg2        
        PushF        2.800000                  
        PushF        7.200000                  
        FSubtract                              
        Label        -compare-5703-sub         
        FSubtract                              
        JumpFPos     -compare-5703-true        
        Jump         -compare-5703-false       
        Label        -compare-5703-true        
        PushI        1                         
        Jump         -compare-5703-join        
        Label        -compare-5703-false       
        PushI        0                         
        Jump         -compare-5703-join        
        Label        -compare-5703-join        
        JumpTrue     -print-boolean-5704-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5704-join  
        Label        -print-boolean-5704-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5704-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5705-arg1        
        PushF        1.400000                  
        PushF        5.400000                  
        FSubtract                              
        Label        -compare-5705-arg2        
        PushF        1.900000                  
        PushF        1.300000                  
        FSubtract                              
        Label        -compare-5705-sub         
        FSubtract                              
        JumpFPos     -compare-5705-true        
        Jump         -compare-5705-false       
        Label        -compare-5705-true        
        PushI        1                         
        Jump         -compare-5705-join        
        Label        -compare-5705-false       
        PushI        0                         
        Jump         -compare-5705-join        
        Label        -compare-5705-join        
        JumpTrue     -print-boolean-5706-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5706-join  
        Label        -print-boolean-5706-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5706-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5707-arg1        
        PushF        7.200000                  
        PushF        5.700000                  
        FSubtract                              
        Label        -compare-5707-arg2        
        PushF        4.800000                  
        PushF        1.000000                  
        FSubtract                              
        Label        -compare-5707-sub         
        FSubtract                              
        JumpFPos     -compare-5707-true        
        Jump         -compare-5707-false       
        Label        -compare-5707-true        
        PushI        1                         
        Jump         -compare-5707-join        
        Label        -compare-5707-false       
        PushI        0                         
        Jump         -compare-5707-join        
        Label        -compare-5707-join        
        JumpTrue     -print-boolean-5708-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5708-join  
        Label        -print-boolean-5708-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5708-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5709-arg1        
        PushF        9.400000                  
        PushF        7.800000                  
        FSubtract                              
        Label        -compare-5709-arg2        
        PushF        7.100000                  
        PushF        9.500000                  
        FSubtract                              
        Label        -compare-5709-sub         
        FSubtract                              
        JumpFPos     -compare-5709-true        
        Jump         -compare-5709-false       
        Label        -compare-5709-true        
        PushI        1                         
        Jump         -compare-5709-join        
        Label        -compare-5709-false       
        PushI        0                         
        Jump         -compare-5709-join        
        Label        -compare-5709-join        
        JumpTrue     -print-boolean-5710-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5710-join  
        Label        -print-boolean-5710-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5710-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5711-arg1        
        PushF        5.300000                  
        PushF        1.400000                  
        FSubtract                              
        Label        -compare-5711-arg2        
        PushF        4.500000                  
        PushF        1.600000                  
        FSubtract                              
        Label        -compare-5711-sub         
        FSubtract                              
        JumpFPos     -compare-5711-true        
        Jump         -compare-5711-false       
        Label        -compare-5711-true        
        PushI        1                         
        Jump         -compare-5711-join        
        Label        -compare-5711-false       
        PushI        0                         
        Jump         -compare-5711-join        
        Label        -compare-5711-join        
        JumpTrue     -print-boolean-5712-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5712-join  
        Label        -print-boolean-5712-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5712-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
