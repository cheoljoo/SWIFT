

enum Gender : Int {
    case Male = 1 , Female = 2
}
class People 
{
    var name : String = "" 
    var age : Int = 0
    {
        willSet(value)
        {
            //print("willSet",value)
            isAdult = getAdult(age)
            //print("isAdult",isAdult)
            print("change age",age,"to",value)
        }
    }
    var gender : Gender = Gender.Male
    var isAdult : Bool = false

    init(name : String , age : Int , gender : Gender)
    {
        self.name = name
        self.age = age
        self.gender = gender
        self.isAdult = getAdult(age)
    }

    func getAdult(_ age : Int) -> Bool
    {
        var ia = false
        if age > 18
        {
            ia = true
        }
        return ia
    }


}
class Student : People
{
    var id : Int = 0
    init(name : String , age : Int , gender : Gender , id : Int)
    {
        super.init(name:name,age:age,gender:gender)
        self.id = id
    }
    convenience init(name : String , gender : Gender , id : Int)
    {
        self.init(name:name,age:0,gender:gender,id:id)
    }
} 

extension Student : Hashable
{
    static func == (lhs : Student , rhs : Student) -> Bool
    {
        return lhs.id == rhs.id
    }
    func hash(intro hasher : inout Hasher)
    {
        hasher.combine(self.id)
    }
}
/*
*/

//var a = People(name :"kim",age : 20 , gender : .Female)
var s1 = Student(name :"kim",age : 20 , gender : .Female, id: 10)
var s2 = Student(name :"kim",gender : .Female, id: 10)
print(s1.isAdult)
print(s2.isAdult)
s1.age = 30

var st : Set<Student> = []
