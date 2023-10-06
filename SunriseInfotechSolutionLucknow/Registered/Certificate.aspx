<%@ Page Title="SIS | Certificate" Language="C#" MasterPageFile="~/Registered/Register_Layout.Master" AutoEventWireup="true" CodeBehind="Certificate.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Registered.Certificate1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="p-3"><i class="fa-solid fa-medal" style="color: var(--hover-bg); margin-top: 50px;"></i>Your Certifications</h1>
    <%--certificate and submittion form--%>
    <section class="certificate-container">
        <div class="certificate">
            <div class="status-heading">
                <h2>Your training status is
                <asp:Label ID="satuslabel" runat="server" />
                </h2>
            </div>
            <div class="signup">
                <h3>Document submit for certificate generation.</h3>
                <div class="form-item">
                    <asp:Label Text="Your Adhaar Card (in pdf format)" runat="server" />
                    <asp:FileUpload ID="FileUpload1" runat="server" placeholder="choose pdf file only" />
                </div>
                <div class="form-item">
                    <asp:Label Text="Your Passport Size photo (latest in jpeg format)" runat="server" />
                    <asp:FileUpload ID="FileUpload2" runat="server" placeholder="choose jpg only" />
                </div>
                <div class="form-item">
                    <asp:Button ID="Button1" runat="server" Text="submit documents" class="submit" Style="width: fit-content" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
        <%--preview of certificate--%>
        <div class=" preview">
            <div>
                <h1>Certificate Preview click on thumbnail.</h1>
            </div>
            <div>
                <asp:ImageButton ID="ImageButton1" Style="width: 150px" ImageUrl="~/Admin/Certificate_Images/preview.png" runat="server" OnClick="ImageButton1_Click" /></div>
        </div>
        <hr />
        <%--achieved certificate--%>
        <div class="achieve">
            <div><h1>Your Achieved Certificates</h1></div>
            <div>
                <asp:HyperLink ID="cerlink" runat="server">
                    <asp:Image ID="cert" runat="server" />
                </asp:HyperLink>
            </div>
        </div>
    </section>
</asp:Content>
