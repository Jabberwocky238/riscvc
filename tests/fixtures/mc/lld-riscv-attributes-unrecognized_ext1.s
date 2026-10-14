# UNRECOGNIZED_EXT1:      BuildAttributes {
# UNRECOGNIZED_EXT1-NEXT:   FormatVersion: 0x41
# UNRECOGNIZED_EXT1-NEXT:   Section 1 {
# UNRECOGNIZED_EXT1-NEXT:     SectionLength: 30
# UNRECOGNIZED_EXT1-NEXT:     Vendor: riscv
# UNRECOGNIZED_EXT1-NEXT:     Tag: Tag_File (0x1)
# UNRECOGNIZED_EXT1-NEXT:     Size: 20
# UNRECOGNIZED_EXT1-NEXT:     FileAttributes {
# UNRECOGNIZED_EXT1-NEXT:       Attribute {
# UNRECOGNIZED_EXT1-NEXT:         Tag: 5
# UNRECOGNIZED_EXT1-NEXT:         TagName: arch
# UNRECOGNIZED_EXT1-NEXT:         Value: rv64i2p1_y2p0{{$}}
# UNRECOGNIZED_EXT1-NEXT:       }
# UNRECOGNIZED_EXT1-NEXT:     }
# UNRECOGNIZED_EXT1-NEXT:   }
# UNRECOGNIZED_EXT1-NEXT: }
.section .riscv.attributes,"",@0x70000003
.byte 0x41
.long .Lend-.riscv.attributes-1
.asciz "riscv"  # vendor
.Lbegin:
.byte 1  # Tag_File
.long .Lend-.Lbegin
.byte 5  # Tag_RISCV_arch
.asciz "rv64i2p1_y2p0"
.Lend:

