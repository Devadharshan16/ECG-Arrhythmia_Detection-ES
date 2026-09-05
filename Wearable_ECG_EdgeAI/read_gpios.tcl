connect
targets -set -nocase -filter {name =~ "APU*"}
targets -set -nocase -filter {name =~ "*A9*#0"}
stop
puts "OLED GPIO:"
puts [mrd -value 0x40020000 1]
puts "BUZZER GPIO:"
puts [mrd -value 0x40020008 1]
con
