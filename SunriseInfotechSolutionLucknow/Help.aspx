<%@ Page Title="SIS | Help" Language="C#" MasterPageFile="~/Landing.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="margin-top:100px;color:white"><i class="fa-solid fa-handshake"></i> Frequently Asked questions will help you..</h1>
    <section class="help" style="color:#d8d8d8 !important">
        <asp:GridView ID="GridView1" CssClass="w-100 m-0 p-0 bg-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True">
            <Columns>
                <asp:TemplateField SortExpression="Answers" ShowHeader="False">
                    <ItemTemplate>
                        <div class="p-3">
                            <div class="fs-4"><asp:Label ID="Label3" runat="server" Text='<%# Bind("Id") %>'></asp:Label> <asp:Label ID="Label2" runat="server" Text='<%# Bind("Questions") %>'></asp:Label></div>
                            <div>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Answers") %>'></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Help]"></asp:SqlDataSource>
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
