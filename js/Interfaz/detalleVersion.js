var toggleDV_flag = 0;
$(document).on("click", ".bti_detalleVersion", function() {
    var posicion = $(".bti_detalleVersion").position();
    var $panel = $(".panelDetalleVersion");
    $panel.css({ "left": (posicion.left - 315) + "px" });
    if (toggleDV_flag == 0) {
        $panel.slideDown();
        toggleDV_flag = 1;
    } else {
        $panel.slideUp();
        toggleDV_flag = 0;
    }
});
$(document).on("click", ".cerrarDetalleVer", function() {
    $('.panelDetalleVersion').slideUp("slow");
    toggleDV_flag = 0;
});
$(document).mouseup(function(e) {
    var container = $(".panelDetalleVersion");
    var boton = $(".bti_detalleVersion");
    if (!container.is(e.target) && container.has(e.target).length === 0 && !boton.is(e.target)) {
        container.hide();
        toggleDV_flag = 0;
    }
});

var flagEstadoVersion = false;
var ocultarEstadoVersion = false;
function mostrarEstadoVersion(info, campos){
    if (info != "") {
        var div;
        div = document.getElementById("div_detalleVersionCliente");
        if (!ocultarEstadoVersion){
            div.removeAttribute("hidden");
            ocultarEstadoVersion = true;
        } else {
            div.setAttribute("hidden", "");
            ocultarEstadoVersion = false;
        }

        if (!flagEstadoVersion){
            crearElement("label", "lbl_horasDisponibles", "lbl", campos.horas, div);
            crearElement("span", null, null, ": ", div);
            crearElement("label", "v_horasDisponibles", "lbl_text", decodeUnicode(info.descripcionHorasDisponibles), div);
            crearElement("br", null, null, null, div);

            crearElement("label", "lbl_soporteActivo", "lbl", campos.soporteAcivo, div);
            crearElement("span", null, null, ": ", div);
            crearElement("label", "v_soporteActivo", "lbl_text", decodeUnicode(info.soporteActivo), div);
            crearElement("br", null, null, null, div);
            
            crearElement("label", "lbl_fechaVencimiento", "lbl", campos.fechaVencimiento, div);
            crearElement("span", null, null, ": ", div);
            crearElement("label", "v_fechaVencimiento", "lbl_text", decodeUnicode(info.fechaVencimiento), div);

            flagEstadoVersion = true;
        }
    }
}

var flagMejorasVersion = false;
var ocultarMejorasVersion = false;
function mostrarMejoras(info){
    if (info != "") {
        var div, p_text;
        div = document.getElementById("div_detalleMejoras");
        if (!ocultarMejorasVersion){
            div.removeAttribute("hidden");
            ocultarMejorasVersion = true;
        } else {
            div.setAttribute("hidden", "");
            ocultarMejorasVersion = false;
        }
        
        if (!flagMejorasVersion){
            for(i = 0; i < info.length; i++){
                p_text = "";
                for(j = 0; j < info[i].cambio.length; j++){
                    p_text += "+ " + decodeUnicode(info[i].cambio[j]) + "<br>";
                }
                crearElement("label", "lbl_version" + i, "lbl", info[i].version, div);
                crearElement("div", "v_cambios" + i, "lbl_text", p_text, div);
                crearElement("br", null, null, null, div);
            }
            flagMejorasVersion = true;
        }
    }
}

function crearElement(elem, elemId, elemClass, elemValue, elementPadre){
    elem = document.createElement(elem);
    if (elemId != null){
        elem.setAttribute("id", elemId);
    }
    if (elemClass != null){
        elem.setAttribute("class", elemClass);
    }
    if (elemValue != null){
        elem.innerHTML = elemValue;
    }
    elementPadre.appendChild(elem);
    return elem;
}

function decodeUnicode(str) {
    // Going backwards: from bytestream, to percent-encoding, to original string.
    return decodeURIComponent(atob(str).split('').map(function (c) {
      return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
    }).join(''));
  }