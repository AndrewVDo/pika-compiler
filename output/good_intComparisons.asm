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
        Label        -compare-127-arg1         
        PushI        3                         
        Label        -compare-127-arg2         
        PushI        4                         
        Label        -compare-127-sub          
        Subtract                               
        JumpNeg      -compare-127-true         
        Jump         -compare-127-false        
        Label        -compare-127-true         
        PushI        1                         
        Jump         -compare-127-join         
        Label        -compare-127-false        
        PushI        0                         
        Jump         -compare-127-join         
        Label        -compare-127-join         
        JumpTrue     -print-boolean-128-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-128-join   
        Label        -print-boolean-128-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-128-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-129-arg1         
        PushI        4                         
        Label        -compare-129-arg2         
        PushI        4                         
        Label        -compare-129-sub          
        Subtract                               
        JumpNeg      -compare-129-true         
        Jump         -compare-129-false        
        Label        -compare-129-true         
        PushI        1                         
        Jump         -compare-129-join         
        Label        -compare-129-false        
        PushI        0                         
        Jump         -compare-129-join         
        Label        -compare-129-join         
        JumpTrue     -print-boolean-130-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-130-join   
        Label        -print-boolean-130-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-130-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-131-arg1         
        PushI        5                         
        Label        -compare-131-arg2         
        PushI        4                         
        Label        -compare-131-sub          
        Subtract                               
        JumpNeg      -compare-131-true         
        Jump         -compare-131-false        
        Label        -compare-131-true         
        PushI        1                         
        Jump         -compare-131-join         
        Label        -compare-131-false        
        PushI        0                         
        Jump         -compare-131-join         
        Label        -compare-131-join         
        JumpTrue     -print-boolean-132-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-132-join   
        Label        -print-boolean-132-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-132-join   
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
        Label        -compare-133-arg1         
        PushI        3                         
        Label        -compare-133-arg2         
        PushI        4                         
        Label        -compare-133-sub          
        Subtract                               
        JumpPos      -compare-133-false        
        Jump         -compare-133-true         
        Label        -compare-133-true         
        PushI        1                         
        Jump         -compare-133-join         
        Label        -compare-133-false        
        PushI        0                         
        Jump         -compare-133-join         
        Label        -compare-133-join         
        JumpTrue     -print-boolean-134-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-134-join   
        Label        -print-boolean-134-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-134-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-135-arg1         
        PushI        4                         
        Label        -compare-135-arg2         
        PushI        4                         
        Label        -compare-135-sub          
        Subtract                               
        JumpPos      -compare-135-false        
        Jump         -compare-135-true         
        Label        -compare-135-true         
        PushI        1                         
        Jump         -compare-135-join         
        Label        -compare-135-false        
        PushI        0                         
        Jump         -compare-135-join         
        Label        -compare-135-join         
        JumpTrue     -print-boolean-136-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-136-join   
        Label        -print-boolean-136-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-136-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-137-arg1         
        PushI        5                         
        Label        -compare-137-arg2         
        PushI        4                         
        Label        -compare-137-sub          
        Subtract                               
        JumpPos      -compare-137-false        
        Jump         -compare-137-true         
        Label        -compare-137-true         
        PushI        1                         
        Jump         -compare-137-join         
        Label        -compare-137-false        
        PushI        0                         
        Jump         -compare-137-join         
        Label        -compare-137-join         
        JumpTrue     -print-boolean-138-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-138-join   
        Label        -print-boolean-138-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-138-join   
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
        Label        -compare-139-arg1         
        PushI        3                         
        Label        -compare-139-arg2         
        PushI        4                         
        Label        -compare-139-sub          
        Subtract                               
        JumpPos      -compare-139-true         
        Jump         -compare-139-false        
        Label        -compare-139-true         
        PushI        1                         
        Jump         -compare-139-join         
        Label        -compare-139-false        
        PushI        0                         
        Jump         -compare-139-join         
        Label        -compare-139-join         
        JumpTrue     -print-boolean-140-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-140-join   
        Label        -print-boolean-140-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-140-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-141-arg1         
        PushI        4                         
        Label        -compare-141-arg2         
        PushI        4                         
        Label        -compare-141-sub          
        Subtract                               
        JumpPos      -compare-141-true         
        Jump         -compare-141-false        
        Label        -compare-141-true         
        PushI        1                         
        Jump         -compare-141-join         
        Label        -compare-141-false        
        PushI        0                         
        Jump         -compare-141-join         
        Label        -compare-141-join         
        JumpTrue     -print-boolean-142-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-142-join   
        Label        -print-boolean-142-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-142-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-143-arg1         
        PushI        5                         
        Label        -compare-143-arg2         
        PushI        4                         
        Label        -compare-143-sub          
        Subtract                               
        JumpPos      -compare-143-true         
        Jump         -compare-143-false        
        Label        -compare-143-true         
        PushI        1                         
        Jump         -compare-143-join         
        Label        -compare-143-false        
        PushI        0                         
        Jump         -compare-143-join         
        Label        -compare-143-join         
        JumpTrue     -print-boolean-144-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-144-join   
        Label        -print-boolean-144-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-144-join   
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
        Label        -compare-145-arg1         
        PushI        3                         
        Label        -compare-145-arg2         
        PushI        4                         
        Label        -compare-145-sub          
        Subtract                               
        JumpNeg      -compare-145-false        
        Jump         -compare-145-true         
        Label        -compare-145-true         
        PushI        1                         
        Jump         -compare-145-join         
        Label        -compare-145-false        
        PushI        0                         
        Jump         -compare-145-join         
        Label        -compare-145-join         
        JumpTrue     -print-boolean-146-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-146-join   
        Label        -print-boolean-146-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-146-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-147-arg1         
        PushI        4                         
        Label        -compare-147-arg2         
        PushI        4                         
        Label        -compare-147-sub          
        Subtract                               
        JumpNeg      -compare-147-false        
        Jump         -compare-147-true         
        Label        -compare-147-true         
        PushI        1                         
        Jump         -compare-147-join         
        Label        -compare-147-false        
        PushI        0                         
        Jump         -compare-147-join         
        Label        -compare-147-join         
        JumpTrue     -print-boolean-148-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-148-join   
        Label        -print-boolean-148-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-148-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-149-arg1         
        PushI        5                         
        Label        -compare-149-arg2         
        PushI        4                         
        Label        -compare-149-sub          
        Subtract                               
        JumpNeg      -compare-149-false        
        Jump         -compare-149-true         
        Label        -compare-149-true         
        PushI        1                         
        Jump         -compare-149-join         
        Label        -compare-149-false        
        PushI        0                         
        Jump         -compare-149-join         
        Label        -compare-149-join         
        JumpTrue     -print-boolean-150-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-150-join   
        Label        -print-boolean-150-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-150-join   
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
        Label        -compare-151-arg1         
        PushI        3                         
        Label        -compare-151-arg2         
        PushI        4                         
        Label        -compare-151-sub          
        Subtract                               
        JumpFalse    -compare-151-true         
        Jump         -compare-151-false        
        Label        -compare-151-true         
        PushI        1                         
        Jump         -compare-151-join         
        Label        -compare-151-false        
        PushI        0                         
        Jump         -compare-151-join         
        Label        -compare-151-join         
        JumpTrue     -print-boolean-152-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-152-join   
        Label        -print-boolean-152-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-152-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-153-arg1         
        PushI        4                         
        Label        -compare-153-arg2         
        PushI        4                         
        Label        -compare-153-sub          
        Subtract                               
        JumpFalse    -compare-153-true         
        Jump         -compare-153-false        
        Label        -compare-153-true         
        PushI        1                         
        Jump         -compare-153-join         
        Label        -compare-153-false        
        PushI        0                         
        Jump         -compare-153-join         
        Label        -compare-153-join         
        JumpTrue     -print-boolean-154-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-154-join   
        Label        -print-boolean-154-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-154-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-155-arg1         
        PushI        5                         
        Label        -compare-155-arg2         
        PushI        4                         
        Label        -compare-155-sub          
        Subtract                               
        JumpFalse    -compare-155-true         
        Jump         -compare-155-false        
        Label        -compare-155-true         
        PushI        1                         
        Jump         -compare-155-join         
        Label        -compare-155-false        
        PushI        0                         
        Jump         -compare-155-join         
        Label        -compare-155-join         
        JumpTrue     -print-boolean-156-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-156-join   
        Label        -print-boolean-156-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-156-join   
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
        Label        -compare-157-arg1         
        PushI        3                         
        Label        -compare-157-arg2         
        PushI        4                         
        Label        -compare-157-sub          
        Subtract                               
        JumpFalse    -compare-157-false        
        Jump         -compare-157-true         
        Label        -compare-157-true         
        PushI        1                         
        Jump         -compare-157-join         
        Label        -compare-157-false        
        PushI        0                         
        Jump         -compare-157-join         
        Label        -compare-157-join         
        JumpTrue     -print-boolean-158-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-158-join   
        Label        -print-boolean-158-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-158-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-159-arg1         
        PushI        4                         
        Label        -compare-159-arg2         
        PushI        4                         
        Label        -compare-159-sub          
        Subtract                               
        JumpFalse    -compare-159-false        
        Jump         -compare-159-true         
        Label        -compare-159-true         
        PushI        1                         
        Jump         -compare-159-join         
        Label        -compare-159-false        
        PushI        0                         
        Jump         -compare-159-join         
        Label        -compare-159-join         
        JumpTrue     -print-boolean-160-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-160-join   
        Label        -print-boolean-160-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-160-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushI        32                        
        PushD        $print-format-character   
        Printf                                 
        PushD        $print-format-space       
        Printf                                 
        Label        -compare-161-arg1         
        PushI        5                         
        Label        -compare-161-arg2         
        PushI        4                         
        Label        -compare-161-sub          
        Subtract                               
        JumpFalse    -compare-161-false        
        Jump         -compare-161-true         
        Label        -compare-161-true         
        PushI        1                         
        Jump         -compare-161-join         
        Label        -compare-161-false        
        PushI        0                         
        Jump         -compare-161-join         
        Label        -compare-161-join         
        JumpTrue     -print-boolean-162-true   
        PushD        $boolean-false-string     
        Jump         -print-boolean-162-join   
        Label        -print-boolean-162-true   
        PushD        $boolean-true-string      
        Label        -print-boolean-162-join   
        PushD        $print-format-boolean     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        PushD        $print-format-newline     
        Printf                                 
        Halt                                   
