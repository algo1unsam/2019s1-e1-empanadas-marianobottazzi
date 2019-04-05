object gimenez {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para 
	// modificar.
	// var property sueldo = 15000
	var sueldo = 15000
	var dinero = 0

	method sueldo() {
		return sueldo // antes decia 15000
	}

	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}

	method cobrarSueldo() {
		dinero += self.sueldo()
	}

	method gastar(_monto) {
		dinero -= _monto
	}

	method totalDeuda() {
		if (dinero > 0) return 0 else return dinero.abs()
	}

	method totalDinero() {
		if (dinero < 0) return 0 else return dinero
	}

}

object baigorria {

	var total = 0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method sueldo() {
		return cantidadEmpanadasVendidas * montoPorEmpanada
	}

	method cobrarSueldo() {
		total += self.sueldo()
	}

	method totalCobrado() = total

}

object galvan {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
	}

}

