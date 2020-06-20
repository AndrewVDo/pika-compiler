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
        PushI        60                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-91-arg1          
        PushF        3.000000                  
        Label        -compare-91-arg2          
        PushF        4.000000                  
        Label        -compare-91-sub           
        FSubtract                              
        JumpFNeg     -compare-91-true          
        Jump         -compare-91-false         
        Label        -compare-91-true          
        PushI        1                         
        Jump         -compare-91-join          
        Label        -compare-91-false         
        PushI        0                         
        Jump         -compare-91-join          
        Label        -compare-91-join          
        JumpTrue     -print-boolean-92-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-92-join    
        Label        -print-boolean-92-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-92-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-93-arg1          
        PushF        4.000000                  
        Label        -compare-93-arg2          
        PushF        4.000000                  
        Label        -compare-93-sub           
        FSubtract                              
        JumpFNeg     -compare-93-true          
        Jump         -compare-93-false         
        Label        -compare-93-true          
        PushI        1                         
        Jump         -compare-93-join          
        Label        -compare-93-false         
        PushI        0                         
        Jump         -compare-93-join          
        Label        -compare-93-join          
        JumpTrue     -print-boolean-94-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-94-join    
        Label        -print-boolean-94-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-94-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-95-arg1          
        PushF        5.000000                  
        Label        -compare-95-arg2          
        PushF        4.000000                  
        Label        -compare-95-sub           
        FSubtract                              
        JumpFNeg     -compare-95-true          
        Jump         -compare-95-false         
        Label        -compare-95-true          
        PushI        1                         
        Jump         -compare-95-join          
        Label        -compare-95-false         
        PushI        0                         
        Jump         -compare-95-join          
        Label        -compare-95-join          
        JumpTrue     -print-boolean-96-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-96-join    
        Label        -print-boolean-96-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-96-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        60                        
        PushD        $print-format-character   
        Printf                                 
        PushI        61                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-97-arg1          
        PushF        3.000000                  
        Label        -compare-97-arg2          
        PushF        4.000000                  
        Label        -compare-97-sub           
        FSubtract                              
        JumpFPos     -compare-97-false         
        Jump         -compare-97-true          
        Label        -compare-97-true          
        PushI        1                         
        Jump         -compare-97-join          
        Label        -compare-97-false         
        PushI        0                         
        Jump         -compare-97-join          
        Label        -compare-97-join          
        JumpTrue     -print-boolean-98-true    
        PushD        $boolean-false-string     
        Jump         -print-boolean-98-join    
        Label        -print-boolean-98-true    
        PushD        $boolean-true-string      
        Label        -print-boolean-98-join    
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-99-arg1          
        PushF        4.000000                  
        Label        -compare-99-arg2          
        PushF        4.000000                  
        Label        -compare-99-sub           
        FSubtract                              
        JumpFPos     -compare-99-false         
        Jump         -compare-99-true          
        Label        -compare-99-true          
        PushI        1                         
        Jump         -compare-99-join          
        Label        -compare-99-false         
        PushI        0                         
        Jump         -compare-99-join          
        Label        -compare-99-join          
        JumpTrue     -print-boolean-100-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-100-join   
        Label        -print-boolean-100-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-100-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-101-arg1         
        PushF        5.000000                  
        Label        -compare-101-arg2         
        PushF        4.000000                  
        Label        -compare-101-sub          
        FSubtract                              
        JumpFPos     -compare-101-false        
        Jump         -compare-101-true         
        Label        -compare-101-true         
        PushI        1                         
        Jump         -compare-101-join         
        Label        -compare-101-false        
        PushI        0                         
        Jump         -compare-101-join         
        Label        -compare-101-join         
        JumpTrue     -print-boolean-102-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-102-join   
        Label        -print-boolean-102-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-102-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        62                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-103-arg1         
        PushF        3.000000                  
        Label        -compare-103-arg2         
        PushF        4.000000                  
        Label        -compare-103-sub          
        FSubtract                              
        JumpFPos     -compare-103-true         
        Jump         -compare-103-false        
        Label        -compare-103-true         
        PushI        1                         
        Jump         -compare-103-join         
        Label        -compare-103-false        
        PushI        0                         
        Jump         -compare-103-join         
        Label        -compare-103-join         
        JumpTrue     -print-boolean-104-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-104-join   
        Label        -print-boolean-104-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-104-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-105-arg1         
        PushF        4.000000                  
        Label        -compare-105-arg2         
        PushF        4.000000                  
        Label        -compare-105-sub          
        FSubtract                              
        JumpFPos     -compare-105-true         
        Jump         -compare-105-false        
        Label        -compare-105-true         
        PushI        1                         
        Jump         -compare-105-join         
        Label        -compare-105-false        
        PushI        0                         
        Jump         -compare-105-join         
        Label        -compare-105-join         
        JumpTrue     -print-boolean-106-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-106-join   
        Label        -print-boolean-106-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-106-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-107-arg1         
        PushF        5.000000                  
        Label        -compare-107-arg2         
        PushF        4.000000                  
        Label        -compare-107-sub          
        FSubtract                              
        JumpFPos     -compare-107-true         
        Jump         -compare-107-false        
        Label        -compare-107-true         
        PushI        1                         
        Jump         -compare-107-join         
        Label        -compare-107-false        
        PushI        0                         
        Jump         -compare-107-join         
        Label        -compare-107-join         
        JumpTrue     -print-boolean-108-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-108-join   
        Label        -print-boolean-108-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-108-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        62                        
        PushD        $print-format-character   
        Printf                                 
        PushI        61                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-109-arg1         
        PushF        3.000000                  
        Label        -compare-109-arg2         
        PushF        4.000000                  
        Label        -compare-109-sub          
        FSubtract                              
        JumpFNeg     -compare-109-false        
        Jump         -compare-109-true         
        Label        -compare-109-true         
        PushI        1                         
        Jump         -compare-109-join         
        Label        -compare-109-false        
        PushI        0                         
        Jump         -compare-109-join         
        Label        -compare-109-join         
        JumpTrue     -print-boolean-110-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-110-join   
        Label        -print-boolean-110-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-110-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-111-arg1         
        PushF        4.000000                  
        Label        -compare-111-arg2         
        PushF        4.000000                  
        Label        -compare-111-sub          
        FSubtract                              
        JumpFNeg     -compare-111-false        
        Jump         -compare-111-true         
        Label        -compare-111-true         
        PushI        1                         
        Jump         -compare-111-join         
        Label        -compare-111-false        
        PushI        0                         
        Jump         -compare-111-join         
        Label        -compare-111-join         
        JumpTrue     -print-boolean-112-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-112-join   
        Label        -print-boolean-112-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-112-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-113-arg1         
        PushF        5.000000                  
        Label        -compare-113-arg2         
        PushF        4.000000                  
        Label        -compare-113-sub          
        FSubtract                              
        JumpFNeg     -compare-113-false        
        Jump         -compare-113-true         
        Label        -compare-113-true         
        PushI        1                         
        Jump         -compare-113-join         
        Label        -compare-113-false        
        PushI        0                         
        Jump         -compare-113-join         
        Label        -compare-113-join         
        JumpTrue     -print-boolean-114-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-114-join   
        Label        -print-boolean-114-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-114-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        61                        
        PushD        $print-format-character   
        Printf                                 
        PushI        61                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-115-arg1         
        PushF        3.000000                  
        Label        -compare-115-arg2         
        PushF        4.000000                  
        Label        -compare-115-sub          
        FSubtract                              
        JumpFZero    -compare-115-true         
        Jump         -compare-115-false        
        Label        -compare-115-true         
        PushI        1                         
        Jump         -compare-115-join         
        Label        -compare-115-false        
        PushI        0                         
        Jump         -compare-115-join         
        Label        -compare-115-join         
        JumpTrue     -print-boolean-116-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-116-join   
        Label        -print-boolean-116-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-116-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-117-arg1         
        PushF        4.000000                  
        Label        -compare-117-arg2         
        PushF        4.000000                  
        Label        -compare-117-sub          
        FSubtract                              
        JumpFZero    -compare-117-true         
        Jump         -compare-117-false        
        Label        -compare-117-true         
        PushI        1                         
        Jump         -compare-117-join         
        Label        -compare-117-false        
        PushI        0                         
        Jump         -compare-117-join         
        Label        -compare-117-join         
        JumpTrue     -print-boolean-118-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-118-join   
        Label        -print-boolean-118-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-118-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-119-arg1         
        PushF        5.000000                  
        Label        -compare-119-arg2         
        PushF        4.000000                  
        Label        -compare-119-sub          
        FSubtract                              
        JumpFZero    -compare-119-true         
        Jump         -compare-119-false        
        Label        -compare-119-true         
        PushI        1                         
        Jump         -compare-119-join         
        Label        -compare-119-false        
        PushI        0                         
        Jump         -compare-119-join         
        Label        -compare-119-join         
        JumpTrue     -print-boolean-120-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-120-join   
        Label        -print-boolean-120-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-120-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        33                        
        PushD        $print-format-character   
        Printf                                 
        PushI        61                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-121-arg1         
        PushF        3.000000                  
        Label        -compare-121-arg2         
        PushF        4.000000                  
        Label        -compare-121-sub          
        FSubtract                              
        JumpFZero    -compare-121-false        
        Jump         -compare-121-true         
        Label        -compare-121-true         
        PushI        1                         
        Jump         -compare-121-join         
        Label        -compare-121-false        
        PushI        0                         
        Jump         -compare-121-join         
        Label        -compare-121-join         
        JumpTrue     -print-boolean-122-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-122-join   
        Label        -print-boolean-122-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-122-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-123-arg1         
        PushF        4.000000                  
        Label        -compare-123-arg2         
        PushF        4.000000                  
        Label        -compare-123-sub          
        FSubtract                              
        JumpFZero    -compare-123-false        
        Jump         -compare-123-true         
        Label        -compare-123-true         
        PushI        1                         
        Jump         -compare-123-join         
        Label        -compare-123-false        
        PushI        0                         
        Jump         -compare-123-join         
        Label        -compare-123-join         
        JumpTrue     -print-boolean-124-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-124-join   
        Label        -print-boolean-124-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-124-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-125-arg1         
        PushF        5.000000                  
        Label        -compare-125-arg2         
        PushF        4.000000                  
        Label        -compare-125-sub          
        FSubtract                              
        JumpFZero    -compare-125-false        
        Jump         -compare-125-true         
        Label        -compare-125-true         
        PushI        1                         
        Jump         -compare-125-join         
        Label        -compare-125-false        
        PushI        0                         
        Jump         -compare-125-join         
        Label        -compare-125-join         
        JumpTrue     -print-boolean-126-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-126-join   
        Label        -print-boolean-126-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-126-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
