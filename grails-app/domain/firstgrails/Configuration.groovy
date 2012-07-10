package firstgrails

class Configuration {
	String bugzillaUrl
	
    static constraints = {
		bugzillaUrl(url:true);
    }
}
