connect
targets -set -nocase -filter {name =~ "APU*"}
targets -set -nocase -filter {name =~ "*A9*#0"}
puts "PC: [rrd pc]"
puts "CPSR: [rrd cpsr]"
con
