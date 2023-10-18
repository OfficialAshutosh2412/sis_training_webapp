<%@ Page Title="SIS | Edit Profile" Language="C#" MasterPageFile="~/Registered/Register_Layout.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Registered.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="signup" style="margin-top:100px">
        <h1><i class="fa-solid fa-user-pen"></i> Update Profile</h1>
        <div class="forms">
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="name required " ForeColor="#FF3300" ControlToValidate="name">**</asp:RequiredFieldValidator><i class="fa-solid fa-user"></i>
                    &nbsp;&nbsp;<asp:Label Text="Your name" runat="server" /></p>
                <asp:TextBox ID="name" runat="server"></asp:TextBox>
            </div>
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="DOB required" ForeColor="#FF3300" ControlToValidate="dob">**</asp:RequiredFieldValidator><i class="fa-solid fa-calendar-days"></i>&nbsp;&nbsp;<asp:Label Text="Date of Birth" runat="server" /></p>
                <asp:TextBox ID="dob" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
            </div>
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Phone number required" ForeColor="#FF3300" ControlToValidate="phone">**</asp:RequiredFieldValidator><i class="fa-solid fa-phone"></i>&nbsp;&nbsp;<asp:Label Text="Phone" runat="server" /></p>
                <asp:TextBox ID="phone" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="forms">
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="college name required" ForeColor="#FF3300" ControlToValidate="college">**</asp:RequiredFieldValidator><i class="fa-solid fa-building-columns"></i>&nbsp;&nbsp;<asp:Label Text="College name" runat="server" /></p>
                <asp:TextBox ID="college" runat="server"></asp:TextBox>
            </div>
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="course name required" ForeColor="#FF3300" ControlToValidate="course">**</asp:RequiredFieldValidator><i class="fa-solid fa-graduation-cap"></i>&nbsp;&nbsp;<asp:Label Text="Course" runat="server" /></p>
                <asp:TextBox ID="course" runat="server"></asp:TextBox>
            </div>
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="semester required " ForeColor="#FF3300" ControlToValidate="semester">**</asp:RequiredFieldValidator><i class="fa-solid fa-graduation-cap"></i>&nbsp;&nbsp;<asp:Label Text="Semester" runat="server" /></p>
                <asp:TextBox ID="semester" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="forms">
            
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="address required" ForeColor="#FF3300" ControlToValidate="address">**</asp:RequiredFieldValidator><i class="fa-solid fa-address-book"></i>&nbsp;&nbsp;<asp:Label Text="Address" runat="server" /></p>
                <asp:TextBox ID="address" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="forms">
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="technology required" ForeColor="#FF3300" ControlToValidate="tech">**</asp:RequiredFieldValidator><i class="fa-solid fa-code"></i>&nbsp;&nbsp;<asp:Label Text="Technology Opt." runat="server" /></p>
                <asp:TextBox ID="tech" runat="server"></asp:TextBox>
            </div>
            <div class="form-item">
                <p><i class="fa-solid fa-venus-mars"></i>&nbsp;&nbsp;<asp:Label Text="Gender" runat="server" /></p>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True">choose</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Transgender</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="forms">
            <div class="form-item">
                <p>
                    <i class="fa-solid fa-image"></i>&nbsp;&nbsp;
                    <asp:Label Text="Profile Picture" runat="server" /></p>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
        </div>
        <div class="forms">
            <div class="form-item">
                <asp:Button ID="Button1" runat="server" Text="update now !"  CssClass="submit p-2 rounded" style="background:var(--hover-bg);width:fit-content;" OnClick="Button1_Click" /> 
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="d-none" ShowMessageBox="True" />
            </div>
        </div>
    </section>
</asp:Content>
