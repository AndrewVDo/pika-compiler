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
        Label        -compare-294-arg1         
        PushI        57                        
        PushI        9                         
        Add                                    
        Label        -compare-294-arg2         
        PushI        42                        
        Label        -compare-294-sub          
        Subtract                               
        JumpFalse    -compare-294-true         
        Jump         -compare-294-false        
        Label        -compare-294-true         
        PushI        1                         
        Jump         -compare-294-join         
        Label        -compare-294-false        
        PushI        0                         
        Jump         -compare-294-join         
        Label        -compare-294-join         
        JumpTrue     -print-boolean-295-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-295-join   
        Label        -print-boolean-295-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-295-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-296-arg1         
        PushI        48                        
        PushI        10                        
        Add                                    
        Label        -compare-296-arg2         
        PushI        64                        
        Label        -compare-296-sub          
        Subtract                               
        JumpFalse    -compare-296-true         
        Jump         -compare-296-false        
        Label        -compare-296-true         
        PushI        1                         
        Jump         -compare-296-join         
        Label        -compare-296-false        
        PushI        0                         
        Jump         -compare-296-join         
        Label        -compare-296-join         
        JumpTrue     -print-boolean-297-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-297-join   
        Label        -print-boolean-297-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-297-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-298-arg1         
        PushI        81                        
        PushI        3                         
        Add                                    
        Label        -compare-298-arg2         
        PushI        25                        
        Label        -compare-298-sub          
        Subtract                               
        JumpFalse    -compare-298-true         
        Jump         -compare-298-false        
        Label        -compare-298-true         
        PushI        1                         
        Jump         -compare-298-join         
        Label        -compare-298-false        
        PushI        0                         
        Jump         -compare-298-join         
        Label        -compare-298-join         
        JumpTrue     -print-boolean-299-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-299-join   
        Label        -print-boolean-299-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-299-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-300-arg1         
        PushI        70                        
        PushI        79                        
        Add                                    
        Label        -compare-300-arg2         
        PushI        24                        
        Label        -compare-300-sub          
        Subtract                               
        JumpFalse    -compare-300-true         
        Jump         -compare-300-false        
        Label        -compare-300-true         
        PushI        1                         
        Jump         -compare-300-join         
        Label        -compare-300-false        
        PushI        0                         
        Jump         -compare-300-join         
        Label        -compare-300-join         
        JumpTrue     -print-boolean-301-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-301-join   
        Label        -print-boolean-301-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-301-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-302-arg1         
        PushI        9                         
        PushI        98                        
        Add                                    
        Label        -compare-302-arg2         
        PushI        13                        
        Label        -compare-302-sub          
        Subtract                               
        JumpFalse    -compare-302-true         
        Jump         -compare-302-false        
        Label        -compare-302-true         
        PushI        1                         
        Jump         -compare-302-join         
        Label        -compare-302-false        
        PushI        0                         
        Jump         -compare-302-join         
        Label        -compare-302-join         
        JumpTrue     -print-boolean-303-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-303-join   
        Label        -print-boolean-303-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-303-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-304-arg1         
        PushI        22                        
        PushI        52                        
        Add                                    
        Label        -compare-304-arg2         
        PushI        70                        
        Label        -compare-304-sub          
        Subtract                               
        JumpFalse    -compare-304-true         
        Jump         -compare-304-false        
        Label        -compare-304-true         
        PushI        1                         
        Jump         -compare-304-join         
        Label        -compare-304-false        
        PushI        0                         
        Jump         -compare-304-join         
        Label        -compare-304-join         
        JumpTrue     -print-boolean-305-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-305-join   
        Label        -print-boolean-305-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-305-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-306-arg1         
        PushI        38                        
        PushI        49                        
        Add                                    
        Label        -compare-306-arg2         
        PushI        4                         
        Label        -compare-306-sub          
        Subtract                               
        JumpFalse    -compare-306-true         
        Jump         -compare-306-false        
        Label        -compare-306-true         
        PushI        1                         
        Jump         -compare-306-join         
        Label        -compare-306-false        
        PushI        0                         
        Jump         -compare-306-join         
        Label        -compare-306-join         
        JumpTrue     -print-boolean-307-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-307-join   
        Label        -print-boolean-307-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-307-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-308-arg1         
        PushI        3                         
        PushI        48                        
        Add                                    
        Label        -compare-308-arg2         
        PushI        28                        
        Label        -compare-308-sub          
        Subtract                               
        JumpFalse    -compare-308-true         
        Jump         -compare-308-false        
        Label        -compare-308-true         
        PushI        1                         
        Jump         -compare-308-join         
        Label        -compare-308-false        
        PushI        0                         
        Jump         -compare-308-join         
        Label        -compare-308-join         
        JumpTrue     -print-boolean-309-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-309-join   
        Label        -print-boolean-309-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-309-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-310-arg1         
        PushI        49                        
        PushI        4                         
        Add                                    
        Label        -compare-310-arg2         
        PushI        79                        
        Label        -compare-310-sub          
        Subtract                               
        JumpFalse    -compare-310-true         
        Jump         -compare-310-false        
        Label        -compare-310-true         
        PushI        1                         
        Jump         -compare-310-join         
        Label        -compare-310-false        
        PushI        0                         
        Jump         -compare-310-join         
        Label        -compare-310-join         
        JumpTrue     -print-boolean-311-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-311-join   
        Label        -print-boolean-311-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-311-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-312-arg1         
        PushI        82                        
        PushI        64                        
        Add                                    
        Label        -compare-312-arg2         
        PushI        74                        
        Label        -compare-312-sub          
        Subtract                               
        JumpFalse    -compare-312-true         
        Jump         -compare-312-false        
        Label        -compare-312-true         
        PushI        1                         
        Jump         -compare-312-join         
        Label        -compare-312-false        
        PushI        0                         
        Jump         -compare-312-join         
        Label        -compare-312-join         
        JumpTrue     -print-boolean-313-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-313-join   
        Label        -print-boolean-313-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-313-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-314-arg1         
        PushI        21                        
        PushI        68                        
        Add                                    
        Label        -compare-314-arg2         
        PushI        77                        
        Label        -compare-314-sub          
        Subtract                               
        JumpFalse    -compare-314-true         
        Jump         -compare-314-false        
        Label        -compare-314-true         
        PushI        1                         
        Jump         -compare-314-join         
        Label        -compare-314-false        
        PushI        0                         
        Jump         -compare-314-join         
        Label        -compare-314-join         
        JumpTrue     -print-boolean-315-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-315-join   
        Label        -print-boolean-315-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-315-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-316-arg1         
        PushI        34                        
        PushI        98                        
        Add                                    
        Label        -compare-316-arg2         
        PushI        78                        
        Label        -compare-316-sub          
        Subtract                               
        JumpFalse    -compare-316-true         
        Jump         -compare-316-false        
        Label        -compare-316-true         
        PushI        1                         
        Jump         -compare-316-join         
        Label        -compare-316-false        
        PushI        0                         
        Jump         -compare-316-join         
        Label        -compare-316-join         
        JumpTrue     -print-boolean-317-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-317-join   
        Label        -print-boolean-317-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-317-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-318-arg1         
        PushI        51                        
        Label        -compare-318-arg2         
        PushI        20                        
        PushI        62                        
        Add                                    
        Label        -compare-318-sub          
        Subtract                               
        JumpFalse    -compare-318-true         
        Jump         -compare-318-false        
        Label        -compare-318-true         
        PushI        1                         
        Jump         -compare-318-join         
        Label        -compare-318-false        
        PushI        0                         
        Jump         -compare-318-join         
        Label        -compare-318-join         
        JumpTrue     -print-boolean-319-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-319-join   
        Label        -print-boolean-319-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-319-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-320-arg1         
        PushI        80                        
        Label        -compare-320-arg2         
        PushI        31                        
        PushI        58                        
        Add                                    
        Label        -compare-320-sub          
        Subtract                               
        JumpFalse    -compare-320-true         
        Jump         -compare-320-false        
        Label        -compare-320-true         
        PushI        1                         
        Jump         -compare-320-join         
        Label        -compare-320-false        
        PushI        0                         
        Jump         -compare-320-join         
        Label        -compare-320-join         
        JumpTrue     -print-boolean-321-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-321-join   
        Label        -print-boolean-321-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-321-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-322-arg1         
        PushI        73                        
        Label        -compare-322-arg2         
        PushI        85                        
        PushI        28                        
        Add                                    
        Label        -compare-322-sub          
        Subtract                               
        JumpFalse    -compare-322-true         
        Jump         -compare-322-false        
        Label        -compare-322-true         
        PushI        1                         
        Jump         -compare-322-join         
        Label        -compare-322-false        
        PushI        0                         
        Jump         -compare-322-join         
        Label        -compare-322-join         
        JumpTrue     -print-boolean-323-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-323-join   
        Label        -print-boolean-323-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-323-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-324-arg1         
        PushI        4                         
        Label        -compare-324-arg2         
        PushI        64                        
        PushI        31                        
        Add                                    
        Label        -compare-324-sub          
        Subtract                               
        JumpFalse    -compare-324-true         
        Jump         -compare-324-false        
        Label        -compare-324-true         
        PushI        1                         
        Jump         -compare-324-join         
        Label        -compare-324-false        
        PushI        0                         
        Jump         -compare-324-join         
        Label        -compare-324-join         
        JumpTrue     -print-boolean-325-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-325-join   
        Label        -print-boolean-325-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-325-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-326-arg1         
        PushI        50                        
        Label        -compare-326-arg2         
        PushI        50                        
        PushI        62                        
        Add                                    
        Label        -compare-326-sub          
        Subtract                               
        JumpFalse    -compare-326-true         
        Jump         -compare-326-false        
        Label        -compare-326-true         
        PushI        1                         
        Jump         -compare-326-join         
        Label        -compare-326-false        
        PushI        0                         
        Jump         -compare-326-join         
        Label        -compare-326-join         
        JumpTrue     -print-boolean-327-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-327-join   
        Label        -print-boolean-327-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-327-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-328-arg1         
        PushI        50                        
        Label        -compare-328-arg2         
        PushI        65                        
        PushI        69                        
        Add                                    
        Label        -compare-328-sub          
        Subtract                               
        JumpFalse    -compare-328-true         
        Jump         -compare-328-false        
        Label        -compare-328-true         
        PushI        1                         
        Jump         -compare-328-join         
        Label        -compare-328-false        
        PushI        0                         
        Jump         -compare-328-join         
        Label        -compare-328-join         
        JumpTrue     -print-boolean-329-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-329-join   
        Label        -print-boolean-329-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-329-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-330-arg1         
        PushI        63                        
        Label        -compare-330-arg2         
        PushI        38                        
        PushI        25                        
        Add                                    
        Label        -compare-330-sub          
        Subtract                               
        JumpFalse    -compare-330-true         
        Jump         -compare-330-false        
        Label        -compare-330-true         
        PushI        1                         
        Jump         -compare-330-join         
        Label        -compare-330-false        
        PushI        0                         
        Jump         -compare-330-join         
        Label        -compare-330-join         
        JumpTrue     -print-boolean-331-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-331-join   
        Label        -print-boolean-331-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-331-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-332-arg1         
        PushI        93                        
        Label        -compare-332-arg2         
        PushI        28                        
        PushI        54                        
        Add                                    
        Label        -compare-332-sub          
        Subtract                               
        JumpFalse    -compare-332-true         
        Jump         -compare-332-false        
        Label        -compare-332-true         
        PushI        1                         
        Jump         -compare-332-join         
        Label        -compare-332-false        
        PushI        0                         
        Jump         -compare-332-join         
        Label        -compare-332-join         
        JumpTrue     -print-boolean-333-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-333-join   
        Label        -print-boolean-333-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-333-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-334-arg1         
        PushI        31                        
        Label        -compare-334-arg2         
        PushI        6                         
        PushI        38                        
        Add                                    
        Label        -compare-334-sub          
        Subtract                               
        JumpFalse    -compare-334-true         
        Jump         -compare-334-false        
        Label        -compare-334-true         
        PushI        1                         
        Jump         -compare-334-join         
        Label        -compare-334-false        
        PushI        0                         
        Jump         -compare-334-join         
        Label        -compare-334-join         
        JumpTrue     -print-boolean-335-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-335-join   
        Label        -print-boolean-335-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-335-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-336-arg1         
        PushI        77                        
        Label        -compare-336-arg2         
        PushI        56                        
        PushI        82                        
        Add                                    
        Label        -compare-336-sub          
        Subtract                               
        JumpFalse    -compare-336-true         
        Jump         -compare-336-false        
        Label        -compare-336-true         
        PushI        1                         
        Jump         -compare-336-join         
        Label        -compare-336-false        
        PushI        0                         
        Jump         -compare-336-join         
        Label        -compare-336-join         
        JumpTrue     -print-boolean-337-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-337-join   
        Label        -print-boolean-337-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-337-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-338-arg1         
        PushI        39                        
        Label        -compare-338-arg2         
        PushI        54                        
        PushI        17                        
        Add                                    
        Label        -compare-338-sub          
        Subtract                               
        JumpFalse    -compare-338-true         
        Jump         -compare-338-false        
        Label        -compare-338-true         
        PushI        1                         
        Jump         -compare-338-join         
        Label        -compare-338-false        
        PushI        0                         
        Jump         -compare-338-join         
        Label        -compare-338-join         
        JumpTrue     -print-boolean-339-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-339-join   
        Label        -print-boolean-339-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-339-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-340-arg1         
        PushI        48                        
        Label        -compare-340-arg2         
        PushI        40                        
        PushI        29                        
        Add                                    
        Label        -compare-340-sub          
        Subtract                               
        JumpFalse    -compare-340-true         
        Jump         -compare-340-false        
        Label        -compare-340-true         
        PushI        1                         
        Jump         -compare-340-join         
        Label        -compare-340-false        
        PushI        0                         
        Jump         -compare-340-join         
        Label        -compare-340-join         
        JumpTrue     -print-boolean-341-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-341-join   
        Label        -print-boolean-341-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-341-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-342-arg1         
        PushI        98                        
        PushI        54                        
        Add                                    
        Label        -compare-342-arg2         
        PushI        1                         
        PushI        98                        
        Add                                    
        Label        -compare-342-sub          
        Subtract                               
        JumpFalse    -compare-342-true         
        Jump         -compare-342-false        
        Label        -compare-342-true         
        PushI        1                         
        Jump         -compare-342-join         
        Label        -compare-342-false        
        PushI        0                         
        Jump         -compare-342-join         
        Label        -compare-342-join         
        JumpTrue     -print-boolean-343-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-343-join   
        Label        -print-boolean-343-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-343-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-344-arg1         
        PushI        12                        
        PushI        26                        
        Add                                    
        Label        -compare-344-arg2         
        PushI        91                        
        PushI        56                        
        Add                                    
        Label        -compare-344-sub          
        Subtract                               
        JumpFalse    -compare-344-true         
        Jump         -compare-344-false        
        Label        -compare-344-true         
        PushI        1                         
        Jump         -compare-344-join         
        Label        -compare-344-false        
        PushI        0                         
        Jump         -compare-344-join         
        Label        -compare-344-join         
        JumpTrue     -print-boolean-345-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-345-join   
        Label        -print-boolean-345-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-345-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-346-arg1         
        PushI        41                        
        PushI        88                        
        Add                                    
        Label        -compare-346-arg2         
        PushI        61                        
        PushI        5                         
        Add                                    
        Label        -compare-346-sub          
        Subtract                               
        JumpFalse    -compare-346-true         
        Jump         -compare-346-false        
        Label        -compare-346-true         
        PushI        1                         
        Jump         -compare-346-join         
        Label        -compare-346-false        
        PushI        0                         
        Jump         -compare-346-join         
        Label        -compare-346-join         
        JumpTrue     -print-boolean-347-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-347-join   
        Label        -print-boolean-347-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-347-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-348-arg1         
        PushI        45                        
        PushI        94                        
        Add                                    
        Label        -compare-348-arg2         
        PushI        56                        
        PushI        88                        
        Add                                    
        Label        -compare-348-sub          
        Subtract                               
        JumpFalse    -compare-348-true         
        Jump         -compare-348-false        
        Label        -compare-348-true         
        PushI        1                         
        Jump         -compare-348-join         
        Label        -compare-348-false        
        PushI        0                         
        Jump         -compare-348-join         
        Label        -compare-348-join         
        JumpTrue     -print-boolean-349-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-349-join   
        Label        -print-boolean-349-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-349-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-350-arg1         
        PushI        15                        
        PushI        59                        
        Add                                    
        Label        -compare-350-arg2         
        PushI        29                        
        PushI        6                         
        Add                                    
        Label        -compare-350-sub          
        Subtract                               
        JumpFalse    -compare-350-true         
        Jump         -compare-350-false        
        Label        -compare-350-true         
        PushI        1                         
        Jump         -compare-350-join         
        Label        -compare-350-false        
        PushI        0                         
        Jump         -compare-350-join         
        Label        -compare-350-join         
        JumpTrue     -print-boolean-351-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-351-join   
        Label        -print-boolean-351-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-351-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-352-arg1         
        PushI        44                        
        PushI        85                        
        Add                                    
        Label        -compare-352-arg2         
        PushI        18                        
        PushI        80                        
        Add                                    
        Label        -compare-352-sub          
        Subtract                               
        JumpFalse    -compare-352-true         
        Jump         -compare-352-false        
        Label        -compare-352-true         
        PushI        1                         
        Jump         -compare-352-join         
        Label        -compare-352-false        
        PushI        0                         
        Jump         -compare-352-join         
        Label        -compare-352-join         
        JumpTrue     -print-boolean-353-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-353-join   
        Label        -print-boolean-353-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-353-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-354-arg1         
        PushI        37                        
        PushI        52                        
        Add                                    
        Label        -compare-354-arg2         
        PushI        76                        
        PushI        41                        
        Add                                    
        Label        -compare-354-sub          
        Subtract                               
        JumpFalse    -compare-354-true         
        Jump         -compare-354-false        
        Label        -compare-354-true         
        PushI        1                         
        Jump         -compare-354-join         
        Label        -compare-354-false        
        PushI        0                         
        Jump         -compare-354-join         
        Label        -compare-354-join         
        JumpTrue     -print-boolean-355-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-355-join   
        Label        -print-boolean-355-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-355-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-356-arg1         
        PushI        49                        
        PushI        17                        
        Add                                    
        Label        -compare-356-arg2         
        PushI        68                        
        PushI        82                        
        Add                                    
        Label        -compare-356-sub          
        Subtract                               
        JumpFalse    -compare-356-true         
        Jump         -compare-356-false        
        Label        -compare-356-true         
        PushI        1                         
        Jump         -compare-356-join         
        Label        -compare-356-false        
        PushI        0                         
        Jump         -compare-356-join         
        Label        -compare-356-join         
        JumpTrue     -print-boolean-357-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-357-join   
        Label        -print-boolean-357-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-357-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-358-arg1         
        PushI        54                        
        PushI        38                        
        Add                                    
        Label        -compare-358-arg2         
        PushI        18                        
        PushI        66                        
        Add                                    
        Label        -compare-358-sub          
        Subtract                               
        JumpFalse    -compare-358-true         
        Jump         -compare-358-false        
        Label        -compare-358-true         
        PushI        1                         
        Jump         -compare-358-join         
        Label        -compare-358-false        
        PushI        0                         
        Jump         -compare-358-join         
        Label        -compare-358-join         
        JumpTrue     -print-boolean-359-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-359-join   
        Label        -print-boolean-359-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-359-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-360-arg1         
        PushI        96                        
        PushI        41                        
        Add                                    
        Label        -compare-360-arg2         
        PushI        48                        
        PushI        7                         
        Add                                    
        Label        -compare-360-sub          
        Subtract                               
        JumpFalse    -compare-360-true         
        Jump         -compare-360-false        
        Label        -compare-360-true         
        PushI        1                         
        Jump         -compare-360-join         
        Label        -compare-360-false        
        PushI        0                         
        Jump         -compare-360-join         
        Label        -compare-360-join         
        JumpTrue     -print-boolean-361-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-361-join   
        Label        -print-boolean-361-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-361-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-362-arg1         
        PushI        68                        
        PushI        60                        
        Add                                    
        Label        -compare-362-arg2         
        PushI        8                         
        PushI        93                        
        Add                                    
        Label        -compare-362-sub          
        Subtract                               
        JumpFalse    -compare-362-true         
        Jump         -compare-362-false        
        Label        -compare-362-true         
        PushI        1                         
        Jump         -compare-362-join         
        Label        -compare-362-false        
        PushI        0                         
        Jump         -compare-362-join         
        Label        -compare-362-join         
        JumpTrue     -print-boolean-363-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-363-join   
        Label        -print-boolean-363-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-363-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-364-arg1         
        PushI        32                        
        PushI        60                        
        Add                                    
        Label        -compare-364-arg2         
        PushI        84                        
        PushI        88                        
        Add                                    
        Label        -compare-364-sub          
        Subtract                               
        JumpFalse    -compare-364-true         
        Jump         -compare-364-false        
        Label        -compare-364-true         
        PushI        1                         
        Jump         -compare-364-join         
        Label        -compare-364-false        
        PushI        0                         
        Jump         -compare-364-join         
        Label        -compare-364-join         
        JumpTrue     -print-boolean-365-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-365-join   
        Label        -print-boolean-365-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-365-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
