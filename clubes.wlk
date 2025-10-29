import rutinas.*
import personas.*

class Club {
    const prediosDisponibles = #{}

    method prediosDisponibles() {
        return prediosDisponibles
    }
    
    method mejorPredioPara(persona) {
        return prediosDisponibles.max({predio => predio.caloriasTotalesQuemadasPor(persona)})
    }

    method prediosTranquisPara(persona) {
        return prediosDisponibles.filter({predio => predio.hayRutinaTranquiPara(persona)})
    }

    method rutinasMasExigentesPara(persona) {
        return prediosDisponibles.map({predio => predio.rutinaMasExigentePara(persona)})
    }
}

class Predio {
    const rutinasPracticables = #{}

    method rutinasPracticables() {
        return rutinasPracticables
    }

    method caloriasTotalesQuemadasPor(persona) {
        return rutinasPracticables.sum({rutina => persona.caloriasQuemadasPor(rutina)})
    }

    method esRutinaTranqui(rutina, persona) {
        return rutina.esRutinaTranquiPara(persona)
    }

    method hayRutinaTranquiPara(persona) {
        return rutinasPracticables.any({rutina => self.esRutinaTranqui(rutina, persona)})
    }

    method rutinaMasExigentePara(persona) {
        return rutinasPracticables.max({rutina => persona.caloriasQuemadasPor(rutina)})
    }
}