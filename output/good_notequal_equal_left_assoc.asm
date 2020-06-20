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
        Label        -compare-164-arg1         
        Label        -compare-163-arg1         
        PushI        1                         
        Label        -compare-163-arg2         
        PushI        1                         
        Label        -compare-163-sub          
        BEqual                                 
        JumpFalse    -compare-163-true         
        Jump         -compare-163-false        
        Label        -compare-163-true         
        PushI        1                         
        Jump         -compare-163-join         
        Label        -compare-163-false        
        PushI        0                         
        Jump         -compare-163-join         
        Label        -compare-163-join         
        Label        -compare-164-arg2         
        PushI        1                         
        Label        -compare-164-sub          
        BEqual                                 
        JumpTrue     -compare-164-true         
        Jump         -compare-164-false        
        Label        -compare-164-true         
        PushI        1                         
        Jump         -compare-164-join         
        Label        -compare-164-false        
        PushI        0                         
        Jump         -compare-164-join         
        Label        -compare-164-join         
        JumpTrue     -print-boolean-165-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-165-join   
        Label        -print-boolean-165-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-165-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-167-arg1         
        Label        -compare-166-arg1         
        PushI        0                         
        Label        -compare-166-arg2         
        PushI        1                         
        Label        -compare-166-sub          
        BEqual                                 
        JumpFalse    -compare-166-true         
        Jump         -compare-166-false        
        Label        -compare-166-true         
        PushI        1                         
        Jump         -compare-166-join         
        Label        -compare-166-false        
        PushI        0                         
        Jump         -compare-166-join         
        Label        -compare-166-join         
        Label        -compare-167-arg2         
        PushI        1                         
        Label        -compare-167-sub          
        BEqual                                 
        JumpTrue     -compare-167-true         
        Jump         -compare-167-false        
        Label        -compare-167-true         
        PushI        1                         
        Jump         -compare-167-join         
        Label        -compare-167-false        
        PushI        0                         
        Jump         -compare-167-join         
        Label        -compare-167-join         
        JumpTrue     -print-boolean-168-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-168-join   
        Label        -print-boolean-168-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-168-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-170-arg1         
        Label        -compare-169-arg1         
        PushI        1                         
        Label        -compare-169-arg2         
        PushI        0                         
        Label        -compare-169-sub          
        BEqual                                 
        JumpFalse    -compare-169-true         
        Jump         -compare-169-false        
        Label        -compare-169-true         
        PushI        1                         
        Jump         -compare-169-join         
        Label        -compare-169-false        
        PushI        0                         
        Jump         -compare-169-join         
        Label        -compare-169-join         
        Label        -compare-170-arg2         
        PushI        1                         
        Label        -compare-170-sub          
        BEqual                                 
        JumpTrue     -compare-170-true         
        Jump         -compare-170-false        
        Label        -compare-170-true         
        PushI        1                         
        Jump         -compare-170-join         
        Label        -compare-170-false        
        PushI        0                         
        Jump         -compare-170-join         
        Label        -compare-170-join         
        JumpTrue     -print-boolean-171-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-171-join   
        Label        -print-boolean-171-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-171-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-173-arg1         
        Label        -compare-172-arg1         
        PushI        0                         
        Label        -compare-172-arg2         
        PushI        0                         
        Label        -compare-172-sub          
        BEqual                                 
        JumpFalse    -compare-172-true         
        Jump         -compare-172-false        
        Label        -compare-172-true         
        PushI        1                         
        Jump         -compare-172-join         
        Label        -compare-172-false        
        PushI        0                         
        Jump         -compare-172-join         
        Label        -compare-172-join         
        Label        -compare-173-arg2         
        PushI        1                         
        Label        -compare-173-sub          
        BEqual                                 
        JumpTrue     -compare-173-true         
        Jump         -compare-173-false        
        Label        -compare-173-true         
        PushI        1                         
        Jump         -compare-173-join         
        Label        -compare-173-false        
        PushI        0                         
        Jump         -compare-173-join         
        Label        -compare-173-join         
        JumpTrue     -print-boolean-174-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-174-join   
        Label        -print-boolean-174-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-174-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-176-arg1         
        Label        -compare-175-arg1         
        PushI        1                         
        Label        -compare-175-arg2         
        PushI        1                         
        Label        -compare-175-sub          
        BEqual                                 
        JumpFalse    -compare-175-true         
        Jump         -compare-175-false        
        Label        -compare-175-true         
        PushI        1                         
        Jump         -compare-175-join         
        Label        -compare-175-false        
        PushI        0                         
        Jump         -compare-175-join         
        Label        -compare-175-join         
        Label        -compare-176-arg2         
        PushI        0                         
        Label        -compare-176-sub          
        BEqual                                 
        JumpTrue     -compare-176-true         
        Jump         -compare-176-false        
        Label        -compare-176-true         
        PushI        1                         
        Jump         -compare-176-join         
        Label        -compare-176-false        
        PushI        0                         
        Jump         -compare-176-join         
        Label        -compare-176-join         
        JumpTrue     -print-boolean-177-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-177-join   
        Label        -print-boolean-177-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-177-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-179-arg1         
        Label        -compare-178-arg1         
        PushI        0                         
        Label        -compare-178-arg2         
        PushI        1                         
        Label        -compare-178-sub          
        BEqual                                 
        JumpFalse    -compare-178-true         
        Jump         -compare-178-false        
        Label        -compare-178-true         
        PushI        1                         
        Jump         -compare-178-join         
        Label        -compare-178-false        
        PushI        0                         
        Jump         -compare-178-join         
        Label        -compare-178-join         
        Label        -compare-179-arg2         
        PushI        0                         
        Label        -compare-179-sub          
        BEqual                                 
        JumpTrue     -compare-179-true         
        Jump         -compare-179-false        
        Label        -compare-179-true         
        PushI        1                         
        Jump         -compare-179-join         
        Label        -compare-179-false        
        PushI        0                         
        Jump         -compare-179-join         
        Label        -compare-179-join         
        JumpTrue     -print-boolean-180-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-180-join   
        Label        -print-boolean-180-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-180-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-182-arg1         
        Label        -compare-181-arg1         
        PushI        1                         
        Label        -compare-181-arg2         
        PushI        0                         
        Label        -compare-181-sub          
        BEqual                                 
        JumpFalse    -compare-181-true         
        Jump         -compare-181-false        
        Label        -compare-181-true         
        PushI        1                         
        Jump         -compare-181-join         
        Label        -compare-181-false        
        PushI        0                         
        Jump         -compare-181-join         
        Label        -compare-181-join         
        Label        -compare-182-arg2         
        PushI        0                         
        Label        -compare-182-sub          
        BEqual                                 
        JumpTrue     -compare-182-true         
        Jump         -compare-182-false        
        Label        -compare-182-true         
        PushI        1                         
        Jump         -compare-182-join         
        Label        -compare-182-false        
        PushI        0                         
        Jump         -compare-182-join         
        Label        -compare-182-join         
        JumpTrue     -print-boolean-183-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-183-join   
        Label        -print-boolean-183-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-183-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-185-arg1         
        Label        -compare-184-arg1         
        PushI        0                         
        Label        -compare-184-arg2         
        PushI        0                         
        Label        -compare-184-sub          
        BEqual                                 
        JumpFalse    -compare-184-true         
        Jump         -compare-184-false        
        Label        -compare-184-true         
        PushI        1                         
        Jump         -compare-184-join         
        Label        -compare-184-false        
        PushI        0                         
        Jump         -compare-184-join         
        Label        -compare-184-join         
        Label        -compare-185-arg2         
        PushI        0                         
        Label        -compare-185-sub          
        BEqual                                 
        JumpTrue     -compare-185-true         
        Jump         -compare-185-false        
        Label        -compare-185-true         
        PushI        1                         
        Jump         -compare-185-join         
        Label        -compare-185-false        
        PushI        0                         
        Jump         -compare-185-join         
        Label        -compare-185-join         
        JumpTrue     -print-boolean-186-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-186-join   
        Label        -print-boolean-186-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-186-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
