const url = "https://pokeapi-serverless.vercel.app/api/pokemon"

async function cargarPokemons(){
    let options = {
        method : "GET"
    }
    try{
        let response = await fetch(url)
        if(!response.ok)
            console.log("error en la peticion")
        let datos = await response.json();
        console.log(datos.results)
        muestraWeb(datos.results)
    }
    catch(error){
        throw new Error(error)
    }
}
cargarPokemons()

function muestraWeb(pokemons){
    let listado = document.getElementById("listado");
    listado.innerHTML = "";
    let titulo = document.createElement("h1")
    titulo.innerText = "Listado de Pokémon"
    titulo.style.textAlign = "center"
    listado.append(titulo)
    let ol = document.createElement("ol")
    listado.append(ol)
    for(let pokemon of pokemons)
    {
        let li = muestraPokemon(pokemon)
        ol.append(li)
    }
}

function muestraPokemon(pokemon){
    let li = document.createElement("li")
    let div = document.createElement("div")
    li.append(div)
    for(let [key, value] of Object.entries(pokemon))
    {
        let p = document.createElement("p")
        p.innerText = `${key} : ${value}`
        div.append(p)
    }
    let botonEditar = document.createElement("button")
    botonEditar.innerText = "Editar"
    botonEditar.setAttribute("id", `Editar${pokemon.id}`)
    div.append(botonEditar)
    let botonBorrar = document.createElement("button")
    botonBorrar.innerText = "Borrar"
    botonBorrar.setAttribute("id", `Borrar${pokemon.id}`)
    let objBorrar = new BorrarHandle();
    botonBorrar.addEventListener("click", objBorrar)
    div.append(botonBorrar)
    return li;
}

function BorrarHandle(){
    this.handleEvent = (e) =>{
        e.preventDefault();
    }
}

function anyadePokemon(){
    let botonAnyade = document.getElementById("anyadeCli")
    botonAnyade.addEventListener("click",async function(){
        let name = prompt("Introduzca el nombre del Pokémon")
        let type = prompt("Introduzca los tipos del pokemon separados por comas")
        type = type.split(",");
        let height = prompt("Introduzca la altura del pokémon")
        let weight = prompt("introduzca el peso del pokémon")
        let pokemon = {"name" : name, "types" : type, "height" : parseInt(height), "weight" : parseInt(weight)}
        let options = {
            method : "POST",
            headers : {"Content-Type" : "application/json"},
            body : JSON.stringify(pokemon)
        }
        let promise = await fetch(`${url}`, options)
        cargarPokemons();
    })
    
}

anyadePokemon()


