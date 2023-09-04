

var td_destino;
var div_DragOrigen;
function ValidarDestino(td_DragDestino,div_drag){
var bolReprogramar=false;
var idProgramacion= "";
var idUsuario="";
var fechaProg="";
  td_destino=td_DragDestino;
  div_DragOrigen=div_drag;
     if(td_DragDestino.childNodes.length ==0 ||td_DragDestino.childNodes[0].nodeType==3 ){//cuando el contenido es un texto y no un objeto html
          
          
          if(div_drag.attributes.id_pro!=null && td_DragDestino.attributes.id_usuario!=null && td_DragDestino.attributes.FechaDisponible!=null)
          {
            idProgramacion= div_drag.attributes.id_pro.value;
            idUsuario=td_DragDestino.attributes.id_usuario.value;
            fechaProg=td_DragDestino.attributes.FechaDisponible.value;
            if(idProgramacion!=null && fechaProg!=null && idUsuario!=null){
               bolReprogramar=true;
             }
          }else{
              if(td_destino.colSpan=='15' )// cuando selecciono un titulo de tecnico para definir un horario
              { bolEnDrag=true;
                 iniciarEdicionProgramacion(div_drag.attributes.id_pro.value,td_destino.parentNode.cells[0].innerText);
              }else{
                bolEnDrag=false;
              }
          }
            
      }     
      if(bolReprogramar){
      
          PageMethods.EditarProgramacion(idProgramacion,fechaProg,idUsuario,Exitoso,Error);

      } 
      
      
      
}

function Exitoso(Resultado){
    if(Resultado =='ok'){
       
        var posicionTDViejo=div_DragOrigen.offsetParent.cellIndex
        var posicionTRViejo=div_DragOrigen.parentNode.parentElement.rowIndex
        var tr_tempViejo=div_DragOrigen.parentNode.parentElement.parentElement.rows[posicionTRViejo+1];
        var arregloFecha=td_destino.attributes.FechaDisponible.value.split(' ');
        var datFecha=new Date(td_destino.attributes.FechaDisponible.value);
        td_destino.className =div_DragOrigen.parentNode.className;
        div_DragOrigen.parentNode.className='nodefinido';
        datFecha.setHours(datFecha.getHours()+Number(div_DragOrigen.attributes.duracion.value));
        var lblHora=document.getElementById('lbl_hora_'+div_DragOrigen.attributes.id_pro.value);
        lblHora.innerText= arregloFecha[1]+' - '+datFecha.format('HH:mm').split(':')[0]+':'+datFecha.format('HH:mm').split(':')[1];
        //tr_tempViejo.parentNode.rows[0].cells[posicionTDViejo].attributes.fechaprog.value.split('/');
        var posicionTDNuevo=td_destino.cellIndex;
        var posicionTRNuevo=td_destino.parentNode.rowIndex;
        var tr_tempNuevo=td_destino.parentNode.parentElement.rows[posicionTRNuevo+1];  
        RepararFilas(tr_tempViejo.parentElement,td_destino.parentNode.parentElement,posicionTRViejo,posicionTRNuevo,posicionTDViejo,posicionTDNuevo,          div_DragOrigen.offsetParent.rowSpan,Number(div_DragOrigen.attributes.duracion.value));
        td_destino.innerText='';
        
        td_destino.appendChild(div_DragOrigen);
        
        // call myhandler_dropped because clone_limit could call myhandler_clonedend1 or myhandler_clonedend2
        REDIPS.drag.myhandler_dropped(td_destino);
       
        
    }else{
             document.getElementById('tbl_popupDrag').style.display='';
             document.getElementById('divModalDrag').style.display='';
             document.getElementById('lbl_mensajeDrag').innerHTML=Resultado;
    }
    
    bolEnDrag=false;
}

function Error(Detalle){
   bolEnDrag=false;
}

function RepararFilas(tblViejo, tblNuevo,indiceFilaViejo,IndiceFilaNuevo,indiceColumnaVieja,indiceColumnaNueva,intRowSpan,duracion){
    //muestro las celdas viejas
    for(indiceViejo=indiceFilaViejo;indiceViejo<indiceFilaViejo+intRowSpan;indiceViejo++)
    {
      if(indiceViejo==indiceFilaViejo){
        tblViejo.rows[indiceViejo].cells[indiceColumnaVieja].rowSpan=1;
      }
      tblViejo.rows[indiceViejo].cells[indiceColumnaVieja].style.display='';
      tblViejo.rows[indiceViejo].cells[indiceColumnaVieja].innerText="";
    }

   // variable que tengo para calcular el row span del nuevo elmento siempre y cuando las celdas esten vacias
    var intTamanoRowSpan=0;
    var indiceNuevo=IndiceFilaNuevo;
    var fechaFin= new Date(tblNuevo.rows[IndiceFilaNuevo].cells[indiceColumnaNueva].attributes.fechadisponible.value); 
    fechaFin.setHours(fechaFin.getHours()+duracion); 
    //Oculto las celdas de las filas para el nuevo contenido
    while(tblNuevo.rows[indiceNuevo].cells[indiceColumnaNueva].attributes.fechadisponible !=null  ){
     
      if(tblNuevo.rows[indiceNuevo].cells[indiceColumnaNueva].attributes.fechadisponible !=null){
            var fechaActual=new Date(tblNuevo.rows[indiceNuevo].cells[indiceColumnaNueva].attributes.fechadisponible.value)
            if(fechaActual<= fechaFin)
            {
             intTamanoRowSpan = intTamanoRowSpan + 1 ;
             if(indiceNuevo!=IndiceFilaNuevo){
              tblNuevo.rows[indiceNuevo].cells[indiceColumnaNueva].style.display='none';
              }
            }
            
      }
      else{break;}
      indiceNuevo=indiceNuevo+1;
      if(indiceNuevo> tblNuevo.rows.length-1){break;
      }
      
    } 
    
    if(intTamanoRowSpan ==0){
    intTamanoRowSpan=1;}
     tblNuevo.rows[IndiceFilaNuevo].cells[indiceColumnaNueva].rowSpan=intTamanoRowSpan;
}


function iniciarEdicionProgramacion(IdProgramacion,idTecnico){
MM_findObj('ctl00_cph_general_hddIdProgramacion').value=IdProgramacion+'|'+idTecnico; 
if(window.navigator.userAgent.indexOf('Chrome')!=-1){
javascript:__doPostBack('ctl00$cph_general$lnkSeleccionarProgramacion','');
}

}

 