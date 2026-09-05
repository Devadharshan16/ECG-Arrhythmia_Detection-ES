connect
targets -set -nocase -filter {name =~ "APU*"}
targets -set -nocase -filter {name =~ "*A9*#0"}
stop
puts "--- RAW RAM DUMP ---"
puts [mrd -value &output_logits 2]
con
