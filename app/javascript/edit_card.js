

let id = (id) => document.getElementById(id);

let classes = (classes) => document.getElementsByClassName(classes);
let nombreDeUsuario = id("nombreDeUsuario"),
  email = id("email"),
  contrasena = id("contrasena"),
  formulario = id("formulario"),

  msjError = classes("error"),
  iconoExito = classes("success-icon"),
  failureIcon = classes("failure-icon");

  form.addEventListener("enviar", (e) => {
    e.preventDefault();
  });

  let motor = (id, serial, mensaje) => {

    if (id.value.trim() === "") {
      msjError[serial].innerHTML = mensaje;
    }

    else {
      msjError[serial].innerHTML = "";
    }
  }
