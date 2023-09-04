var actualizacionHome;
var iE=0;
var arrElementos;
var errorServer=false;
var t_int_time=30;
function s_actualizarData(tabla,filtro,control){
    PageMethods.f_str_obtenerCantidadHome(tabla,filtro
    ,function(result){
       control.innerText=result;
       if(control.getAttribute('totalr')!=null)
       {
           var porcentaje=0;
           var porMayor=0;
           var idBH=0;
           var totalr=control.getAttribute('totalr');
           var mayorr=control.getAttribute('mayorr');
           idBH=control.getAttribute('idbh');
           mayorr= f_int_obtenerValorMayor(idBH,mayorr);
           var tdder=control.parentElement.parentElement.getElementsByClassName('htdder');
           var tdizq=control.parentElement.parentElement.getElementsByClassName('htdizq');
           if (tdder.length>0 && tdizq.length>0 ){
               totalr=Number(totalr);
               porcentaje=(Number(result)/totalr)*100 ;
               porcentaje=Math.round(porcentaje);
               porMayor=(Number(result)/mayorr)*100 ;
               porMayor=Math.round(porMayor);
               tdder[0].innerText='';
               tdizq[0].innerText='';
               if(porMayor>50){
                  tdizq[0].innerText=porcentaje.toString()+'%';
               }
               else{
                  tdder[0].innerText=porcentaje.toString()+'%';
               }
               tdizq[0].setAttribute('width',porMayor);
               tdder[0].setAttribute('width',100-porMayor);
            }
       }
       iE++;
       s_actualizarRegistro();
     }
     ,function (error){
      console.log(control.id +'-'+ JSON.stringify(error));
     if(error._message=="The server method 'f_str_obtenerCantidadHome' failed."){
       //clearInterval(actualizacionHome);
       iE=arrElementos.length;
       //errorServer=true;
     }
     else{
         iE++;
         s_actualizarRegistro();}
      });
}

function s_actualizarRegistro(){
       var t_int_cantidad=arrElementos.length;
    if(iE< t_int_cantidad){
        strTabla=arrElementos[iE].getAttribute('tabla');
        strfiltro=arrElementos[iE].getAttribute('filtro');
        if(!s_actualizarHome(arrElementos[iE])){//cuando esta cargando el nuevos registros
           t_int_time=30;
           s_actualizarData(strTabla,strfiltro,arrElementos[iE]);
        }else{
             t_int_cantidad=0;
             t_int_time=300;
             clearInterval(actualizacionHome);
             actualizacionHome= setInterval('s_actualizacionMasiva();',t_int_time*1000) ;
        }
    }else{
      iE=0;
      clearInterval(actualizacionHome);
      actualizacionHome= setInterval('s_actualizacionMasiva();',t_int_time*1000) ;
    }
}

function s_actualizacionMasiva(){
    console.log('s_actualizacionMasiva:'+new Date().toString());
    var strTabla;
    var strfiltro;
    arrElementos=document.getElementsByClassName('actHome');
    s_actualizarRegistro();
}
function f_int_obtenerValorMayor(controlBH,valorMayor){
    controlBH=document.getElementsByClassName('BH'+controlBH);
    if (controlBH.length>0){
        var hijosBH =controlBH[0].getElementsByClassName('actHome');
        for(var indice=0 ;indice <hijosBH.length;indice++){
          var intCantidad= hijosBH[indice].innerText.toString().replace(' ','');
          intCantidad=Number(intCantidad);
          if(intCantidad>valorMayor){
            valorMayor=intCantidad;
          }
        }
    } 
return valorMayor;
}

 function s_actualizarHome(objElemento){
     var registroNuevo=false;
        t_tabla=objElemento.getAttribute('tabla');
        t_filtro=objElemento.getAttribute('filtrogrupo');
        t_agrupado=objElemento.getAttribute('agrupado');
        t_detalle=objElemento.getAttribute('detalleRegistros');
        t_btn=objElemento.getAttribute('btnhome');
        PageMethods.f_bol_actualizarHome(t_tabla,t_filtro,t_agrupado,t_detalle
     ,function(result){   
            if(result.toString().toLowerCase()=='true'){
               //ejecutar click
                registroNuevo=true;
                t_int_time=300;
                clearInterval(actualizacionHome);
                document.getElementById(t_btn).click(); 
            }
     }
     ,function (error){
      console.log(objElemento.id +'-'+ JSON.stringify(error));
      console.log(error._message);
     
     });
    return registroNuevo;
 }

window.onload = function() {
  s_actualizacionMasiva();
};


