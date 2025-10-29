class Persona {
    var peso = 0

    method peso(_peso) {
        peso = _peso
    }
    method peso() {
        return peso
    }
    
    method tiempoEjercitado() {
        return
    }

    method caloriasPorKiloQuemado() {
        return 
    }

    method pesoPerdidoEn(rutina) {
        return rutina.caloriasQuemadasEn(self.tiempoEjercitado())/self.caloriasPorKiloQuemado()
    }

    method practicarRutina(rutina) {
        if (self.seAplicaLaRutina()) {
            peso = (peso - self.pesoPerdidoEn(rutina)).truncate(3)
        }
    }

    method seAplicaLaRutina() {
        return
    }
}

class PersonaSedentaria inherits Persona {
    const tiempoEjercitado = 0
    const caloriasPorKiloQuemado = 7000

    override method tiempoEjercitado() {
        return tiempoEjercitado
    }

    override method caloriasPorKiloQuemado() {
        return caloriasPorKiloQuemado
    }

    override method seAplicaLaRutina() {
        return peso > 50
    }
}

class PersonaAtletica {

}