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
        Label        -compare-6014-arg1        
        PushI        33                        
        PushI        52                        
        Subtract                               
        Label        -compare-6014-arg2        
        PushI        85                        
        Label        -compare-6014-sub         
        Subtract                               
        JumpNeg      -compare-6014-true        
        Jump         -compare-6014-false       
        Label        -compare-6014-true        
        PushI        1                         
        Jump         -compare-6014-join        
        Label        -compare-6014-false       
        PushI        0                         
        Jump         -compare-6014-join        
        Label        -compare-6014-join        
        JumpTrue     -print-boolean-6015-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6015-join  
        Label        -print-boolean-6015-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6015-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6016-arg1        
        PushI        5                         
        PushI        60                        
        Subtract                               
        Label        -compare-6016-arg2        
        PushI        72                        
        Label        -compare-6016-sub         
        Subtract                               
        JumpNeg      -compare-6016-true        
        Jump         -compare-6016-false       
        Label        -compare-6016-true        
        PushI        1                         
        Jump         -compare-6016-join        
        Label        -compare-6016-false       
        PushI        0                         
        Jump         -compare-6016-join        
        Label        -compare-6016-join        
        JumpTrue     -print-boolean-6017-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6017-join  
        Label        -print-boolean-6017-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6017-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6018-arg1        
        PushI        54                        
        PushI        37                        
        Subtract                               
        Label        -compare-6018-arg2        
        PushI        98                        
        Label        -compare-6018-sub         
        Subtract                               
        JumpNeg      -compare-6018-true        
        Jump         -compare-6018-false       
        Label        -compare-6018-true        
        PushI        1                         
        Jump         -compare-6018-join        
        Label        -compare-6018-false       
        PushI        0                         
        Jump         -compare-6018-join        
        Label        -compare-6018-join        
        JumpTrue     -print-boolean-6019-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6019-join  
        Label        -print-boolean-6019-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6019-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6020-arg1        
        PushI        39                        
        PushI        2                         
        Subtract                               
        Label        -compare-6020-arg2        
        PushI        8                         
        Label        -compare-6020-sub         
        Subtract                               
        JumpNeg      -compare-6020-true        
        Jump         -compare-6020-false       
        Label        -compare-6020-true        
        PushI        1                         
        Jump         -compare-6020-join        
        Label        -compare-6020-false       
        PushI        0                         
        Jump         -compare-6020-join        
        Label        -compare-6020-join        
        JumpTrue     -print-boolean-6021-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6021-join  
        Label        -print-boolean-6021-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6021-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6022-arg1        
        PushI        71                        
        PushI        39                        
        Subtract                               
        Label        -compare-6022-arg2        
        PushI        16                        
        Label        -compare-6022-sub         
        Subtract                               
        JumpNeg      -compare-6022-true        
        Jump         -compare-6022-false       
        Label        -compare-6022-true        
        PushI        1                         
        Jump         -compare-6022-join        
        Label        -compare-6022-false       
        PushI        0                         
        Jump         -compare-6022-join        
        Label        -compare-6022-join        
        JumpTrue     -print-boolean-6023-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6023-join  
        Label        -print-boolean-6023-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6023-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6024-arg1        
        PushI        31                        
        PushI        56                        
        Subtract                               
        Label        -compare-6024-arg2        
        PushI        48                        
        Label        -compare-6024-sub         
        Subtract                               
        JumpNeg      -compare-6024-true        
        Jump         -compare-6024-false       
        Label        -compare-6024-true        
        PushI        1                         
        Jump         -compare-6024-join        
        Label        -compare-6024-false       
        PushI        0                         
        Jump         -compare-6024-join        
        Label        -compare-6024-join        
        JumpTrue     -print-boolean-6025-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6025-join  
        Label        -print-boolean-6025-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6025-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6026-arg1        
        PushI        60                        
        PushI        65                        
        Subtract                               
        Label        -compare-6026-arg2        
        PushI        59                        
        Label        -compare-6026-sub         
        Subtract                               
        JumpNeg      -compare-6026-true        
        Jump         -compare-6026-false       
        Label        -compare-6026-true        
        PushI        1                         
        Jump         -compare-6026-join        
        Label        -compare-6026-false       
        PushI        0                         
        Jump         -compare-6026-join        
        Label        -compare-6026-join        
        JumpTrue     -print-boolean-6027-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6027-join  
        Label        -print-boolean-6027-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6027-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6028-arg1        
        PushI        17                        
        PushI        91                        
        Subtract                               
        Label        -compare-6028-arg2        
        PushI        29                        
        Label        -compare-6028-sub         
        Subtract                               
        JumpNeg      -compare-6028-true        
        Jump         -compare-6028-false       
        Label        -compare-6028-true        
        PushI        1                         
        Jump         -compare-6028-join        
        Label        -compare-6028-false       
        PushI        0                         
        Jump         -compare-6028-join        
        Label        -compare-6028-join        
        JumpTrue     -print-boolean-6029-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6029-join  
        Label        -print-boolean-6029-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6029-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6030-arg1        
        PushI        76                        
        PushI        26                        
        Subtract                               
        Label        -compare-6030-arg2        
        PushI        34                        
        Label        -compare-6030-sub         
        Subtract                               
        JumpNeg      -compare-6030-true        
        Jump         -compare-6030-false       
        Label        -compare-6030-true        
        PushI        1                         
        Jump         -compare-6030-join        
        Label        -compare-6030-false       
        PushI        0                         
        Jump         -compare-6030-join        
        Label        -compare-6030-join        
        JumpTrue     -print-boolean-6031-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6031-join  
        Label        -print-boolean-6031-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6031-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6032-arg1        
        PushI        98                        
        PushI        9                         
        Subtract                               
        Label        -compare-6032-arg2        
        PushI        25                        
        Label        -compare-6032-sub         
        Subtract                               
        JumpNeg      -compare-6032-true        
        Jump         -compare-6032-false       
        Label        -compare-6032-true        
        PushI        1                         
        Jump         -compare-6032-join        
        Label        -compare-6032-false       
        PushI        0                         
        Jump         -compare-6032-join        
        Label        -compare-6032-join        
        JumpTrue     -print-boolean-6033-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6033-join  
        Label        -print-boolean-6033-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6033-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6034-arg1        
        PushI        92                        
        PushI        89                        
        Subtract                               
        Label        -compare-6034-arg2        
        PushI        32                        
        Label        -compare-6034-sub         
        Subtract                               
        JumpNeg      -compare-6034-true        
        Jump         -compare-6034-false       
        Label        -compare-6034-true        
        PushI        1                         
        Jump         -compare-6034-join        
        Label        -compare-6034-false       
        PushI        0                         
        Jump         -compare-6034-join        
        Label        -compare-6034-join        
        JumpTrue     -print-boolean-6035-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6035-join  
        Label        -print-boolean-6035-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6035-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6036-arg1        
        PushI        27                        
        PushI        26                        
        Subtract                               
        Label        -compare-6036-arg2        
        PushI        43                        
        Label        -compare-6036-sub         
        Subtract                               
        JumpNeg      -compare-6036-true        
        Jump         -compare-6036-false       
        Label        -compare-6036-true        
        PushI        1                         
        Jump         -compare-6036-join        
        Label        -compare-6036-false       
        PushI        0                         
        Jump         -compare-6036-join        
        Label        -compare-6036-join        
        JumpTrue     -print-boolean-6037-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6037-join  
        Label        -print-boolean-6037-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6037-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6038-arg1        
        PushI        27                        
        Label        -compare-6038-arg2        
        PushI        25                        
        PushI        73                        
        Subtract                               
        Label        -compare-6038-sub         
        Subtract                               
        JumpNeg      -compare-6038-true        
        Jump         -compare-6038-false       
        Label        -compare-6038-true        
        PushI        1                         
        Jump         -compare-6038-join        
        Label        -compare-6038-false       
        PushI        0                         
        Jump         -compare-6038-join        
        Label        -compare-6038-join        
        JumpTrue     -print-boolean-6039-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6039-join  
        Label        -print-boolean-6039-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6039-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6040-arg1        
        PushI        24                        
        Label        -compare-6040-arg2        
        PushI        37                        
        PushI        63                        
        Subtract                               
        Label        -compare-6040-sub         
        Subtract                               
        JumpNeg      -compare-6040-true        
        Jump         -compare-6040-false       
        Label        -compare-6040-true        
        PushI        1                         
        Jump         -compare-6040-join        
        Label        -compare-6040-false       
        PushI        0                         
        Jump         -compare-6040-join        
        Label        -compare-6040-join        
        JumpTrue     -print-boolean-6041-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6041-join  
        Label        -print-boolean-6041-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6041-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6042-arg1        
        PushI        37                        
        Label        -compare-6042-arg2        
        PushI        33                        
        PushI        40                        
        Subtract                               
        Label        -compare-6042-sub         
        Subtract                               
        JumpNeg      -compare-6042-true        
        Jump         -compare-6042-false       
        Label        -compare-6042-true        
        PushI        1                         
        Jump         -compare-6042-join        
        Label        -compare-6042-false       
        PushI        0                         
        Jump         -compare-6042-join        
        Label        -compare-6042-join        
        JumpTrue     -print-boolean-6043-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6043-join  
        Label        -print-boolean-6043-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6043-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6044-arg1        
        PushI        2                         
        Label        -compare-6044-arg2        
        PushI        71                        
        PushI        91                        
        Subtract                               
        Label        -compare-6044-sub         
        Subtract                               
        JumpNeg      -compare-6044-true        
        Jump         -compare-6044-false       
        Label        -compare-6044-true        
        PushI        1                         
        Jump         -compare-6044-join        
        Label        -compare-6044-false       
        PushI        0                         
        Jump         -compare-6044-join        
        Label        -compare-6044-join        
        JumpTrue     -print-boolean-6045-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6045-join  
        Label        -print-boolean-6045-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6045-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6046-arg1        
        PushI        79                        
        Label        -compare-6046-arg2        
        PushI        28                        
        PushI        61                        
        Subtract                               
        Label        -compare-6046-sub         
        Subtract                               
        JumpNeg      -compare-6046-true        
        Jump         -compare-6046-false       
        Label        -compare-6046-true        
        PushI        1                         
        Jump         -compare-6046-join        
        Label        -compare-6046-false       
        PushI        0                         
        Jump         -compare-6046-join        
        Label        -compare-6046-join        
        JumpTrue     -print-boolean-6047-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6047-join  
        Label        -print-boolean-6047-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6047-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6048-arg1        
        PushI        65                        
        Label        -compare-6048-arg2        
        PushI        29                        
        PushI        15                        
        Subtract                               
        Label        -compare-6048-sub         
        Subtract                               
        JumpNeg      -compare-6048-true        
        Jump         -compare-6048-false       
        Label        -compare-6048-true        
        PushI        1                         
        Jump         -compare-6048-join        
        Label        -compare-6048-false       
        PushI        0                         
        Jump         -compare-6048-join        
        Label        -compare-6048-join        
        JumpTrue     -print-boolean-6049-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6049-join  
        Label        -print-boolean-6049-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6049-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6050-arg1        
        PushI        43                        
        Label        -compare-6050-arg2        
        PushI        29                        
        PushI        57                        
        Subtract                               
        Label        -compare-6050-sub         
        Subtract                               
        JumpNeg      -compare-6050-true        
        Jump         -compare-6050-false       
        Label        -compare-6050-true        
        PushI        1                         
        Jump         -compare-6050-join        
        Label        -compare-6050-false       
        PushI        0                         
        Jump         -compare-6050-join        
        Label        -compare-6050-join        
        JumpTrue     -print-boolean-6051-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6051-join  
        Label        -print-boolean-6051-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6051-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6052-arg1        
        PushI        34                        
        Label        -compare-6052-arg2        
        PushI        26                        
        PushI        54                        
        Subtract                               
        Label        -compare-6052-sub         
        Subtract                               
        JumpNeg      -compare-6052-true        
        Jump         -compare-6052-false       
        Label        -compare-6052-true        
        PushI        1                         
        Jump         -compare-6052-join        
        Label        -compare-6052-false       
        PushI        0                         
        Jump         -compare-6052-join        
        Label        -compare-6052-join        
        JumpTrue     -print-boolean-6053-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6053-join  
        Label        -print-boolean-6053-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6053-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6054-arg1        
        PushI        66                        
        Label        -compare-6054-arg2        
        PushI        71                        
        PushI        27                        
        Subtract                               
        Label        -compare-6054-sub         
        Subtract                               
        JumpNeg      -compare-6054-true        
        Jump         -compare-6054-false       
        Label        -compare-6054-true        
        PushI        1                         
        Jump         -compare-6054-join        
        Label        -compare-6054-false       
        PushI        0                         
        Jump         -compare-6054-join        
        Label        -compare-6054-join        
        JumpTrue     -print-boolean-6055-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6055-join  
        Label        -print-boolean-6055-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6055-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6056-arg1        
        PushI        20                        
        Label        -compare-6056-arg2        
        PushI        64                        
        PushI        7                         
        Subtract                               
        Label        -compare-6056-sub         
        Subtract                               
        JumpNeg      -compare-6056-true        
        Jump         -compare-6056-false       
        Label        -compare-6056-true        
        PushI        1                         
        Jump         -compare-6056-join        
        Label        -compare-6056-false       
        PushI        0                         
        Jump         -compare-6056-join        
        Label        -compare-6056-join        
        JumpTrue     -print-boolean-6057-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6057-join  
        Label        -print-boolean-6057-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6057-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6058-arg1        
        PushI        24                        
        Label        -compare-6058-arg2        
        PushI        46                        
        PushI        45                        
        Subtract                               
        Label        -compare-6058-sub         
        Subtract                               
        JumpNeg      -compare-6058-true        
        Jump         -compare-6058-false       
        Label        -compare-6058-true        
        PushI        1                         
        Jump         -compare-6058-join        
        Label        -compare-6058-false       
        PushI        0                         
        Jump         -compare-6058-join        
        Label        -compare-6058-join        
        JumpTrue     -print-boolean-6059-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6059-join  
        Label        -print-boolean-6059-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6059-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6060-arg1        
        PushI        61                        
        Label        -compare-6060-arg2        
        PushI        69                        
        PushI        24                        
        Subtract                               
        Label        -compare-6060-sub         
        Subtract                               
        JumpNeg      -compare-6060-true        
        Jump         -compare-6060-false       
        Label        -compare-6060-true        
        PushI        1                         
        Jump         -compare-6060-join        
        Label        -compare-6060-false       
        PushI        0                         
        Jump         -compare-6060-join        
        Label        -compare-6060-join        
        JumpTrue     -print-boolean-6061-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6061-join  
        Label        -print-boolean-6061-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6061-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6062-arg1        
        PushI        8                         
        PushI        45                        
        Subtract                               
        Label        -compare-6062-arg2        
        PushI        81                        
        PushI        96                        
        Subtract                               
        Label        -compare-6062-sub         
        Subtract                               
        JumpNeg      -compare-6062-true        
        Jump         -compare-6062-false       
        Label        -compare-6062-true        
        PushI        1                         
        Jump         -compare-6062-join        
        Label        -compare-6062-false       
        PushI        0                         
        Jump         -compare-6062-join        
        Label        -compare-6062-join        
        JumpTrue     -print-boolean-6063-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6063-join  
        Label        -print-boolean-6063-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6063-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6064-arg1        
        PushI        8                         
        PushI        41                        
        Subtract                               
        Label        -compare-6064-arg2        
        PushI        51                        
        PushI        39                        
        Subtract                               
        Label        -compare-6064-sub         
        Subtract                               
        JumpNeg      -compare-6064-true        
        Jump         -compare-6064-false       
        Label        -compare-6064-true        
        PushI        1                         
        Jump         -compare-6064-join        
        Label        -compare-6064-false       
        PushI        0                         
        Jump         -compare-6064-join        
        Label        -compare-6064-join        
        JumpTrue     -print-boolean-6065-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6065-join  
        Label        -print-boolean-6065-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6065-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6066-arg1        
        PushI        58                        
        PushI        87                        
        Subtract                               
        Label        -compare-6066-arg2        
        PushI        52                        
        PushI        7                         
        Subtract                               
        Label        -compare-6066-sub         
        Subtract                               
        JumpNeg      -compare-6066-true        
        Jump         -compare-6066-false       
        Label        -compare-6066-true        
        PushI        1                         
        Jump         -compare-6066-join        
        Label        -compare-6066-false       
        PushI        0                         
        Jump         -compare-6066-join        
        Label        -compare-6066-join        
        JumpTrue     -print-boolean-6067-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6067-join  
        Label        -print-boolean-6067-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6067-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6068-arg1        
        PushI        64                        
        PushI        22                        
        Subtract                               
        Label        -compare-6068-arg2        
        PushI        51                        
        PushI        44                        
        Subtract                               
        Label        -compare-6068-sub         
        Subtract                               
        JumpNeg      -compare-6068-true        
        Jump         -compare-6068-false       
        Label        -compare-6068-true        
        PushI        1                         
        Jump         -compare-6068-join        
        Label        -compare-6068-false       
        PushI        0                         
        Jump         -compare-6068-join        
        Label        -compare-6068-join        
        JumpTrue     -print-boolean-6069-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6069-join  
        Label        -print-boolean-6069-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6069-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6070-arg1        
        PushI        75                        
        PushI        43                        
        Subtract                               
        Label        -compare-6070-arg2        
        PushI        50                        
        PushI        90                        
        Subtract                               
        Label        -compare-6070-sub         
        Subtract                               
        JumpNeg      -compare-6070-true        
        Jump         -compare-6070-false       
        Label        -compare-6070-true        
        PushI        1                         
        Jump         -compare-6070-join        
        Label        -compare-6070-false       
        PushI        0                         
        Jump         -compare-6070-join        
        Label        -compare-6070-join        
        JumpTrue     -print-boolean-6071-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6071-join  
        Label        -print-boolean-6071-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6071-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6072-arg1        
        PushI        67                        
        PushI        73                        
        Subtract                               
        Label        -compare-6072-arg2        
        PushI        72                        
        PushI        43                        
        Subtract                               
        Label        -compare-6072-sub         
        Subtract                               
        JumpNeg      -compare-6072-true        
        Jump         -compare-6072-false       
        Label        -compare-6072-true        
        PushI        1                         
        Jump         -compare-6072-join        
        Label        -compare-6072-false       
        PushI        0                         
        Jump         -compare-6072-join        
        Label        -compare-6072-join        
        JumpTrue     -print-boolean-6073-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6073-join  
        Label        -print-boolean-6073-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6073-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6074-arg1        
        PushI        9                         
        PushI        74                        
        Subtract                               
        Label        -compare-6074-arg2        
        PushI        90                        
        PushI        86                        
        Subtract                               
        Label        -compare-6074-sub         
        Subtract                               
        JumpNeg      -compare-6074-true        
        Jump         -compare-6074-false       
        Label        -compare-6074-true        
        PushI        1                         
        Jump         -compare-6074-join        
        Label        -compare-6074-false       
        PushI        0                         
        Jump         -compare-6074-join        
        Label        -compare-6074-join        
        JumpTrue     -print-boolean-6075-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6075-join  
        Label        -print-boolean-6075-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6075-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6076-arg1        
        PushI        65                        
        PushI        98                        
        Subtract                               
        Label        -compare-6076-arg2        
        PushI        42                        
        PushI        25                        
        Subtract                               
        Label        -compare-6076-sub         
        Subtract                               
        JumpNeg      -compare-6076-true        
        Jump         -compare-6076-false       
        Label        -compare-6076-true        
        PushI        1                         
        Jump         -compare-6076-join        
        Label        -compare-6076-false       
        PushI        0                         
        Jump         -compare-6076-join        
        Label        -compare-6076-join        
        JumpTrue     -print-boolean-6077-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6077-join  
        Label        -print-boolean-6077-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6077-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6078-arg1        
        PushI        79                        
        PushI        21                        
        Subtract                               
        Label        -compare-6078-arg2        
        PushI        4                         
        PushI        56                        
        Subtract                               
        Label        -compare-6078-sub         
        Subtract                               
        JumpNeg      -compare-6078-true        
        Jump         -compare-6078-false       
        Label        -compare-6078-true        
        PushI        1                         
        Jump         -compare-6078-join        
        Label        -compare-6078-false       
        PushI        0                         
        Jump         -compare-6078-join        
        Label        -compare-6078-join        
        JumpTrue     -print-boolean-6079-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6079-join  
        Label        -print-boolean-6079-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6079-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6080-arg1        
        PushI        17                        
        PushI        12                        
        Subtract                               
        Label        -compare-6080-arg2        
        PushI        11                        
        PushI        75                        
        Subtract                               
        Label        -compare-6080-sub         
        Subtract                               
        JumpNeg      -compare-6080-true        
        Jump         -compare-6080-false       
        Label        -compare-6080-true        
        PushI        1                         
        Jump         -compare-6080-join        
        Label        -compare-6080-false       
        PushI        0                         
        Jump         -compare-6080-join        
        Label        -compare-6080-join        
        JumpTrue     -print-boolean-6081-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6081-join  
        Label        -print-boolean-6081-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6081-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6082-arg1        
        PushI        82                        
        PushI        30                        
        Subtract                               
        Label        -compare-6082-arg2        
        PushI        27                        
        PushI        3                         
        Subtract                               
        Label        -compare-6082-sub         
        Subtract                               
        JumpNeg      -compare-6082-true        
        Jump         -compare-6082-false       
        Label        -compare-6082-true        
        PushI        1                         
        Jump         -compare-6082-join        
        Label        -compare-6082-false       
        PushI        0                         
        Jump         -compare-6082-join        
        Label        -compare-6082-join        
        JumpTrue     -print-boolean-6083-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6083-join  
        Label        -print-boolean-6083-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6083-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6084-arg1        
        PushI        90                        
        PushI        94                        
        Subtract                               
        Label        -compare-6084-arg2        
        PushI        36                        
        PushI        58                        
        Subtract                               
        Label        -compare-6084-sub         
        Subtract                               
        JumpNeg      -compare-6084-true        
        Jump         -compare-6084-false       
        Label        -compare-6084-true        
        PushI        1                         
        Jump         -compare-6084-join        
        Label        -compare-6084-false       
        PushI        0                         
        Jump         -compare-6084-join        
        Label        -compare-6084-join        
        JumpTrue     -print-boolean-6085-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6085-join  
        Label        -print-boolean-6085-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6085-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
