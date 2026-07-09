// let divEstudios = document.getElementById("estudios")




// let botonInformatica = document.getElementById("informatica")
// let estudiosInformatica = document.createElement("p")
// let conocimientosFront = document.createElement("p")
// let certificadosCursos = document.createElement("p")
// let conocimientosBack = document.createElement("p")
// let conocimientosGenerales = document.createElement("p")
// let salto = document.createElement("br")

// estudiosInformatica.textContent = "Módulo Superior en Desarrollo de Aplicaciones Web; I.E.S Mare Nostrum 2023-2025"
// conocimientosFront.textContent = "Conocimientos de FrontEnd: Javascript, CSS, HTML"
// conocimientosBack.textContent = "Conocimientos de BackEnd: C#, NodeJs, ASP.Net, SQLServer"
// conocimientosGenerales.textContent = "GitHub, despliegues con Docker, conocimientos básicos AWS"

// divEstudios.append(estudiosInformatica)
// divEstudios.append(salto)
// divEstudios.append(conocimientosFront)
// divEstudios.append(conocimientosBack)
// divEstudios.append(conocimientosGenerales)


// botonInformatica.addEventListener("click", () =>{
//     divEstudios.innerHTML = ""
//     // divEstudios.style.setProperty("animation", "flipOutX")
//     // divEstudios.style.setProperty("animation-duration", "0.5s")
//     // setTimeout(() => {
//     divEstudios.append(estudiosInformatica)
//     divEstudios.append(salto)
//     divEstudios.append(conocimientosFront)
//     divEstudios.append(conocimientosBack)
//     divEstudios.append(conocimientosGenerales)
//     // , 500})
// })






// let estudiosSanidad = document.createElement("p")
// let conocimientosSanidad = document.createElement("p")
// let experienciaSanidad1 = document.createElement("p")

// estudiosSanidad.innerText = "Graduado en Enfermería; Universidad de Alicante 2010-2015"
// conocimientosSanidad.innerText = "Licencia de operación de instalaciones radioactivas; Homologado por CSN"
// experienciaSanidad1.innerText = "Experiencia de 10 años en diversos puestos dentro del Sistema Nacional de Salud "

// let botonSanitario = document.getElementById("sanidad")
// botonSanitario.addEventListener("click", () =>{
//     divEstudios.innerHTML = ""
//     // divEstudios.style.setProperty("animation", "flipOutX")
//     // divEstudios.style.setProperty("animation-duration", "0.5s")
//     // setTimeout(() => {
//         divEstudios.append(estudiosSanidad)
//         divEstudios.append(salto)
//         divEstudios.append(conocimientosSanidad)
//         divEstudios.append(salto)
//         divEstudios.append(experienciaSanidad1)
//         // , 500})}
//     })





// let bachiller = document.createElement("P")
// let idioma = document.createElement("p")
// let softSkill1 = document.createElement("p")
// let softSkill2 = document.createElement("p")
// let softSkill3 = document.createElement("p")
// let softSkill4 = document.createElement("p")
// bachiller.innerText =  "Bachillerato científico; I.E.S. Bahía de Babel  2006-2008"
// idioma.innerText = "Certificado Cambridge Nivel B1 Inglés  "
// softSkill1.innerText = "Capacidad para manejar demandas bajo situaciones de alta presión."
// softSkill2.innerText = "Experiencia en el trabajo con equipos multidisciplinares."
// softSkill3.innerText = "Habilidades destacadas en comunicación empática desde un enfoque holístico."
// softSkill4.innerText = "Manejo y gestión de datos protegidos bajo LPD."

// let botonOtros = document.getElementById("btnOtros")
// botonOtros.addEventListener("click", () =>{
//     divEstudios.innerHTML = ""
//     divEstudios.append(idioma)
//     divEstudios.append(softSkill1)
//     divEstudios.append(softSkill2)
//     divEstudios.append(softSkill3)
//     divEstudios.append(softSkill4)
// } 
// )

// document.addEventListener('DOMContentLoaded', () => {
//     let fotoNav = document.getElementById("fotoNav");

//     let botonesMovil = document.querySelectorAll('.botonesNavMovilL, .botonesNavMovilR');
//     // Verificamos que fotoNav exista antes de usarlo
//     if (!fotoNav) {
//         console.error('No se encontró #fotoNav');
//         return;
//     }
// //esconder y mostrar botones en mediaQuery


// fotoNav.addEventListener('mouseenter', mostrarBotones)
// fotoNav.addEventListener('mouseleave', ocultarBotones);

// function mostrarBotones() {
//     botonesMovil.forEach(boton => {
//         boton.style.display = 'block'; 
//         boton.style.transform = 'translateX(100%)'
//     })}

// function ocultarBotones() {
//     botonesMovil.forEach(boton => {
//         boton.style.display = 'none'
//         boton.style.transform = ''
//     })}})


document.addEventListener('DOMContentLoaded', () => {
    let divEstudios = document.getElementById("estudios");

    // Crear elementos de informática
    let botonInformatica = document.getElementById("informatica");
    let estudiosInformatica = document.createElement("p");
    let conocimientosFront = document.createElement("p");
    let conocimientosBack = document.createElement("p");
    let conocimientosGenerales = document.createElement("p");
    let salto = document.createElement("br");

    estudiosInformatica.textContent = "Módulo Superior en Desarrollo de Aplicaciones Web; I.E.S Mare Nostrum 2023-2025";
    conocimientosFront.textContent = "Conocimientos de FrontEnd: Javascript, CSS, HTML";
    conocimientosBack.textContent = "Conocimientos de BackEnd: C#, NodeJs, ASP.Net, SQLServer";
    conocimientosGenerales.textContent = "GitHub, despliegues con Docker, conocimientos básicos AWS";

    divEstudios.append(estudiosInformatica, salto, conocimientosFront, conocimientosBack, conocimientosGenerales);

    botonInformatica.addEventListener("click", () => {
        divEstudios.innerHTML = "";
        divEstudios.append(estudiosInformatica, salto.cloneNode(), conocimientosFront, conocimientosBack, conocimientosGenerales);
    });

    // Crear elementos de sanidad
    let botonSanitario = document.getElementById("sanidad");
    let estudiosSanidad = document.createElement("p");
    let conocimientosSanidad = document.createElement("p");
    let experienciaSanidad1 = document.createElement("p");

    estudiosSanidad.innerText = "Graduado en Enfermería; Universidad de Alicante 2010-2015";
    conocimientosSanidad.innerText = "Licencia de operación de instalaciones radioactivas; Homologado por CSN";
    experienciaSanidad1.innerText = "Experiencia de 10 años en diversos puestos dentro del Sistema Nacional de Salud ";

    botonSanitario.addEventListener("click", () => {
        divEstudios.innerHTML = "";
        divEstudios.append(estudiosSanidad, salto.cloneNode(), conocimientosSanidad, salto.cloneNode(), experienciaSanidad1);
    });

    // Crear elementos de otros
    let botonOtros = document.getElementById("btnOtros");
    let idioma = document.createElement("p");
    let softSkill1 = document.createElement("p");
    let softSkill2 = document.createElement("p");
    let softSkill3 = document.createElement("p");
    let softSkill4 = document.createElement("p");

    idioma.innerText = "Certificado Cambridge Nivel B1 Inglés";
    softSkill1.innerText = "Capacidad para manejar demandas bajo situaciones de alta presión.";
    softSkill2.innerText = "Experiencia en el trabajo con equipos multidisciplinares.";
    softSkill3.innerText = "Habilidades destacadas en comunicación empática desde un enfoque holístico.";
    softSkill4.innerText = "Manejo y gestión de datos protegidos bajo LPD.";

    botonOtros.addEventListener("click", () => {
        divEstudios.innerHTML = "";
        divEstudios.append(idioma, softSkill1, softSkill2, softSkill3, softSkill4);
    });

    const menuContainer = document.querySelector('.menu-hover-container');
    const menuHover = document.getElementById('menuHover');
    
    // Función para detectar si es dispositivo táctil
    function isTouchDevice() {
        return (('ontouchstart' in window) ||
            (navigator.maxTouchPoints > 0) ||
            (navigator.msMaxTouchPoints > 0));
    }
    
    if (menuContainer && menuHover) {
        // Para dispositivos táctiles, usamos click en lugar de hover
        if (isTouchDevice() || window.innerWidth <= 768) {
            menuContainer.addEventListener('click', (e) => {
                e.stopPropagation();
                menuHover.classList.toggle('activo');
                
                if (menuHover.classList.contains('activo')) {
                    menuHover.style.display = 'block';
                    document.body.classList.add('menu-abierto');
                } else {
                    menuHover.style.display = 'none';
                    document.body.classList.remove('menu-abierto');
                }
            });
            
            // Cerrar menú al hacer click en un enlace
            const enlaces = menuHover.querySelectorAll('.menu-hover-item');
            enlaces.forEach(enlace => {
                enlace.addEventListener('click', () => {
                    menuHover.classList.remove('activo');
                    menuHover.style.display = 'none';
                    document.body.classList.remove('menu-abierto');
                });
            });
            
            // Cerrar menú al hacer click fuera
            document.addEventListener('click', (e) => {
                if (!menuContainer.contains(e.target) && !menuHover.contains(e.target)) {
                    menuHover.classList.remove('activo');
                    menuHover.style.display = 'none';
                    document.body.classList.remove('menu-abierto');
                }
            });
        } else {
            // Para dispositivos no táctiles, usamos hover
            menuContainer.addEventListener('mouseenter', () => {
                if (window.innerWidth <= 768) {
                    menuHover.style.display = 'block';
                }
            });
            
            menuContainer.addEventListener('mouseleave', () => {
                if (window.innerWidth <= 768) {
                    setTimeout(() => {
                        if (!menuHover.matches(':hover')) {
                            menuHover.style.display = 'none';
                        }
                    }, 200);
                }
            });
            
            menuHover.addEventListener('mouseleave', () => {
                if (window.innerWidth <= 768) {
                    menuHover.style.display = 'none';
                }
            });
        }
    }
    
    // Actualizar al cambiar tamaño de ventana
    window.addEventListener('resize', () => {
        if (window.innerWidth > 768) {
            // En escritorio, aseguramos que el menú esté oculto
            if (menuHover) {
                menuHover.style.display = 'none';
                menuHover.classList.remove('activo');
            }
            document.body.classList.remove('menu-abierto');
        }
    });
});