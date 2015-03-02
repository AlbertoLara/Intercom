<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="Javascript/jquery-2.1.3.min.js"></script>
     <script>(function () {var w = window; var ic = w.Intercom; if (typeof ic === "function") { ic('reattach_activator'); ic('update', intercomSettings); } else {var d = document; var i = function () { ic(arguments) }; iq = []; ic = function (args) { iqpush(args) }; w.Intercom = i; function l() {var s = d.createElement('script'); s.type = 'text/javascript'; s.async = true;
    s.src = 'https://widget.intercom.io/widget/<INSERT APP_ID HERE>';
    var x = d.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);} if (w.attachEvent) { w.attachEvent('onload', l); } else { w.addEventListener('load', l, false); }}})()</script>

    <%--<script type="text/javascript" src="Javascript/intercom.min.js"></script>--%>
    <script type="text/javascript">
        $(document).ready(function () {

            $("#formLo").submit(function () {
                var inventario = false;
                var ventas = false;
                var compras = false;
                if ($('#invent').is(':checked'))
                    inventario = true;
                if ($('#ventas').is(':checked'))
                    ventas = true;
                if ($('#compras').is(':checked'))
                    compras = true;

                var d = new Date();
                var fecha = d.getFullYear() + "-" + d.getMonth() + 1 + "-" + d.getDate() + d.getHours + ":" + d.getMinutes + ":" + d.getSeconds + " UTC";
                var email = $('#email').val();
                var user = $('#User').val();
                window.intercomSettings = {
                    name: user,
                    email: email,
                    created_at: fecha,
                    app_id: "j3fs14nx",
                    "inventario": inventario,
                    "ventas": ventas,
                    "compras": compras
                };
                (function () { var w = window; var ic = w.Intercom; if (typeof ic === "function") { ic('reattach_activator'); ic('update', intercomSettings); } else { var d = document; var i = function () { i.c(arguments) }; i.q = []; i.c = function (args) { i.q.push(args) }; w.Intercom = i; function l() { var s = d.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = 'https://widget.intercom.io/widget/j3fs14nx'; var x = d.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x); } if (w.attachEvent) { w.attachEvent('onload', l); } else { w.addEventListener('load', l, false); } } })();
            });
        });
</script>
</head>
<body>
    <form id="formLo" method="post">
    <div>
    <label>ACCEDIO A INTERCOM</label><br /><br />
        <label>Nombre de usuario:</label><input type="text" name="User" id="User" value=""/><br /><br />
        <label>Correo electronico:</label><input type="text" name="email" id="email" value=""/><br /><br />
        <label>Inventario: </label><input type="checkbox" name="invent" id="invent"/><br />
        <label>Ventas: </label><input type="checkbox" name="ventas" id="ventas"/><br />
        <label>Compras: </label><input type="checkbox" name="compras" id="compras"/><br /><br />
        <input type="submit" name="enviar" id="enviar" value="Enviar" />
    </div>
    </form>
</body>
</html>
