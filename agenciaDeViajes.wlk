class Packs {
    const duracionViaje
    const precioBase
    const beneficios
    const coordinador = ""

    method valorFinal(){
        return precioBase + beneficios.costo()
    }
    method esPremium()
}

class PacksNacionales inherits Packs {
    const provinciaDestino
    const actividadesIncluidas = []

    method provinciaDestino() = provinciaDestino

}
class PacksInternacionales inherits Packs {
    const paisDestino
    const cantidadEscalas
    const esLugarDeInteres

    override method valorFinal() {
        return super()  * 1.20
    } 
    method paisDestino() = paisDestino
    method cantidadEscalas() = cantidadEscalas
    method esLugarDeInteres() = esLugarDeInteres
}
class Coordinador{
    const viajesRealizados
    const estaMotivado
    const añosExperiencia
    var rol
    const roles = ["Guia", "AsistenteLogistico", "Acompaniante"]
    method cambiarRol(nuevoRol) {
        rol = nuevoRol
    }
}
class Beneficios {
    const tipoBeneficio = "Traslados privados"
    const costo = 0
    const vigencia = 0
    method tipoBeneficio() = tipoBeneficio
    method costo() = costo
    method vigencia() = vigencia
}