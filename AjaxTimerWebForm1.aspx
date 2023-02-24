<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxTimerWebForm1.aspx.cs" Inherits="AjaxConcept.AjaxTimerWebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:Timer ID="Timer_1_tick" runat="server" Interval="1000" OnTick="Timer_1_tick_Tick"></asp:Timer>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer_1_tick" />
                </Triggers>
                <ContentTemplate>
                    <asp:Label ID="lbl_dt_time" runat="server" Text=""></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>

        <div>
            <asp:TextBox ID="tb_dt" runat="server"></asp:TextBox>
            <asp:CalendarExtender ID="CalendarExtender1" runat="server"
                TargetControlID="tb_dt"
                PopupButtonID="Button1"
                Format="dd/MM/yyyy">
            </asp:CalendarExtender>
            <asp:Button ID="Button1" runat="server" Text="Calender" />
        </div>
    </form>
</body>
</html>
