connect
targets -set -nocase -filter {name =~ "APU*"}
targets -set -nocase -filter {name =~ "*A9*#0"}
puts [state]
con
