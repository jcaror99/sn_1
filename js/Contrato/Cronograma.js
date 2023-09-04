var visitas = [];
var visitasOk = [];
var allVisitas = [];



function setAllVisitas(v){
    allVisitas = v;
}
function setU(url){
    uApi = url;
}
function setAuth(au){
    auth = au;
}
function s_guardarcheckTodo(x,n,k){
    var y
    if (x.checked){
        visitas = allVisitas;
    } else {
        visitas = [];
    }
    
    for (i = 1; i <= n+1; i++){
        if(i<10){
            y=x.id.substring(0,x.id.length-18)+'0'+i+'_chb_seleccionar';
        }
        else {
            y=x.id.substring(0,x.id.length-18)+i+'_chb_seleccionar';
        }
        var elemento = document.getElementById(y);
        if (elemento != null){
            if (elemento.parentNode.style.display=="") {
                elemento.checked = x.checked;
            }
            else if(k!=1){
                elemento.checked = x.checked;
            }
        }
    }
}

function s_guardarCheck(i, c){
    if (getLnk(i).href.split("=")[1] == 0)
    {
        if (c.checked){
           visitas.push(i);
        }else{
           removeVisita(i);
        }
    }
}

function removeVisita(i){
    var index = visitas.indexOf(i);
    if (index !== -1) { 
        visitas.splice( index, 1 ); 
    }
}

var nVisitasT = 0;
var cantVDili = 0;

function crearOT_DV(){
    document.getElementById("ctl00_cph_general_lbl_mensajeCrearOT").innerHTML = 'Iniciando la creación de OTs...';
    var f = new Date();
    console.log("Starting: " + f.getDate() + "/" + (f.getMonth() +1) + "/" + f.getFullYear() + " " + f.getHours() + ":" + f.getMinutes() + ":" + f.getSeconds());

    nVisitasT = visitas.length;

    var cantXP = 100;
    var nPackVisitas = 1;
    if (nVisitasT > 50){
        nPackVisitas = Math.ceil(nVisitasT / cantXP);
    }

    var i = 0;
    var f = cantXP;
    for (var p = 0; p < nPackVisitas; p++){
        f = getFinal(f, nPackVisitas, p, visitas.length);

        var paqueteVisitas = visitas.slice(i,f);
        envVisitas(paqueteVisitas);
        i = f;
        f = i + cantXP;
    }
}

function envVisitas(vArr){
    var e = document.getElementById("ctl00_cph_general_chb_otrosEquipos");
    var cantXP = 10;
    var i = 0;
    var f = cantXP;
    var cantV = Math.ceil(vArr.length / cantXP);
    for(var pv = 0; pv < cantV; pv++){
        f = getFinal(f, cantV, pv, vArr.length);

        var vst = vArr.slice(i,f);
        var json;
        if (!e.checked){
            json = { "unificar": e.checked, "visitas": vst }
        } else {
            json = { "unificar": e.checked, "visitas": vst, "allVisitas": visitas }
        }
        
        var jsonRes = requestRest("/api/cnt/ot/visita", json, 'POST', true).done(function (data) {
            if (data.respuesta == 200){
                if (data.ots != 'undefined'){
                    for(var index = 0; index < data.ots.length; index++){
                        var ot = data.ots[index];
                        if (ot.respuesta == 200 || ot.respuesta == 201){
                            if (ot.respuesta == 200) { 
                                ots.push(ot.id); 
                                cambiarEstado(ot.id);
                            }
                            visitasOk.push(parseInt(ot.descripcion));
                            asignarLnkOT(ot.descripcion,ot);
                        } else {
                            setMessageR(ot.descripcion);
                        }
                    }
                    evalPostOTs(data.ots.length);
                }
            } else {
                setMessageR(data.descripcion);
                evalPostOTs(cantXP);
            }
        }).fail(function (data, textStatus, xhr) {
            evalPostOTs(cantXP);
        });

        i = f;
        f = i + cantXP;
    }
}

function cambiarEstado(ot){
    var json = { "id_doc": ot }
    var jsonRes = requestRest("/api/cnt/cambiarEstado", json, 'POST', true).done(function (data) {
        setMessageR(data.descripcion);
    }).fail(function (data, textStatus, xhr) {
        setMessageR(data.descripcion);
    });
}

function evalPostOTs(nT){
    cantVDili += nT;
    console.log(cantVDili);
    if (nVisitasT == cantVDili) { EjecPostOTs(); }
}

function EjecPostOTs(){
    setMessageR("Finaliza creación de OTs");
    if (ots.length > 0){
        setMessageR("Inicia proceso Post creación de OTs");
        console.log(ots);
        var jsonRes = requestRest("/api/cnt/otXSol", ots, 'POST', true).done(function (data) {
            console.log('<= otXSol');
            if (data.respuesta != 200){ setMessageR(data.descripcion); }
        });;
        
        var json = { "visitas": visitasOk, "ots": ots };
        console.log(json);
        jsonRes = requestRest("/api/cnt/postCrearOt", json, 'POST', true).done(function (data) {
            console.log('<= postCrearOt:');
            if (data.respuesta != 200){ setMessageR(data.descripcion); }
            setMessageR("Finaliza proceso Post creación de OTs");
        });;
    }
}

function getFinal(f, nPackVisitas, p, n_vi){
    if (p + 1 == nPackVisitas){
        if (f > n_vi - 1){
            f = n_vi;
        }
    }
    return f;
}

var ots = [];
function crearOT(){
    if (!confirm("¿Esta seguro de los cambios hechos?")){ return; }
    document.getElementById("ctl00_cph_general_lbl_mensajeCrearOT").innerHTML = '';
    ots = [];
    visitasOk = [];
    cantVDili = 0;
    crearOT_DV();
    
    var cTodo = document.getElementById("ctl00_cph_general_grd_visitas_dia_ctl01_chb_seleccionar");
    cTodo.checked = true;
    cTodo.click();
}

function setMessageR(text){
    var m = document.getElementById("ctl00_cph_general_lbl_mensajeCrearOT");
    m.innerHTML = m.innerHTML + text + '. ';
}

function asignarLnkOT(v,ot){
    var a = getLnk(v);
    a.href = a.href.split("=")[0] + "=" + ot.id;
    a.innerHTML = ot.codigo;

    var idVisita = a.id.replace("hyp_ot", "img_estilo");
    document.getElementById(idVisita).className = "cronoDia_4";
}

function getLnk(v){
    return document.getElementsByName("lnk_" + v)[0];
}

function requestRest(url, json, metodo, asin){
    url = uApi + url;
    var header = { 
        'Content-Type': 'application/json', 
        'Access-Control-Allow-Origin':'*',
        'Access-Control-Allow-Headers':'*',
        'Access-Control-Allow-Methods':'*',
        'Authorization': auth
    };
    return $.ajax({
        url: url,
        headers: header,
        type: metodo,
        data: JSON.stringify(json),
        dataType: 'json',
        async: asin
    }).done(function (data) {
        console.log(url);
        console.log(data);
    }).fail(function (data, textStatus, xhr) {
        if (data.status == 401) {
            alert("Su sesión ha vencido, ingrese de nuevo su usuario y contraseña");
        } else {
            console.log('status:[' + data.status + ']; error: [' + xhr + ']; url: [' + url+ ']');
        }
    });
}