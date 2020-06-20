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
        Label        -compare-3097-arg1        
        PushF        2.300000                  
        PushF        1.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3097-arg2        
        PushF        5.900000                  
        Label        -compare-3097-sub         
        FSubtract                              
        JumpFZero    -compare-3097-true        
        Jump         -compare-3097-false       
        Label        -compare-3097-true        
        PushI        1                         
        Jump         -compare-3097-join        
        Label        -compare-3097-false       
        PushI        0                         
        Jump         -compare-3097-join        
        Label        -compare-3097-join        
        JumpTrue     -print-boolean-3098-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3098-join  
        Label        -print-boolean-3098-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3098-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3099-arg1        
        PushF        9.500000                  
        PushF        4.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3099-arg2        
        PushF        7.500000                  
        Label        -compare-3099-sub         
        FSubtract                              
        JumpFZero    -compare-3099-true        
        Jump         -compare-3099-false       
        Label        -compare-3099-true        
        PushI        1                         
        Jump         -compare-3099-join        
        Label        -compare-3099-false       
        PushI        0                         
        Jump         -compare-3099-join        
        Label        -compare-3099-join        
        JumpTrue     -print-boolean-3100-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3100-join  
        Label        -print-boolean-3100-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3100-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3101-arg1        
        PushF        8.000000                  
        PushF        5.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3101-arg2        
        PushF        2.000000                  
        Label        -compare-3101-sub         
        FSubtract                              
        JumpFZero    -compare-3101-true        
        Jump         -compare-3101-false       
        Label        -compare-3101-true        
        PushI        1                         
        Jump         -compare-3101-join        
        Label        -compare-3101-false       
        PushI        0                         
        Jump         -compare-3101-join        
        Label        -compare-3101-join        
        JumpTrue     -print-boolean-3102-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3102-join  
        Label        -print-boolean-3102-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3102-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3103-arg1        
        PushF        6.600000                  
        PushF        6.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3103-arg2        
        PushF        1.500000                  
        Label        -compare-3103-sub         
        FSubtract                              
        JumpFZero    -compare-3103-true        
        Jump         -compare-3103-false       
        Label        -compare-3103-true        
        PushI        1                         
        Jump         -compare-3103-join        
        Label        -compare-3103-false       
        PushI        0                         
        Jump         -compare-3103-join        
        Label        -compare-3103-join        
        JumpTrue     -print-boolean-3104-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3104-join  
        Label        -print-boolean-3104-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3104-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3105-arg1        
        PushF        7.800000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3105-arg2        
        PushF        4.100000                  
        Label        -compare-3105-sub         
        FSubtract                              
        JumpFZero    -compare-3105-true        
        Jump         -compare-3105-false       
        Label        -compare-3105-true        
        PushI        1                         
        Jump         -compare-3105-join        
        Label        -compare-3105-false       
        PushI        0                         
        Jump         -compare-3105-join        
        Label        -compare-3105-join        
        JumpTrue     -print-boolean-3106-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3106-join  
        Label        -print-boolean-3106-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3106-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3107-arg1        
        PushF        2.000000                  
        PushF        9.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3107-arg2        
        PushF        5.100000                  
        Label        -compare-3107-sub         
        FSubtract                              
        JumpFZero    -compare-3107-true        
        Jump         -compare-3107-false       
        Label        -compare-3107-true        
        PushI        1                         
        Jump         -compare-3107-join        
        Label        -compare-3107-false       
        PushI        0                         
        Jump         -compare-3107-join        
        Label        -compare-3107-join        
        JumpTrue     -print-boolean-3108-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3108-join  
        Label        -print-boolean-3108-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3108-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3109-arg1        
        PushF        1.100000                  
        PushF        9.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3109-arg2        
        PushF        2.300000                  
        Label        -compare-3109-sub         
        FSubtract                              
        JumpFZero    -compare-3109-true        
        Jump         -compare-3109-false       
        Label        -compare-3109-true        
        PushI        1                         
        Jump         -compare-3109-join        
        Label        -compare-3109-false       
        PushI        0                         
        Jump         -compare-3109-join        
        Label        -compare-3109-join        
        JumpTrue     -print-boolean-3110-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3110-join  
        Label        -print-boolean-3110-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3110-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3111-arg1        
        PushF        5.600000                  
        PushF        1.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3111-arg2        
        PushF        7.800000                  
        Label        -compare-3111-sub         
        FSubtract                              
        JumpFZero    -compare-3111-true        
        Jump         -compare-3111-false       
        Label        -compare-3111-true        
        PushI        1                         
        Jump         -compare-3111-join        
        Label        -compare-3111-false       
        PushI        0                         
        Jump         -compare-3111-join        
        Label        -compare-3111-join        
        JumpTrue     -print-boolean-3112-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3112-join  
        Label        -print-boolean-3112-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3112-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3113-arg1        
        PushF        4.600000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3113-arg2        
        PushF        5.800000                  
        Label        -compare-3113-sub         
        FSubtract                              
        JumpFZero    -compare-3113-true        
        Jump         -compare-3113-false       
        Label        -compare-3113-true        
        PushI        1                         
        Jump         -compare-3113-join        
        Label        -compare-3113-false       
        PushI        0                         
        Jump         -compare-3113-join        
        Label        -compare-3113-join        
        JumpTrue     -print-boolean-3114-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3114-join  
        Label        -print-boolean-3114-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3114-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3115-arg1        
        PushF        6.000000                  
        PushF        9.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3115-arg2        
        PushF        2.200000                  
        Label        -compare-3115-sub         
        FSubtract                              
        JumpFZero    -compare-3115-true        
        Jump         -compare-3115-false       
        Label        -compare-3115-true        
        PushI        1                         
        Jump         -compare-3115-join        
        Label        -compare-3115-false       
        PushI        0                         
        Jump         -compare-3115-join        
        Label        -compare-3115-join        
        JumpTrue     -print-boolean-3116-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3116-join  
        Label        -print-boolean-3116-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3116-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3117-arg1        
        PushF        8.800000                  
        PushF        8.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3117-arg2        
        PushF        1.500000                  
        Label        -compare-3117-sub         
        FSubtract                              
        JumpFZero    -compare-3117-true        
        Jump         -compare-3117-false       
        Label        -compare-3117-true        
        PushI        1                         
        Jump         -compare-3117-join        
        Label        -compare-3117-false       
        PushI        0                         
        Jump         -compare-3117-join        
        Label        -compare-3117-join        
        JumpTrue     -print-boolean-3118-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3118-join  
        Label        -print-boolean-3118-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3118-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3119-arg1        
        PushF        2.400000                  
        PushF        4.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3119-arg2        
        PushF        8.700000                  
        Label        -compare-3119-sub         
        FSubtract                              
        JumpFZero    -compare-3119-true        
        Jump         -compare-3119-false       
        Label        -compare-3119-true        
        PushI        1                         
        Jump         -compare-3119-join        
        Label        -compare-3119-false       
        PushI        0                         
        Jump         -compare-3119-join        
        Label        -compare-3119-join        
        JumpTrue     -print-boolean-3120-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3120-join  
        Label        -print-boolean-3120-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3120-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3121-arg1        
        PushF        9.300000                  
        Label        -compare-3121-arg2        
        PushF        2.700000                  
        PushF        2.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3121-sub         
        FSubtract                              
        JumpFZero    -compare-3121-true        
        Jump         -compare-3121-false       
        Label        -compare-3121-true        
        PushI        1                         
        Jump         -compare-3121-join        
        Label        -compare-3121-false       
        PushI        0                         
        Jump         -compare-3121-join        
        Label        -compare-3121-join        
        JumpTrue     -print-boolean-3122-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3122-join  
        Label        -print-boolean-3122-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3122-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3123-arg1        
        PushF        3.800000                  
        Label        -compare-3123-arg2        
        PushF        4.300000                  
        PushF        8.900000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3123-sub         
        FSubtract                              
        JumpFZero    -compare-3123-true        
        Jump         -compare-3123-false       
        Label        -compare-3123-true        
        PushI        1                         
        Jump         -compare-3123-join        
        Label        -compare-3123-false       
        PushI        0                         
        Jump         -compare-3123-join        
        Label        -compare-3123-join        
        JumpTrue     -print-boolean-3124-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3124-join  
        Label        -print-boolean-3124-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3124-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3125-arg1        
        PushF        3.400000                  
        Label        -compare-3125-arg2        
        PushF        7.500000                  
        PushF        2.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3125-sub         
        FSubtract                              
        JumpFZero    -compare-3125-true        
        Jump         -compare-3125-false       
        Label        -compare-3125-true        
        PushI        1                         
        Jump         -compare-3125-join        
        Label        -compare-3125-false       
        PushI        0                         
        Jump         -compare-3125-join        
        Label        -compare-3125-join        
        JumpTrue     -print-boolean-3126-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3126-join  
        Label        -print-boolean-3126-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3126-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3127-arg1        
        PushF        6.300000                  
        Label        -compare-3127-arg2        
        PushF        4.100000                  
        PushF        4.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3127-sub         
        FSubtract                              
        JumpFZero    -compare-3127-true        
        Jump         -compare-3127-false       
        Label        -compare-3127-true        
        PushI        1                         
        Jump         -compare-3127-join        
        Label        -compare-3127-false       
        PushI        0                         
        Jump         -compare-3127-join        
        Label        -compare-3127-join        
        JumpTrue     -print-boolean-3128-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3128-join  
        Label        -print-boolean-3128-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3128-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3129-arg1        
        PushF        7.400000                  
        Label        -compare-3129-arg2        
        PushF        8.500000                  
        PushF        6.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3129-sub         
        FSubtract                              
        JumpFZero    -compare-3129-true        
        Jump         -compare-3129-false       
        Label        -compare-3129-true        
        PushI        1                         
        Jump         -compare-3129-join        
        Label        -compare-3129-false       
        PushI        0                         
        Jump         -compare-3129-join        
        Label        -compare-3129-join        
        JumpTrue     -print-boolean-3130-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3130-join  
        Label        -print-boolean-3130-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3130-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3131-arg1        
        PushF        3.900000                  
        Label        -compare-3131-arg2        
        PushF        5.700000                  
        PushF        9.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3131-sub         
        FSubtract                              
        JumpFZero    -compare-3131-true        
        Jump         -compare-3131-false       
        Label        -compare-3131-true        
        PushI        1                         
        Jump         -compare-3131-join        
        Label        -compare-3131-false       
        PushI        0                         
        Jump         -compare-3131-join        
        Label        -compare-3131-join        
        JumpTrue     -print-boolean-3132-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3132-join  
        Label        -print-boolean-3132-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3132-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3133-arg1        
        PushF        9.600000                  
        Label        -compare-3133-arg2        
        PushF        5.800000                  
        PushF        8.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3133-sub         
        FSubtract                              
        JumpFZero    -compare-3133-true        
        Jump         -compare-3133-false       
        Label        -compare-3133-true        
        PushI        1                         
        Jump         -compare-3133-join        
        Label        -compare-3133-false       
        PushI        0                         
        Jump         -compare-3133-join        
        Label        -compare-3133-join        
        JumpTrue     -print-boolean-3134-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3134-join  
        Label        -print-boolean-3134-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3134-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3135-arg1        
        PushF        6.100000                  
        Label        -compare-3135-arg2        
        PushF        6.300000                  
        PushF        7.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3135-sub         
        FSubtract                              
        JumpFZero    -compare-3135-true        
        Jump         -compare-3135-false       
        Label        -compare-3135-true        
        PushI        1                         
        Jump         -compare-3135-join        
        Label        -compare-3135-false       
        PushI        0                         
        Jump         -compare-3135-join        
        Label        -compare-3135-join        
        JumpTrue     -print-boolean-3136-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3136-join  
        Label        -print-boolean-3136-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3136-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3137-arg1        
        PushF        3.300000                  
        Label        -compare-3137-arg2        
        PushF        2.500000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3137-sub         
        FSubtract                              
        JumpFZero    -compare-3137-true        
        Jump         -compare-3137-false       
        Label        -compare-3137-true        
        PushI        1                         
        Jump         -compare-3137-join        
        Label        -compare-3137-false       
        PushI        0                         
        Jump         -compare-3137-join        
        Label        -compare-3137-join        
        JumpTrue     -print-boolean-3138-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3138-join  
        Label        -print-boolean-3138-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3138-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3139-arg1        
        PushF        4.700000                  
        Label        -compare-3139-arg2        
        PushF        7.900000                  
        PushF        3.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3139-sub         
        FSubtract                              
        JumpFZero    -compare-3139-true        
        Jump         -compare-3139-false       
        Label        -compare-3139-true        
        PushI        1                         
        Jump         -compare-3139-join        
        Label        -compare-3139-false       
        PushI        0                         
        Jump         -compare-3139-join        
        Label        -compare-3139-join        
        JumpTrue     -print-boolean-3140-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3140-join  
        Label        -print-boolean-3140-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3140-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3141-arg1        
        PushF        6.700000                  
        Label        -compare-3141-arg2        
        PushF        7.800000                  
        PushF        6.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3141-sub         
        FSubtract                              
        JumpFZero    -compare-3141-true        
        Jump         -compare-3141-false       
        Label        -compare-3141-true        
        PushI        1                         
        Jump         -compare-3141-join        
        Label        -compare-3141-false       
        PushI        0                         
        Jump         -compare-3141-join        
        Label        -compare-3141-join        
        JumpTrue     -print-boolean-3142-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3142-join  
        Label        -print-boolean-3142-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3142-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3143-arg1        
        PushF        4.400000                  
        Label        -compare-3143-arg2        
        PushF        5.600000                  
        PushF        5.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3143-sub         
        FSubtract                              
        JumpFZero    -compare-3143-true        
        Jump         -compare-3143-false       
        Label        -compare-3143-true        
        PushI        1                         
        Jump         -compare-3143-join        
        Label        -compare-3143-false       
        PushI        0                         
        Jump         -compare-3143-join        
        Label        -compare-3143-join        
        JumpTrue     -print-boolean-3144-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3144-join  
        Label        -print-boolean-3144-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3144-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3145-arg1        
        PushF        9.800000                  
        PushF        4.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3145-arg2        
        PushF        8.300000                  
        PushF        7.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3145-sub         
        FSubtract                              
        JumpFZero    -compare-3145-true        
        Jump         -compare-3145-false       
        Label        -compare-3145-true        
        PushI        1                         
        Jump         -compare-3145-join        
        Label        -compare-3145-false       
        PushI        0                         
        Jump         -compare-3145-join        
        Label        -compare-3145-join        
        JumpTrue     -print-boolean-3146-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3146-join  
        Label        -print-boolean-3146-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3146-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3147-arg1        
        PushF        8.700000                  
        PushF        7.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3147-arg2        
        PushF        5.300000                  
        PushF        4.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3147-sub         
        FSubtract                              
        JumpFZero    -compare-3147-true        
        Jump         -compare-3147-false       
        Label        -compare-3147-true        
        PushI        1                         
        Jump         -compare-3147-join        
        Label        -compare-3147-false       
        PushI        0                         
        Jump         -compare-3147-join        
        Label        -compare-3147-join        
        JumpTrue     -print-boolean-3148-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3148-join  
        Label        -print-boolean-3148-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3148-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3149-arg1        
        PushF        4.800000                  
        PushF        5.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3149-arg2        
        PushF        8.700000                  
        PushF        6.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3149-sub         
        FSubtract                              
        JumpFZero    -compare-3149-true        
        Jump         -compare-3149-false       
        Label        -compare-3149-true        
        PushI        1                         
        Jump         -compare-3149-join        
        Label        -compare-3149-false       
        PushI        0                         
        Jump         -compare-3149-join        
        Label        -compare-3149-join        
        JumpTrue     -print-boolean-3150-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3150-join  
        Label        -print-boolean-3150-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3150-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3151-arg1        
        PushF        3.400000                  
        PushF        4.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3151-arg2        
        PushF        3.800000                  
        PushF        3.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3151-sub         
        FSubtract                              
        JumpFZero    -compare-3151-true        
        Jump         -compare-3151-false       
        Label        -compare-3151-true        
        PushI        1                         
        Jump         -compare-3151-join        
        Label        -compare-3151-false       
        PushI        0                         
        Jump         -compare-3151-join        
        Label        -compare-3151-join        
        JumpTrue     -print-boolean-3152-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3152-join  
        Label        -print-boolean-3152-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3152-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3153-arg1        
        PushF        2.700000                  
        PushF        5.200000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3153-arg2        
        PushF        2.900000                  
        PushF        8.300000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3153-sub         
        FSubtract                              
        JumpFZero    -compare-3153-true        
        Jump         -compare-3153-false       
        Label        -compare-3153-true        
        PushI        1                         
        Jump         -compare-3153-join        
        Label        -compare-3153-false       
        PushI        0                         
        Jump         -compare-3153-join        
        Label        -compare-3153-join        
        JumpTrue     -print-boolean-3154-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3154-join  
        Label        -print-boolean-3154-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3154-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3155-arg1        
        PushF        9.800000                  
        PushF        2.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3155-arg2        
        PushF        6.400000                  
        PushF        9.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3155-sub         
        FSubtract                              
        JumpFZero    -compare-3155-true        
        Jump         -compare-3155-false       
        Label        -compare-3155-true        
        PushI        1                         
        Jump         -compare-3155-join        
        Label        -compare-3155-false       
        PushI        0                         
        Jump         -compare-3155-join        
        Label        -compare-3155-join        
        JumpTrue     -print-boolean-3156-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3156-join  
        Label        -print-boolean-3156-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3156-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3157-arg1        
        PushF        1.900000                  
        PushF        4.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3157-arg2        
        PushF        9.700000                  
        PushF        4.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3157-sub         
        FSubtract                              
        JumpFZero    -compare-3157-true        
        Jump         -compare-3157-false       
        Label        -compare-3157-true        
        PushI        1                         
        Jump         -compare-3157-join        
        Label        -compare-3157-false       
        PushI        0                         
        Jump         -compare-3157-join        
        Label        -compare-3157-join        
        JumpTrue     -print-boolean-3158-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3158-join  
        Label        -print-boolean-3158-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3158-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3159-arg1        
        PushF        2.300000                  
        PushF        6.500000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3159-arg2        
        PushF        9.600000                  
        PushF        7.700000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3159-sub         
        FSubtract                              
        JumpFZero    -compare-3159-true        
        Jump         -compare-3159-false       
        Label        -compare-3159-true        
        PushI        1                         
        Jump         -compare-3159-join        
        Label        -compare-3159-false       
        PushI        0                         
        Jump         -compare-3159-join        
        Label        -compare-3159-join        
        JumpTrue     -print-boolean-3160-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3160-join  
        Label        -print-boolean-3160-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3160-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3161-arg1        
        PushF        6.500000                  
        PushF        5.000000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3161-arg2        
        PushF        9.100000                  
        PushF        2.600000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3161-sub         
        FSubtract                              
        JumpFZero    -compare-3161-true        
        Jump         -compare-3161-false       
        Label        -compare-3161-true        
        PushI        1                         
        Jump         -compare-3161-join        
        Label        -compare-3161-false       
        PushI        0                         
        Jump         -compare-3161-join        
        Label        -compare-3161-join        
        JumpTrue     -print-boolean-3162-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3162-join  
        Label        -print-boolean-3162-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3162-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3163-arg1        
        PushF        7.100000                  
        PushF        3.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3163-arg2        
        PushF        8.500000                  
        PushF        5.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3163-sub         
        FSubtract                              
        JumpFZero    -compare-3163-true        
        Jump         -compare-3163-false       
        Label        -compare-3163-true        
        PushI        1                         
        Jump         -compare-3163-join        
        Label        -compare-3163-false       
        PushI        0                         
        Jump         -compare-3163-join        
        Label        -compare-3163-join        
        JumpTrue     -print-boolean-3164-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3164-join  
        Label        -print-boolean-3164-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3164-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3165-arg1        
        PushF        5.300000                  
        PushF        3.100000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3165-arg2        
        PushF        8.600000                  
        PushF        1.400000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3165-sub         
        FSubtract                              
        JumpFZero    -compare-3165-true        
        Jump         -compare-3165-false       
        Label        -compare-3165-true        
        PushI        1                         
        Jump         -compare-3165-join        
        Label        -compare-3165-false       
        PushI        0                         
        Jump         -compare-3165-join        
        Label        -compare-3165-join        
        JumpTrue     -print-boolean-3166-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3166-join  
        Label        -print-boolean-3166-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3166-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3167-arg1        
        PushF        9.000000                  
        PushF        1.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3167-arg2        
        PushF        8.300000                  
        PushF        1.800000                  
        Duplicate                              
        JumpFZero    $$f-divide-by-zero        
        FDivide                                
        Label        -compare-3167-sub         
        FSubtract                              
        JumpFZero    -compare-3167-true        
        Jump         -compare-3167-false       
        Label        -compare-3167-true        
        PushI        1                         
        Jump         -compare-3167-join        
        Label        -compare-3167-false       
        PushI        0                         
        Jump         -compare-3167-join        
        Label        -compare-3167-join        
        JumpTrue     -print-boolean-3168-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3168-join  
        Label        -print-boolean-3168-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3168-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
