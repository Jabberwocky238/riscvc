# UNRECOGNIZED_VERSION:      BuildAttributes {
# UNRECOGNIZED_VERSION-NEXT:   FormatVersion: 0x41
# UNRECOGNIZED_VERSION-NEXT:   Section 1 {
# UNRECOGNIZED_VERSION-NEXT:     SectionLength: 26
# UNRECOGNIZED_VERSION-NEXT:     Vendor: riscv
# UNRECOGNIZED_VERSION-NEXT:     Tag: Tag_File (0x1)
# UNRECOGNIZED_VERSION-NEXT:     Size: 16
# UNRECOGNIZED_VERSION-NEXT:     FileAttributes {
# UNRECOGNIZED_VERSION-NEXT:       Attribute {
# UNRECOGNIZED_VERSION-NEXT:         Tag: 5
# UNRECOGNIZED_VERSION-NEXT:         TagName: arch
# UNRECOGNIZED_VERSION-NEXT:         Value: rv64i99p0
# UNRECOGNIZED_VERSION-NEXT:       }
# UNRECOGNIZED_VERSION-NEXT:     }
# UNRECOGNIZED_VERSION-NEXT:   }
# UNRECOGNIZED_VERSION-NEXT: }
.section .riscv.attributes,"",@0x70000003
.byte 0x41
.long .Lend-.riscv.attributes-1
.asciz "riscv"  # vendor
.Lbegin:
.byte 1  # Tag_File
.long .Lend-.Lbegin
.byte 5  # Tag_RISCV_arch
.asciz "rv64i99p0"
.Lend:

