// console.log("prueba app")
'use strict';

import { cargarProductos, agregarProducto } from './api.js';
import { renderizarProductos } from './render.js';

document.addEventListener('DOMContentLoaded', () => {
    // TO DO: Obtener referencias a los elementos del DOM
    manejarClicBorrarLocal();
    manejarClicCargarLocal();
    manejarClicCargarProductos();
    manejarClicGuardarLocal();
});

/**
 * Maneja el evento de clic en el botón "Cargar productos API"
 * @async
 * @returns {void}
 */
async function manejarClicCargarProductos() {
    // TO DO: Implementar la función manejarClicCargarProductos
    // usuario = "juan"
    let botonCargarProductosAPI = document.getElementById("cargar-productos")
    botonCargarProductosAPI.addEventListener("click", async (e) =>{
        e.preventDefault();
        let usuario = document.getElementById("nombre-usuario").value
        let response = await cargarProductos(usuario)
        renderizarProductos(usuario, response)
    })
}


/**
 * Maneja el evento de envío del formulario para agregar un nuevo producto
 * @param {Event} event - Evento de envío del formulario
 * @returns {void}
 */
function manejarSubmitFormularioProducto(event) {

    // TO DO: Implementar la función manejarSubmitFormularioProducto
}




/**
 * Maneja el evento de clic en el botón "Guardar productos (LocalStorage)"
 * @returns {void}
 */
function manejarClicGuardarLocal() {
    // TO DO: Implementar la función manejarClicGuardarLocal
}

/**
 * Maneja el evento de clic en el botón "Cargar productos (LocalStorage)"
 * @returns {void}
 */
function manejarClicCargarLocal() {
    // TO DO: Implementar la función manejarClicCargarLocal
}

/**
 * Maneja el evento de clic en el botón "Borrar LocalStorage"
 * @returns {void}
 */
function manejarClicBorrarLocal() {
    // TO DO: Implementar la función manejarClicBorrarLocal
}

