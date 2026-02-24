let arrayClientes = []

// console.log("prueba")
function Persona(nombre, apellido, nif, edad){
    this.nombre = nombre;
    this.apellido = apellido;
    this.nif = nif;
    this.edad = edad;
    this.saludo = function(){
        console.log("hola");
    };
}
let pruebaPersona1 = new Persona("Carlos", "Espinosa", "12345678D", 35)
pruebaPersona1.saludo();
let pruebaPersona2 = new Persona("Juan", "León", "12345678F", 40)
// console.log(pruebaPersona1)

// function Cliente(persona, fechaAlta, tipoCliente){
//     Persona.call(this, persona.nombre, persona.apellido, persona.nif, persona.edad)
//     Cliente.__proto__= Persona;
//     this.Persona = persona;
//     this.Persona = persona
//     this.fechaAlta = new Date();
//     this.fechaAlta = echaAlta;
//     this.tipoCliente = tipoCliente;   
// }

class Cliente extends Persona{
    constructor(nombre, apellido, nif, edad, fechaAlta, tipoCliente){
        super(nombre, apellido, nif, edad)
        this.fechaAlta = fechaAlta;
        this.tipoCliente = tipoCliente
    }
}
let pruebaCliente1 = new Cliente(pruebaPersona1.nombre, pruebaPersona1.apellido, pruebaPersona1.nif, pruebaPersona1.edad,"10/05/1990", "Premium")
let pruebaCliente2 = new Cliente(pruebaPersona2.nombre, pruebaPersona2.apellido, pruebaPersona2.nif, pruebaPersona2.edad, "02/05/1985", "premiumPlus")
pruebaCliente1.saludo();
arrayClientes.push(pruebaCliente1)
arrayClientes.push(pruebaCliente2)
console.log(...arrayClientes)


function muestraWeb(){
let titulo = document.createElement("h1")
titulo.innerHTML = "Listado de clientes"
titulo.style.textAlign = "center"
let divPrincipal = document.createElement("div")
divPrincipal.setAttribute("id", "listado")
document.body.append(divPrincipal)
divPrincipal.append(titulo)
let ol = document.createElement("ol")
ol.setAttribute("id", "listaOrd")
divPrincipal.append(ol)
}
muestraWeb()



function mostrarClientes(arrayClientes){
for(let i = 0; i < arrayClientes.length; i++)
    {
    let li = document.createElement("li")
    li.setAttribute("id", `li${i}`)
    let ol = document.getElementById("listaOrd")
    ol.append(li)
    let divCliente = document.createElement("div")
    divCliente.setAttribute("class", "cliente")
    divCliente.setAttribute("id", `${i}`)
    li.append(divCliente)
    let nombreCompleto = document.createElement("p")
    divCliente.append(nombreCompleto)
    nombreCompleto.innerHTML = `${arrayClientes[i].nombre} ${arrayClientes[i]. apellido}`
    nombreCompleto.style.fontSize = "1.5em"
    nombreCompleto.style.fontWeight = "bold"
    for(let [key, value] of Object.entries(arrayClientes[i]))
    {
        if(key == "nombre" || key == "apellido" || key == "saludo")
        continue;
        let p = document.createElement("p")
        p.innerText = `${key} : ${value}`
        divCliente.append(p)
    }
    let botonEditar = document.createElement("button")
    botonEditar.innerText = "Editar"
    botonEditar.setAttribute("id", `bEdit${i}`)
    divCliente.append(botonEditar)
    let botonBorrar = document.createElement("button")
    botonBorrar.innerText = "Borrar"
    botonBorrar.setAttribute("id", `bBorrar${i}`)
    divCliente.append(botonBorrar)
}}

mostrarClientes(arrayClientes)

function EditarHandleFormulario(){
    this.handleEvent = function(e){
        e.preventDefault();
        
    }
}