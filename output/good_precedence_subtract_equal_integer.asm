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
        Label        -compare-5582-arg1        
        PushI        20                        
        PushI        74                        
        Subtract                               
        Label        -compare-5582-arg2        
        PushI        55                        
        Label        -compare-5582-sub         
        Subtract                               
        JumpFalse    -compare-5582-true        
        Jump         -compare-5582-false       
        Label        -compare-5582-true        
        PushI        1                         
        Jump         -compare-5582-join        
        Label        -compare-5582-false       
        PushI        0                         
        Jump         -compare-5582-join        
        Label        -compare-5582-join        
        JumpTrue     -print-boolean-5583-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5583-join  
        Label        -print-boolean-5583-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5583-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5584-arg1        
        PushI        6                         
        PushI        86                        
        Subtract                               
        Label        -compare-5584-arg2        
        PushI        62                        
        Label        -compare-5584-sub         
        Subtract                               
        JumpFalse    -compare-5584-true        
        Jump         -compare-5584-false       
        Label        -compare-5584-true        
        PushI        1                         
        Jump         -compare-5584-join        
        Label        -compare-5584-false       
        PushI        0                         
        Jump         -compare-5584-join        
        Label        -compare-5584-join        
        JumpTrue     -print-boolean-5585-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5585-join  
        Label        -print-boolean-5585-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5585-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5586-arg1        
        PushI        40                        
        PushI        3                         
        Subtract                               
        Label        -compare-5586-arg2        
        PushI        77                        
        Label        -compare-5586-sub         
        Subtract                               
        JumpFalse    -compare-5586-true        
        Jump         -compare-5586-false       
        Label        -compare-5586-true        
        PushI        1                         
        Jump         -compare-5586-join        
        Label        -compare-5586-false       
        PushI        0                         
        Jump         -compare-5586-join        
        Label        -compare-5586-join        
        JumpTrue     -print-boolean-5587-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5587-join  
        Label        -print-boolean-5587-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5587-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5588-arg1        
        PushI        8                         
        PushI        84                        
        Subtract                               
        Label        -compare-5588-arg2        
        PushI        38                        
        Label        -compare-5588-sub         
        Subtract                               
        JumpFalse    -compare-5588-true        
        Jump         -compare-5588-false       
        Label        -compare-5588-true        
        PushI        1                         
        Jump         -compare-5588-join        
        Label        -compare-5588-false       
        PushI        0                         
        Jump         -compare-5588-join        
        Label        -compare-5588-join        
        JumpTrue     -print-boolean-5589-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5589-join  
        Label        -print-boolean-5589-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5589-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5590-arg1        
        PushI        43                        
        PushI        61                        
        Subtract                               
        Label        -compare-5590-arg2        
        PushI        66                        
        Label        -compare-5590-sub         
        Subtract                               
        JumpFalse    -compare-5590-true        
        Jump         -compare-5590-false       
        Label        -compare-5590-true        
        PushI        1                         
        Jump         -compare-5590-join        
        Label        -compare-5590-false       
        PushI        0                         
        Jump         -compare-5590-join        
        Label        -compare-5590-join        
        JumpTrue     -print-boolean-5591-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5591-join  
        Label        -print-boolean-5591-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5591-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5592-arg1        
        PushI        60                        
        PushI        24                        
        Subtract                               
        Label        -compare-5592-arg2        
        PushI        80                        
        Label        -compare-5592-sub         
        Subtract                               
        JumpFalse    -compare-5592-true        
        Jump         -compare-5592-false       
        Label        -compare-5592-true        
        PushI        1                         
        Jump         -compare-5592-join        
        Label        -compare-5592-false       
        PushI        0                         
        Jump         -compare-5592-join        
        Label        -compare-5592-join        
        JumpTrue     -print-boolean-5593-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5593-join  
        Label        -print-boolean-5593-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5593-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5594-arg1        
        PushI        28                        
        PushI        53                        
        Subtract                               
        Label        -compare-5594-arg2        
        PushI        45                        
        Label        -compare-5594-sub         
        Subtract                               
        JumpFalse    -compare-5594-true        
        Jump         -compare-5594-false       
        Label        -compare-5594-true        
        PushI        1                         
        Jump         -compare-5594-join        
        Label        -compare-5594-false       
        PushI        0                         
        Jump         -compare-5594-join        
        Label        -compare-5594-join        
        JumpTrue     -print-boolean-5595-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5595-join  
        Label        -print-boolean-5595-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5595-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5596-arg1        
        PushI        80                        
        PushI        33                        
        Subtract                               
        Label        -compare-5596-arg2        
        PushI        78                        
        Label        -compare-5596-sub         
        Subtract                               
        JumpFalse    -compare-5596-true        
        Jump         -compare-5596-false       
        Label        -compare-5596-true        
        PushI        1                         
        Jump         -compare-5596-join        
        Label        -compare-5596-false       
        PushI        0                         
        Jump         -compare-5596-join        
        Label        -compare-5596-join        
        JumpTrue     -print-boolean-5597-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5597-join  
        Label        -print-boolean-5597-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5597-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5598-arg1        
        PushI        37                        
        PushI        17                        
        Subtract                               
        Label        -compare-5598-arg2        
        PushI        80                        
        Label        -compare-5598-sub         
        Subtract                               
        JumpFalse    -compare-5598-true        
        Jump         -compare-5598-false       
        Label        -compare-5598-true        
        PushI        1                         
        Jump         -compare-5598-join        
        Label        -compare-5598-false       
        PushI        0                         
        Jump         -compare-5598-join        
        Label        -compare-5598-join        
        JumpTrue     -print-boolean-5599-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5599-join  
        Label        -print-boolean-5599-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5599-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5600-arg1        
        PushI        86                        
        PushI        93                        
        Subtract                               
        Label        -compare-5600-arg2        
        PushI        97                        
        Label        -compare-5600-sub         
        Subtract                               
        JumpFalse    -compare-5600-true        
        Jump         -compare-5600-false       
        Label        -compare-5600-true        
        PushI        1                         
        Jump         -compare-5600-join        
        Label        -compare-5600-false       
        PushI        0                         
        Jump         -compare-5600-join        
        Label        -compare-5600-join        
        JumpTrue     -print-boolean-5601-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5601-join  
        Label        -print-boolean-5601-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5601-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5602-arg1        
        PushI        34                        
        PushI        86                        
        Subtract                               
        Label        -compare-5602-arg2        
        PushI        34                        
        Label        -compare-5602-sub         
        Subtract                               
        JumpFalse    -compare-5602-true        
        Jump         -compare-5602-false       
        Label        -compare-5602-true        
        PushI        1                         
        Jump         -compare-5602-join        
        Label        -compare-5602-false       
        PushI        0                         
        Jump         -compare-5602-join        
        Label        -compare-5602-join        
        JumpTrue     -print-boolean-5603-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5603-join  
        Label        -print-boolean-5603-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5603-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5604-arg1        
        PushI        81                        
        PushI        55                        
        Subtract                               
        Label        -compare-5604-arg2        
        PushI        26                        
        Label        -compare-5604-sub         
        Subtract                               
        JumpFalse    -compare-5604-true        
        Jump         -compare-5604-false       
        Label        -compare-5604-true        
        PushI        1                         
        Jump         -compare-5604-join        
        Label        -compare-5604-false       
        PushI        0                         
        Jump         -compare-5604-join        
        Label        -compare-5604-join        
        JumpTrue     -print-boolean-5605-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5605-join  
        Label        -print-boolean-5605-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5605-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5606-arg1        
        PushI        79                        
        Label        -compare-5606-arg2        
        PushI        10                        
        PushI        93                        
        Subtract                               
        Label        -compare-5606-sub         
        Subtract                               
        JumpFalse    -compare-5606-true        
        Jump         -compare-5606-false       
        Label        -compare-5606-true        
        PushI        1                         
        Jump         -compare-5606-join        
        Label        -compare-5606-false       
        PushI        0                         
        Jump         -compare-5606-join        
        Label        -compare-5606-join        
        JumpTrue     -print-boolean-5607-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5607-join  
        Label        -print-boolean-5607-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5607-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5608-arg1        
        PushI        23                        
        Label        -compare-5608-arg2        
        PushI        66                        
        PushI        53                        
        Subtract                               
        Label        -compare-5608-sub         
        Subtract                               
        JumpFalse    -compare-5608-true        
        Jump         -compare-5608-false       
        Label        -compare-5608-true        
        PushI        1                         
        Jump         -compare-5608-join        
        Label        -compare-5608-false       
        PushI        0                         
        Jump         -compare-5608-join        
        Label        -compare-5608-join        
        JumpTrue     -print-boolean-5609-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5609-join  
        Label        -print-boolean-5609-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5609-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5610-arg1        
        PushI        29                        
        Label        -compare-5610-arg2        
        PushI        93                        
        PushI        94                        
        Subtract                               
        Label        -compare-5610-sub         
        Subtract                               
        JumpFalse    -compare-5610-true        
        Jump         -compare-5610-false       
        Label        -compare-5610-true        
        PushI        1                         
        Jump         -compare-5610-join        
        Label        -compare-5610-false       
        PushI        0                         
        Jump         -compare-5610-join        
        Label        -compare-5610-join        
        JumpTrue     -print-boolean-5611-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5611-join  
        Label        -print-boolean-5611-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5611-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5612-arg1        
        PushI        63                        
        Label        -compare-5612-arg2        
        PushI        41                        
        PushI        63                        
        Subtract                               
        Label        -compare-5612-sub         
        Subtract                               
        JumpFalse    -compare-5612-true        
        Jump         -compare-5612-false       
        Label        -compare-5612-true        
        PushI        1                         
        Jump         -compare-5612-join        
        Label        -compare-5612-false       
        PushI        0                         
        Jump         -compare-5612-join        
        Label        -compare-5612-join        
        JumpTrue     -print-boolean-5613-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5613-join  
        Label        -print-boolean-5613-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5613-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5614-arg1        
        PushI        23                        
        Label        -compare-5614-arg2        
        PushI        98                        
        PushI        50                        
        Subtract                               
        Label        -compare-5614-sub         
        Subtract                               
        JumpFalse    -compare-5614-true        
        Jump         -compare-5614-false       
        Label        -compare-5614-true        
        PushI        1                         
        Jump         -compare-5614-join        
        Label        -compare-5614-false       
        PushI        0                         
        Jump         -compare-5614-join        
        Label        -compare-5614-join        
        JumpTrue     -print-boolean-5615-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5615-join  
        Label        -print-boolean-5615-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5615-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5616-arg1        
        PushI        8                         
        Label        -compare-5616-arg2        
        PushI        83                        
        PushI        28                        
        Subtract                               
        Label        -compare-5616-sub         
        Subtract                               
        JumpFalse    -compare-5616-true        
        Jump         -compare-5616-false       
        Label        -compare-5616-true        
        PushI        1                         
        Jump         -compare-5616-join        
        Label        -compare-5616-false       
        PushI        0                         
        Jump         -compare-5616-join        
        Label        -compare-5616-join        
        JumpTrue     -print-boolean-5617-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5617-join  
        Label        -print-boolean-5617-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5617-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5618-arg1        
        PushI        87                        
        Label        -compare-5618-arg2        
        PushI        16                        
        PushI        97                        
        Subtract                               
        Label        -compare-5618-sub         
        Subtract                               
        JumpFalse    -compare-5618-true        
        Jump         -compare-5618-false       
        Label        -compare-5618-true        
        PushI        1                         
        Jump         -compare-5618-join        
        Label        -compare-5618-false       
        PushI        0                         
        Jump         -compare-5618-join        
        Label        -compare-5618-join        
        JumpTrue     -print-boolean-5619-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5619-join  
        Label        -print-boolean-5619-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5619-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5620-arg1        
        PushI        53                        
        Label        -compare-5620-arg2        
        PushI        81                        
        PushI        61                        
        Subtract                               
        Label        -compare-5620-sub         
        Subtract                               
        JumpFalse    -compare-5620-true        
        Jump         -compare-5620-false       
        Label        -compare-5620-true        
        PushI        1                         
        Jump         -compare-5620-join        
        Label        -compare-5620-false       
        PushI        0                         
        Jump         -compare-5620-join        
        Label        -compare-5620-join        
        JumpTrue     -print-boolean-5621-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5621-join  
        Label        -print-boolean-5621-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5621-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5622-arg1        
        PushI        33                        
        Label        -compare-5622-arg2        
        PushI        8                         
        PushI        65                        
        Subtract                               
        Label        -compare-5622-sub         
        Subtract                               
        JumpFalse    -compare-5622-true        
        Jump         -compare-5622-false       
        Label        -compare-5622-true        
        PushI        1                         
        Jump         -compare-5622-join        
        Label        -compare-5622-false       
        PushI        0                         
        Jump         -compare-5622-join        
        Label        -compare-5622-join        
        JumpTrue     -print-boolean-5623-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5623-join  
        Label        -print-boolean-5623-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5623-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5624-arg1        
        PushI        40                        
        Label        -compare-5624-arg2        
        PushI        41                        
        PushI        84                        
        Subtract                               
        Label        -compare-5624-sub         
        Subtract                               
        JumpFalse    -compare-5624-true        
        Jump         -compare-5624-false       
        Label        -compare-5624-true        
        PushI        1                         
        Jump         -compare-5624-join        
        Label        -compare-5624-false       
        PushI        0                         
        Jump         -compare-5624-join        
        Label        -compare-5624-join        
        JumpTrue     -print-boolean-5625-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5625-join  
        Label        -print-boolean-5625-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5625-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5626-arg1        
        PushI        87                        
        Label        -compare-5626-arg2        
        PushI        44                        
        PushI        22                        
        Subtract                               
        Label        -compare-5626-sub         
        Subtract                               
        JumpFalse    -compare-5626-true        
        Jump         -compare-5626-false       
        Label        -compare-5626-true        
        PushI        1                         
        Jump         -compare-5626-join        
        Label        -compare-5626-false       
        PushI        0                         
        Jump         -compare-5626-join        
        Label        -compare-5626-join        
        JumpTrue     -print-boolean-5627-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5627-join  
        Label        -print-boolean-5627-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5627-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5628-arg1        
        PushI        84                        
        Label        -compare-5628-arg2        
        PushI        45                        
        PushI        91                        
        Subtract                               
        Label        -compare-5628-sub         
        Subtract                               
        JumpFalse    -compare-5628-true        
        Jump         -compare-5628-false       
        Label        -compare-5628-true        
        PushI        1                         
        Jump         -compare-5628-join        
        Label        -compare-5628-false       
        PushI        0                         
        Jump         -compare-5628-join        
        Label        -compare-5628-join        
        JumpTrue     -print-boolean-5629-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5629-join  
        Label        -print-boolean-5629-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5629-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5630-arg1        
        PushI        20                        
        PushI        63                        
        Subtract                               
        Label        -compare-5630-arg2        
        PushI        9                         
        PushI        1                         
        Subtract                               
        Label        -compare-5630-sub         
        Subtract                               
        JumpFalse    -compare-5630-true        
        Jump         -compare-5630-false       
        Label        -compare-5630-true        
        PushI        1                         
        Jump         -compare-5630-join        
        Label        -compare-5630-false       
        PushI        0                         
        Jump         -compare-5630-join        
        Label        -compare-5630-join        
        JumpTrue     -print-boolean-5631-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5631-join  
        Label        -print-boolean-5631-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5631-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5632-arg1        
        PushI        12                        
        PushI        44                        
        Subtract                               
        Label        -compare-5632-arg2        
        PushI        87                        
        PushI        27                        
        Subtract                               
        Label        -compare-5632-sub         
        Subtract                               
        JumpFalse    -compare-5632-true        
        Jump         -compare-5632-false       
        Label        -compare-5632-true        
        PushI        1                         
        Jump         -compare-5632-join        
        Label        -compare-5632-false       
        PushI        0                         
        Jump         -compare-5632-join        
        Label        -compare-5632-join        
        JumpTrue     -print-boolean-5633-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5633-join  
        Label        -print-boolean-5633-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5633-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5634-arg1        
        PushI        2                         
        PushI        86                        
        Subtract                               
        Label        -compare-5634-arg2        
        PushI        25                        
        PushI        40                        
        Subtract                               
        Label        -compare-5634-sub         
        Subtract                               
        JumpFalse    -compare-5634-true        
        Jump         -compare-5634-false       
        Label        -compare-5634-true        
        PushI        1                         
        Jump         -compare-5634-join        
        Label        -compare-5634-false       
        PushI        0                         
        Jump         -compare-5634-join        
        Label        -compare-5634-join        
        JumpTrue     -print-boolean-5635-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5635-join  
        Label        -print-boolean-5635-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5635-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5636-arg1        
        PushI        18                        
        PushI        58                        
        Subtract                               
        Label        -compare-5636-arg2        
        PushI        45                        
        PushI        33                        
        Subtract                               
        Label        -compare-5636-sub         
        Subtract                               
        JumpFalse    -compare-5636-true        
        Jump         -compare-5636-false       
        Label        -compare-5636-true        
        PushI        1                         
        Jump         -compare-5636-join        
        Label        -compare-5636-false       
        PushI        0                         
        Jump         -compare-5636-join        
        Label        -compare-5636-join        
        JumpTrue     -print-boolean-5637-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5637-join  
        Label        -print-boolean-5637-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5637-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5638-arg1        
        PushI        34                        
        PushI        37                        
        Subtract                               
        Label        -compare-5638-arg2        
        PushI        69                        
        PushI        65                        
        Subtract                               
        Label        -compare-5638-sub         
        Subtract                               
        JumpFalse    -compare-5638-true        
        Jump         -compare-5638-false       
        Label        -compare-5638-true        
        PushI        1                         
        Jump         -compare-5638-join        
        Label        -compare-5638-false       
        PushI        0                         
        Jump         -compare-5638-join        
        Label        -compare-5638-join        
        JumpTrue     -print-boolean-5639-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5639-join  
        Label        -print-boolean-5639-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5639-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5640-arg1        
        PushI        81                        
        PushI        42                        
        Subtract                               
        Label        -compare-5640-arg2        
        PushI        20                        
        PushI        68                        
        Subtract                               
        Label        -compare-5640-sub         
        Subtract                               
        JumpFalse    -compare-5640-true        
        Jump         -compare-5640-false       
        Label        -compare-5640-true        
        PushI        1                         
        Jump         -compare-5640-join        
        Label        -compare-5640-false       
        PushI        0                         
        Jump         -compare-5640-join        
        Label        -compare-5640-join        
        JumpTrue     -print-boolean-5641-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5641-join  
        Label        -print-boolean-5641-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5641-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5642-arg1        
        PushI        42                        
        PushI        77                        
        Subtract                               
        Label        -compare-5642-arg2        
        PushI        22                        
        PushI        55                        
        Subtract                               
        Label        -compare-5642-sub         
        Subtract                               
        JumpFalse    -compare-5642-true        
        Jump         -compare-5642-false       
        Label        -compare-5642-true        
        PushI        1                         
        Jump         -compare-5642-join        
        Label        -compare-5642-false       
        PushI        0                         
        Jump         -compare-5642-join        
        Label        -compare-5642-join        
        JumpTrue     -print-boolean-5643-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5643-join  
        Label        -print-boolean-5643-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5643-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5644-arg1        
        PushI        4                         
        PushI        29                        
        Subtract                               
        Label        -compare-5644-arg2        
        PushI        51                        
        PushI        46                        
        Subtract                               
        Label        -compare-5644-sub         
        Subtract                               
        JumpFalse    -compare-5644-true        
        Jump         -compare-5644-false       
        Label        -compare-5644-true        
        PushI        1                         
        Jump         -compare-5644-join        
        Label        -compare-5644-false       
        PushI        0                         
        Jump         -compare-5644-join        
        Label        -compare-5644-join        
        JumpTrue     -print-boolean-5645-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5645-join  
        Label        -print-boolean-5645-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5645-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5646-arg1        
        PushI        75                        
        PushI        78                        
        Subtract                               
        Label        -compare-5646-arg2        
        PushI        59                        
        PushI        52                        
        Subtract                               
        Label        -compare-5646-sub         
        Subtract                               
        JumpFalse    -compare-5646-true        
        Jump         -compare-5646-false       
        Label        -compare-5646-true        
        PushI        1                         
        Jump         -compare-5646-join        
        Label        -compare-5646-false       
        PushI        0                         
        Jump         -compare-5646-join        
        Label        -compare-5646-join        
        JumpTrue     -print-boolean-5647-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5647-join  
        Label        -print-boolean-5647-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5647-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5648-arg1        
        PushI        19                        
        PushI        26                        
        Subtract                               
        Label        -compare-5648-arg2        
        PushI        72                        
        PushI        17                        
        Subtract                               
        Label        -compare-5648-sub         
        Subtract                               
        JumpFalse    -compare-5648-true        
        Jump         -compare-5648-false       
        Label        -compare-5648-true        
        PushI        1                         
        Jump         -compare-5648-join        
        Label        -compare-5648-false       
        PushI        0                         
        Jump         -compare-5648-join        
        Label        -compare-5648-join        
        JumpTrue     -print-boolean-5649-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5649-join  
        Label        -print-boolean-5649-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5649-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5650-arg1        
        PushI        67                        
        PushI        63                        
        Subtract                               
        Label        -compare-5650-arg2        
        PushI        42                        
        PushI        63                        
        Subtract                               
        Label        -compare-5650-sub         
        Subtract                               
        JumpFalse    -compare-5650-true        
        Jump         -compare-5650-false       
        Label        -compare-5650-true        
        PushI        1                         
        Jump         -compare-5650-join        
        Label        -compare-5650-false       
        PushI        0                         
        Jump         -compare-5650-join        
        Label        -compare-5650-join        
        JumpTrue     -print-boolean-5651-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5651-join  
        Label        -print-boolean-5651-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5651-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-5652-arg1        
        PushI        26                        
        PushI        60                        
        Subtract                               
        Label        -compare-5652-arg2        
        PushI        67                        
        PushI        88                        
        Subtract                               
        Label        -compare-5652-sub         
        Subtract                               
        JumpFalse    -compare-5652-true        
        Jump         -compare-5652-false       
        Label        -compare-5652-true        
        PushI        1                         
        Jump         -compare-5652-join        
        Label        -compare-5652-false       
        PushI        0                         
        Jump         -compare-5652-join        
        Label        -compare-5652-join        
        JumpTrue     -print-boolean-5653-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-5653-join  
        Label        -print-boolean-5653-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-5653-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
