﻿<%@ Page Title="SIS | Admin | Status" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Admin_status.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Admin.Admin_status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="status-container">
        <div class="status">
            <h1 class="p-1"><i class="fa-solid fa-chart-simple"></i> Student Status</h1>
            <div class="form-item">
                <p>
                    <i class="fa-solid fa-envelope"></i>
                    <asp:Label Text="Select Student Email" runat="server" />
                </p>
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="Email" DataValueField="Email" Style="color: white !important; background: #808080">
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
                    <i class="fa-solid fa-chart-simple"></i>
                    <asp:Label Text="Write progress of student" runat="server" />
                </p>
                <asp:DropDownList ID="DropDownList2" runat="server" Style="color: white !important; background: #808080">
                    <asp:ListItem Selected="True">--select--</asp:ListItem>
                    <asp:ListItem>in progress</asp:ListItem>
                    <asp:ListItem>completed</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-item mt-3" style="width: fit-content">
                <asp:Button ID="Button1" runat="server" Text="set now !" CssClass="submit p-2" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
</asp:Content>
