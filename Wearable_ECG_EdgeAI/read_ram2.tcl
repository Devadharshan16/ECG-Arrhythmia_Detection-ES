connect
targets -set -nocase -filter {name =~ "APU*"}
targets -set -nocase -filter {name =~ "*A9*#0"}
set val [mrd -value 0x0010c0e0 1]
puts "Logits: $val"
con
