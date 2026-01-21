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
conocimientosBack.textContent = "Conocimientos de BackEnd: C#, NodeJs, ASP.Net, SQLServer"
conocimientosGenerales.textContent = "GitHub, despliegues con Docker, conocimientos básicos AWS"

divEstudios.append(estudiosInformatica)
divEstudios.append(salto)
divEstudios.append(conocimientosFront)
divEstudios.append(conocimientosBack)
divEstudios.append(conocimientosGenerales)


botonInformatica.addEventListener("click", () =>{
    divEstudios.innerHTML = ""
    // divEstudios.style.setProperty("animation", "flipOutX")
    // divEstudios.style.setProperty("animation-duration", "0.5s")
    // setTimeout(() => {
    divEstudios.append(estudiosInformatica)
    divEstudios.append(salto)
    divEstudios.append(conocimientosFront)
    divEstudios.append(conocimientosBack)
    divEstudios.append(conocimientosGenerales)
    // , 500})
})






let estudiosSanidad = document.createElement("p")
let conocimientosSanidad = document.createElement("p")
let experienciaSanidad1 = document.createElement("p")

estudiosSanidad.innerText = "Graduado en Enfermería; Universidad de Alicante 2010-2015"
conocimientosSanidad.innerText = "Licencia de operación de instalaciones radioactivas; Homologado por CSN"
experienciaSanidad1.innerText = "Experiencia de 10 años en diversos puestos dentro del Sistema Nacional de Salud "

let botonSanitario = document.getElementById("sanidad")
botonSanitario.addEventListener("click", () =>{
    divEstudios.innerHTML = ""
    // divEstudios.style.setProperty("animation", "flipOutX")
    // divEstudios.style.setProperty("animation-duration", "0.5s")
    // setTimeout(() => {
        divEstudios.append(estudiosSanidad)
        divEstudios.append(salto)
        divEstudios.append(conocimientosSanidad)
        divEstudios.append(salto)
        divEstudios.append(experienciaSanidad1)
        // , 500})}
    })





let bachiller = document.createElement("P")
let softSkill1 = document.createElement("p")
let softSkill2 = document.createElement("p")
let softSkill3 = document.createElement("p")
let softSkill4 = document.createElement("p")
bachiller.innerText =  "Bachillerato científico; I.E.S. Bahía de Babel  2006-2008"
softSkill1.innerText = "Capacidad para manejar demandas bajo situaciones de alta presión."
softSkill2.innerText = "Experiencia en la gestión de equipos de trabajo multidisciplinares."
softSkill3.innerText = "Habilidades destacadas en comunicación empática desde un enfoque holístico."
softSkill4.innerText = "Manejo y gestión de datos protegidos bajo LPD."

let botonOtros = document.getElementById("otros")
botonOtros.addEventListener("click", () =>{
    divEstudios.innerHTML = ""
    divEstudios.append(softSkill1)
    divEstudios.append(softSkill2)
    divEstudios.append(softSkill3)
    divEstudios.append(softSkill4)
} 
    // divEstudios.style.setProperty("animation", "")
    // divEstudios.style.setProperty("animation-duration", "")
    // divEstudios.style.setProperty("animation", "fadeOurRight")
    // divEstudios.style.setProperty("animation-duration", "0.5s")
    // setTimeout(() => {
        // ,500)}
)
