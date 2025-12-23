; ModuleID = ""
target triple = "unknown-unknown-unknown"
target datalayout = ""

@"cta_id_x" = common global i32 0
declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

define void @"my_kernel"()
{
entry:
  %".2" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %".2", i32* @"cta_id_x"
  ret void
}
