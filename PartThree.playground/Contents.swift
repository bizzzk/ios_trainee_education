// 1. Написать простое замыкание в переменной myClosure, замыкание должно выводить в консоль фразу "I love Swift". Вызвать это замыкание. Далее написать функцию, которая будет запускать заданное замыкание заданное количество раз. Объявить функцию так: func repeatTask (times: Int, task: () -> Void). Функция должна запускать times раз замыкание task . Используйте эту функцию для печати «I love Swift» 10 раз.

let myClosure = {
  print("I love Swift")
}

myClosure()

func repeatTask(times: Int, task: () -> Void) {
  for _ in 0..<times {
    task()
  }
}

repeatTask(times: 10, task: myClosure)


// 2. Условия: есть начальная позиция на двумерной плоскости, можно осуществлять последовательность шагов по четырем направлениям up, down, left, right. Размерность каждого шага равна 1. Создать перечисление Directions с направлениями движения. Создать переменную location с начальными координатами (0,0), создать массив элементами которого будут направления из перечисления. Положить в этот массив следующую последовательность шагов: [.up, .up, .left, .down, .left, .down, .down, .right, .right, .down, .right]. Програмно вычислить какие будут координаты у переменной location после выполнения этой последовательности шагов.

enum Directions {
  case up
  case down
  case left
  case right
}

let location = (0, 0)
let arrayOfDirections: [Directions] =
  [.up, .up, .left, .down, .left, .down, .down, .right, .right, .down, .right]


func coordinateCalculation(of location: (Int, Int), arrayOfActions: Array<Directions>) {
  var location = location
  for direction in arrayOfActions {
    switch direction {
    case .up:
      location.1 += 1
    case .down:
      location.1 -= 1
    case .left:
      location.0 -= 1
    case .right:
      location.0 += 1
    }
  }
  print(location)
}

coordinateCalculation(of: location, arrayOfActions: arrayOfDirections)


// 3. Создать класс Rectangle с двумя неопциональными свойствами: ширина и длина. Реализовать в этом классе метод вычисляющий и выводящий в консоль периметр прямоугольника. Создать экземпляр класса и вызвать у него этот метод.

class Rectangle {
  let height: Int
  let width: Int
  
  init(height: Int, width: Int) {
    self.height = height
    self.width = width
  }
  
  func findPerimeter() {
    let perimeter = (height + width) * 2
    print(perimeter)
  }
}

let rect = Rectangle(height: 10, width: 5)
rect.findPerimeter()


// 5. Создать расширение класса Rectangle, которое будет обладать вычисляемым свойством площадь. Вывести в консоль площадь уже ранее созданного объекта.

extension Rectangle {
  var area: Int {
    get {
      return height * width
    }
  }
}

print(rect.area)
