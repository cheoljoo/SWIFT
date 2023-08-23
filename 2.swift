func calculate(_ a : Int , _ b : Int , op : (Int,Int)->Int = add) -> Int
{
    return op(a,b)
}

func sub(_ a : Int , _ b : Int) -> Int
{ 
    return a - b
}
func mul(_ a : Int , _ b : Int) -> Int
{ 
    return a * b
}
func add(_ a : Int , _ b : Int) -> Int
{ 
    return a + b
}
var ret1 = calculate(10,20,op:add)
print(ret1)

var ret2 = calculate(10,20,op:sub)
var ret3 = calculate(10,20,op:mul)
