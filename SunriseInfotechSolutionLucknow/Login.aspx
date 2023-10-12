<%@ Page Title="SIS | Login" Language="C#" MasterPageFile="~/Landing.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="signin">
        <section class="forms-box" style="width: 100%; padding: 1%; border-radius: 10px;">
            <h1>Signin</h1>
            <div class="forms">
                <div class="form-item">
                    <p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" autocomplete="true" ErrorMessage="email should be filled" ForeColor="#FF3300" ControlToValidate="email">*</asp:RequiredFieldValidator><i class="fa-solid fa-envelope"></i>
                        <asp:Label Text="Email" runat="server" /></p>
                    <asp:TextBox ID="email" runat="server" placeholder="please do not write '@gmail.com'"></asp:TextBox>
                </div>
            </div>
            <div class="forms">
                <div class="form-item">
                    <p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="fill password field" ForeColor="#FF3300" ControlToValidate="password">*</asp:RequiredFieldValidator><i class="fa-solid fa-key"></i>
                        <asp:Label Text="password" runat="server"/>
                    </p>
                    <asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="enter your password here..."></asp:TextBox>
                </div>
            </div>
            <div class="forms">
                <div class="form-item">
                    <asp:Button ID="Button1" runat="server" Text="Signin now !" CssClass="submit p-2 rounded" Style="background: var(--hover-bg); width: fit-content;" OnClick="Button1_Click" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="d-none" ShowMessageBox="True" />
                </div>
            </div>
            <div class="forms">
                <div class="form-item">
                    <asp:HyperLink NavigateUrl="~/Signup.aspx" CssClass="navigator" runat="server">Haven't an acoount? click here !</asp:HyperLink>
                </div>
            </div>
        </section>
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
