let formulario = document.forms.form1

formulario.addEventListener("submit", function(event){
    event.preventDefault();
    let valores
    for(let campos of formulario)
    {
        if(campos.type == "text")
            if(campos.value == "")
                alert(`Rellene el campo ${campos.name}`)
            alert(campos.value)
        if(campos.type == "radio")
            if(campos.checked)
                alert(campos.value)
    }
})