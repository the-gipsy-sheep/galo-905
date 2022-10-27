const scrollAnimado = (elemento) => {
  const destino = document.querySelector (elemento)
  destino.scrollIntoView ({
      behavior: 'smooth'
  });
}

scrollAnimado(".navbar-lewagon")
