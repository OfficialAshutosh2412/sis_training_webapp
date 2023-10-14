<%@ Page Title="SIS | Certificate" Language="C#" MasterPageFile="~/Registered/Register_Layout.Master" AutoEventWireup="true" CodeBehind="Certificate.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Registered.Certificate1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--certificate and submittion form--%>
    <section class="certificate-container">
        <div class="certificate">
            <div class="status-heading">
                <div class="status-left">
                    <h2>Your training status is
                        <asp:Label ID="satuslabel" runat="server" />
                    </h2>
                </div>
            </div>
            <div class="signup p-2">
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
        <%--achieved certificate--%>
        <div class="achieve">
            <div><h1>Your Achieved Certificates</h1></div>
            <div class="d-block">
                <asp:HyperLink ID="cerlink1" runat="server">
                    <div>
                        <asp:Image ID="cert" runat="server" />
                    </div>
                </asp:HyperLink>
                <div class="cert-share">
                    <asp:HyperLink ID="cerlink3" CssClass="downloadBtn" ToolTip="preview" runat="server" ><i class="fa-solid fa-eye"></i></asp:HyperLink>
                    <asp:HyperLink ID="cerlink2" CssClass="downloadBtn" download="your_e-certificate" ToolTip="download" runat="server" ><i class="fa-solid fa-arrow-down"></i></asp:HyperLink>
                    <button type="button" title="share" id="share"><i class="fa-solid fa-share-nodes"></i></button>
                </div>
            </div>
        </div>
    </section>

    <script>
        const shareBtn = document.querySelector("#share");
        shareBtn.addEventListener("click", (event) => {
            if (navigator.share) {
                navigator.share({
                    title: "google",
                    url: "http://www.google.com"
                }).then(() => {
                    console.log("thanks for using api")
                }).catch(() => {
                    alert("error: in web share API");
                })
            } else {
                alert("your broswer doe not support web share api.");
            }
        })
    </script>
</asp:Content>
