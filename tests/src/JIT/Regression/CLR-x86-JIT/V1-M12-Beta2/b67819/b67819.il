// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0x8fe33afa {}
.class ILGEN_0x8fe33afa {
.field static unsigned int16[] field_0x0
.method static int32 Method_0x6c046099(int32 Arg_0x0, unsigned int64 Arg_0x1, unsigned int8 Arg_0x2, unsigned int32 Arg_0x3) {
.maxstack	7
 
 ldc.i4 255
 newarr [mscorlib]System.Int16 
 stsfld unsigned int16[] ILGEN_0x8fe33afa::field_0x0
 ldc.i8 0x34674807aa121770
 conv.ovf.u
 ldc.i4.5
 bgt.un Branch_0x2
 ldc.i8 0x86f704f8cde3b71e
 conv.ovf.i.un
 br Branch_0x3
Branch_0x2:
 ldc.i4.1
Branch_0x3:
Start_Orphan_2:
 ldsfld unsigned int16[] ILGEN_0x8fe33afa::field_0x0
 stsfld unsigned int16[] ILGEN_0x8fe33afa::field_0x0
End_Orphan_2:
 ldc.i8 0x146e6f5cf18d55f8
 conv.i2
 cgt
EOM: ret
}
.method static int32 Main() {
.entrypoint
.maxstack	20
.try {
ldc.i4 0x405da44b 
ldc.i8 0xf72ea8ff32792100 
ldc.i4 0xd2669dcf 
ldc.i4 0xfa94ea86 
call int32 ILGEN_0x8fe33afa::Method_0x6c046099(int32 Arg_0x0, unsigned int64 Arg_0x1, unsigned int8 Arg_0x2, unsigned int32 Arg_0x3)
pop
leave END
} catch [mscorlib]System.OverflowException {
pop
leave END
}
END:
ldc.i4 100
ret

}
}