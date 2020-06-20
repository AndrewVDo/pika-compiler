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
        Label        -compare-3025-arg1        
        PushF        8.700000                  
        ConvertI                               
        Label        -compare-3025-arg2        
        PushI        67                        
        Label        -compare-3025-sub         
        Subtract                               
        JumpFalse    -compare-3025-false       
        Jump         -compare-3025-true        
        Label        -compare-3025-true        
        PushI        1                         
        Jump         -compare-3025-join        
        Label        -compare-3025-false       
        PushI        0                         
        Jump         -compare-3025-join        
        Label        -compare-3025-join        
        JumpTrue     -print-boolean-3026-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3026-join  
        Label        -print-boolean-3026-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3026-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3027-arg1        
        PushF        2.900000                  
        ConvertI                               
        Label        -compare-3027-arg2        
        PushI        68                        
        Label        -compare-3027-sub         
        Subtract                               
        JumpFalse    -compare-3027-false       
        Jump         -compare-3027-true        
        Label        -compare-3027-true        
        PushI        1                         
        Jump         -compare-3027-join        
        Label        -compare-3027-false       
        PushI        0                         
        Jump         -compare-3027-join        
        Label        -compare-3027-join        
        JumpTrue     -print-boolean-3028-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3028-join  
        Label        -print-boolean-3028-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3028-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3029-arg1        
        PushF        9.400000                  
        ConvertI                               
        Label        -compare-3029-arg2        
        PushI        73                        
        Label        -compare-3029-sub         
        Subtract                               
        JumpFalse    -compare-3029-false       
        Jump         -compare-3029-true        
        Label        -compare-3029-true        
        PushI        1                         
        Jump         -compare-3029-join        
        Label        -compare-3029-false       
        PushI        0                         
        Jump         -compare-3029-join        
        Label        -compare-3029-join        
        JumpTrue     -print-boolean-3030-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3030-join  
        Label        -print-boolean-3030-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3030-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3031-arg1        
        PushF        9.200000                  
        ConvertI                               
        Label        -compare-3031-arg2        
        PushI        46                        
        Label        -compare-3031-sub         
        Subtract                               
        JumpFalse    -compare-3031-false       
        Jump         -compare-3031-true        
        Label        -compare-3031-true        
        PushI        1                         
        Jump         -compare-3031-join        
        Label        -compare-3031-false       
        PushI        0                         
        Jump         -compare-3031-join        
        Label        -compare-3031-join        
        JumpTrue     -print-boolean-3032-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3032-join  
        Label        -print-boolean-3032-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3032-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3033-arg1        
        PushF        5.000000                  
        ConvertI                               
        Label        -compare-3033-arg2        
        PushI        11                        
        Label        -compare-3033-sub         
        Subtract                               
        JumpFalse    -compare-3033-false       
        Jump         -compare-3033-true        
        Label        -compare-3033-true        
        PushI        1                         
        Jump         -compare-3033-join        
        Label        -compare-3033-false       
        PushI        0                         
        Jump         -compare-3033-join        
        Label        -compare-3033-join        
        JumpTrue     -print-boolean-3034-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3034-join  
        Label        -print-boolean-3034-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3034-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3035-arg1        
        PushF        1.100000                  
        ConvertI                               
        Label        -compare-3035-arg2        
        PushI        57                        
        Label        -compare-3035-sub         
        Subtract                               
        JumpFalse    -compare-3035-false       
        Jump         -compare-3035-true        
        Label        -compare-3035-true        
        PushI        1                         
        Jump         -compare-3035-join        
        Label        -compare-3035-false       
        PushI        0                         
        Jump         -compare-3035-join        
        Label        -compare-3035-join        
        JumpTrue     -print-boolean-3036-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3036-join  
        Label        -print-boolean-3036-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3036-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3037-arg1        
        PushF        5.800000                  
        ConvertI                               
        Label        -compare-3037-arg2        
        PushI        86                        
        Label        -compare-3037-sub         
        Subtract                               
        JumpFalse    -compare-3037-false       
        Jump         -compare-3037-true        
        Label        -compare-3037-true        
        PushI        1                         
        Jump         -compare-3037-join        
        Label        -compare-3037-false       
        PushI        0                         
        Jump         -compare-3037-join        
        Label        -compare-3037-join        
        JumpTrue     -print-boolean-3038-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3038-join  
        Label        -print-boolean-3038-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3038-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3039-arg1        
        PushF        5.600000                  
        ConvertI                               
        Label        -compare-3039-arg2        
        PushI        50                        
        Label        -compare-3039-sub         
        Subtract                               
        JumpFalse    -compare-3039-false       
        Jump         -compare-3039-true        
        Label        -compare-3039-true        
        PushI        1                         
        Jump         -compare-3039-join        
        Label        -compare-3039-false       
        PushI        0                         
        Jump         -compare-3039-join        
        Label        -compare-3039-join        
        JumpTrue     -print-boolean-3040-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3040-join  
        Label        -print-boolean-3040-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3040-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3041-arg1        
        PushF        4.000000                  
        ConvertI                               
        Label        -compare-3041-arg2        
        PushI        78                        
        Label        -compare-3041-sub         
        Subtract                               
        JumpFalse    -compare-3041-false       
        Jump         -compare-3041-true        
        Label        -compare-3041-true        
        PushI        1                         
        Jump         -compare-3041-join        
        Label        -compare-3041-false       
        PushI        0                         
        Jump         -compare-3041-join        
        Label        -compare-3041-join        
        JumpTrue     -print-boolean-3042-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3042-join  
        Label        -print-boolean-3042-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3042-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3043-arg1        
        PushF        8.900000                  
        ConvertI                               
        Label        -compare-3043-arg2        
        PushI        99                        
        Label        -compare-3043-sub         
        Subtract                               
        JumpFalse    -compare-3043-false       
        Jump         -compare-3043-true        
        Label        -compare-3043-true        
        PushI        1                         
        Jump         -compare-3043-join        
        Label        -compare-3043-false       
        PushI        0                         
        Jump         -compare-3043-join        
        Label        -compare-3043-join        
        JumpTrue     -print-boolean-3044-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3044-join  
        Label        -print-boolean-3044-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3044-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3045-arg1        
        PushF        1.300000                  
        ConvertI                               
        Label        -compare-3045-arg2        
        PushI        78                        
        Label        -compare-3045-sub         
        Subtract                               
        JumpFalse    -compare-3045-false       
        Jump         -compare-3045-true        
        Label        -compare-3045-true        
        PushI        1                         
        Jump         -compare-3045-join        
        Label        -compare-3045-false       
        PushI        0                         
        Jump         -compare-3045-join        
        Label        -compare-3045-join        
        JumpTrue     -print-boolean-3046-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3046-join  
        Label        -print-boolean-3046-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3046-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3047-arg1        
        PushF        5.600000                  
        ConvertI                               
        Label        -compare-3047-arg2        
        PushI        27                        
        Label        -compare-3047-sub         
        Subtract                               
        JumpFalse    -compare-3047-false       
        Jump         -compare-3047-true        
        Label        -compare-3047-true        
        PushI        1                         
        Jump         -compare-3047-join        
        Label        -compare-3047-false       
        PushI        0                         
        Jump         -compare-3047-join        
        Label        -compare-3047-join        
        JumpTrue     -print-boolean-3048-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3048-join  
        Label        -print-boolean-3048-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3048-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3049-arg1        
        PushI        79                        
        Label        -compare-3049-arg2        
        PushF        7.000000                  
        ConvertI                               
        Label        -compare-3049-sub         
        Subtract                               
        JumpFalse    -compare-3049-false       
        Jump         -compare-3049-true        
        Label        -compare-3049-true        
        PushI        1                         
        Jump         -compare-3049-join        
        Label        -compare-3049-false       
        PushI        0                         
        Jump         -compare-3049-join        
        Label        -compare-3049-join        
        JumpTrue     -print-boolean-3050-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3050-join  
        Label        -print-boolean-3050-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3050-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3051-arg1        
        PushI        37                        
        Label        -compare-3051-arg2        
        PushF        6.600000                  
        ConvertI                               
        Label        -compare-3051-sub         
        Subtract                               
        JumpFalse    -compare-3051-false       
        Jump         -compare-3051-true        
        Label        -compare-3051-true        
        PushI        1                         
        Jump         -compare-3051-join        
        Label        -compare-3051-false       
        PushI        0                         
        Jump         -compare-3051-join        
        Label        -compare-3051-join        
        JumpTrue     -print-boolean-3052-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3052-join  
        Label        -print-boolean-3052-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3052-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3053-arg1        
        PushI        44                        
        Label        -compare-3053-arg2        
        PushF        6.100000                  
        ConvertI                               
        Label        -compare-3053-sub         
        Subtract                               
        JumpFalse    -compare-3053-false       
        Jump         -compare-3053-true        
        Label        -compare-3053-true        
        PushI        1                         
        Jump         -compare-3053-join        
        Label        -compare-3053-false       
        PushI        0                         
        Jump         -compare-3053-join        
        Label        -compare-3053-join        
        JumpTrue     -print-boolean-3054-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3054-join  
        Label        -print-boolean-3054-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3054-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3055-arg1        
        PushI        27                        
        Label        -compare-3055-arg2        
        PushF        5.700000                  
        ConvertI                               
        Label        -compare-3055-sub         
        Subtract                               
        JumpFalse    -compare-3055-false       
        Jump         -compare-3055-true        
        Label        -compare-3055-true        
        PushI        1                         
        Jump         -compare-3055-join        
        Label        -compare-3055-false       
        PushI        0                         
        Jump         -compare-3055-join        
        Label        -compare-3055-join        
        JumpTrue     -print-boolean-3056-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3056-join  
        Label        -print-boolean-3056-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3056-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3057-arg1        
        PushI        66                        
        Label        -compare-3057-arg2        
        PushF        9.900000                  
        ConvertI                               
        Label        -compare-3057-sub         
        Subtract                               
        JumpFalse    -compare-3057-false       
        Jump         -compare-3057-true        
        Label        -compare-3057-true        
        PushI        1                         
        Jump         -compare-3057-join        
        Label        -compare-3057-false       
        PushI        0                         
        Jump         -compare-3057-join        
        Label        -compare-3057-join        
        JumpTrue     -print-boolean-3058-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3058-join  
        Label        -print-boolean-3058-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3058-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3059-arg1        
        PushI        63                        
        Label        -compare-3059-arg2        
        PushF        4.400000                  
        ConvertI                               
        Label        -compare-3059-sub         
        Subtract                               
        JumpFalse    -compare-3059-false       
        Jump         -compare-3059-true        
        Label        -compare-3059-true        
        PushI        1                         
        Jump         -compare-3059-join        
        Label        -compare-3059-false       
        PushI        0                         
        Jump         -compare-3059-join        
        Label        -compare-3059-join        
        JumpTrue     -print-boolean-3060-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3060-join  
        Label        -print-boolean-3060-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3060-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3061-arg1        
        PushI        83                        
        Label        -compare-3061-arg2        
        PushF        4.700000                  
        ConvertI                               
        Label        -compare-3061-sub         
        Subtract                               
        JumpFalse    -compare-3061-false       
        Jump         -compare-3061-true        
        Label        -compare-3061-true        
        PushI        1                         
        Jump         -compare-3061-join        
        Label        -compare-3061-false       
        PushI        0                         
        Jump         -compare-3061-join        
        Label        -compare-3061-join        
        JumpTrue     -print-boolean-3062-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3062-join  
        Label        -print-boolean-3062-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3062-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3063-arg1        
        PushI        71                        
        Label        -compare-3063-arg2        
        PushF        5.200000                  
        ConvertI                               
        Label        -compare-3063-sub         
        Subtract                               
        JumpFalse    -compare-3063-false       
        Jump         -compare-3063-true        
        Label        -compare-3063-true        
        PushI        1                         
        Jump         -compare-3063-join        
        Label        -compare-3063-false       
        PushI        0                         
        Jump         -compare-3063-join        
        Label        -compare-3063-join        
        JumpTrue     -print-boolean-3064-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3064-join  
        Label        -print-boolean-3064-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3064-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3065-arg1        
        PushI        23                        
        Label        -compare-3065-arg2        
        PushF        6.900000                  
        ConvertI                               
        Label        -compare-3065-sub         
        Subtract                               
        JumpFalse    -compare-3065-false       
        Jump         -compare-3065-true        
        Label        -compare-3065-true        
        PushI        1                         
        Jump         -compare-3065-join        
        Label        -compare-3065-false       
        PushI        0                         
        Jump         -compare-3065-join        
        Label        -compare-3065-join        
        JumpTrue     -print-boolean-3066-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3066-join  
        Label        -print-boolean-3066-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3066-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3067-arg1        
        PushI        59                        
        Label        -compare-3067-arg2        
        PushF        7.800000                  
        ConvertI                               
        Label        -compare-3067-sub         
        Subtract                               
        JumpFalse    -compare-3067-false       
        Jump         -compare-3067-true        
        Label        -compare-3067-true        
        PushI        1                         
        Jump         -compare-3067-join        
        Label        -compare-3067-false       
        PushI        0                         
        Jump         -compare-3067-join        
        Label        -compare-3067-join        
        JumpTrue     -print-boolean-3068-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3068-join  
        Label        -print-boolean-3068-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3068-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3069-arg1        
        PushI        55                        
        Label        -compare-3069-arg2        
        PushF        7.000000                  
        ConvertI                               
        Label        -compare-3069-sub         
        Subtract                               
        JumpFalse    -compare-3069-false       
        Jump         -compare-3069-true        
        Label        -compare-3069-true        
        PushI        1                         
        Jump         -compare-3069-join        
        Label        -compare-3069-false       
        PushI        0                         
        Jump         -compare-3069-join        
        Label        -compare-3069-join        
        JumpTrue     -print-boolean-3070-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3070-join  
        Label        -print-boolean-3070-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3070-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3071-arg1        
        PushI        72                        
        Label        -compare-3071-arg2        
        PushF        7.900000                  
        ConvertI                               
        Label        -compare-3071-sub         
        Subtract                               
        JumpFalse    -compare-3071-false       
        Jump         -compare-3071-true        
        Label        -compare-3071-true        
        PushI        1                         
        Jump         -compare-3071-join        
        Label        -compare-3071-false       
        PushI        0                         
        Jump         -compare-3071-join        
        Label        -compare-3071-join        
        JumpTrue     -print-boolean-3072-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3072-join  
        Label        -print-boolean-3072-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3072-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3073-arg1        
        PushF        2.500000                  
        ConvertI                               
        Label        -compare-3073-arg2        
        PushF        5.800000                  
        ConvertI                               
        Label        -compare-3073-sub         
        Subtract                               
        JumpFalse    -compare-3073-false       
        Jump         -compare-3073-true        
        Label        -compare-3073-true        
        PushI        1                         
        Jump         -compare-3073-join        
        Label        -compare-3073-false       
        PushI        0                         
        Jump         -compare-3073-join        
        Label        -compare-3073-join        
        JumpTrue     -print-boolean-3074-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3074-join  
        Label        -print-boolean-3074-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3074-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3075-arg1        
        PushF        8.900000                  
        ConvertI                               
        Label        -compare-3075-arg2        
        PushF        3.300000                  
        ConvertI                               
        Label        -compare-3075-sub         
        Subtract                               
        JumpFalse    -compare-3075-false       
        Jump         -compare-3075-true        
        Label        -compare-3075-true        
        PushI        1                         
        Jump         -compare-3075-join        
        Label        -compare-3075-false       
        PushI        0                         
        Jump         -compare-3075-join        
        Label        -compare-3075-join        
        JumpTrue     -print-boolean-3076-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3076-join  
        Label        -print-boolean-3076-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3076-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3077-arg1        
        PushF        2.000000                  
        ConvertI                               
        Label        -compare-3077-arg2        
        PushF        6.200000                  
        ConvertI                               
        Label        -compare-3077-sub         
        Subtract                               
        JumpFalse    -compare-3077-false       
        Jump         -compare-3077-true        
        Label        -compare-3077-true        
        PushI        1                         
        Jump         -compare-3077-join        
        Label        -compare-3077-false       
        PushI        0                         
        Jump         -compare-3077-join        
        Label        -compare-3077-join        
        JumpTrue     -print-boolean-3078-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3078-join  
        Label        -print-boolean-3078-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3078-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3079-arg1        
        PushF        2.800000                  
        ConvertI                               
        Label        -compare-3079-arg2        
        PushF        4.100000                  
        ConvertI                               
        Label        -compare-3079-sub         
        Subtract                               
        JumpFalse    -compare-3079-false       
        Jump         -compare-3079-true        
        Label        -compare-3079-true        
        PushI        1                         
        Jump         -compare-3079-join        
        Label        -compare-3079-false       
        PushI        0                         
        Jump         -compare-3079-join        
        Label        -compare-3079-join        
        JumpTrue     -print-boolean-3080-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3080-join  
        Label        -print-boolean-3080-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3080-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3081-arg1        
        PushF        1.800000                  
        ConvertI                               
        Label        -compare-3081-arg2        
        PushF        3.700000                  
        ConvertI                               
        Label        -compare-3081-sub         
        Subtract                               
        JumpFalse    -compare-3081-false       
        Jump         -compare-3081-true        
        Label        -compare-3081-true        
        PushI        1                         
        Jump         -compare-3081-join        
        Label        -compare-3081-false       
        PushI        0                         
        Jump         -compare-3081-join        
        Label        -compare-3081-join        
        JumpTrue     -print-boolean-3082-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3082-join  
        Label        -print-boolean-3082-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3082-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3083-arg1        
        PushF        5.100000                  
        ConvertI                               
        Label        -compare-3083-arg2        
        PushF        7.900000                  
        ConvertI                               
        Label        -compare-3083-sub         
        Subtract                               
        JumpFalse    -compare-3083-false       
        Jump         -compare-3083-true        
        Label        -compare-3083-true        
        PushI        1                         
        Jump         -compare-3083-join        
        Label        -compare-3083-false       
        PushI        0                         
        Jump         -compare-3083-join        
        Label        -compare-3083-join        
        JumpTrue     -print-boolean-3084-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3084-join  
        Label        -print-boolean-3084-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3084-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3085-arg1        
        PushF        7.000000                  
        ConvertI                               
        Label        -compare-3085-arg2        
        PushF        8.500000                  
        ConvertI                               
        Label        -compare-3085-sub         
        Subtract                               
        JumpFalse    -compare-3085-false       
        Jump         -compare-3085-true        
        Label        -compare-3085-true        
        PushI        1                         
        Jump         -compare-3085-join        
        Label        -compare-3085-false       
        PushI        0                         
        Jump         -compare-3085-join        
        Label        -compare-3085-join        
        JumpTrue     -print-boolean-3086-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3086-join  
        Label        -print-boolean-3086-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3086-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3087-arg1        
        PushF        1.300000                  
        ConvertI                               
        Label        -compare-3087-arg2        
        PushF        1.000000                  
        ConvertI                               
        Label        -compare-3087-sub         
        Subtract                               
        JumpFalse    -compare-3087-false       
        Jump         -compare-3087-true        
        Label        -compare-3087-true        
        PushI        1                         
        Jump         -compare-3087-join        
        Label        -compare-3087-false       
        PushI        0                         
        Jump         -compare-3087-join        
        Label        -compare-3087-join        
        JumpTrue     -print-boolean-3088-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3088-join  
        Label        -print-boolean-3088-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3088-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3089-arg1        
        PushF        1.500000                  
        ConvertI                               
        Label        -compare-3089-arg2        
        PushF        3.600000                  
        ConvertI                               
        Label        -compare-3089-sub         
        Subtract                               
        JumpFalse    -compare-3089-false       
        Jump         -compare-3089-true        
        Label        -compare-3089-true        
        PushI        1                         
        Jump         -compare-3089-join        
        Label        -compare-3089-false       
        PushI        0                         
        Jump         -compare-3089-join        
        Label        -compare-3089-join        
        JumpTrue     -print-boolean-3090-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3090-join  
        Label        -print-boolean-3090-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3090-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3091-arg1        
        PushF        8.000000                  
        ConvertI                               
        Label        -compare-3091-arg2        
        PushF        6.600000                  
        ConvertI                               
        Label        -compare-3091-sub         
        Subtract                               
        JumpFalse    -compare-3091-false       
        Jump         -compare-3091-true        
        Label        -compare-3091-true        
        PushI        1                         
        Jump         -compare-3091-join        
        Label        -compare-3091-false       
        PushI        0                         
        Jump         -compare-3091-join        
        Label        -compare-3091-join        
        JumpTrue     -print-boolean-3092-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3092-join  
        Label        -print-boolean-3092-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3092-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3093-arg1        
        PushF        5.000000                  
        ConvertI                               
        Label        -compare-3093-arg2        
        PushF        2.800000                  
        ConvertI                               
        Label        -compare-3093-sub         
        Subtract                               
        JumpFalse    -compare-3093-false       
        Jump         -compare-3093-true        
        Label        -compare-3093-true        
        PushI        1                         
        Jump         -compare-3093-join        
        Label        -compare-3093-false       
        PushI        0                         
        Jump         -compare-3093-join        
        Label        -compare-3093-join        
        JumpTrue     -print-boolean-3094-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3094-join  
        Label        -print-boolean-3094-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3094-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-3095-arg1        
        PushF        4.800000                  
        ConvertI                               
        Label        -compare-3095-arg2        
        PushF        1.700000                  
        ConvertI                               
        Label        -compare-3095-sub         
        Subtract                               
        JumpFalse    -compare-3095-false       
        Jump         -compare-3095-true        
        Label        -compare-3095-true        
        PushI        1                         
        Jump         -compare-3095-join        
        Label        -compare-3095-false       
        PushI        0                         
        Jump         -compare-3095-join        
        Label        -compare-3095-join        
        JumpTrue     -print-boolean-3096-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-3096-join  
        Label        -print-boolean-3096-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-3096-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
