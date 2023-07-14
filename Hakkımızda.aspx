<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hakkımızda.aspx.cs" Inherits="Hakkımızda" %>

<!DOCTYPE html>
<html>
<head>
    <title>magExpress | Pages | Page</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="magexpress/assets/css/animate.css" rel="stylesheet" />
    <link href="magexpress/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="magexpress/assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="magexpress/assets/css/slick.css" rel="stylesheet" />
    <link href="magexpress/assets/css/style.css" rel="stylesheet" />
    <link href="magexpress/assets/css/theme.css" rel="stylesheet" />

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
                                <input type="text" placeholder="Text to Search">
                                <input type="submit" value="">
                            </form>
                        </div>
                    </div>
                    <div class="header_bottom">
                        <div class="header_bottom_left"><a class="logo" href="../index.html">mag<strong>Express</strong> <span>A Pro Magazine Template</span></a></div>
                        <div class="header_bottom_right">
                            <a href="#">
                                <img src="../images/addbanner_728x90_V1.jpg" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </header>


        <div id="navarea">
            <nav class="navbar navbar-default" role="navigation">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse" style="background-color: orange">
                        <ul class="nav navbar-nav custom_nav">
                            <li><a href="AnaSayfa.aspx">ANA SAYFA</a></li>
                           
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
                            <li style="float: right; padding: 15px; color: white;">
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <section id="mainContent">
            <div class="content_bottom">
                <div class="col-lg-8 col-md-8">
                    <div class="content_bottom_left">
                        <div class="single_page_area">
                            <ol class="breadcrumb" style="width: 750px">
                                <li><a href="AnaSayfa.aspx">Ana Sayfa</a></li>
                                <li><a href="Hakkımızda.aspx">Hakkımızda</a></li>

                            </ol>
                            <h2 class="post_titile" style="color: cadetblue">HAKKIMIZDA </h2>
                            <div class="single_page_content">
                                <asp:Repeater ID="Repeater2" runat="server">
                                    <ItemTemplate>
                                        <br />
                                        <p><%#Eval("ICERIK") %></p>
                                        <p><%#Eval("ALTICERIK") %></p>
                                        <p><%#Eval("ALTICERIK1") %></p>
                                        <br />

                                        <div>
                                            <blockquote style="height: 275px;">
                                                <h4 style="color: cadetblue; font-family: oswald; padding-right: 15px; padding-left: 30px">Alınan Ödüller</h4>
                                                <ul style="float: left; font-size: medium; font-family: Rockwell;">
                                                    <li>Türkiye Gençlik Ödülleri </li>
                                                    <li>Gold Faces Of Turkey</li>
                                                    <li>Türkiye Altın Marka Ödülleri</li>
                                                    <li>HTV Yılın Enleri</li>
                                                    <li>Rekabet Kurumu</li>
                                                    <li>Özel Ödülü</li>
                                                    <li>En İyi Haber Sitesi</li>
                                                    <li>Yılın Başarılı Haber Sİtesi</li>
                                                </ul>

                                                <ul style="float: right; font-size: medium; font-family: Rockwell;">
                                                    <li>En Çok Okunan Haber Portalı</li>
                                                    <li>Yılın En İyi Haber Portalı</li>
                                                    <li>Yılın En İyi Haber Sitesi</li>
                                                    <li>En Başarılı İnternet Portalları</li>
                                                    <li>Yılın Haber Portalı</li>
                                                    <li>Yılın Dijital Haber Platformu</li>
                                                    <li>Kalite Ödülü</li>
                                                    <li>Tüketici Hukukuna Saygı Ödülü</li>
                                                </ul>
                                            </blockquote>
                                        </div>

                                        <ul style="font-size: large; padding-left: 15px; padding-right: 15px;">
                                            <li><b>ADRES :</b><%#Eval("ADRES") %></li>
                                            <li><b>TELEFON : </b><%#Eval("TELEFON") %></li>
                                            <li><b>FAKS :</b> <%#Eval("FAKS") %></li>
                                            <li><b>E-MAIL : </b><a href="<%#Eval("E-MAIL") %>"><%#Eval("E-MAIL") %></a></li>
                                        </ul>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="content_bottom_right">
                        <div class="single_bottom_rightbar">
                            <h2>SON GÖNDERİLER</h2>
                            <ul class="small_catg popular_catg wow fadeInDown">
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="#" class="media-left">
                                                    <img src="<%#Eval("HABERRESIM") %>">
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><a href="Haberler.aspx?HABERID=<%#Eval("HABERID") %>"><%#Eval("HABERBASLIK") %> </a></h4>
                                                    <p><%#Eval("HABERICERIK").ToString().Substring(0,100) %> </p>
                                                </div>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>


                        <div class="single_bottom_rightbar">
                            <ul role="tablist" class="nav nav-tabs custom-tabs">
                                <li class="active" role="presentation"><a data-toggle="tab" role="tab" aria-controls="home" href="#mostPopular">En Popüler</a></li>
                            </ul>
                            <div class="tab-content">
                                <div id="mostPopular" class="tab-pane fade in active" role="tabpanel">
                                    <ul class="small_catg popular_catg wow fadeInDown">
                                        <asp:Repeater ID="Repeater12" runat="server">
                                            <ItemTemplate>
                                                <li>
                                                    <div class="media wow fadeInDown">
                                                        <a class="media-left" href="#">
                                                            <img src="<%#Eval("HABERRESIM") %>"></a>
                                                        <div class="media-body">
                                                            <h4 class="media-heading"><a href="Haberler.aspx?HABERID=<%#Eval("HABERID") %>"><%#Eval("HABERBASLIK") %> </a></h4>
                                                            <p><%#Eval("HABERICERIK").ToString().Substring(0,100)%></p>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="single_bottom_rightbar wow fadeInDown">
                            <h2>Popular Lnks</h2>
                            <ul>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">Blog Home</a></li>
                                <li><a href="#">Error Page</a></li>
                                <li><a href="#">Social link</a></li>
                                <li><a href="#">Login</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <footer id="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="single_footer_top wow fadeInLeft">
                            <h2>Flicker Images</h2>
                            <ul class="flicker_nav">
                                <li><a href="#">
                                    <img src="../images/75x75.jpg" alt=""></a> </li>
                                <li><a href="#">
                                    <img src="../images/75x75.jpg" alt=""></a> </li>
                                <li><a href="#">
                                    <img src="../images/75x75.jpg" alt=""></a> </li>
                                <li><a href="#">
                                    <img src="../images/75x75.jpg" alt=""></a> </li>
                                <li><a href="#">
                                    <img src="../images/75x75.jpg" alt=""></a> </li>
                                <li><a href="#">
                                    <img src="../images/75x75.jpg" alt=""></a> </li>
                                <li><a href="#">
                                    <img src="../images/75x75.jpg" alt=""></a> </li>
                                <li><a href="#">
                                    <img src="../images/75x75.jpg" alt=""></a> </li>
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
                                <li><a href="#">Yazar</a></li>
                                <li><a href="#">Hakkımızda</a></li>
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
                            <p>Copyright &copy; 2045 <a href="../index.html">magExpress</a></p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="footer_bottom_right">
                            <p>Developed BY Wpfreeware</p>
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
