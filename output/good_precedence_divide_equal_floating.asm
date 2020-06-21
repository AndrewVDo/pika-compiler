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
        Label        -compare-3110-arg1        
        PushF        2.300000                  
        PushF        1.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3110-arg2        
        PushF        5.900000                  
        Label        -compare-3110-sub         
        FSubtract                              
        JumpFZero    -compare-3110-true        
        Jump         -compare-3110-false       
        Label        -compare-3110-true        
        PushI        1                         
        Jump         -compare-3110-join        
        Label        -compare-3110-false       
        PushI        0                         
        Jump         -compare-3110-join        
        Label        -compare-3110-join        
        JumpTrue     -print-boolean-3111-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3111-join  
        Label        -print-boolean-3111-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3111-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3112-arg1        
        PushF        9.500000                  
        PushF        4.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3112-arg2        
        PushF        7.500000                  
        Label        -compare-3112-sub         
        FSubtract                              
        JumpFZero    -compare-3112-true        
        Jump         -compare-3112-false       
        Label        -compare-3112-true        
        PushI        1                         
        Jump         -compare-3112-join        
        Label        -compare-3112-false       
        PushI        0                         
        Jump         -compare-3112-join        
        Label        -compare-3112-join        
        JumpTrue     -print-boolean-3113-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3113-join  
        Label        -print-boolean-3113-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3113-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3114-arg1        
        PushF        8.000000                  
        PushF        5.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3114-arg2        
        PushF        2.000000                  
        Label        -compare-3114-sub         
        FSubtract                              
        JumpFZero    -compare-3114-true        
        Jump         -compare-3114-false       
        Label        -compare-3114-true        
        PushI        1                         
        Jump         -compare-3114-join        
        Label        -compare-3114-false       
        PushI        0                         
        Jump         -compare-3114-join        
        Label        -compare-3114-join        
        JumpTrue     -print-boolean-3115-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3115-join  
        Label        -print-boolean-3115-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3115-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3116-arg1        
        PushF        6.600000                  
        PushF        6.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3116-arg2        
        PushF        1.500000                  
        Label        -compare-3116-sub         
        FSubtract                              
        JumpFZero    -compare-3116-true        
        Jump         -compare-3116-false       
        Label        -compare-3116-true        
        PushI        1                         
        Jump         -compare-3116-join        
        Label        -compare-3116-false       
        PushI        0                         
        Jump         -compare-3116-join        
        Label        -compare-3116-join        
        JumpTrue     -print-boolean-3117-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3117-join  
        Label        -print-boolean-3117-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3117-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3118-arg1        
        PushF        7.800000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3118-arg2        
        PushF        4.100000                  
        Label        -compare-3118-sub         
        FSubtract                              
        JumpFZero    -compare-3118-true        
        Jump         -compare-3118-false       
        Label        -compare-3118-true        
        PushI        1                         
        Jump         -compare-3118-join        
        Label        -compare-3118-false       
        PushI        0                         
        Jump         -compare-3118-join        
        Label        -compare-3118-join        
        JumpTrue     -print-boolean-3119-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3119-join  
        Label        -print-boolean-3119-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3119-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3120-arg1        
        PushF        2.000000                  
        PushF        9.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3120-arg2        
        PushF        5.100000                  
        Label        -compare-3120-sub         
        FSubtract                              
        JumpFZero    -compare-3120-true        
        Jump         -compare-3120-false       
        Label        -compare-3120-true        
        PushI        1                         
        Jump         -compare-3120-join        
        Label        -compare-3120-false       
        PushI        0                         
        Jump         -compare-3120-join        
        Label        -compare-3120-join        
        JumpTrue     -print-boolean-3121-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3121-join  
        Label        -print-boolean-3121-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3121-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3122-arg1        
        PushF        1.100000                  
        PushF        9.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3122-arg2        
        PushF        2.300000                  
        Label        -compare-3122-sub         
        FSubtract                              
        JumpFZero    -compare-3122-true        
        Jump         -compare-3122-false       
        Label        -compare-3122-true        
        PushI        1                         
        Jump         -compare-3122-join        
        Label        -compare-3122-false       
        PushI        0                         
        Jump         -compare-3122-join        
        Label        -compare-3122-join        
        JumpTrue     -print-boolean-3123-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3123-join  
        Label        -print-boolean-3123-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3123-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3124-arg1        
        PushF        5.600000                  
        PushF        1.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3124-arg2        
        PushF        7.800000                  
        Label        -compare-3124-sub         
        FSubtract                              
        JumpFZero    -compare-3124-true        
        Jump         -compare-3124-false       
        Label        -compare-3124-true        
        PushI        1                         
        Jump         -compare-3124-join        
        Label        -compare-3124-false       
        PushI        0                         
        Jump         -compare-3124-join        
        Label        -compare-3124-join        
        JumpTrue     -print-boolean-3125-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3125-join  
        Label        -print-boolean-3125-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3125-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3126-arg1        
        PushF        4.600000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3126-arg2        
        PushF        5.800000                  
        Label        -compare-3126-sub         
        FSubtract                              
        JumpFZero    -compare-3126-true        
        Jump         -compare-3126-false       
        Label        -compare-3126-true        
        PushI        1                         
        Jump         -compare-3126-join        
        Label        -compare-3126-false       
        PushI        0                         
        Jump         -compare-3126-join        
        Label        -compare-3126-join        
        JumpTrue     -print-boolean-3127-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3127-join  
        Label        -print-boolean-3127-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3127-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3128-arg1        
        PushF        6.000000                  
        PushF        9.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3128-arg2        
        PushF        2.200000                  
        Label        -compare-3128-sub         
        FSubtract                              
        JumpFZero    -compare-3128-true        
        Jump         -compare-3128-false       
        Label        -compare-3128-true        
        PushI        1                         
        Jump         -compare-3128-join        
        Label        -compare-3128-false       
        PushI        0                         
        Jump         -compare-3128-join        
        Label        -compare-3128-join        
        JumpTrue     -print-boolean-3129-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3129-join  
        Label        -print-boolean-3129-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3129-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3130-arg1        
        PushF        8.800000                  
        PushF        8.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3130-arg2        
        PushF        1.500000                  
        Label        -compare-3130-sub         
        FSubtract                              
        JumpFZero    -compare-3130-true        
        Jump         -compare-3130-false       
        Label        -compare-3130-true        
        PushI        1                         
        Jump         -compare-3130-join        
        Label        -compare-3130-false       
        PushI        0                         
        Jump         -compare-3130-join        
        Label        -compare-3130-join        
        JumpTrue     -print-boolean-3131-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3131-join  
        Label        -print-boolean-3131-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3131-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3132-arg1        
        PushF        2.400000                  
        PushF        4.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3132-arg2        
        PushF        8.700000                  
        Label        -compare-3132-sub         
        FSubtract                              
        JumpFZero    -compare-3132-true        
        Jump         -compare-3132-false       
        Label        -compare-3132-true        
        PushI        1                         
        Jump         -compare-3132-join        
        Label        -compare-3132-false       
        PushI        0                         
        Jump         -compare-3132-join        
        Label        -compare-3132-join        
        JumpTrue     -print-boolean-3133-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3133-join  
        Label        -print-boolean-3133-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3133-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3134-arg1        
        PushF        9.300000                  
        Label        -compare-3134-arg2        
        PushF        2.700000                  
        PushF        2.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3134-sub         
        FSubtract                              
        JumpFZero    -compare-3134-true        
        Jump         -compare-3134-false       
        Label        -compare-3134-true        
        PushI        1                         
        Jump         -compare-3134-join        
        Label        -compare-3134-false       
        PushI        0                         
        Jump         -compare-3134-join        
        Label        -compare-3134-join        
        JumpTrue     -print-boolean-3135-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3135-join  
        Label        -print-boolean-3135-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3135-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3136-arg1        
        PushF        3.800000                  
        Label        -compare-3136-arg2        
        PushF        4.300000                  
        PushF        8.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3136-sub         
        FSubtract                              
        JumpFZero    -compare-3136-true        
        Jump         -compare-3136-false       
        Label        -compare-3136-true        
        PushI        1                         
        Jump         -compare-3136-join        
        Label        -compare-3136-false       
        PushI        0                         
        Jump         -compare-3136-join        
        Label        -compare-3136-join        
        JumpTrue     -print-boolean-3137-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3137-join  
        Label        -print-boolean-3137-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3137-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3138-arg1        
        PushF        3.400000                  
        Label        -compare-3138-arg2        
        PushF        7.500000                  
        PushF        2.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3138-sub         
        FSubtract                              
        JumpFZero    -compare-3138-true        
        Jump         -compare-3138-false       
        Label        -compare-3138-true        
        PushI        1                         
        Jump         -compare-3138-join        
        Label        -compare-3138-false       
        PushI        0                         
        Jump         -compare-3138-join        
        Label        -compare-3138-join        
        JumpTrue     -print-boolean-3139-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3139-join  
        Label        -print-boolean-3139-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3139-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3140-arg1        
        PushF        6.300000                  
        Label        -compare-3140-arg2        
        PushF        4.100000                  
        PushF        4.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3140-sub         
        FSubtract                              
        JumpFZero    -compare-3140-true        
        Jump         -compare-3140-false       
        Label        -compare-3140-true        
        PushI        1                         
        Jump         -compare-3140-join        
        Label        -compare-3140-false       
        PushI        0                         
        Jump         -compare-3140-join        
        Label        -compare-3140-join        
        JumpTrue     -print-boolean-3141-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3141-join  
        Label        -print-boolean-3141-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3141-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3142-arg1        
        PushF        7.400000                  
        Label        -compare-3142-arg2        
        PushF        8.500000                  
        PushF        6.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3142-sub         
        FSubtract                              
        JumpFZero    -compare-3142-true        
        Jump         -compare-3142-false       
        Label        -compare-3142-true        
        PushI        1                         
        Jump         -compare-3142-join        
        Label        -compare-3142-false       
        PushI        0                         
        Jump         -compare-3142-join        
        Label        -compare-3142-join        
        JumpTrue     -print-boolean-3143-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3143-join  
        Label        -print-boolean-3143-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3143-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3144-arg1        
        PushF        3.900000                  
        Label        -compare-3144-arg2        
        PushF        5.700000                  
        PushF        9.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3144-sub         
        FSubtract                              
        JumpFZero    -compare-3144-true        
        Jump         -compare-3144-false       
        Label        -compare-3144-true        
        PushI        1                         
        Jump         -compare-3144-join        
        Label        -compare-3144-false       
        PushI        0                         
        Jump         -compare-3144-join        
        Label        -compare-3144-join        
        JumpTrue     -print-boolean-3145-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3145-join  
        Label        -print-boolean-3145-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3145-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3146-arg1        
        PushF        9.600000                  
        Label        -compare-3146-arg2        
        PushF        5.800000                  
        PushF        8.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3146-sub         
        FSubtract                              
        JumpFZero    -compare-3146-true        
        Jump         -compare-3146-false       
        Label        -compare-3146-true        
        PushI        1                         
        Jump         -compare-3146-join        
        Label        -compare-3146-false       
        PushI        0                         
        Jump         -compare-3146-join        
        Label        -compare-3146-join        
        JumpTrue     -print-boolean-3147-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3147-join  
        Label        -print-boolean-3147-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3147-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3148-arg1        
        PushF        6.100000                  
        Label        -compare-3148-arg2        
        PushF        6.300000                  
        PushF        7.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3148-sub         
        FSubtract                              
        JumpFZero    -compare-3148-true        
        Jump         -compare-3148-false       
        Label        -compare-3148-true        
        PushI        1                         
        Jump         -compare-3148-join        
        Label        -compare-3148-false       
        PushI        0                         
        Jump         -compare-3148-join        
        Label        -compare-3148-join        
        JumpTrue     -print-boolean-3149-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3149-join  
        Label        -print-boolean-3149-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3149-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3150-arg1        
        PushF        3.300000                  
        Label        -compare-3150-arg2        
        PushF        2.500000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3150-sub         
        FSubtract                              
        JumpFZero    -compare-3150-true        
        Jump         -compare-3150-false       
        Label        -compare-3150-true        
        PushI        1                         
        Jump         -compare-3150-join        
        Label        -compare-3150-false       
        PushI        0                         
        Jump         -compare-3150-join        
        Label        -compare-3150-join        
        JumpTrue     -print-boolean-3151-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3151-join  
        Label        -print-boolean-3151-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3151-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3152-arg1        
        PushF        4.700000                  
        Label        -compare-3152-arg2        
        PushF        7.900000                  
        PushF        3.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3152-sub         
        FSubtract                              
        JumpFZero    -compare-3152-true        
        Jump         -compare-3152-false       
        Label        -compare-3152-true        
        PushI        1                         
        Jump         -compare-3152-join        
        Label        -compare-3152-false       
        PushI        0                         
        Jump         -compare-3152-join        
        Label        -compare-3152-join        
        JumpTrue     -print-boolean-3153-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3153-join  
        Label        -print-boolean-3153-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3153-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3154-arg1        
        PushF        6.700000                  
        Label        -compare-3154-arg2        
        PushF        7.800000                  
        PushF        6.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3154-sub         
        FSubtract                              
        JumpFZero    -compare-3154-true        
        Jump         -compare-3154-false       
        Label        -compare-3154-true        
        PushI        1                         
        Jump         -compare-3154-join        
        Label        -compare-3154-false       
        PushI        0                         
        Jump         -compare-3154-join        
        Label        -compare-3154-join        
        JumpTrue     -print-boolean-3155-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3155-join  
        Label        -print-boolean-3155-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3155-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3156-arg1        
        PushF        4.400000                  
        Label        -compare-3156-arg2        
        PushF        5.600000                  
        PushF        5.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3156-sub         
        FSubtract                              
        JumpFZero    -compare-3156-true        
        Jump         -compare-3156-false       
        Label        -compare-3156-true        
        PushI        1                         
        Jump         -compare-3156-join        
        Label        -compare-3156-false       
        PushI        0                         
        Jump         -compare-3156-join        
        Label        -compare-3156-join        
        JumpTrue     -print-boolean-3157-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3157-join  
        Label        -print-boolean-3157-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3157-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3158-arg1        
        PushF        9.800000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3158-arg2        
        PushF        8.300000                  
        PushF        7.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3158-sub         
        FSubtract                              
        JumpFZero    -compare-3158-true        
        Jump         -compare-3158-false       
        Label        -compare-3158-true        
        PushI        1                         
        Jump         -compare-3158-join        
        Label        -compare-3158-false       
        PushI        0                         
        Jump         -compare-3158-join        
        Label        -compare-3158-join        
        JumpTrue     -print-boolean-3159-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3159-join  
        Label        -print-boolean-3159-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3159-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3160-arg1        
        PushF        8.700000                  
        PushF        7.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3160-arg2        
        PushF        5.300000                  
        PushF        4.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3160-sub         
        FSubtract                              
        JumpFZero    -compare-3160-true        
        Jump         -compare-3160-false       
        Label        -compare-3160-true        
        PushI        1                         
        Jump         -compare-3160-join        
        Label        -compare-3160-false       
        PushI        0                         
        Jump         -compare-3160-join        
        Label        -compare-3160-join        
        JumpTrue     -print-boolean-3161-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3161-join  
        Label        -print-boolean-3161-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3161-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3162-arg1        
        PushF        4.800000                  
        PushF        5.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3162-arg2        
        PushF        8.700000                  
        PushF        6.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3162-sub         
        FSubtract                              
        JumpFZero    -compare-3162-true        
        Jump         -compare-3162-false       
        Label        -compare-3162-true        
        PushI        1                         
        Jump         -compare-3162-join        
        Label        -compare-3162-false       
        PushI        0                         
        Jump         -compare-3162-join        
        Label        -compare-3162-join        
        JumpTrue     -print-boolean-3163-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3163-join  
        Label        -print-boolean-3163-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3163-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3164-arg1        
        PushF        3.400000                  
        PushF        4.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3164-arg2        
        PushF        3.800000                  
        PushF        3.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3164-sub         
        FSubtract                              
        JumpFZero    -compare-3164-true        
        Jump         -compare-3164-false       
        Label        -compare-3164-true        
        PushI        1                         
        Jump         -compare-3164-join        
        Label        -compare-3164-false       
        PushI        0                         
        Jump         -compare-3164-join        
        Label        -compare-3164-join        
        JumpTrue     -print-boolean-3165-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3165-join  
        Label        -print-boolean-3165-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3165-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3166-arg1        
        PushF        2.700000                  
        PushF        5.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3166-arg2        
        PushF        2.900000                  
        PushF        8.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3166-sub         
        FSubtract                              
        JumpFZero    -compare-3166-true        
        Jump         -compare-3166-false       
        Label        -compare-3166-true        
        PushI        1                         
        Jump         -compare-3166-join        
        Label        -compare-3166-false       
        PushI        0                         
        Jump         -compare-3166-join        
        Label        -compare-3166-join        
        JumpTrue     -print-boolean-3167-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3167-join  
        Label        -print-boolean-3167-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3167-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3168-arg1        
        PushF        9.800000                  
        PushF        2.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3168-arg2        
        PushF        6.400000                  
        PushF        9.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3168-sub         
        FSubtract                              
        JumpFZero    -compare-3168-true        
        Jump         -compare-3168-false       
        Label        -compare-3168-true        
        PushI        1                         
        Jump         -compare-3168-join        
        Label        -compare-3168-false       
        PushI        0                         
        Jump         -compare-3168-join        
        Label        -compare-3168-join        
        JumpTrue     -print-boolean-3169-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3169-join  
        Label        -print-boolean-3169-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3169-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3170-arg1        
        PushF        1.900000                  
        PushF        4.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3170-arg2        
        PushF        9.700000                  
        PushF        4.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3170-sub         
        FSubtract                              
        JumpFZero    -compare-3170-true        
        Jump         -compare-3170-false       
        Label        -compare-3170-true        
        PushI        1                         
        Jump         -compare-3170-join        
        Label        -compare-3170-false       
        PushI        0                         
        Jump         -compare-3170-join        
        Label        -compare-3170-join        
        JumpTrue     -print-boolean-3171-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3171-join  
        Label        -print-boolean-3171-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3171-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3172-arg1        
        PushF        2.300000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3172-arg2        
        PushF        9.600000                  
        PushF        7.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3172-sub         
        FSubtract                              
        JumpFZero    -compare-3172-true        
        Jump         -compare-3172-false       
        Label        -compare-3172-true        
        PushI        1                         
        Jump         -compare-3172-join        
        Label        -compare-3172-false       
        PushI        0                         
        Jump         -compare-3172-join        
        Label        -compare-3172-join        
        JumpTrue     -print-boolean-3173-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3173-join  
        Label        -print-boolean-3173-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3173-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3174-arg1        
        PushF        6.500000                  
        PushF        5.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3174-arg2        
        PushF        9.100000                  
        PushF        2.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3174-sub         
        FSubtract                              
        JumpFZero    -compare-3174-true        
        Jump         -compare-3174-false       
        Label        -compare-3174-true        
        PushI        1                         
        Jump         -compare-3174-join        
        Label        -compare-3174-false       
        PushI        0                         
        Jump         -compare-3174-join        
        Label        -compare-3174-join        
        JumpTrue     -print-boolean-3175-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3175-join  
        Label        -print-boolean-3175-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3175-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3176-arg1        
        PushF        7.100000                  
        PushF        3.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3176-arg2        
        PushF        8.500000                  
        PushF        5.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3176-sub         
        FSubtract                              
        JumpFZero    -compare-3176-true        
        Jump         -compare-3176-false       
        Label        -compare-3176-true        
        PushI        1                         
        Jump         -compare-3176-join        
        Label        -compare-3176-false       
        PushI        0                         
        Jump         -compare-3176-join        
        Label        -compare-3176-join        
        JumpTrue     -print-boolean-3177-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3177-join  
        Label        -print-boolean-3177-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3177-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3178-arg1        
        PushF        5.300000                  
        PushF        3.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3178-arg2        
        PushF        8.600000                  
        PushF        1.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3178-sub         
        FSubtract                              
        JumpFZero    -compare-3178-true        
        Jump         -compare-3178-false       
        Label        -compare-3178-true        
        PushI        1                         
        Jump         -compare-3178-join        
        Label        -compare-3178-false       
        PushI        0                         
        Jump         -compare-3178-join        
        Label        -compare-3178-join        
        JumpTrue     -print-boolean-3179-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3179-join  
        Label        -print-boolean-3179-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3179-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3180-arg1        
        PushF        9.000000                  
        PushF        1.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3180-arg2        
        PushF        8.300000                  
        PushF        1.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3180-sub         
        FSubtract                              
        JumpFZero    -compare-3180-true        
        Jump         -compare-3180-false       
        Label        -compare-3180-true        
        PushI        1                         
        Jump         -compare-3180-join        
        Label        -compare-3180-false       
        PushI        0                         
        Jump         -compare-3180-join        
        Label        -compare-3180-join        
        JumpTrue     -print-boolean-3181-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3181-join  
        Label        -print-boolean-3181-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3181-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
