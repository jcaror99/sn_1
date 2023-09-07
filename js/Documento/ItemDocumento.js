//Se guardan los items superiores seleccionados, esto por el postback
var itemsSuperioresSleccionados = [];

function showHide_itemsDescendientes(botontElem, idItemSelected, ocultar, desdeInit) {
    let idItemSuperior;
    let itemSuperiorElem;
    let numRegistro;
    let idItemDocumentoElem;
    let idBotonElem;
    let ocultarDescendientes;
    let registroVisible;
    let tieneDescendentes = false;

    let idBoton = botontElem.id;
    let idItemDescendiente;

    idItemDocumentoElem = "cph_general_grd_itemDocumento_lbl_id_";
    idBotonElem = "cph_general_grd_itemDocumento_bti_agruparItems_";

    //Guaradado o quitado de items según click del usuario, esto por el postback
    if (ocultar == undefined && desdeInit == undefined) {//un usuario le dio click
        let index = itemsSuperioresSleccionados.findIndex(x => x.idItem == idItemSelected);

        if (index == -1) {//no esta el item en el array, se considera que se quiere mostrar
            itemsSuperioresSleccionados.push({
                btnElem: idBoton,
                idItem: idItemSelected
            });
        }
        if (index > -1) {//si esta en el array, se considera que al haber dado click ya no se quiere ver mas y por eso se saca del array
            itemsSuperioresSleccionados.splice(index, 1);
        }
    }

    let gridview = document.getElementById("cph_general_grd_itemDocumento");
    let itemsSuperior = gridview.querySelectorAll(".superior");

    for (let item = 0; item < itemsSuperior.length; item++) {
        itemSuperiorElem = itemsSuperior[item];
        idItemSuperior = itemSuperiorElem.innerHTML;
       
        if (idItemSuperior == idItemSelected) {//Todo item que tenga como id_item_superior el mismo que el seleccionado por el usuario
            tieneDescendentes = true;
            numRegistro = itemSuperiorElem.id.replace("cph_general_grd_itemDocumento_lbl_id_itemDoc_sup_", "");
            let invisibleClassElem = itemSuperiorElem.parentElement;
            let gri_item = invisibleClassElem.parentElement;

            idItemDescendiente = document.getElementById(idItemDocumentoElem + numRegistro).innerHTML;

            registroVisible = gri_item.style.display;
            ocultarDescendientes = registroVisible !== "none"; //toggle

            if (ocultar == undefined) { // si el click lo dio un usuario
                if (registroVisible === "none") {
                    gri_item.style.display = "";
                }
                else {
                    gri_item.style.display = "none";
                    let indexDescendiente = itemsSuperioresSleccionados.findIndex(x => x.idItem == idItemDescendiente);

                    if (indexDescendiente > -1) {
                        itemsSuperioresSleccionados.splice(indexDescendiente, 1);
                    }
                }                                
            }
            else if (ocultar && registroVisible !== "none") { // si el click se origino gracias a la recursión y si el click inicial fue para contraer los descendientes
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
                idItemDescendiente,
                ocultarDescendientes);
        }
    }
    if (!tieneDescendentes) {
        botontElem.style.display = "none";
    }
}

function InitItemsSuperiores() {    
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

    //Se vuelven a contraer los items descendientes que se hayan seleccionado preciamente por el usuario, esto por el postback
    if (itemsSuperioresSleccionados.length > 0) {
        for (let item = 0; item < itemsSuperioresSleccionados.length; item++) {
            let itemSelected = itemsSuperioresSleccionados[item];
            showHide_itemsDescendientes(
                document.getElementById(itemSelected.btnElem),
                itemSelected.idItem,
                undefined,
                true);
        }
    }
}