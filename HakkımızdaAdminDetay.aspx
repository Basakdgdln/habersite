<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkımızdaAdminDetay.aspx.cs" Inherits="HakkımızdaAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <style>
          #form1 {
            height: 45px;
            text-align: center;
            font-weight: bold;
            background-color: orange;
            font-size: large;
            border-color: orange;
            border-radius: 15px;
        }

         .form-control {
            font-size: medium;
            font-weight: bold;
            font-style: inherit;
            color: #008080;
            font-family: oswald;
            height: 45px;
            border-radius: 10px;
        }
    </style>

    <form id="form" runat="server">
        <br />
         <input class="form-control" id="form1" type="text" placeholder="MagExpress Hakkında">
        <br />

        <textarea id="TxtIcerık" runat="server" rows="5" class="form-control" placeholder="İçerik"></textarea>
        <textarea id="TxtAltIcerık" runat="server" rows="5" class="form-control" placeholder="Alt İçerik "></textarea>
        <textarea id="TxtAltIcerık1" runat="server" rows="5" class="form-control" placeholder="Alt İçerik 1"></textarea>
     

        <div class="form-control">
            <asp:Label for="FileUpload1" runat="server">LOGO : </asp:Label>&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" Height="35px" Width="350px" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>

        <br />

            <asp:Button ID="BtnGonder" runat="server" Text="GÜNCELLE" CssClass=" btn btn-success float-right" Font-Size="25px" Height="65px" Width="200px" OnClick="BtnGonder_Click"  />

    </form>

</asp:Content>
