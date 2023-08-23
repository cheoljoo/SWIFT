
func avG( _ args:Double...) -> Double? // ok
{
    var count:Double = 0
    var sum:Double = 0
    for e in args
    {
        sum += e
        count += 1
    }
    //print(sum,count)
    if count == 0 
    {
        return nil
    }
    return sum/count
}


if let a = avG()
{
    print(a)
} else {
    print(0)
}
if let b = avG(1.0 , 2.1)
{
    print(b)
}
