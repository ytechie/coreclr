// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern mscorlib
{
}
.assembly b56174
{
}
.class public auto ansi TestClass extends ['mscorlib']System.Object
{
.field static value class [mscorlib]System.RuntimeTypeHandle args

.method public hidebysig static int32 Main(class [mscorlib]System.String[]) il managed
{
	.maxstack  8
	.entrypoint
	ldtoken int32
	stsfld value class [mscorlib]System.RuntimeTypeHandle TestClass::args
	ldc.i4 100
	ret
} // end of method

.method public hidebysig specialname rtspecialname instance void .ctor() il managed
{
  // Code size       7 (0x7)
  .maxstack  8
  IL_0000:  ldarg.0
  IL_0001:  call       instance void ['mscorlib']System.Object::.ctor()
  IL_0006:  ret
} // end of method 'Test::.ctor'

} // end of class 'Test'
