# UNRECOGNIZED_EXT2:      BuildAttributes {
# UNRECOGNIZED_EXT2-NEXT:   FormatVersion: 0x41
# UNRECOGNIZED_EXT2-NEXT:   Section 1 {
# UNRECOGNIZED_EXT2-NEXT:     SectionLength: 36
# UNRECOGNIZED_EXT2-NEXT:     Vendor: riscv
# UNRECOGNIZED_EXT2-NEXT:     Tag: Tag_File (0x1)
# UNRECOGNIZED_EXT2-NEXT:     Size: 26
# UNRECOGNIZED_EXT2-NEXT:     FileAttributes {
# UNRECOGNIZED_EXT2-NEXT:       Attribute {
# UNRECOGNIZED_EXT2-NEXT:         Tag: 5
# UNRECOGNIZED_EXT2-NEXT:         TagName: arch
# UNRECOGNIZED_EXT2-NEXT:         Value: rv64i2p1_zmadeup1p0{{$}}
# UNRECOGNIZED_EXT2-NEXT:       }
# UNRECOGNIZED_EXT2-NEXT:     }
# UNRECOGNIZED_EXT2-NEXT:   }
# UNRECOGNIZED_EXT2-NEXT: }
.section .riscv.attributes,"",@0x70000003
.byte 0x41
.long .Lend-.riscv.attributes-1
.asciz "riscv"  # vendor
.Lbegin:
.byte 1  # Tag_File
.long .Lend-.Lbegin
.byte 5  # Tag_RISCV_arch
.asciz "rv64i2p1_zmadeup1p0"
.Lend:

