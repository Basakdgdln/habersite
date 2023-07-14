<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>


<!DOCTYPE html>
<html>
<head>
    <title>magExpress</title>

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
                                <li><a href="Hakkımızda.aspx">HAKKIMIZDA</a></li>
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
                        <div class="header_bottom_right">
                            <a href="#"></a>
                        </div>
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
                        <ul class="nav navbar-nav custom_nav" style="background-color: /*#0a446a*/orange">
                            <asp:Repeater ID="Repeater19" runat="server" OnItemDataBound="Repeater19_ItemDataBound">
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
                            <%-- <li class="dropdown"><a href="Hakkımızda2.aspx">HAKKIMIZDA</a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="BizKimiz.aspx">EKİBİMİZ</a></li>
                                        </ul>
                                    </li>--%>

                            <li style="float: right; padding: 15px; color: white;">
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <%--  -------------------------------------------------------------------------------------------------------------------%>

        <section id="mainContent">
            <div class="content_top">
                <div class="col-lg-6 col-md-6 col-sm6">
                    <div class="latest_slider">
                        <div class="slick_slider">
                            <asp:Repeater ID="Repeater18" runat="server">
                                <ItemTemplate>
                                    <div class="single_iteam">
                                        <a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %> "></a>
                                        <img src="<%#Eval("HABERRESIM") %>" style="height: 430px" />
                                        <h2><a href="Haberler.aspx?HABERID= <%#Eval("HABERID")%>"><%#Eval("HABERBASLIK") %></a></h2>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 col-sm6">
                    <div class="content_top_right">
                        <ul class="featured_nav wow fadeInDown">
                            <li>
                                <asp:Repeater ID="Repeater13" runat="server">
                                    <ItemTemplate>
                                        <img src="<%#Eval("HABERRESIM") %>" <%--style="width: 270px"--%> />
                                        <div class="title_caption"><a href="Haberler.aspx?HABERID=<%#Eval("HABERID") %>"><%#Eval("HABERBASLIK") %></a></div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </li>

                            <li>
                                <asp:Repeater ID="Repeater14" runat="server">
                                    <ItemTemplate>
                                        <img src="<%#Eval("HABERRESIM") %>" <%--style="width: 270px"--%> />
                                        <div class="title_caption"><a href="Haberler.aspx?HABERID= <%#Eval("HABERID")%>"><%#Eval("HABERBASLIK") %></a></div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </li>

                            <li>
                                <asp:Repeater ID="Repeater15" runat="server">
                                    <ItemTemplate>
                                        <img src="<%#Eval("HABERRESIM") %>" <%--style="width: 270px; height: 210px"--%> />
                                        <div class="title_caption"><a href="Haberler.aspx?HABERID= <%#Eval("HABERID")%>"><%#Eval("HABERBASLIK") %></a></div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </li>

                            <li>
                                <asp:Repeater ID="Repeater16" runat="server">
                                    <ItemTemplate>
                                        <img src="<%#Eval("HABERRESIM") %>" <%--style="width: 270px"--%> />
                                        <div class="title_caption"><a href="Haberler.aspx?HABERID= <%#Eval("HABERID")%>"><%#Eval("HABERBASLIK") %></a></div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="content_middle">
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <div class="content_middle_leftbar">
                        <div class="single_category wow fadeInDown">
                            <h2><span class="bold_line"><span></span></span><span class="solid_line"></span><a class="title_text">Ekonomi</a> </h2>

                            <ul class="catg1_nav">
                                <asp:Repeater ID="Repeater4" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <div class="catgimg_container">
                                                <a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %>" class="catg1_img"></a>
                                                <img src="<%#Eval("HABERRESIM") %>" style="height: 150px; width: 270px" />
                                            </div>
                                            <h3 class="post_titile"><a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %>"><%#Eval("HABERBASLIK") %></a></h3>
                                            <div class="comments_box"><span class="meta_date" style="color: #000000"><%#Eval("HABERTARIH") %></span> <span class="meta_more"><a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %>">Daha Fazla...</a></span> </div>
                                            &nbsp;&nbsp;     
                                        </li>

                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>

                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="content_middle_middle">
                        <div class="slick_slider2">
                            <asp:Repeater ID="Repeater17" runat="server">
                                <ItemTemplate>
                                    <div class="single_featured_slide">

                                        <a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %>"></a>
                                        <img src="<%#Eval("HABERRESIM") %>" style="height: 400px" />
                                        <h2><a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %>"><%#Eval("HABERBASLIK") %></a></h2>
                                        <p><%#Eval("HABERICERIK").ToString().Substring(0,150) %>...</p>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <div class="content_middle_rightbar">
                        <div class="single_category wow fadeInDown">
                            <h2><span class="bold_line"><span></span></span><span class="solid_line"></span><a class="title_text">Sağlık</a> </h2>

                            <ul class="catg1_nav">
                                <asp:Repeater ID="Repeater5" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <div class="catgimg_container">
                                                <a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %>" class="catg1_img"></a>
                                                <img src="<%#Eval("HABERRESIM") %>" style="height: 150px; width: 270px" />
                                            </div>
                                            <h3 class="post_titile"><a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %>"><%#Eval("HABERBASLIK") %></a></h3>
                                            <div class="comments_box"><span class="meta_date" style="color: #000000"><%#Eval("HABERTARIH") %></span> <span class="meta_more"><a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %>">Daha Fazla...</a></span> </div>
                                            &nbsp;&nbsp; 
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="content_bottom">
                <div class="col-lg-8 col-md-8">
                    <div class="content_bottom_left">
                        <div class="single_category wow fadeInDown">
                            <h2><span class="bold_line"><span></span></span><span class="solid_line"></span><a class="title_text">Spor</a></h2>
                            <div class="business_category_left wow fadeInDown">
                                <ul class="fashion_catgnav">
                                    <li>
                                        <asp:Repeater ID="Repeater2" runat="server">
                                            <ItemTemplate>
                                                <div>
                                                    <a href="Haberler.aspx?HABERID=<%#Eval("HABERID") %>"></a>
                                                    <img src="<%#Eval("HABERRESIM") %>" style="width: 370px; height: 300px" />

                                                </div>
                                                <h2 class="catg_titile"><a href="Haberler.aspx?HABERID=<%#Eval("HABERID") %>"><%#Eval("HABERBASLIK") %></a></h2>
                                                <div class="comments_box"><span class="meta_date" style="color: #000000"><%#Eval("HABERTARIH") %></span><span class="meta_more"><a href="Haberler.aspx?HABERID=<%#Eval("HABERID") %>">Daha Fazla...</a></span> </div>
                                                <p><%#Eval("HABERICERIK").ToString().Substring(0,150) %>...</p>

                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </li>
                                </ul>
                            </div>

                            <div class="business_category_right wow fadeInDown">
                                <ul class="small_catg wow fadeInDown">
                                    <asp:Repeater ID="Repeater3" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <div class="media wow fadeInDown">
                                                    <a class="media-left">
                                                        <img src="<%#Eval("HABERRESIM") %>" <%--style="height: 150px; width: 230px"--%> /></a>

                                                    <div class="media-body">
                                                        <h4 class="media-heading"><a href="Haberler.aspx?HABERID=<%#Eval("HABERID") %>"><span class="auto-style1"><%#Eval("HABERBASLIK") %></span> </a></h4>
                                                        <div class="comments_box"><span class="meta_date" style="color: #000000"><%#Eval("HABERTARIH") %></span> </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>


                        <div class="games_fashion_area">
                            <div class="games_category">
                                <div class="single_category">
                                    <h2><span class="bold_line"><span></span></span><span class="solid_line"></span><a class="title_text">Teknoloji</a> </h2>
                                    &nbsp;
                                           <ul class="fashion_catgnav wow fadeInDown">
                                               <asp:Repeater ID="Repeater6" runat="server">
                                                   <ItemTemplate>
                                                       <li>
                                                           <div class="catgimg2_container">
                                                               <a href="Haberler.aspx"></a>
                                                               <img src="<%#Eval("HABERRESIM")%>" style="height: 300px; width: 360px" />
                                                           </div>

                                                           <h2 class="catg_titile"><a href="Haberler.aspx?HABERID=<%#Eval("HABERID") %>"><%#Eval("HABERBASLIK") %></a></h2>
                                                           <div class="comments_box"><span class="meta_date" style="color: #000000"><%#Eval("HABERTARIH") %> </span><span class="meta_more"><a href="Haberler.aspx?HABERID=<%#Eval("HABERID") %>">Daha Fazla...</a></span></div>
                                                           <p><%#Eval("HABERICERIK").ToString().Substring(0,150) %>...</p>
                                                       </li>
                                                   </ItemTemplate>
                                               </asp:Repeater>
                                           </ul>

                                    <ul class="small_catg wow fadeInDown">
                                        <asp:Repeater ID="Repeater7" runat="server">
                                            <ItemTemplate>
                                                <li>
                                                    <div class="media">
                                                        <a class="media-left">
                                                            <img src="<%#Eval("HABERRESIM") %>" <%--style="width: 230px; height: 150px"--%> /></a>

                                                        <div class="media-body">
                                                            <h4 class="media-heading"><a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %>"><span class="auto-style1"><%#Eval("HABERBASLIK") %></span></a></h4>
                                                            <div class="comments_box"><span class="meta_date" style="color: #000000"><%#Eval("HABERTARIH") %></span> </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </div>

                            <div class="fashion_category">
                                <div class="single_category">
                                    <div class="single_category wow fadeInDown">
                                        <h2><span class="bold_line"><span></span></span><span class="solid_line"></span><a class="title_text">Kadın</a> </h2>
                                        &nbsp;

                                            <ul class="fashion_catgnav wow fadeInDown">
                                                <asp:Repeater ID="Repeater8" runat="server">
                                                    <ItemTemplate>
                                                        <li>
                                                            <div class="catgimg2_container">
                                                                <a href="Haberler.aspx"></a>
                                                                <img src="<%#Eval("HABERRESIM") %>" style="height: 300px; width: 370px" />
                                                            </div>
                                                            <h2 class="catg_titile"><a href="Haberler.aspx?HABERID=<%#Eval("HABERID") %>"><%#Eval("HABERBASLIK")%></a></h2>
                                                            <div class="comments_box"><span class="meta_date" style="color: #000000"><%#Eval("HABERTARIH")%></span> <span class="meta_more"><a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %>">Daha Fazla...</a></span> </div>
                                                            <p><%#Eval("HABERICERIK").ToString().Substring(0,150) %>...</p>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>

                                        <ul class="small_catg wow fadeInDown">
                                            <asp:Repeater ID="Repeater9" runat="server">
                                                <ItemTemplate>
                                                    <li>
                                                        <div class="media wow fadeInDown">
                                                            <a class="media-left">
                                                                <img src="<%#Eval("HABERRESIM")%>" <%--style="width: 230px; height: 150px" --%> /></a>


                                                            <div class="media-body">
                                                                <h4 class="media-heading"><a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %>"><span class="auto-style1"><%#Eval("HABERBASLIK") %> </span></a></h4>
                                                                <div class="comments_box"><span class="meta_date" style="color: #000000"><%#Eval("HABERTARIH")%></span></div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="technology_catrarea">
                            <div class="single_category">
                                <h2><span class="bold_line"><span></span></span><span class="solid_line"></span><a class="title_text">Eğlence</a> </h2>
                                <div class="business_category_left">

                                    <ul class="fashion_catgnav wow fadeInDown">
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <li>
                                                    <div class="catgimg2_container">
                                                        <a href="Haberler.aspx"></a>
                                                        <img src="<%#Eval("HABERRESIM") %>" style="height: 300px; width: 370px" />

                                                    </div>

                                                    <h2 class="catg_titile"><a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %>"><%#Eval("HABERBASLIK") %> </a></h2>
                                                    <div class="comments_box"><span class="meta_date" style="color: #000000"><%#Eval("HABERTARIH") %></span> <span class="meta_more"><a href="Haberler.aspx?HABERID= <%#Eval("HABERID")%>">Daha Fazla...</a></span> </div>
                                                    <p><%#Eval("HABERICERIK").ToString().Substring(0,150)%>...</p>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>

                                <div class="business_category_right">
                                    <ul class="small_catg wow fadeInDown">
                                        <asp:Repeater ID="Repeater10" runat="server">
                                            <ItemTemplate>
                                                <li>
                                                    <div class="media wow fadeInDown">
                                                        <a class="media-left">
                                                            <img src="<%#Eval("HABERRESIM") %>" <%--style="height: 150px; width: 230px" --%> /></a>


                                                        <div class="media-body">
                                                            <h4 class="media-heading"><a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %>"><span class="auto-style1"><%#Eval("HABERBASLIK") %></span> </a></h4>
                                                            <div class="comments_box"><span class="meta_date" style="color: #000000"><%#Eval("HABERTARIH") %></span> </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="col-lg-4 col-md-4">
                    <div class="content_bottom_right">
                        <div class="single_bottom_rightbar">
                            <h2>SON GÖNDERİLER</h2>
                            <ul class="small_catg popular_catg wow fadeInDown">
                                <asp:Repeater ID="Repeater11" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <div class=" media wow fadeInDown">
                                                <a class="media-left">
                                                    <img src="<%#Eval("HABERRESIM") %>" <%--style="height: 190px; width: 190px"--%> />
                                                </a>

                                                <div class="media-body">
                                                    <h4 class="media-heading"><a href="Haberler.aspx?HABERID= <%#Eval("HABERID") %> "><%#Eval("HABERBASLIK") %></a></h4>
                                                    <p><%#Eval("HABERICERIK").ToString().Substring(0,100) %>...</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>


                        <div class="single_bottom_rightbar">
                            <br />
                            <br />
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
                                                            <p><%#Eval("HABERICERIK").ToString().Substring(0,100) %>...</p>
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
                            <br />
                            <br />
                            <h2>&nbsp; Popüler Linkler</h2>
                            <ul>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">Blog Sayfası</a></li>
                                <li><a href="#">Error Page</a></li>
                                <li><a href="#">Social link</a></li>
                                <li><a href="#">Login</a></li>
                            </ul>
                        </div>

                        <div class="single_bottom_rightbar">
                            <br /><br /><br /><br />
                            <img src="sponsor/trendyol.gif" class="img-center " alt="" height="350px" width="350px"  />
                        </div>

                    </div>
                </div>

            </div>
        </section>
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
                                <asp:Repeater ID="Repeater20" runat="server">
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
