set vio [lindex [get_hw_vios -of_objects [current_hw_device]] 0]
set probe [lindex [get_hw_probes -of_objects $vio] 0]

set results {}
for {set i 0} {$i < 360} {incr i} {
    set prev [get_property INPUT_VALUE $probe]
    after 100
    refresh_hw_vio $vio
    set curr [get_property INPUT_VALUE $probe]
    while {$curr eq $prev} {
        after 50
        refresh_hw_vio $vio
        set curr [get_property INPUT_VALUE $probe]
    }

    scan $curr %i dec
    lappend results $dec
    puts "Frame $i: $dec cycles"
}

set fh [open "julia_cycle_counts.csv" w]
puts $fh "frame,cycles"
for {set i 0} {$i < [llength $results]} {incr i} {
    puts $fh "$i,[lindex $results $i]"
}
close $fh
puts "Saved to julia_cycle_counts.csv"