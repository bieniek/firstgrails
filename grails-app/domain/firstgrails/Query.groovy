package firstgrails

class Query {
	String name
	String query
	
	static belongsTo = [ QueryLibrary ] 
	
    static constraints = {
		name()
		query(maxSize:2000)
    }
	
	def String toString() {
		return name
	}
}
