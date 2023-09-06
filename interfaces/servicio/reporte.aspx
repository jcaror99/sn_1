<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="reporte.aspx.vb" Inherits="website.samm_web.interfaces_servicio_reporte"
    MaintainScrollPositionOnPostback="true" EnableEventValidation="false" ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Reporte | SAMM</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <link href="~/css/bs/bootstrap.css" type="text/css" rel="Stylesheet" />
    <link href="~/css/bs/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
    <link href="~/css/bs/clockpicker.css" rel="stylesheet" type="text/css" />
    <link href="~/css/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="~/css/samm/general.css" rel="stylesheet" type="text/css" />
</head>
<body>
   <form id="frm_main" runat="server">
    <asp:HiddenField ID="hdd_oriY" runat="server" Visible="true"  ></asp:HiddenField >
    <asp:HiddenField id="hdd_oriX" runat="server"  Visible="true"  ></asp:HiddenField >
        <div class="repCabecera">
            <asp:HyperLink ID="hyp_link" runat="server">
                <asp:Image runat="server" ID="img_sammLogo" src="../../images/reporteUnificado/logotipo.png"
                    alt="logoReporte" CssClass="img_sammLogo" />
            </asp:HyperLink>
        </div>
        <div class="informationOt flex">
            <div runat="server" id="sec_infoOT" class="grid alert alert-warning flexH">
                <div class="flex">
                    <label runat="server" id="lbl_infoOT" style="display: inline-flex">
                    </label>
                    <p runat="server" id="txt_descripcionOT" style="display: inline-flex;">
                    </p>
                    <asp:HyperLink ID="lnk_equipo" runat="server">
                <img src="../../images/reporteUnificado/equipos.png" alt="" width="37">
            </asp:HyperLink>
                </div>
            </div>
            <div class="btnVisualizacion flexH">
                <div style="width: 100%">
                    <input runat="server" type="text" class="hidden" id="txt_columnasH" />
                    <label class="text-primary" style="float: right;">
                        Columnas</label>
                    <asp:RadioButtonList RepeatDirection="Horizontal" ID="rbl_columnas" CssClass="rbl_columnas RBL"
                        runat="server">
                        <asp:ListItem Selected="True" Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
        </div>
        <div class="main-container">
            <%--seccion infobasica--%>
            <div id="div_info" runat="server" class="reporteItem">
                <div class="main-information">
                    <h4>
                        <label id="lbl_secinfo" runat="server" class="text-primary">
                        </label>
                    </h4>
                </div>
                <div class="fBloque">
                    <div class="fBloqueHijo">
                        <label id="lbl_inicio" runat="server" class="control-label text-primary">
                        </label>
                        <div class="fContenedor">
                            <asp:TextBox ID="txt_inicio" runat="server" AutoPostBack="true" CssClass="form_datetime form-control grid"
                                autocomplete="off"></asp:TextBox>
                            <asp:TextBox runat="server" ID="txt_horaInicio" onChange="validateHhMm(this)" class="form-control grid time"></asp:TextBox>
                        </div>
                    </div>
                    <div class="fBloqueHijo">
                        <label id="lbl_fin" runat="server" class="text-primary">
                        </label>
                        <div class="fContenedor">
                            <asp:TextBox ID="txt_fin" runat="server" CssClass="form_datetime form-control grid"
                                autocomplete="off" AutoPostBack="true"></asp:TextBox>
                            <asp:TextBox runat="server" ID="txt_horaFin" onChange="validateHhMm(this)" class="form-control grid time"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div>
                    <div>
                        <div>
                            <label id="lbl_trabajos" runat="server" class="bloque text-primary">
                            </label>
                            <div>
                                <asp:TextBox ID="txt_trabajos" runat="server" TextMode="MultiLine" oninput='this.style.height = "";this.style.height = this.scrollHeight + "px"' CssClass="form-control bloque txt_trabajos"
                                    Style="resize: vertical;"></asp:TextBox>
                                <div runat="server" id="div_defectoSec">
                                    <span id="txt_defecto"><i class="fa fa-file-text-o icon-def" aria-hidden="true" style="color: grey;
                                        position: relative; top: -22px; left: 100%; margin-left: -20px;"></i></span>
                                </div>
                            </div>
                            <div class="div_defecto" runat="server" id="div_txtDefecto">
                                <asp:RadioButtonList ID="rbl_defecto" runat="server" AutoPostBack="true" class="RBL"></asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div>
                        <div>
                            <label id="lbl_compromisos" runat="server" visible="false" class="bloque text-primary">
                            </label>
                            <div>
                                <asp:TextBox ID="txt_compromisos" runat="server" TextMode="MultiLine"
                                oninput='this.style.height = "";this.style.height = this.scrollHeight + "px"' Visible="false"
                                    CssClass="form-control bloque" Style="resize: vertical;"></asp:TextBox>
                                    

                                   <asp:CheckBox ID="chb_recordarCompromiso" runat="server" visible="False" CssClass="lbl" style="float:right" />

                                    
                                <div runat="server" id="div_defectoCom">
                                    <span id="txt_defectoCom"><i class="fa fa-file-text-o icon-def" aria-hidden="true"
                                        style="color: grey; position: relative; top: -22px; left: 100%; margin-left: -20px;">
                                    </i></span>
                                </div>
                            </div>
                            <div class="div_defectoCom" runat="server" id="div_comDefecto">
                                <asp:RadioButtonList ID="rbl_defectoCom" runat="server" AutoPostBack="true" class="RBL">
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                </div>
                <%--seccion de codigo desde infobasica--%>
              <div>
                    <div>
                        <div>
                            <label id="lbl_codigo" runat="server" visible="false" class="bloque text-primary"></label>
                            <div>
                                <asp:TextBox ID="txt_codigo" runat="server" Visible="false"
                                    CssClass="form-control bloque" Style="resize: vertical;"></asp:TextBox>
                                <div runat="server" id="div_defectoCod">
                                </div>
                            </div>
                            <div class="div_defectoCod" runat="server" id="div_codDefecto">
                                <asp:RadioButtonList ID="rbl_defectoCod" runat="server" AutoPostBack="true" class="RBL">
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                </div>
                  <%--seccion de comentario desde infobasica--%>
                <div>
                    <div>
                        <div>
                            <label id="lbl_comentario" runat="server" visible="false" class="bloque text-primary"></label>
                            <div>
                                <asp:TextBox ID="txt_comentario" runat="server" TextMode="MultiLine"
                                oninput='this.style.height = "";this.style.height = this.scrollHeight + "px"' Visible="false"
                                    CssClass="form-control bloque" Style="resize: vertical;"></asp:TextBox>
                                <div runat="server" id="div_defectoComentario">
                                </div>
                            </div>
                            <div class="div_defectoComentario" runat="server" id="div_comentarioDefecto">
                                <asp:RadioButtonList ID="rbl_defectoComentario" runat="server" AutoPostBack="true" class="RBL">
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                </div>

                <div>
                    <div>
                        <div>
                            <label id="lbl_recomendaciones" runat="server" visible="false" class="bloque text-primary">
                            </label>
                            <div>
                                <asp:TextBox ID="txt_recomendaciones" runat="server" TextMode="MultiLine"
                                oninput='this.style.height = "";this.style.height = this.scrollHeight + "px"' Visible="false"
                                    CssClass="form-control bloque" Style="resize: vertical;"></asp:TextBox>
                                    
                                    <asp:CheckBox ID="chb_recordarRecomendaciones" runat="server" visible="False" CssClass="lbl" style="float:right" />

                                    
                                    
                                    
                                <div runat="server" id="div_defectoRec">
                                    <span id="txt_defectoRec"><i class="fa fa-file-text-o icon-def" aria-hidden="true"
                                        style="color: grey; position: relative; top: -22px; left: 100%; margin-left: -20px;">
                                    </i></span>
                                </div>
                            </div>
                            <div class="div_defectoRec" runat="server" id="div_recDefecto">
                                <asp:RadioButtonList ID="rbl_defectoRec" runat="server" AutoPostBack="true" class="RBL">
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div>
                    <div>
                        <div>
                            <label id="lbl_diagnostico" runat="server" visible="false" class="bloque text-primary">
                            </label>
                            <div>
                                <asp:TextBox ID="txt_diagnostico" runat="server" TextMode="MultiLine"
                                oninput='this.style.height = "";this.style.height = this.scrollHeight + "px"' Visible="false"
                                    CssClass="form-control bloque" Style="resize: vertical;"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--Seccion Tecnicos --%>
            <div id="div_tecnicos" runat="server" class="reporteItem">
                <div>
                    <h4>
                        <label id="lbl_sectecnicos" runat="server" class="text-primary">
                        </label>
                    </h4>
                </div>
                <div>
                    <label id="lbl_tecnico" runat="server" class="bloque text-primary">
                    </label>
                     <asp:CheckBox runat="server" ID="chb_grupo"  CssClass=" lbl" AutoPostBack="true" style="float:right"/>
                                  <br />  
                                                 
                    <asp:DropDownList ID="drp_tecnicos" runat="server" AutoPostBack="true" CssClass="bloque form-control">
                    </asp:DropDownList>
                </div>
                <div>
                    <asp:GridView ID="grd_tecnicos" runat="server" AutoGenerateColumns="false" ShowHeader="false"
                        ShowFooter="false" BorderStyle="None" GridLines="None">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <label id="lbl_tecnico" runat="server" class="text-primary">
                                        <%# Eval("tecnico") %></label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="imb_eliminar" runat="server" ImageUrl="~/images/botones/btnelimina.png"
                                        CommandName="eliminar" CommandArgument='<%# Eval("id") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <%--Sección lista de chequeo --%>
            <div id="div_chequeo" runat="server" class="reporteItem">
                <div>
                    <h4>
                        <label id="lbl_secchequeo" runat="server" class="text-primary">
                        </label>
                    </h4>
                </div>
                <div>
                    <label id="lbl_chequeo" runat="server" class="bloque text-primary">
                        Listas de chequeo</label>
                    <asp:DropDownList ID="drp_chequeo" runat="server" AutoPostBack="true" CssClass="form-control bloque">
                    </asp:DropDownList>
                    <label id="lbl_mensajechequeo" runat="server" class="text-warning bloque">
                    </label>
                </div>
                <div>
                    <asp:GridView ID="grd_chequeo" runat="server" Width="100%" AutoGenerateColumns="false"
                                        ShowHeader="false" ShowFooter="false" BorderStyle="None" GridLines="None">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <label id="lbl_atributo" runat="server" class="text-primary">
                                                        <%#Eval("cat_atributo_atributo") %></label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                <asp:RegularExpressionValidator ID="rev_numerico" Enabled="False" ControlToValidate="txt_valor" runat="server"  ErrorMessage="<b>Solo valores numericos</b>"  ValidationExpression="^(\+|-)?[0-9]{0,}((\.){1}[0-9]{1,}){0,1}$" ></asp:RegularExpressionValidator>
                                                    <div class="flex-container" style="border-bottom:5px;">
                                                        <asp:HiddenField ID="hdd_id" runat="server" Value='<%#Eval("id") %>' />
                                                        <asp:HiddenField ID="hdd_idatributo" runat="server" Value='<%#Eval("id_atributo") %>' />
                                                        <asp:TextBox ID="txt_valor" runat="server" CssClass="form-control" ValidationGroup='atr'></asp:TextBox>
                                                      <asp:TextBox ID="txt_valorDefecto" runat="server" CssClass="txt"  Visible="false"  Text='<%#Eval("valor") %>' ></asp:TextBox>
                                                        <asp:DropDownList ID="drp_valor" runat="server" CssClass="form-control" ValidationGroup='atr'></asp:DropDownList>
                                                        <asp:CheckBoxList ID="chb_valor" runat="server" RepeatColumns="3" CssClass="form-control" ValidationGroup='atr'></asp:CheckBoxList>
                                                        <asp:RequiredFieldValidator ID="rfv_texto" runat="server" ControlToValidate="txt_valor"  ValidationGroup='atr' CssClass='lbl_mensaje' ErrorMessage="<p style='margin-top:5px'> * </p>"></asp:RequiredFieldValidator>
                                                        <asp:RequiredFieldValidator ID="rfv_lista" runat="server" ControlToValidate="drp_valor"  InitialValue="0" ValidationGroup='atr' CssClass='lbl_mensaje' ErrorMessage="<p style='margin-top:5px'> * </p>"></asp:RequiredFieldValidator>
                                                        <asp:TextBox ID="txtDescList" runat="server" TextMode="multiline" 
                                                        oninput='this.style.height = "";this.style.height = this.scrollHeight + "px"' CssClass="txt_textarea" Columns="50" Rows="2" ValidationGroup='atr'></asp:TextBox>
                                                        <asp:TextBox runat="server" ID="txt_hora" onChange="validateHhMm(this)" ValidationGroup='atr'></asp:TextBox>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                </div>
            </div>
            <%-- Sección Tiempos --%>
            <asp:Panel ID="Panel1" runat="server" DefaultButton="imb_actualizar">
            <div id="div_tiempos" runat="server" class="reporteItem">
                <label runat="server" id="lbl_tiemposMsg" style="color: Red; font-size: 0.7em;" visible="false">
                </label>
                <div>
                    <h4>
                        <label id="lbl_sectiempos" runat="server" class="text-primary"></label>
                    </h4>
                </div>

                  <%--seccion de tempario desde actividades--%>
              <div>
                    <div>
                        <div>
                            <label id="lbl_tempario" runat="server" visible="true" class="bloque text-primary">
                            </label>
                            <div>
                                <div id="div_menu" class="menua" runat="server" visible="true">
                                  </div>
                                <div runat="server" id="div_defectotempario">
                                </div>
                            </div>
                            <div class="div_defectoCod" runat="server" id="div_tempariodefecto">
                                <asp:RadioButtonList ID="rfd_defectoCod" runat="server" AutoPostBack="true" class="RBL">
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                </div>   
                <div>
                
                 <label id="lbl_actividad" runat="server" class="bloque text-primary" >
                    </label>
                    
                 <label id="lbl_cantidad" runat="server" class="bloque text-primary" visible="false">Cantidad
                    </label>
                    <asp:CheckBox runat="server" ID="cbl_mostrarTodo" Text="" CssClass="checkTexto" AutoPostBack="true"
                        Checked="false" />
                    <asp:CheckBox runat="server" ID="cbl_selecTodo" Text="" CssClass="checkTexto" AutoPostBack="true"
                        Checked="false" />
                        
                   
                    <asp:CheckBoxList ID="cbl_actividades" runat="server" AutoPostBack="True" EnableViewState="True"
                        Visible="false">
                    </asp:CheckBoxList>
                    <asp:CheckBoxList ID="cbl_actividadesTodas" runat="server" AutoPostBack="True" EnableViewState="True"
                        Visible="false">
                    </asp:CheckBoxList>
                    
                                        
                    <asp:GridView runat="server" ID="grd_actividadesMin">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <label id="lbl_actividad" runat="server" class="text-primary">
                                        <%# Eval("actividad") %></label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox runat="server" ID="chb_actividad" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <div runat="server" id="sec_actividades" class="autocomplete" style="">
                        <asp:TextBox runat="server" class="form-control bloque" ID="txt_actividades" ClientIDMode="Static"
                            autocomplete="off"></asp:TextBox>
                        <%--<input runat="server" id="txt_actividades" class="form-control bloque" type="text" name="catalogo" placeholder="Catalogo" autocomplete="off" />--%>
                    </div>
                    <asp:GridView runat="server" Width="83%" ID="grd_actividadesReportes" CssClass="" Visible="false"  AutoGenerateColumns="false" ShowHeader="false" ShowFooter="false" BorderStyle="None" >
                     <Columns>
                                                  
                              <asp:TemplateField >
                                <ItemTemplate>
                                  <asp:Label runat="server" ID="lbl_id" Visible="false" Text=<%#Eval("idCatalogo")%>></asp:Label>
                                
                                  <asp:Label runat="server" ID="lbl_valor" Visible="false" Text=<%#Eval("codigoInventario")%> ></asp:Label>
                                    <asp:CheckBox runat="server" CssClass="checkTextoActividades" ID="chb_actividad" Text=<%# Eval("textoDescripcion") %>  AutoPostBack="true" OnCheckedChanged="cbl_actividades_SelectedIndexChanged"  />
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField>
                                <ItemTemplate>
                                          <asp:TextBox runat="server" ID="txt_tiempo" Height="100%" Width="50%" class="form-control txt_numero" Visible=<%# Eval("tiempoEstado") %>  ></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                     </Columns>
                    </asp:GridView>
                    
                    <%--<asp:TextBox ID="txt_actividades" runat="server" CssClass="autocompleteAct bloque form-control"
                        AutoCompleteType="Disabled" Autocomplete="off"></asp:TextBox>--%>
                    <div class="drp_lista autocomplete-box">
                    </div>
                    <asp:TextBox runat="server" class="hidden" ID="hActividad" ClientIDMode="Static"></asp:TextBox>
                </div>
                <div>
                    <asp:GridView ID="grd_tiempos" runat="server" AutoGenerateColumns="false" Width="100%"
                        ShowHeader="false" ShowFooter="false" BorderStyle="None" GridLines="None">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:label id="lbl_actividad" runat="server" class="text-primary" Text=<%# Eval("actividad") %>></asp:label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <label id="lbl_inicioActividad" runat="server" class="text-primary"></label>
                                        <asp:TextBox runat="server" ID="txt_horaInicioActividad" onChange="validateHhMm(this)" class="form-control grid time" Text='<%# Eval("Hora_inicio") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                <label id="lbl_duracionActividad" runat="server" class="text-primary"></label>
                                <asp:TextBox runat="server" ID="txt_duracion" Text='<%# Eval("duracion") %>' CssClass="validecimal form-control"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                                <asp:TemplateField>
                                <ItemTemplate>
                                <label id="lbl_finActividad" runat="server" class="text-primary"></label>
                                <asp:TextBox runat="server" ID="txt_horaFinActividad" onChange="validateHhMm(this)" class="form-control grid time" Text='<%# Eval("Hora_fin") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="imb_eliminar" runat="server" CommandName="eliminar" ImageUrl="~/images/botones/btnelimina.png"
                                        CommandArgument='<%# Eval("id") %>' />
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                  <div>
                     <asp:ImageButton ID="imb_actualizarBTN" runat="server" CommandName="eliminar" ImageUrl="~/images/botones/reloadIDAEJ.png"/>
                 </div>
                </div>
            </div>
            <asp:Button ID="imb_actualizar" runat="server" CommandName="actualizar" style="display:none;"/>
            </asp:Panel>
            <%--Seccion Horometro --%>
            <div id="div_sec_horometro" runat="server" class="reporteItem">
                <div>
                    <h4>
                        <label id="lbl_name_horometro" runat="server" class="text-primary">
                        </label>
                    </h4>
                </div>
                <div>
                    <label id="lbl_horometro" runat="server" class="bloque text-primary">
                    </label>
                    <asp:TextBox ID="txt_horometro" runat="server" CssClass="validecimal bloque  form-control"></asp:TextBox>
                </div>
            </div>
            <%--Seccion Estado --%>
            <div id="div_Estado" runat="server" class="reporteItem">
                <div>
                    <h4>
                        <label id="lbl_estado" runat="server" class="text-primary">
                        </label>
                    </h4>
                </div>
                <!-- <div>
                    <label id="lbl_horometross" runat="server" class="bloque text-primary">
                    </label>
                    <asp:TextBox ID="txt_horometrossss" runat="server" CssClass="validecimal bloque  form-control"></asp:TextBox>
                </div> -->
                <div>
                    <label runat="server" id="lbl_sinEquipos">
                    </label>
                    
                    <asp:Repeater ID="rpt_componentes" runat="server">
                        <ItemTemplate>
                            <asp:HiddenField ID="hd_idEquipo" runat="server" />
                            <dl style="display: block; margin: 1em 0px 1em 5%">
                                <dt style="display: block; margin: 1em 0px 1em 0%">
                                    <asp:Label ID="lbl_nombrecomponente" runat="server" class="bloque text-primary" Visible="true">
                                                </asp:Label></dt>
                                <dd id="dd_drp_estado" runat="server">
                                    <asp:DropDownList ID="drp_equipo_componente" runat="server" CssClass="form-control"
                                        Width="90%">
                                    </asp:DropDownList>
                                </dd>
                            </dl>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <%--Seccion variables --%>
            <div id="div_variables" runat="server" class="reporteItem" >
                <div>
                    <h4>
                        <label id="lbl_secvariables" runat="server" class="text-primary">
                        </label>
                    </h4>
                </div>
                <div>
                    <label runat="server" id="lbl_sinVariables"> 
                    </label>
                    <asp:Repeater ID="rpt_variables" runat="server" onitemdatabound="rpt_variables_ItemDataBound">
                            <ItemTemplate>
                            <dl style="display: block;margin: 1em 0px 1em 10%">
                            <dt style="display: block;margin: 1em 0px 1em -5%">
                                <asp:Label id="lbl_nombreEquipo" runat="server" class="bloque text-primary" visible="true"></asp:Label>
                            </dt>                            
                            <dd>
                            
                       <asp:GridView ID="grd_atributosVariables" runat="server" AutoGenerateColumns="false" Width="100%" ShowHeader="false" ShowFooter="false" BorderStyle="None" GridLines="None" >
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <label id="lbl_atributosVariables" runat="server" class="text-primary">
                                        <%# Eval("cat_atributo_atributo")%></label>
                                    <asp:HiddenField ID="hdd_id" runat="server" Value='<%# Eval("id_atributo") %>' />
                                    <asp:HiddenField ID="hdd_detalle" runat="server" Value='<%# Eval("detalle") %>' />
                                                        <asp:HiddenField ID="hdd_minimo" runat="server" Value='<%#Eval("valorminimo") %>' />
                                                        <asp:HiddenField ID="hdd_maximo" runat="server" Value='<%#Eval("valormaximo") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_valorVariables" runat="server" CssClass="validecimal  form-control" data-toggle="popover"
                                        data-trigger="focus" Width="90%"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:RequiredFieldValidator ID="rfv_textoVariables" runat="server" ControlToValidate="txt_valorVariables"  ValidationGroup='atr' CssClass='lbl_mensaje' ErrorMessage="<p style='margin-top:5px'> * </p>"></asp:RequiredFieldValidator>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <label id="lbl_unidadVarible" runat="server" class="text-primary">
                                        <%# Eval("unidad") %></label></ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                       </asp:GridView>
                       </dd> 
                            </dl>
                            </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <%--Seccion Gastos --%>
            <div id="div_gastos" runat="server" class="reporteItem">
                <div>
                    <h4>
                        <label id="lbl_secgastos" runat="server" class="text-primary">
                        </label>
                    </h4>
                </div>
                <div>
                    <label id="lbl_subCat" runat="server" class="bloque text-primary">
                    </label>
                    <asp:DropDownList ID="drp_subCat" runat="server" AutoPostBack="true" CssClass="form-control">
                    </asp:DropDownList>
                </div>
                <div>
                    <label id="lbl_gastos" runat="server" class="bloque text-primary">
                    </label>
                    <asp:DropDownList ID="drp_gastos" runat="server" AutoPostBack="true" CssClass="form-control">
                    </asp:DropDownList>
                </div>
                <div>
                    <asp:GridView ID="grd_gastos" runat="server" AutoGenerateColumns="false" Width="100%"
                        ShowFooter="false" BorderStyle="None" GridLines="None">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <label id="lbl_codigoinventario" runat="server" class="text-primary">
                                        <%#Eval("codigoinventario")%></label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <label class="text-primary">
                                        Detalle</label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_gastoDescripcion" runat="server" CssClass="form-control" Text='<%#Eval("gasto")%>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <label class="text-primary">
                                        Cantidad</label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_cantidad" runat="server" CssClass="validecimal form-control"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <label class="text-primary">
                                        Valor</label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_valor" runat="server" CssClass="validecimal form-control"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="imb_eliminar" runat="server" CommandName="eliminar" ImageUrl="~/images/botones/eliminar.gif"
                                        CommandArgument='<%# Eval("id") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <%--Seccion Fallas --%>
            <div id="div_fallas" runat="server" class="reporteItem">
                <div>
                    <h4>
                        <label id="lbl_secfalla" runat="server" class="text-primary">
                        </label>
                    </h4>
                    <label runat="server" id="lbl_sinFallas">
                    </label>
                </div>
                <div>
                    <label id="lbl_falla" runat="server" class="text-primary">
                    </label>
                    <asp:HiddenField ID="hd_idCatEquipo" runat="server" />
                    <%--<asp:DropDownList ID="drp_falla" runat="server" AutoPostBack="true" CssClass="bloque form-control">
                    </asp:DropDownList>--%>
                </div>
                <div>
                    <asp:GridView ID="grd_falla" runat="server" AutoGenerateColumns="false" Width="100%"
                        ShowHeader="false" ShowFooter="false" BorderStyle="None" GridLines="None">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox runat="server" ID="cbl_falla" TabIndex='<%#Eval("id_falla")%>' OnCheckedChanged="cbl_falla_CheckedChanged" Text='<%#Eval("falla")%>' class="text-primary" AutoPostBack="true" Checked="false" />
                                    <br />
                                    <table>
                                        <tr>
                                            <td style="padding-left: 20px;">
                                                <asp:Label id="lbl_falla_causas" runat="server" class="text-primary"></asp:Label>
                                            </td>
                                            <td style="padding-left: 20px;">
                                                <asp:Label id="lbl_falla_efectos" runat="server" class="text-primary"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding-left: 20px;">
                                                <asp:CheckBoxList ID="cbl_falla_causa" runat="server" Visible="false" class="text-primary"></asp:CheckBoxList>
                                            </td>
                                            <td style="padding-left: 20px;">
                                                <asp:CheckBoxList ID="cbl_falla_efecto" runat="server" Visible="false" class="text-primary"></asp:CheckBoxList>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <%--Sección Sugeridos --%>
            <div id="div_sugeridos" runat="server" class="reporteItem">
                <div>
                    <h4>
                        <label id="lbl_sugeridos" runat="server" class="text-primary">
                        </label>
                    </h4>
                </div>
                <div>
                    <label id="lbl_modelos" runat="server" class="control-label text-primary">
                        Modelo</label>
                    <asp:DropDownList ID="drp_modelos" runat="server" CssClass="form-control bloque">
                    </asp:DropDownList>
                    <label id="lbl_tipoDocumento" runat="server" class="control-label text-primary">
                        Tipo de documento</label>
                    <asp:DropDownList ID="drp_documento" runat="server" CssClass="form-control bloque">
                    </asp:DropDownList>
                    <label id="lbl_tipoCatalogo" runat="server" class="control-label text-primary">
                        Tipo catalogo</label>
                    <asp:DropDownList ID="drp_tipoCatalogo" runat="server" AutoPostBack="true" CssClass="form-control bloque">
                    </asp:DropDownList>
                    <label id="lbl_catalogo" runat="server" class="control-label text-primary">
                        Catalogo</label><br />
                    <asp:CheckBoxList ID="cbl_catalogos" runat="server" AutoPostBack="True" EnableViewState="True"
                        Visible="false">
                    </asp:CheckBoxList>
                    <div runat="server" id="txt_sugeridos" class="autocomplete" style="">
                        <input runat="server" id="txt_listaCatalogos" class="form-control bloque" type="text"
                            name="catalogo" placeholder="Catalogo" autocomplete="off" />
                    </div>
                    <label id="lbl_cantidadCatalogo" runat="server" class="text-primary" style="font-size: 10px;
                        float: right;" visibl="False">
                    </label>
                    <br />
                    <asp:TextBox runat="server" class="hidden" ID="hCatalogo" ClientIDMode="Static">
                    </asp:TextBox>
                    <%--<asp:TextBox ID="txt_catalogosSug" runat="server" CssClass="autocompleteSug bloque form-control"
                        AutoCompleteType="Disabled" Autocomplete="off"></asp:TextBox>--%>
                    <%-- <div class="drp_listaSug autocomplete-box"></div>--%>
                    <%--<asp:DropDownList ID="drp_catalogo" runat="server" CssClass="form-control bloque" onchange="devolucion()">
                    </asp:DropDownList>--%>
                    <label runat="server" id="lbl_sugeridoRespuesta">
                    </label>
                    <br />
                    <br />
                    <div>
                    </div>
                    <div runat="server" id="msg_infoSug" class="alert alert-info">
                    </div>
                    <div runat="server" id="msg_errorSug" class="alert alert-danger">
                    </div>
                    <div runat="server" id="grd_catalogo">
                    <asp:GridView ID="grd_catalogosSug" runat="server" AutoGenerateColumns="false" Width="100%"
                            ShowHeader="True" ShowFooter="false" BorderStyle="None" GridLines="None">
                            <Columns>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <label>
                                            Tipo de documento</label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <label id="lbl_tipoDocumento" runat="server" class="text-primary">
                                            <%#Eval("nombreDocumento")%></label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <label>
                                            Catalogo</label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <label id="lbl_catalogo" runat="server" class="text-primary">
                                            <%#Eval("catalogo")%></label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <label>
                                            Cantidad</label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:TextBox ID="txt_cantidad" runat="server" Text='<%# Eval("cantidad") %>' CssClass="validecimal form-control"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:ImageButton ID="imb_eliminar" runat="server" CommandName="eliminar" ImageUrl="~/images/botones/btnelimina.png"
                                            CommandArgument='<%# Eval("id") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <%--Seccion tarea--%>
            <div id="div_tarea" runat="server" class="reporteItem" visible="false">
                <div>
                    <h4>
                        <label id="lbl_tareas" runat="server" class="text-primary"></label>
                    </h4>
                </div>
                <div>
                    <div>
                        <div class="row" runat="server" id="crearTarea_div" style="margin-top: 10px;">
                            <div class="col-sm-12">
                                <div class="form-inline">
                                    <div class="form-group">
                                        <label id="lbl_catalogosPlaneados" runat="server" class="control-label text-primary" for="drp_catalogosPlaneados"></label>
                                        <asp:DropDownList ID="drp_catalogosPlaneados" runat="server" AutoPostBack="false" CssClass="bloque form-control"></asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label id="lbl_tareaNombre" runat="server" class="control-label text-primary" for="txt_tareaNombre"></label>
                                        <asp:TextBox ID="txt_tareaNombre" runat="server" Text='' CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label id="lbl_tareaPorcentajeAvance" runat="server" class="control-label text-primary" for="txt_tareaPorcentajeAvance">Avance</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="txt_tareaPorcentajeAvance" runat="server" Text='' MaxLength='100' CssClass="validecimal form-control samm-w-25"></asp:TextBox>
                                            <span class="input-group-addon" id="basic-addon1">%</span>
                                        </div>
                                    </div>
                                    <button type="button" id="btn_agregarTarea" runat="server" class="btn btn-default btn-lg" disabled="disabled">
                                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                                        <span id="lbl_agregarTarea" runat="server">Avance</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div>
                    <h5>
                        <label id="lbl_porcentajes" runat="server" class="text-primary"></label>
                    </h5>
                </div>
                <div>
                    <asp:GridView ID="grd_tareas" runat="server" AutoGenerateColumns="false" ShowHeader="false"
                        ShowFooter="false" BorderStyle="None" GridLines="None">
                        <Columns>
                            <asp:TemplateField ItemStyle-CssClass="samm-prb-10 samm-w-75">
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_tareaNombre" runat="server" Text='<%#Eval("tarea") %>' CssClass="form-control"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-CssClass="samm-prb-10 samm-w-25">
                                <ItemTemplate>
                                    <div class="input-group">
                                        <asp:TextBox ID="txt_tareaPorcentajeAvance" runat="server" Text='<%#Eval("porcentajeAvance") %>' MaxLength='100' CssClass="validecimal form-control"></asp:TextBox>
                                        <span runat="server" class="input-group-addon" >%</span>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-CssClass="samm-prb-10">
                                <ItemTemplate>
                                    <asp:ImageButton ID="imb_eliminarTarea" runat="server" CommandName="eliminar" ImageUrl="~/images/botones/eliminar.gif" CommandArgument='<%# Eval("id") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HiddenField ID="tarea_id" runat="server" Value='<%#Eval("id") %>' />
                                    <asp:HiddenField ID="id_catalogo" runat="server" Value='<%#Eval("id_catalogo") %>' />
                                    <asp:HiddenField ID="tarea_active" runat="server" Value='<%#Eval("active") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <script type="text/javascript">
                let drp = document.getElementById('drp_catalogosPlaneados')
                let tarea = document.getElementById('txt_tareaNombre');
                let avance = document.getElementById('txt_tareaPorcentajeAvance');
                let boton = document.getElementById('btn_agregarTarea');

                function f_activarBtnAgregarTarea() {
                    if ((drp.value != "" && drp.value > 0) && tarea.value.trim() != "" && avance.value.trim() != "") {
                        boton.removeAttribute("disabled");
                    } else {
                        boton.setAttribute("disabled", "disabled");
                    }
                }

                drp.addEventListener("change", (event) => {
                    f_activarBtnAgregarTarea();
                });

                tarea.addEventListener("input", f_activarBtnAgregarTarea);
                avance.addEventListener("input", f_activarBtnAgregarTarea);

            </script>
       
            <%--Seccion evaluacion--%>
            
            <div id="div_evaluacion" runat="server" class="reporteItem">
                <div>
                    <h4>   
                    
                        <label id="lbl_evaluacion" runat="server" class="text-primary">
                        </label>
                    </h4>
                </div>
                 <div>
                    <label id="lbl_encuestado" runat="server" class="bloque text-primary">
                    </label>
                    <asp:TextBox ID="txt_encuestado" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
               <div>
                    <label id="lbl_tipoevaluacion" runat="server" class="text-primary">
                    </label>
                    <asp:DropDownList ID="drp_evaluacion" runat="server" AutoPostBack="true" CssClass="bloque form-control">
                    </asp:DropDownList>
                </div>
                <div>
                      <asp:DataList ID="dtlDatos" runat="server" ShowHeader="False">
                                              
                        <ItemTemplate>
                        <asp:Label ID="lbl_id"  runat="server" Visible="false" Text='<%#Eval("id") %>'></asp:Label>
                         <div>
                         <h5>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("pregunta") %>' CssClass="bloque text-primary"></asp:Label>
                          </h5></div>
                         <div>
                        <asp:RadioButtonList ID="rblOpciones" runat="server" RepeatDirection="Vertical"
                        RepeatLayout="Flow" CssClass="rbl_opciones">
                        </asp:RadioButtonList>

                         </div>
                        </ItemTemplate>
                        </asp:DataList>
                </div>
                <div>
                <asp:Label ID="lbl_observaciones" runat ="server" Text="Observaciones" class="bloque text-primary" ></asp:Label>
                 <asp:TextBox ID="tbox_observaciones" runat="server" TextMode="MultiLine" oninput='this.style.height = "";this.style.height = this.scrollHeight + "px"' CssClass="form-control bloque txt_trabajos"
                                    Style="resize: vertical;"></asp:TextBox>
                </div>
            </div>
            
            <div>
           
            
            
            <%--Seccion canal de servicio --%>
            <div id="div_canalServicio" runat="server" class="reporteItem">
                <div>
                    <h4>
                        <label id="lbl_canalServicio" runat="server" class="text-primary">
                        </label>
                    </h4>
                    <label runat="server" id="Label2">
                    </label>
                </div>
                <div>
                    <label id="lbl_tipoCanalServicio" runat="server" class="text-primary">
                    </label>
                    <asp:DropDownList ID="drp_canalServicio" runat="server" AutoPostBack="true" CssClass="bloque form-control">
                    </asp:DropDownList>
                </div>
            </div>
            <style>
                    border-bottom: 1px solid #d4d4d4;
                }
                .autocomplete-items div:hover
                {
                    /*when hovering an item:*/
                    background-color: #e9e9e9;
                }
                .autocomplete-active
                {
                    /*when navigating through the items using the arrow keys:*/
                    background-color: DodgerBlue !important;
                    color: #ffffff;
                }
                @media (max-width: 600px)
                {
                    .adjust
                    {
                        margin: 10px 5px;
                        width: 130px;
                        font-weight: bold;
                    }
                }
            </style>
            <div runat="server" id="msg_Info" class="alert alert-info">
            </div>
            <div runat="server" id="msg_Error" class="alert alert-danger">
            </div>
                    
            
            <!-- se crea el boton archivos -->
            <div>
                <div>
                    <div id="div_Archivo" class="menua" runat="server">
                                <asp:LinkButton ID="lnk_Archivo" runat="server" CssClass="btn btn-lg active btn-primary adjust ofhidden lnk_guardar"
                                Style="padding: 5px;margin: 0px 100% 0px 0px;" ValidationGroup='atr'>   
                                                 
                                <i class="fa fa-files-o fa-2x" aria-hidden="true"></i>
                                <span runat="server" id="Span2" class="loaderG"><i class="fa fa-files-o fa-2x" aria-hidden="true"></i></span>
                                Archivos
                                </asp:LinkButton>
                    </div>   
                        <div runat="server" id="div2">
                    </div>         
                </div>
                <div class="div_defectoCod" runat="server" id="div3">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" class="RBL">
                    </asp:RadioButtonList>
                </div>
            </div>
            
            
            
             <div class="center" style="width: 100%;">  

                <asp:LinkButton ID="lnk_guardar" runat="server" CssClass="btn btn-lg active btn-primary adjust ofhidden lnk_guardar"
                    Style="padding: 5px;" >
                    <span runat="server" id="saveIcon" class="saveIcon"><i runat="server" class="fa fa-floppy-o fa-2x">
                    </i></span><span runat="server" id="loaderG" class="loaderG"><i class="fa fa-spinner fa-spin fa-2x"
                        aria-hidden="true"></i></span>Guardar
                </asp:LinkButton>
                <asp:LinkButton runat="server" ID="lnk_firmar" class="btn btn-lg active btn-success adjust ofhidden lnk_firmar"
                    Style="padding: 5px;" ValidationGroup='atr'>
                    <span runat="server" id="signIconI" class="signIconI"><i class="fa fa-pencil-square-o fa-2x">
                    </i></span><span runat="server" id="signIcon" class="signIcon"><i class="fa fa-spinner fa-spin fa-2x"
                        aria-hidden="true"></i></span>Guardar y firmar
                </asp:LinkButton>
                <asp:LinkButton runat="server" ID="lnk_cancela" class="btn btn-lg active btn-danger adjust ofhidden"
                    Style="padding: 5px;">
                <i class="fa fa-times-circle fa-2x"></i> Cancelar
                </asp:LinkButton>
            </div>
        </div>

       <script src="../../js/bootstrap/jquery.js" type="text/javascript"></script>
       <script src="../../js/bootstrap/bootstrap.min.js" type="text/javascript"></script>
       <script src="../../js/bootstrap/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
       <script src="../../js/bootstrap/locales/bootstrap-datetimepicker.es.js" type="text/javascript"></script>
       <script src="../../js/bootstrap/reporte.js" type="text/javascript"></script>
       <script src="../../js/Equipo/Equipo.js" type="text/javascript"></script>
       <script src="../../js/Interfaz/formularioAC.js" type="text/javascript"></script>
       <script src="../../js/Interfaz/clockpicker.js" type="text/javascript"></script>
       <script src="../../js/Interfaz/general.js" type="text/javascript"></script>
       <script src="../../js/Interfaz/fixScroll.js" type="text/javascript"></script>
   </form>
</body>
</html>
