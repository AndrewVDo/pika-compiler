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
        Label        -compare-2390-arg1        
        PushI        107                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2390-arg2        
        PushI        60                        
        Label        -compare-2390-sub         
        Subtract                               
        JumpPos      -compare-2390-true        
        Jump         -compare-2390-false       
        Label        -compare-2390-true        
        PushI        1                         
        Jump         -compare-2390-join        
        Label        -compare-2390-false       
        PushI        0                         
        Jump         -compare-2390-join        
        Label        -compare-2390-join        
        JumpTrue     -print-boolean-2391-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2391-join  
        Label        -print-boolean-2391-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2391-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2392-arg1        
        PushI        32                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2392-arg2        
        PushI        57                        
        Label        -compare-2392-sub         
        Subtract                               
        JumpPos      -compare-2392-true        
        Jump         -compare-2392-false       
        Label        -compare-2392-true        
        PushI        1                         
        Jump         -compare-2392-join        
        Label        -compare-2392-false       
        PushI        0                         
        Jump         -compare-2392-join        
        Label        -compare-2392-join        
        JumpTrue     -print-boolean-2393-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2393-join  
        Label        -print-boolean-2393-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2393-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2394-arg1        
        PushI        122                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2394-arg2        
        PushI        62                        
        Label        -compare-2394-sub         
        Subtract                               
        JumpPos      -compare-2394-true        
        Jump         -compare-2394-false       
        Label        -compare-2394-true        
        PushI        1                         
        Jump         -compare-2394-join        
        Label        -compare-2394-false       
        PushI        0                         
        Jump         -compare-2394-join        
        Label        -compare-2394-join        
        JumpTrue     -print-boolean-2395-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2395-join  
        Label        -print-boolean-2395-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2395-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2396-arg1        
        PushI        65                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2396-arg2        
        PushI        32                        
        Label        -compare-2396-sub         
        Subtract                               
        JumpPos      -compare-2396-true        
        Jump         -compare-2396-false       
        Label        -compare-2396-true        
        PushI        1                         
        Jump         -compare-2396-join        
        Label        -compare-2396-false       
        PushI        0                         
        Jump         -compare-2396-join        
        Label        -compare-2396-join        
        JumpTrue     -print-boolean-2397-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2397-join  
        Label        -print-boolean-2397-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2397-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2398-arg1        
        PushI        97                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2398-arg2        
        PushI        73                        
        Label        -compare-2398-sub         
        Subtract                               
        JumpPos      -compare-2398-true        
        Jump         -compare-2398-false       
        Label        -compare-2398-true        
        PushI        1                         
        Jump         -compare-2398-join        
        Label        -compare-2398-false       
        PushI        0                         
        Jump         -compare-2398-join        
        Label        -compare-2398-join        
        JumpTrue     -print-boolean-2399-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2399-join  
        Label        -print-boolean-2399-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2399-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2400-arg1        
        PushI        93                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2400-arg2        
        PushI        76                        
        Label        -compare-2400-sub         
        Subtract                               
        JumpPos      -compare-2400-true        
        Jump         -compare-2400-false       
        Label        -compare-2400-true        
        PushI        1                         
        Jump         -compare-2400-join        
        Label        -compare-2400-false       
        PushI        0                         
        Jump         -compare-2400-join        
        Label        -compare-2400-join        
        JumpTrue     -print-boolean-2401-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2401-join  
        Label        -print-boolean-2401-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2401-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2402-arg1        
        PushI        102                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2402-arg2        
        PushI        4                         
        Label        -compare-2402-sub         
        Subtract                               
        JumpPos      -compare-2402-true        
        Jump         -compare-2402-false       
        Label        -compare-2402-true        
        PushI        1                         
        Jump         -compare-2402-join        
        Label        -compare-2402-false       
        PushI        0                         
        Jump         -compare-2402-join        
        Label        -compare-2402-join        
        JumpTrue     -print-boolean-2403-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2403-join  
        Label        -print-boolean-2403-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2403-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2404-arg1        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2404-arg2        
        PushI        39                        
        Label        -compare-2404-sub         
        Subtract                               
        JumpPos      -compare-2404-true        
        Jump         -compare-2404-false       
        Label        -compare-2404-true        
        PushI        1                         
        Jump         -compare-2404-join        
        Label        -compare-2404-false       
        PushI        0                         
        Jump         -compare-2404-join        
        Label        -compare-2404-join        
        JumpTrue     -print-boolean-2405-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2405-join  
        Label        -print-boolean-2405-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2405-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2406-arg1        
        PushI        34                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2406-arg2        
        PushI        39                        
        Label        -compare-2406-sub         
        Subtract                               
        JumpPos      -compare-2406-true        
        Jump         -compare-2406-false       
        Label        -compare-2406-true        
        PushI        1                         
        Jump         -compare-2406-join        
        Label        -compare-2406-false       
        PushI        0                         
        Jump         -compare-2406-join        
        Label        -compare-2406-join        
        JumpTrue     -print-boolean-2407-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2407-join  
        Label        -print-boolean-2407-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2407-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2408-arg1        
        PushI        34                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2408-arg2        
        PushI        97                        
        Label        -compare-2408-sub         
        Subtract                               
        JumpPos      -compare-2408-true        
        Jump         -compare-2408-false       
        Label        -compare-2408-true        
        PushI        1                         
        Jump         -compare-2408-join        
        Label        -compare-2408-false       
        PushI        0                         
        Jump         -compare-2408-join        
        Label        -compare-2408-join        
        JumpTrue     -print-boolean-2409-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2409-join  
        Label        -print-boolean-2409-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2409-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2410-arg1        
        PushI        71                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2410-arg2        
        PushI        17                        
        Label        -compare-2410-sub         
        Subtract                               
        JumpPos      -compare-2410-true        
        Jump         -compare-2410-false       
        Label        -compare-2410-true        
        PushI        1                         
        Jump         -compare-2410-join        
        Label        -compare-2410-false       
        PushI        0                         
        Jump         -compare-2410-join        
        Label        -compare-2410-join        
        JumpTrue     -print-boolean-2411-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2411-join  
        Label        -print-boolean-2411-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2411-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2412-arg1        
        PushI        83                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2412-arg2        
        PushI        4                         
        Label        -compare-2412-sub         
        Subtract                               
        JumpPos      -compare-2412-true        
        Jump         -compare-2412-false       
        Label        -compare-2412-true        
        PushI        1                         
        Jump         -compare-2412-join        
        Label        -compare-2412-false       
        PushI        0                         
        Jump         -compare-2412-join        
        Label        -compare-2412-join        
        JumpTrue     -print-boolean-2413-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2413-join  
        Label        -print-boolean-2413-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2413-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2414-arg1        
        PushI        96                        
        Label        -compare-2414-arg2        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2414-sub         
        Subtract                               
        JumpPos      -compare-2414-true        
        Jump         -compare-2414-false       
        Label        -compare-2414-true        
        PushI        1                         
        Jump         -compare-2414-join        
        Label        -compare-2414-false       
        PushI        0                         
        Jump         -compare-2414-join        
        Label        -compare-2414-join        
        JumpTrue     -print-boolean-2415-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2415-join  
        Label        -print-boolean-2415-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2415-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2416-arg1        
        PushI        47                        
        Label        -compare-2416-arg2        
        PushI        48                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2416-sub         
        Subtract                               
        JumpPos      -compare-2416-true        
        Jump         -compare-2416-false       
        Label        -compare-2416-true        
        PushI        1                         
        Jump         -compare-2416-join        
        Label        -compare-2416-false       
        PushI        0                         
        Jump         -compare-2416-join        
        Label        -compare-2416-join        
        JumpTrue     -print-boolean-2417-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2417-join  
        Label        -print-boolean-2417-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2417-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2418-arg1        
        PushI        26                        
        Label        -compare-2418-arg2        
        PushI        43                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2418-sub         
        Subtract                               
        JumpPos      -compare-2418-true        
        Jump         -compare-2418-false       
        Label        -compare-2418-true        
        PushI        1                         
        Jump         -compare-2418-join        
        Label        -compare-2418-false       
        PushI        0                         
        Jump         -compare-2418-join        
        Label        -compare-2418-join        
        JumpTrue     -print-boolean-2419-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2419-join  
        Label        -print-boolean-2419-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2419-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2420-arg1        
        PushI        37                        
        Label        -compare-2420-arg2        
        PushI        81                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2420-sub         
        Subtract                               
        JumpPos      -compare-2420-true        
        Jump         -compare-2420-false       
        Label        -compare-2420-true        
        PushI        1                         
        Jump         -compare-2420-join        
        Label        -compare-2420-false       
        PushI        0                         
        Jump         -compare-2420-join        
        Label        -compare-2420-join        
        JumpTrue     -print-boolean-2421-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2421-join  
        Label        -print-boolean-2421-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2421-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2422-arg1        
        PushI        59                        
        Label        -compare-2422-arg2        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2422-sub         
        Subtract                               
        JumpPos      -compare-2422-true        
        Jump         -compare-2422-false       
        Label        -compare-2422-true        
        PushI        1                         
        Jump         -compare-2422-join        
        Label        -compare-2422-false       
        PushI        0                         
        Jump         -compare-2422-join        
        Label        -compare-2422-join        
        JumpTrue     -print-boolean-2423-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2423-join  
        Label        -print-boolean-2423-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2423-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2424-arg1        
        PushI        84                        
        Label        -compare-2424-arg2        
        PushI        61                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2424-sub         
        Subtract                               
        JumpPos      -compare-2424-true        
        Jump         -compare-2424-false       
        Label        -compare-2424-true        
        PushI        1                         
        Jump         -compare-2424-join        
        Label        -compare-2424-false       
        PushI        0                         
        Jump         -compare-2424-join        
        Label        -compare-2424-join        
        JumpTrue     -print-boolean-2425-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2425-join  
        Label        -print-boolean-2425-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2425-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2426-arg1        
        PushI        48                        
        Label        -compare-2426-arg2        
        PushI        109                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2426-sub         
        Subtract                               
        JumpPos      -compare-2426-true        
        Jump         -compare-2426-false       
        Label        -compare-2426-true        
        PushI        1                         
        Jump         -compare-2426-join        
        Label        -compare-2426-false       
        PushI        0                         
        Jump         -compare-2426-join        
        Label        -compare-2426-join        
        JumpTrue     -print-boolean-2427-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2427-join  
        Label        -print-boolean-2427-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2427-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2428-arg1        
        PushI        32                        
        Label        -compare-2428-arg2        
        PushI        69                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2428-sub         
        Subtract                               
        JumpPos      -compare-2428-true        
        Jump         -compare-2428-false       
        Label        -compare-2428-true        
        PushI        1                         
        Jump         -compare-2428-join        
        Label        -compare-2428-false       
        PushI        0                         
        Jump         -compare-2428-join        
        Label        -compare-2428-join        
        JumpTrue     -print-boolean-2429-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2429-join  
        Label        -print-boolean-2429-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2429-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2430-arg1        
        PushI        50                        
        Label        -compare-2430-arg2        
        PushI        122                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2430-sub         
        Subtract                               
        JumpPos      -compare-2430-true        
        Jump         -compare-2430-false       
        Label        -compare-2430-true        
        PushI        1                         
        Jump         -compare-2430-join        
        Label        -compare-2430-false       
        PushI        0                         
        Jump         -compare-2430-join        
        Label        -compare-2430-join        
        JumpTrue     -print-boolean-2431-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2431-join  
        Label        -print-boolean-2431-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2431-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2432-arg1        
        PushI        33                        
        Label        -compare-2432-arg2        
        PushI        102                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2432-sub         
        Subtract                               
        JumpPos      -compare-2432-true        
        Jump         -compare-2432-false       
        Label        -compare-2432-true        
        PushI        1                         
        Jump         -compare-2432-join        
        Label        -compare-2432-false       
        PushI        0                         
        Jump         -compare-2432-join        
        Label        -compare-2432-join        
        JumpTrue     -print-boolean-2433-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2433-join  
        Label        -print-boolean-2433-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2433-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2434-arg1        
        PushI        89                        
        Label        -compare-2434-arg2        
        PushI        95                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2434-sub         
        Subtract                               
        JumpPos      -compare-2434-true        
        Jump         -compare-2434-false       
        Label        -compare-2434-true        
        PushI        1                         
        Jump         -compare-2434-join        
        Label        -compare-2434-false       
        PushI        0                         
        Jump         -compare-2434-join        
        Label        -compare-2434-join        
        JumpTrue     -print-boolean-2435-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2435-join  
        Label        -print-boolean-2435-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2435-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2436-arg1        
        PushI        88                        
        Label        -compare-2436-arg2        
        PushI        103                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2436-sub         
        Subtract                               
        JumpPos      -compare-2436-true        
        Jump         -compare-2436-false       
        Label        -compare-2436-true        
        PushI        1                         
        Jump         -compare-2436-join        
        Label        -compare-2436-false       
        PushI        0                         
        Jump         -compare-2436-join        
        Label        -compare-2436-join        
        JumpTrue     -print-boolean-2437-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2437-join  
        Label        -print-boolean-2437-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2437-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2438-arg1        
        PushI        122                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2438-arg2        
        PushI        47                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2438-sub         
        Subtract                               
        JumpPos      -compare-2438-true        
        Jump         -compare-2438-false       
        Label        -compare-2438-true        
        PushI        1                         
        Jump         -compare-2438-join        
        Label        -compare-2438-false       
        PushI        0                         
        Jump         -compare-2438-join        
        Label        -compare-2438-join        
        JumpTrue     -print-boolean-2439-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2439-join  
        Label        -print-boolean-2439-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2439-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2440-arg1        
        PushI        66                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2440-arg2        
        PushI        76                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2440-sub         
        Subtract                               
        JumpPos      -compare-2440-true        
        Jump         -compare-2440-false       
        Label        -compare-2440-true        
        PushI        1                         
        Jump         -compare-2440-join        
        Label        -compare-2440-false       
        PushI        0                         
        Jump         -compare-2440-join        
        Label        -compare-2440-join        
        JumpTrue     -print-boolean-2441-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2441-join  
        Label        -print-boolean-2441-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2441-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2442-arg1        
        PushI        39                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2442-arg2        
        PushI        89                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2442-sub         
        Subtract                               
        JumpPos      -compare-2442-true        
        Jump         -compare-2442-false       
        Label        -compare-2442-true        
        PushI        1                         
        Jump         -compare-2442-join        
        Label        -compare-2442-false       
        PushI        0                         
        Jump         -compare-2442-join        
        Label        -compare-2442-join        
        JumpTrue     -print-boolean-2443-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2443-join  
        Label        -print-boolean-2443-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2443-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2444-arg1        
        PushI        37                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2444-arg2        
        PushI        117                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2444-sub         
        Subtract                               
        JumpPos      -compare-2444-true        
        Jump         -compare-2444-false       
        Label        -compare-2444-true        
        PushI        1                         
        Jump         -compare-2444-join        
        Label        -compare-2444-false       
        PushI        0                         
        Jump         -compare-2444-join        
        Label        -compare-2444-join        
        JumpTrue     -print-boolean-2445-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2445-join  
        Label        -print-boolean-2445-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2445-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2446-arg1        
        PushI        112                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2446-arg2        
        PushI        72                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2446-sub         
        Subtract                               
        JumpPos      -compare-2446-true        
        Jump         -compare-2446-false       
        Label        -compare-2446-true        
        PushI        1                         
        Jump         -compare-2446-join        
        Label        -compare-2446-false       
        PushI        0                         
        Jump         -compare-2446-join        
        Label        -compare-2446-join        
        JumpTrue     -print-boolean-2447-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2447-join  
        Label        -print-boolean-2447-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2447-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2448-arg1        
        PushI        85                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2448-arg2        
        PushI        32                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2448-sub         
        Subtract                               
        JumpPos      -compare-2448-true        
        Jump         -compare-2448-false       
        Label        -compare-2448-true        
        PushI        1                         
        Jump         -compare-2448-join        
        Label        -compare-2448-false       
        PushI        0                         
        Jump         -compare-2448-join        
        Label        -compare-2448-join        
        JumpTrue     -print-boolean-2449-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2449-join  
        Label        -print-boolean-2449-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2449-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2450-arg1        
        PushI        42                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2450-arg2        
        PushI        121                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2450-sub         
        Subtract                               
        JumpPos      -compare-2450-true        
        Jump         -compare-2450-false       
        Label        -compare-2450-true        
        PushI        1                         
        Jump         -compare-2450-join        
        Label        -compare-2450-false       
        PushI        0                         
        Jump         -compare-2450-join        
        Label        -compare-2450-join        
        JumpTrue     -print-boolean-2451-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2451-join  
        Label        -print-boolean-2451-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2451-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2452-arg1        
        PushI        78                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2452-arg2        
        PushI        52                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2452-sub         
        Subtract                               
        JumpPos      -compare-2452-true        
        Jump         -compare-2452-false       
        Label        -compare-2452-true        
        PushI        1                         
        Jump         -compare-2452-join        
        Label        -compare-2452-false       
        PushI        0                         
        Jump         -compare-2452-join        
        Label        -compare-2452-join        
        JumpTrue     -print-boolean-2453-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2453-join  
        Label        -print-boolean-2453-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2453-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2454-arg1        
        PushI        63                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2454-arg2        
        PushI        40                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2454-sub         
        Subtract                               
        JumpPos      -compare-2454-true        
        Jump         -compare-2454-false       
        Label        -compare-2454-true        
        PushI        1                         
        Jump         -compare-2454-join        
        Label        -compare-2454-false       
        PushI        0                         
        Jump         -compare-2454-join        
        Label        -compare-2454-join        
        JumpTrue     -print-boolean-2455-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2455-join  
        Label        -print-boolean-2455-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2455-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2456-arg1        
        PushI        84                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2456-arg2        
        PushI        33                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2456-sub         
        Subtract                               
        JumpPos      -compare-2456-true        
        Jump         -compare-2456-false       
        Label        -compare-2456-true        
        PushI        1                         
        Jump         -compare-2456-join        
        Label        -compare-2456-false       
        PushI        0                         
        Jump         -compare-2456-join        
        Label        -compare-2456-join        
        JumpTrue     -print-boolean-2457-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2457-join  
        Label        -print-boolean-2457-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2457-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2458-arg1        
        PushI        113                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2458-arg2        
        PushI        106                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2458-sub         
        Subtract                               
        JumpPos      -compare-2458-true        
        Jump         -compare-2458-false       
        Label        -compare-2458-true        
        PushI        1                         
        Jump         -compare-2458-join        
        Label        -compare-2458-false       
        PushI        0                         
        Jump         -compare-2458-join        
        Label        -compare-2458-join        
        JumpTrue     -print-boolean-2459-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2459-join  
        Label        -print-boolean-2459-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2459-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-2460-arg1        
        PushI        113                       
        PushI        127                       
        BTAnd                                  
        Label        -compare-2460-arg2        
        PushI        71                        
        PushI        127                       
        BTAnd                                  
        Label        -compare-2460-sub         
        Subtract                               
        JumpPos      -compare-2460-true        
        Jump         -compare-2460-false       
        Label        -compare-2460-true        
        PushI        1                         
        Jump         -compare-2460-join        
        Label        -compare-2460-false       
        PushI        0                         
        Jump         -compare-2460-join        
        Label        -compare-2460-join        
        JumpTrue     -print-boolean-2461-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-2461-join  
        Label        -print-boolean-2461-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-2461-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
