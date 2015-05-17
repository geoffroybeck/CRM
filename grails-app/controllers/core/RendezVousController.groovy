package core



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RendezVousController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RendezVous.list(params), model:[rendezVousInstanceCount: RendezVous.count()]
    }

    def show(RendezVous rendezVousInstance) {
        respond rendezVousInstance
    }

    def create() {
        respond new RendezVous(params)
    }

    @Transactional
    def save(RendezVous rendezVousInstance) {
        if (rendezVousInstance == null) {
            notFound()
            return
        }

        if (rendezVousInstance.hasErrors()) {
            respond rendezVousInstance.errors, view:'create'
            return
        }

        rendezVousInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'rendezVous.label', default: 'RendezVous'), rendezVousInstance.id])
                redirect rendezVousInstance
            }
            '*' { respond rendezVousInstance, [status: CREATED] }
        }
    }

    def edit(RendezVous rendezVousInstance) {
        respond rendezVousInstance
    }

    @Transactional
    def update(RendezVous rendezVousInstance) {
        if (rendezVousInstance == null) {
            notFound()
            return
        }

        if (rendezVousInstance.hasErrors()) {
            respond rendezVousInstance.errors, view:'edit'
            return
        }

        rendezVousInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RendezVous.label', default: 'RendezVous'), rendezVousInstance.id])
                redirect rendezVousInstance
            }
            '*'{ respond rendezVousInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RendezVous rendezVousInstance) {

        if (rendezVousInstance == null) {
            notFound()
            return
        }

        rendezVousInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RendezVous.label', default: 'RendezVous'), rendezVousInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'rendezVous.label', default: 'RendezVous'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
