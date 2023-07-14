<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YazarDetay.aspx.cs" Inherits="YazarDetay" %>

<!DOCTYPE html>
<html>
<head>
    <title>magExpress</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="magexpress/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="magexpress/assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="magexpress/assets/css/animate.css" rel="stylesheet" />
    <link href="magexpress/assets/css/slick.css" rel="stylesheet" />
    <link href="magexpress/assets/css/theme.css" rel="stylesheet" />
    <link href="magexpress/assets/css/style.css" rel="stylesheet" />
    <link href="StyleSheet.css" rel="stylesheet" />


    <!--[if lt IE 9]>
<script src="assets/js/html5shiv.min.js"></script>
<script src="assets/js/respond.min.js"></script>
<![endif]-->


    <style type="text/css">
        .auto-style1 {
            color: #000000;
        }
    </style>




</head>
<body>
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
    <div class="container">
        <header id="header">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="header_top">
                         <div class="header_top_left">
                            <ul class="top_nav">
                                <li><a href="AnaSayfa.aspx">ANA SAYFA</a></li>
                                <li><a href="İletisim.aspx">İLETİŞİM</a></li>
                                <li><a href="Hakkımızda.aspx">HAKKINDA</a></li>
                            </ul>
                        </div>
                        <div class="header_top_right">
                            <form action="#" class="search_form">
                                <input type="text" placeholder="Arama...">
                                <input type="submit" value="">
                            </form>
                        </div>
                    </div>
                    <div class="header_bottom">
                        <div class="header_bottom_left"><a class="logo" href="AnaSayfa.aspx">mag<strong>Express</strong> <span>A Pro Magazine Template</span></a></div>
                    </div>
                </div>
            </div>
        </header>

        <%--  -------------------------------------------------------------------------------------------------------------------%>


        <div id="navarea">
            <nav class="navbar navbar-default" role="navigation">
                <div class="container-fluid">
                    <div class="navbar-header">
                       <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav custom_nav" style="background-color: orange">
                            <li><a href="AnaSayfa.aspx">ANASAYFA</a></li>
                            <asp:Repeater ID="Repeater3" runat="server" OnItemDataBound="Repeater3_ItemDataBound">
                                <ItemTemplate>
                                    <li>
                                        <asp:Repeater ID="rpalt" runat="server">
                                            <ItemTemplate>
                                                   <a href="HaberDetay.aspx?KATEGORIID=<%#Eval("KATEGORIID") %> &HABERID=<%#Eval("HABERID") %> "><%#Eval("KATEGORIAD") %></a>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                            <li><a href="Yazar.aspx">YAZARLAR</a></li>
                            <li style=" float:right; padding:15px; color:white;">
                                <asp:Label ID="Label1" runat="server" ></asp:Label>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>


        <%--  -------------------------------------------------------------------------------------------------------------------%>

        <section id="mainContent">
                <div style="padding-left:40px">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <ul class="small_catg wow fadeInDown">
                                <li>
                                    <br />
                                    <img class="img-rounded img-center" src="<%#Eval("YAZARRESIM") %>" style="height: 270px; width: 300px;  "/>  
                                    <div style="padding-left: 25px">
                                        <h2><center><%#Eval("YAZARADSOYAD") %></center></h2>
                                 </div>
                                </li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
         
                <div  style="padding-left:25px; padding-right:25px">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <div class="last-post">
                                    <h3><b style="font-family:esland"><%#Eval("HABERBASLIK") %></b></h3>
                               <h3 style="font-family:esland"><%#Eval("HABERICERIK")%>
                                   <a href="Haberler.aspx?HABERID=<%#Eval("HABERID") %>" style="color:cadetblue">...devamını oku</a></h3>
                                 <h4><em><%#Eval("HABERTARIH") %></em></h4>
                                <br />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>     
        </section>
    </div>
    <%--  -------------------------------------------------------------------------------------------------------------------%>

    <footer id="footer" >
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="single_footer_top wow fadeInLeft">
                            <h2>Flicker Images</h2>
                            <ul class="flicker_nav">
                                <li><a href="#">
                                    <img src="images/75x75.jpg" alt=""></a></li>
                                <li><a href="#">
                                    <img src="images/75x75.jpg" alt=""></a></li>
                                <li><a href="#">
                                    <img src="images/75x75.jpg" alt=""></a></li>
                                <li><a href="#">
                                    <img src="images/75x75.jpg" alt=""></a></li>
                                <li><a href="#">
                                    <img src="images/75x75.jpg" alt=""></a></li>
                                <li><a href="#">
                                    <img src="images/75x75.jpg" alt=""></a></li>
                                <li><a href="#">
                                    <img src="images/75x75.jpg" alt=""></a></li>
                               <li><a href="#">
                                    <img src="images/75x75.jpg" alt=""></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="single_footer_top wow fadeInDown">
                            <h2>Labels</h2>
                            <ul class="labels_nav">
                                <asp:Repeater ID="Repeater4" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <a href="#"><%#Eval("KATEGORIAD") %></a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                              
                                  <li><a href="Yazarlar.aspx">Yazar</a></li>
                                <li><a href="Hakkımızda2.aspx">Hakkımızda</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="single_footer_top wow fadeInRight">
                            <h2>About Us</h2>
                            <p>MagExpress; Güncel, Politika, Spor, Magazin, Kültür ve Sanat, Dış Haberler ve diğer tüm kategorilerde güncel haber sunmak ve internet kullanıcısının habere ulaşmasını kolaylaştırmak için oluşturulmuş geniş kapsamlı bir haber portaldır. </p> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer_bottom">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="footer_bottom_left">
                            <p style="font-size:small">Copyright &copy; 2045 <a href="index.html">magExpress</a></p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="footer_bottom_right">
                            <p style="font-size:small"> Developed BY Wpfreeware</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="magexpress/assets/js/jquery.min.js"></script>
    <script src="magexpress/assets/js/bootstrap.min.js"></script>
    <script src="magexpress/assets/js/wow.min.js"></script>
    <script src="magexpress/assets/js/slick.min.js"></script>
    <script src="magexpress/assets/js/custom.js"></script>

</body>
</html>
