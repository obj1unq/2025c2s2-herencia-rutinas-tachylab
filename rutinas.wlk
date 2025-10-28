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
}

object running inherits Rutina {
    var intensidad = 0

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

object maraton inherits Rutina {
    method intensidad(_intensidad) {
        running.intensidad(_intensidad)
    }

    override method caloriasQuemadasEn(tiempo) {
        return running.caloriasQuemadasEn(tiempo) * 2
    }
}

object remo inherits Rutina {
    const intensidad = 1.3

    override method intensidad() {
        return intensidad
    }

    override method descanso(tiempo) {
        return tiempo/5
    } 
}

object remoCompeticion inherits Rutina {
    const intensidad = 1.7

    override method intensidad() {
        return intensidad
    }

    override method descanso(tiempo) {
        return 2.max(remo.descanso(tiempo) - 3)
    }
}
