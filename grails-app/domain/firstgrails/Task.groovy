package firstgrails

import org.joda.time.*;
import org.jadira.usertype.dateandtime.joda.*

class Task {
	String name
	String bug
	String description
	Integer duration
	Date date = new Date()
	
    static constraints = {
		date(blank:false,editable:false)
		name(blank:false)
		bug()
		description(maxSize:1500)
		duration(min:0)
    }
	
	static def listWithEmpty() {
		def l = []
		Task.list().each { task ->
			l.add(task.date)
		}		
		return l
	}	
}
