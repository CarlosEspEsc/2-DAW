const url = "https://pokeapi-serverless.vercel.app/api/pokemon"


async function muestraPokemon(){
    try{
        let promise = await fetch(url)
        if(!promise.ok)
            throw new Error("")
        let data = await promise.json()
        muestraPokemons(data.results)
    }
    catch(error){
        throw new Error(error)
    }
}


function muestraPokemons(pokemons){
    let listado = document.getElementById("listado");
    listado.innerHTML = "";
    let titulo = document.createElement("h1");
    titulo.innerHTML = "Listado de Pokémon";
    listado.append(titulo);
    let ol = document.createElement("ol")
    listado.append(ol)
    for(let pokemon of pokemons)
    {
        let li = document.createElement("li")
        ol.append(li)
        let divPokemon = document.createElement("div");
        li.append(divPokemon)
        for(let [key,value] of Object.entries(pokemon))
        {
            let p = document.createElement("p")
            divPokemon.append(p)
            p.innerHTML = `${key} : ${value}`
        }
        let botonEditar = document.createElement("button")
        botonEditar.innerText = "Editar"
        divPokemon.append(botonEditar)
        let objEditar = new EditarHandle();
        objEditar.pokemon = pokemon
        objEditar.divPokemon = divPokemon
        botonEditar.addEventListener("click", objEditar)
        let botonBorrar = document.createElement("button")
        botonBorrar.innerText = "Borrar"
        let objBorrar = new BorrarHandle();
        objBorrar.pokemon = pokemon;
        botonBorrar.addEventListener("click", objBorrar)
        
        divPokemon.append(botonBorrar)
    }
}

function BorrarHandle(){
    this.handleEvent = async (e) =>{
        e.preventDefault();
        let options = {
            method : "DELETE",
            headers : {"Content-Type" : "application/json"}
        }
        console.log(this.pokemon.id)
        let urlDelete = `${url}?id=${this.pokemon.id}`
        try{
            let promise = await fetch(urlDelete, options)
            if(!promise.ok)
                throw new Error("error en el Delete")
            muestraPokemon();
        }
        catch(error){
            throw new Error(error)
        }
    }
}

function EditarHandle(){
    this.handleEvent = async (e) =>{
        let tmpl = document.getElementById("tplFormularioPokemon").content.cloneNode(true)
        let formulario = tmpl.querySelector(".pokemon-form")
        this.divPokemon.append(formulario)
        let botonCancelar = formulario.querySelector(".btn-cancelar")
        console.log(botonCancelar)
        botonCancelar.addEventListener("click", () =>{
            muestraPokemon()
        })
        let botonEnviar = formulario.querySelector(`[type = "submit"]`)
        console.log(botonEnviar)
        formulario.addEventListener("submit", ()=>{e.preventDefault()})
        botonEnviar.addEventListener("click", async (e) => {
            e.preventDefault();
            this.pokemon.name = formulario[1].value;
            this.pokemon.type = formulario[2].value.split(",");
            this.pokemon.height = parseInt(formulario[3].value);
            this.pokemon.weight = parseInt(formulario[4].value);
            let pokemon = {"id" : this.pokemon.id, "name" : this.pokemon.name, "types" : this.pokemon.type, "height" : this.pokemon.height, "weight" : this.pokemon.weight}
            let options = {
            method : "PUT",
            headers : {"Content-Type" : "application/json"},
            body : JSON.stringify(pokemon)
            }
            try{
                console.log(pokemon)
                let promise = await fetch(`${url}?id=${pokemon.id}`, options)
                if(!promise.ok)
                    throw new Error("error al editar")
                let data = await promise.json()
                if(data)
                    muestraPokemon();
            }
            catch(error){
                throw new Error(error)
            }
        })

    }
}
function anyadePokemon(){
    let botonPromt = document.getElementById("anyadeCli")
    botonPromt.addEventListener("click", async () =>{
        let pokemon = {}
        pokemon.name = prompt("Introduzca el nombre")
        let types = prompt("Introduzca los tipos separados por comas")
        pokemon.types = types.split(",")
        pokemon.height = parseInt(prompt("Introduzca la altura"))
        pokemon.weight = parseInt(prompt("Introduzca el peso"))
        let options = {
            method : "POST",
            headers : {"Content-type" : "application/json"},
            body : JSON.stringify(pokemon)
        }
        try{
            let promise = await fetch(url, options)
            if(!promise.ok)
                throw new Error("error en post")
            let data = await promise.json();
            if(data)
                muestraPokemon();
        }
        catch(error)
        {
            throw new Error(error)
        }
    })
}

function anyadePokemonFormulario(){
    let botonAnyadirForm = document.getElementById("anyadeCliForm")
    botonAnyadirForm.addEventListener("click", () =>{
        let divListado = document.getElementById("listado")
        let tmpl = document.getElementById("tplFormularioPokemon")
        tmpl = tmpl.content.cloneNode("true");
        let formulario = tmpl.querySelector(".pokemon-form")
        divListado.append(formulario)
        console.log(formulario)
        formulario.addEventListener("submit", async function(e){
            e.preventDefault();
            let pokemon = {};
            pokemon.name = formulario[1].value;
            pokemon.types = formulario[2].value.split(",");
            pokemon.height = parseInt(formulario[3].value)
            pokemon.weight = parseInt(formulario[4].value)
            console.log(pokemon)
            let options = {
                method : "POST",
                headers : {"Content-Type" : "application/json"},
                body : JSON.stringify(pokemon)
            }
            try{
                let promise = await fetch(url, options)
                if(!promise.ok)
                    throw new Error("error con form")
                let data = await promise.json();
                muestraPokemon(); 
            }
            catch (error){
                throw new Error(error)
            }
        })
    })
}

anyadePokemonFormulario();
muestraPokemon();
anyadePokemon();