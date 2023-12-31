﻿<%@ Page Title="SIS | Signup" Language="C#" MasterPageFile="~/Landing.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="signup forms-box" style="margin-top:100px;">
        <h1>Signup</h1>
        <%--row 1--%>
        <div class="forms">
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="name required " ForeColor="#FF3300" ControlToValidate="name">**</asp:RequiredFieldValidator><i class="fa-solid fa-user"></i>
                    <asp:Label Text="Your name" runat="server" /></p>
                <asp:TextBox ID="name" runat="server" placeholder="Example"></asp:TextBox>
            </div>
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="create password" ForeColor="#FF3300" ControlToValidate="password">**</asp:RequiredFieldValidator><i class="fa-solid fa-key"></i>
                    <asp:Label Text="Create password" runat="server" /></p>
                <asp:TextBox ID="password" runat="server" placeholder="use digit, one Capital letter, small letter"></asp:TextBox>
            </div>
            <div class="form-item">
                <p>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password unmatched !" ControlToCompare="password" ControlToValidate="confirmPpassword" ForeColor="#FF3300">**</asp:CompareValidator><i class="fa-solid fa-key"></i>
                    <asp:Label Text="Confirm password" runat="server" /></p>
                <asp:TextBox ID="confirmPpassword" runat="server" placeholder="write same password again !"></asp:TextBox>
            </div>
        </div>
        <%--row 2--%>
        <div class="forms">
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="DOB required" ForeColor="#FF3300" ControlToValidate="dob">**</asp:RequiredFieldValidator><i class="fa-solid fa-calendar-days"></i> <asp:Label Text="Date of Birth" runat="server" /></p>
                <asp:TextBox ID="dob" runat="server" TextMode="DateTimeLocal" style="width:100%"></asp:TextBox>
            </div>
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email required" ForeColor="#FF3300" ControlToValidate="email">**</asp:RequiredFieldValidator><i class="fa-solid fa-envelope"></i> <asp:Label Text="Email" runat="server" /></p>
                <asp:TextBox ID="email" runat="server" TextMode="Email" placeholder="Example@gmail (gmail only)"></asp:TextBox>
            </div>
        </div>
        <div class="forms">
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Phone number required" ForeColor="#FF3300" ControlToValidate="phone">**</asp:RequiredFieldValidator><i class="fa-solid fa-phone"></i> <asp:Label Text="Phone" runat="server" /></p>
                <asp:TextBox ID="phone" runat="server" placeholder="1234567890"></asp:TextBox>
            </div>
            <div class="form-item" runat="server" ID="collegeDiv">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="college name required" ForeColor="#FF3300" ControlToValidate="college">**</asp:RequiredFieldValidator><i class="fa-solid fa-building-columns"></i> <asp:Label Text="College name" runat="server" /></p>
                <asp:TextBox ID="college" runat="server" placeholder="Example Institute Name"></asp:TextBox>
            </div>
        </div>
        <%--row 3--%>
        <div class="forms" >
            <div class="form-item" runat="server" ID="courseDiv">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="course name required" ForeColor="#FF3300" ControlToValidate="course">**</asp:RequiredFieldValidator><i class="fa-solid fa-graduation-cap"></i> <asp:Label Text="Course" runat="server" /></p>
                <asp:TextBox ID="course" runat="server" placeholder="B.tech, BSC, BCA, MCA, MBA, BBA, other"></asp:TextBox>
            </div>
            <div class="form-item" runat="server" ID="semesterDiv">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="semester required " ForeColor="#FF3300" ControlToValidate="semester">**</asp:RequiredFieldValidator><i class="fa-solid fa-graduation-cap"></i> <asp:Label Text="Semester" runat="server" /></p>
                <asp:TextBox ID="semester" runat="server" placeholder="1th, 2th, 3th, 4th, 5th, 6th,..."></asp:TextBox>
            </div>
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="address required" ForeColor="#FF3300" ControlToValidate="address">**</asp:RequiredFieldValidator><i class="fa-solid fa-address-book"></i> <asp:Label Text="Address" runat="server" /></p>
                <asp:TextBox ID="address" runat="server" placeholder="Example Lane Buliding no. examle..."></asp:TextBox>
            </div>
        </div>
        <%--row 4--%>
        <div class="forms">
            <div class="form-item" runat="server" ID="techDiv">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="technology required" ForeColor="#FF3300" ControlToValidate="tech">**</asp:RequiredFieldValidator><i class="fa-solid fa-code"></i> <asp:Label Text="Technology Opt." runat="server" /></p>
                <asp:TextBox ID="tech" runat="server" placeholder="ASP, C, C++, C#, Go, Ruby etc..."></asp:TextBox>
            </div>
            <div class="form-item">
                <p><i class="fa-solid fa-venus-mars"></i> <asp:Label Text="Gender" runat="server" /></p>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True">choose</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Transgender</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <%--row 5--%>
        <div class="forms">
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Profile picture required" ForeColor="#FF3300" ControlToValidate="FileUpload1">**</asp:RequiredFieldValidator><i class="fa-solid fa-image"></i>
                    <asp:Label Text="Profile Picture" runat="server" /></p>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="text-light" />
            </div>
            <div class="form-item">
                <p><i class="fa-solid fa-image"></i>
                    <asp:Label Text="Enter token" runat="server" /></p>
                <asp:TextBox ID="token" runat="server" placeholder="(only for admin)" OnTextChanged="token_TextChanged" AutoPostBack="True"></asp:TextBox>
            </div>
             <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="enter date of joining" ForeColor="#FF3300" ControlToValidate="joindate">**</asp:RequiredFieldValidator><i class="fa-solid fa-calendar-days"></i> <asp:Label Text="Date of joining" runat="server" /></p>
                <asp:TextBox ID="joindate" runat="server" TextMode="DateTimeLocal" CssClass="text-light"></asp:TextBox>
            </div>
        </div>
        <%--button--%>
        <div class="forms">
            <div class="form-item">
                <asp:Button ID="Button1" runat="server" Text="Submit now !" CssClass="submit p-2 rounded" style="background:var(--hover-bg);width:fit-content;" OnClick="Button1_Click" /> <asp:Button ID="adminBtn" runat="server" Text="singup as admin now !" CssClass="submit mt-3" Visible="False" OnClick="AdminBtn_Click" style="width:fit-content" />
            </div>
        </div>
        <div class="forms">
            <div class="form-item">
                <asp:HyperLink NavigateUrl="~/Login.aspx" CssClass="navigator" runat="server" >Already have an acoount? click here !</asp:HyperLink>
            </div>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="d-none" ShowMessageBox="True"/>
    </section>
</asp:Content>
