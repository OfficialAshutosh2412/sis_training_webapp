<%@ Page Title="SIS | ADMIN | Records Room" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Records.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Admin.Records" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="bookmarks">
        <a href="#users">Users</a>
        <a href="#admin">Admin</a>
        <a href="#insession">Non-certified</a>
        <a href="#final">Certified</a>
        <a href="#help">Help</a>
        <a href="#feedback">Feedback</a>
    </section>
    <section class="users" id="users">
        <h2>Students information</h2>
        <div class="grid-scroll">
            <asp:GridView ID="GridView1" CssClass="table table-secondary" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:TemplateField HeaderText="Profile Image" SortExpression="DP">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DP") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:HyperLink NavigateUrl='<%# Eval("DP","../ProfileFolder/{0}") %>' runat="server">
                                <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl='<%# Eval("DP","../ProfileFolder/{0}") %>' Width="69px" />
                            </asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="CollegeName" HeaderText="College Name" SortExpression="CollegeName" />
                    <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                    <asp:BoundField DataField="JoinDate" HeaderText="Join Date" SortExpression="JoinDate" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                    <asp:BoundField DataField="Tech" HeaderText="Technology" SortExpression="Tech" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Name], [DOB], [Email], [Phone], [CollegeName], [Course], [JoinDate], [Address], [Type], [DP], [Gender], [Semester], [Tech] FROM [Signup] WHERE ([Type] = @Type)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="user" Name="Type" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Signup.Id, Signup.Name, Signup.Password, Signup.DOB, Signup.Phone, Signup.CollegeName, Signup.Course, Signup.Semester, Signup.Tech, Signup.Gender, Signup.DP, Signup.Type, Signup.Address, Signup.JoinDate, Signup.Id AS Expr1, Signup.Email, Status.Progress, Status.Id AS Expr2 FROM Signup INNER JOIN Status ON Signup.Id = Status.Id"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Signup]"></asp:SqlDataSource>
        </div>
    </section>
    <section class="admin" id="admin">
        <h2>Admin information</h2>
        <div class="grid-scroll">
            <asp:GridView ID="GridView2" CssClass="table table-secondary" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:TemplateField HeaderText="Profile Image" SortExpression="DP">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DP") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:HyperLink NavigateUrl='<%# Eval("DP","../ProfileFolder/{0}") %>' runat="server" >
                                <asp:Image ID="Image2" runat="server" Height="68px" ImageUrl='<%# Eval("DP","../ProfileFolder/{0}") %>' Width="65px" />
                            </asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="CollegeName" HeaderText="College Name" SortExpression="CollegeName" />
                    <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Tech" HeaderText="Technology" SortExpression="Tech" />
                    <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="JoinDate" HeaderText="Join Date" SortExpression="JoinDate" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Name], [DOB], [Phone], [Email], [CollegeName], [Course], [Type], [DP], [Gender], [Tech], [Semester], [Address], [JoinDate] FROM [Signup] WHERE ([Type] = @Type)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="admin" Name="Type" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </section>
    <section class="insession" id="insession">
        <h2>Student in Training Period</h2>
        <div class="grid-scroll">
            <asp:GridView ID="GridView3" CssClass="table table-secondary" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Progress" HeaderText="Progress" SortExpression="Progress" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Status] WHERE ([Progress] = @Progress)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="in progress" Name="Progress" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </section>
    <section class="final" id="final">
        <h2>Certified Students</h2>
        <div class="grid-scroll">
            <asp:GridView ID="GridView4" CssClass="table table-secondary w-100" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource6" Width="238px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Progress" HeaderText="Progress" SortExpression="Progress" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Status] WHERE ([Progress] = @Progress)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="completed" Name="Progress" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </section>
    <section class="help" id="help">
        <h2>Help Queries</h2>
        <div class="grid-scroll">
            <asp:GridView ID="GridView5" CssClass="table table-secondary w-100" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource7">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Questions" HeaderText="Questions" SortExpression="Questions" />
                    <asp:BoundField DataField="Answers" HeaderText="Answers" SortExpression="Answers" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Help]"></asp:SqlDataSource>
        </div>
    </section>
    <section class="feedback" id="feedback">
        <h2>Students Feedback</h2>
        <div class="grid-scroll">
            <asp:GridView ID="GridView6" CssClass="table table-secondary w-100" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource8">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Words" HeaderText="Words" SortExpression="Words" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
        </div>
    </section>
</asp:Content>
