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
        Label        -bool-or-6488-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6488-true-condition 
        PushI        0                         
        Label        -bool-or-6488-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6488-true-condition 
        Jump         -bool-or-6488-false-condition 
        Label        -bool-or-6488-true-condition 
        PushI        1                         
        Jump         -bool-or-6488-end         
        Label        -bool-or-6488-false-condition 
        PushI        0                         
        Label        -bool-or-6488-end         
        PushI        1                         
        And                                    
        JumpTrue     -print-boolean-6489-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6489-join  
        Label        -print-boolean-6489-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6489-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6490-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6490-true-condition 
        PushI        0                         
        Label        -bool-or-6490-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6490-true-condition 
        Jump         -bool-or-6490-false-condition 
        Label        -bool-or-6490-true-condition 
        PushI        1                         
        Jump         -bool-or-6490-end         
        Label        -bool-or-6490-false-condition 
        PushI        0                         
        Label        -bool-or-6490-end         
        PushI        1                         
        And                                    
        JumpTrue     -print-boolean-6491-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6491-join  
        Label        -print-boolean-6491-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6491-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6492-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6492-true-condition 
        PushI        0                         
        Label        -bool-or-6492-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6492-true-condition 
        Jump         -bool-or-6492-false-condition 
        Label        -bool-or-6492-true-condition 
        PushI        1                         
        Jump         -bool-or-6492-end         
        Label        -bool-or-6492-false-condition 
        PushI        0                         
        Label        -bool-or-6492-end         
        PushI        1                         
        And                                    
        JumpTrue     -print-boolean-6493-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6493-join  
        Label        -print-boolean-6493-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6493-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6494-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6494-true-condition 
        PushI        0                         
        Label        -bool-or-6494-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6494-true-condition 
        Jump         -bool-or-6494-false-condition 
        Label        -bool-or-6494-true-condition 
        PushI        1                         
        Jump         -bool-or-6494-end         
        Label        -bool-or-6494-false-condition 
        PushI        0                         
        Label        -bool-or-6494-end         
        PushI        1                         
        And                                    
        JumpTrue     -print-boolean-6495-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6495-join  
        Label        -print-boolean-6495-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6495-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6496-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6496-true-condition 
        PushI        0                         
        Label        -bool-or-6496-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6496-true-condition 
        Jump         -bool-or-6496-false-condition 
        Label        -bool-or-6496-true-condition 
        PushI        1                         
        Jump         -bool-or-6496-end         
        Label        -bool-or-6496-false-condition 
        PushI        0                         
        Label        -bool-or-6496-end         
        PushI        0                         
        And                                    
        JumpTrue     -print-boolean-6497-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6497-join  
        Label        -print-boolean-6497-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6497-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6498-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6498-true-condition 
        PushI        0                         
        Label        -bool-or-6498-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6498-true-condition 
        Jump         -bool-or-6498-false-condition 
        Label        -bool-or-6498-true-condition 
        PushI        1                         
        Jump         -bool-or-6498-end         
        Label        -bool-or-6498-false-condition 
        PushI        0                         
        Label        -bool-or-6498-end         
        PushI        0                         
        And                                    
        JumpTrue     -print-boolean-6499-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6499-join  
        Label        -print-boolean-6499-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6499-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6500-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6500-true-condition 
        PushI        0                         
        Label        -bool-or-6500-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6500-true-condition 
        Jump         -bool-or-6500-false-condition 
        Label        -bool-or-6500-true-condition 
        PushI        1                         
        Jump         -bool-or-6500-end         
        Label        -bool-or-6500-false-condition 
        PushI        0                         
        Label        -bool-or-6500-end         
        PushI        0                         
        And                                    
        JumpTrue     -print-boolean-6501-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6501-join  
        Label        -print-boolean-6501-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6501-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6502-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6502-true-condition 
        PushI        0                         
        Label        -bool-or-6502-arg2        
        PushI        0                         
        Or                                     
        JumpTrue     -bool-or-6502-true-condition 
        Jump         -bool-or-6502-false-condition 
        Label        -bool-or-6502-true-condition 
        PushI        1                         
        Jump         -bool-or-6502-end         
        Label        -bool-or-6502-false-condition 
        PushI        0                         
        Label        -bool-or-6502-end         
        PushI        0                         
        And                                    
        JumpTrue     -print-boolean-6503-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6503-join  
        Label        -print-boolean-6503-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6503-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6504-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6504-true-condition 
        PushI        0                         
        Label        -bool-or-6504-arg2        
        PushI        1                         
        PushI        1                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-6504-true-condition 
        Jump         -bool-or-6504-false-condition 
        Label        -bool-or-6504-true-condition 
        PushI        1                         
        Jump         -bool-or-6504-end         
        Label        -bool-or-6504-false-condition 
        PushI        0                         
        Label        -bool-or-6504-end         
        JumpTrue     -print-boolean-6505-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6505-join  
        Label        -print-boolean-6505-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6505-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6506-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6506-true-condition 
        PushI        0                         
        Label        -bool-or-6506-arg2        
        PushI        0                         
        PushI        1                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-6506-true-condition 
        Jump         -bool-or-6506-false-condition 
        Label        -bool-or-6506-true-condition 
        PushI        1                         
        Jump         -bool-or-6506-end         
        Label        -bool-or-6506-false-condition 
        PushI        0                         
        Label        -bool-or-6506-end         
        JumpTrue     -print-boolean-6507-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6507-join  
        Label        -print-boolean-6507-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6507-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6508-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6508-true-condition 
        PushI        0                         
        Label        -bool-or-6508-arg2        
        PushI        1                         
        PushI        1                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-6508-true-condition 
        Jump         -bool-or-6508-false-condition 
        Label        -bool-or-6508-true-condition 
        PushI        1                         
        Jump         -bool-or-6508-end         
        Label        -bool-or-6508-false-condition 
        PushI        0                         
        Label        -bool-or-6508-end         
        JumpTrue     -print-boolean-6509-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6509-join  
        Label        -print-boolean-6509-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6509-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6510-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6510-true-condition 
        PushI        0                         
        Label        -bool-or-6510-arg2        
        PushI        0                         
        PushI        1                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-6510-true-condition 
        Jump         -bool-or-6510-false-condition 
        Label        -bool-or-6510-true-condition 
        PushI        1                         
        Jump         -bool-or-6510-end         
        Label        -bool-or-6510-false-condition 
        PushI        0                         
        Label        -bool-or-6510-end         
        JumpTrue     -print-boolean-6511-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6511-join  
        Label        -print-boolean-6511-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6511-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6512-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6512-true-condition 
        PushI        0                         
        Label        -bool-or-6512-arg2        
        PushI        1                         
        PushI        0                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-6512-true-condition 
        Jump         -bool-or-6512-false-condition 
        Label        -bool-or-6512-true-condition 
        PushI        1                         
        Jump         -bool-or-6512-end         
        Label        -bool-or-6512-false-condition 
        PushI        0                         
        Label        -bool-or-6512-end         
        JumpTrue     -print-boolean-6513-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6513-join  
        Label        -print-boolean-6513-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6513-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6514-arg1        
        PushI        1                         
        JumpTrue     -bool-or-6514-true-condition 
        PushI        0                         
        Label        -bool-or-6514-arg2        
        PushI        0                         
        PushI        0                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-6514-true-condition 
        Jump         -bool-or-6514-false-condition 
        Label        -bool-or-6514-true-condition 
        PushI        1                         
        Jump         -bool-or-6514-end         
        Label        -bool-or-6514-false-condition 
        PushI        0                         
        Label        -bool-or-6514-end         
        JumpTrue     -print-boolean-6515-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6515-join  
        Label        -print-boolean-6515-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6515-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6516-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6516-true-condition 
        PushI        0                         
        Label        -bool-or-6516-arg2        
        PushI        1                         
        PushI        0                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-6516-true-condition 
        Jump         -bool-or-6516-false-condition 
        Label        -bool-or-6516-true-condition 
        PushI        1                         
        Jump         -bool-or-6516-end         
        Label        -bool-or-6516-false-condition 
        PushI        0                         
        Label        -bool-or-6516-end         
        JumpTrue     -print-boolean-6517-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6517-join  
        Label        -print-boolean-6517-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6517-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -bool-or-6518-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6518-true-condition 
        PushI        0                         
        Label        -bool-or-6518-arg2        
        PushI        0                         
        PushI        0                         
        And                                    
        Or                                     
        JumpTrue     -bool-or-6518-true-condition 
        Jump         -bool-or-6518-false-condition 
        Label        -bool-or-6518-true-condition 
        PushI        1                         
        Jump         -bool-or-6518-end         
        Label        -bool-or-6518-false-condition 
        PushI        0                         
        Label        -bool-or-6518-end         
        JumpTrue     -print-boolean-6519-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6519-join  
        Label        -print-boolean-6519-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6519-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        1                         
        Label        -bool-or-6521-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6521-true-condition 
        PushI        0                         
        Label        -bool-or-6521-arg2        
        Label        -bool-or-6520-arg1        
        PushI        0                         
        JumpTrue     -bool-or-6520-true-condition 
        PushI        0                         
        Label        -bool-or-6520-arg2        
        PushI        1                         
        Or                                     
        JumpTrue     -bool-or-6520-true-condition 
        Jump         -bool-or-6520-false-condition 
        Label        -bool-or-6520-true-condition 
        PushI        1                         
        Jump         -bool-or-6520-end         
        Label        -bool-or-6520-false-condition 
        PushI        0                         
        Label        -bool-or-6520-end         
        Or                                     
        JumpTrue     -bool-or-6521-true-condition 
        Jump         -bool-or-6521-false-condition 
        Label        -bool-or-6521-true-condition 
        PushI        1                         
        Jump         -bool-or-6521-end         
        Label        -bool-or-6521-false-condition 
        PushI        0                         
        Label        -bool-or-6521-end         
        And                                    
        JumpTrue     -print-boolean-6522-true  
        PushD        $boolean-false-string     
        Jump         -print-boolean-6522-join  
        Label        -print-boolean-6522-true  
        PushD        $boolean-true-string      
        Label        -print-boolean-6522-join  
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
