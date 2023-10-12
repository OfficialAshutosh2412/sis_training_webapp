<%@ Page Title="CTS | Admin | Help" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Admin-help.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Admin.Admin_help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="status-container">
        <div class="status">
            <h1 ><i class="fa-solid fa-handshake"></i> Help Portal</h1>
        <div class="forms">
            <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" autocomplete="true"  ErrorMessage="no textbox should be empty" ForeColor="#FF3300" ControlToValidate="question">*</asp:RequiredFieldValidator><i class="fa-solid fa-question"></i> <asp:Label Text="Question" runat="server" /></p>
                <asp:TextBox ID="question" runat="server" placeholder="question title write here..." style="color: white !important; background: #808080"></asp:TextBox>
            </div>
           </div> 
        <div class="forms">
             <div class="form-item">
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="no textbox should be empty" ForeColor="#FF3300" ControlToValidate="asnwer">*</asp:RequiredFieldValidator><i class="fa-solid fa-check"></i>
                    <asp:Label Text="Answer" runat="server" /></p>
                <asp:TextBox ID="asnwer" runat="server"  placeholder="answers write here..." style="color: white !important; background: #808080"></asp:TextBox>
            </div>
        </div>
        <div class="form-item mt-3" style="width: fit-content">
            <div class="form-item">
                <asp:Button ID="Button1" runat="server" Text="Upload it!"  CssClass="submit p-2 rounded" style="background:var(--hover-bg);width:fit-content;" OnClick="Button1_Click"/>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="d-none" ShowMessageBox="True" />
            </div>
        </div>
        </div>
    </section>
</asp:Content>
