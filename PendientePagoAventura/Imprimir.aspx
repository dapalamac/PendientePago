<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Imprimir.aspx.vb" Inherits="PendientePagoAventura.Imprimir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title></title>
    <style type="text/css">
        .content{

            background-image: url("../img/Estacionamiento.jpg");
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            color: white;
        }

        .logoreporte{

            margin-left: 820px;
            margin-top: -30px

        }

        .auto-style1 {
            width: 96px;
        }
        .auto-style2 {
            width: 142px;
            color: white;
        }
        .auto-style3 {
            width: 89%;
        }
        .auto-style4 {
            width: 533px;
        }
        .auto-style5 {
            width: 150px;
            height: 151px;
        }
        .auto-style6 {
            width: 102%;
        }
        .auto-style7 {
            width: 56px;
        }

       
    </style>
</head>
<body id="TextId">

    <center>

    <div class="content">
   
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Reporte Pendiente de Pagos" style="color: white"></asp:Label>

            <section class="logoreporte">

                <img src="../img/logo.png" alt="the parking" class="auto-style5" />

            </section>

            <table class="auto-style3">
                <tr>
                    <td class="auto-style1" style="color: white">FECHA</td>
                    <td>
                        <asp:Label ID="lbFecha" runat="server" Text="Hoy" style="color: white"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
             
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1017px">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="PLACA" HeaderText="PLACA" />
                <asp:BoundField DataField="fecha_entrada" HeaderText="INGRESO" />
                <asp:BoundField DataField="fecha_entrada" HeaderText="SALIDA" />
                <asp:BoundField DataField="fecha_generacion" HeaderText="SOLICITADA" />
                <asp:BoundField DataField="CONCEPTO" HeaderText="CONCEPTO" />
                <asp:BoundField DataField="CONCEPTO_ANULACION" HeaderText="CONCEPTO NULO" />
            </Columns>
            <HeaderStyle BorderStyle="Solid" ForeColor="#000099" />
        </asp:GridView>
     
        <table class="auto-style6">
            <tr>
                <td class="auto-style2" style="border: thin solid #0000FF" >Total de Pendientes</td>
                <td colspan="2" style="border: thin solid #0000FF">
                    <asp:Label ID="LbTotal" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="ButtonRegre" runat="server" Text="Regresar" />
                </td>
            </tr>
        </table>
        <br />
    </form>
    </div>
   </center>
</body>
