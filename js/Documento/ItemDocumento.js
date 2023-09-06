function showHide_itemsDescendientes(botontElem, idItemSelected, ocultar) {
    let gridview = document.getElementById("cph_general_grd_itemDocumento");
    let itemsSuperior = gridview.querySelectorAll(".superior");
    let idItemSuperior;
    let itemSuperiorElem;
    let numRegistro;
    let idItemDocumentoElem;
    let idBotonElem;
    let ocultarDescendientes;
    let registroVisible;
    let tieneDescendentes = false;

    idItemDocumentoElem = "cph_general_grd_itemDocumento_lbl_id_";
    idBotonElem = "cph_general_grd_itemDocumento_bti_agruparItems_";    

    for (let item = 0; item < itemsSuperior.length; item++) {
        itemSuperiorElem = itemsSuperior[item];
        idItemSuperior = itemSuperiorElem.innerHTML;

        if (idItemSuperior == idItemSelected) {
            tieneDescendentes = true;
            numRegistro = itemSuperiorElem.id.replace("cph_general_grd_itemDocumento_lbl_id_itemDoc_sup_", "");
            let invisibleClassElem = itemSuperiorElem.parentElement;
            let gri_item = invisibleClassElem.parentElement;

            registroVisible = gri_item.style.display;
            ocultarDescendientes = registroVisible !== "none";

            if (ocultar == undefined) {
                gri_item.style.display = registroVisible === "none" ? "" : "none";
            }
            else if (ocultar && registroVisible !== "none") {
                gri_item.style.display = "none";
            }

            if (gri_item.style.display === "none") {
                botontElem.src = "../../images/iconos/expandir.png";
            }
            else {
                botontElem.src = "../../images/iconos/contraer.png";
            }

            //Recurción para los items descendientes
            showHide_itemsDescendientes(
                document.getElementById(idBotonElem + numRegistro),
                document.getElementById(idItemDocumentoElem + numRegistro).innerHTML,
                ocultarDescendientes);
        }
    }
    if (!tieneDescendentes) {
        botontElem.style.display = "none";
    }
}

function cerrarItemsSuperiores() {
    let numRegistro;
    let idItemDocumentoElem;
    let idBotonElem;
    let id;
    let boton;

    idItemDocumentoElem = "cph_general_grd_itemDocumento_lbl_id_";
    idBotonElem = "cph_general_grd_itemDocumento_bti_agruparItems_";

    let gridview = document.getElementById("cph_general_grd_itemDocumento");
    let itemsSuperior = gridview.querySelectorAll(".superior");

    for (let item = 0; item < itemsSuperior.length; item++) {
        itemSuperiorElem = itemsSuperior[item];
        idItemSuperior = itemSuperiorElem.innerHTML;

        if (idItemSuperior == 0) {
            numRegistro = itemSuperiorElem.id.replace("cph_general_grd_itemDocumento_lbl_id_itemDoc_sup_", "");
            id = document.getElementById(idItemDocumentoElem + numRegistro).innerHTML;
            boton = document.getElementById(idBotonElem + numRegistro);
            showHide_itemsDescendientes(boton, id, true);
        }
    }

    
}