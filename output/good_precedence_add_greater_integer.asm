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
        Label        -compare-438-arg1         
        PushI        38                        
        PushI        26                        
        Add                                    
        Label        -compare-438-arg2         
        PushI        81                        
        Label        -compare-438-sub          
        Subtract                               
        JumpPos      -compare-438-true         
        Jump         -compare-438-false        
        Label        -compare-438-true         
        PushI        1                         
        Jump         -compare-438-join         
        Label        -compare-438-false        
        PushI        0                         
        Jump         -compare-438-join         
        Label        -compare-438-join         
        JumpTrue     -print-boolean-439-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-439-join   
        Label        -print-boolean-439-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-439-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-440-arg1         
        PushI        55                        
        PushI        43                        
        Add                                    
        Label        -compare-440-arg2         
        PushI        1                         
        Label        -compare-440-sub          
        Subtract                               
        JumpPos      -compare-440-true         
        Jump         -compare-440-false        
        Label        -compare-440-true         
        PushI        1                         
        Jump         -compare-440-join         
        Label        -compare-440-false        
        PushI        0                         
        Jump         -compare-440-join         
        Label        -compare-440-join         
        JumpTrue     -print-boolean-441-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-441-join   
        Label        -print-boolean-441-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-441-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-442-arg1         
        PushI        50                        
        PushI        10                        
        Add                                    
        Label        -compare-442-arg2         
        PushI        32                        
        Label        -compare-442-sub          
        Subtract                               
        JumpPos      -compare-442-true         
        Jump         -compare-442-false        
        Label        -compare-442-true         
        PushI        1                         
        Jump         -compare-442-join         
        Label        -compare-442-false        
        PushI        0                         
        Jump         -compare-442-join         
        Label        -compare-442-join         
        JumpTrue     -print-boolean-443-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-443-join   
        Label        -print-boolean-443-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-443-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-444-arg1         
        PushI        88                        
        PushI        66                        
        Add                                    
        Label        -compare-444-arg2         
        PushI        31                        
        Label        -compare-444-sub          
        Subtract                               
        JumpPos      -compare-444-true         
        Jump         -compare-444-false        
        Label        -compare-444-true         
        PushI        1                         
        Jump         -compare-444-join         
        Label        -compare-444-false        
        PushI        0                         
        Jump         -compare-444-join         
        Label        -compare-444-join         
        JumpTrue     -print-boolean-445-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-445-join   
        Label        -print-boolean-445-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-445-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-446-arg1         
        PushI        88                        
        PushI        19                        
        Add                                    
        Label        -compare-446-arg2         
        PushI        16                        
        Label        -compare-446-sub          
        Subtract                               
        JumpPos      -compare-446-true         
        Jump         -compare-446-false        
        Label        -compare-446-true         
        PushI        1                         
        Jump         -compare-446-join         
        Label        -compare-446-false        
        PushI        0                         
        Jump         -compare-446-join         
        Label        -compare-446-join         
        JumpTrue     -print-boolean-447-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-447-join   
        Label        -print-boolean-447-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-447-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-448-arg1         
        PushI        18                        
        PushI        40                        
        Add                                    
        Label        -compare-448-arg2         
        PushI        84                        
        Label        -compare-448-sub          
        Subtract                               
        JumpPos      -compare-448-true         
        Jump         -compare-448-false        
        Label        -compare-448-true         
        PushI        1                         
        Jump         -compare-448-join         
        Label        -compare-448-false        
        PushI        0                         
        Jump         -compare-448-join         
        Label        -compare-448-join         
        JumpTrue     -print-boolean-449-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-449-join   
        Label        -print-boolean-449-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-449-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-450-arg1         
        PushI        14                        
        PushI        64                        
        Add                                    
        Label        -compare-450-arg2         
        PushI        85                        
        Label        -compare-450-sub          
        Subtract                               
        JumpPos      -compare-450-true         
        Jump         -compare-450-false        
        Label        -compare-450-true         
        PushI        1                         
        Jump         -compare-450-join         
        Label        -compare-450-false        
        PushI        0                         
        Jump         -compare-450-join         
        Label        -compare-450-join         
        JumpTrue     -print-boolean-451-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-451-join   
        Label        -print-boolean-451-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-451-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-452-arg1         
        PushI        69                        
        PushI        91                        
        Add                                    
        Label        -compare-452-arg2         
        PushI        21                        
        Label        -compare-452-sub          
        Subtract                               
        JumpPos      -compare-452-true         
        Jump         -compare-452-false        
        Label        -compare-452-true         
        PushI        1                         
        Jump         -compare-452-join         
        Label        -compare-452-false        
        PushI        0                         
        Jump         -compare-452-join         
        Label        -compare-452-join         
        JumpTrue     -print-boolean-453-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-453-join   
        Label        -print-boolean-453-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-453-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-454-arg1         
        PushI        73                        
        PushI        10                        
        Add                                    
        Label        -compare-454-arg2         
        PushI        74                        
        Label        -compare-454-sub          
        Subtract                               
        JumpPos      -compare-454-true         
        Jump         -compare-454-false        
        Label        -compare-454-true         
        PushI        1                         
        Jump         -compare-454-join         
        Label        -compare-454-false        
        PushI        0                         
        Jump         -compare-454-join         
        Label        -compare-454-join         
        JumpTrue     -print-boolean-455-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-455-join   
        Label        -print-boolean-455-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-455-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-456-arg1         
        PushI        17                        
        PushI        36                        
        Add                                    
        Label        -compare-456-arg2         
        PushI        49                        
        Label        -compare-456-sub          
        Subtract                               
        JumpPos      -compare-456-true         
        Jump         -compare-456-false        
        Label        -compare-456-true         
        PushI        1                         
        Jump         -compare-456-join         
        Label        -compare-456-false        
        PushI        0                         
        Jump         -compare-456-join         
        Label        -compare-456-join         
        JumpTrue     -print-boolean-457-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-457-join   
        Label        -print-boolean-457-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-457-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-458-arg1         
        PushI        34                        
        PushI        13                        
        Add                                    
        Label        -compare-458-arg2         
        PushI        94                        
        Label        -compare-458-sub          
        Subtract                               
        JumpPos      -compare-458-true         
        Jump         -compare-458-false        
        Label        -compare-458-true         
        PushI        1                         
        Jump         -compare-458-join         
        Label        -compare-458-false        
        PushI        0                         
        Jump         -compare-458-join         
        Label        -compare-458-join         
        JumpTrue     -print-boolean-459-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-459-join   
        Label        -print-boolean-459-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-459-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-460-arg1         
        PushI        98                        
        PushI        67                        
        Add                                    
        Label        -compare-460-arg2         
        PushI        24                        
        Label        -compare-460-sub          
        Subtract                               
        JumpPos      -compare-460-true         
        Jump         -compare-460-false        
        Label        -compare-460-true         
        PushI        1                         
        Jump         -compare-460-join         
        Label        -compare-460-false        
        PushI        0                         
        Jump         -compare-460-join         
        Label        -compare-460-join         
        JumpTrue     -print-boolean-461-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-461-join   
        Label        -print-boolean-461-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-461-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-462-arg1         
        PushI        31                        
        Label        -compare-462-arg2         
        PushI        12                        
        PushI        88                        
        Add                                    
        Label        -compare-462-sub          
        Subtract                               
        JumpPos      -compare-462-true         
        Jump         -compare-462-false        
        Label        -compare-462-true         
        PushI        1                         
        Jump         -compare-462-join         
        Label        -compare-462-false        
        PushI        0                         
        Jump         -compare-462-join         
        Label        -compare-462-join         
        JumpTrue     -print-boolean-463-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-463-join   
        Label        -print-boolean-463-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-463-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-464-arg1         
        PushI        69                        
        Label        -compare-464-arg2         
        PushI        88                        
        PushI        94                        
        Add                                    
        Label        -compare-464-sub          
        Subtract                               
        JumpPos      -compare-464-true         
        Jump         -compare-464-false        
        Label        -compare-464-true         
        PushI        1                         
        Jump         -compare-464-join         
        Label        -compare-464-false        
        PushI        0                         
        Jump         -compare-464-join         
        Label        -compare-464-join         
        JumpTrue     -print-boolean-465-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-465-join   
        Label        -print-boolean-465-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-465-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-466-arg1         
        PushI        37                        
        Label        -compare-466-arg2         
        PushI        27                        
        PushI        66                        
        Add                                    
        Label        -compare-466-sub          
        Subtract                               
        JumpPos      -compare-466-true         
        Jump         -compare-466-false        
        Label        -compare-466-true         
        PushI        1                         
        Jump         -compare-466-join         
        Label        -compare-466-false        
        PushI        0                         
        Jump         -compare-466-join         
        Label        -compare-466-join         
        JumpTrue     -print-boolean-467-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-467-join   
        Label        -print-boolean-467-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-467-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-468-arg1         
        PushI        17                        
        Label        -compare-468-arg2         
        PushI        77                        
        PushI        11                        
        Add                                    
        Label        -compare-468-sub          
        Subtract                               
        JumpPos      -compare-468-true         
        Jump         -compare-468-false        
        Label        -compare-468-true         
        PushI        1                         
        Jump         -compare-468-join         
        Label        -compare-468-false        
        PushI        0                         
        Jump         -compare-468-join         
        Label        -compare-468-join         
        JumpTrue     -print-boolean-469-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-469-join   
        Label        -print-boolean-469-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-469-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-470-arg1         
        PushI        94                        
        Label        -compare-470-arg2         
        PushI        96                        
        PushI        37                        
        Add                                    
        Label        -compare-470-sub          
        Subtract                               
        JumpPos      -compare-470-true         
        Jump         -compare-470-false        
        Label        -compare-470-true         
        PushI        1                         
        Jump         -compare-470-join         
        Label        -compare-470-false        
        PushI        0                         
        Jump         -compare-470-join         
        Label        -compare-470-join         
        JumpTrue     -print-boolean-471-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-471-join   
        Label        -print-boolean-471-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-471-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-472-arg1         
        PushI        6                         
        Label        -compare-472-arg2         
        PushI        84                        
        PushI        52                        
        Add                                    
        Label        -compare-472-sub          
        Subtract                               
        JumpPos      -compare-472-true         
        Jump         -compare-472-false        
        Label        -compare-472-true         
        PushI        1                         
        Jump         -compare-472-join         
        Label        -compare-472-false        
        PushI        0                         
        Jump         -compare-472-join         
        Label        -compare-472-join         
        JumpTrue     -print-boolean-473-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-473-join   
        Label        -print-boolean-473-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-473-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-474-arg1         
        PushI        94                        
        Label        -compare-474-arg2         
        PushI        44                        
        PushI        60                        
        Add                                    
        Label        -compare-474-sub          
        Subtract                               
        JumpPos      -compare-474-true         
        Jump         -compare-474-false        
        Label        -compare-474-true         
        PushI        1                         
        Jump         -compare-474-join         
        Label        -compare-474-false        
        PushI        0                         
        Jump         -compare-474-join         
        Label        -compare-474-join         
        JumpTrue     -print-boolean-475-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-475-join   
        Label        -print-boolean-475-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-475-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-476-arg1         
        PushI        85                        
        Label        -compare-476-arg2         
        PushI        88                        
        PushI        92                        
        Add                                    
        Label        -compare-476-sub          
        Subtract                               
        JumpPos      -compare-476-true         
        Jump         -compare-476-false        
        Label        -compare-476-true         
        PushI        1                         
        Jump         -compare-476-join         
        Label        -compare-476-false        
        PushI        0                         
        Jump         -compare-476-join         
        Label        -compare-476-join         
        JumpTrue     -print-boolean-477-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-477-join   
        Label        -print-boolean-477-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-477-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-478-arg1         
        PushI        78                        
        Label        -compare-478-arg2         
        PushI        93                        
        PushI        16                        
        Add                                    
        Label        -compare-478-sub          
        Subtract                               
        JumpPos      -compare-478-true         
        Jump         -compare-478-false        
        Label        -compare-478-true         
        PushI        1                         
        Jump         -compare-478-join         
        Label        -compare-478-false        
        PushI        0                         
        Jump         -compare-478-join         
        Label        -compare-478-join         
        JumpTrue     -print-boolean-479-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-479-join   
        Label        -print-boolean-479-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-479-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-480-arg1         
        PushI        96                        
        Label        -compare-480-arg2         
        PushI        88                        
        PushI        66                        
        Add                                    
        Label        -compare-480-sub          
        Subtract                               
        JumpPos      -compare-480-true         
        Jump         -compare-480-false        
        Label        -compare-480-true         
        PushI        1                         
        Jump         -compare-480-join         
        Label        -compare-480-false        
        PushI        0                         
        Jump         -compare-480-join         
        Label        -compare-480-join         
        JumpTrue     -print-boolean-481-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-481-join   
        Label        -print-boolean-481-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-481-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-482-arg1         
        PushI        1                         
        Label        -compare-482-arg2         
        PushI        91                        
        PushI        95                        
        Add                                    
        Label        -compare-482-sub          
        Subtract                               
        JumpPos      -compare-482-true         
        Jump         -compare-482-false        
        Label        -compare-482-true         
        PushI        1                         
        Jump         -compare-482-join         
        Label        -compare-482-false        
        PushI        0                         
        Jump         -compare-482-join         
        Label        -compare-482-join         
        JumpTrue     -print-boolean-483-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-483-join   
        Label        -print-boolean-483-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-483-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-484-arg1         
        PushI        36                        
        Label        -compare-484-arg2         
        PushI        30                        
        PushI        87                        
        Add                                    
        Label        -compare-484-sub          
        Subtract                               
        JumpPos      -compare-484-true         
        Jump         -compare-484-false        
        Label        -compare-484-true         
        PushI        1                         
        Jump         -compare-484-join         
        Label        -compare-484-false        
        PushI        0                         
        Jump         -compare-484-join         
        Label        -compare-484-join         
        JumpTrue     -print-boolean-485-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-485-join   
        Label        -print-boolean-485-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-485-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-486-arg1         
        PushI        14                        
        PushI        50                        
        Add                                    
        Label        -compare-486-arg2         
        PushI        13                        
        PushI        76                        
        Add                                    
        Label        -compare-486-sub          
        Subtract                               
        JumpPos      -compare-486-true         
        Jump         -compare-486-false        
        Label        -compare-486-true         
        PushI        1                         
        Jump         -compare-486-join         
        Label        -compare-486-false        
        PushI        0                         
        Jump         -compare-486-join         
        Label        -compare-486-join         
        JumpTrue     -print-boolean-487-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-487-join   
        Label        -print-boolean-487-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-487-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-488-arg1         
        PushI        18                        
        PushI        27                        
        Add                                    
        Label        -compare-488-arg2         
        PushI        7                         
        PushI        20                        
        Add                                    
        Label        -compare-488-sub          
        Subtract                               
        JumpPos      -compare-488-true         
        Jump         -compare-488-false        
        Label        -compare-488-true         
        PushI        1                         
        Jump         -compare-488-join         
        Label        -compare-488-false        
        PushI        0                         
        Jump         -compare-488-join         
        Label        -compare-488-join         
        JumpTrue     -print-boolean-489-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-489-join   
        Label        -print-boolean-489-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-489-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-490-arg1         
        PushI        50                        
        PushI        65                        
        Add                                    
        Label        -compare-490-arg2         
        PushI        72                        
        PushI        62                        
        Add                                    
        Label        -compare-490-sub          
        Subtract                               
        JumpPos      -compare-490-true         
        Jump         -compare-490-false        
        Label        -compare-490-true         
        PushI        1                         
        Jump         -compare-490-join         
        Label        -compare-490-false        
        PushI        0                         
        Jump         -compare-490-join         
        Label        -compare-490-join         
        JumpTrue     -print-boolean-491-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-491-join   
        Label        -print-boolean-491-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-491-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-492-arg1         
        PushI        11                        
        PushI        20                        
        Add                                    
        Label        -compare-492-arg2         
        PushI        31                        
        PushI        56                        
        Add                                    
        Label        -compare-492-sub          
        Subtract                               
        JumpPos      -compare-492-true         
        Jump         -compare-492-false        
        Label        -compare-492-true         
        PushI        1                         
        Jump         -compare-492-join         
        Label        -compare-492-false        
        PushI        0                         
        Jump         -compare-492-join         
        Label        -compare-492-join         
        JumpTrue     -print-boolean-493-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-493-join   
        Label        -print-boolean-493-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-493-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-494-arg1         
        PushI        46                        
        PushI        71                        
        Add                                    
        Label        -compare-494-arg2         
        PushI        18                        
        PushI        93                        
        Add                                    
        Label        -compare-494-sub          
        Subtract                               
        JumpPos      -compare-494-true         
        Jump         -compare-494-false        
        Label        -compare-494-true         
        PushI        1                         
        Jump         -compare-494-join         
        Label        -compare-494-false        
        PushI        0                         
        Jump         -compare-494-join         
        Label        -compare-494-join         
        JumpTrue     -print-boolean-495-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-495-join   
        Label        -print-boolean-495-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-495-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-496-arg1         
        PushI        27                        
        PushI        88                        
        Add                                    
        Label        -compare-496-arg2         
        PushI        96                        
        PushI        21                        
        Add                                    
        Label        -compare-496-sub          
        Subtract                               
        JumpPos      -compare-496-true         
        Jump         -compare-496-false        
        Label        -compare-496-true         
        PushI        1                         
        Jump         -compare-496-join         
        Label        -compare-496-false        
        PushI        0                         
        Jump         -compare-496-join         
        Label        -compare-496-join         
        JumpTrue     -print-boolean-497-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-497-join   
        Label        -print-boolean-497-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-497-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-498-arg1         
        PushI        33                        
        PushI        92                        
        Add                                    
        Label        -compare-498-arg2         
        PushI        4                         
        PushI        77                        
        Add                                    
        Label        -compare-498-sub          
        Subtract                               
        JumpPos      -compare-498-true         
        Jump         -compare-498-false        
        Label        -compare-498-true         
        PushI        1                         
        Jump         -compare-498-join         
        Label        -compare-498-false        
        PushI        0                         
        Jump         -compare-498-join         
        Label        -compare-498-join         
        JumpTrue     -print-boolean-499-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-499-join   
        Label        -print-boolean-499-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-499-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-500-arg1         
        PushI        27                        
        PushI        88                        
        Add                                    
        Label        -compare-500-arg2         
        PushI        28                        
        PushI        39                        
        Add                                    
        Label        -compare-500-sub          
        Subtract                               
        JumpPos      -compare-500-true         
        Jump         -compare-500-false        
        Label        -compare-500-true         
        PushI        1                         
        Jump         -compare-500-join         
        Label        -compare-500-false        
        PushI        0                         
        Jump         -compare-500-join         
        Label        -compare-500-join         
        JumpTrue     -print-boolean-501-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-501-join   
        Label        -print-boolean-501-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-501-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-502-arg1         
        PushI        1                         
        PushI        35                        
        Add                                    
        Label        -compare-502-arg2         
        PushI        52                        
        PushI        99                        
        Add                                    
        Label        -compare-502-sub          
        Subtract                               
        JumpPos      -compare-502-true         
        Jump         -compare-502-false        
        Label        -compare-502-true         
        PushI        1                         
        Jump         -compare-502-join         
        Label        -compare-502-false        
        PushI        0                         
        Jump         -compare-502-join         
        Label        -compare-502-join         
        JumpTrue     -print-boolean-503-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-503-join   
        Label        -print-boolean-503-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-503-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-504-arg1         
        PushI        63                        
        PushI        51                        
        Add                                    
        Label        -compare-504-arg2         
        PushI        95                        
        PushI        2                         
        Add                                    
        Label        -compare-504-sub          
        Subtract                               
        JumpPos      -compare-504-true         
        Jump         -compare-504-false        
        Label        -compare-504-true         
        PushI        1                         
        Jump         -compare-504-join         
        Label        -compare-504-false        
        PushI        0                         
        Jump         -compare-504-join         
        Label        -compare-504-join         
        JumpTrue     -print-boolean-505-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-505-join   
        Label        -print-boolean-505-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-505-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-506-arg1         
        PushI        35                        
        PushI        95                        
        Add                                    
        Label        -compare-506-arg2         
        PushI        66                        
        PushI        68                        
        Add                                    
        Label        -compare-506-sub          
        Subtract                               
        JumpPos      -compare-506-true         
        Jump         -compare-506-false        
        Label        -compare-506-true         
        PushI        1                         
        Jump         -compare-506-join         
        Label        -compare-506-false        
        PushI        0                         
        Jump         -compare-506-join         
        Label        -compare-506-join         
        JumpTrue     -print-boolean-507-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-507-join   
        Label        -print-boolean-507-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-507-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Label        -compare-508-arg1         
        PushI        65                        
        PushI        20                        
        Add                                    
        Label        -compare-508-arg2         
        PushI        92                        
        PushI        47                        
        Add                                    
        Label        -compare-508-sub          
        Subtract                               
        JumpPos      -compare-508-true         
        Jump         -compare-508-false        
        Label        -compare-508-true         
        PushI        1                         
        Jump         -compare-508-join         
        Label        -compare-508-false        
        PushI        0                         
        Jump         -compare-508-join         
        Label        -compare-508-join         
        JumpTrue     -print-boolean-509-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-509-join   
        Label        -print-boolean-509-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-509-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
