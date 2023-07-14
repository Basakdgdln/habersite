<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriGuncelle.aspx.cs" Inherits="KategoriGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

   <form id="form1" runat="server">
        <div class="form-group">

            <br />
            <div style="font-size: larger; font-weight: bold; font-style: inherit; color: #ff6a00; font-family: oswald;">
                <asp:Label for="TxtKatID" runat="server">KATEGORİ ID</asp:Label>
                <asp:TextBox ID="TxtKatID" runat="server" CssClass="form-control" Height="50px" Enabled="false"></asp:TextBox>
            </div>
            <br />

            <div style="font-size: larger; font-weight: bold; font-style: inherit; color: #ff6a00; font-family: oswald">
                <asp:Label for="TxKatAD" runat="server">KATEGORİ AD</asp:Label>
                 <asp:TextBox ID="TxtKatAD" runat="server" CssClass="form-control" Height="50px"></asp:TextBox>
            </div>
            <br />

          
              <asp:Button ID="Button1" runat="server" Text="GÜNCELLE" CssClass="btn btn-info" Width="200px" Height="50px" />
            </div>
        </form>


</asp:Content>

