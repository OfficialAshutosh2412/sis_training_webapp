<%@ Page Title="SIS | Home" Language="C#" MasterPageFile="~/Landing.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SunriseInfotechSolutionLucknow.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--hero section--%>
    <section class="hero">
        <div class="hero-img" data-aos="zoom-in-up" data-aos-duration="500">
            <img src="res/media/img/20190708_002647.png" />
        </div>
        <div style="margin-top: -20px;">
            <h3 class="title" data-aos="zoom-in-up" data-aos-duration="1500">SUNRISE INFOTECH SOLUTION</h3>
            <h1 class="title" data-aos="zoom-in-up" data-aos-duration="2000"><span>WHERE</span><span> Quality Matters</span></h1>
        </div>
    </section>
    <%--about us--%>
    <h1 class="title" id="about"><span>About</span><span> Us</span></h1>
    <section class="about">
        <div data-aos="zoom-in-up" data-aos-duration="300">
            <h1>WELCOME TO SUNRISE INFOTECH SOLUTIONS !!</h1>
            <p>
                Sunrise Infotech Solution .is a registered and ISO certified Software Development Company That has been providing specilized IT services and Business Solution since 2016 to make the business operations easier.Our Iso Certification Number is 22EQFL40
            </p>
            <asp:HyperLink NavigateUrl="~/About.aspx" runat="server" ToolTip="know more"><i class="fa-solid fa-chevron-right"></i></asp:HyperLink>
        </div>
        <div data-aos="zoom-in-up" data-aos-duration="400">
            <h1>Our aim towards students !!</h1>
            <p>
                Our Company's motto is"Generating Ideas" and we impliment it to give our clients best in the industry.Started as a Project Training organization, we are proud to have gained trust of more then 9000 Students till now
            </p>
            <asp:HyperLink NavigateUrl="~/About.aspx" runat="server" ToolTip="know more"><i class="fa-solid fa-chevron-right"></i></asp:HyperLink>
        </div>
    </section>
    <%--sevices--%>
    <section class="service" id="service">
        <h1 class="title"><span>Services</span><span> We Provide</span></h1>
        <div class="services-container">
            <div data-aos="zoom-in-up" data-aos-duration="100">
                <h1>software development</h1>
                <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server" ToolTip="download brochure"><i class="fa-solid fa-chevron-right"></i></asp:HyperLink>
            </div>
            <div data-aos="fade-up" data-aos-duration="200">
                <h1>live project training</h1>
                <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server" ToolTip="download brochure"><i class="fa-solid fa-chevron-right"></i></asp:HyperLink>
            </div>
            <div data-aos="fade-up" data-aos-duration="300">
                <h1>in house training</h1>
                <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server" ToolTip="download brochure"><i class="fa-solid fa-chevron-right"></i></asp:HyperLink>
            </div>
            <div data-aos="fade-up" data-aos-duration="300">
                <h1>recruitment programes</h1>
                <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server" ToolTip="download brochure"><i class="fa-solid fa-chevron-right"></i></asp:HyperLink>
            </div>
            <div data-aos="fade-up" data-aos-duration="200">
                <h1>short term courses</h1>
                <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server" ToolTip="download brochure"><i class="fa-solid fa-chevron-right"></i></asp:HyperLink>
            </div>
            <div data-aos="fade-up" data-aos-duration="100">
                <h1>mba student training programes</h1>
                <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server" ToolTip="download brochure"><i class="fa-solid fa-chevron-right"></i></asp:HyperLink>
            </div>
            <div data-aos="fade-up" data-aos-duration="200">
                <h1>personality development programes</h1>
                <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server" ToolTip="download brochure"><i class="fa-solid fa-chevron-right"></i></asp:HyperLink>
            </div>
            <div data-aos="fade-up" data-aos-duration="300">
                <h1>industrial training</h1>
                <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server" ToolTip="download brochure"><i class="fa-solid fa-chevron-right"></i></asp:HyperLink>
            </div>
        </div>
    </section>
    <%--courses--%>
    <section class="course" id="course">
        <h1 class="title"><span>Course</span><span> Details</span></h1>
        <div class="course-container">
            <%--php--%>
            <div class="course-item" data-aos="fade-up" data-aos-duration="200">
                <div class="item-title">
                    <h3>PHP Technology</h3>
                    <h1>6000/- Rs</h1>
                </div>
                <div class="item-data">
                    <h5>Magento</h5>
                    <h5>CakePHP</h5>
                    <h5>Laravel</h5>
                    <h5>Wordpress</h5>
                    <div class="item-material">
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>dummy projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>live projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>mini projects</h6>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server">click here</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <%--asp--%>
            <div class="course-item" data-aos="fade-up" data-aos-duration="300">
                <div class="item-title">
                    <h3>ASP.NET Technology</h3>
                    <h1>6000/- Rs</h1>
                </div>
                <div class="item-data">
                    <h5>MVC</h5>
                    <h5>Blazor</h5>
                    <h5>ASP</h5>
                    <h5>Window form</h5>
                    <div class="item-material">
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>dummy projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>live projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>mini projects</h6>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server">click here</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <%--java--%>
            <div class="course-item" data-aos="fade-up" data-aos-duration="400">
                <div class="item-title">
                    <h3>JAVA Technology</h3>
                    <h1>6000/- Rs</h1>
                </div>
                <div class="item-data">
                    <h5>Hibernet</h5>
                    <h5>Spring</h5>
                    <h5>Spring Boot</h5>
                    <h5>Maven/Swing</h5>
                    <div class="item-material">
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>dummy projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>live projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>mini projects</h6>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server">click here</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <%--java+php+asp--%>
            <div class="course-item" data-aos="fade-up" data-aos-duration="300">
                <div class="item-title">
                    <h3>JAVA+ASP+PHP Technology</h3>
                    <h1>15000/- Rs</h1>
                </div>
                <div class="item-data">
                    <div class="item-material">
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>dummy projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>live projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>mini projects</h6>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server">click here</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <%--android--%>
            <div class="course-item" data-aos="fade-up" data-aos-duration="100">
                <div class="item-title">
                    <h3>Android Technology</h3>
                    <h1>6000/- Rs</h1>
                </div>
                <div class="item-data">
                    <div class="item-material">
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>dummy projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>live projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>mini projects</h6>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server">click here</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <%--python--%>
            <div class="course-item" data-aos="fade-up" data-aos-duration="200">
                <div class="item-title">
                    <h3>Python Technology</h3>
                    <h1>6000/- Rs</h1>
                </div>
                <div class="item-data">
                    <h5>Flask</h5>
                    <h5>Django</h5>
                    <div class="item-material">
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>dummy projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>live projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>mini projects</h6>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server">click here</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <%--vlsi--%>
            <div class="course-item" data-aos="fade-up" data-aos-duration="100">
                <div class="item-title">
                    <h3>VLSI Technology</h3>
                    <h1>10000/- Rs</h1>
                </div>
                <div class="item-data">
                    <div class="item-material">
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>dummy projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>live projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>mini projects</h6>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server">click here</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <%--plc--%>
            <div class="course-item" data-aos="fade-up" data-aos-duration="300">
                <div class="item-title">
                    <h3>PLC/SCADA Technology</h3>
                    <h1>10000/- Rs</h1>
                </div>
                <div class="item-data">
                    <div class="item-material">
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>dummy projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>live projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>mini projects</h6>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server">click here</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <%--matlab--%>
            <div class="course-item" data-aos="fade-up" data-aos-duration="200">
                <div class="item-title">
                    <h3>matlab Technology</h3>
                    <h1>10000/- Rs</h1>
                </div>
                <div class="item-data">
                    <div class="item-material">
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>dummy projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>live projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>mini projects</h6>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server">click here</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <%--auto cad--%>
            <div class="course-item" data-aos="fade-up" data-aos-duration="300">
                <div class="item-title">
                    <h3>Auto-cad Technology</h3>
                    <h1>10000/- Rs</h1>
                </div>
                <div class="item-data">
                    <div class="item-material">
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>dummy projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>live projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>mini projects</h6>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server">click here</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <%--staaad--%>
            <div class="course-item" data-aos="fade-up" data-aos-duration="300">
                <div class="item-title">
                    <h3>staad pro Technology</h3>
                    <h1>10000/- Rs</h1>
                </div>
                <div class="item-data">
                    <div class="item-material">
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>dummy projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>live projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>mini projects</h6>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server">click here</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <%--c,c++,java--%>
            <div class="course-item" data-aos="fade-up" data-aos-duration="100">
                <div class="item-title">
                    <h3>C, C++ and core java</h3>
                    <h1>8000/- Rs</h1>
                </div>
                <div class="item-data">
                    <div class="item-material">
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>dummy projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>live projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>mini projects</h6>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server">click here</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <%--management--%>
            <div class="course-item" data-aos="fade-up" data-aos-duration="400">
                <div class="item-title">
                    <h3>Management internship</h3>
                    <h1>1200/- Rs</h1>
                </div>
                <div class="item-data">
                    <div class="item-material">
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>dummy projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>live projects</h6>
                        </div>
                        <div>
                            <i class="fa-solid fa-clock"></i>
                            <h6>mini projects</h6>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:HyperLink NavigateUrl="~/Programs.aspx" runat="server">click here</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%--gallery--%>
    <section class="gallery" id="gallery">
        <h1 class="title mb-3"><span>Moments</span><span> of captures</span></h1>
        <div>
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/res/media/img/1.jpg" CssClass="gallery-img" OnClick="ImageButton2_Click" data-aos="fade-up" data-aos-duration="200" />
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/res/media/img/2.jpg" CssClass="gallery-img" OnClick="ImageButton3_Click" data-aos="fade-up" data-aos-duration="400" />
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/res/media/img/3.jpg" CssClass="gallery-img" OnClick="ImageButton4_Click" data-aos="fade-up" data-aos-duration="600" />
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/res/media/img/4.jpg" CssClass="gallery-img" OnClick="ImageButton5_Click" data-aos="fade-up" data-aos-duration="800" />
            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/res/media/img/5.jpg" CssClass="gallery-img" OnClick="ImageButton6_Click" data-aos="fade-up" data-aos-duration="1000" />
            <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/res/media/img/6.jpg" CssClass="gallery-img" OnClick="ImageButton7_Click" data-aos="fade-up" data-aos-duration="1200" />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/res/media/img/7.jpg" CssClass="gallery-img" OnClick="ImageButton1_Click" data-aos="fade-up" data-aos-duration="1400" />
        </div>
    </section>
    <%--member--%>
    <div class="member" style="margin-top: 50px" id="team">
        <h1 class="title mb-3"><span>Our</span><span> Team</span></h1>
        <%--director--%>
        <div class="mentor" data-aos="fade-up" data-aos-duration="200">
            <div class="image">
                <img src="../res/media/img/1%20(2).jpg" />
            </div>
            <div class="image-data">
                <h1>The Director</h1>
                <p><strong>Dr. Virendra Kumar Pathak.</strong></p>
                <small>LLB (High Court)</small>
                <div class="member-link">
                    <a href="#" target="_blank"><i class="fa-brands fa-facebook-f "></i></a>
                    <a href="#" target="_blank"><i class="fa-brands fa-square-instagram "></i></a>
                    <a href="#" target="_blank"><i class="fa-brands fa-twitter "></i></a>
                    <a href="#" target="_blank"><i class="fa-brands fa-square-whatsapp "></i></a>
                </div>
            </div>
        </div>
        <%--trainer--%>
        <div class="mentor mentor-direction-right" id="mentor" data-aos="fade-up" data-aos-duration="400">
            <div class="image">
                <img src="../res/media/img/mentor%201.jpg" />
            </div>
            <div class="image-data">
                <h1>IT Trainer</h1>
                <p><strong>Mr. Sushant Pathhak</strong> project mentor.</p>
                <small>Project Scientist at Remote Sensing Applications Centre Uttar Pradesh, Lucknow</small>
                <div class="member-link">
                    <a id="member-social1" href="https://www.facebook.com/engg.superpower" target="_blank"><i class="fa-brands fa-facebook-f"></i></a>
                    <a id="member-social2" href="https://www.instagram.com/scientistsushantpathak/" target="_blank"><i class="fa-brands fa-square-instagram "></i></a>
                    <a id="member-social3" href="https://www.indiamart.com/sunriseinfotechsolution/" target="_blank"><i class="fa-solid fa-cart-shopping"></i></a>
                    <a id="member-social4" href="http://www.sunriseinfotechsolution.com/Anonymous/Home.aspx" target="_blank"><i class="fa-solid fa-globe "></i></a>
                </div>
            </div>
        </div>
        <%--founder--%>
        <div class="mentor" data-aos="fade-up" data-aos-duration="600">
            <div class="image">
                <img src="../res/media/img/2%20(2).jpg" />
            </div>
            <div class="image-data">
                <h1>Founder & Asst. Director</h1>
                <p><strong>Mr. Ashish Pathak.</strong></p>
                <small>B.Tech, LLB Honors</small>
                <div class="member-link">
                    <a href="#" target="_blank"><i class="fa-brands fa-facebook-f "></i></a>
                    <a href="#" target="_blank"><i class="fa-brands fa-square-instagram "></i></a>
                    <a href="#" target="_blank"><i class="fa-brands fa-twitter "></i></a>
                    <a href="#" target="_blank"><i class="fa-brands fa-square-whatsapp "></i></a>
                </div>
            </div>
        </div>
        <%--techincal--%>
        <div class="mentor mentor-direction-right" data-aos="fade-up" data-aos-duration="800">
            <div class="image">
                <img src="../res/media/img/3%20(2).jpg" />
            </div>
            <div class="image-data">
                <h1>Technical Director</h1>
                <p><strong>Ms. Shraddha Pathak.</strong></p>
                <small>B.Tech Honors</small>
                <div class="member-link">
                    <a href="#" target="_blank"><i class="fa-brands fa-facebook-f "></i></a>
                    <a href="#" target="_blank"><i class="fa-brands fa-square-instagram "></i></a>
                    <a href="#" target="_blank"><i class="fa-brands fa-twitter "></i></a>
                    <a href="#" target="_blank"><i class="fa-brands fa-square-whatsapp "></i></a>
                </div>
            </div>
        </div>
        <%--manager--%>
        <div class="mentor" data-aos="fade-up" data-aos-duration="1000">
            <div class="image">
                <img src="../res/media/img/4%20(1).jpg" />
            </div>
            <div class="image-data">
                <h1>Managing Director</h1>
                <p><strong>Mrs. Aarti Pathak.</strong></p>
                <small>Trainer and Leagal Advisor.</small>
                <div class="member-link">
                    <a href="#" target="_blank"><i class="fa-brands fa-facebook-f "></i></a>
                    <a href="#" target="_blank"><i class="fa-brands fa-square-instagram "></i></a>
                    <a href="#" target="_blank"><i class="fa-brands fa-twitter "></i></a>
                    <a href="#" target="_blank"><i class="fa-brands fa-square-whatsapp "></i></a>
                </div>
            </div>
        </div>
        <%--Admin--%>
        <div class="mentor mentor-direction-right" id="developer" data-aos="fade-up" data-aos-duration="1200">
            <div class="image">
                <img src="../res/media/img/developer.jpg" />
            </div>
            <div class="image-data">
                <h1>The Administrator</h1>
                <p><strong>Mr. Ashutosh Prasad</strong> project developer.</p>
                <small>MCA graduate from AIET and a full stack developer on python & ASP.NET with MVC</small>
                <div class="member-link">
                    <a id="member-social5" href="https://www.facebook.com/ashutosh.prasad.754365/" target="_blank"><i class="fa-brands fa-facebook-f "></i></a>
                    <a id="member-social6" href="https://www.instagram.com/official.ashu.2000/" target="_blank"><i class="fa-brands fa-square-instagram "></i></a>
                    <a id="member-social7" href="https://twitter.com/Ashutos96662173" target="_blank"><i class="fa-brands fa-twitter "></i></a>
                    <a id="member-social8" href="https://wa.me/6386239194" target="_blank"><i class="fa-brands fa-square-whatsapp "></i></a>
                    <a id="member-social9" href="https://github.com/OfficialAshutosh2412?tab=repositories" target="_blank"><i class="fa-brands fa-github "></i></a>
                </div>
            </div>
        </div>
    </div>
    <%--languages--%>
    <h1 class="title mb-5 mt-5" id="languages"><span>Languages</span><span> We are Working On</span></h1>
    <section class="langs">
        <img src="res/media/img/asp.jpg" />
        <img src="res/media/img/bigdata.png" />
        <img src="res/media/img/cakephp.jpg" />
        <img src="res/media/img/ethical.jpg" />
        <img src="res/media/img/java.png" />
        <img src="res/media/img/jsp.png" />
        <img src="res/media/img/matlab.jpg" />
        <img src="res/media/img/python.png" />
        <img src="res/media/img/wordpress.png" />
    </section>
    <%--footer--%>
    <section class="footer" id="contact">
        <div class="social">
            <h3>Follow Us</h3>
            <div>
                <asp:HyperLink NavigateUrl="navigateurl" runat="server">Facebook</asp:HyperLink>
                <asp:HyperLink NavigateUrl="navigateurl" runat="server">Facebook</asp:HyperLink>
                <asp:HyperLink NavigateUrl="navigateurl" runat="server">Google+</asp:HyperLink>
            </div>
        </div>
        <div class="quick-links">
            <h3>Contact Us</h3>
            <div>
                <asp:Label Text="Email : sunriseinfotechsolutionn@gmail.com" runat="server" />
                <asp:Label Text="Call : 7755890555,7267973767" runat="server" />
            </div>
        </div>
        <div class="address">
            <h3>Find Us On</h3>
            <div>
                <asp:Label Text="643Ma/288 Mithlesh Sadan Mohibullapur near noubasta pulia p/s Madion" runat="server" />
                <asp:Label Text="Sitapur road,Luchnow-226021" runat="server" />
            </div>
        </div>
    </section>
</asp:Content>
