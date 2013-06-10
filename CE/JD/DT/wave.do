onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /testbench/dut_i/clk
add wave -noupdate -format Logic /testbench/dut_i/nres
add wave -noupdate -format Logic /testbench/dut_i/nld
add wave -noupdate -divider -height 50 <NULL>
add wave -noupdate -format Literal /testbench/dut_i/did
add wave -noupdate -format Logic /testbench/dut_i/err
add wave -noupdate -divider -height 50 <NULL>
add wave -noupdate -format Literal /testbench/dut_i/cnt
add wave -noupdate -format Literal /testbench/dut_i/valld
add wave -noupdate -divider -height 50 <NULL>
add wave -noupdate -format Logic /testbench/dut_i/up
add wave -noupdate -format Logic /testbench/dut_i/down
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1005 ns} 0}
configure wave -namecolwidth 163
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {976 ns} {1039 ns}
