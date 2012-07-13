package firstgrails

class QueryLibrary {
	String name
	
	static hasMany = [ queries : Query ] 

    static constraints = {
    }
}
