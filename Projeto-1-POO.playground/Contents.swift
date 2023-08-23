import UIKit

enum Priority{
	case high, medium, low
}




class Task {
	var title: String
	var priority: Priority
	var completed: Bool
	
	init(title: String, priority: Priority) {
		self.title = title
		self.priority = priority
		self.completed = false
	}
}

struct TaskManager {
	var tasks: [Task] = []
	
	mutating func addTask(_ task: Task){
		tasks.append(task)
	}
	
	mutating func completeTask(atIndex index: Int) {
		if index >= 0 && index < tasks.count {
			tasks[index].completed = true
		}
	}
	
	func listTasks() {
		for (index, task) in tasks.enumerated() {
			let status = task.completed ? "Concluída" : "Pendente"
			print("\(index + 1). \(task.title) - Prioridade: \(task.priority) - Status: \(status)")
		}
	}
	func filterTaks(byPriority priority: Priority) {
		let filteredTasks = tasks.filter{ $0.priority == priority }
		print("Tarefas com prioridade \(priority):")
		for (index,task) in filteredTasks.enumerated() {
			print("\(index + 1). \(task.title)")
		}
	}
	
}


let task1 = Task(title: "Estudar Swift na DIO", priority: .high)
let task2 = Task(title: "Estudar POO", priority: .medium)
let task3 = Task(title: "Depois dos estudos tirar Um lazer", priority: .low)

var taskManager = TaskManager()
taskManager.addTask(task1)
taskManager.addTask(task2)
taskManager.addTask(task3)

print(" ")


taskManager.completeTask(atIndex: 0)
taskManager.completeTask(atIndex: 1)
taskManager.listTasks()
print(" ")

taskManager.filterTaks(byPriority: .high)


