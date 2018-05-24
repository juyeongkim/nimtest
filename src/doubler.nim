# doubler.nim
import random

proc DoubleIt(x: int): int {.cdecl, exportc.} =
  x * 2

proc DoubleFloat(x: float): float {.cdecl, exportc.} =
  x * 2

proc Opposite(x: bool): bool {.exportc.} =
  case x
  of true:
    echo "this is false!"
    false
  else:
    true

proc random_number(x: int): int {.cdecl, exportc.} =
  randomize()
  rand(x)

proc Hello(): char {.cdecl, exportc.} =
  let s: char = 'x'
  let p: pointer = s.addr()
  p
