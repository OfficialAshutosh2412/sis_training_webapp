<%@ Page Title="SIS | Announcements" Language="C#" MasterPageFile="~/Landing.Master" AutoEventWireup="true" CodeBehind="Announcements.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Announcements" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="announce-container">
        <h1>Announcements <i class="fa-solid fa-bullhorn"></i></h1>
        <div class="announce-hero">
            <div class="announce-hero-data">
                <h1>New Courses</h1>
                <h1>Soon we are gonna launch new training course on <span style="color: #9859ff !important; background: white;">.NetCore</span></h1>
                <p>On 2 October 2023</p>
                <small>Post Date : 26 September 2023</small>
            </div>
            <div class="announce-hero-image">
                <img src="res/media/img/pngwing.com(1).png" />
            </div>
        </div>
        <div class="announced-dates">
            <h1 style="color: #9859ff !important; ">.NetCore</h1>
            <h2>is now launched on our website</h2>
            <small>Post Date : 2 October 2023</small>
        </div>
    </section>
    <%--footer--%>
    <section class="footer" id="contact">
        <div class="social">
            <h3><i class="fa-solid fa-thumbs-up"></i> Follow Us</h3>
            <div>
                <asp:HyperLink NavigateUrl="navigateurl" runat="server"><i class="fa-brands fa-square-facebook"></i></asp:HyperLink>
                <asp:HyperLink NavigateUrl="navigateurl" runat="server"><i class="fa-brands fa-square-google-plus"></i></asp:HyperLink>
                <asp:HyperLink NavigateUrl="navigateurl" runat="server"><i class="fa-brands fa-square-x-twitter"></i></asp:HyperLink>
                <asp:HyperLink NavigateUrl="navigateurl" runat="server"><i class="fa-brands fa-square-whatsapp"></i></asp:HyperLink>
                <asp:HyperLink NavigateUrl="navigateurl" runat="server"><i class="fa-brands fa-square-instagram"></i></asp:HyperLink>
            </div>
        </div>
        <div class="quick-links">
            <h3><i class="fa-solid fa-phone-volume"></i> Contact Us</h3>
            <div>
                <p><i class="fa-solid fa-envelope" style="color:var(--hover-bg);"></i> <asp:Label Text="sunriseinfotechsolutionn@gmail.com" runat="server" /></p>
                <p><i class="fa-solid fa-tty" style="color:var(--hover-bg);"></i> <asp:Label Text="7755890555,7267973767" runat="server" /></p>
            </div>
        </div>
        <div class="address">
            <h3><i class="fa-solid fa-location-dot"></i> Find Us On</h3>
            <div>
                <asp:Label Text="643Ma/288 Mithlesh Sadan Mohibullapur near noubasta pulia p/s Madion" runat="server" />
                <asp:Label Text="Sitapur road,Luchnow-226021" runat="server" />
            </div>
        </div>
    </section>
</asp:Content>
