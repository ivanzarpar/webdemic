function buscar(){

  var busqueda =document.getElementById("busqueda").value;
  var minusculas=busqueda.toLowerCase();

  var paragrafs=document.getElementsByTagName("p");


  for (var i=0;i<paragrafs.length;i++){

    var cadena = paragrafs[i].textContent.toLowerCase();
    var n =cadena.includes(minusculas);

    if ( n ){
      paragrafs[i].setAttribute("class","mostra");
    }else{paragrafs[i].setAttribute("class","oculta");
      ///mostrar siempre el pie de pagina
    paragrafs[paragrafs.length-1].setAttribute("class","mostra");
  }

  }

}
