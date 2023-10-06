<%@ Page Title="SIS | Admin | Certifications" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Admin_certificate.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Admin.Admin_certificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="status mb-3">
        <h1 class="p-5 mt-5"><i class="fa-solid fa-award"></i>Student Certifications</h1>
        <div class="form-item">
            <p>
                <i class="fa-solid fa-envelope"></i>
                <asp:Label Text="Select Student Email" runat="server" />
            </p>
            <asp:DropDownList runat="server" ID="email" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="Email" DataValueField="Email">
                <asp:ListItem Selected="True">--select--</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Email] FROM [Signup] WHERE ([Type] = @Type)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="user" Name="Type" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="form-item mt-3">
            <p>
                <i class="fa-solid fa-image"></i>
                <asp:Label Text="Certificate of student" runat="server" />
            </p>
            <asp:FileUpload runat="server" ID="FileUpload1"></asp:FileUpload>
        </div>
        <div class="form-item mt-3" style="width: fit-content">
            <asp:Button ID="Button1" runat="server" Text="upload now !" CssClass="submit p-2" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>
