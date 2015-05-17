package core

class Prospect {
	String nom
	String prenom
	String adresse
	String portable 
	String fixe
	String email
	Date dateDePremierContact
	Date dateDeNaissance
	String situationfamiliale
	int nombreDenfants
	String regimeMatrimonial
	String catProfessionnelle
	String profession
	long revenuAnnuel
	long revenuDuFoyer 
	long valeurDuPatrimoine
	String formeJuridique
	String nomDeLaSociete
	String siegeSocial
	long capitalSocial
	String siret
    String  codeApe
	long cAAnnuel
	int effectif
	boolean mOrB
	String note
	boolean type
	List rendezVous
	List Contact
	List Product
	List association
	String informationsComplementaires
	static hasMany =[rendezVous:RendezVous,contacts:Contact,products:Product,associations:Association]
    static constraints = {
		portable nullable:false,blank:false
		fixe nullable:false,blank:false
		situationfamiliale inList :['divorce','marie',"separe"],blank:true
    }
}
