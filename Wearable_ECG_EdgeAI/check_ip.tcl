connect
targets -set -nocase -filter {name =~ "APU*"}
targets -set -nocase -filter {name =~ "*A9*#0"}
stop
puts "AP_CTRL:"
puts [mrd -value 0x40000000 1]
puts "IN_ADDR:"
puts [mrd -value 0x40000010 1]
puts "OUT_ADDR:"
puts [mrd -value 0x4000001c 1]
con
