// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern mscorlib { }
.assembly 'native' { }
.namespace JitTest
{
  .class private auto ansi Test extends [mscorlib]System.Object
  {
    .method private hidebysig static int32 Main() il managed
    {
		.entrypoint
		.maxstack  8
		.locals (unsigned int64 LOC)
		
		ldc.i4.0
		conv.i8
		stloc LOC
		
		ldloca LOC
		mkrefany unsigned int64
		refanyval unsigned int64
		mkrefany unsigned int64
		pop
		
		ldc.i4 100
		ret
    } // end of method Test::Main

    .method public hidebysig specialname rtspecialname instance void .ctor() il managed
    {
		.maxstack  8
		ldarg.0
		call       instance void [mscorlib]System.Object::.ctor()
		ret
    } // end of method Test::.ctor

  } // end of class Test

} // end of namespace JitTest

//*********** DISASSEMBLY COMPLETE ***********************
