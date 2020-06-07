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
        DataZ        33                        
        Label        $$main                    
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% ia
        PushI        7                         
        StoreI                                 
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% ib
        PushI        3                         
        StoreI                                 
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% fa
        PushF        2.100000                  
        StoreF                                 
        PushD        $global-memory-block      
        PushI        16                        
        Add                                    %% fb
        PushF        3.150000                  
        StoreF                                 
        PushD        $global-memory-block      
        PushI        24                        
        Add                                    %% a
        Label        -compare-1-arg1           
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% ia
        LoadI                                  
        Label        -compare-1-arg2           
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% ib
        LoadI                                  
        Label        -compare-1-sub            
        Subtract                               
        JumpNeg      -compare-1-true           
        Jump         -compare-1-false          
        Label        -compare-1-true           
        PushI        1                         
        Jump         -compare-1-join           
        Label        -compare-1-false          
        PushI        0                         
        Jump         -compare-1-join           
        Label        -compare-1-join           
        StoreC                                 
        PushD        $global-memory-block      
        PushI        25                        
        Add                                    %% b
        Label        -compare-2-arg1           
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% ia
        LoadI                                  
        Label        -compare-2-arg2           
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% ib
        LoadI                                  
        Label        -compare-2-sub            
        Subtract                               
        JumpPos      -compare-2-true           
        Jump         -compare-2-false          
        Label        -compare-2-true           
        PushI        1                         
        Jump         -compare-2-join           
        Label        -compare-2-false          
        PushI        0                         
        Jump         -compare-2-join           
        Label        -compare-2-join           
        StoreC                                 
        PushD        $global-memory-block      
        PushI        26                        
        Add                                    %% c
        Label        -compare-3-arg1           
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% ia
        LoadI                                  
        Label        -compare-3-arg2           
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% ib
        LoadI                                  
        Label        -compare-3-sub            
        Subtract                               
        JumpNeg      -compare-3-false          
        Jump         -compare-3-true           
        Label        -compare-3-true           
        PushI        1                         
        Jump         -compare-3-join           
        Label        -compare-3-false          
        PushI        0                         
        Jump         -compare-3-join           
        Label        -compare-3-join           
        StoreC                                 
        PushD        $global-memory-block      
        PushI        27                        
        Add                                    %% d
        Label        -compare-4-arg1           
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% ia
        LoadI                                  
        Label        -compare-4-arg2           
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% ib
        LoadI                                  
        Label        -compare-4-sub            
        Subtract                               
        JumpPos      -compare-4-false          
        Jump         -compare-4-true           
        Label        -compare-4-true           
        PushI        1                         
        Jump         -compare-4-join           
        Label        -compare-4-false          
        PushI        0                         
        Jump         -compare-4-join           
        Label        -compare-4-join           
        StoreC                                 
        PushD        $global-memory-block      
        PushI        28                        
        Add                                    %% e
        Label        -compare-5-arg1           
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% ia
        LoadI                                  
        Label        -compare-5-arg2           
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% ib
        LoadI                                  
        Label        -compare-5-sub            
        Subtract                               
        JumpFalse    -compare-5-true           
        Jump         -compare-5-false          
        Label        -compare-5-true           
        PushI        1                         
        Jump         -compare-5-join           
        Label        -compare-5-false          
        PushI        0                         
        Jump         -compare-5-join           
        Label        -compare-5-join           
        StoreC                                 
        PushD        $global-memory-block      
        PushI        29                        
        Add                                    %% f
        Label        -compare-6-arg1           
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% ia
        LoadI                                  
        Label        -compare-6-arg2           
        PushD        $global-memory-block      
        PushI        4                         
        Add                                    %% ib
        LoadI                                  
        Label        -compare-6-sub            
        Subtract                               
        JumpFalse    -compare-6-false          
        Jump         -compare-6-true           
        Label        -compare-6-true           
        PushI        1                         
        Jump         -compare-6-join           
        Label        -compare-6-false          
        PushI        0                         
        Jump         -compare-6-join           
        Label        -compare-6-join           
        StoreC                                 
        PushD        $global-memory-block      
        PushI        30                        
        Add                                    %% g
        Label        -compare-7-arg1           
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% ia
        LoadI                                  
        Label        -compare-7-arg2           
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% ia
        LoadI                                  
        Label        -compare-7-sub            
        Subtract                               
        JumpNeg      -compare-7-false          
        Jump         -compare-7-true           
        Label        -compare-7-true           
        PushI        1                         
        Jump         -compare-7-join           
        Label        -compare-7-false          
        PushI        0                         
        Jump         -compare-7-join           
        Label        -compare-7-join           
        StoreC                                 
        PushD        $global-memory-block      
        PushI        31                        
        Add                                    %% h
        Label        -compare-8-arg1           
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% ia
        LoadI                                  
        Label        -compare-8-arg2           
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% ia
        LoadI                                  
        Label        -compare-8-sub            
        Subtract                               
        JumpPos      -compare-8-false          
        Jump         -compare-8-true           
        Label        -compare-8-true           
        PushI        1                         
        Jump         -compare-8-join           
        Label        -compare-8-false          
        PushI        0                         
        Jump         -compare-8-join           
        Label        -compare-8-join           
        StoreC                                 
        PushD        $global-memory-block      
        PushI        32                        
        Add                                    %% i
        Label        -compare-9-arg1           
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% ia
        LoadI                                  
        Label        -compare-9-arg2           
        PushD        $global-memory-block      
        PushI        0                         
        Add                                    %% ia
        LoadI                                  
        Label        -compare-9-sub            
        Subtract                               
        JumpFalse    -compare-9-true           
        Jump         -compare-9-false          
        Label        -compare-9-true           
        PushI        1                         
        Jump         -compare-9-join           
        Label        -compare-9-false          
        PushI        0                         
        Jump         -compare-9-join           
        Label        -compare-9-join           
        StoreC                                 
        PushD        $global-memory-block      
        PushI        24                        
        Add                                    %% a
        LoadC                                  
        JumpTrue     -print-boolean-10-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-10-join    
        Label        -print-boolean-10-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-10-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        25                        
        Add                                    %% b
        LoadC                                  
        JumpTrue     -print-boolean-11-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-11-join    
        Label        -print-boolean-11-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-11-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        26                        
        Add                                    %% c
        LoadC                                  
        JumpTrue     -print-boolean-12-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-12-join    
        Label        -print-boolean-12-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-12-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        27                        
        Add                                    %% d
        LoadC                                  
        JumpTrue     -print-boolean-13-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-13-join    
        Label        -print-boolean-13-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-13-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        28                        
        Add                                    %% e
        LoadC                                  
        JumpTrue     -print-boolean-14-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-14-join    
        Label        -print-boolean-14-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-14-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        29                        
        Add                                    %% f
        LoadC                                  
        JumpTrue     -print-boolean-15-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-15-join    
        Label        -print-boolean-15-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-15-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        30                        
        Add                                    %% g
        LoadC                                  
        JumpTrue     -print-boolean-16-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-16-join    
        Label        -print-boolean-16-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-16-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        31                        
        Add                                    %% h
        LoadC                                  
        JumpTrue     -print-boolean-17-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-17-join    
        Label        -print-boolean-17-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-17-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        32                        
        Add                                    %% i
        LoadC                                  
        JumpTrue     -print-boolean-18-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-18-join    
        Label        -print-boolean-18-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-18-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $global-memory-block      
        PushI        24                        
        Add                                    %% a
        Label        -compare-19-arg1          
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% fa
        LoadF                                  
        Label        -compare-19-arg2          
        PushD        $global-memory-block      
        PushI        16                        
        Add                                    %% fb
        LoadF                                  
        Label        -compare-19-sub           
        FSubtract                              
        JumpFNeg     -compare-19-true          
        Jump         -compare-19-false         
        Label        -compare-19-true          
        PushI        1                         
        Jump         -compare-19-join          
        Label        -compare-19-false         
        PushI        0                         
        Jump         -compare-19-join          
        Label        -compare-19-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        25                        
        Add                                    %% b
        Label        -compare-20-arg1          
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% fa
        LoadF                                  
        Label        -compare-20-arg2          
        PushD        $global-memory-block      
        PushI        16                        
        Add                                    %% fb
        LoadF                                  
        Label        -compare-20-sub           
        FSubtract                              
        JumpFPos     -compare-20-true          
        Jump         -compare-20-false         
        Label        -compare-20-true          
        PushI        1                         
        Jump         -compare-20-join          
        Label        -compare-20-false         
        PushI        0                         
        Jump         -compare-20-join          
        Label        -compare-20-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        26                        
        Add                                    %% c
        Label        -compare-21-arg1          
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% fa
        LoadF                                  
        Label        -compare-21-arg2          
        PushD        $global-memory-block      
        PushI        16                        
        Add                                    %% fb
        LoadF                                  
        Label        -compare-21-sub           
        FSubtract                              
        JumpFNeg     -compare-21-false         
        Jump         -compare-21-true          
        Label        -compare-21-true          
        PushI        1                         
        Jump         -compare-21-join          
        Label        -compare-21-false         
        PushI        0                         
        Jump         -compare-21-join          
        Label        -compare-21-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        27                        
        Add                                    %% d
        Label        -compare-22-arg1          
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% fa
        LoadF                                  
        Label        -compare-22-arg2          
        PushD        $global-memory-block      
        PushI        16                        
        Add                                    %% fb
        LoadF                                  
        Label        -compare-22-sub           
        FSubtract                              
        JumpFPos     -compare-22-false         
        Jump         -compare-22-true          
        Label        -compare-22-true          
        PushI        1                         
        Jump         -compare-22-join          
        Label        -compare-22-false         
        PushI        0                         
        Jump         -compare-22-join          
        Label        -compare-22-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        28                        
        Add                                    %% e
        Label        -compare-23-arg1          
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% fa
        LoadF                                  
        Label        -compare-23-arg2          
        PushD        $global-memory-block      
        PushI        16                        
        Add                                    %% fb
        LoadF                                  
        Label        -compare-23-sub           
        FSubtract                              
        JumpFZero    -compare-23-true          
        Jump         -compare-23-false         
        Label        -compare-23-true          
        PushI        1                         
        Jump         -compare-23-join          
        Label        -compare-23-false         
        PushI        0                         
        Jump         -compare-23-join          
        Label        -compare-23-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        29                        
        Add                                    %% f
        Label        -compare-24-arg1          
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% fa
        LoadF                                  
        Label        -compare-24-arg2          
        PushD        $global-memory-block      
        PushI        16                        
        Add                                    %% fb
        LoadF                                  
        Label        -compare-24-sub           
        FSubtract                              
        JumpFZero    -compare-24-false         
        Jump         -compare-24-true          
        Label        -compare-24-true          
        PushI        1                         
        Jump         -compare-24-join          
        Label        -compare-24-false         
        PushI        0                         
        Jump         -compare-24-join          
        Label        -compare-24-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        30                        
        Add                                    %% g
        Label        -compare-25-arg1          
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% fa
        LoadF                                  
        Label        -compare-25-arg2          
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% fa
        LoadF                                  
        Label        -compare-25-sub           
        FSubtract                              
        JumpFNeg     -compare-25-false         
        Jump         -compare-25-true          
        Label        -compare-25-true          
        PushI        1                         
        Jump         -compare-25-join          
        Label        -compare-25-false         
        PushI        0                         
        Jump         -compare-25-join          
        Label        -compare-25-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        31                        
        Add                                    %% h
        Label        -compare-26-arg1          
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% fa
        LoadF                                  
        Label        -compare-26-arg2          
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% fa
        LoadF                                  
        Label        -compare-26-sub           
        FSubtract                              
        JumpFPos     -compare-26-false         
        Jump         -compare-26-true          
        Label        -compare-26-true          
        PushI        1                         
        Jump         -compare-26-join          
        Label        -compare-26-false         
        PushI        0                         
        Jump         -compare-26-join          
        Label        -compare-26-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        32                        
        Add                                    %% i
        Label        -compare-27-arg1          
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% fa
        LoadF                                  
        Label        -compare-27-arg2          
        PushD        $global-memory-block      
        PushI        8                         
        Add                                    %% fa
        LoadF                                  
        Label        -compare-27-sub           
        FSubtract                              
        JumpFZero    -compare-27-true          
        Jump         -compare-27-false         
        Label        -compare-27-true          
        PushI        1                         
        Jump         -compare-27-join          
        Label        -compare-27-false         
        PushI        0                         
        Jump         -compare-27-join          
        Label        -compare-27-join          
        StoreC                                 
        PushD        $global-memory-block      
        PushI        24                        
        Add                                    %% a
        LoadC                                  
        JumpTrue     -print-boolean-28-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-28-join    
        Label        -print-boolean-28-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-28-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        25                        
        Add                                    %% b
        LoadC                                  
        JumpTrue     -print-boolean-29-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-29-join    
        Label        -print-boolean-29-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-29-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        26                        
        Add                                    %% c
        LoadC                                  
        JumpTrue     -print-boolean-30-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-30-join    
        Label        -print-boolean-30-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-30-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        27                        
        Add                                    %% d
        LoadC                                  
        JumpTrue     -print-boolean-31-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-31-join    
        Label        -print-boolean-31-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-31-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        28                        
        Add                                    %% e
        LoadC                                  
        JumpTrue     -print-boolean-32-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-32-join    
        Label        -print-boolean-32-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-32-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        29                        
        Add                                    %% f
        LoadC                                  
        JumpTrue     -print-boolean-33-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-33-join    
        Label        -print-boolean-33-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-33-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        30                        
        Add                                    %% g
        LoadC                                  
        JumpTrue     -print-boolean-34-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-34-join    
        Label        -print-boolean-34-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-34-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        31                        
        Add                                    %% h
        LoadC                                  
        JumpTrue     -print-boolean-35-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-35-join    
        Label        -print-boolean-35-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-35-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-tab         
        Printf                                 
        PushD        $global-memory-block      
        PushI        32                        
        Add                                    %% i
        LoadC                                  
        JumpTrue     -print-boolean-36-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-36-join    
        Label        -print-boolean-36-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-36-join    
        PushD        $print-format-boolean     
        Printf                                 
        Halt                                   
