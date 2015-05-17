package core

class RendezVous {
	Date date
	Prospect prospect
	String status
	String conclusion
	Contact contact
	static belongsTo= [prospect:Prospect]
    static constraints = {
		contact nullable:true
    }
}
