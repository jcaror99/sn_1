<%@ Page Language="VB" MasterPageFile="~/master/master/mas_materialize.master" AutoEventWireup="false"
    CodeBehind="checkdest.aspx.vb" Inherits="website.forms_samm_checkdest" Title="Untitled Page" %>

<%@ Register Src="~/controles/samm7/menuM.ascx" TagName="menuM" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_cabecera" runat="Server">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <div class="s12 col white barra-superior">
        <div class="row">
            <div class="s12 col">
                <div class="row">
                    <div class="s4 m6 l5 push-l1 col">
                        <img src="../../images/interfaz/sammweb.jpg" class="left tamaño" />
                    </div>
                    <div class="s4 m6 l5 push-l1 col">
                        <img src="../../images/interfaz/logoEmpresa.png" class="left tamaño" />
                    </div>
                </div>
            </div>
            <div class="push-l1 col">
                <uc2:menuM ID="menuFinal1" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
    <div class="s4 m6 l8 col cabeceraSamm">
        <div class="row" style="margin-bottom: 0px; padding-bottom: 2px;">
            <div class="s2 m6 l6 push-l1 col title white-text">
                <h5>
                    <asp:Label ID="lblTituloPlantilla" runat="server"></asp:Label>
                    <i title="Editar" class="material-icons" onclick='mosCL();' style="cursor:pointer">edit</i>
                    </h5>
            </div>
            <div class="s1 m3 l3 push-l1 col contenedor-botones hide-on-small-only" style="background-color: white;
                border-radius: 5px; margin: 1px;">
                <a class="btn-floating btn-large waves-effect waves-light blue" id="btn" onclick='document.getElementById("modalChl").style.display = "block"'>
                    <i title="Nuevo" class="material-icons">add</i> </a><a class="btn-floating btn-large waves-effect waves-light blue"
                        id="btnDu" onclick='document.getElementById("modalChlDup").style.display = "block"'>
                        <i title="Duplicar" class="material-icons">filter_none</i></a> <a class="btn-floating btn-large waves-effect waves-light red">
                            <i title="Vista Previa" class="material-icons">pageview</i></a> <a href="#" data-target="slide-out"
                                class="btn-floating btn-large waves-effect waves-light blue sidenav-trigger"><i title="Buscar"
                                    class="material-icons">search</i></a>
                <%--<div class="input-field col s6" style="display: none" id="divNuevaLista">
                    <input id="nombrePlantilla1" type="text" class="validate">
                    <label for="nombrePlantilla">
                        Nombre Lista</label>
                    
                    <a runat="server" id="btnP" class="btn-small blue">Agregar</a>
                </div>--%>
            </div>
        </div>
    </div>
    <div class="s10 m10 l10 col cuerpoSamm">
        <div class="row">
            <div class="s8 m8 l9 push-l1 col" style="background-color: White;">
                <div class="row">
                    <div class="col s5 m5 l7 col" style="width: 80%">
                        <form class="preguntas" action="#">
                        <asp:UpdatePanel ChildrenAsTriggers="true" RenderMode="Inline" UpdateMode="Always"
                            runat="server" ID="updPlantilla">
                            <ContentTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
                            <input type="hidden" name="hddIdAtributo" id="hddIdAtributo" runat="server"/>
                                <asp:Repeater ID="dtlPlantilla" runat="server">
                                    <ItemTemplate>
                                        <div class="card white">
                                            <div class="card-content container-formulario">
                                                <table style="padding:0;">
                                                <tr>
                                                     <td><i class="material-icons blue-text"><%#Eval("icoSec")%></i></td>
                                                     <td>
                                                     <input id='inputSec<%#Eval("idseccion")%>' type="text" class="txtseccion" value='<%#Eval("seccion") %>' readonly/></td>
                                                     <td>
                                                     <a id="btnDS<%#Eval("idseccion") %>" class="btn-small blue" onclick='dupSec(<%#Eval("idseccion") %>);'>Duplicar</a></td>
                                                     <td>
                                                     <a id="a<%#Eval("idseccion") %>" title="Editar" class="material-icons small" onclick="mosSec('<%#Eval("idseccion") %>','<%#Eval("codigo") %>','<%#Eval("seccion") %>');" style="cursor:pointer">edit</a>
                                                     </td></tr></table>
                                                <ul class="collapsible" id="ul<%#Eval("idseccion") %>" >
                                                    <asp:Repeater ID="dtlSeccion" runat="server">
                                                        <ItemTemplate>
                                                            <li id="liAtributo_<%#Eval("id") %>">
                                                                <div class="collapsible-header" tabindex="0">
                                                                    <i class="material-icons">drag_indicator</i>&nbsp; <span id="span_<%#Eval("id") %>" style="white-space: nowrap;">
                                                                        <%#Eval("item") %></span>&nbsp; <i id="iAtributo_<%#Eval("id") %>" class='material-icons obliga-<%# Iif(Eval("obligatorio"),"si","no")%>' style="text-align: right;
                                                                            width: 100%">
                                                                            <%# Eval("ico")%></i>
                                                                </div>
                                                                <div class="collapsible-body" id="divAtributo_<%#Eval("id") %>">
                                                                    <form name="" action="#">
                                                                    <input id="atributo<%#Eval("id") %>" type="text" name="atributos" class="validate" value='<%#Eval("item") %>' placeholder="Nombre Campo" />
                                                                     <input id='txtOrden<%#Eval("id") %>' type="number" min="1" class="validate" value='<%#Eval("orden") %>' />
                                                                     <label for="txtOrden<%#Eval("id") %>">
                                                                        Orden</label>
                                                                    <select id="tipo<%#Eval("id") %>" class="validate">
                                                                        <option class="icons" value="7" <%# Iif(Eval("tipo")=7,"selected","")%>>Cargue archivos</option>
                                                                        <option value="3" <%# Iif(Eval("tipo")=3,"selected","")%>>Fecha</option>
                                                                        <option value="4" <%# Iif(Eval("tipo")=4,"selected","")%>>Lista</option>
                                                                        <option value="9" <%# Iif(Eval("tipo")=9,"selected","")%>>Lista Condicional</option>
                                                                        <option value="5" <%# Iif(Eval("tipo")=5,"selected","")%>>Lista múltiple</option>
                                                                        <option value="2" <%# Iif(Eval("tipo")=2,"selected","")%>>Número</option>
                                                                        <option value="1" <%# Iif(Eval("tipo")=1,"selected","")%>>Texto</option>
                                                                        <option value="6" <%# Iif(Eval("tipo")=6,"selected","")%>>Texto largo</option>
                                                                        <option value="8" <%# Iif(Eval("tipo")=8,"selected","")%>>Sólo lectura</option>
                                                                    </select>
                                                                   <div class="opcionatributo" id="opcionesAtributo_<%#Eval("id")%>" style="display:<%# Iif(Eval("opciones"),"","none")%>;">
                                                                        <asp:Repeater ID="rptOpcionAtributo" runat="server">
                                                                            <ItemTemplate>
                                                                                <div id="opc<%#Eval("id") %>" class="contenedor-div-opcionesAtributo">
                                                                                    <input id="opcionAtributo_<%#Eval("id") %>" name="opcionAtributo_<%#Eval("id_atributo") %>" type="text" value="<%#Eval("opcionAtributo") %>"
                                                                                        class="txtopcion validate" placeholder="Digite Opción" />
                                                                                    <a id="A1" class="red-text" style="cursor:pointer;"  onclick='elOp(<%#Eval("id") %>, <%#Eval("id_atributo") %>)'><i class="material-icons">clear</i></a>
                                                                                    <a id="A2" class="" style="cursor:pointer;"  onclick='edOp(<%#Eval("id") %>, <%#Eval("id_atributo") %>,valor("opcionAtributo_<%#Eval("id") %>"))'><i class="material-icons">done</i></a>
                                                                                </div>
                                                                            </ItemTemplate>
                                                                        </asp:Repeater>
                                                                        <div id="opcionesAtributoNuevas_<%#Eval("id")%>">
                                                                            
                                                                        </div>
                                                                        <div class="contenedor-div-opcionesAtributo">
                                                                            <input id="nueOpcionAtributo_<%#Eval("id") %>" type="text" class="txtopcion validate" placeholder="Nueva Opción" />
                                                                            <a id="A3" class="blue-text" style="cursor:pointer;"onclick='crOp(<%#Eval("id") %>,valor("nueOpcionAtributo_<%#Eval("id") %>"))'><i class="material-icons">add</i></a>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <table>
                                                                    <tr><td><label>
                                                                            <input id="indeterminate-checkbox<%#Eval("id") %>" type="checkbox" <%# Iif(Eval("obligatorio"),"checked","no-checked")%> />
                                                                            <span>Obligatorio</span>
                                                                        </label></td>
                                                                        <td>
                                                                        <a class="btn-small blue" onclick="confDep(<%#Eval("id") %>)"><i class="material-icons">remove_red_eye</i></a>
                                                                        </td>
                                                                        <td>
                                                                        <a class='<%# Iif(Eval("tipo") = "9" and Eval("IDsOpciones") = "","btn-small blue","")%>' onclick="confRepDep(<%#Eval("id") %>, <%#Eval("idSeccion") %>)">
                                                                            <i class='<%# Iif(Eval("tipo") = "9" and Eval("IDsOpciones") = "","material-icons","")%>'><%#IIf(Eval("tipo") = "9" And Eval("IDsOpciones") = "", "queue", "")%></i>
                                                                        </a>
                                                                        </td></tr>
                                                                        
                                                                    </table>
                                                                    
                                                                    <br />
                                                                <a id="btnB" class="btn-small red" onclick='if(confirm("Seguro?"))editarAtributo(<%#Eval("id") %>,document.getElementById("atributo<%#Eval("id") %>").value,document.getElementById("tipo<%#Eval("id") %>").value,document.getElementById("indeterminate-checkbox<%#Eval("id") %>").checked,<%#Eval("idSeccion") %>,0,0);'>Quitar</a>
                                                                    <a id="btnA" class="btn-small blue" onclick='editarAtributo(<%#Eval("id") %>,document.getElementById("atributo<%#Eval("id") %>").value,document.getElementById("tipo<%#Eval("id") %>").value,document.getElementById("indeterminate-checkbox<%#Eval("id") %>").checked,<%#Eval("idSeccion") %>,1,document.getElementById("txtOrden<%#Eval("id") %>").value)'>Actualizar</a>
                                                                    <label id="cargando_<%#Eval("id") %>"></label>
                                                                    </form>
                                                                </div>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                    <li id="nueAtb<%#Eval("idSeccion") %>">
                                                        <div class="collapsible-header">
                                                            <i class="material-icons">add</i>Nuevo</div>
                                                        <div class="collapsible-body" id="cn<%#Eval("idSeccion") %>">
                                                            <input id="txtNuevoAtributo<%#Eval("idSeccion") %>" type="text" class="validate" />
                                                            <label for="Atributo6">
                                                                Nombre Campo</label>
                                                            <a id="btnA" class="btn-small blue" onclick='crearAT(document.getElementById("txtNuevoAtributo<%#Eval("idSeccion") %>").value, 1, globalLista , <%#Eval("idSeccion") %>);'>Agregar</a>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <asp:Label runat="server" Text='<%#Eval("idSeccion") %>' ID="lblIdSeccion" Visible="false" />
                                    </ItemTemplate>
                                </asp:Repeater>
                                  <div id="modalAso" class="modal modal-color">
            <h5 style="padding-left:10px;font-weight:bolder;">Configuración de opciones</h5>
          <div class="modal-content"style="padding-left:30px;">
            <span >Este campo se verá si el usuario elige:</span>
              <asp:DropDownList ID="drpAtributos" runat="server" AutoPostBack="true">
              </asp:DropDownList>
              <asp:Repeater ID="rptOpcionesDep" runat="server">
              <ItemTemplate>
              <div>
                  <label >
                      <input id="indeterminate-checkbox-<%#Eval("id_atributo") %>-<%#Eval("id") %>" name="opcionesCondicion" type="checkbox" onchange="edAso(<%#Eval("id")%>,this.checked);" <%# Iif(Eval("active"),"checked","no-checked")%> />
                      <span><%#Eval("opcionAtributo")%></span>
                  </label></div>
                  </ItemTemplate>
              </asp:Repeater>
          </div>
          <div class="modal-footer">
          
          <a class="modal-close btn-floating red lighten-2" onclick="cerrarModal('modalAso');">
                <i class="material-icons">cancel</i></a>
        </div>
        
        </div>
        
            <div id="modalRD" class="modal modal-color">
            <h5 style="padding-left:10px;font-weight:bolder;">Replicar Dependientes:</h5>
          <div id="atbRD" class="modal-content" style="padding-left:30px;">
            
          </div>
          <div style="padding-left:30px;">
            <label for="txtCantidadRD">Cantidad</label>
            <input id='txtCantidadRD' type="number" min="1" class="validate" />
            <a id="btnRD" class="btn-small blue" onclick='replicarDependientes(<%#Eval("id") %>);'>Replicar</a>
          </div>
          <div class="modal-footer">
          
          <a class="modal-close btn-floating red lighten-2" onclick="cerrarModal('modalRD');">
                <i class="material-icons">cancel</i></a>
        </div>
        
        </div>
        
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        </form>
                    </div>
                    <div class="col s1 m1 l1 secciones" style="width: 20%; padding-top: 5px;">
                        <a class='dropdown-trigger' href='#' data-target='dropdown1' style="width: 240px;
                            background-color: Transparent; text-align: left; display: inline-block;"><span class="btn blue">
                                Sección&nbsp;<i class="material-icons" title="Sucursal">library_add</i></span>
                        </a>
                        <br />
                        <a href='#' onclick="javascript: popup_ventanaNuevo('equ_opcionAtributo','com');return false;">Importar Opciones
                        </a>
                        <a href='#' onclick="javascript: popup_ventanaNuevo('cat_atributo_opcionAtributo','com');return false;">Importar Dependencias
                        </a>
                        
                        <ul id='dropdown1' class='dropdown-content'>
                            <li><a class="blue-text" id="btnSuc" style="white-space: nowrap" href="#" onclick='document.getElementById("modalSuc").style.display = "block"'>
                                <i class="material-icons" title="Sucursal">person_pin</i>Sucursal</a></li>
                            <li><a class="blue-text" id="btnOfi" style="white-space: nowrap" href="#" onclick='document.getElementById("modalOfi").style.display = "block"'>
                                <i class="material-icons" title="Equipo/Oficina">domain</i>Equipo-Oficina</a></li>
                            <li><a class="blue-text" id="btnCpt" style="white-space: nowrap" href="#" onclick='document.getElementById("modalCpt").style.display = "block"'>
                                <i class="material-icons" title="Equipo/Componente">scanner</i>Equipo-Componente</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div id="modalSec" class="modal modal-color">
        <div class="modal-content">
            <h5>
                Datos Sección</h5>
            <input type="text" name="txtSeccion" id="txtSeccion" />
            <input type="hidden" name="hddIdSeccion" id="hddIdSeccion" />
            <input type="hidden" name="hddCodSeccion" id="hddCodSeccion" />
            <input type="hidden" name="hddNameSeccion" id="hddNameSeccion" />
            <div id="divFamiliaSec">
            <label>
                    Familia</label>
                <select class="browser-default" id="Select1">
                    <option value="" disabled selected>-- Seleccione --</option>
                    <asp:Repeater ID="rptFamilia" runat="server">
                        <ItemTemplate>
                            <option value="<%# Eval("familia_codigo") %>">
                                <%# Eval("familia") %></option>
                        </ItemTemplate>
                    </asp:Repeater>
                </select>
                
            </div>
        </div>
        <div class="modal-footer">
            <label id="actSec"></label>
            <a class="modal-close btn-floating red lighten-2" onclick="cerrarModal('modalSec');">
                <i class="material-icons">cancel</i></a> <a class="modal-close btn-floating blue lighten-2"
                    onclick="edSe(document.getElementById('hddIdSeccion').value,document.getElementById('txtSeccion').value,document.getElementById('hddCodSeccion').value,document.getElementById('Select1').value);"><i class="material-icons">
                        done</i></a>
        </div>
    </div>
    
    <div id="modalChl" class="modal modal-color">
        <div class="modal-content">
            <h5>
                Datos Checklist</h5>
            <input type="text" name="txtChecklist" id="nombrePlantilla" />
            <div class="input-field col s12">
                <select id="sel_ter_terceros">
                   
                  <%--  <asp:Repeater ID="rptTerceros" runat="server">
                        <ItemTemplate>
                            <option value="<%# Eval("tercero_codigo") %>">
                                <%# Eval("tercero") %></option>
                        </ItemTemplate>
                    </asp:Repeater>--%>
                </select>
                <label>
                    Cliente</label>
            </div>
        </div>
        <div class="modal-footer">
            <a class="modal-close btn-floating red lighten-2" onclick="cerrarModal('modalChl');">
                <i class="material-icons">cancel</i></a> <a class="modal-close btn-floating blue lighten-2"
                    onclick="crearCL(document.getElementById('nombrePlantilla').value);"><i class="material-icons">
                        done</i></a>
        </div>
    </div>
    <div id="modalChlDup" class="modal modal-color">
        <div class="modal-content">
            <h5>
                Datos Checklist Duplicado</h5>
            <input type="text" name="txtChecklist" id="nombrePlantillaDup" />
            <div class="input-field col s12">
                <select id="sel_ter_tercerosDup">
                    <option value="" disabled selected>-- Seleccione --</option>
                    <asp:Repeater ID="rptTercerosDup" runat="server">
                        <ItemTemplate>
                            <option value="<%# Eval("tercero_codigo") %>">
                                <%# Eval("tercero") %></option>
                        </ItemTemplate>
                    </asp:Repeater>
                </select>
                <label>
                    Cliente</label>
            </div>
        </div>
        <div class="modal-footer">
            <a class="modal-close btn-floating red lighten-2" onclick="cerrarModal('modalChlDup');">
                <i class="material-icons">cancel</i></a> <a class="modal-close btn-floating blue lighten-2"
                    onclick="duplicarCL(document.getElementById('nombrePlantillaDup').value);"><i class="material-icons">
                        done</i></a>
        </div>
    </div>
    <div id="modalSuc" class="modal modal-color">
        <div class="modal-content">
            <h5>
                Datos de Sucursal</h5>
            <input type="text" name="txtSeccionSucursal" id="txtSeccionSucursal" />
        </div>
        <div class="modal-footer">
            <a class="modal-close btn-floating red lighten-2" onclick="cerrarModal('modalSuc');">
                <i class="material-icons">cancel</i></a> <a class="modal-close btn-floating blue lighten-2"
                    onclick="crearSeccionS();"><i class="material-icons">done</i></a>
        </div>
    </div>
    <div id="modalOfi" class="modal modal-color">
        <div class="modal-content">
            <h5>
                Nombre de la Sección</h5>
            <input type="text" name="txtSeccionOficina" id="txtSeccionOficina">
        </div>
        <div class="modal-footer boton-check2">
            <a class="modal-close btn-floating red lighten-2" onclick="cerrarModal('modalOfi');">
                <i class="material-icons">cancel</i></a> <a class="modal-close btn-floating blue lighten-2"
                    onclick="crearSeccionO()"><i class="material-icons">done</i></a>
        </div>
    </div>
    <div id="modalCpt" class="modal modal-color">
        <div class="modal-content">
            <h5>
                Datos de Equipo-Componente</h5>
            <input type="text" name="txtSeccionComponente" id="txtSeccionComponente">
        </div>
        <div class="modal-footer boton-check3">
            <a class="modal-close btn-floating red lighten-2" onclick="cerrarModal('modalCpt');">
                <i class="material-icons">cancel</i></a> <a class="modal-close btn-floating blue lighten-2"
                    onclick="crearSeccionC()"><i class="material-icons">done</i></a>
        </div>
    </div>
    <div id="modalEdl" class="modal modal-color">
        <div class="modal-content">
            <h4>
                Nombre de la Plantilla</h4>
            <input type="text" name="nombreP" id="txtNombrePlantilla" />
        </div>
        <div class="modal-footer boton-checkP">
            <a class="modal-close btn-floating lighten-2 red" onclick="cerrarModal('modalEdl');"><i class="material-icons">cancel</i></a>       
            <a class="modal-close btn-floating blue" onclick="edPl(valor('txtNombrePlantilla'));"><i class="material-icons">done</i></a>
        </div>
    </div>
      
        <!-- MAS MODALES
        <div id="modalE" class="modal">
          <div class="modal-content">
            <div class="">
              <h4>Nombre del Campo</h4>
              <input type="text" name="ListaSelec">
            </div>
            <div class="">
              <input type="text" name="option1" placeholder="opción 1">
              <input type="text" name="option2" placeholder="opcin 2">
            </div>
            <div class="">
              <a class="btn-floating btn-small waves-effect waves-light blue"><i class="material-icons">add</i></a>
            </div>
          </div>
          <div class="modal-footer boton-checkE">
            <a class="modal-close donetxt btn-floating blue"><i class="material-icons">done</i></a>
          </div>
        </div>
-->
    <ul id="slide-out" class="sidenav">
        <li>
            <nav>
              <div class="nav-wrapper blue">
                  <div class="input-field">
                    <input id="search" type="search" placeholder="Buscar"  onkeyup="return escribir(event);">
                    <label class="label-icon" for="search"><i class="material-icons">search</i></label>
                    <i class="material-icons">close</i>
                  </div>
              </div>
            </nav>
        </li>
        <li style="padding-left: 10px;">Plantillas Existentes: </li>
        <div id="menu" style="height: 37em; overflow-y: scroll;">
        
        </div>
        <%--<asp:Repeater ID="rptListas" runat="server">
            <ItemTemplate>
                <li><a id="list" href='checkdest.aspx?id=<%# Eval("id") %>'><i class="material-icons">
                    description</i><%# Eval("lista") %></a></li>
            </ItemTemplate>
        </asp:Repeater>--%>
    </ul>
</asp:Content>
