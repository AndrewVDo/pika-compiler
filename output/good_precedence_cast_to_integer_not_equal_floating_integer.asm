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
        Label        -compare-3038-arg1        
        PushF        8.700000                  
        ConvertI                               
        Label        -compare-3038-arg2        
        PushI        67                        
        Label        -compare-3038-sub         
        Subtract                               
        JumpFalse    -compare-3038-false       
        Jump         -compare-3038-true        
        Label        -compare-3038-true        
        PushI        1                         
        Jump         -compare-3038-join        
        Label        -compare-3038-false       
        PushI        0                         
        Jump         -compare-3038-join        
        Label        -compare-3038-join        
        JumpTrue     -print-boolean-3039-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3039-join  
        Label        -print-boolean-3039-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3039-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3040-arg1        
        PushF        2.900000                  
        ConvertI                               
        Label        -compare-3040-arg2        
        PushI        68                        
        Label        -compare-3040-sub         
        Subtract                               
        JumpFalse    -compare-3040-false       
        Jump         -compare-3040-true        
        Label        -compare-3040-true        
        PushI        1                         
        Jump         -compare-3040-join        
        Label        -compare-3040-false       
        PushI        0                         
        Jump         -compare-3040-join        
        Label        -compare-3040-join        
        JumpTrue     -print-boolean-3041-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3041-join  
        Label        -print-boolean-3041-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3041-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3042-arg1        
        PushF        9.400000                  
        ConvertI                               
        Label        -compare-3042-arg2        
        PushI        73                        
        Label        -compare-3042-sub         
        Subtract                               
        JumpFalse    -compare-3042-false       
        Jump         -compare-3042-true        
        Label        -compare-3042-true        
        PushI        1                         
        Jump         -compare-3042-join        
        Label        -compare-3042-false       
        PushI        0                         
        Jump         -compare-3042-join        
        Label        -compare-3042-join        
        JumpTrue     -print-boolean-3043-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3043-join  
        Label        -print-boolean-3043-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3043-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3044-arg1        
        PushF        9.200000                  
        ConvertI                               
        Label        -compare-3044-arg2        
        PushI        46                        
        Label        -compare-3044-sub         
        Subtract                               
        JumpFalse    -compare-3044-false       
        Jump         -compare-3044-true        
        Label        -compare-3044-true        
        PushI        1                         
        Jump         -compare-3044-join        
        Label        -compare-3044-false       
        PushI        0                         
        Jump         -compare-3044-join        
        Label        -compare-3044-join        
        JumpTrue     -print-boolean-3045-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3045-join  
        Label        -print-boolean-3045-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3045-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3046-arg1        
        PushF        5.000000                  
        ConvertI                               
        Label        -compare-3046-arg2        
        PushI        11                        
        Label        -compare-3046-sub         
        Subtract                               
        JumpFalse    -compare-3046-false       
        Jump         -compare-3046-true        
        Label        -compare-3046-true        
        PushI        1                         
        Jump         -compare-3046-join        
        Label        -compare-3046-false       
        PushI        0                         
        Jump         -compare-3046-join        
        Label        -compare-3046-join        
        JumpTrue     -print-boolean-3047-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3047-join  
        Label        -print-boolean-3047-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3047-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3048-arg1        
        PushF        1.100000                  
        ConvertI                               
        Label        -compare-3048-arg2        
        PushI        57                        
        Label        -compare-3048-sub         
        Subtract                               
        JumpFalse    -compare-3048-false       
        Jump         -compare-3048-true        
        Label        -compare-3048-true        
        PushI        1                         
        Jump         -compare-3048-join        
        Label        -compare-3048-false       
        PushI        0                         
        Jump         -compare-3048-join        
        Label        -compare-3048-join        
        JumpTrue     -print-boolean-3049-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3049-join  
        Label        -print-boolean-3049-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3049-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3050-arg1        
        PushF        5.800000                  
        ConvertI                               
        Label        -compare-3050-arg2        
        PushI        86                        
        Label        -compare-3050-sub         
        Subtract                               
        JumpFalse    -compare-3050-false       
        Jump         -compare-3050-true        
        Label        -compare-3050-true        
        PushI        1                         
        Jump         -compare-3050-join        
        Label        -compare-3050-false       
        PushI        0                         
        Jump         -compare-3050-join        
        Label        -compare-3050-join        
        JumpTrue     -print-boolean-3051-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3051-join  
        Label        -print-boolean-3051-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3051-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3052-arg1        
        PushF        5.600000                  
        ConvertI                               
        Label        -compare-3052-arg2        
        PushI        50                        
        Label        -compare-3052-sub         
        Subtract                               
        JumpFalse    -compare-3052-false       
        Jump         -compare-3052-true        
        Label        -compare-3052-true        
        PushI        1                         
        Jump         -compare-3052-join        
        Label        -compare-3052-false       
        PushI        0                         
        Jump         -compare-3052-join        
        Label        -compare-3052-join        
        JumpTrue     -print-boolean-3053-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3053-join  
        Label        -print-boolean-3053-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3053-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3054-arg1        
        PushF        4.000000                  
        ConvertI                               
        Label        -compare-3054-arg2        
        PushI        78                        
        Label        -compare-3054-sub         
        Subtract                               
        JumpFalse    -compare-3054-false       
        Jump         -compare-3054-true        
        Label        -compare-3054-true        
        PushI        1                         
        Jump         -compare-3054-join        
        Label        -compare-3054-false       
        PushI        0                         
        Jump         -compare-3054-join        
        Label        -compare-3054-join        
        JumpTrue     -print-boolean-3055-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3055-join  
        Label        -print-boolean-3055-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3055-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3056-arg1        
        PushF        8.900000                  
        ConvertI                               
        Label        -compare-3056-arg2        
        PushI        99                        
        Label        -compare-3056-sub         
        Subtract                               
        JumpFalse    -compare-3056-false       
        Jump         -compare-3056-true        
        Label        -compare-3056-true        
        PushI        1                         
        Jump         -compare-3056-join        
        Label        -compare-3056-false       
        PushI        0                         
        Jump         -compare-3056-join        
        Label        -compare-3056-join        
        JumpTrue     -print-boolean-3057-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3057-join  
        Label        -print-boolean-3057-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3057-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3058-arg1        
        PushF        1.300000                  
        ConvertI                               
        Label        -compare-3058-arg2        
        PushI        78                        
        Label        -compare-3058-sub         
        Subtract                               
        JumpFalse    -compare-3058-false       
        Jump         -compare-3058-true        
        Label        -compare-3058-true        
        PushI        1                         
        Jump         -compare-3058-join        
        Label        -compare-3058-false       
        PushI        0                         
        Jump         -compare-3058-join        
        Label        -compare-3058-join        
        JumpTrue     -print-boolean-3059-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3059-join  
        Label        -print-boolean-3059-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3059-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3060-arg1        
        PushF        5.600000                  
        ConvertI                               
        Label        -compare-3060-arg2        
        PushI        27                        
        Label        -compare-3060-sub         
        Subtract                               
        JumpFalse    -compare-3060-false       
        Jump         -compare-3060-true        
        Label        -compare-3060-true        
        PushI        1                         
        Jump         -compare-3060-join        
        Label        -compare-3060-false       
        PushI        0                         
        Jump         -compare-3060-join        
        Label        -compare-3060-join        
        JumpTrue     -print-boolean-3061-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3061-join  
        Label        -print-boolean-3061-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3061-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3062-arg1        
        PushI        79                        
        Label        -compare-3062-arg2        
        PushF        7.000000                  
        ConvertI                               
        Label        -compare-3062-sub         
        Subtract                               
        JumpFalse    -compare-3062-false       
        Jump         -compare-3062-true        
        Label        -compare-3062-true        
        PushI        1                         
        Jump         -compare-3062-join        
        Label        -compare-3062-false       
        PushI        0                         
        Jump         -compare-3062-join        
        Label        -compare-3062-join        
        JumpTrue     -print-boolean-3063-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3063-join  
        Label        -print-boolean-3063-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3063-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3064-arg1        
        PushI        37                        
        Label        -compare-3064-arg2        
        PushF        6.600000                  
        ConvertI                               
        Label        -compare-3064-sub         
        Subtract                               
        JumpFalse    -compare-3064-false       
        Jump         -compare-3064-true        
        Label        -compare-3064-true        
        PushI        1                         
        Jump         -compare-3064-join        
        Label        -compare-3064-false       
        PushI        0                         
        Jump         -compare-3064-join        
        Label        -compare-3064-join        
        JumpTrue     -print-boolean-3065-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3065-join  
        Label        -print-boolean-3065-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3065-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3066-arg1        
        PushI        44                        
        Label        -compare-3066-arg2        
        PushF        6.100000                  
        ConvertI                               
        Label        -compare-3066-sub         
        Subtract                               
        JumpFalse    -compare-3066-false       
        Jump         -compare-3066-true        
        Label        -compare-3066-true        
        PushI        1                         
        Jump         -compare-3066-join        
        Label        -compare-3066-false       
        PushI        0                         
        Jump         -compare-3066-join        
        Label        -compare-3066-join        
        JumpTrue     -print-boolean-3067-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3067-join  
        Label        -print-boolean-3067-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3067-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3068-arg1        
        PushI        27                        
        Label        -compare-3068-arg2        
        PushF        5.700000                  
        ConvertI                               
        Label        -compare-3068-sub         
        Subtract                               
        JumpFalse    -compare-3068-false       
        Jump         -compare-3068-true        
        Label        -compare-3068-true        
        PushI        1                         
        Jump         -compare-3068-join        
        Label        -compare-3068-false       
        PushI        0                         
        Jump         -compare-3068-join        
        Label        -compare-3068-join        
        JumpTrue     -print-boolean-3069-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3069-join  
        Label        -print-boolean-3069-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3069-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3070-arg1        
        PushI        66                        
        Label        -compare-3070-arg2        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-3070-sub         
        Subtract                               
        JumpFalse    -compare-3070-false       
        Jump         -compare-3070-true        
        Label        -compare-3070-true        
        PushI        1                         
        Jump         -compare-3070-join        
        Label        -compare-3070-false       
        PushI        0                         
        Jump         -compare-3070-join        
        Label        -compare-3070-join        
        JumpTrue     -print-boolean-3071-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3071-join  
        Label        -print-boolean-3071-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3071-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3072-arg1        
        PushI        63                        
        Label        -compare-3072-arg2        
        PushF        4.400000                  
        ConvertI                               
        Label        -compare-3072-sub         
        Subtract                               
        JumpFalse    -compare-3072-false       
        Jump         -compare-3072-true        
        Label        -compare-3072-true        
        PushI        1                         
        Jump         -compare-3072-join        
        Label        -compare-3072-false       
        PushI        0                         
        Jump         -compare-3072-join        
        Label        -compare-3072-join        
        JumpTrue     -print-boolean-3073-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3073-join  
        Label        -print-boolean-3073-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3073-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3074-arg1        
        PushI        83                        
        Label        -compare-3074-arg2        
        PushF        4.700000                  
        ConvertI                               
        Label        -compare-3074-sub         
        Subtract                               
        JumpFalse    -compare-3074-false       
        Jump         -compare-3074-true        
        Label        -compare-3074-true        
        PushI        1                         
        Jump         -compare-3074-join        
        Label        -compare-3074-false       
        PushI        0                         
        Jump         -compare-3074-join        
        Label        -compare-3074-join        
        JumpTrue     -print-boolean-3075-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3075-join  
        Label        -print-boolean-3075-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3075-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3076-arg1        
        PushI        71                        
        Label        -compare-3076-arg2        
        PushF        5.200000                  
        ConvertI                               
        Label        -compare-3076-sub         
        Subtract                               
        JumpFalse    -compare-3076-false       
        Jump         -compare-3076-true        
        Label        -compare-3076-true        
        PushI        1                         
        Jump         -compare-3076-join        
        Label        -compare-3076-false       
        PushI        0                         
        Jump         -compare-3076-join        
        Label        -compare-3076-join        
        JumpTrue     -print-boolean-3077-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3077-join  
        Label        -print-boolean-3077-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3077-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3078-arg1        
        PushI        23                        
        Label        -compare-3078-arg2        
        PushF        6.900000                  
        ConvertI                               
        Label        -compare-3078-sub         
        Subtract                               
        JumpFalse    -compare-3078-false       
        Jump         -compare-3078-true        
        Label        -compare-3078-true        
        PushI        1                         
        Jump         -compare-3078-join        
        Label        -compare-3078-false       
        PushI        0                         
        Jump         -compare-3078-join        
        Label        -compare-3078-join        
        JumpTrue     -print-boolean-3079-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3079-join  
        Label        -print-boolean-3079-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3079-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3080-arg1        
        PushI        59                        
        Label        -compare-3080-arg2        
        PushF        7.800000                  
        ConvertI                               
        Label        -compare-3080-sub         
        Subtract                               
        JumpFalse    -compare-3080-false       
        Jump         -compare-3080-true        
        Label        -compare-3080-true        
        PushI        1                         
        Jump         -compare-3080-join        
        Label        -compare-3080-false       
        PushI        0                         
        Jump         -compare-3080-join        
        Label        -compare-3080-join        
        JumpTrue     -print-boolean-3081-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3081-join  
        Label        -print-boolean-3081-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3081-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3082-arg1        
        PushI        55                        
        Label        -compare-3082-arg2        
        PushF        7.000000                  
        ConvertI                               
        Label        -compare-3082-sub         
        Subtract                               
        JumpFalse    -compare-3082-false       
        Jump         -compare-3082-true        
        Label        -compare-3082-true        
        PushI        1                         
        Jump         -compare-3082-join        
        Label        -compare-3082-false       
        PushI        0                         
        Jump         -compare-3082-join        
        Label        -compare-3082-join        
        JumpTrue     -print-boolean-3083-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3083-join  
        Label        -print-boolean-3083-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3083-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3084-arg1        
        PushI        72                        
        Label        -compare-3084-arg2        
        PushF        7.900000                  
        ConvertI                               
        Label        -compare-3084-sub         
        Subtract                               
        JumpFalse    -compare-3084-false       
        Jump         -compare-3084-true        
        Label        -compare-3084-true        
        PushI        1                         
        Jump         -compare-3084-join        
        Label        -compare-3084-false       
        PushI        0                         
        Jump         -compare-3084-join        
        Label        -compare-3084-join        
        JumpTrue     -print-boolean-3085-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3085-join  
        Label        -print-boolean-3085-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3085-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3086-arg1        
        PushF        2.500000                  
        ConvertI                               
        Label        -compare-3086-arg2        
        PushF        5.800000                  
        ConvertI                               
        Label        -compare-3086-sub         
        Subtract                               
        JumpFalse    -compare-3086-false       
        Jump         -compare-3086-true        
        Label        -compare-3086-true        
        PushI        1                         
        Jump         -compare-3086-join        
        Label        -compare-3086-false       
        PushI        0                         
        Jump         -compare-3086-join        
        Label        -compare-3086-join        
        JumpTrue     -print-boolean-3087-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3087-join  
        Label        -print-boolean-3087-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3087-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3088-arg1        
        PushF        8.900000                  
        ConvertI                               
        Label        -compare-3088-arg2        
        PushF        3.300000                  
        ConvertI                               
        Label        -compare-3088-sub         
        Subtract                               
        JumpFalse    -compare-3088-false       
        Jump         -compare-3088-true        
        Label        -compare-3088-true        
        PushI        1                         
        Jump         -compare-3088-join        
        Label        -compare-3088-false       
        PushI        0                         
        Jump         -compare-3088-join        
        Label        -compare-3088-join        
        JumpTrue     -print-boolean-3089-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3089-join  
        Label        -print-boolean-3089-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3089-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3090-arg1        
        PushF        2.000000                  
        ConvertI                               
        Label        -compare-3090-arg2        
        PushF        6.200000                  
        ConvertI                               
        Label        -compare-3090-sub         
        Subtract                               
        JumpFalse    -compare-3090-false       
        Jump         -compare-3090-true        
        Label        -compare-3090-true        
        PushI        1                         
        Jump         -compare-3090-join        
        Label        -compare-3090-false       
        PushI        0                         
        Jump         -compare-3090-join        
        Label        -compare-3090-join        
        JumpTrue     -print-boolean-3091-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3091-join  
        Label        -print-boolean-3091-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3091-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3092-arg1        
        PushF        2.800000                  
        ConvertI                               
        Label        -compare-3092-arg2        
        PushF        4.100000                  
        ConvertI                               
        Label        -compare-3092-sub         
        Subtract                               
        JumpFalse    -compare-3092-false       
        Jump         -compare-3092-true        
        Label        -compare-3092-true        
        PushI        1                         
        Jump         -compare-3092-join        
        Label        -compare-3092-false       
        PushI        0                         
        Jump         -compare-3092-join        
        Label        -compare-3092-join        
        JumpTrue     -print-boolean-3093-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3093-join  
        Label        -print-boolean-3093-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3093-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3094-arg1        
        PushF        1.800000                  
        ConvertI                               
        Label        -compare-3094-arg2        
        PushF        3.700000                  
        ConvertI                               
        Label        -compare-3094-sub         
        Subtract                               
        JumpFalse    -compare-3094-false       
        Jump         -compare-3094-true        
        Label        -compare-3094-true        
        PushI        1                         
        Jump         -compare-3094-join        
        Label        -compare-3094-false       
        PushI        0                         
        Jump         -compare-3094-join        
        Label        -compare-3094-join        
        JumpTrue     -print-boolean-3095-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3095-join  
        Label        -print-boolean-3095-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3095-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3096-arg1        
        PushF        5.100000                  
        ConvertI                               
        Label        -compare-3096-arg2        
        PushF        7.900000                  
        ConvertI                               
        Label        -compare-3096-sub         
        Subtract                               
        JumpFalse    -compare-3096-false       
        Jump         -compare-3096-true        
        Label        -compare-3096-true        
        PushI        1                         
        Jump         -compare-3096-join        
        Label        -compare-3096-false       
        PushI        0                         
        Jump         -compare-3096-join        
        Label        -compare-3096-join        
        JumpTrue     -print-boolean-3097-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3097-join  
        Label        -print-boolean-3097-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3097-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3098-arg1        
        PushF        7.000000                  
        ConvertI                               
        Label        -compare-3098-arg2        
        PushF        8.500000                  
        ConvertI                               
        Label        -compare-3098-sub         
        Subtract                               
        JumpFalse    -compare-3098-false       
        Jump         -compare-3098-true        
        Label        -compare-3098-true        
        PushI        1                         
        Jump         -compare-3098-join        
        Label        -compare-3098-false       
        PushI        0                         
        Jump         -compare-3098-join        
        Label        -compare-3098-join        
        JumpTrue     -print-boolean-3099-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3099-join  
        Label        -print-boolean-3099-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3099-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3100-arg1        
        PushF        1.300000                  
        ConvertI                               
        Label        -compare-3100-arg2        
        PushF        1.000000                  
        ConvertI                               
        Label        -compare-3100-sub         
        Subtract                               
        JumpFalse    -compare-3100-false       
        Jump         -compare-3100-true        
        Label        -compare-3100-true        
        PushI        1                         
        Jump         -compare-3100-join        
        Label        -compare-3100-false       
        PushI        0                         
        Jump         -compare-3100-join        
        Label        -compare-3100-join        
        JumpTrue     -print-boolean-3101-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3101-join  
        Label        -print-boolean-3101-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3101-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3102-arg1        
        PushF        1.500000                  
        ConvertI                               
        Label        -compare-3102-arg2        
        PushF        3.600000                  
        ConvertI                               
        Label        -compare-3102-sub         
        Subtract                               
        JumpFalse    -compare-3102-false       
        Jump         -compare-3102-true        
        Label        -compare-3102-true        
        PushI        1                         
        Jump         -compare-3102-join        
        Label        -compare-3102-false       
        PushI        0                         
        Jump         -compare-3102-join        
        Label        -compare-3102-join        
        JumpTrue     -print-boolean-3103-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3103-join  
        Label        -print-boolean-3103-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3103-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3104-arg1        
        PushF        8.000000                  
        ConvertI                               
        Label        -compare-3104-arg2        
        PushF        6.600000                  
        ConvertI                               
        Label        -compare-3104-sub         
        Subtract                               
        JumpFalse    -compare-3104-false       
        Jump         -compare-3104-true        
        Label        -compare-3104-true        
        PushI        1                         
        Jump         -compare-3104-join        
        Label        -compare-3104-false       
        PushI        0                         
        Jump         -compare-3104-join        
        Label        -compare-3104-join        
        JumpTrue     -print-boolean-3105-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3105-join  
        Label        -print-boolean-3105-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3105-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3106-arg1        
        PushF        5.000000                  
        ConvertI                               
        Label        -compare-3106-arg2        
        PushF        2.800000                  
        ConvertI                               
        Label        -compare-3106-sub         
        Subtract                               
        JumpFalse    -compare-3106-false       
        Jump         -compare-3106-true        
        Label        -compare-3106-true        
        PushI        1                         
        Jump         -compare-3106-join        
        Label        -compare-3106-false       
        PushI        0                         
        Jump         -compare-3106-join        
        Label        -compare-3106-join        
        JumpTrue     -print-boolean-3107-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3107-join  
        Label        -print-boolean-3107-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3107-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3108-arg1        
        PushF        4.800000                  
        ConvertI                               
        Label        -compare-3108-arg2        
        PushF        1.700000                  
        ConvertI                               
        Label        -compare-3108-sub         
        Subtract                               
        JumpFalse    -compare-3108-false       
        Jump         -compare-3108-true        
        Label        -compare-3108-true        
        PushI        1                         
        Jump         -compare-3108-join        
        Label        -compare-3108-false       
        PushI        0                         
        Jump         -compare-3108-join        
        Label        -compare-3108-join        
        JumpTrue     -print-boolean-3109-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3109-join  
        Label        -print-boolean-3109-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3109-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
