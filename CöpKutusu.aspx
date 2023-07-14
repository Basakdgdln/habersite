<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="CöpKutusu.aspx.cs" Inherits="CöpKutusu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form runat="server">
        <style>
            span {
                width: 20px;
                height: 20px;
            }
        </style>
        <br />

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <a href="MesajOlustur.aspx" class="btn btn-primary btn-block mb-3">Mesaj Oluştur</a>
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Klasörler</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
                                </div>
                            </div>
                            <div class="card-body p-0">
                                <ul class="nav nav-pills flex-column">
                                    <li class="nav-item active">
                                        <a href="GelenKutusu.aspx" class="nav-link">
                                            <i class="fas fa-inbox"></i>
                                            Gelen Kutusu  
                                                <span class="badge bg-primary float-right">
                                                    <asp:Label ID="Label3" runat="server" Text="Label" Font-Size="Small"></asp:Label>
                                                </span>
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a href="OnaylananMesajlar.aspx" class="nav-link">
                                            <i class="far fa-envelope"></i>
                                            Onaylanan Mesajlar
                                                 <span class="badge bg-success float-right">
                                                     <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Small"></asp:Label>
                                                 </span>
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a href="OnaylanmayanMesajlar.aspx" class="nav-link">
                                            <i class="fas fa-exclamation-circle"></i>
                                            Onaylanmayan Mesajlar
                                                 <span class="badge bg-danger float-right">
                                                     <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="Small"></asp:Label></span>
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a href="CöpKutusu.aspx" class="nav-link">
                                            <i class="far fa-trash-alt"></i>
                                            Çöp Kutusu
                                        </a>
                                    </li>

                                </ul>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </div>
                    <!-- /.col -->



                    <div class="col-md-9">
                        <div class="card card-primary card-outline">
                            <div class="card-header">
                                <h3 class="card-title">Çöp Kutusu</h3>
                            </div>
                            <!-- /.card-header -->

                            <div class="card-body p-0">
                                <div class="table-responsive mailbox-messages">
                                    <table class="table table-hover table-striped">
                                        <tbody>
                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td class="mailbox-name"><a href="#"><%#Eval("ADSOYAD") %></a></td>
                                                        <td class="mailbox-subject"><b><%#Eval("KONU") %></b> - <%#Eval("MESAJ").ToString()%>... </td>
                                                        <td class="mailbox-date"><%#Eval("TARIH") %></td>
                                                       <td><i class="fas fa-paperclip"></i></td>
                                                        <td>
                                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/GelenKutusu.aspx?ID=" + Eval("ID")%>' CssClass="btn btn-success">Geri Yükle</asp:HyperLink>
                                                        </td>

                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                    </table>
                                    <!-- /.table -->
                                </div>
                                <!-- /.mail-box-messages -->

                            </div>
                            <!-- /.card-body -->

                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->

                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </form>

</asp:Content>


