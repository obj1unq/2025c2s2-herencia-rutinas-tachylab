class Rutina {
    method descanso(tiempo) {
        return 
    }
    method intensidad() {
        return
    }
    method caloriasQuemadasEn(tiempo) {
        return 100 * (tiempo - self.descanso(tiempo)) * self.intensidad()
    }

    method esRutinaTranquiPara(persona) {
        return self.caloriasQuemadasEn(persona.tiempoEjercitado()) < 500
    }
}

class Running inherits Rutina {
    var intensidad

    override method descanso(tiempo) {
        return if (tiempo > 20) {
            5
        }
        else {
            2
        }
    }
    method intensidad(_intensidad) {
        intensidad = _intensidad
    }

    override method intensidad() {
        return intensidad
    }
}

class Maraton inherits Running {

    override method caloriasQuemadasEn(tiempo) {
        return super(tiempo) * 2
    }
}

class Remo inherits Rutina {

    override method intensidad() {
        return 1.3
    }

    override method descanso(tiempo) {
        return tiempo/5
    } 
}

class RemoCompeticion inherits Remo {

    override method intensidad() {
        return 1.7
    }
    
    override method descanso(tiempo) {
        return 2.max(super(tiempo) - 3)
    }
}
