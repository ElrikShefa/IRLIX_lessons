import UIKit

//MARK: - Напишите программу для вывода первых 15 чисел последовательности Фибоначчи

extension Array where Element: BinaryInteger {

	private mutating func fibonacci(index: Int) {
		if index >= count { return }
		self[index] = self[index-1] + self[index-2]
		return fibonacci(index: index+1)
	}

	init(fibonacci count: Int) {
		self = [Element]()
		if count < 0 {
			self = [Element]()
		}
		self = [Element](repeating: 1, count: count)
		fibonacci(index: 2)
	}
}

let fibonacciSequence = [Int](fibonacci: 15)
print(fibonacciSequence)

func fibonacciSequence (n: Int) -> [Int]  {

	var fibonacciArray = [Int]()

	for n in 0...n {

		if n == 0 {
			fibonacciArray.append(0)
		}
		else if n == 1 {
			fibonacciArray.append(1)
		}
		else {
			fibonacciArray.append (fibonacciArray[n-1] + fibonacciArray[n-2] )
		}
	}
	return fibonacciArray
}

print(fibonacciSequence(n: 15))

//MARK: - Напишите программу для сортировки массива, использующую метод пузырька. Сортировка должна происходить в отдельной функции, принимающей на вход исходный массив.

func bubbleMethod(numbers: inout [Int]) -> [Int] {
	for i in 0..<numbers.count {
		let index = (numbers.count - 1) - i

		for j in 0..<index {
			let number = numbers[j]
			let nextNumber = numbers[j + 1]

			if number > nextNumber {
				numbers[j] = nextNumber
				numbers[j + 1] = number
			}
		}
	}
	return numbers
}

var bubbleArray = [1, 35, 42 ,94 , 72, 10, 3, 89, 95, 74, 11]
print(bubbleMethod(numbers: &bubbleArray))

//MARK: - Напишите программу, решающую задачу: есть входящая строка формата "abc123", где сначала идет любая последовательность букв, потом число. Необходимо получить новую строку, в конце которой будет число на единицу больше предыдущего, то есть "abc124".

let input = "fghjk549"

func increaseByOne(string: String) -> String {

	var someNumber = Int()
	var someCharacters = String()
	let range = "a"..."z"

	if var number = Int(string.components(separatedBy: CharacterSet.decimalDigits.inverted).last ?? "") {
		number += 1
		someNumber = number
	}

	for character in string {
		if range.contains(String(character)) {
			someCharacters.append(character)
		}
	}

	return someCharacters + String(someNumber)
}

print(increaseByOne(string: input))
