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
        Label        -compare-366-arg1         
        PushF        7.900000                  
        PushF        9.400000                  
        FAdd                                   
        Label        -compare-366-arg2         
        PushF        5.500000                  
        Label        -compare-366-sub          
        FSubtract                              
        JumpFPos     -compare-366-true         
        Jump         -compare-366-false        
        Label        -compare-366-true         
        PushI        1                         
        Jump         -compare-366-join         
        Label        -compare-366-false        
        PushI        0                         
        Jump         -compare-366-join         
        Label        -compare-366-join         
        JumpTrue     -print-boolean-367-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-367-join   
        Label        -print-boolean-367-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-367-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-368-arg1         
        PushF        3.400000                  
        PushF        2.400000                  
        FAdd                                   
        Label        -compare-368-arg2         
        PushF        8.500000                  
        Label        -compare-368-sub          
        FSubtract                              
        JumpFPos     -compare-368-true         
        Jump         -compare-368-false        
        Label        -compare-368-true         
        PushI        1                         
        Jump         -compare-368-join         
        Label        -compare-368-false        
        PushI        0                         
        Jump         -compare-368-join         
        Label        -compare-368-join         
        JumpTrue     -print-boolean-369-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-369-join   
        Label        -print-boolean-369-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-369-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-370-arg1         
        PushF        6.400000                  
        PushF        2.600000                  
        FAdd                                   
        Label        -compare-370-arg2         
        PushF        4.900000                  
        Label        -compare-370-sub          
        FSubtract                              
        JumpFPos     -compare-370-true         
        Jump         -compare-370-false        
        Label        -compare-370-true         
        PushI        1                         
        Jump         -compare-370-join         
        Label        -compare-370-false        
        PushI        0                         
        Jump         -compare-370-join         
        Label        -compare-370-join         
        JumpTrue     -print-boolean-371-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-371-join   
        Label        -print-boolean-371-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-371-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-372-arg1         
        PushF        4.100000                  
        PushF        1.800000                  
        FAdd                                   
        Label        -compare-372-arg2         
        PushF        8.200000                  
        Label        -compare-372-sub          
        FSubtract                              
        JumpFPos     -compare-372-true         
        Jump         -compare-372-false        
        Label        -compare-372-true         
        PushI        1                         
        Jump         -compare-372-join         
        Label        -compare-372-false        
        PushI        0                         
        Jump         -compare-372-join         
        Label        -compare-372-join         
        JumpTrue     -print-boolean-373-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-373-join   
        Label        -print-boolean-373-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-373-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-374-arg1         
        PushF        9.200000                  
        PushF        3.300000                  
        FAdd                                   
        Label        -compare-374-arg2         
        PushF        7.500000                  
        Label        -compare-374-sub          
        FSubtract                              
        JumpFPos     -compare-374-true         
        Jump         -compare-374-false        
        Label        -compare-374-true         
        PushI        1                         
        Jump         -compare-374-join         
        Label        -compare-374-false        
        PushI        0                         
        Jump         -compare-374-join         
        Label        -compare-374-join         
        JumpTrue     -print-boolean-375-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-375-join   
        Label        -print-boolean-375-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-375-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-376-arg1         
        PushF        3.400000                  
        PushF        5.400000                  
        FAdd                                   
        Label        -compare-376-arg2         
        PushF        1.400000                  
        Label        -compare-376-sub          
        FSubtract                              
        JumpFPos     -compare-376-true         
        Jump         -compare-376-false        
        Label        -compare-376-true         
        PushI        1                         
        Jump         -compare-376-join         
        Label        -compare-376-false        
        PushI        0                         
        Jump         -compare-376-join         
        Label        -compare-376-join         
        JumpTrue     -print-boolean-377-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-377-join   
        Label        -print-boolean-377-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-377-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-378-arg1         
        PushF        2.500000                  
        PushF        2.400000                  
        FAdd                                   
        Label        -compare-378-arg2         
        PushF        6.800000                  
        Label        -compare-378-sub          
        FSubtract                              
        JumpFPos     -compare-378-true         
        Jump         -compare-378-false        
        Label        -compare-378-true         
        PushI        1                         
        Jump         -compare-378-join         
        Label        -compare-378-false        
        PushI        0                         
        Jump         -compare-378-join         
        Label        -compare-378-join         
        JumpTrue     -print-boolean-379-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-379-join   
        Label        -print-boolean-379-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-379-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-380-arg1         
        PushF        6.600000                  
        PushF        5.600000                  
        FAdd                                   
        Label        -compare-380-arg2         
        PushF        4.700000                  
        Label        -compare-380-sub          
        FSubtract                              
        JumpFPos     -compare-380-true         
        Jump         -compare-380-false        
        Label        -compare-380-true         
        PushI        1                         
        Jump         -compare-380-join         
        Label        -compare-380-false        
        PushI        0                         
        Jump         -compare-380-join         
        Label        -compare-380-join         
        JumpTrue     -print-boolean-381-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-381-join   
        Label        -print-boolean-381-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-381-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-382-arg1         
        PushF        3.700000                  
        PushF        2.800000                  
        FAdd                                   
        Label        -compare-382-arg2         
        PushF        9.900000                  
        Label        -compare-382-sub          
        FSubtract                              
        JumpFPos     -compare-382-true         
        Jump         -compare-382-false        
        Label        -compare-382-true         
        PushI        1                         
        Jump         -compare-382-join         
        Label        -compare-382-false        
        PushI        0                         
        Jump         -compare-382-join         
        Label        -compare-382-join         
        JumpTrue     -print-boolean-383-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-383-join   
        Label        -print-boolean-383-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-383-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-384-arg1         
        PushF        3.400000                  
        PushF        9.500000                  
        FAdd                                   
        Label        -compare-384-arg2         
        PushF        4.200000                  
        Label        -compare-384-sub          
        FSubtract                              
        JumpFPos     -compare-384-true         
        Jump         -compare-384-false        
        Label        -compare-384-true         
        PushI        1                         
        Jump         -compare-384-join         
        Label        -compare-384-false        
        PushI        0                         
        Jump         -compare-384-join         
        Label        -compare-384-join         
        JumpTrue     -print-boolean-385-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-385-join   
        Label        -print-boolean-385-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-385-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-386-arg1         
        PushF        7.300000                  
        PushF        6.700000                  
        FAdd                                   
        Label        -compare-386-arg2         
        PushF        4.400000                  
        Label        -compare-386-sub          
        FSubtract                              
        JumpFPos     -compare-386-true         
        Jump         -compare-386-false        
        Label        -compare-386-true         
        PushI        1                         
        Jump         -compare-386-join         
        Label        -compare-386-false        
        PushI        0                         
        Jump         -compare-386-join         
        Label        -compare-386-join         
        JumpTrue     -print-boolean-387-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-387-join   
        Label        -print-boolean-387-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-387-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-388-arg1         
        PushF        9.100000                  
        PushF        9.300000                  
        FAdd                                   
        Label        -compare-388-arg2         
        PushF        1.700000                  
        Label        -compare-388-sub          
        FSubtract                              
        JumpFPos     -compare-388-true         
        Jump         -compare-388-false        
        Label        -compare-388-true         
        PushI        1                         
        Jump         -compare-388-join         
        Label        -compare-388-false        
        PushI        0                         
        Jump         -compare-388-join         
        Label        -compare-388-join         
        JumpTrue     -print-boolean-389-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-389-join   
        Label        -print-boolean-389-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-389-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-390-arg1         
        PushF        4.300000                  
        Label        -compare-390-arg2         
        PushF        5.600000                  
        PushF        8.100000                  
        FAdd                                   
        Label        -compare-390-sub          
        FSubtract                              
        JumpFPos     -compare-390-true         
        Jump         -compare-390-false        
        Label        -compare-390-true         
        PushI        1                         
        Jump         -compare-390-join         
        Label        -compare-390-false        
        PushI        0                         
        Jump         -compare-390-join         
        Label        -compare-390-join         
        JumpTrue     -print-boolean-391-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-391-join   
        Label        -print-boolean-391-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-391-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-392-arg1         
        PushF        5.500000                  
        Label        -compare-392-arg2         
        PushF        4.300000                  
        PushF        5.200000                  
        FAdd                                   
        Label        -compare-392-sub          
        FSubtract                              
        JumpFPos     -compare-392-true         
        Jump         -compare-392-false        
        Label        -compare-392-true         
        PushI        1                         
        Jump         -compare-392-join         
        Label        -compare-392-false        
        PushI        0                         
        Jump         -compare-392-join         
        Label        -compare-392-join         
        JumpTrue     -print-boolean-393-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-393-join   
        Label        -print-boolean-393-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-393-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-394-arg1         
        PushF        5.400000                  
        Label        -compare-394-arg2         
        PushF        6.300000                  
        PushF        7.800000                  
        FAdd                                   
        Label        -compare-394-sub          
        FSubtract                              
        JumpFPos     -compare-394-true         
        Jump         -compare-394-false        
        Label        -compare-394-true         
        PushI        1                         
        Jump         -compare-394-join         
        Label        -compare-394-false        
        PushI        0                         
        Jump         -compare-394-join         
        Label        -compare-394-join         
        JumpTrue     -print-boolean-395-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-395-join   
        Label        -print-boolean-395-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-395-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-396-arg1         
        PushF        9.400000                  
        Label        -compare-396-arg2         
        PushF        1.400000                  
        PushF        3.700000                  
        FAdd                                   
        Label        -compare-396-sub          
        FSubtract                              
        JumpFPos     -compare-396-true         
        Jump         -compare-396-false        
        Label        -compare-396-true         
        PushI        1                         
        Jump         -compare-396-join         
        Label        -compare-396-false        
        PushI        0                         
        Jump         -compare-396-join         
        Label        -compare-396-join         
        JumpTrue     -print-boolean-397-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-397-join   
        Label        -print-boolean-397-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-397-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-398-arg1         
        PushF        3.900000                  
        Label        -compare-398-arg2         
        PushF        3.400000                  
        PushF        8.300000                  
        FAdd                                   
        Label        -compare-398-sub          
        FSubtract                              
        JumpFPos     -compare-398-true         
        Jump         -compare-398-false        
        Label        -compare-398-true         
        PushI        1                         
        Jump         -compare-398-join         
        Label        -compare-398-false        
        PushI        0                         
        Jump         -compare-398-join         
        Label        -compare-398-join         
        JumpTrue     -print-boolean-399-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-399-join   
        Label        -print-boolean-399-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-399-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-400-arg1         
        PushF        4.400000                  
        Label        -compare-400-arg2         
        PushF        3.800000                  
        PushF        3.000000                  
        FAdd                                   
        Label        -compare-400-sub          
        FSubtract                              
        JumpFPos     -compare-400-true         
        Jump         -compare-400-false        
        Label        -compare-400-true         
        PushI        1                         
        Jump         -compare-400-join         
        Label        -compare-400-false        
        PushI        0                         
        Jump         -compare-400-join         
        Label        -compare-400-join         
        JumpTrue     -print-boolean-401-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-401-join   
        Label        -print-boolean-401-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-401-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-402-arg1         
        PushF        7.300000                  
        Label        -compare-402-arg2         
        PushF        9.600000                  
        PushF        8.700000                  
        FAdd                                   
        Label        -compare-402-sub          
        FSubtract                              
        JumpFPos     -compare-402-true         
        Jump         -compare-402-false        
        Label        -compare-402-true         
        PushI        1                         
        Jump         -compare-402-join         
        Label        -compare-402-false        
        PushI        0                         
        Jump         -compare-402-join         
        Label        -compare-402-join         
        JumpTrue     -print-boolean-403-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-403-join   
        Label        -print-boolean-403-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-403-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-404-arg1         
        PushF        2.800000                  
        Label        -compare-404-arg2         
        PushF        6.200000                  
        PushF        5.800000                  
        FAdd                                   
        Label        -compare-404-sub          
        FSubtract                              
        JumpFPos     -compare-404-true         
        Jump         -compare-404-false        
        Label        -compare-404-true         
        PushI        1                         
        Jump         -compare-404-join         
        Label        -compare-404-false        
        PushI        0                         
        Jump         -compare-404-join         
        Label        -compare-404-join         
        JumpTrue     -print-boolean-405-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-405-join   
        Label        -print-boolean-405-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-405-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-406-arg1         
        PushF        9.000000                  
        Label        -compare-406-arg2         
        PushF        6.600000                  
        PushF        1.700000                  
        FAdd                                   
        Label        -compare-406-sub          
        FSubtract                              
        JumpFPos     -compare-406-true         
        Jump         -compare-406-false        
        Label        -compare-406-true         
        PushI        1                         
        Jump         -compare-406-join         
        Label        -compare-406-false        
        PushI        0                         
        Jump         -compare-406-join         
        Label        -compare-406-join         
        JumpTrue     -print-boolean-407-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-407-join   
        Label        -print-boolean-407-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-407-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-408-arg1         
        PushF        3.000000                  
        Label        -compare-408-arg2         
        PushF        8.700000                  
        PushF        1.200000                  
        FAdd                                   
        Label        -compare-408-sub          
        FSubtract                              
        JumpFPos     -compare-408-true         
        Jump         -compare-408-false        
        Label        -compare-408-true         
        PushI        1                         
        Jump         -compare-408-join         
        Label        -compare-408-false        
        PushI        0                         
        Jump         -compare-408-join         
        Label        -compare-408-join         
        JumpTrue     -print-boolean-409-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-409-join   
        Label        -print-boolean-409-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-409-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-410-arg1         
        PushF        3.100000                  
        Label        -compare-410-arg2         
        PushF        7.900000                  
        PushF        4.400000                  
        FAdd                                   
        Label        -compare-410-sub          
        FSubtract                              
        JumpFPos     -compare-410-true         
        Jump         -compare-410-false        
        Label        -compare-410-true         
        PushI        1                         
        Jump         -compare-410-join         
        Label        -compare-410-false        
        PushI        0                         
        Jump         -compare-410-join         
        Label        -compare-410-join         
        JumpTrue     -print-boolean-411-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-411-join   
        Label        -print-boolean-411-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-411-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-412-arg1         
        PushF        3.700000                  
        Label        -compare-412-arg2         
        PushF        9.400000                  
        PushF        9.400000                  
        FAdd                                   
        Label        -compare-412-sub          
        FSubtract                              
        JumpFPos     -compare-412-true         
        Jump         -compare-412-false        
        Label        -compare-412-true         
        PushI        1                         
        Jump         -compare-412-join         
        Label        -compare-412-false        
        PushI        0                         
        Jump         -compare-412-join         
        Label        -compare-412-join         
        JumpTrue     -print-boolean-413-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-413-join   
        Label        -print-boolean-413-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-413-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-414-arg1         
        PushF        2.800000                  
        PushF        8.600000                  
        FAdd                                   
        Label        -compare-414-arg2         
        PushF        7.100000                  
        PushF        1.100000                  
        FAdd                                   
        Label        -compare-414-sub          
        FSubtract                              
        JumpFPos     -compare-414-true         
        Jump         -compare-414-false        
        Label        -compare-414-true         
        PushI        1                         
        Jump         -compare-414-join         
        Label        -compare-414-false        
        PushI        0                         
        Jump         -compare-414-join         
        Label        -compare-414-join         
        JumpTrue     -print-boolean-415-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-415-join   
        Label        -print-boolean-415-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-415-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-416-arg1         
        PushF        6.900000                  
        PushF        4.000000                  
        FAdd                                   
        Label        -compare-416-arg2         
        PushF        7.100000                  
        PushF        4.000000                  
        FAdd                                   
        Label        -compare-416-sub          
        FSubtract                              
        JumpFPos     -compare-416-true         
        Jump         -compare-416-false        
        Label        -compare-416-true         
        PushI        1                         
        Jump         -compare-416-join         
        Label        -compare-416-false        
        PushI        0                         
        Jump         -compare-416-join         
        Label        -compare-416-join         
        JumpTrue     -print-boolean-417-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-417-join   
        Label        -print-boolean-417-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-417-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-418-arg1         
        PushF        4.700000                  
        PushF        2.600000                  
        FAdd                                   
        Label        -compare-418-arg2         
        PushF        4.100000                  
        PushF        1.300000                  
        FAdd                                   
        Label        -compare-418-sub          
        FSubtract                              
        JumpFPos     -compare-418-true         
        Jump         -compare-418-false        
        Label        -compare-418-true         
        PushI        1                         
        Jump         -compare-418-join         
        Label        -compare-418-false        
        PushI        0                         
        Jump         -compare-418-join         
        Label        -compare-418-join         
        JumpTrue     -print-boolean-419-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-419-join   
        Label        -print-boolean-419-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-419-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-420-arg1         
        PushF        6.000000                  
        PushF        1.000000                  
        FAdd                                   
        Label        -compare-420-arg2         
        PushF        4.300000                  
        PushF        2.500000                  
        FAdd                                   
        Label        -compare-420-sub          
        FSubtract                              
        JumpFPos     -compare-420-true         
        Jump         -compare-420-false        
        Label        -compare-420-true         
        PushI        1                         
        Jump         -compare-420-join         
        Label        -compare-420-false        
        PushI        0                         
        Jump         -compare-420-join         
        Label        -compare-420-join         
        JumpTrue     -print-boolean-421-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-421-join   
        Label        -print-boolean-421-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-421-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-422-arg1         
        PushF        8.200000                  
        PushF        2.100000                  
        FAdd                                   
        Label        -compare-422-arg2         
        PushF        2.600000                  
        PushF        9.400000                  
        FAdd                                   
        Label        -compare-422-sub          
        FSubtract                              
        JumpFPos     -compare-422-true         
        Jump         -compare-422-false        
        Label        -compare-422-true         
        PushI        1                         
        Jump         -compare-422-join         
        Label        -compare-422-false        
        PushI        0                         
        Jump         -compare-422-join         
        Label        -compare-422-join         
        JumpTrue     -print-boolean-423-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-423-join   
        Label        -print-boolean-423-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-423-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-424-arg1         
        PushF        7.400000                  
        PushF        6.100000                  
        FAdd                                   
        Label        -compare-424-arg2         
        PushF        2.600000                  
        PushF        8.900000                  
        FAdd                                   
        Label        -compare-424-sub          
        FSubtract                              
        JumpFPos     -compare-424-true         
        Jump         -compare-424-false        
        Label        -compare-424-true         
        PushI        1                         
        Jump         -compare-424-join         
        Label        -compare-424-false        
        PushI        0                         
        Jump         -compare-424-join         
        Label        -compare-424-join         
        JumpTrue     -print-boolean-425-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-425-join   
        Label        -print-boolean-425-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-425-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-426-arg1         
        PushF        2.400000                  
        PushF        1.400000                  
        FAdd                                   
        Label        -compare-426-arg2         
        PushF        7.300000                  
        PushF        9.400000                  
        FAdd                                   
        Label        -compare-426-sub          
        FSubtract                              
        JumpFPos     -compare-426-true         
        Jump         -compare-426-false        
        Label        -compare-426-true         
        PushI        1                         
        Jump         -compare-426-join         
        Label        -compare-426-false        
        PushI        0                         
        Jump         -compare-426-join         
        Label        -compare-426-join         
        JumpTrue     -print-boolean-427-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-427-join   
        Label        -print-boolean-427-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-427-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-428-arg1         
        PushF        7.200000                  
        PushF        6.600000                  
        FAdd                                   
        Label        -compare-428-arg2         
        PushF        3.800000                  
        PushF        2.500000                  
        FAdd                                   
        Label        -compare-428-sub          
        FSubtract                              
        JumpFPos     -compare-428-true         
        Jump         -compare-428-false        
        Label        -compare-428-true         
        PushI        1                         
        Jump         -compare-428-join         
        Label        -compare-428-false        
        PushI        0                         
        Jump         -compare-428-join         
        Label        -compare-428-join         
        JumpTrue     -print-boolean-429-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-429-join   
        Label        -print-boolean-429-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-429-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-430-arg1         
        PushF        8.500000                  
        PushF        2.200000                  
        FAdd                                   
        Label        -compare-430-arg2         
        PushF        8.300000                  
        PushF        4.300000                  
        FAdd                                   
        Label        -compare-430-sub          
        FSubtract                              
        JumpFPos     -compare-430-true         
        Jump         -compare-430-false        
        Label        -compare-430-true         
        PushI        1                         
        Jump         -compare-430-join         
        Label        -compare-430-false        
        PushI        0                         
        Jump         -compare-430-join         
        Label        -compare-430-join         
        JumpTrue     -print-boolean-431-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-431-join   
        Label        -print-boolean-431-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-431-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-432-arg1         
        PushF        5.700000                  
        PushF        1.700000                  
        FAdd                                   
        Label        -compare-432-arg2         
        PushF        7.800000                  
        PushF        6.300000                  
        FAdd                                   
        Label        -compare-432-sub          
        FSubtract                              
        JumpFPos     -compare-432-true         
        Jump         -compare-432-false        
        Label        -compare-432-true         
        PushI        1                         
        Jump         -compare-432-join         
        Label        -compare-432-false        
        PushI        0                         
        Jump         -compare-432-join         
        Label        -compare-432-join         
        JumpTrue     -print-boolean-433-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-433-join   
        Label        -print-boolean-433-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-433-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-434-arg1         
        PushF        3.200000                  
        PushF        4.800000                  
        FAdd                                   
        Label        -compare-434-arg2         
        PushF        7.500000                  
        PushF        7.400000                  
        FAdd                                   
        Label        -compare-434-sub          
        FSubtract                              
        JumpFPos     -compare-434-true         
        Jump         -compare-434-false        
        Label        -compare-434-true         
        PushI        1                         
        Jump         -compare-434-join         
        Label        -compare-434-false        
        PushI        0                         
        Jump         -compare-434-join         
        Label        -compare-434-join         
        JumpTrue     -print-boolean-435-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-435-join   
        Label        -print-boolean-435-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-435-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-436-arg1         
        PushF        7.200000                  
        PushF        8.100000                  
        FAdd                                   
        Label        -compare-436-arg2         
        PushF        8.900000                  
        PushF        1.800000                  
        FAdd                                   
        Label        -compare-436-sub          
        FSubtract                              
        JumpFPos     -compare-436-true         
        Jump         -compare-436-false        
        Label        -compare-436-true         
        PushI        1                         
        Jump         -compare-436-join         
        Label        -compare-436-false        
        PushI        0                         
        Jump         -compare-436-join         
        Label        -compare-436-join         
        JumpTrue     -print-boolean-437-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-437-join   
        Label        -print-boolean-437-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-437-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
