// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0x68501543 {}
.class ILGEN_0x68501543 {
.method static int32 Method_0xfcb53e4a(float32 Arg_0x4) {
.maxstack	9
 ldc.i4.3
 newarr [mscorlib]System.Int32
 ldc.i4.2
 ldelem.i4
 brtrue Branch_0x0
 ldc.i4 0xdbe32521
 conv.r8
 br Branch_0x1
Branch_0x0:
 ldarg Arg_0x4
Branch_0x1:
 conv.i4
 ret
}
.method static int32 Main() {
.entrypoint
.maxstack	20
 ldc.r4 3.3
 call int32 ILGEN_0x68501543::Method_0xfcb53e4a(float32 Arg_0x4)
 ldc.i4 3689096381
 sub
ret
}
}
