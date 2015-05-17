package core



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AssociationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Association.list(params), model:[associationInstanceCount: Association.count()]
    }

    def show(Association associationInstance) {
        respond associationInstance
    }

    def create() {
        respond new Association(params)
    }

    @Transactional
    def save(Association associationInstance) {
        if (associationInstance == null) {
            notFound()
            return
        }

        if (associationInstance.hasErrors()) {
            respond associationInstance.errors, view:'create'
            return
        }

        associationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'association.label', default: 'Association'), associationInstance.id])
                redirect associationInstance
            }
            '*' { respond associationInstance, [status: CREATED] }
        }
    }

    def edit(Association associationInstance) {
        respond associationInstance
    }

    @Transactional
    def update(Association associationInstance) {
        if (associationInstance == null) {
            notFound()
            return
        }

        if (associationInstance.hasErrors()) {
            respond associationInstance.errors, view:'edit'
            return
        }

        associationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Association.label', default: 'Association'), associationInstance.id])
                redirect associationInstance
            }
            '*'{ respond associationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Association associationInstance) {

        if (associationInstance == null) {
            notFound()
            return
        }

        associationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Association.label', default: 'Association'), associationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'association.label', default: 'Association'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
