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
        Label        -compare-62-arg1          
        Label        -compare-61-arg1          
        PushI        1                         
        Label        -compare-61-arg2          
        PushI        1                         
        Label        -compare-61-sub           
        BEqual                                 
        JumpTrue     -compare-61-true          
        Jump         -compare-61-false         
        Label        -compare-61-true          
        PushI        1                         
        Jump         -compare-61-join          
        Label        -compare-61-false         
        PushI        0                         
        Jump         -compare-61-join          
        Label        -compare-61-join          
        Label        -compare-62-arg2          
        PushI        1                         
        Label        -compare-62-sub           
        BEqual                                 
        JumpTrue     -compare-62-true          
        Jump         -compare-62-false         
        Label        -compare-62-true          
        PushI        1                         
        Jump         -compare-62-join          
        Label        -compare-62-false         
        PushI        0                         
        Jump         -compare-62-join          
        Label        -compare-62-join          
        JumpTrue     -print-boolean-63-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-63-join    
        Label        -print-boolean-63-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-63-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-65-arg1          
        Label        -compare-64-arg1          
        PushI        0                         
        Label        -compare-64-arg2          
        PushI        1                         
        Label        -compare-64-sub           
        BEqual                                 
        JumpTrue     -compare-64-true          
        Jump         -compare-64-false         
        Label        -compare-64-true          
        PushI        1                         
        Jump         -compare-64-join          
        Label        -compare-64-false         
        PushI        0                         
        Jump         -compare-64-join          
        Label        -compare-64-join          
        Label        -compare-65-arg2          
        PushI        1                         
        Label        -compare-65-sub           
        BEqual                                 
        JumpTrue     -compare-65-true          
        Jump         -compare-65-false         
        Label        -compare-65-true          
        PushI        1                         
        Jump         -compare-65-join          
        Label        -compare-65-false         
        PushI        0                         
        Jump         -compare-65-join          
        Label        -compare-65-join          
        JumpTrue     -print-boolean-66-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-66-join    
        Label        -print-boolean-66-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-66-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-68-arg1          
        Label        -compare-67-arg1          
        PushI        1                         
        Label        -compare-67-arg2          
        PushI        0                         
        Label        -compare-67-sub           
        BEqual                                 
        JumpTrue     -compare-67-true          
        Jump         -compare-67-false         
        Label        -compare-67-true          
        PushI        1                         
        Jump         -compare-67-join          
        Label        -compare-67-false         
        PushI        0                         
        Jump         -compare-67-join          
        Label        -compare-67-join          
        Label        -compare-68-arg2          
        PushI        1                         
        Label        -compare-68-sub           
        BEqual                                 
        JumpTrue     -compare-68-true          
        Jump         -compare-68-false         
        Label        -compare-68-true          
        PushI        1                         
        Jump         -compare-68-join          
        Label        -compare-68-false         
        PushI        0                         
        Jump         -compare-68-join          
        Label        -compare-68-join          
        JumpTrue     -print-boolean-69-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-69-join    
        Label        -print-boolean-69-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-69-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-71-arg1          
        Label        -compare-70-arg1          
        PushI        0                         
        Label        -compare-70-arg2          
        PushI        0                         
        Label        -compare-70-sub           
        BEqual                                 
        JumpTrue     -compare-70-true          
        Jump         -compare-70-false         
        Label        -compare-70-true          
        PushI        1                         
        Jump         -compare-70-join          
        Label        -compare-70-false         
        PushI        0                         
        Jump         -compare-70-join          
        Label        -compare-70-join          
        Label        -compare-71-arg2          
        PushI        1                         
        Label        -compare-71-sub           
        BEqual                                 
        JumpTrue     -compare-71-true          
        Jump         -compare-71-false         
        Label        -compare-71-true          
        PushI        1                         
        Jump         -compare-71-join          
        Label        -compare-71-false         
        PushI        0                         
        Jump         -compare-71-join          
        Label        -compare-71-join          
        JumpTrue     -print-boolean-72-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-72-join    
        Label        -print-boolean-72-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-72-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-74-arg1          
        Label        -compare-73-arg1          
        PushI        1                         
        Label        -compare-73-arg2          
        PushI        1                         
        Label        -compare-73-sub           
        BEqual                                 
        JumpTrue     -compare-73-true          
        Jump         -compare-73-false         
        Label        -compare-73-true          
        PushI        1                         
        Jump         -compare-73-join          
        Label        -compare-73-false         
        PushI        0                         
        Jump         -compare-73-join          
        Label        -compare-73-join          
        Label        -compare-74-arg2          
        PushI        0                         
        Label        -compare-74-sub           
        BEqual                                 
        JumpTrue     -compare-74-true          
        Jump         -compare-74-false         
        Label        -compare-74-true          
        PushI        1                         
        Jump         -compare-74-join          
        Label        -compare-74-false         
        PushI        0                         
        Jump         -compare-74-join          
        Label        -compare-74-join          
        JumpTrue     -print-boolean-75-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-75-join    
        Label        -print-boolean-75-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-75-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-77-arg1          
        Label        -compare-76-arg1          
        PushI        0                         
        Label        -compare-76-arg2          
        PushI        1                         
        Label        -compare-76-sub           
        BEqual                                 
        JumpTrue     -compare-76-true          
        Jump         -compare-76-false         
        Label        -compare-76-true          
        PushI        1                         
        Jump         -compare-76-join          
        Label        -compare-76-false         
        PushI        0                         
        Jump         -compare-76-join          
        Label        -compare-76-join          
        Label        -compare-77-arg2          
        PushI        0                         
        Label        -compare-77-sub           
        BEqual                                 
        JumpTrue     -compare-77-true          
        Jump         -compare-77-false         
        Label        -compare-77-true          
        PushI        1                         
        Jump         -compare-77-join          
        Label        -compare-77-false         
        PushI        0                         
        Jump         -compare-77-join          
        Label        -compare-77-join          
        JumpTrue     -print-boolean-78-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-78-join    
        Label        -print-boolean-78-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-78-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-80-arg1          
        Label        -compare-79-arg1          
        PushI        1                         
        Label        -compare-79-arg2          
        PushI        0                         
        Label        -compare-79-sub           
        BEqual                                 
        JumpTrue     -compare-79-true          
        Jump         -compare-79-false         
        Label        -compare-79-true          
        PushI        1                         
        Jump         -compare-79-join          
        Label        -compare-79-false         
        PushI        0                         
        Jump         -compare-79-join          
        Label        -compare-79-join          
        Label        -compare-80-arg2          
        PushI        0                         
        Label        -compare-80-sub           
        BEqual                                 
        JumpTrue     -compare-80-true          
        Jump         -compare-80-false         
        Label        -compare-80-true          
        PushI        1                         
        Jump         -compare-80-join          
        Label        -compare-80-false         
        PushI        0                         
        Jump         -compare-80-join          
        Label        -compare-80-join          
        JumpTrue     -print-boolean-81-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-81-join    
        Label        -print-boolean-81-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-81-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-83-arg1          
        Label        -compare-82-arg1          
        PushI        0                         
        Label        -compare-82-arg2          
        PushI        0                         
        Label        -compare-82-sub           
        BEqual                                 
        JumpTrue     -compare-82-true          
        Jump         -compare-82-false         
        Label        -compare-82-true          
        PushI        1                         
        Jump         -compare-82-join          
        Label        -compare-82-false         
        PushI        0                         
        Jump         -compare-82-join          
        Label        -compare-82-join          
        Label        -compare-83-arg2          
        PushI        0                         
        Label        -compare-83-sub           
        BEqual                                 
        JumpTrue     -compare-83-true          
        Jump         -compare-83-false         
        Label        -compare-83-true          
        PushI        1                         
        Jump         -compare-83-join          
        Label        -compare-83-false         
        PushI        0                         
        Jump         -compare-83-join          
        Label        -compare-83-join          
        JumpTrue     -print-boolean-84-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-84-join    
        Label        -print-boolean-84-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-84-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
