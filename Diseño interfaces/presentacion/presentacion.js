let divEstudios = document.getElementById("estudios")

let botonInformatica = document.getElementById("informatica")
let estudiosInformatica = document.createElement("p")
let conocimientosFront = document.createElement("p")
let certificadosCursos = document.createElement("p")
let conocimientosBack = document.createElement("p")
let conocimientosGenerales = document.createElement("p")
let salto = document.createElement("br")

estudiosInformatica.textContent = "Módulo Superior en Desarrollo de Aplicaciones Web; I.E.S Mare Nostrum 2023-2025"
conocimientosFront.textContent = "Conocimientos de FrontEnd: Javascript, CSS, HTML"
conocimientosBack.textContent = "Conocimientos de BackEnd: C#, NodeJs, ASP.Net, SQL y BD relacionales"
conocimientosGenerales.textContent = "GitHub, desplieques con Docker, conocimientos básicos de AWS"



botonInformatica.addEventListener("click", () =>{
    divEstudios.innerHTML = ""
    divEstudios.append(estudiosInformatica)
    divEstudios.append(salto)
    divEstudios.append(conocimientosFront)
    divEstudios.append(conocimientosBack)
    divEstudios.append(conocimientosGenerales)
})


let estudiosSanidad = document.createElement("p")
let conocimientosSanidad = document.createElement("p")
let experienciaSanidad1 = document.createElement("p")
let experienciaSanidad2 = document.createElement("p")
let experienciaSanidad3 = document.createElement("p")
let experienciaSanidad4 = document.createElement("p")
let experienciaSanidad5 = document.createElement("p")
estudiosSanidad.innerText = "Grado en Enfermería 2010-2015 Universidad de Alicante"
conocimientosSanidad.innerText = "Licencia en operación de instalaciones radioactivas; Homologado por CSN"
experienciaSanidad1.innerText = "Experiencia consolidada en diversos puestos dentro del Sistema Nacional de Salud."
experienciaSanidad2.innerText = "Capacidad para manejar situaciones bajo situaciones de alta presión."
experienciaSanidad3.innerText = "Experiencia en la gestión de equipos de trabajo multidisciplinares."
experienciaSanidad4.innerText = "Habilidades destacadas en comunicación empática desde un enfoque holístico."
experienciaSanidad5.innerText = "Manejo y gestión de datos protegidos bajo LPD."



let botonSanitario = document.getElementById("sanidad")
botonSanitario.addEventListener("click", () =>{
    divEstudios.innerHTML = ""
    divEstudios.append(estudiosSanidad)
    divEstudios.append(salto)
    divEstudios.append(conocimientosSanidad)
    divEstudios.append(salto)
    divEstudios.append(experienciaSanidad1)
    divEstudios.append(experienciaSanidad2)
    divEstudios.append(experienciaSanidad3)
    divEstudios.append(experienciaSanidad4)
})