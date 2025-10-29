class Persona {
    var peso = 0

    method peso() {
        return peso
    }
    
    method tiempoEjercitado() {
        return
    }

    method caloriasPorKiloQuemado() {
        return 
    }

    method caloriasQuemadasPor(rutina) {
        return rutina.caloriasQuemadasEn(self.tiempoEjercitado())
    }

    method pesoPerdidoEn(rutina) {
        return rutina.caloriasQuemadasEn(self.tiempoEjercitado())/self.caloriasPorKiloQuemado()
    }

    method practicarRutina(rutina) {
        if (self.seAplicaLaRutina(rutina)) {
            peso = (peso - self.pesoPerdidoEn(rutina)).truncate(3)
        }
    }

    method seAplicaLaRutina(rutina) {
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

    override method seAplicaLaRutina(rutina) {
        return peso > 50
    }
}

class PersonaAtletica inherits Persona {
    const caloriasPorKiloQuemado = 8000

    override method tiempoEjercitado() {
        return 90
    }

    override method caloriasPorKiloQuemado() {
        return caloriasPorKiloQuemado
    }

    override method pesoPerdidoEn(rutina) {
        return super(rutina) - 1
    }

    override method seAplicaLaRutina(rutina) {
        return rutina.caloriasQuemadasEn(self.tiempoEjercitado()) > 10000
    }
}