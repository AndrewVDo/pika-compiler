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
        Label        -compare-2377-arg1        
        PushI        107                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2377-arg2        
        PushI        60                        
        Label        -compare-2377-sub         
        Subtract                               
        JumpPos      -compare-2377-true        
        Jump         -compare-2377-false       
        Label        -compare-2377-true        
        PushI        1                         
        Jump         -compare-2377-join        
        Label        -compare-2377-false       
        PushI        0                         
        Jump         -compare-2377-join        
        Label        -compare-2377-join        
        JumpTrue     -print-boolean-2378-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2378-join  
        Label        -print-boolean-2378-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2378-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2379-arg1        
        PushI        32                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2379-arg2        
        PushI        57                        
        Label        -compare-2379-sub         
        Subtract                               
        JumpPos      -compare-2379-true        
        Jump         -compare-2379-false       
        Label        -compare-2379-true        
        PushI        1                         
        Jump         -compare-2379-join        
        Label        -compare-2379-false       
        PushI        0                         
        Jump         -compare-2379-join        
        Label        -compare-2379-join        
        JumpTrue     -print-boolean-2380-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2380-join  
        Label        -print-boolean-2380-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2380-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2381-arg1        
        PushI        122                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2381-arg2        
        PushI        62                        
        Label        -compare-2381-sub         
        Subtract                               
        JumpPos      -compare-2381-true        
        Jump         -compare-2381-false       
        Label        -compare-2381-true        
        PushI        1                         
        Jump         -compare-2381-join        
        Label        -compare-2381-false       
        PushI        0                         
        Jump         -compare-2381-join        
        Label        -compare-2381-join        
        JumpTrue     -print-boolean-2382-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2382-join  
        Label        -print-boolean-2382-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2382-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2383-arg1        
        PushI        65                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2383-arg2        
        PushI        32                        
        Label        -compare-2383-sub         
        Subtract                               
        JumpPos      -compare-2383-true        
        Jump         -compare-2383-false       
        Label        -compare-2383-true        
        PushI        1                         
        Jump         -compare-2383-join        
        Label        -compare-2383-false       
        PushI        0                         
        Jump         -compare-2383-join        
        Label        -compare-2383-join        
        JumpTrue     -print-boolean-2384-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2384-join  
        Label        -print-boolean-2384-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2384-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2385-arg1        
        PushI        97                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2385-arg2        
        PushI        73                        
        Label        -compare-2385-sub         
        Subtract                               
        JumpPos      -compare-2385-true        
        Jump         -compare-2385-false       
        Label        -compare-2385-true        
        PushI        1                         
        Jump         -compare-2385-join        
        Label        -compare-2385-false       
        PushI        0                         
        Jump         -compare-2385-join        
        Label        -compare-2385-join        
        JumpTrue     -print-boolean-2386-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2386-join  
        Label        -print-boolean-2386-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2386-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2387-arg1        
        PushI        93                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2387-arg2        
        PushI        76                        
        Label        -compare-2387-sub         
        Subtract                               
        JumpPos      -compare-2387-true        
        Jump         -compare-2387-false       
        Label        -compare-2387-true        
        PushI        1                         
        Jump         -compare-2387-join        
        Label        -compare-2387-false       
        PushI        0                         
        Jump         -compare-2387-join        
        Label        -compare-2387-join        
        JumpTrue     -print-boolean-2388-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2388-join  
        Label        -print-boolean-2388-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2388-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2389-arg1        
        PushI        102                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2389-arg2        
        PushI        4                         
        Label        -compare-2389-sub         
        Subtract                               
        JumpPos      -compare-2389-true        
        Jump         -compare-2389-false       
        Label        -compare-2389-true        
        PushI        1                         
        Jump         -compare-2389-join        
        Label        -compare-2389-false       
        PushI        0                         
        Jump         -compare-2389-join        
        Label        -compare-2389-join        
        JumpTrue     -print-boolean-2390-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2390-join  
        Label        -print-boolean-2390-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2390-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2391-arg1        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2391-arg2        
        PushI        39                        
        Label        -compare-2391-sub         
        Subtract                               
        JumpPos      -compare-2391-true        
        Jump         -compare-2391-false       
        Label        -compare-2391-true        
        PushI        1                         
        Jump         -compare-2391-join        
        Label        -compare-2391-false       
        PushI        0                         
        Jump         -compare-2391-join        
        Label        -compare-2391-join        
        JumpTrue     -print-boolean-2392-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2392-join  
        Label        -print-boolean-2392-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2392-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2393-arg1        
        PushI        34                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2393-arg2        
        PushI        39                        
        Label        -compare-2393-sub         
        Subtract                               
        JumpPos      -compare-2393-true        
        Jump         -compare-2393-false       
        Label        -compare-2393-true        
        PushI        1                         
        Jump         -compare-2393-join        
        Label        -compare-2393-false       
        PushI        0                         
        Jump         -compare-2393-join        
        Label        -compare-2393-join        
        JumpTrue     -print-boolean-2394-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2394-join  
        Label        -print-boolean-2394-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2394-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2395-arg1        
        PushI        34                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2395-arg2        
        PushI        97                        
        Label        -compare-2395-sub         
        Subtract                               
        JumpPos      -compare-2395-true        
        Jump         -compare-2395-false       
        Label        -compare-2395-true        
        PushI        1                         
        Jump         -compare-2395-join        
        Label        -compare-2395-false       
        PushI        0                         
        Jump         -compare-2395-join        
        Label        -compare-2395-join        
        JumpTrue     -print-boolean-2396-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2396-join  
        Label        -print-boolean-2396-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2396-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2397-arg1        
        PushI        71                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2397-arg2        
        PushI        17                        
        Label        -compare-2397-sub         
        Subtract                               
        JumpPos      -compare-2397-true        
        Jump         -compare-2397-false       
        Label        -compare-2397-true        
        PushI        1                         
        Jump         -compare-2397-join        
        Label        -compare-2397-false       
        PushI        0                         
        Jump         -compare-2397-join        
        Label        -compare-2397-join        
        JumpTrue     -print-boolean-2398-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2398-join  
        Label        -print-boolean-2398-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2398-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2399-arg1        
        PushI        83                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2399-arg2        
        PushI        4                         
        Label        -compare-2399-sub         
        Subtract                               
        JumpPos      -compare-2399-true        
        Jump         -compare-2399-false       
        Label        -compare-2399-true        
        PushI        1                         
        Jump         -compare-2399-join        
        Label        -compare-2399-false       
        PushI        0                         
        Jump         -compare-2399-join        
        Label        -compare-2399-join        
        JumpTrue     -print-boolean-2400-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2400-join  
        Label        -print-boolean-2400-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2400-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2401-arg1        
        PushI        96                        
        Label        -compare-2401-arg2        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2401-sub         
        Subtract                               
        JumpPos      -compare-2401-true        
        Jump         -compare-2401-false       
        Label        -compare-2401-true        
        PushI        1                         
        Jump         -compare-2401-join        
        Label        -compare-2401-false       
        PushI        0                         
        Jump         -compare-2401-join        
        Label        -compare-2401-join        
        JumpTrue     -print-boolean-2402-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2402-join  
        Label        -print-boolean-2402-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2402-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2403-arg1        
        PushI        47                        
        Label        -compare-2403-arg2        
        PushI        48                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2403-sub         
        Subtract                               
        JumpPos      -compare-2403-true        
        Jump         -compare-2403-false       
        Label        -compare-2403-true        
        PushI        1                         
        Jump         -compare-2403-join        
        Label        -compare-2403-false       
        PushI        0                         
        Jump         -compare-2403-join        
        Label        -compare-2403-join        
        JumpTrue     -print-boolean-2404-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2404-join  
        Label        -print-boolean-2404-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2404-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2405-arg1        
        PushI        26                        
        Label        -compare-2405-arg2        
        PushI        43                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2405-sub         
        Subtract                               
        JumpPos      -compare-2405-true        
        Jump         -compare-2405-false       
        Label        -compare-2405-true        
        PushI        1                         
        Jump         -compare-2405-join        
        Label        -compare-2405-false       
        PushI        0                         
        Jump         -compare-2405-join        
        Label        -compare-2405-join        
        JumpTrue     -print-boolean-2406-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2406-join  
        Label        -print-boolean-2406-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2406-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2407-arg1        
        PushI        37                        
        Label        -compare-2407-arg2        
        PushI        81                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2407-sub         
        Subtract                               
        JumpPos      -compare-2407-true        
        Jump         -compare-2407-false       
        Label        -compare-2407-true        
        PushI        1                         
        Jump         -compare-2407-join        
        Label        -compare-2407-false       
        PushI        0                         
        Jump         -compare-2407-join        
        Label        -compare-2407-join        
        JumpTrue     -print-boolean-2408-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2408-join  
        Label        -print-boolean-2408-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2408-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2409-arg1        
        PushI        59                        
        Label        -compare-2409-arg2        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2409-sub         
        Subtract                               
        JumpPos      -compare-2409-true        
        Jump         -compare-2409-false       
        Label        -compare-2409-true        
        PushI        1                         
        Jump         -compare-2409-join        
        Label        -compare-2409-false       
        PushI        0                         
        Jump         -compare-2409-join        
        Label        -compare-2409-join        
        JumpTrue     -print-boolean-2410-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2410-join  
        Label        -print-boolean-2410-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2410-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2411-arg1        
        PushI        84                        
        Label        -compare-2411-arg2        
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2411-sub         
        Subtract                               
        JumpPos      -compare-2411-true        
        Jump         -compare-2411-false       
        Label        -compare-2411-true        
        PushI        1                         
        Jump         -compare-2411-join        
        Label        -compare-2411-false       
        PushI        0                         
        Jump         -compare-2411-join        
        Label        -compare-2411-join        
        JumpTrue     -print-boolean-2412-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2412-join  
        Label        -print-boolean-2412-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2412-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2413-arg1        
        PushI        48                        
        Label        -compare-2413-arg2        
        PushI        109                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2413-sub         
        Subtract                               
        JumpPos      -compare-2413-true        
        Jump         -compare-2413-false       
        Label        -compare-2413-true        
        PushI        1                         
        Jump         -compare-2413-join        
        Label        -compare-2413-false       
        PushI        0                         
        Jump         -compare-2413-join        
        Label        -compare-2413-join        
        JumpTrue     -print-boolean-2414-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2414-join  
        Label        -print-boolean-2414-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2414-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2415-arg1        
        PushI        32                        
        Label        -compare-2415-arg2        
        PushI        69                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2415-sub         
        Subtract                               
        JumpPos      -compare-2415-true        
        Jump         -compare-2415-false       
        Label        -compare-2415-true        
        PushI        1                         
        Jump         -compare-2415-join        
        Label        -compare-2415-false       
        PushI        0                         
        Jump         -compare-2415-join        
        Label        -compare-2415-join        
        JumpTrue     -print-boolean-2416-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2416-join  
        Label        -print-boolean-2416-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2416-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2417-arg1        
        PushI        50                        
        Label        -compare-2417-arg2        
        PushI        122                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2417-sub         
        Subtract                               
        JumpPos      -compare-2417-true        
        Jump         -compare-2417-false       
        Label        -compare-2417-true        
        PushI        1                         
        Jump         -compare-2417-join        
        Label        -compare-2417-false       
        PushI        0                         
        Jump         -compare-2417-join        
        Label        -compare-2417-join        
        JumpTrue     -print-boolean-2418-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2418-join  
        Label        -print-boolean-2418-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2418-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2419-arg1        
        PushI        33                        
        Label        -compare-2419-arg2        
        PushI        102                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2419-sub         
        Subtract                               
        JumpPos      -compare-2419-true        
        Jump         -compare-2419-false       
        Label        -compare-2419-true        
        PushI        1                         
        Jump         -compare-2419-join        
        Label        -compare-2419-false       
        PushI        0                         
        Jump         -compare-2419-join        
        Label        -compare-2419-join        
        JumpTrue     -print-boolean-2420-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2420-join  
        Label        -print-boolean-2420-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2420-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2421-arg1        
        PushI        89                        
        Label        -compare-2421-arg2        
        PushI        95                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2421-sub         
        Subtract                               
        JumpPos      -compare-2421-true        
        Jump         -compare-2421-false       
        Label        -compare-2421-true        
        PushI        1                         
        Jump         -compare-2421-join        
        Label        -compare-2421-false       
        PushI        0                         
        Jump         -compare-2421-join        
        Label        -compare-2421-join        
        JumpTrue     -print-boolean-2422-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2422-join  
        Label        -print-boolean-2422-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2422-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2423-arg1        
        PushI        88                        
        Label        -compare-2423-arg2        
        PushI        103                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2423-sub         
        Subtract                               
        JumpPos      -compare-2423-true        
        Jump         -compare-2423-false       
        Label        -compare-2423-true        
        PushI        1                         
        Jump         -compare-2423-join        
        Label        -compare-2423-false       
        PushI        0                         
        Jump         -compare-2423-join        
        Label        -compare-2423-join        
        JumpTrue     -print-boolean-2424-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2424-join  
        Label        -print-boolean-2424-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2424-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2425-arg1        
        PushI        122                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2425-arg2        
        PushI        47                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2425-sub         
        Subtract                               
        JumpPos      -compare-2425-true        
        Jump         -compare-2425-false       
        Label        -compare-2425-true        
        PushI        1                         
        Jump         -compare-2425-join        
        Label        -compare-2425-false       
        PushI        0                         
        Jump         -compare-2425-join        
        Label        -compare-2425-join        
        JumpTrue     -print-boolean-2426-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2426-join  
        Label        -print-boolean-2426-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2426-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2427-arg1        
        PushI        66                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2427-arg2        
        PushI        76                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2427-sub         
        Subtract                               
        JumpPos      -compare-2427-true        
        Jump         -compare-2427-false       
        Label        -compare-2427-true        
        PushI        1                         
        Jump         -compare-2427-join        
        Label        -compare-2427-false       
        PushI        0                         
        Jump         -compare-2427-join        
        Label        -compare-2427-join        
        JumpTrue     -print-boolean-2428-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2428-join  
        Label        -print-boolean-2428-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2428-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2429-arg1        
        PushI        39                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2429-arg2        
        PushI        89                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2429-sub         
        Subtract                               
        JumpPos      -compare-2429-true        
        Jump         -compare-2429-false       
        Label        -compare-2429-true        
        PushI        1                         
        Jump         -compare-2429-join        
        Label        -compare-2429-false       
        PushI        0                         
        Jump         -compare-2429-join        
        Label        -compare-2429-join        
        JumpTrue     -print-boolean-2430-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2430-join  
        Label        -print-boolean-2430-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2430-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2431-arg1        
        PushI        37                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2431-arg2        
        PushI        117                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2431-sub         
        Subtract                               
        JumpPos      -compare-2431-true        
        Jump         -compare-2431-false       
        Label        -compare-2431-true        
        PushI        1                         
        Jump         -compare-2431-join        
        Label        -compare-2431-false       
        PushI        0                         
        Jump         -compare-2431-join        
        Label        -compare-2431-join        
        JumpTrue     -print-boolean-2432-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2432-join  
        Label        -print-boolean-2432-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2432-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2433-arg1        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2433-arg2        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2433-sub         
        Subtract                               
        JumpPos      -compare-2433-true        
        Jump         -compare-2433-false       
        Label        -compare-2433-true        
        PushI        1                         
        Jump         -compare-2433-join        
        Label        -compare-2433-false       
        PushI        0                         
        Jump         -compare-2433-join        
        Label        -compare-2433-join        
        JumpTrue     -print-boolean-2434-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2434-join  
        Label        -print-boolean-2434-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2434-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2435-arg1        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2435-arg2        
        PushI        32                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2435-sub         
        Subtract                               
        JumpPos      -compare-2435-true        
        Jump         -compare-2435-false       
        Label        -compare-2435-true        
        PushI        1                         
        Jump         -compare-2435-join        
        Label        -compare-2435-false       
        PushI        0                         
        Jump         -compare-2435-join        
        Label        -compare-2435-join        
        JumpTrue     -print-boolean-2436-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2436-join  
        Label        -print-boolean-2436-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2436-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2437-arg1        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2437-arg2        
        PushI        121                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2437-sub         
        Subtract                               
        JumpPos      -compare-2437-true        
        Jump         -compare-2437-false       
        Label        -compare-2437-true        
        PushI        1                         
        Jump         -compare-2437-join        
        Label        -compare-2437-false       
        PushI        0                         
        Jump         -compare-2437-join        
        Label        -compare-2437-join        
        JumpTrue     -print-boolean-2438-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2438-join  
        Label        -print-boolean-2438-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2438-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2439-arg1        
        PushI        78                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2439-arg2        
        PushI        52                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2439-sub         
        Subtract                               
        JumpPos      -compare-2439-true        
        Jump         -compare-2439-false       
        Label        -compare-2439-true        
        PushI        1                         
        Jump         -compare-2439-join        
        Label        -compare-2439-false       
        PushI        0                         
        Jump         -compare-2439-join        
        Label        -compare-2439-join        
        JumpTrue     -print-boolean-2440-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2440-join  
        Label        -print-boolean-2440-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2440-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2441-arg1        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2441-arg2        
        PushI        40                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2441-sub         
        Subtract                               
        JumpPos      -compare-2441-true        
        Jump         -compare-2441-false       
        Label        -compare-2441-true        
        PushI        1                         
        Jump         -compare-2441-join        
        Label        -compare-2441-false       
        PushI        0                         
        Jump         -compare-2441-join        
        Label        -compare-2441-join        
        JumpTrue     -print-boolean-2442-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2442-join  
        Label        -print-boolean-2442-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2442-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2443-arg1        
        PushI        84                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2443-arg2        
        PushI        33                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2443-sub         
        Subtract                               
        JumpPos      -compare-2443-true        
        Jump         -compare-2443-false       
        Label        -compare-2443-true        
        PushI        1                         
        Jump         -compare-2443-join        
        Label        -compare-2443-false       
        PushI        0                         
        Jump         -compare-2443-join        
        Label        -compare-2443-join        
        JumpTrue     -print-boolean-2444-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2444-join  
        Label        -print-boolean-2444-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2444-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2445-arg1        
        PushI        113                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2445-arg2        
        PushI        106                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2445-sub         
        Subtract                               
        JumpPos      -compare-2445-true        
        Jump         -compare-2445-false       
        Label        -compare-2445-true        
        PushI        1                         
        Jump         -compare-2445-join        
        Label        -compare-2445-false       
        PushI        0                         
        Jump         -compare-2445-join        
        Label        -compare-2445-join        
        JumpTrue     -print-boolean-2446-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2446-join  
        Label        -print-boolean-2446-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2446-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2447-arg1        
        PushI        113                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2447-arg2        
        PushI        71                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2447-sub         
        Subtract                               
        JumpPos      -compare-2447-true        
        Jump         -compare-2447-false       
        Label        -compare-2447-true        
        PushI        1                         
        Jump         -compare-2447-join        
        Label        -compare-2447-false       
        PushI        0                         
        Jump         -compare-2447-join        
        Label        -compare-2447-join        
        JumpTrue     -print-boolean-2448-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2448-join  
        Label        -print-boolean-2448-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2448-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
