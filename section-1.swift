import UIKit

enum Status: Int{
    case Pending = 0
    case Doing = 1
    case Completed = 2
    
    init(){
        self = .Pending
    }
    
}

struct Task {
    var description: String
    var status: Status
    
    init(description: String, status: Status){
        self.description = description
        self.status = status
    }
}

var theTask = Task(description: "Learn Swift", status: .Pending)
var theSecondTask = Task(description: "Code Code Code", status: .Doing)


//new 

enum Day:Int{
    case Monday = 1
    case Tuesday = 2
    case Wednesday = 3
    case Thursday = 4
    case Friday = 5
    case Saturday = 6
    case Sunday = 7
    
    init(){
        self = .Monday
    }
    
    func numberOfDaysTillWeekend(day:Day) -> Int{
        return Day.Saturday.rawValue - day.rawValue
    }
}

var theDay = Day()
//one day till weekend
theDay.numberOfDaysTillWeekend(.Friday)
