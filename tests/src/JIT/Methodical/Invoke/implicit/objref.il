// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.





.assembly extern mscorlib
{
                           
  
           
  
}
.assembly 'objref'// as "objref"
{

  //  .custom instance void ['mscorlib']System.Diagnostics.DebuggableAttribute::.ctor(bool,
  //                                                                                  bool) = ( 01 00 00 01 00 00 ) 
  
  
  .permission reqmin ['mscorlib']System.Security.Permissions.SecurityPermissionAttribute ( "SkipVerification" = true )
}
.module 'objref.exe'
// MVID: {4F6CDA4F-13A9-40C8-ADF8-98FBBEF21260}
.namespace JitTest
{
  .class private auto ansi Base extends ['mscorlib']System.Object
  {
    .method public hidebysig virtual instance class System.String
            ToString() il managed
    {
      // Code size       10 (0xa)
      .maxstack  1
      .locals (class System.String V_0)
      IL_0000:  ldstr      "Base class"
      IL_0005:  stloc.0
      IL_0006:  br.s       IL_0008

      IL_0008:  ldloc.0
      IL_0009:  ret
    } // end of method 'Base::ToString'

    .method public hidebysig specialname rtspecialname 
            instance void .ctor() il managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void ['mscorlib']System.Object::.ctor()
      IL_0006:  ret
    } // end of method 'Base::.ctor'

  } // end of class 'Base'

  .class private auto ansi Test extends JitTest.Base
  {
    .method public hidebysig virtual instance class System.String ToString() il managed
    {
      // Code size       10 (0xa)
      .maxstack  1
      .locals (class System.String V_0)
      IL_0000:  ldstr      "Test class"
      IL_0005:  stloc.0
      IL_0006:  br.s       IL_0008

      IL_0008:  ldloc.0
      IL_0009:  ret
    } // end of method 'Test::ToString'

    .method private hidebysig static void TestFunc1(class JitTest.Base& obj) il managed
    {
      // Code size       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldind.ref
      IL_0002:  callvirt   instance class System.String JitTest.Base::ToString()
      IL_0007:  call       void ['mscorlib']System.Console::WriteLine(class System.String)
      IL_000c:  ret
    } // end of method 'Test::TestFunc'

    .method private hidebysig static void TestFunc2(class JitTest.Test& obj) il managed
    {
      // Code size       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldind.ref
      IL_0002:  callvirt   instance class System.String JitTest.Base::ToString()
      IL_0007:  call       void ['mscorlib']System.Console::WriteLine(class System.String)
      IL_000c:  ret
    } // end of method 'Test::TestFunc'

    .method private hidebysig static int32 Main() il managed
    {
      .entrypoint
      // Code size       59 (0x3b)
      .maxstack  1
      .locals (class JitTest.Base V_0, class JitTest.Test V_1, int32 V_2)
      .try
      {
        newobj     instance void JitTest.Base::.ctor()
        stloc.0
        newobj     instance void JitTest.Test::.ctor()
        stloc.1
        
        ldloca.s   V_0
        call       void JitTest.Test::TestFunc1(class JitTest.Base&)
        ldloca.s   V_1
        call       void JitTest.Test::TestFunc1(class JitTest.Base&)
        leave.s    IL_002b
        ldloca.s   V_0
        call       void JitTest.Test::TestFunc2(class JitTest.Test&)
        ldloca.s   V_1
        call       void JitTest.Test::TestFunc2(class JitTest.Test&)
        leave.s    IL_002b

      }  // end .try
      catch ['mscorlib']System.Object 
      {
        IL_001c:  pop
        IL_001d:  ldstr      "Failed w/ exception"
        IL_0022:  call       void ['mscorlib']System.Console::WriteLine(class System.String)
        IL_0027:  ldc.i4.1
        IL_0028:  stloc.2
        IL_0029:  leave.s    IL_0039

      }  // end handler
      IL_002b:  ldstr      "Passed"
      IL_0030:  call       void ['mscorlib']System.Console::WriteLine(class System.String)
      IL_0035:  ldc.i4    0x64
      IL_0036:  stloc.2
      IL_0037:  br.s       IL_0039

      IL_0039:  ldloc.2
      IL_003a:  ret
    } // end of method 'Test::Main'

    .method public hidebysig specialname rtspecialname instance void .ctor() il managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void JitTest.Base::.ctor()
      IL_0006:  ret
    } // end of method 'Test::.ctor'

  } // end of class 'Test'

} // end of namespace 'JitTest'

//*********** DISASSEMBLY COMPLETE ***********************
