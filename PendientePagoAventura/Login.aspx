<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="PendientePagoAventura.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title></title>

<style type="text/css">

    .content{

        height: 350px;
        width: 400px;
        margin-left: 400px;
        border: 3px solid black;
        border-radius: 25% 10%; 
        box-shadow: 5px 5px 5px 3px rgba(0, 0, 0, 0.5);
    }

    .botonsinput{

        margin-left: 110px;
        margin-top: -15px;
        border-radius: 20px;

    }

    .imagenlogin {


        padding-left: 140px;
        padding-top: 20px;
        
    }

    .imagenlogin img {


        width: 120px;
        height: 120px;
        
    }

    .botonsinput1{

        border-radius: 20px
        

    }
    
    .auto-style1 {
        width: 143px;
        height: 147px;
    }

    .botoningresar{

           margin-left: 120px;
           border-radius: 5px;
           width: 160px;
    }

    titulologin h1{

           
        margin-left: 120px;

    }



</style>




</head>
<body>
    <form id="form1" runat="server">
        <div class="content">

           
            <section class="imagenlogin">

              <img src="../img/logo.png" class="img-thumbnail" alt="the_parking">

           </section>

            <section class="tutulologin">

                <center>

                <h2>Pendiente de Pago</h2>

                </center>

            </section>
            <br />
                
          <section class="botonsinput">

              <asp:TextBox ID="txtUsuario" runat="server" class="botonsinput1"></asp:TextBox><br /><br />
              <asp:TextBox ID="TxtClave" type="password" runat="server" class="botonsinput1"></asp:TextBox>

          </section><br />
                
           &nbsp;<asp:Button ID="Button1" runat="server" Text="Ingresar" class="botoningresar" />

        </div>
    </form>

</body>
</html>
