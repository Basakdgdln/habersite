<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Yazar.aspx.cs" Inherits="Yazar2" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>

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
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav custom_nav" style="background-color: orange">
                            <li><a href="AnaSayfa.aspx">ANA SAYFA</a></li>
                            <asp:Repeater ID="Repeater4" runat="server" OnItemDataBound="Repeater4_ItemDataBound">
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


        <%--  -------------------------------------------------------------------------------------------------------------------%>

        <%-- <div class="card text-center" style="width: 300px;">
                                <br />
                                <img src="<%#Eval("YAZARRESIM") %>" class="img-center img-rounded " style="width: 250px; height: 200px">
                                <div class="card-body">
                                    <h5 class="card-title"><b><%#Eval("YAZARADSOYAD") %></b></h5>
                                    <h6><%#Eval("YAZARMAIL") %></h6>
                                    <hr />--%>

        <%--<p class="card-text"><%#Eval("HABERBASLIK") %></p>--%>
        <%-- <a href="YazarDetay.aspx?YAZARID=<%#Eval("YAZARID") %>" class="btn btn-primary">TÜM YAZILARI</a>
                                </div>
                            </div>--%>
        <form runat="server">
            <section id="mainContent">
                <div class="container">
                    <div class="row">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="col-sm-6">
                                    <br />
                                    <div class="col-md-4">
                                        <img src="<%#Eval("YAZARRESIM") %>" alt="" height="150px" width="200px" />
                                        <br />
                                        <br />
                                    </div>

                                    <div class="col-md-8" style="padding-left: 70px">
                                        <h2><%#Eval("YAZARADSOYAD") %></h2>
                                        <h4><%#Eval("YAZARMAIL") %></h4>
                                        <h4>başlık</h4>
                                        <a href="YazarDetay.aspx?YAZARID=<%#Eval("YAZARID") %>" class="btn btn-primary">TÜM YAZILARI</a>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                    <div style="font-size: x-large; color: green; float: right; height: 150px;">
                        <cc1:CollectionPager ID="CollectionPager1" runat="server" SliderSize="10" ShowPageNumbers="True" ResultsLocation="None" LabelText=""
                            PageSize="15" BackText="<<  " NextText=" >>" LastText="Son" BackNextLocation="split">
                        </cc1:CollectionPager>
                    </div>

                </div>
            </section>
        </form>
    </div>
    <%--  -------------------------------------------------------------------------------------------------------------------%>

    <footer id="footer">
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
                                <asp:Repeater ID="Repeater5" runat="server">
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
                            <h2>Hakkımızda</h2>
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
                            <p style="font-size: small">Copyright &copy; 2045 <a href="index.html">magExpress</a></p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="footer_bottom_right">
                            <p style="font-size: small">Developed BY Wpfreeware</p>
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


