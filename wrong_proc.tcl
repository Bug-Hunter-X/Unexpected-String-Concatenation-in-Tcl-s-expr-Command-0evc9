proc wrong_proc {a b} {return [expr {$a + $b}]} 
proc right_proc {a b} {return [expr {double($a) + double($b)}]}