<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MesajOlustur.aspx.cs" Inherits="MesajOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form runat="server">
        <br />
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Sizlerden Gelenler</h3>

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
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->


                    <div class="col-md-9">
                        <div class="card card-primary card-outline">
                            <div class="card-header">
                                <h3 class="card-title">Yeni Mesaj Oluştur</h3>
                            </div>
                            <!-- /.card-header -->

                            <div class="card-body">
                                <div class="form-group">
                                    <asp:TextBox ID="TxtGonderen" runat="server" CssClass="form-control" placeholder="Gönderen:"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AppendDataBoundItems="True">
                                        <asp:ListItem Value="0">Alıcı:</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <asp:TextBox ID="TxtKonu" runat="server" CssClass="form-control" placeholder="Konu:"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <textarea id="TxtMesaj" runat="server" class="form-control" style="height: 300px" placeholder="Mesaj:"></textarea>
                                </div>

                                <div class="form-group">
                                    <div class="btn btn-default btn-file">
                                        <i class="fas fa-paperclip"></i>
                                        Dosya
                                    <input type="file" name="attachment">
                                    </div>
                                    <p class="help-block">Max. 32MB</p>
                                </div>
                            </div>
                            <!-- /.card-body -->

                            <%--  <i class="far fa-envelope"></i>--%>
                            <div class="card-footer">
                                <div class="float-right" >
                                   <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="btn btn-primary" OnClick="Button1_Click"  />
                                </div>

                            </div>
                            <!-- /.card-footer -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>


    </form>
</asp:Content>

