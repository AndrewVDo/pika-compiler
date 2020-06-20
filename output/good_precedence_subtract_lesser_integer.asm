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
        Label        -compare-6001-arg1        
        PushI        33                        
        PushI        52                        
        Subtract                               
        Label        -compare-6001-arg2        
        PushI        85                        
        Label        -compare-6001-sub         
        Subtract                               
        JumpNeg      -compare-6001-true        
        Jump         -compare-6001-false       
        Label        -compare-6001-true        
        PushI        1                         
        Jump         -compare-6001-join        
        Label        -compare-6001-false       
        PushI        0                         
        Jump         -compare-6001-join        
        Label        -compare-6001-join        
        JumpTrue     -print-boolean-6002-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6002-join  
        Label        -print-boolean-6002-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6002-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6003-arg1        
        PushI        5                         
        PushI        60                        
        Subtract                               
        Label        -compare-6003-arg2        
        PushI        72                        
        Label        -compare-6003-sub         
        Subtract                               
        JumpNeg      -compare-6003-true        
        Jump         -compare-6003-false       
        Label        -compare-6003-true        
        PushI        1                         
        Jump         -compare-6003-join        
        Label        -compare-6003-false       
        PushI        0                         
        Jump         -compare-6003-join        
        Label        -compare-6003-join        
        JumpTrue     -print-boolean-6004-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6004-join  
        Label        -print-boolean-6004-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6004-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6005-arg1        
        PushI        54                        
        PushI        37                        
        Subtract                               
        Label        -compare-6005-arg2        
        PushI        98                        
        Label        -compare-6005-sub         
        Subtract                               
        JumpNeg      -compare-6005-true        
        Jump         -compare-6005-false       
        Label        -compare-6005-true        
        PushI        1                         
        Jump         -compare-6005-join        
        Label        -compare-6005-false       
        PushI        0                         
        Jump         -compare-6005-join        
        Label        -compare-6005-join        
        JumpTrue     -print-boolean-6006-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6006-join  
        Label        -print-boolean-6006-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6006-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6007-arg1        
        PushI        39                        
        PushI        2                         
        Subtract                               
        Label        -compare-6007-arg2        
        PushI        8                         
        Label        -compare-6007-sub         
        Subtract                               
        JumpNeg      -compare-6007-true        
        Jump         -compare-6007-false       
        Label        -compare-6007-true        
        PushI        1                         
        Jump         -compare-6007-join        
        Label        -compare-6007-false       
        PushI        0                         
        Jump         -compare-6007-join        
        Label        -compare-6007-join        
        JumpTrue     -print-boolean-6008-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6008-join  
        Label        -print-boolean-6008-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6008-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6009-arg1        
        PushI        71                        
        PushI        39                        
        Subtract                               
        Label        -compare-6009-arg2        
        PushI        16                        
        Label        -compare-6009-sub         
        Subtract                               
        JumpNeg      -compare-6009-true        
        Jump         -compare-6009-false       
        Label        -compare-6009-true        
        PushI        1                         
        Jump         -compare-6009-join        
        Label        -compare-6009-false       
        PushI        0                         
        Jump         -compare-6009-join        
        Label        -compare-6009-join        
        JumpTrue     -print-boolean-6010-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6010-join  
        Label        -print-boolean-6010-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6010-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6011-arg1        
        PushI        31                        
        PushI        56                        
        Subtract                               
        Label        -compare-6011-arg2        
        PushI        48                        
        Label        -compare-6011-sub         
        Subtract                               
        JumpNeg      -compare-6011-true        
        Jump         -compare-6011-false       
        Label        -compare-6011-true        
        PushI        1                         
        Jump         -compare-6011-join        
        Label        -compare-6011-false       
        PushI        0                         
        Jump         -compare-6011-join        
        Label        -compare-6011-join        
        JumpTrue     -print-boolean-6012-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6012-join  
        Label        -print-boolean-6012-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6012-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6013-arg1        
        PushI        60                        
        PushI        65                        
        Subtract                               
        Label        -compare-6013-arg2        
        PushI        59                        
        Label        -compare-6013-sub         
        Subtract                               
        JumpNeg      -compare-6013-true        
        Jump         -compare-6013-false       
        Label        -compare-6013-true        
        PushI        1                         
        Jump         -compare-6013-join        
        Label        -compare-6013-false       
        PushI        0                         
        Jump         -compare-6013-join        
        Label        -compare-6013-join        
        JumpTrue     -print-boolean-6014-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6014-join  
        Label        -print-boolean-6014-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6014-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6015-arg1        
        PushI        17                        
        PushI        91                        
        Subtract                               
        Label        -compare-6015-arg2        
        PushI        29                        
        Label        -compare-6015-sub         
        Subtract                               
        JumpNeg      -compare-6015-true        
        Jump         -compare-6015-false       
        Label        -compare-6015-true        
        PushI        1                         
        Jump         -compare-6015-join        
        Label        -compare-6015-false       
        PushI        0                         
        Jump         -compare-6015-join        
        Label        -compare-6015-join        
        JumpTrue     -print-boolean-6016-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6016-join  
        Label        -print-boolean-6016-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6016-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6017-arg1        
        PushI        76                        
        PushI        26                        
        Subtract                               
        Label        -compare-6017-arg2        
        PushI        34                        
        Label        -compare-6017-sub         
        Subtract                               
        JumpNeg      -compare-6017-true        
        Jump         -compare-6017-false       
        Label        -compare-6017-true        
        PushI        1                         
        Jump         -compare-6017-join        
        Label        -compare-6017-false       
        PushI        0                         
        Jump         -compare-6017-join        
        Label        -compare-6017-join        
        JumpTrue     -print-boolean-6018-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6018-join  
        Label        -print-boolean-6018-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6018-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6019-arg1        
        PushI        98                        
        PushI        9                         
        Subtract                               
        Label        -compare-6019-arg2        
        PushI        25                        
        Label        -compare-6019-sub         
        Subtract                               
        JumpNeg      -compare-6019-true        
        Jump         -compare-6019-false       
        Label        -compare-6019-true        
        PushI        1                         
        Jump         -compare-6019-join        
        Label        -compare-6019-false       
        PushI        0                         
        Jump         -compare-6019-join        
        Label        -compare-6019-join        
        JumpTrue     -print-boolean-6020-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6020-join  
        Label        -print-boolean-6020-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6020-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6021-arg1        
        PushI        92                        
        PushI        89                        
        Subtract                               
        Label        -compare-6021-arg2        
        PushI        32                        
        Label        -compare-6021-sub         
        Subtract                               
        JumpNeg      -compare-6021-true        
        Jump         -compare-6021-false       
        Label        -compare-6021-true        
        PushI        1                         
        Jump         -compare-6021-join        
        Label        -compare-6021-false       
        PushI        0                         
        Jump         -compare-6021-join        
        Label        -compare-6021-join        
        JumpTrue     -print-boolean-6022-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6022-join  
        Label        -print-boolean-6022-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6022-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6023-arg1        
        PushI        27                        
        PushI        26                        
        Subtract                               
        Label        -compare-6023-arg2        
        PushI        43                        
        Label        -compare-6023-sub         
        Subtract                               
        JumpNeg      -compare-6023-true        
        Jump         -compare-6023-false       
        Label        -compare-6023-true        
        PushI        1                         
        Jump         -compare-6023-join        
        Label        -compare-6023-false       
        PushI        0                         
        Jump         -compare-6023-join        
        Label        -compare-6023-join        
        JumpTrue     -print-boolean-6024-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6024-join  
        Label        -print-boolean-6024-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6024-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6025-arg1        
        PushI        27                        
        Label        -compare-6025-arg2        
        PushI        25                        
        PushI        73                        
        Subtract                               
        Label        -compare-6025-sub         
        Subtract                               
        JumpNeg      -compare-6025-true        
        Jump         -compare-6025-false       
        Label        -compare-6025-true        
        PushI        1                         
        Jump         -compare-6025-join        
        Label        -compare-6025-false       
        PushI        0                         
        Jump         -compare-6025-join        
        Label        -compare-6025-join        
        JumpTrue     -print-boolean-6026-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6026-join  
        Label        -print-boolean-6026-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6026-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6027-arg1        
        PushI        24                        
        Label        -compare-6027-arg2        
        PushI        37                        
        PushI        63                        
        Subtract                               
        Label        -compare-6027-sub         
        Subtract                               
        JumpNeg      -compare-6027-true        
        Jump         -compare-6027-false       
        Label        -compare-6027-true        
        PushI        1                         
        Jump         -compare-6027-join        
        Label        -compare-6027-false       
        PushI        0                         
        Jump         -compare-6027-join        
        Label        -compare-6027-join        
        JumpTrue     -print-boolean-6028-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6028-join  
        Label        -print-boolean-6028-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6028-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6029-arg1        
        PushI        37                        
        Label        -compare-6029-arg2        
        PushI        33                        
        PushI        40                        
        Subtract                               
        Label        -compare-6029-sub         
        Subtract                               
        JumpNeg      -compare-6029-true        
        Jump         -compare-6029-false       
        Label        -compare-6029-true        
        PushI        1                         
        Jump         -compare-6029-join        
        Label        -compare-6029-false       
        PushI        0                         
        Jump         -compare-6029-join        
        Label        -compare-6029-join        
        JumpTrue     -print-boolean-6030-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6030-join  
        Label        -print-boolean-6030-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6030-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6031-arg1        
        PushI        2                         
        Label        -compare-6031-arg2        
        PushI        71                        
        PushI        91                        
        Subtract                               
        Label        -compare-6031-sub         
        Subtract                               
        JumpNeg      -compare-6031-true        
        Jump         -compare-6031-false       
        Label        -compare-6031-true        
        PushI        1                         
        Jump         -compare-6031-join        
        Label        -compare-6031-false       
        PushI        0                         
        Jump         -compare-6031-join        
        Label        -compare-6031-join        
        JumpTrue     -print-boolean-6032-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6032-join  
        Label        -print-boolean-6032-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6032-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6033-arg1        
        PushI        79                        
        Label        -compare-6033-arg2        
        PushI        28                        
        PushI        61                        
        Subtract                               
        Label        -compare-6033-sub         
        Subtract                               
        JumpNeg      -compare-6033-true        
        Jump         -compare-6033-false       
        Label        -compare-6033-true        
        PushI        1                         
        Jump         -compare-6033-join        
        Label        -compare-6033-false       
        PushI        0                         
        Jump         -compare-6033-join        
        Label        -compare-6033-join        
        JumpTrue     -print-boolean-6034-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6034-join  
        Label        -print-boolean-6034-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6034-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6035-arg1        
        PushI        65                        
        Label        -compare-6035-arg2        
        PushI        29                        
        PushI        15                        
        Subtract                               
        Label        -compare-6035-sub         
        Subtract                               
        JumpNeg      -compare-6035-true        
        Jump         -compare-6035-false       
        Label        -compare-6035-true        
        PushI        1                         
        Jump         -compare-6035-join        
        Label        -compare-6035-false       
        PushI        0                         
        Jump         -compare-6035-join        
        Label        -compare-6035-join        
        JumpTrue     -print-boolean-6036-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6036-join  
        Label        -print-boolean-6036-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6036-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6037-arg1        
        PushI        43                        
        Label        -compare-6037-arg2        
        PushI        29                        
        PushI        57                        
        Subtract                               
        Label        -compare-6037-sub         
        Subtract                               
        JumpNeg      -compare-6037-true        
        Jump         -compare-6037-false       
        Label        -compare-6037-true        
        PushI        1                         
        Jump         -compare-6037-join        
        Label        -compare-6037-false       
        PushI        0                         
        Jump         -compare-6037-join        
        Label        -compare-6037-join        
        JumpTrue     -print-boolean-6038-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6038-join  
        Label        -print-boolean-6038-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6038-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6039-arg1        
        PushI        34                        
        Label        -compare-6039-arg2        
        PushI        26                        
        PushI        54                        
        Subtract                               
        Label        -compare-6039-sub         
        Subtract                               
        JumpNeg      -compare-6039-true        
        Jump         -compare-6039-false       
        Label        -compare-6039-true        
        PushI        1                         
        Jump         -compare-6039-join        
        Label        -compare-6039-false       
        PushI        0                         
        Jump         -compare-6039-join        
        Label        -compare-6039-join        
        JumpTrue     -print-boolean-6040-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6040-join  
        Label        -print-boolean-6040-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6040-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6041-arg1        
        PushI        66                        
        Label        -compare-6041-arg2        
        PushI        71                        
        PushI        27                        
        Subtract                               
        Label        -compare-6041-sub         
        Subtract                               
        JumpNeg      -compare-6041-true        
        Jump         -compare-6041-false       
        Label        -compare-6041-true        
        PushI        1                         
        Jump         -compare-6041-join        
        Label        -compare-6041-false       
        PushI        0                         
        Jump         -compare-6041-join        
        Label        -compare-6041-join        
        JumpTrue     -print-boolean-6042-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6042-join  
        Label        -print-boolean-6042-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6042-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6043-arg1        
        PushI        20                        
        Label        -compare-6043-arg2        
        PushI        64                        
        PushI        7                         
        Subtract                               
        Label        -compare-6043-sub         
        Subtract                               
        JumpNeg      -compare-6043-true        
        Jump         -compare-6043-false       
        Label        -compare-6043-true        
        PushI        1                         
        Jump         -compare-6043-join        
        Label        -compare-6043-false       
        PushI        0                         
        Jump         -compare-6043-join        
        Label        -compare-6043-join        
        JumpTrue     -print-boolean-6044-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6044-join  
        Label        -print-boolean-6044-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6044-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6045-arg1        
        PushI        24                        
        Label        -compare-6045-arg2        
        PushI        46                        
        PushI        45                        
        Subtract                               
        Label        -compare-6045-sub         
        Subtract                               
        JumpNeg      -compare-6045-true        
        Jump         -compare-6045-false       
        Label        -compare-6045-true        
        PushI        1                         
        Jump         -compare-6045-join        
        Label        -compare-6045-false       
        PushI        0                         
        Jump         -compare-6045-join        
        Label        -compare-6045-join        
        JumpTrue     -print-boolean-6046-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6046-join  
        Label        -print-boolean-6046-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6046-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6047-arg1        
        PushI        61                        
        Label        -compare-6047-arg2        
        PushI        69                        
        PushI        24                        
        Subtract                               
        Label        -compare-6047-sub         
        Subtract                               
        JumpNeg      -compare-6047-true        
        Jump         -compare-6047-false       
        Label        -compare-6047-true        
        PushI        1                         
        Jump         -compare-6047-join        
        Label        -compare-6047-false       
        PushI        0                         
        Jump         -compare-6047-join        
        Label        -compare-6047-join        
        JumpTrue     -print-boolean-6048-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6048-join  
        Label        -print-boolean-6048-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6048-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6049-arg1        
        PushI        8                         
        PushI        45                        
        Subtract                               
        Label        -compare-6049-arg2        
        PushI        81                        
        PushI        96                        
        Subtract                               
        Label        -compare-6049-sub         
        Subtract                               
        JumpNeg      -compare-6049-true        
        Jump         -compare-6049-false       
        Label        -compare-6049-true        
        PushI        1                         
        Jump         -compare-6049-join        
        Label        -compare-6049-false       
        PushI        0                         
        Jump         -compare-6049-join        
        Label        -compare-6049-join        
        JumpTrue     -print-boolean-6050-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6050-join  
        Label        -print-boolean-6050-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6050-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6051-arg1        
        PushI        8                         
        PushI        41                        
        Subtract                               
        Label        -compare-6051-arg2        
        PushI        51                        
        PushI        39                        
        Subtract                               
        Label        -compare-6051-sub         
        Subtract                               
        JumpNeg      -compare-6051-true        
        Jump         -compare-6051-false       
        Label        -compare-6051-true        
        PushI        1                         
        Jump         -compare-6051-join        
        Label        -compare-6051-false       
        PushI        0                         
        Jump         -compare-6051-join        
        Label        -compare-6051-join        
        JumpTrue     -print-boolean-6052-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6052-join  
        Label        -print-boolean-6052-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6052-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6053-arg1        
        PushI        58                        
        PushI        87                        
        Subtract                               
        Label        -compare-6053-arg2        
        PushI        52                        
        PushI        7                         
        Subtract                               
        Label        -compare-6053-sub         
        Subtract                               
        JumpNeg      -compare-6053-true        
        Jump         -compare-6053-false       
        Label        -compare-6053-true        
        PushI        1                         
        Jump         -compare-6053-join        
        Label        -compare-6053-false       
        PushI        0                         
        Jump         -compare-6053-join        
        Label        -compare-6053-join        
        JumpTrue     -print-boolean-6054-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6054-join  
        Label        -print-boolean-6054-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6054-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6055-arg1        
        PushI        64                        
        PushI        22                        
        Subtract                               
        Label        -compare-6055-arg2        
        PushI        51                        
        PushI        44                        
        Subtract                               
        Label        -compare-6055-sub         
        Subtract                               
        JumpNeg      -compare-6055-true        
        Jump         -compare-6055-false       
        Label        -compare-6055-true        
        PushI        1                         
        Jump         -compare-6055-join        
        Label        -compare-6055-false       
        PushI        0                         
        Jump         -compare-6055-join        
        Label        -compare-6055-join        
        JumpTrue     -print-boolean-6056-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6056-join  
        Label        -print-boolean-6056-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6056-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6057-arg1        
        PushI        75                        
        PushI        43                        
        Subtract                               
        Label        -compare-6057-arg2        
        PushI        50                        
        PushI        90                        
        Subtract                               
        Label        -compare-6057-sub         
        Subtract                               
        JumpNeg      -compare-6057-true        
        Jump         -compare-6057-false       
        Label        -compare-6057-true        
        PushI        1                         
        Jump         -compare-6057-join        
        Label        -compare-6057-false       
        PushI        0                         
        Jump         -compare-6057-join        
        Label        -compare-6057-join        
        JumpTrue     -print-boolean-6058-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6058-join  
        Label        -print-boolean-6058-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6058-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6059-arg1        
        PushI        67                        
        PushI        73                        
        Subtract                               
        Label        -compare-6059-arg2        
        PushI        72                        
        PushI        43                        
        Subtract                               
        Label        -compare-6059-sub         
        Subtract                               
        JumpNeg      -compare-6059-true        
        Jump         -compare-6059-false       
        Label        -compare-6059-true        
        PushI        1                         
        Jump         -compare-6059-join        
        Label        -compare-6059-false       
        PushI        0                         
        Jump         -compare-6059-join        
        Label        -compare-6059-join        
        JumpTrue     -print-boolean-6060-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6060-join  
        Label        -print-boolean-6060-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6060-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6061-arg1        
        PushI        9                         
        PushI        74                        
        Subtract                               
        Label        -compare-6061-arg2        
        PushI        90                        
        PushI        86                        
        Subtract                               
        Label        -compare-6061-sub         
        Subtract                               
        JumpNeg      -compare-6061-true        
        Jump         -compare-6061-false       
        Label        -compare-6061-true        
        PushI        1                         
        Jump         -compare-6061-join        
        Label        -compare-6061-false       
        PushI        0                         
        Jump         -compare-6061-join        
        Label        -compare-6061-join        
        JumpTrue     -print-boolean-6062-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6062-join  
        Label        -print-boolean-6062-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6062-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6063-arg1        
        PushI        65                        
        PushI        98                        
        Subtract                               
        Label        -compare-6063-arg2        
        PushI        42                        
        PushI        25                        
        Subtract                               
        Label        -compare-6063-sub         
        Subtract                               
        JumpNeg      -compare-6063-true        
        Jump         -compare-6063-false       
        Label        -compare-6063-true        
        PushI        1                         
        Jump         -compare-6063-join        
        Label        -compare-6063-false       
        PushI        0                         
        Jump         -compare-6063-join        
        Label        -compare-6063-join        
        JumpTrue     -print-boolean-6064-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6064-join  
        Label        -print-boolean-6064-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6064-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6065-arg1        
        PushI        79                        
        PushI        21                        
        Subtract                               
        Label        -compare-6065-arg2        
        PushI        4                         
        PushI        56                        
        Subtract                               
        Label        -compare-6065-sub         
        Subtract                               
        JumpNeg      -compare-6065-true        
        Jump         -compare-6065-false       
        Label        -compare-6065-true        
        PushI        1                         
        Jump         -compare-6065-join        
        Label        -compare-6065-false       
        PushI        0                         
        Jump         -compare-6065-join        
        Label        -compare-6065-join        
        JumpTrue     -print-boolean-6066-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6066-join  
        Label        -print-boolean-6066-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6066-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6067-arg1        
        PushI        17                        
        PushI        12                        
        Subtract                               
        Label        -compare-6067-arg2        
        PushI        11                        
        PushI        75                        
        Subtract                               
        Label        -compare-6067-sub         
        Subtract                               
        JumpNeg      -compare-6067-true        
        Jump         -compare-6067-false       
        Label        -compare-6067-true        
        PushI        1                         
        Jump         -compare-6067-join        
        Label        -compare-6067-false       
        PushI        0                         
        Jump         -compare-6067-join        
        Label        -compare-6067-join        
        JumpTrue     -print-boolean-6068-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6068-join  
        Label        -print-boolean-6068-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6068-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6069-arg1        
        PushI        82                        
        PushI        30                        
        Subtract                               
        Label        -compare-6069-arg2        
        PushI        27                        
        PushI        3                         
        Subtract                               
        Label        -compare-6069-sub         
        Subtract                               
        JumpNeg      -compare-6069-true        
        Jump         -compare-6069-false       
        Label        -compare-6069-true        
        PushI        1                         
        Jump         -compare-6069-join        
        Label        -compare-6069-false       
        PushI        0                         
        Jump         -compare-6069-join        
        Label        -compare-6069-join        
        JumpTrue     -print-boolean-6070-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6070-join  
        Label        -print-boolean-6070-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6070-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-6071-arg1        
        PushI        90                        
        PushI        94                        
        Subtract                               
        Label        -compare-6071-arg2        
        PushI        36                        
        PushI        58                        
        Subtract                               
        Label        -compare-6071-sub         
        Subtract                               
        JumpNeg      -compare-6071-true        
        Jump         -compare-6071-false       
        Label        -compare-6071-true        
        PushI        1                         
        Jump         -compare-6071-join        
        Label        -compare-6071-false       
        PushI        0                         
        Jump         -compare-6071-join        
        Label        -compare-6071-join        
        JumpTrue     -print-boolean-6072-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6072-join  
        Label        -print-boolean-6072-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6072-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
