let id = (id) => document.getElementById(id);

let classes = (classes) => document.getElementsByClassName(classes);
let title = id("titulo"),
  description = id("descripcion"),
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
