<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YonetimEkip.aspx.cs" Inherits="YonetimEkip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="card card-solid">
            <div class="card-body pb-0">
                <div class="row d-flex align-items-stretch">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch">
                                <div class="card bg-light">
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/YonetimEkip.aspx?ID=" +Eval("ID")%>'></asp:HyperLink>
                                    <div class="card-header text-muted border-bottom-0">
                                        <%#Eval("UNVAN") %>
                                    </div>
                                    <div class="card-body pt-0">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="lead"><b><%#Eval("ADSOYAD") %></b></h2>
                                                <p class="text-muted text-sm"><b>Hakkında: </b><%#Eval("HAKKINDA").ToString().Substring(0,115) %>... </p>
                                                <ul class="ml-4 mb-0 fa-ul text-muted">
                                                    <li class="small"><span class="fa-li"><i class="fas fa-lg fa-building"></i></span>Adres: <%#Eval("ADRES") %></li>
                                                    <li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span>Telefon : <%#Eval("TELEFON") %></li>
                                                    <li class="small"><span class="fa-li"><i class="fas fa-md fa-envelope-open"></i></span>E-Mail : <%#Eval("MAIL") %></li>
                                                </ul>
                                            </div>
                                            <div class="col-5 text-center">
                                                <img src="<%#Eval("RESIM") %>" class=" img-circle img-fluid">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card-footer">
                                        <div class="text-right">
                                            <a href="#" class="btn btn-sm bg-teal">
                                                <i class="fas fa-comments" title="<%#Eval("MAIL") %>"></i>
                                            </a>

                                            <a href="#" class="btn btn-sm btn-primary">
                                                <i class="fas fa-user"></i>View Profile
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                 
                </div>
            </div>


          
    <%--    <div class="card-footer">
          <nav aria-label="Contacts Page Navigation">
            <ul class="pagination justify-content-center m-0">
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">4</a></li>
              <li class="page-item"><a class="page-link" href="#">5</a></li>
              <li class="page-item"><a class="page-link" href="#">6</a></li>
              <li class="page-item"><a class="page-link" href="#">7</a></li>
              <li class="page-item"><a class="page-link" href="#">8</a></li>
            </ul>
          </nav>
        </div>--%>
        <!-- /.card-footer -->
       
             </div>
        <!-- /.card -->

    </section>
    <!-- /.content -->

</asp:Content>

