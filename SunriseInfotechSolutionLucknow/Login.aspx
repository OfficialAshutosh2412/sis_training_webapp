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
                          &nbsp;<asp:Label Text="Email" runat="server" /></p>
                    <asp:TextBox ID="email" runat="server" placeholder="please do not write '@gmail.com'"></asp:TextBox>
                </div>
            </div>
            <div class="forms">
                <div class="form-item">
                    <p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="fill password field" ForeColor="#FF3300" ControlToValidate="password">*</asp:RequiredFieldValidator><i class="fa-solid fa-key"></i>
                        &nbsp;<asp:Label Text="Password" runat="server"/>
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
</asp:Content>
