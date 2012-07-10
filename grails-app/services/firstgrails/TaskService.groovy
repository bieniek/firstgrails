package firstgrails

class TaskService {

    def getTaskFromDay(Date day) {
		def tasks = Task.findAllByDate(day)
		return tasks
    }
}
