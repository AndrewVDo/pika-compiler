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
        Label        -compare-5569-arg1        
        PushI        20                        
        PushI        74                        
        Subtract                               
        Label        -compare-5569-arg2        
        PushI        55                        
        Label        -compare-5569-sub         
        Subtract                               
        JumpFalse    -compare-5569-true        
        Jump         -compare-5569-false       
        Label        -compare-5569-true        
        PushI        1                         
        Jump         -compare-5569-join        
        Label        -compare-5569-false       
        PushI        0                         
        Jump         -compare-5569-join        
        Label        -compare-5569-join        
        JumpTrue     -print-boolean-5570-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5570-join  
        Label        -print-boolean-5570-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5570-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5571-arg1        
        PushI        6                         
        PushI        86                        
        Subtract                               
        Label        -compare-5571-arg2        
        PushI        62                        
        Label        -compare-5571-sub         
        Subtract                               
        JumpFalse    -compare-5571-true        
        Jump         -compare-5571-false       
        Label        -compare-5571-true        
        PushI        1                         
        Jump         -compare-5571-join        
        Label        -compare-5571-false       
        PushI        0                         
        Jump         -compare-5571-join        
        Label        -compare-5571-join        
        JumpTrue     -print-boolean-5572-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5572-join  
        Label        -print-boolean-5572-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5572-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5573-arg1        
        PushI        40                        
        PushI        3                         
        Subtract                               
        Label        -compare-5573-arg2        
        PushI        77                        
        Label        -compare-5573-sub         
        Subtract                               
        JumpFalse    -compare-5573-true        
        Jump         -compare-5573-false       
        Label        -compare-5573-true        
        PushI        1                         
        Jump         -compare-5573-join        
        Label        -compare-5573-false       
        PushI        0                         
        Jump         -compare-5573-join        
        Label        -compare-5573-join        
        JumpTrue     -print-boolean-5574-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5574-join  
        Label        -print-boolean-5574-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5574-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5575-arg1        
        PushI        8                         
        PushI        84                        
        Subtract                               
        Label        -compare-5575-arg2        
        PushI        38                        
        Label        -compare-5575-sub         
        Subtract                               
        JumpFalse    -compare-5575-true        
        Jump         -compare-5575-false       
        Label        -compare-5575-true        
        PushI        1                         
        Jump         -compare-5575-join        
        Label        -compare-5575-false       
        PushI        0                         
        Jump         -compare-5575-join        
        Label        -compare-5575-join        
        JumpTrue     -print-boolean-5576-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5576-join  
        Label        -print-boolean-5576-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5576-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5577-arg1        
        PushI        43                        
        PushI        61                        
        Subtract                               
        Label        -compare-5577-arg2        
        PushI        66                        
        Label        -compare-5577-sub         
        Subtract                               
        JumpFalse    -compare-5577-true        
        Jump         -compare-5577-false       
        Label        -compare-5577-true        
        PushI        1                         
        Jump         -compare-5577-join        
        Label        -compare-5577-false       
        PushI        0                         
        Jump         -compare-5577-join        
        Label        -compare-5577-join        
        JumpTrue     -print-boolean-5578-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5578-join  
        Label        -print-boolean-5578-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5578-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5579-arg1        
        PushI        60                        
        PushI        24                        
        Subtract                               
        Label        -compare-5579-arg2        
        PushI        80                        
        Label        -compare-5579-sub         
        Subtract                               
        JumpFalse    -compare-5579-true        
        Jump         -compare-5579-false       
        Label        -compare-5579-true        
        PushI        1                         
        Jump         -compare-5579-join        
        Label        -compare-5579-false       
        PushI        0                         
        Jump         -compare-5579-join        
        Label        -compare-5579-join        
        JumpTrue     -print-boolean-5580-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5580-join  
        Label        -print-boolean-5580-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5580-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5581-arg1        
        PushI        28                        
        PushI        53                        
        Subtract                               
        Label        -compare-5581-arg2        
        PushI        45                        
        Label        -compare-5581-sub         
        Subtract                               
        JumpFalse    -compare-5581-true        
        Jump         -compare-5581-false       
        Label        -compare-5581-true        
        PushI        1                         
        Jump         -compare-5581-join        
        Label        -compare-5581-false       
        PushI        0                         
        Jump         -compare-5581-join        
        Label        -compare-5581-join        
        JumpTrue     -print-boolean-5582-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5582-join  
        Label        -print-boolean-5582-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5582-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5583-arg1        
        PushI        80                        
        PushI        33                        
        Subtract                               
        Label        -compare-5583-arg2        
        PushI        78                        
        Label        -compare-5583-sub         
        Subtract                               
        JumpFalse    -compare-5583-true        
        Jump         -compare-5583-false       
        Label        -compare-5583-true        
        PushI        1                         
        Jump         -compare-5583-join        
        Label        -compare-5583-false       
        PushI        0                         
        Jump         -compare-5583-join        
        Label        -compare-5583-join        
        JumpTrue     -print-boolean-5584-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5584-join  
        Label        -print-boolean-5584-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5584-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5585-arg1        
        PushI        37                        
        PushI        17                        
        Subtract                               
        Label        -compare-5585-arg2        
        PushI        80                        
        Label        -compare-5585-sub         
        Subtract                               
        JumpFalse    -compare-5585-true        
        Jump         -compare-5585-false       
        Label        -compare-5585-true        
        PushI        1                         
        Jump         -compare-5585-join        
        Label        -compare-5585-false       
        PushI        0                         
        Jump         -compare-5585-join        
        Label        -compare-5585-join        
        JumpTrue     -print-boolean-5586-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5586-join  
        Label        -print-boolean-5586-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5586-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5587-arg1        
        PushI        86                        
        PushI        93                        
        Subtract                               
        Label        -compare-5587-arg2        
        PushI        97                        
        Label        -compare-5587-sub         
        Subtract                               
        JumpFalse    -compare-5587-true        
        Jump         -compare-5587-false       
        Label        -compare-5587-true        
        PushI        1                         
        Jump         -compare-5587-join        
        Label        -compare-5587-false       
        PushI        0                         
        Jump         -compare-5587-join        
        Label        -compare-5587-join        
        JumpTrue     -print-boolean-5588-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5588-join  
        Label        -print-boolean-5588-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5588-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5589-arg1        
        PushI        34                        
        PushI        86                        
        Subtract                               
        Label        -compare-5589-arg2        
        PushI        34                        
        Label        -compare-5589-sub         
        Subtract                               
        JumpFalse    -compare-5589-true        
        Jump         -compare-5589-false       
        Label        -compare-5589-true        
        PushI        1                         
        Jump         -compare-5589-join        
        Label        -compare-5589-false       
        PushI        0                         
        Jump         -compare-5589-join        
        Label        -compare-5589-join        
        JumpTrue     -print-boolean-5590-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5590-join  
        Label        -print-boolean-5590-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5590-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5591-arg1        
        PushI        81                        
        PushI        55                        
        Subtract                               
        Label        -compare-5591-arg2        
        PushI        26                        
        Label        -compare-5591-sub         
        Subtract                               
        JumpFalse    -compare-5591-true        
        Jump         -compare-5591-false       
        Label        -compare-5591-true        
        PushI        1                         
        Jump         -compare-5591-join        
        Label        -compare-5591-false       
        PushI        0                         
        Jump         -compare-5591-join        
        Label        -compare-5591-join        
        JumpTrue     -print-boolean-5592-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5592-join  
        Label        -print-boolean-5592-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5592-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5593-arg1        
        PushI        79                        
        Label        -compare-5593-arg2        
        PushI        10                        
        PushI        93                        
        Subtract                               
        Label        -compare-5593-sub         
        Subtract                               
        JumpFalse    -compare-5593-true        
        Jump         -compare-5593-false       
        Label        -compare-5593-true        
        PushI        1                         
        Jump         -compare-5593-join        
        Label        -compare-5593-false       
        PushI        0                         
        Jump         -compare-5593-join        
        Label        -compare-5593-join        
        JumpTrue     -print-boolean-5594-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5594-join  
        Label        -print-boolean-5594-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5594-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5595-arg1        
        PushI        23                        
        Label        -compare-5595-arg2        
        PushI        66                        
        PushI        53                        
        Subtract                               
        Label        -compare-5595-sub         
        Subtract                               
        JumpFalse    -compare-5595-true        
        Jump         -compare-5595-false       
        Label        -compare-5595-true        
        PushI        1                         
        Jump         -compare-5595-join        
        Label        -compare-5595-false       
        PushI        0                         
        Jump         -compare-5595-join        
        Label        -compare-5595-join        
        JumpTrue     -print-boolean-5596-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5596-join  
        Label        -print-boolean-5596-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5596-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5597-arg1        
        PushI        29                        
        Label        -compare-5597-arg2        
        PushI        93                        
        PushI        94                        
        Subtract                               
        Label        -compare-5597-sub         
        Subtract                               
        JumpFalse    -compare-5597-true        
        Jump         -compare-5597-false       
        Label        -compare-5597-true        
        PushI        1                         
        Jump         -compare-5597-join        
        Label        -compare-5597-false       
        PushI        0                         
        Jump         -compare-5597-join        
        Label        -compare-5597-join        
        JumpTrue     -print-boolean-5598-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5598-join  
        Label        -print-boolean-5598-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5598-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5599-arg1        
        PushI        63                        
        Label        -compare-5599-arg2        
        PushI        41                        
        PushI        63                        
        Subtract                               
        Label        -compare-5599-sub         
        Subtract                               
        JumpFalse    -compare-5599-true        
        Jump         -compare-5599-false       
        Label        -compare-5599-true        
        PushI        1                         
        Jump         -compare-5599-join        
        Label        -compare-5599-false       
        PushI        0                         
        Jump         -compare-5599-join        
        Label        -compare-5599-join        
        JumpTrue     -print-boolean-5600-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5600-join  
        Label        -print-boolean-5600-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5600-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5601-arg1        
        PushI        23                        
        Label        -compare-5601-arg2        
        PushI        98                        
        PushI        50                        
        Subtract                               
        Label        -compare-5601-sub         
        Subtract                               
        JumpFalse    -compare-5601-true        
        Jump         -compare-5601-false       
        Label        -compare-5601-true        
        PushI        1                         
        Jump         -compare-5601-join        
        Label        -compare-5601-false       
        PushI        0                         
        Jump         -compare-5601-join        
        Label        -compare-5601-join        
        JumpTrue     -print-boolean-5602-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5602-join  
        Label        -print-boolean-5602-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5602-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5603-arg1        
        PushI        8                         
        Label        -compare-5603-arg2        
        PushI        83                        
        PushI        28                        
        Subtract                               
        Label        -compare-5603-sub         
        Subtract                               
        JumpFalse    -compare-5603-true        
        Jump         -compare-5603-false       
        Label        -compare-5603-true        
        PushI        1                         
        Jump         -compare-5603-join        
        Label        -compare-5603-false       
        PushI        0                         
        Jump         -compare-5603-join        
        Label        -compare-5603-join        
        JumpTrue     -print-boolean-5604-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5604-join  
        Label        -print-boolean-5604-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5604-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5605-arg1        
        PushI        87                        
        Label        -compare-5605-arg2        
        PushI        16                        
        PushI        97                        
        Subtract                               
        Label        -compare-5605-sub         
        Subtract                               
        JumpFalse    -compare-5605-true        
        Jump         -compare-5605-false       
        Label        -compare-5605-true        
        PushI        1                         
        Jump         -compare-5605-join        
        Label        -compare-5605-false       
        PushI        0                         
        Jump         -compare-5605-join        
        Label        -compare-5605-join        
        JumpTrue     -print-boolean-5606-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5606-join  
        Label        -print-boolean-5606-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5606-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5607-arg1        
        PushI        53                        
        Label        -compare-5607-arg2        
        PushI        81                        
        PushI        61                        
        Subtract                               
        Label        -compare-5607-sub         
        Subtract                               
        JumpFalse    -compare-5607-true        
        Jump         -compare-5607-false       
        Label        -compare-5607-true        
        PushI        1                         
        Jump         -compare-5607-join        
        Label        -compare-5607-false       
        PushI        0                         
        Jump         -compare-5607-join        
        Label        -compare-5607-join        
        JumpTrue     -print-boolean-5608-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5608-join  
        Label        -print-boolean-5608-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5608-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5609-arg1        
        PushI        33                        
        Label        -compare-5609-arg2        
        PushI        8                         
        PushI        65                        
        Subtract                               
        Label        -compare-5609-sub         
        Subtract                               
        JumpFalse    -compare-5609-true        
        Jump         -compare-5609-false       
        Label        -compare-5609-true        
        PushI        1                         
        Jump         -compare-5609-join        
        Label        -compare-5609-false       
        PushI        0                         
        Jump         -compare-5609-join        
        Label        -compare-5609-join        
        JumpTrue     -print-boolean-5610-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5610-join  
        Label        -print-boolean-5610-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5610-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5611-arg1        
        PushI        40                        
        Label        -compare-5611-arg2        
        PushI        41                        
        PushI        84                        
        Subtract                               
        Label        -compare-5611-sub         
        Subtract                               
        JumpFalse    -compare-5611-true        
        Jump         -compare-5611-false       
        Label        -compare-5611-true        
        PushI        1                         
        Jump         -compare-5611-join        
        Label        -compare-5611-false       
        PushI        0                         
        Jump         -compare-5611-join        
        Label        -compare-5611-join        
        JumpTrue     -print-boolean-5612-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5612-join  
        Label        -print-boolean-5612-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5612-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5613-arg1        
        PushI        87                        
        Label        -compare-5613-arg2        
        PushI        44                        
        PushI        22                        
        Subtract                               
        Label        -compare-5613-sub         
        Subtract                               
        JumpFalse    -compare-5613-true        
        Jump         -compare-5613-false       
        Label        -compare-5613-true        
        PushI        1                         
        Jump         -compare-5613-join        
        Label        -compare-5613-false       
        PushI        0                         
        Jump         -compare-5613-join        
        Label        -compare-5613-join        
        JumpTrue     -print-boolean-5614-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5614-join  
        Label        -print-boolean-5614-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5614-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5615-arg1        
        PushI        84                        
        Label        -compare-5615-arg2        
        PushI        45                        
        PushI        91                        
        Subtract                               
        Label        -compare-5615-sub         
        Subtract                               
        JumpFalse    -compare-5615-true        
        Jump         -compare-5615-false       
        Label        -compare-5615-true        
        PushI        1                         
        Jump         -compare-5615-join        
        Label        -compare-5615-false       
        PushI        0                         
        Jump         -compare-5615-join        
        Label        -compare-5615-join        
        JumpTrue     -print-boolean-5616-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5616-join  
        Label        -print-boolean-5616-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5616-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5617-arg1        
        PushI        20                        
        PushI        63                        
        Subtract                               
        Label        -compare-5617-arg2        
        PushI        9                         
        PushI        1                         
        Subtract                               
        Label        -compare-5617-sub         
        Subtract                               
        JumpFalse    -compare-5617-true        
        Jump         -compare-5617-false       
        Label        -compare-5617-true        
        PushI        1                         
        Jump         -compare-5617-join        
        Label        -compare-5617-false       
        PushI        0                         
        Jump         -compare-5617-join        
        Label        -compare-5617-join        
        JumpTrue     -print-boolean-5618-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5618-join  
        Label        -print-boolean-5618-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5618-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5619-arg1        
        PushI        12                        
        PushI        44                        
        Subtract                               
        Label        -compare-5619-arg2        
        PushI        87                        
        PushI        27                        
        Subtract                               
        Label        -compare-5619-sub         
        Subtract                               
        JumpFalse    -compare-5619-true        
        Jump         -compare-5619-false       
        Label        -compare-5619-true        
        PushI        1                         
        Jump         -compare-5619-join        
        Label        -compare-5619-false       
        PushI        0                         
        Jump         -compare-5619-join        
        Label        -compare-5619-join        
        JumpTrue     -print-boolean-5620-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5620-join  
        Label        -print-boolean-5620-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5620-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5621-arg1        
        PushI        2                         
        PushI        86                        
        Subtract                               
        Label        -compare-5621-arg2        
        PushI        25                        
        PushI        40                        
        Subtract                               
        Label        -compare-5621-sub         
        Subtract                               
        JumpFalse    -compare-5621-true        
        Jump         -compare-5621-false       
        Label        -compare-5621-true        
        PushI        1                         
        Jump         -compare-5621-join        
        Label        -compare-5621-false       
        PushI        0                         
        Jump         -compare-5621-join        
        Label        -compare-5621-join        
        JumpTrue     -print-boolean-5622-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5622-join  
        Label        -print-boolean-5622-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5622-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5623-arg1        
        PushI        18                        
        PushI        58                        
        Subtract                               
        Label        -compare-5623-arg2        
        PushI        45                        
        PushI        33                        
        Subtract                               
        Label        -compare-5623-sub         
        Subtract                               
        JumpFalse    -compare-5623-true        
        Jump         -compare-5623-false       
        Label        -compare-5623-true        
        PushI        1                         
        Jump         -compare-5623-join        
        Label        -compare-5623-false       
        PushI        0                         
        Jump         -compare-5623-join        
        Label        -compare-5623-join        
        JumpTrue     -print-boolean-5624-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5624-join  
        Label        -print-boolean-5624-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5624-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5625-arg1        
        PushI        34                        
        PushI        37                        
        Subtract                               
        Label        -compare-5625-arg2        
        PushI        69                        
        PushI        65                        
        Subtract                               
        Label        -compare-5625-sub         
        Subtract                               
        JumpFalse    -compare-5625-true        
        Jump         -compare-5625-false       
        Label        -compare-5625-true        
        PushI        1                         
        Jump         -compare-5625-join        
        Label        -compare-5625-false       
        PushI        0                         
        Jump         -compare-5625-join        
        Label        -compare-5625-join        
        JumpTrue     -print-boolean-5626-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5626-join  
        Label        -print-boolean-5626-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5626-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5627-arg1        
        PushI        81                        
        PushI        42                        
        Subtract                               
        Label        -compare-5627-arg2        
        PushI        20                        
        PushI        68                        
        Subtract                               
        Label        -compare-5627-sub         
        Subtract                               
        JumpFalse    -compare-5627-true        
        Jump         -compare-5627-false       
        Label        -compare-5627-true        
        PushI        1                         
        Jump         -compare-5627-join        
        Label        -compare-5627-false       
        PushI        0                         
        Jump         -compare-5627-join        
        Label        -compare-5627-join        
        JumpTrue     -print-boolean-5628-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5628-join  
        Label        -print-boolean-5628-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5628-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5629-arg1        
        PushI        42                        
        PushI        77                        
        Subtract                               
        Label        -compare-5629-arg2        
        PushI        22                        
        PushI        55                        
        Subtract                               
        Label        -compare-5629-sub         
        Subtract                               
        JumpFalse    -compare-5629-true        
        Jump         -compare-5629-false       
        Label        -compare-5629-true        
        PushI        1                         
        Jump         -compare-5629-join        
        Label        -compare-5629-false       
        PushI        0                         
        Jump         -compare-5629-join        
        Label        -compare-5629-join        
        JumpTrue     -print-boolean-5630-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5630-join  
        Label        -print-boolean-5630-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5630-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5631-arg1        
        PushI        4                         
        PushI        29                        
        Subtract                               
        Label        -compare-5631-arg2        
        PushI        51                        
        PushI        46                        
        Subtract                               
        Label        -compare-5631-sub         
        Subtract                               
        JumpFalse    -compare-5631-true        
        Jump         -compare-5631-false       
        Label        -compare-5631-true        
        PushI        1                         
        Jump         -compare-5631-join        
        Label        -compare-5631-false       
        PushI        0                         
        Jump         -compare-5631-join        
        Label        -compare-5631-join        
        JumpTrue     -print-boolean-5632-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5632-join  
        Label        -print-boolean-5632-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5632-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5633-arg1        
        PushI        75                        
        PushI        78                        
        Subtract                               
        Label        -compare-5633-arg2        
        PushI        59                        
        PushI        52                        
        Subtract                               
        Label        -compare-5633-sub         
        Subtract                               
        JumpFalse    -compare-5633-true        
        Jump         -compare-5633-false       
        Label        -compare-5633-true        
        PushI        1                         
        Jump         -compare-5633-join        
        Label        -compare-5633-false       
        PushI        0                         
        Jump         -compare-5633-join        
        Label        -compare-5633-join        
        JumpTrue     -print-boolean-5634-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5634-join  
        Label        -print-boolean-5634-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5634-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5635-arg1        
        PushI        19                        
        PushI        26                        
        Subtract                               
        Label        -compare-5635-arg2        
        PushI        72                        
        PushI        17                        
        Subtract                               
        Label        -compare-5635-sub         
        Subtract                               
        JumpFalse    -compare-5635-true        
        Jump         -compare-5635-false       
        Label        -compare-5635-true        
        PushI        1                         
        Jump         -compare-5635-join        
        Label        -compare-5635-false       
        PushI        0                         
        Jump         -compare-5635-join        
        Label        -compare-5635-join        
        JumpTrue     -print-boolean-5636-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5636-join  
        Label        -print-boolean-5636-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5636-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5637-arg1        
        PushI        67                        
        PushI        63                        
        Subtract                               
        Label        -compare-5637-arg2        
        PushI        42                        
        PushI        63                        
        Subtract                               
        Label        -compare-5637-sub         
        Subtract                               
        JumpFalse    -compare-5637-true        
        Jump         -compare-5637-false       
        Label        -compare-5637-true        
        PushI        1                         
        Jump         -compare-5637-join        
        Label        -compare-5637-false       
        PushI        0                         
        Jump         -compare-5637-join        
        Label        -compare-5637-join        
        JumpTrue     -print-boolean-5638-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5638-join  
        Label        -print-boolean-5638-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5638-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5639-arg1        
        PushI        26                        
        PushI        60                        
        Subtract                               
        Label        -compare-5639-arg2        
        PushI        67                        
        PushI        88                        
        Subtract                               
        Label        -compare-5639-sub         
        Subtract                               
        JumpFalse    -compare-5639-true        
        Jump         -compare-5639-false       
        Label        -compare-5639-true        
        PushI        1                         
        Jump         -compare-5639-join        
        Label        -compare-5639-false       
        PushI        0                         
        Jump         -compare-5639-join        
        Label        -compare-5639-join        
        JumpTrue     -print-boolean-5640-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5640-join  
        Label        -print-boolean-5640-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5640-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
