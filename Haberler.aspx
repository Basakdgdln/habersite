<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Haberler.aspx.cs" Inherits="Haberler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/Haberler.aspx?HABERID="+ Eval("HABERID")%>'></asp:HyperLink>

        </ItemTemplate>
    </asp:Repeater>


</asp:Content>
