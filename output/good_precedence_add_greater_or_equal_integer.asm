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
        Label        -compare-582-arg1         
        PushI        16                        
        PushI        90                        
        Add                                    
        Label        -compare-582-arg2         
        PushI        64                        
        Label        -compare-582-sub          
        Subtract                               
        JumpNeg      -compare-582-false        
        Jump         -compare-582-true         
        Label        -compare-582-true         
        PushI        1                         
        Jump         -compare-582-join         
        Label        -compare-582-false        
        PushI        0                         
        Jump         -compare-582-join         
        Label        -compare-582-join         
        JumpTrue     -print-boolean-583-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-583-join   
        Label        -print-boolean-583-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-583-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-584-arg1         
        PushI        16                        
        PushI        89                        
        Add                                    
        Label        -compare-584-arg2         
        PushI        70                        
        Label        -compare-584-sub          
        Subtract                               
        JumpNeg      -compare-584-false        
        Jump         -compare-584-true         
        Label        -compare-584-true         
        PushI        1                         
        Jump         -compare-584-join         
        Label        -compare-584-false        
        PushI        0                         
        Jump         -compare-584-join         
        Label        -compare-584-join         
        JumpTrue     -print-boolean-585-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-585-join   
        Label        -print-boolean-585-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-585-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-586-arg1         
        PushI        54                        
        PushI        53                        
        Add                                    
        Label        -compare-586-arg2         
        PushI        54                        
        Label        -compare-586-sub          
        Subtract                               
        JumpNeg      -compare-586-false        
        Jump         -compare-586-true         
        Label        -compare-586-true         
        PushI        1                         
        Jump         -compare-586-join         
        Label        -compare-586-false        
        PushI        0                         
        Jump         -compare-586-join         
        Label        -compare-586-join         
        JumpTrue     -print-boolean-587-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-587-join   
        Label        -print-boolean-587-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-587-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-588-arg1         
        PushI        40                        
        PushI        44                        
        Add                                    
        Label        -compare-588-arg2         
        PushI        54                        
        Label        -compare-588-sub          
        Subtract                               
        JumpNeg      -compare-588-false        
        Jump         -compare-588-true         
        Label        -compare-588-true         
        PushI        1                         
        Jump         -compare-588-join         
        Label        -compare-588-false        
        PushI        0                         
        Jump         -compare-588-join         
        Label        -compare-588-join         
        JumpTrue     -print-boolean-589-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-589-join   
        Label        -print-boolean-589-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-589-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-590-arg1         
        PushI        54                        
        PushI        38                        
        Add                                    
        Label        -compare-590-arg2         
        PushI        54                        
        Label        -compare-590-sub          
        Subtract                               
        JumpNeg      -compare-590-false        
        Jump         -compare-590-true         
        Label        -compare-590-true         
        PushI        1                         
        Jump         -compare-590-join         
        Label        -compare-590-false        
        PushI        0                         
        Jump         -compare-590-join         
        Label        -compare-590-join         
        JumpTrue     -print-boolean-591-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-591-join   
        Label        -print-boolean-591-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-591-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-592-arg1         
        PushI        29                        
        PushI        63                        
        Add                                    
        Label        -compare-592-arg2         
        PushI        82                        
        Label        -compare-592-sub          
        Subtract                               
        JumpNeg      -compare-592-false        
        Jump         -compare-592-true         
        Label        -compare-592-true         
        PushI        1                         
        Jump         -compare-592-join         
        Label        -compare-592-false        
        PushI        0                         
        Jump         -compare-592-join         
        Label        -compare-592-join         
        JumpTrue     -print-boolean-593-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-593-join   
        Label        -print-boolean-593-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-593-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-594-arg1         
        PushI        28                        
        PushI        6                         
        Add                                    
        Label        -compare-594-arg2         
        PushI        20                        
        Label        -compare-594-sub          
        Subtract                               
        JumpNeg      -compare-594-false        
        Jump         -compare-594-true         
        Label        -compare-594-true         
        PushI        1                         
        Jump         -compare-594-join         
        Label        -compare-594-false        
        PushI        0                         
        Jump         -compare-594-join         
        Label        -compare-594-join         
        JumpTrue     -print-boolean-595-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-595-join   
        Label        -print-boolean-595-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-595-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-596-arg1         
        PushI        6                         
        PushI        13                        
        Add                                    
        Label        -compare-596-arg2         
        PushI        34                        
        Label        -compare-596-sub          
        Subtract                               
        JumpNeg      -compare-596-false        
        Jump         -compare-596-true         
        Label        -compare-596-true         
        PushI        1                         
        Jump         -compare-596-join         
        Label        -compare-596-false        
        PushI        0                         
        Jump         -compare-596-join         
        Label        -compare-596-join         
        JumpTrue     -print-boolean-597-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-597-join   
        Label        -print-boolean-597-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-597-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-598-arg1         
        PushI        18                        
        PushI        4                         
        Add                                    
        Label        -compare-598-arg2         
        PushI        59                        
        Label        -compare-598-sub          
        Subtract                               
        JumpNeg      -compare-598-false        
        Jump         -compare-598-true         
        Label        -compare-598-true         
        PushI        1                         
        Jump         -compare-598-join         
        Label        -compare-598-false        
        PushI        0                         
        Jump         -compare-598-join         
        Label        -compare-598-join         
        JumpTrue     -print-boolean-599-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-599-join   
        Label        -print-boolean-599-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-599-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-600-arg1         
        PushI        79                        
        PushI        15                        
        Add                                    
        Label        -compare-600-arg2         
        PushI        38                        
        Label        -compare-600-sub          
        Subtract                               
        JumpNeg      -compare-600-false        
        Jump         -compare-600-true         
        Label        -compare-600-true         
        PushI        1                         
        Jump         -compare-600-join         
        Label        -compare-600-false        
        PushI        0                         
        Jump         -compare-600-join         
        Label        -compare-600-join         
        JumpTrue     -print-boolean-601-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-601-join   
        Label        -print-boolean-601-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-601-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-602-arg1         
        PushI        1                         
        PushI        99                        
        Add                                    
        Label        -compare-602-arg2         
        PushI        15                        
        Label        -compare-602-sub          
        Subtract                               
        JumpNeg      -compare-602-false        
        Jump         -compare-602-true         
        Label        -compare-602-true         
        PushI        1                         
        Jump         -compare-602-join         
        Label        -compare-602-false        
        PushI        0                         
        Jump         -compare-602-join         
        Label        -compare-602-join         
        JumpTrue     -print-boolean-603-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-603-join   
        Label        -print-boolean-603-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-603-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-604-arg1         
        PushI        99                        
        PushI        88                        
        Add                                    
        Label        -compare-604-arg2         
        PushI        47                        
        Label        -compare-604-sub          
        Subtract                               
        JumpNeg      -compare-604-false        
        Jump         -compare-604-true         
        Label        -compare-604-true         
        PushI        1                         
        Jump         -compare-604-join         
        Label        -compare-604-false        
        PushI        0                         
        Jump         -compare-604-join         
        Label        -compare-604-join         
        JumpTrue     -print-boolean-605-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-605-join   
        Label        -print-boolean-605-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-605-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-606-arg1         
        PushI        92                        
        Label        -compare-606-arg2         
        PushI        10                        
        PushI        90                        
        Add                                    
        Label        -compare-606-sub          
        Subtract                               
        JumpNeg      -compare-606-false        
        Jump         -compare-606-true         
        Label        -compare-606-true         
        PushI        1                         
        Jump         -compare-606-join         
        Label        -compare-606-false        
        PushI        0                         
        Jump         -compare-606-join         
        Label        -compare-606-join         
        JumpTrue     -print-boolean-607-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-607-join   
        Label        -print-boolean-607-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-607-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-608-arg1         
        PushI        74                        
        Label        -compare-608-arg2         
        PushI        86                        
        PushI        61                        
        Add                                    
        Label        -compare-608-sub          
        Subtract                               
        JumpNeg      -compare-608-false        
        Jump         -compare-608-true         
        Label        -compare-608-true         
        PushI        1                         
        Jump         -compare-608-join         
        Label        -compare-608-false        
        PushI        0                         
        Jump         -compare-608-join         
        Label        -compare-608-join         
        JumpTrue     -print-boolean-609-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-609-join   
        Label        -print-boolean-609-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-609-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-610-arg1         
        PushI        34                        
        Label        -compare-610-arg2         
        PushI        98                        
        PushI        23                        
        Add                                    
        Label        -compare-610-sub          
        Subtract                               
        JumpNeg      -compare-610-false        
        Jump         -compare-610-true         
        Label        -compare-610-true         
        PushI        1                         
        Jump         -compare-610-join         
        Label        -compare-610-false        
        PushI        0                         
        Jump         -compare-610-join         
        Label        -compare-610-join         
        JumpTrue     -print-boolean-611-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-611-join   
        Label        -print-boolean-611-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-611-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-612-arg1         
        PushI        19                        
        Label        -compare-612-arg2         
        PushI        16                        
        PushI        35                        
        Add                                    
        Label        -compare-612-sub          
        Subtract                               
        JumpNeg      -compare-612-false        
        Jump         -compare-612-true         
        Label        -compare-612-true         
        PushI        1                         
        Jump         -compare-612-join         
        Label        -compare-612-false        
        PushI        0                         
        Jump         -compare-612-join         
        Label        -compare-612-join         
        JumpTrue     -print-boolean-613-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-613-join   
        Label        -print-boolean-613-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-613-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-614-arg1         
        PushI        15                        
        Label        -compare-614-arg2         
        PushI        55                        
        PushI        92                        
        Add                                    
        Label        -compare-614-sub          
        Subtract                               
        JumpNeg      -compare-614-false        
        Jump         -compare-614-true         
        Label        -compare-614-true         
        PushI        1                         
        Jump         -compare-614-join         
        Label        -compare-614-false        
        PushI        0                         
        Jump         -compare-614-join         
        Label        -compare-614-join         
        JumpTrue     -print-boolean-615-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-615-join   
        Label        -print-boolean-615-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-615-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-616-arg1         
        PushI        21                        
        Label        -compare-616-arg2         
        PushI        43                        
        PushI        36                        
        Add                                    
        Label        -compare-616-sub          
        Subtract                               
        JumpNeg      -compare-616-false        
        Jump         -compare-616-true         
        Label        -compare-616-true         
        PushI        1                         
        Jump         -compare-616-join         
        Label        -compare-616-false        
        PushI        0                         
        Jump         -compare-616-join         
        Label        -compare-616-join         
        JumpTrue     -print-boolean-617-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-617-join   
        Label        -print-boolean-617-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-617-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-618-arg1         
        PushI        83                        
        Label        -compare-618-arg2         
        PushI        55                        
        PushI        55                        
        Add                                    
        Label        -compare-618-sub          
        Subtract                               
        JumpNeg      -compare-618-false        
        Jump         -compare-618-true         
        Label        -compare-618-true         
        PushI        1                         
        Jump         -compare-618-join         
        Label        -compare-618-false        
        PushI        0                         
        Jump         -compare-618-join         
        Label        -compare-618-join         
        JumpTrue     -print-boolean-619-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-619-join   
        Label        -print-boolean-619-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-619-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-620-arg1         
        PushI        8                         
        Label        -compare-620-arg2         
        PushI        57                        
        PushI        18                        
        Add                                    
        Label        -compare-620-sub          
        Subtract                               
        JumpNeg      -compare-620-false        
        Jump         -compare-620-true         
        Label        -compare-620-true         
        PushI        1                         
        Jump         -compare-620-join         
        Label        -compare-620-false        
        PushI        0                         
        Jump         -compare-620-join         
        Label        -compare-620-join         
        JumpTrue     -print-boolean-621-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-621-join   
        Label        -print-boolean-621-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-621-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-622-arg1         
        PushI        38                        
        Label        -compare-622-arg2         
        PushI        36                        
        PushI        53                        
        Add                                    
        Label        -compare-622-sub          
        Subtract                               
        JumpNeg      -compare-622-false        
        Jump         -compare-622-true         
        Label        -compare-622-true         
        PushI        1                         
        Jump         -compare-622-join         
        Label        -compare-622-false        
        PushI        0                         
        Jump         -compare-622-join         
        Label        -compare-622-join         
        JumpTrue     -print-boolean-623-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-623-join   
        Label        -print-boolean-623-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-623-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-624-arg1         
        PushI        20                        
        Label        -compare-624-arg2         
        PushI        28                        
        PushI        59                        
        Add                                    
        Label        -compare-624-sub          
        Subtract                               
        JumpNeg      -compare-624-false        
        Jump         -compare-624-true         
        Label        -compare-624-true         
        PushI        1                         
        Jump         -compare-624-join         
        Label        -compare-624-false        
        PushI        0                         
        Jump         -compare-624-join         
        Label        -compare-624-join         
        JumpTrue     -print-boolean-625-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-625-join   
        Label        -print-boolean-625-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-625-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-626-arg1         
        PushI        38                        
        Label        -compare-626-arg2         
        PushI        71                        
        PushI        5                         
        Add                                    
        Label        -compare-626-sub          
        Subtract                               
        JumpNeg      -compare-626-false        
        Jump         -compare-626-true         
        Label        -compare-626-true         
        PushI        1                         
        Jump         -compare-626-join         
        Label        -compare-626-false        
        PushI        0                         
        Jump         -compare-626-join         
        Label        -compare-626-join         
        JumpTrue     -print-boolean-627-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-627-join   
        Label        -print-boolean-627-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-627-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-628-arg1         
        PushI        12                        
        Label        -compare-628-arg2         
        PushI        30                        
        PushI        8                         
        Add                                    
        Label        -compare-628-sub          
        Subtract                               
        JumpNeg      -compare-628-false        
        Jump         -compare-628-true         
        Label        -compare-628-true         
        PushI        1                         
        Jump         -compare-628-join         
        Label        -compare-628-false        
        PushI        0                         
        Jump         -compare-628-join         
        Label        -compare-628-join         
        JumpTrue     -print-boolean-629-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-629-join   
        Label        -print-boolean-629-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-629-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-630-arg1         
        PushI        93                        
        PushI        60                        
        Add                                    
        Label        -compare-630-arg2         
        PushI        48                        
        PushI        81                        
        Add                                    
        Label        -compare-630-sub          
        Subtract                               
        JumpNeg      -compare-630-false        
        Jump         -compare-630-true         
        Label        -compare-630-true         
        PushI        1                         
        Jump         -compare-630-join         
        Label        -compare-630-false        
        PushI        0                         
        Jump         -compare-630-join         
        Label        -compare-630-join         
        JumpTrue     -print-boolean-631-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-631-join   
        Label        -print-boolean-631-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-631-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-632-arg1         
        PushI        43                        
        PushI        98                        
        Add                                    
        Label        -compare-632-arg2         
        PushI        55                        
        PushI        5                         
        Add                                    
        Label        -compare-632-sub          
        Subtract                               
        JumpNeg      -compare-632-false        
        Jump         -compare-632-true         
        Label        -compare-632-true         
        PushI        1                         
        Jump         -compare-632-join         
        Label        -compare-632-false        
        PushI        0                         
        Jump         -compare-632-join         
        Label        -compare-632-join         
        JumpTrue     -print-boolean-633-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-633-join   
        Label        -print-boolean-633-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-633-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-634-arg1         
        PushI        42                        
        PushI        56                        
        Add                                    
        Label        -compare-634-arg2         
        PushI        3                         
        PushI        67                        
        Add                                    
        Label        -compare-634-sub          
        Subtract                               
        JumpNeg      -compare-634-false        
        Jump         -compare-634-true         
        Label        -compare-634-true         
        PushI        1                         
        Jump         -compare-634-join         
        Label        -compare-634-false        
        PushI        0                         
        Jump         -compare-634-join         
        Label        -compare-634-join         
        JumpTrue     -print-boolean-635-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-635-join   
        Label        -print-boolean-635-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-635-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-636-arg1         
        PushI        45                        
        PushI        98                        
        Add                                    
        Label        -compare-636-arg2         
        PushI        75                        
        PushI        51                        
        Add                                    
        Label        -compare-636-sub          
        Subtract                               
        JumpNeg      -compare-636-false        
        Jump         -compare-636-true         
        Label        -compare-636-true         
        PushI        1                         
        Jump         -compare-636-join         
        Label        -compare-636-false        
        PushI        0                         
        Jump         -compare-636-join         
        Label        -compare-636-join         
        JumpTrue     -print-boolean-637-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-637-join   
        Label        -print-boolean-637-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-637-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-638-arg1         
        PushI        60                        
        PushI        12                        
        Add                                    
        Label        -compare-638-arg2         
        PushI        49                        
        PushI        48                        
        Add                                    
        Label        -compare-638-sub          
        Subtract                               
        JumpNeg      -compare-638-false        
        Jump         -compare-638-true         
        Label        -compare-638-true         
        PushI        1                         
        Jump         -compare-638-join         
        Label        -compare-638-false        
        PushI        0                         
        Jump         -compare-638-join         
        Label        -compare-638-join         
        JumpTrue     -print-boolean-639-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-639-join   
        Label        -print-boolean-639-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-639-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-640-arg1         
        PushI        87                        
        PushI        95                        
        Add                                    
        Label        -compare-640-arg2         
        PushI        72                        
        PushI        88                        
        Add                                    
        Label        -compare-640-sub          
        Subtract                               
        JumpNeg      -compare-640-false        
        Jump         -compare-640-true         
        Label        -compare-640-true         
        PushI        1                         
        Jump         -compare-640-join         
        Label        -compare-640-false        
        PushI        0                         
        Jump         -compare-640-join         
        Label        -compare-640-join         
        JumpTrue     -print-boolean-641-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-641-join   
        Label        -print-boolean-641-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-641-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-642-arg1         
        PushI        70                        
        PushI        10                        
        Add                                    
        Label        -compare-642-arg2         
        PushI        2                         
        PushI        81                        
        Add                                    
        Label        -compare-642-sub          
        Subtract                               
        JumpNeg      -compare-642-false        
        Jump         -compare-642-true         
        Label        -compare-642-true         
        PushI        1                         
        Jump         -compare-642-join         
        Label        -compare-642-false        
        PushI        0                         
        Jump         -compare-642-join         
        Label        -compare-642-join         
        JumpTrue     -print-boolean-643-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-643-join   
        Label        -print-boolean-643-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-643-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-644-arg1         
        PushI        6                         
        PushI        20                        
        Add                                    
        Label        -compare-644-arg2         
        PushI        81                        
        PushI        75                        
        Add                                    
        Label        -compare-644-sub          
        Subtract                               
        JumpNeg      -compare-644-false        
        Jump         -compare-644-true         
        Label        -compare-644-true         
        PushI        1                         
        Jump         -compare-644-join         
        Label        -compare-644-false        
        PushI        0                         
        Jump         -compare-644-join         
        Label        -compare-644-join         
        JumpTrue     -print-boolean-645-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-645-join   
        Label        -print-boolean-645-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-645-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-646-arg1         
        PushI        78                        
        PushI        82                        
        Add                                    
        Label        -compare-646-arg2         
        PushI        94                        
        PushI        32                        
        Add                                    
        Label        -compare-646-sub          
        Subtract                               
        JumpNeg      -compare-646-false        
        Jump         -compare-646-true         
        Label        -compare-646-true         
        PushI        1                         
        Jump         -compare-646-join         
        Label        -compare-646-false        
        PushI        0                         
        Jump         -compare-646-join         
        Label        -compare-646-join         
        JumpTrue     -print-boolean-647-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-647-join   
        Label        -print-boolean-647-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-647-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-648-arg1         
        PushI        10                        
        PushI        23                        
        Add                                    
        Label        -compare-648-arg2         
        PushI        97                        
        PushI        23                        
        Add                                    
        Label        -compare-648-sub          
        Subtract                               
        JumpNeg      -compare-648-false        
        Jump         -compare-648-true         
        Label        -compare-648-true         
        PushI        1                         
        Jump         -compare-648-join         
        Label        -compare-648-false        
        PushI        0                         
        Jump         -compare-648-join         
        Label        -compare-648-join         
        JumpTrue     -print-boolean-649-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-649-join   
        Label        -print-boolean-649-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-649-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-650-arg1         
        PushI        56                        
        PushI        44                        
        Add                                    
        Label        -compare-650-arg2         
        PushI        19                        
        PushI        45                        
        Add                                    
        Label        -compare-650-sub          
        Subtract                               
        JumpNeg      -compare-650-false        
        Jump         -compare-650-true         
        Label        -compare-650-true         
        PushI        1                         
        Jump         -compare-650-join         
        Label        -compare-650-false        
        PushI        0                         
        Jump         -compare-650-join         
        Label        -compare-650-join         
        JumpTrue     -print-boolean-651-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-651-join   
        Label        -print-boolean-651-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-651-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-652-arg1         
        PushI        38                        
        PushI        41                        
        Add                                    
        Label        -compare-652-arg2         
        PushI        33                        
        PushI        62                        
        Add                                    
        Label        -compare-652-sub          
        Subtract                               
        JumpNeg      -compare-652-false        
        Jump         -compare-652-true         
        Label        -compare-652-true         
        PushI        1                         
        Jump         -compare-652-join         
        Label        -compare-652-false        
        PushI        0                         
        Jump         -compare-652-join         
        Label        -compare-652-join         
        JumpTrue     -print-boolean-653-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-653-join   
        Label        -print-boolean-653-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-653-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
