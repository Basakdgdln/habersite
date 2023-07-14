<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HaberListesiDetay.aspx.cs" Inherits="HaberListesiDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    
    <br />
    <form id="form1" runat="server">
        <asp:Label for="DropDownList1" runat="server">Kategori Seçiniz:</asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="130px" Height="33px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="KATEGORIAD" DataValueField="KATEGORIID" ></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaberSiteConnectionString %>" SelectCommand="SELECT * FROM [TBL_KATEGORILER]"></asp:SqlDataSource>
       &nbsp;<asp:Button ID="Button1" runat="server" Text="Göster"  CssClass="btn btn-success"  Height="33px" Width="110px" Font-Size="Large" OnClick="Button1_Click"   />
        <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
        <br />
        <br />

        <table class="table table-striped table-bordered  table-hover ">
            <tr style="text-align: center">
                <th scope="col"></th>
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
                            <td>
                                <a href='<%#"HaberGuncelle.aspx?HABERID="+Eval("HABERID") %>'><span style="font-size: 300%; color: yellow;">&starf;</span></a>
                            </td>

                            <td><%#Eval("HABERID")%></td>
                            <td><%#Eval("HABERBASLIK")%></td>
                            <td><%#Eval("HABERICERIK")%>...</td>
                            <td><%#Eval("ALTICERIK1")%>...</td>
                            <td><%#Eval("ALTICERIK2")%>...</td>
                            <td><%#Eval("HABERTARIH")%></td>
                            <td><%#Eval("YAZARADSOYAD") %></td>
                            <td><%#Eval("KATEGORIAD") %></td>

                            <td>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"HaberSil.aspx?HABERID="+ Eval("HABERID") %>' CssClass="btn btn-primary">SİL</asp:HyperLink>&nbsp;
                               <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%#"HaberGuncelle.aspx?HABERID="+ Eval("HABERID") %>' CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                            </td>

                        </tr>

                    </ItemTemplate>
                </asp:Repeater>

            </tbody>
        </table>

    </form>
  
   

</asp:Content>

