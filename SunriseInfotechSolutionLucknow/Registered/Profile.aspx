<%@ Page Title="SIS | Profile" Language="C#" MasterPageFile="~/Registered/Register_Layout.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Registered.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="profile"  style="margin-top:100px">
        <div class="pro-foot pro-feet">
            <h3><i class="fa-solid fa-user"></i> Profile</h3>
            <p><asp:HyperLink NavigateUrl="~/Registered/EditProfile.aspx" runat="server" style="color:var(--hover-bg);font-size:1.5rem" ToolTip="edit profile" ><i class="fa-solid fa-user-pen"></i></asp:HyperLink></p>
        </div>
        <div class="profile-container">
            <section class="d-flex justify-content-center">
                <div class="pro-img">
                <asp:HyperLink ID="imglink" runat="server">
                    <asp:Image ID="Image1" runat="server" />
                </asp:HyperLink>
            </div>
            </section>
            <div class="pro-name">
                <asp:Label ID="name" runat="server" /><br />
                <small style="font-size:12pt;margin-top:-100px;"><asp:Label ID="dob" runat="server" /></small>
            </div>
            <div class="pro-data">
                <p>
                    <i class="fa-solid fa-building-columns"></i>
                    <asp:Label Text=" College : " runat="server" />
                </p>
                <asp:Label ID="college" runat="server" />
            </div>
            <div class="pro-data">
                <p>
                    <i class="fa-solid fa-graduation-cap"></i>
                    <asp:Label Text=" Course : " runat="server" />
                </p>
                <asp:Label ID="course" runat="server" />
            </div>
            <div class="pro-data">
                <p>
                    <i class="fa-solid fa-list-ol"></i>
                    <asp:Label Text=" Semester : " runat="server" />
                </p>
                <asp:Label ID="sem" runat="server" />
            </div>
            <div class="pro-data">
                <p>
                    <i class="fa-solid fa-code"></i>
                    <asp:Label Text=" Technology Opt : " runat="server" />
                </p>
                <asp:Label ID="tech" runat="server" />
            </div>
            <div class="pro-data">
                <p>
                    <i class="fa-solid fa-venus-mars"></i>
                    <asp:Label Text=" Gender : " runat="server" />
                </p>
                <asp:Label ID="gender" runat="server" />
            </div>
            <div class="pro-data">
                <p>
                    <i class="fa-solid fa-location-dot"></i>
                    <asp:Label Text=" Address : " runat="server" />
                </p>
                <asp:Label ID="address" runat="server" />
            </div>
            <div class="pro-data">
                <p>
                    <i class="fa-solid fa-calendar-days"></i>
                    <asp:Label Text=" Batch Joining Date : " runat="server" />
                </p>
                <asp:Label ID="joining" runat="server" />
            </div>
            <div class="pro-foot">
                <p><i class="fa-solid fa-phone"></i> <asp:Label ID="phone" runat="server" /></p>
                <p><i class="fa-solid fa-id-card-clip"></i>
                    <asp:Label Text="Your ID - " runat="server" />
                    <asp:Label ID="ids" runat="server" /></p>
                <p><i class="fa-solid fa-envelope"></i> <asp:Label ID="email" runat="server" /></p>
            </div>
        </div>
    </section>
</asp:Content>
