<%@ Page Title="SIS | Admin | Dashboard" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Admin_home.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Admin.Admin_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .fa-spin{
            animation-duration: 5s;
        }
    </style>
    <div class="welcome">
        <div>
            <h1><i class="fa-solid fa-gear fa-spin"></i>DASHBOARD</h1>
        </div>
        <div>
            <h3><i class="fa-solid fa-hand-sparkles"></i>Welcome,
            <asp:Label runat="server" ID="adminame" />
        </h3>
        </div>
    </div>
    <section class="admin-card-container">
        <%--users--%>
        <div class="admin-card admin-nav-shadow">
            <i class="fa-solid fa-user-large counters"></i>
            <div>
                <asp:Label Text="" runat="server" ID="usercount" class="counters" />
                <asp:Label Text="+" runat="server" class="counters" />
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <p>Student Accounts</p>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/Records.aspx" CssClass="counterbtn" runat="server" ID="userCountLink"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
        <%--admin--%>
        <div class="admin-card admin-nav-shadow">
            <i class="fa-solid fa-user-gear counters"></i>
            <div>
                <asp:Label Text="" runat="server" ID="admincount" class="counters" />
                <asp:Label Text="+" runat="server" class="counters" />
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <p>Admin Accounts</p>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/Records.aspx" CssClass="counterbtn" runat="server" ID="HyperLink1"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
        <%--completed--%>
        <div class="admin-card admin-nav-shadow">
            <i class="fa-solid fa-user-check counters"></i>
            <div>
                <asp:Label Text="" runat="server" ID="completed" class="counters" />
                <asp:Label Text="+" runat="server" class="counters" />
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <p>Certified Students</p>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/Records.aspx" CssClass="counterbtn" runat="server" ID="HyperLink2"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
        <%--pending--%>
        <div class="admin-card admin-nav-shadow">
            <i class="fa-solid fa-user-clock counters"></i>
            <div>
                <asp:Label Text="" runat="server" ID="pending" class="counters" />
                <asp:Label Text="+" runat="server" class="counters" />
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <p>Sessional Students</p>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/Records.aspx" CssClass="counterbtn" runat="server" ID="HyperLink3"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
    </section>
    <section class="admin-card-container">
        <div class="admin-card admin-nav-shadow">
            <i class="fa-solid fa-handshake counters"></i>
            <div class="d-flex justify-content-center align-items-center">
                <h6>To enter new help queries entry.</h6>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/Admin-help.aspx" CssClass="counterbtn" runat="server" ID="HyperLink4"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
        <div class="admin-card admin-nav-shadow">
            <i class="fa-solid fa-award counters"></i>
            <div class="d-flex justify-content-center align-items-center">
                <h6>Upload new certificate</h6>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/Admin_certificate.aspx" CssClass="counterbtn" runat="server" ID="HyperLink5"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
        <div class="admin-card admin-nav-shadow">
            <i class="fa-solid counters fa-chart-simple"></i>
            <div class="d-flex justify-content-center align-items-center">
                <h6>View updated status</h6>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/Admin_status.aspx" CssClass="counterbtn" runat="server" ID="HyperLink6"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
    </section>
    <section class="admin-card-container admin-nav-shadow">
        <div class="admin-card">
            <i class="fa-solid fa-database counters"></i>
            <div class="d-flex justify-content-center align-items-center">
                <h6>Go to record room</h6>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/Records.aspx" CssClass="counterbtn" runat="server" ID="HyperLink7"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
    </section>
</asp:Content>
