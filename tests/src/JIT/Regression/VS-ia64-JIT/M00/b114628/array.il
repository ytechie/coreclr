// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly rem_r4{}
.class public _rem {

.method public static int32 main(class [mscorlib]System.String[]) {

	.entrypoint

	ldc.i4.1
	dup
	dup
	dup

	switch(b1,b2)

b1:
	
	switch(c1,c2)

   c1:
	call void [mscorlib]System.Console::WriteLine(int32)
	br cend
   c2:
	call void [mscorlib]System.Console::WriteLine(int32)
   cend:

	br bend
b2:
	pop
	call void [mscorlib]System.Console::WriteLine(int32)

bend:
	call void [mscorlib]System.Console::WriteLine(int32)
	ldc.i4 100
        ret


// -- End Main ----------------------
}
//
// -- EOF ---------------------------
}
// ----------------------------------

