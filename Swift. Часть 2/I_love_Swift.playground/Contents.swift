import UIKit

//MARK: - 1. Написать простое замыкание в переменной `myClosure`, замыкание должно выводить в консоль фразу "I love Swift". Вызвать это замыкание. Далее написать функцию, которая будет запускать заданное замыкание заданное количество раз. Объявить функцию так: `func repeatTask (times: Int, task: () -> Void)`. Функция должна запускать `times` раз замыкание `task` . Используйте эту функцию для печати «I love Swift» 10 раз.

let myClosure: () -> Void = {
	print("I love Swift")
}

myClosure

func repeatTask(times: Int, task: () -> Void) {
	for _ in 0 ..< times {
		task()
	}
}

repeatTask(times: 10, task: myClosure)

//MARK: - 2. Условия: есть начальная позиция на двумерной плоскости, можно осуществлять последовательность шагов по четырем направлениям up, down, left, right. Размерность каждого шага равна 1. Создать перечисление `Directions` с направлениями движения. Создать переменную `location` с начальными координатами (0,0), создать массив элементами которого будут направления из перечисления. Положить в этот массив следующую последовательность шагов: [.up, .up, .left, .down, .left, .down, .down, .right, .right, .down, .right]. Программно вычислить какие будут координаты у переменной `location` после выполнения этой последовательности шагов.

enum Direction {
	case up
	case down
	case left
	case right
}

struct Point {
	var x: Int
	var y: Int
}

var location = Point(x: 0, y: 0)
let sequenceSteps: [Direction] = [.up, .up, .left, .down, .left, .down, .down, .right, .right, .down, .right]

func move(_ direction: Direction) {

	switch direction {
	case .up:
		location.y += 1
	case .down:
		location.y -= 1
	case .right:
		location.x += 1
	case .left:
		location.x -= 1
	}
}

func calculateDestination(_ route: [Direction]) {
	route.forEach {
		move($0)
	}
	print(location)
}

calculateDestination(sequenceSteps)

//MARK: - 3. Создать класс `Rectangle` с двумя неопциональными свойствами: ширина и длина. Реализовать в этом классе метод вычисляющий и выводящий в консоль периметр прямоугольника. Создать экземпляр класса и вызвать у него этот метод.

final class Rectangle {

	private let width: Int
	private let height: Int

	init(width: Int, height: Int) {
		self.width = width
		self.height = height
	}

	func calculatePerimeter() {
		print(2 * (self.width + self.height))
	}
}

let rectangle = Rectangle(width: 7, height: 9)
rectangle.calculatePerimeter()

//MARK: - 4. Создать расширение класса `Rectangle`, которое будет обладать вычисляемым свойством площадь. Вывести в консоль площадь уже ранее созданного объекта.

private extension Rectangle {

	var calculatedArea: Int {
		2 * (width + height)
	}
}

print(rectangle.calculatedArea)
