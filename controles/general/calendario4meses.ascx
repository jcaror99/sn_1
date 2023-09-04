<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="calendario4meses.ascx.vb" Inherits="website.controles_general_calendario" %>
<table class='tbl_marcoFormulario' style="width:170px;">
<tr>
<td style="text-align: center" >
<asp:DropDownList ID="drpMes" runat="server" CssClass="drpMesAnio" AutoPostBack="True">
</asp:DropDownList>
-
<asp:DropDownList ID="drpAño" runat="server" CssClass="drpMesAnio" AutoPostBack="True">
</asp:DropDownList>
<asp:Calendar ID="cld_1" runat="server" CssClass="cld" SelectionMode="DayWeek" SelectWeekText=">">
<SelectedDayStyle CssClass='lbl_diaSeleccionado' />
<DayHeaderStyle CssClass='lbl_encabezado'/>
<TitleStyle  CssClass='lnk_selSemana'/>
<DayStyle CssClass='lbl_dia'/>
<NextPrevStyle CssClass='lbl_sigPrev'/>
<OtherMonthDayStyle CssClass='oculto'/>
<TodayDayStyle CssClass='lbl_hoy'/>
<WeekendDayStyle CssClass='lbl_finDeSemana'/>
<SelectorStyle CssClass="lnk_selSemana" Font-Bold="True" Font-Underline="False" ForeColor="White" Font-Italic="False" />
</asp:Calendar>
</td>
</tr>
<tr>
<td style="text-align: center" >
<asp:Calendar ID="cld_2" runat="server" CssClass="cld" SelectionMode="DayWeek" SelectWeekText=">">
<SelectedDayStyle CssClass='lbl_diaSeleccionado' />
<DayHeaderStyle CssClass='lbl_encabezado'/>
<TitleStyle  CssClass='lnk_selSemana'/>
<DayStyle CssClass='lbl_dia'/>
<NextPrevStyle CssClass='lbl_sigPrev'/>
<OtherMonthDayStyle CssClass='oculto'/>
<TodayDayStyle CssClass='lbl_hoy'/>
<WeekendDayStyle CssClass='lbl_finDeSemana'/>
<SelectorStyle CssClass="lnk_selSemana" Font-Bold="True" Font-Underline="False" ForeColor="White" Font-Italic="False" />
</asp:Calendar>
</td>
</tr>
<tr>
<td >
<asp:Calendar ID="cld_3" runat="server" CssClass="cld" SelectionMode="DayWeek" SelectWeekText=">">
<SelectedDayStyle CssClass='lbl_diaSeleccionado' />
<DayHeaderStyle CssClass='lbl_encabezado'/>
<TitleStyle  CssClass='lnk_selSemana'/>
<DayStyle CssClass='lbl_dia'/>
<NextPrevStyle CssClass='lbl_sigPrev'/>
<OtherMonthDayStyle CssClass='oculto'/>
<TodayDayStyle CssClass='lbl_hoy'/>
<WeekendDayStyle CssClass='lbl_finDeSemana'/>
<SelectorStyle CssClass="lnk_selSemana" Font-Bold="True" Font-Underline="False" ForeColor="White" Font-Italic="False" />
</asp:Calendar>
</td>
</tr>
<tr>
<td >
<asp:Calendar ID="cld_4" runat="server" CssClass="cld" SelectionMode="DayWeek" SelectWeekText=">">
<SelectedDayStyle CssClass='lbl_diaSeleccionado' />
<DayHeaderStyle CssClass='lbl_encabezado'/>
<TitleStyle  CssClass='lnk_selSemana'/>
<DayStyle CssClass='lbl_dia'/>
<NextPrevStyle CssClass='lbl_sigPrev'/>
<OtherMonthDayStyle CssClass='oculto'/>
<TodayDayStyle CssClass='lbl_hoy'/>
<WeekendDayStyle CssClass='lbl_finDeSemana'/>
<SelectorStyle CssClass="lnk_selSemana" Font-Bold="True" Font-Underline="False" ForeColor="White" Font-Italic="False" />
</asp:Calendar>
</td>
</tr>
</table>
