<%@ Page Title="SIS | Feedback" Language="C#" MasterPageFile="~/Registered/Register_Layout.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Registered.Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="signin">
        <section class="forms-box" style="width: 100%; padding: 1%; border-radius: 10px;">
            <h1 class="text-light"><i class="fa-solid fa-hand-holding-heart"></i>Feedback</h1>
            <div class="forms">
                <div class="form-item">
                    <p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="name required" ForeColor="#FF3300" ControlToValidate="name">*</asp:RequiredFieldValidator>
                        <i class="fa-solid fa-pen-fancy"></i>
                        <asp:Label Text="Your name" runat="server" />
                    </p>
                    <asp:TextBox ID="name" runat="server" ReadOnly="true"></asp:TextBox>
                </div>
            </div>
            <div class="forms">
                <div class="form-item">
                    <p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="email required" ForeColor="#FF3300" ControlToValidate="email">*</asp:RequiredFieldValidator>
                        <i class="fa-solid fa-envelope"></i>
                        <asp:Label Text="Email" runat="server" />
                    </p>
                    <asp:TextBox ID="email" runat="server" TextMode="Email" ReadOnly="true"></asp:TextBox>
                </div>
            </div>
            <div class="forms">
                <div class="form-item">
                    <p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="write something for us" ForeColor="#FF3300" ControlToValidate="words">*</asp:RequiredFieldValidator>
                        <i class="fa-solid fa-feather"></i>
                        <asp:Label Text="Your words" runat="server" />
                    </p>
                    <asp:TextBox ID="words" runat="server" placeholder="write something for us..." TextMode="MultiLine" Rows="1"></asp:TextBox>
                </div>
            </div>
            <div class="forms">
                <div class="form-item">
                    <asp:Button ID="Button1" runat="server" Text="send now !" CssClass="submit p-2 rounded" Style="background: var(--hover-bg); width: fit-content;" OnClick="Button1_Click" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="d-none" ShowMessageBox="True" />
                </div>
            </div>
        </section>
    </section>
</asp:Content>
