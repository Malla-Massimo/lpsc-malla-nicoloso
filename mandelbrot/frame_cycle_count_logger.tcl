set hw_vio [get_hw_vios]
set results {}
for {set i 0} {$i < 360} {incr i} {
    # Wait for the FSM to finish a frame (probe value changes)
    set prev [get_property INPUT_VALUE [get_hw_probes probe_in0 -of $hw_vio]]
    after 100
    set curr [get_property INPUT_VALUE [get_hw_probes probe_in0 -of $hw_vio]]
    while {$curr == $prev} {
        after 50
        set curr [get_property INPUT_VALUE [get_hw_probes probe_in0 -of $hw_vio]]
    }
    lappend results $curr
    puts "Frame $i: $curr cycles"
}
# Write to CSV for Excel
set fh [open "julia_cycle_counts.csv" w]
puts $fh "frame,cycles"
for {set i 0} {$i < [llength $results]} {incr i} {
    puts $fh "$i,[lindex $results $i]"
}
close $fh
puts "Saved to julia_cycle_counts.csv"