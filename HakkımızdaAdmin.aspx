<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkımızdaAdmin.aspx.cs" Inherits="HakkımızdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="form1" runat="server">

        <style>
            p {
                font-size: medium;
                font-family: Rockwell;
            }

            h4 {
                color: cadetblue;
            }
        </style>


        <div class="container">
            <div class="row" style="padding-top: 20px;">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="col-md-6">
                            <img src="<%#Eval("LOGO") %> " style="width: 550px; height: 550px; padding-top: 100px; padding-right: 100px;">
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"HakkımızdaAdminDetay.aspx?ID="+ Eval("ID") %>' CssClass="btn btn-success" Height="50px" Width="250px" Font-Size="Large" ForeColor="White">GÜNCELLE</asp:HyperLink>

                        </div>


                        <div class="col-md-6">
                            <div class="single_page_area">
                                <h3 class="post_titile" style="color: cadetblue; text-align: center">HAKKIMIZDA </h3>
                                <div class="single_page_content">
                                    <p><%#Eval("ICERIK" )%></p>

                                    <h4>Ne Yapıyoruz?</h4>
                                    <p><%#Eval("ALTICERIK") %></p>

                                    <h4>Türkiye’nin En Geniş Kapsamlı Haber Sitesi</h4>
                                    <p><%#Eval("ALTICERIK1") %></p>

                                    <h4>Alınan Ödüller</h4>
                                    <ul style="float: left; font-size: medium; font-family: Rockwell; padding-left: 15px; padding-right: 15px;">
                                        <li>Türkiye Gençlik Ödülleri </li>
                                        <li>Gold Faces Of Turkey</li>
                                        <li>Türkiye Altın Marka Ödülleri</li>
                                        <li>HTV Yılın Enleri</li>
                                        <li>Rekabet Kurumu</li>
                                        <li>Özel Ödülü</li>
                                        <li>En İyi Haber Sitesi</li>
                                        <li>Yılın Başarılı Haber Sİtesi</li>
                                    </ul>

                                    <ul style="float: right; font-size: medium; font-family: Rockwell; padding-left: 15px;">
                                        <li>En Çok Okunan Haber Portalı</li>
                                        <li>Yılın En İyi Haber Portalı</li>
                                        <li>Yılın En İyi Haber Sitesi</li>
                                        <li>En Başarılı İnternet Portalları</li>
                                        <li>Yılın Haber Portalı</li>
                                        <li>Yılın Dijital Haber Platformu</li>
                                        <li>Kalite Ödülü</li>
                                        <li>Tüketici Hukukuna Saygı Ödülü</li>
                                    </ul>

                                </div>

                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
</asp:Content>

