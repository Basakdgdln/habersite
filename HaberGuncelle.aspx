<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HaberGuncelle.aspx.cs" Inherits="HaberGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="form1" runat="server">
        <div class="form-group">

            <br />

            <div style="font-size: larger; font-weight: bold; font-style: inherit; color: #ff6a00; font-family: oswald;">
                <asp:Label for="TxtID" runat="server">ID</asp:Label>
                <asp:TextBox ID="TxtID" runat="server" CssClass="form-control" Height="50px" Enabled="False"></asp:TextBox>
            </div>
            <br />

            <div style="font-size: larger; font-weight: bold; font-style: inherit; color: #ff6a00; font-family: oswald;">
                <asp:Label for="TxtBaslık" runat="server">BAŞLIK</asp:Label>
                <asp:TextBox ID="TxtBaslık" runat="server" CssClass="form-control" Height="50px"></asp:TextBox>
            </div>
            <br />

            <div style="font-size: larger; font-weight: bold; font-style: inherit; color: #ff6a00; font-family: oswald">
                <asp:Label for="TxtIcerık" runat="server">İÇERİK</asp:Label>
                <textarea id="TxtIcerık" cols="10" rows="6" class="form-control" runat="server"></textarea>
            </div>
            <br />

            <div style="font-size: larger; font-weight: bold; font-style: inherit; color: #ff6a00; font-family: oswald">
                <asp:Label for="TxtAltIcerık1" runat="server">ALT İÇERİK 1 </asp:Label>
                <textarea id="TxtAltIcerık1" cols="10" rows="6" class="form-control" runat="server"></textarea>
            </div>
            <br />

            <div style="font-size: larger; font-weight: bold; font-style: inherit; color: #008080; font-family: oswald">
                <asp:Label for="TxtAltIcerık2" runat="server">ALT İÇERİK 2</asp:Label>
                <textarea id="TxtAltIcerık2" cols="10" rows="6" class="form-control" runat="server"></textarea>
            </div>
            <br />


            <div style="font-size: larger; font-weight: bold; font-style: inherit; color: #008080; font-family: oswald">
                <asp:Label for="FileUpload1" runat="server">RESİM:  </asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="100px" Width="300px" />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </div>


            <div style="font-size: larger; font-weight: bold; font-style: inherit; color: #008080; font-family: oswald">
                <asp:Label for="Label1" runat="server">POPÜLER HABER</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
                 <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Popüler Haber" Text="EVET" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Popüler Haber" Text="HAYIR" />
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>

            </div>
            <br />


            <asp:Button ID="BtnGonder" runat="server" Text="GÜNCELLE" CssClass="btn btn-success float-right" Font-Size="25px" Height="75px" Width="250px" OnClick="BtnGonder_Click1" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</asp:Content>


