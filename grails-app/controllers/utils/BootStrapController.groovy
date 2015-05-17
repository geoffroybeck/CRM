package utils
import java.util.Date;
import java.util.List;

import core.Prospect
class BootStrapController {

	def index() {
		println "sucedesbites"
	}
	def data(){
		Prospect prospect = new Prospect(
				nom:"truc",
				prenom:'truc',
				adresse: "adresse",
				portable:"565666777",
				fixe:"adresse",
				email:"truc",
				dateDePremierContact:new java.util.Date(),
				dateDeNaissance:new java.util.Date(),
				situationfamiliale:"marie",
				nombreDenfants:2,
				regimeMatrimonial:'truc',
				catProfessionnelle:'truc',
				profession:'truc',
				revenuAnnuel:10000,
				revenuDuFoyer:10000,
				valeurDuPatrimoine:10000,
				formeJuridique:'truc',
				nomDeLaSociete:'truc',
				siegeSocial:'truc',
				capitalSocial:10000,
				siret:'truc',
				codeApe:'truc',
				cAAnnuel:10000,
				effectif:1000,
				mOrB:true,
				note:'truc',
				type:true,
				informationsComplementaires:'truc',
				)
		if (prospect.validate()){
			println "chipolata"
			prospect.save()
		}else{
			if (prospect.hasErrors()){
			println "quoi"
				println prospect.errors
			}
		}
		return [prospect:prospect]
	}
}
