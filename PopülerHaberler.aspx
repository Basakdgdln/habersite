<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="PopülerHaberler.aspx.cs" Inherits="PopülerHaberler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <br />
    <table class=" table table-bordered table-hover">

        <tr style="text-align: center">
           
            <th scope="col">ID</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>
            <th scope="col">ALT İÇERİK 1</th>
            <th scope="col">ALT İÇERİK 2</th>
            <th scope="col">TARİH</th>
            <th scope="col">YAZAR</th>
            <th scope="col">KATEGORİ</th>
            <th scope="col">İŞLEMLER</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        
                        <td><%#Eval("HABERID")%></td>
                        <td><%#Eval("HABERBASLIK")%></td>
                        <td><%#Eval("HABERICERIK")%>...</td>
                        <td><%#Eval("ALTICERIK1")%>...</td>
                        <td><%#Eval("ALTICERIK2")%>...</td>
                        <td><%#Eval("HABERTARIH")%></td>
                        <td><%#Eval("YAZARADSOYAD") %></td>
                        <td><%#Eval("KATEGORIAD") %></td>

                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/PopülerHaberDetay.aspx?HABERID=" +Eval("HABERID")%>' CssClass="btn btn-danger">KALDIR</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/HaberGuncelle.aspx?HABERID="+ Eval("HABERID") %>'  CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>

                        </td>

                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>

</asp:Content>

