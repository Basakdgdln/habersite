<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HaberOlustur.aspx.cs" Inherits="_Default" %>

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

    <form class="form-group" runat="server">
        <br />
        <input class="form-control" id="form1" type="text" placeholder="MagExpress Haber Oluşturma Formu">
        <br />

        <asp:TextBox ID="TxtBaslık" runat="server" class="form-control" placeholder="Başlık"></asp:TextBox>
        <textarea id="TxtIcerık" runat="server" rows="5" class="form-control" placeholder="İçerik"></textarea>
        <textarea id="TxtAltIcerık1" runat="server" rows="5" class="form-control" placeholder="Alt İçerik 1"></textarea>
        <textarea id="TxtAltIcerık2" runat="server" rows="5" class="form-control" placeholder="Alt İçerik 2"></textarea>

        <div class="form-control ">
            <asp:Label for="DropDownList1" runat="server">KATEGORİ:</asp:Label>&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="200px"></asp:DropDownList>
        </div>

        <div class="form-control">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label for="DropDownList2" runat="server">YAZAR:</asp:Label>&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="200px"></asp:DropDownList>
        </div>

        <div class="form-control">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Label for="FileUpload1" runat="server">RESİM: </asp:Label>&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" Height="35px" Width="350px" />
        </div>
        <br />

      
            <asp:Button ID="BtnGonder" runat="server" Text="OLUŞTUR" Style="font-size: 25px; height: 60px; width: 175px; background-color: teal; border-color: teal;float:right; border-radius: 15px;" OnClick="BtnGonder_Click1" />
       <br /><br /><br /><br />

    </form>
</asp:Content>

