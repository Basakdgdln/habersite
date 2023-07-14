<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriListesi.aspx.cs" Inherits="KategoriListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="form1" runat="server">
    <%--      <script>
        $("#Button1").click(function () {
            $("#gizle1").fadeIn(100);
        });
    </script>
    <br />
    <br />
    <br />--%>
     
        <style>
            .gizle {
                font-size: larger;
                font-weight: bold;
                font-style: inherit;
                color: #008080;
                font-family: oswald;
        
            }
        </style>


        <table class="table table-bordered table-hover">
            <tr>

                <th scope="col">KATEGORI ID</th>
                <th scope="col">KATEGORI ADI</th>
                <th scope="col">İŞLEMLER</th>

            </tr>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("KATEGORIID")%></td>
                            <td><%#Eval("KATEGORIAD")%></td>


                            <td>
                                <asp:HyperLink NavigateUrl='<%# "~/KategoriSil.aspx?KATEGORIID="+ Eval("KATEGORIID")%>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%# "~/KategoriGuncelle.aspx?KATEGORIID="+ Eval("KATEGORIID")%>' ID="HyperLink2" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                            </td>

                        </tr>
                    </ItemTemplate>
                </asp:Repeater>

            </tbody>
        </table>

        <asp:Button ID="BtnKategoriEkle" runat="server" Text="KATEGORİ EKLE" CssClass="btn btn-warning" PostBackUrl='<%#"~/KategoriListesi.aspx?KATEGORIID="+ Eval("KATEGORIID")%>' OnClick="BtnKategoriEkle_Click1"   />


        <div class="form-group">
            <br />
          <asp:TextBox ID="TxtAD" runat="server" class="form-control" placeholder="Kategori Ad" Height="45px" Visible="false"></asp:TextBox>
            <br />

            <asp:Button ID="BtneEkle" runat="server" Text="EKLE" CssClass="btn btn-info" Width="200px" Height="40px"  Visible="false" OnClick="BtneEkle_Click1" />
        </div>

    </form>
</asp:Content>

