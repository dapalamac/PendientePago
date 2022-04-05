<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Pendiente.aspx.vb" Inherits="PendientePagoAventura.Pendiente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title></title>
    <style type="text/css">
        

        .content{

            margin-left:150px;
            background-image: url("../img/bmw.jpg");
            width: 1020px;
            height: 400px;
            padding-left: 10px;
            color: white;
            


        }

        .content td{

            font-family: Arial, Helvetica, sans-serif;
            font-size: 18px;

        }

        .auto-style1 ButtonBuscar{

             background-color: aqua;
             font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;

        }

        .content table{

            
        }

        .cuadro1{

            border: 2px solid yellow;
            width: 820px;
            height: 80px;
            padding-left: 20px

        }

        .cuadro2{

            border: 2px solid yellow;
            width: 1000px;
            height: 80px;
            padding-left: 20px

        }

        .imagen img{

            margin-left: 900px;
            margin-top: 200px;
           
        }

        .imagencabeza{

            margin-left: 930px;

            margin-bottom: -80px;


        }

        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 26px;
            width: 166px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            height: 26px;
            width: 183px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            width: 377px;
        }
        .auto-style11 {
            width: 334px;
        }
        .auto-style12 {
            width: 377px;
            height: 23px;
        }
        .auto-style13 {
            width: 334px;
            height: 23px;
        }
        .auto-style15 {
            height: 28px;
        }
        .auto-style17 {
            height: 28px;
            width: 413px;
        }
        .auto-style18 {
            width: 413px;
        }
        .auto-style20 {
            width: 100%;
            height: 63px;
        }
        .btn btn-warning {
            margin-left: 532px;
        }
        .auto-style22 {
            width: 350px;
        }
        .auto-style23 {
            width: 99%;
        }
        .auto-style24 {
            width: 516px;
        }
    </style>
</head>
<body>

    
    <form id="form1" runat="server">

        <div class="content">
           
            <table class="auto-style20">
                <tr>

                

                    <td class="auto-style2">DIGITE LA PLACA</td>
               
                    <td class="auto-style5">
                        <asp:TextBox ID="TextPlaca" runat="server" CssClass="auto-style4" Height="27px" Width="147px"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:Button ID="ButtonBuscar" runat="server" Height="37px" Text="Buscar" Width="94px" CssClass="auto-style4" />
                    </td>
                </tr>

              
                    <img src="../img/logo.png" class="imagencabeza" Alt="The Parking" />
               
                </table>
            
        
        <br />

        <section class="cuadro1">
        <table class="auto-style23">
            <tr>
                <td class="auto-style10">FECHA INGRESO</td>
                <td class="auto-style11">FECHA SALIDA</td>
                <td>FECHA SOLICITUD</td>
            </tr>
            <tr>
                <td class="auto-style12">
                        <asp:TextBox ID="TextEntrada" runat="server" CssClass="auto-style4" Height="22px" Width="186px"></asp:TextBox>
                    </td>
                <td class="auto-style13">
                        <asp:TextBox ID="TextSalida" runat="server" CssClass="auto-style4" Height="21px" Width="186px"></asp:TextBox>
                    </td>
                <td class="auto-style9">
                        <asp:TextBox ID="TextGenerada" runat="server" CssClass="auto-style4" Height="23px" Width="186px"></asp:TextBox>
                    </td>
            </tr>
            </table>
       
        </section>
            <br />



        <section class="cuadro2">
        <table class="auto-style23">
            <tr>
                <td class="auto-style18">CONCEPTO GENERADO</td>
                <td>CONCEPTO ANULADO</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                        <asp:TextBox  ID="TextConcepto" runat="server" CssClass="auto-style4" Height="27px" Width="394px"></asp:TextBox>
                    </td>
                <td class="auto-style15">
                        <asp:TextBox ID="TextAnula" runat="server" CssClass="auto-style4" Height="27px" Width="458px"></asp:TextBox>
                    </td>
                <td class="auto-style15"></td>
            </tr>
            </table>
   
    </section>
        
        </div>
    </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <br />
                <td>
                    <asp:Button ID="ButtonImp" runat="server" class="btn btn-warning" Height="35px"  style="color: white" Text ="Imprimir" Width="105px" />
                </td>
            </tr>
        </table>
        
        
    </form>

    

       
    </body>
</html>
