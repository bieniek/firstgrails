package firstgrails

class TaskService {

    def getTaskFromDay(Date day) {
		def tasks = [] //Task.findAllByDate(day)
		def task = new Task()
		task.name = "dupa"
		tasks.add(task)
		return tasks
    }
}
