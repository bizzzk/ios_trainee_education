// 1. Определить две константы a и b типа Double, присвоить им любые значения. Вычислить среднее значение и сохранить результат в переменную avarage.

let a = 15.0
let b = 10.0

var avarage = (a + b) / 2


// 2. Создать кортеж, и задать два любых строковых значения с названиями firstName и lastName. Далее необходимо вывести в консоль строку в формате "Full name: [firstName] [lastName]".

var collection = (firstName: "Sergey", lastName: "Deryabin")

print("Full name: \(collection.firstName) \(collection.lastName)")


// 3. Создать две опциональные переменные типа Float. Одной из них задать первоначальное значение. Написать функцию, которая принимает на вход опциональную переменную типа Float. Функция должна безопасно извлечь значение из входящей переменной. Если значение удалось получить - необходимо вывести его в консоль, если значение у переменной отсутствует вывести в консоль фразу "Variable can't be unwrapped". Вызвать функцию дважды с двумя ранее созданными переменными.

var firstOptionalVariable: Float? = 5.12345
var secondOptionalVariable: Float?

func safeUnwrapping(variable: Float?) {
  guard let variable = variable else {
    print("Variable can't be unwrapped")
    return
  }
  print(variable)
}

safeUnwrapping(variable: firstOptionalVariable)
safeUnwrapping(variable: secondOptionalVariable)


// 4. Напишите программу для вывода первых 15 чисел последовательности Фибоначчи.

var fibonacciNumbers = [0, 1]

while fibonacciNumbers.count < 15 {
  let firstNumber = fibonacciNumbers.count - 2
  let secondNumber = fibonacciNumbers.count - 1
  let nextNumber = fibonacciNumbers[firstNumber] + fibonacciNumbers[secondNumber]
  fibonacciNumbers.append(nextNumber)
}


// 5. Напишите программу для сортировки массива, использующую метод пузырька. Сортировка должна происходить в отдельной функции, принимающей на вход исходный массив.

var unsortedArray = [5, 3, 2, 9, 1, 7, 0]

func sortingNumbers(in array: Array<Int>) {
  var array = array
  
  for i in 0..<array.count {
    let index = (array.count - 1) - i
    
    for j in 0..<index {
      let firstNumber = array[j]
      let secondNumber = array[j + 1]
      
      if firstNumber > secondNumber {
        array[j] = secondNumber
        array[j + 1] = firstNumber
      }
    }
  }
}


// 6. Напишите программу, решающую задачу: есть входящая строка формата "abc123", где сначала идет любая последовательность букв, потом число. Необходимо получить новую строку, в конце которой будет число на единицу больше предыдущего, то есть "abc124".

let testString = "abc129"

func increaseInt(of string: String) -> String {
  var mainString = string
  var intString = ""
  let arrayOfNumbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  while mainString.count > 0 {
    if let lastSymbol = mainString.last {
      if arrayOfNumbers.contains(String(lastSymbol)) {
        let string = String(lastSymbol)
        intString.append(string)
        mainString = String(mainString.dropLast())
      } else {
        break
      }
    }
  }
  let newIntString = String(intString.reversed())
  guard var newInt =  Int(newIntString) else { return mainString }
  newInt = newInt + 1
  intString = String(newInt)
  return mainString + intString
}

increaseInt(of: testString)
