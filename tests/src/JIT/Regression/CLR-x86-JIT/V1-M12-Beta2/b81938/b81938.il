// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern mscorlib { }
.assembly a { }
.method public static int32 main(string[] args) il managed
{
	.entrypoint
	.maxstack  8
	br.s IL_TRY
IL_FILTER:
	pop
	ldc.i4.1
	endfilter
IL_HANDLER:
	leave.s IL_END
IL_END:
	ldc.i4.s 100
	ret
IL_TRY:
	newobj instance void [mscorlib]System.Exception::.ctor()
	throw
IL_END_TRY:
	.try IL_TRY to IL_END_TRY filter IL_FILTER handler IL_HANDLER to IL_END
}
