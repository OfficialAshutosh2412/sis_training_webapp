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
</asp:Content>
