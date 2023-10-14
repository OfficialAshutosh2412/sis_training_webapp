<%@ Page Title="SIS | About us" Language="C#" MasterPageFile="~/Landing.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="about-container">
        <%--box1--%>
        <section class="about-sections" style="margin-top: 100px">
            <h1 class=" text-center m-3 fw-lighter">About us</h1>
            <p class="justify">
                For any reformation of web and/or IT activities, the most efficient, reliable organization is SunRise Infotech Solution (SIS). We offer authentic custom application development services. Our experts assist web and application development companies to make the most out of their IT works and deals. SIS has been entirely focused on quality than quantity! We believe in mutual communication and coordination with every client to formulate the solutions more powerful and more efficient. With the cutting edge technology, we put our skills in offering cross-industry specific software development solutions to a wide range of clientele. We try to follow the mold of an escalated business process in our software application development. What make us stand out from
            </p>
            <asp:Label Text="Enterprise optimization solutions for business processes others are our profound services as follows:" runat="server" />
            <ul class="">
                <li>Mobile application development</li>
                <li>Through evaluation of applications</li>
                <li>IT software solutions and services</li>
                <li>Custom software and application development</li>
            </ul>
            <asp:HyperLink NavigateUrl="~/res/media/files/sunfinal.pdf" download="brochure_SIS" runat="server" Style="color: var(--hover-bg)"><i class="fa-solid fa-download"></i> Download Brochure</asp:HyperLink>
        </section>
        <%--box2--%>
        <section class="about-sections">
            <h3 class="text-light p-4 rounded" style="background: var(--hover-bg)">Started as a Project Training organization,we are proud to have gained trust of more then 9000 Students till now</h3>
            <h6>Today,Sunrise Infotech Solution majorly deals in:</h6>
            <ul>
                <li>Live Project Training and Summer Training in various technologies of B.TechCS,IT,EC,ME,EE,CIVIL.</li>
                <li>Software Development.</li>
                <li>Professional Education and Technology based training..</li>
            </ul>
        </section>
        <%--box3--%>
        <div class="about-sections about-flex">
            <section class="about-sections " style="text-align: justify; width: 100%; margin-left: 0;">
                <p>
                    SIS is a free and unconventional provider technical support for software applications and their utilities. Our company has no relation with any third party if it is not specified in form of legal agreement. The utilities distributed by us are also present on the owners website. To avail the services and to know more about warranty associated with software, hardware and peripherals, please contact relevant third party Techieonesolution. Any similarity in logo, trademark, brand mark, company name, images and services to any company dealing in same fraternity is not our responsibility and they are just for representation purpose.
                </p>
            </section>
            <section class="text-light p-3 bg-dark rounded m-2" style="text-align: justify">
                <h5>Sunriese Infotech Solution</h5>
                <p>643Ma/288 Mithlesh Sadan Mohibullapur near noubasta pulia p/s Madion Sitapur road,Luchnow-226021.</p>
                <p>7755890555, 7267973767</p>
                <p>sunriseinfotechsolutionn@gmail.com, support@sunriseinfotech.com</p>
                <p>Registered students can also submit ticket from Student Examination.</p>
            </section>
        </div>
        <%--box4--%>
        <section class="text-light" style="text-align: justify">
            <h2 class="bg-danger  text-center p-5">Contact Timings : 9:00 AM To 11:00 PM 
            </h2>
        </section>
        <%--footer--%>
        <section class="footer" id="contact">
            <div class="social">
                <h3><i class="fa-solid fa-thumbs-up"></i>Follow Us</h3>
                <div>
                    <asp:HyperLink NavigateUrl="navigateurl" runat="server"><i class="fa-brands fa-square-facebook"></i></asp:HyperLink>
                    <asp:HyperLink NavigateUrl="navigateurl" runat="server"><i class="fa-brands fa-square-google-plus"></i></asp:HyperLink>
                    <asp:HyperLink NavigateUrl="navigateurl" runat="server"><i class="fa-brands fa-square-x-twitter"></i></asp:HyperLink>
                    <asp:HyperLink NavigateUrl="navigateurl" runat="server"><i class="fa-brands fa-square-whatsapp"></i></asp:HyperLink>
                    <asp:HyperLink NavigateUrl="navigateurl" runat="server"><i class="fa-brands fa-square-instagram"></i></asp:HyperLink>
                </div>
            </div>
            <div class="quick-links">
                <h3><i class="fa-solid fa-phone-volume"></i>Contact Us</h3>
                <div>
                    <p><i class="fa-solid fa-envelope" style="color: var(--hover-bg);"></i>
                        <asp:Label Text="sunriseinfotechsolutionn@gmail.com" runat="server" /></p>
                    <p><i class="fa-solid fa-tty" style="color: var(--hover-bg);"></i>
                        <asp:Label Text="7755890555,7267973767" runat="server" /></p>
                </div>
            </div>
            <div class="address">
                <h3><i class="fa-solid fa-location-dot"></i>Find Us On</h3>
                <div>
                    <asp:Label Text="643Ma/288 Mithlesh Sadan Mohibullapur near noubasta pulia p/s Madion" runat="server" />
                    <asp:Label Text="Sitapur road,Luchnow-226021" runat="server" />
                </div>
            </div>
        </section>
    </div>
</asp:Content>
