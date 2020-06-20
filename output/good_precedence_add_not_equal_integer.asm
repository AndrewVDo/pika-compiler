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
        Label        -compare-1014-arg1        
        PushI        5                         
        PushI        46                        
        Add                                    
        Label        -compare-1014-arg2        
        PushI        40                        
        Label        -compare-1014-sub         
        Subtract                               
        JumpFalse    -compare-1014-false       
        Jump         -compare-1014-true        
        Label        -compare-1014-true        
        PushI        1                         
        Jump         -compare-1014-join        
        Label        -compare-1014-false       
        PushI        0                         
        Jump         -compare-1014-join        
        Label        -compare-1014-join        
        JumpTrue     -print-boolean-1015-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1015-join  
        Label        -print-boolean-1015-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1015-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1016-arg1        
        PushI        24                        
        PushI        49                        
        Add                                    
        Label        -compare-1016-arg2        
        PushI        14                        
        Label        -compare-1016-sub         
        Subtract                               
        JumpFalse    -compare-1016-false       
        Jump         -compare-1016-true        
        Label        -compare-1016-true        
        PushI        1                         
        Jump         -compare-1016-join        
        Label        -compare-1016-false       
        PushI        0                         
        Jump         -compare-1016-join        
        Label        -compare-1016-join        
        JumpTrue     -print-boolean-1017-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1017-join  
        Label        -print-boolean-1017-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1017-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1018-arg1        
        PushI        3                         
        PushI        42                        
        Add                                    
        Label        -compare-1018-arg2        
        PushI        6                         
        Label        -compare-1018-sub         
        Subtract                               
        JumpFalse    -compare-1018-false       
        Jump         -compare-1018-true        
        Label        -compare-1018-true        
        PushI        1                         
        Jump         -compare-1018-join        
        Label        -compare-1018-false       
        PushI        0                         
        Jump         -compare-1018-join        
        Label        -compare-1018-join        
        JumpTrue     -print-boolean-1019-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1019-join  
        Label        -print-boolean-1019-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1019-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1020-arg1        
        PushI        50                        
        PushI        9                         
        Add                                    
        Label        -compare-1020-arg2        
        PushI        27                        
        Label        -compare-1020-sub         
        Subtract                               
        JumpFalse    -compare-1020-false       
        Jump         -compare-1020-true        
        Label        -compare-1020-true        
        PushI        1                         
        Jump         -compare-1020-join        
        Label        -compare-1020-false       
        PushI        0                         
        Jump         -compare-1020-join        
        Label        -compare-1020-join        
        JumpTrue     -print-boolean-1021-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1021-join  
        Label        -print-boolean-1021-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1021-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1022-arg1        
        PushI        20                        
        PushI        71                        
        Add                                    
        Label        -compare-1022-arg2        
        PushI        7                         
        Label        -compare-1022-sub         
        Subtract                               
        JumpFalse    -compare-1022-false       
        Jump         -compare-1022-true        
        Label        -compare-1022-true        
        PushI        1                         
        Jump         -compare-1022-join        
        Label        -compare-1022-false       
        PushI        0                         
        Jump         -compare-1022-join        
        Label        -compare-1022-join        
        JumpTrue     -print-boolean-1023-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1023-join  
        Label        -print-boolean-1023-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1023-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1024-arg1        
        PushI        94                        
        PushI        45                        
        Add                                    
        Label        -compare-1024-arg2        
        PushI        18                        
        Label        -compare-1024-sub         
        Subtract                               
        JumpFalse    -compare-1024-false       
        Jump         -compare-1024-true        
        Label        -compare-1024-true        
        PushI        1                         
        Jump         -compare-1024-join        
        Label        -compare-1024-false       
        PushI        0                         
        Jump         -compare-1024-join        
        Label        -compare-1024-join        
        JumpTrue     -print-boolean-1025-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1025-join  
        Label        -print-boolean-1025-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1025-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1026-arg1        
        PushI        66                        
        PushI        36                        
        Add                                    
        Label        -compare-1026-arg2        
        PushI        47                        
        Label        -compare-1026-sub         
        Subtract                               
        JumpFalse    -compare-1026-false       
        Jump         -compare-1026-true        
        Label        -compare-1026-true        
        PushI        1                         
        Jump         -compare-1026-join        
        Label        -compare-1026-false       
        PushI        0                         
        Jump         -compare-1026-join        
        Label        -compare-1026-join        
        JumpTrue     -print-boolean-1027-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1027-join  
        Label        -print-boolean-1027-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1027-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1028-arg1        
        PushI        20                        
        PushI        82                        
        Add                                    
        Label        -compare-1028-arg2        
        PushI        60                        
        Label        -compare-1028-sub         
        Subtract                               
        JumpFalse    -compare-1028-false       
        Jump         -compare-1028-true        
        Label        -compare-1028-true        
        PushI        1                         
        Jump         -compare-1028-join        
        Label        -compare-1028-false       
        PushI        0                         
        Jump         -compare-1028-join        
        Label        -compare-1028-join        
        JumpTrue     -print-boolean-1029-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1029-join  
        Label        -print-boolean-1029-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1029-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1030-arg1        
        PushI        77                        
        PushI        10                        
        Add                                    
        Label        -compare-1030-arg2        
        PushI        31                        
        Label        -compare-1030-sub         
        Subtract                               
        JumpFalse    -compare-1030-false       
        Jump         -compare-1030-true        
        Label        -compare-1030-true        
        PushI        1                         
        Jump         -compare-1030-join        
        Label        -compare-1030-false       
        PushI        0                         
        Jump         -compare-1030-join        
        Label        -compare-1030-join        
        JumpTrue     -print-boolean-1031-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1031-join  
        Label        -print-boolean-1031-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1031-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1032-arg1        
        PushI        43                        
        PushI        52                        
        Add                                    
        Label        -compare-1032-arg2        
        PushI        97                        
        Label        -compare-1032-sub         
        Subtract                               
        JumpFalse    -compare-1032-false       
        Jump         -compare-1032-true        
        Label        -compare-1032-true        
        PushI        1                         
        Jump         -compare-1032-join        
        Label        -compare-1032-false       
        PushI        0                         
        Jump         -compare-1032-join        
        Label        -compare-1032-join        
        JumpTrue     -print-boolean-1033-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1033-join  
        Label        -print-boolean-1033-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1033-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1034-arg1        
        PushI        72                        
        PushI        89                        
        Add                                    
        Label        -compare-1034-arg2        
        PushI        25                        
        Label        -compare-1034-sub         
        Subtract                               
        JumpFalse    -compare-1034-false       
        Jump         -compare-1034-true        
        Label        -compare-1034-true        
        PushI        1                         
        Jump         -compare-1034-join        
        Label        -compare-1034-false       
        PushI        0                         
        Jump         -compare-1034-join        
        Label        -compare-1034-join        
        JumpTrue     -print-boolean-1035-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1035-join  
        Label        -print-boolean-1035-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1035-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1036-arg1        
        PushI        37                        
        PushI        63                        
        Add                                    
        Label        -compare-1036-arg2        
        PushI        19                        
        Label        -compare-1036-sub         
        Subtract                               
        JumpFalse    -compare-1036-false       
        Jump         -compare-1036-true        
        Label        -compare-1036-true        
        PushI        1                         
        Jump         -compare-1036-join        
        Label        -compare-1036-false       
        PushI        0                         
        Jump         -compare-1036-join        
        Label        -compare-1036-join        
        JumpTrue     -print-boolean-1037-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1037-join  
        Label        -print-boolean-1037-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1037-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1038-arg1        
        PushI        60                        
        Label        -compare-1038-arg2        
        PushI        52                        
        PushI        13                        
        Add                                    
        Label        -compare-1038-sub         
        Subtract                               
        JumpFalse    -compare-1038-false       
        Jump         -compare-1038-true        
        Label        -compare-1038-true        
        PushI        1                         
        Jump         -compare-1038-join        
        Label        -compare-1038-false       
        PushI        0                         
        Jump         -compare-1038-join        
        Label        -compare-1038-join        
        JumpTrue     -print-boolean-1039-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1039-join  
        Label        -print-boolean-1039-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1039-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1040-arg1        
        PushI        27                        
        Label        -compare-1040-arg2        
        PushI        22                        
        PushI        46                        
        Add                                    
        Label        -compare-1040-sub         
        Subtract                               
        JumpFalse    -compare-1040-false       
        Jump         -compare-1040-true        
        Label        -compare-1040-true        
        PushI        1                         
        Jump         -compare-1040-join        
        Label        -compare-1040-false       
        PushI        0                         
        Jump         -compare-1040-join        
        Label        -compare-1040-join        
        JumpTrue     -print-boolean-1041-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1041-join  
        Label        -print-boolean-1041-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1041-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1042-arg1        
        PushI        35                        
        Label        -compare-1042-arg2        
        PushI        16                        
        PushI        66                        
        Add                                    
        Label        -compare-1042-sub         
        Subtract                               
        JumpFalse    -compare-1042-false       
        Jump         -compare-1042-true        
        Label        -compare-1042-true        
        PushI        1                         
        Jump         -compare-1042-join        
        Label        -compare-1042-false       
        PushI        0                         
        Jump         -compare-1042-join        
        Label        -compare-1042-join        
        JumpTrue     -print-boolean-1043-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1043-join  
        Label        -print-boolean-1043-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1043-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1044-arg1        
        PushI        40                        
        Label        -compare-1044-arg2        
        PushI        42                        
        PushI        22                        
        Add                                    
        Label        -compare-1044-sub         
        Subtract                               
        JumpFalse    -compare-1044-false       
        Jump         -compare-1044-true        
        Label        -compare-1044-true        
        PushI        1                         
        Jump         -compare-1044-join        
        Label        -compare-1044-false       
        PushI        0                         
        Jump         -compare-1044-join        
        Label        -compare-1044-join        
        JumpTrue     -print-boolean-1045-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1045-join  
        Label        -print-boolean-1045-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1045-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1046-arg1        
        PushI        70                        
        Label        -compare-1046-arg2        
        PushI        8                         
        PushI        57                        
        Add                                    
        Label        -compare-1046-sub         
        Subtract                               
        JumpFalse    -compare-1046-false       
        Jump         -compare-1046-true        
        Label        -compare-1046-true        
        PushI        1                         
        Jump         -compare-1046-join        
        Label        -compare-1046-false       
        PushI        0                         
        Jump         -compare-1046-join        
        Label        -compare-1046-join        
        JumpTrue     -print-boolean-1047-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1047-join  
        Label        -print-boolean-1047-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1047-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1048-arg1        
        PushI        90                        
        Label        -compare-1048-arg2        
        PushI        30                        
        PushI        52                        
        Add                                    
        Label        -compare-1048-sub         
        Subtract                               
        JumpFalse    -compare-1048-false       
        Jump         -compare-1048-true        
        Label        -compare-1048-true        
        PushI        1                         
        Jump         -compare-1048-join        
        Label        -compare-1048-false       
        PushI        0                         
        Jump         -compare-1048-join        
        Label        -compare-1048-join        
        JumpTrue     -print-boolean-1049-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1049-join  
        Label        -print-boolean-1049-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1049-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1050-arg1        
        PushI        90                        
        Label        -compare-1050-arg2        
        PushI        39                        
        PushI        91                        
        Add                                    
        Label        -compare-1050-sub         
        Subtract                               
        JumpFalse    -compare-1050-false       
        Jump         -compare-1050-true        
        Label        -compare-1050-true        
        PushI        1                         
        Jump         -compare-1050-join        
        Label        -compare-1050-false       
        PushI        0                         
        Jump         -compare-1050-join        
        Label        -compare-1050-join        
        JumpTrue     -print-boolean-1051-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1051-join  
        Label        -print-boolean-1051-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1051-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1052-arg1        
        PushI        18                        
        Label        -compare-1052-arg2        
        PushI        70                        
        PushI        89                        
        Add                                    
        Label        -compare-1052-sub         
        Subtract                               
        JumpFalse    -compare-1052-false       
        Jump         -compare-1052-true        
        Label        -compare-1052-true        
        PushI        1                         
        Jump         -compare-1052-join        
        Label        -compare-1052-false       
        PushI        0                         
        Jump         -compare-1052-join        
        Label        -compare-1052-join        
        JumpTrue     -print-boolean-1053-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1053-join  
        Label        -print-boolean-1053-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1053-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1054-arg1        
        PushI        56                        
        Label        -compare-1054-arg2        
        PushI        74                        
        PushI        6                         
        Add                                    
        Label        -compare-1054-sub         
        Subtract                               
        JumpFalse    -compare-1054-false       
        Jump         -compare-1054-true        
        Label        -compare-1054-true        
        PushI        1                         
        Jump         -compare-1054-join        
        Label        -compare-1054-false       
        PushI        0                         
        Jump         -compare-1054-join        
        Label        -compare-1054-join        
        JumpTrue     -print-boolean-1055-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1055-join  
        Label        -print-boolean-1055-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1055-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1056-arg1        
        PushI        85                        
        Label        -compare-1056-arg2        
        PushI        40                        
        PushI        12                        
        Add                                    
        Label        -compare-1056-sub         
        Subtract                               
        JumpFalse    -compare-1056-false       
        Jump         -compare-1056-true        
        Label        -compare-1056-true        
        PushI        1                         
        Jump         -compare-1056-join        
        Label        -compare-1056-false       
        PushI        0                         
        Jump         -compare-1056-join        
        Label        -compare-1056-join        
        JumpTrue     -print-boolean-1057-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1057-join  
        Label        -print-boolean-1057-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1057-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1058-arg1        
        PushI        58                        
        Label        -compare-1058-arg2        
        PushI        59                        
        PushI        9                         
        Add                                    
        Label        -compare-1058-sub         
        Subtract                               
        JumpFalse    -compare-1058-false       
        Jump         -compare-1058-true        
        Label        -compare-1058-true        
        PushI        1                         
        Jump         -compare-1058-join        
        Label        -compare-1058-false       
        PushI        0                         
        Jump         -compare-1058-join        
        Label        -compare-1058-join        
        JumpTrue     -print-boolean-1059-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1059-join  
        Label        -print-boolean-1059-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1059-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1060-arg1        
        PushI        8                         
        Label        -compare-1060-arg2        
        PushI        86                        
        PushI        66                        
        Add                                    
        Label        -compare-1060-sub         
        Subtract                               
        JumpFalse    -compare-1060-false       
        Jump         -compare-1060-true        
        Label        -compare-1060-true        
        PushI        1                         
        Jump         -compare-1060-join        
        Label        -compare-1060-false       
        PushI        0                         
        Jump         -compare-1060-join        
        Label        -compare-1060-join        
        JumpTrue     -print-boolean-1061-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1061-join  
        Label        -print-boolean-1061-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1061-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1062-arg1        
        PushI        72                        
        PushI        59                        
        Add                                    
        Label        -compare-1062-arg2        
        PushI        53                        
        PushI        23                        
        Add                                    
        Label        -compare-1062-sub         
        Subtract                               
        JumpFalse    -compare-1062-false       
        Jump         -compare-1062-true        
        Label        -compare-1062-true        
        PushI        1                         
        Jump         -compare-1062-join        
        Label        -compare-1062-false       
        PushI        0                         
        Jump         -compare-1062-join        
        Label        -compare-1062-join        
        JumpTrue     -print-boolean-1063-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1063-join  
        Label        -print-boolean-1063-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1063-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1064-arg1        
        PushI        46                        
        PushI        47                        
        Add                                    
        Label        -compare-1064-arg2        
        PushI        77                        
        PushI        45                        
        Add                                    
        Label        -compare-1064-sub         
        Subtract                               
        JumpFalse    -compare-1064-false       
        Jump         -compare-1064-true        
        Label        -compare-1064-true        
        PushI        1                         
        Jump         -compare-1064-join        
        Label        -compare-1064-false       
        PushI        0                         
        Jump         -compare-1064-join        
        Label        -compare-1064-join        
        JumpTrue     -print-boolean-1065-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1065-join  
        Label        -print-boolean-1065-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1065-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1066-arg1        
        PushI        42                        
        PushI        1                         
        Add                                    
        Label        -compare-1066-arg2        
        PushI        44                        
        PushI        71                        
        Add                                    
        Label        -compare-1066-sub         
        Subtract                               
        JumpFalse    -compare-1066-false       
        Jump         -compare-1066-true        
        Label        -compare-1066-true        
        PushI        1                         
        Jump         -compare-1066-join        
        Label        -compare-1066-false       
        PushI        0                         
        Jump         -compare-1066-join        
        Label        -compare-1066-join        
        JumpTrue     -print-boolean-1067-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1067-join  
        Label        -print-boolean-1067-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1067-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1068-arg1        
        PushI        32                        
        PushI        24                        
        Add                                    
        Label        -compare-1068-arg2        
        PushI        82                        
        PushI        97                        
        Add                                    
        Label        -compare-1068-sub         
        Subtract                               
        JumpFalse    -compare-1068-false       
        Jump         -compare-1068-true        
        Label        -compare-1068-true        
        PushI        1                         
        Jump         -compare-1068-join        
        Label        -compare-1068-false       
        PushI        0                         
        Jump         -compare-1068-join        
        Label        -compare-1068-join        
        JumpTrue     -print-boolean-1069-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1069-join  
        Label        -print-boolean-1069-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1069-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1070-arg1        
        PushI        60                        
        PushI        52                        
        Add                                    
        Label        -compare-1070-arg2        
        PushI        53                        
        PushI        28                        
        Add                                    
        Label        -compare-1070-sub         
        Subtract                               
        JumpFalse    -compare-1070-false       
        Jump         -compare-1070-true        
        Label        -compare-1070-true        
        PushI        1                         
        Jump         -compare-1070-join        
        Label        -compare-1070-false       
        PushI        0                         
        Jump         -compare-1070-join        
        Label        -compare-1070-join        
        JumpTrue     -print-boolean-1071-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1071-join  
        Label        -print-boolean-1071-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1071-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1072-arg1        
        PushI        57                        
        PushI        65                        
        Add                                    
        Label        -compare-1072-arg2        
        PushI        80                        
        PushI        7                         
        Add                                    
        Label        -compare-1072-sub         
        Subtract                               
        JumpFalse    -compare-1072-false       
        Jump         -compare-1072-true        
        Label        -compare-1072-true        
        PushI        1                         
        Jump         -compare-1072-join        
        Label        -compare-1072-false       
        PushI        0                         
        Jump         -compare-1072-join        
        Label        -compare-1072-join        
        JumpTrue     -print-boolean-1073-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1073-join  
        Label        -print-boolean-1073-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1073-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1074-arg1        
        PushI        27                        
        PushI        47                        
        Add                                    
        Label        -compare-1074-arg2        
        PushI        23                        
        PushI        98                        
        Add                                    
        Label        -compare-1074-sub         
        Subtract                               
        JumpFalse    -compare-1074-false       
        Jump         -compare-1074-true        
        Label        -compare-1074-true        
        PushI        1                         
        Jump         -compare-1074-join        
        Label        -compare-1074-false       
        PushI        0                         
        Jump         -compare-1074-join        
        Label        -compare-1074-join        
        JumpTrue     -print-boolean-1075-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1075-join  
        Label        -print-boolean-1075-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1075-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1076-arg1        
        PushI        66                        
        PushI        12                        
        Add                                    
        Label        -compare-1076-arg2        
        PushI        6                         
        PushI        85                        
        Add                                    
        Label        -compare-1076-sub         
        Subtract                               
        JumpFalse    -compare-1076-false       
        Jump         -compare-1076-true        
        Label        -compare-1076-true        
        PushI        1                         
        Jump         -compare-1076-join        
        Label        -compare-1076-false       
        PushI        0                         
        Jump         -compare-1076-join        
        Label        -compare-1076-join        
        JumpTrue     -print-boolean-1077-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1077-join  
        Label        -print-boolean-1077-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1077-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1078-arg1        
        PushI        33                        
        PushI        10                        
        Add                                    
        Label        -compare-1078-arg2        
        PushI        45                        
        PushI        68                        
        Add                                    
        Label        -compare-1078-sub         
        Subtract                               
        JumpFalse    -compare-1078-false       
        Jump         -compare-1078-true        
        Label        -compare-1078-true        
        PushI        1                         
        Jump         -compare-1078-join        
        Label        -compare-1078-false       
        PushI        0                         
        Jump         -compare-1078-join        
        Label        -compare-1078-join        
        JumpTrue     -print-boolean-1079-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1079-join  
        Label        -print-boolean-1079-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1079-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1080-arg1        
        PushI        5                         
        PushI        29                        
        Add                                    
        Label        -compare-1080-arg2        
        PushI        40                        
        PushI        80                        
        Add                                    
        Label        -compare-1080-sub         
        Subtract                               
        JumpFalse    -compare-1080-false       
        Jump         -compare-1080-true        
        Label        -compare-1080-true        
        PushI        1                         
        Jump         -compare-1080-join        
        Label        -compare-1080-false       
        PushI        0                         
        Jump         -compare-1080-join        
        Label        -compare-1080-join        
        JumpTrue     -print-boolean-1081-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1081-join  
        Label        -print-boolean-1081-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1081-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1082-arg1        
        PushI        2                         
        PushI        92                        
        Add                                    
        Label        -compare-1082-arg2        
        PushI        35                        
        PushI        29                        
        Add                                    
        Label        -compare-1082-sub         
        Subtract                               
        JumpFalse    -compare-1082-false       
        Jump         -compare-1082-true        
        Label        -compare-1082-true        
        PushI        1                         
        Jump         -compare-1082-join        
        Label        -compare-1082-false       
        PushI        0                         
        Jump         -compare-1082-join        
        Label        -compare-1082-join        
        JumpTrue     -print-boolean-1083-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1083-join  
        Label        -print-boolean-1083-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1083-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-1084-arg1        
        PushI        39                        
        PushI        16                        
        Add                                    
        Label        -compare-1084-arg2        
        PushI        91                        
        PushI        90                        
        Add                                    
        Label        -compare-1084-sub         
        Subtract                               
        JumpFalse    -compare-1084-false       
        Jump         -compare-1084-true        
        Label        -compare-1084-true        
        PushI        1                         
        Jump         -compare-1084-join        
        Label        -compare-1084-false       
        PushI        0                         
        Jump         -compare-1084-join        
        Label        -compare-1084-join        
        JumpTrue     -print-boolean-1085-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-1085-join  
        Label        -print-boolean-1085-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-1085-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
