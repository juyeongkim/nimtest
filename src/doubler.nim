# doubler.nim

proc DoubleIt(x: int): int {.cdecl, exportc.} =
  x * 2
