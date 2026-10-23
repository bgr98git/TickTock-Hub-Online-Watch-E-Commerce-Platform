<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="breadcrumb-area section-padding-1 bg-gray breadcrumb-ptb-1" style="background-image:url(assets/images/banner/breadcrumb.jpg);">
                <div class="container">
                    <div class="breadcrumb-content text-center">
                        <div class="breadcrumb-title">
                            <h2>Give Feedback</h2>
                        </div>
                    </div>
                </div>
            </div>
       <div class="video-wrapper" >
                <div class="container">
                    <div class="video-inner">                          
                        <div class="video-btn-3 video-btn-3-yellow">
                            <a class="video-popup" href="https://player.vimeo.com/video/181061053?autoplay=1&amp;byline=0&amp;collections=0"><i class="fa fa-play"></i></a>
                        </div>
                        <div class="text">
                            <h6>Sale Off 20% All Products</h6>
                            <h2>New Trending Collection</h2>
                            <p>We Believe That Good Design is Always in Season</p>   
                            <div class="btn-style-3 btn-hover-2">
                                <a class="animated bs3-black-text bs3-btn-bg bs3-ptb bs3-ptb bs3-border-radius ptb-2-white-hover" href="shop_modal.aspx">shopping Now</a>
                            </div>
                        </div>
                    </div>                                     
                </div>
            </div>
      <div class="contact-us-area pt-120 pb-100">
                <div class="container">
                    <div class="row">                      
                        <div class="col-lg-12 ml-auto mr-auto">
                            
                            <div class="row">
                                <div class="col-xl-3 col-lg-4 col-md-5" style="border">
                                    <div class="contact-info-area">
                                        <h2>Get Info</h2>
                                        <div class="contact-info-top">
                                            <div class="sin-contact-info-wrap mb-25">
                                                <div class="contact-address">
                                                    <i class="ti-home"></i>
                                                    <span>Headquarter</span>
                                                </div>
                                                <p>TickTock Hub Pvt.Limited<br>86-90 Paul Street, London<br>England EC2A 4NE</p>
                                            </div>
                                            <%--<div class="sin-contact-info-wrap">
                                                <div class="contact-address">
                                                    <i class="ti-home"></i>
                                                    <span>SkudMart California</span>
                                                </div>
                                                <p>8131 Budd Rd Terre Haute, IN 47805</p>
                                            </div>--%>
                                        </div>
                                        <div class="contact-info-bottom">
                                            <ul>
                                                <li><i class=" ti-email "></i>bgr98796@gmail.com</li>
                                                <li><i class="ti-mobile"></i>+912-466-7130</li>
                                            </ul>
                                            <div class="contact-info-social">
                                                <a href="#"><i class="fa fa-facebook"></i></a>
                                                <a href="#"><i class="fa fa-twitter"></i></a>
                                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                                                <a href="#"><i class="fa fa-google-plus"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-9 col-lg-8 col-md-7">
                                    <div class="contact-form-area">
                                        <h2>Get a quote</h2>
                                        
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-12">
                                                    
                                                    <asp:TextBox ID="nmtxt" runat="server" placeholder="Your name *"></asp:TextBox>
                                                </div>
                                                <div class="col-lg-6 col-md-12 col-12">
                                                    
                                                     <asp:TextBox ID="emtxt" runat="server" placeholder="Email address*"></asp:TextBox>
                                                </div>
                                                <div class="col-lg-6 col-md-12 col-12">
                                                   
                                                     <asp:TextBox ID="phontxt" runat="server" placeholder="Your Phone"></asp:TextBox>
                                                </div>
                                                 <div class="col-lg-12 col-md-12 col-12" >
                                                    <asp:Label ID="Label1" runat="server" Text="Upload Your Photo :"></asp:Label>
                                                    <asp:FileUpload ID="FileUpload1" runat="server" style="padding-top:10px;padding:10px;height:60px" />
                                                </div>
                                                
                                                <div class="col-lg-12 col-md-12 col-12">
                                                    
                                                    
                                                     <asp:TextBox ID="submsg" runat="server" placeholder="Message" TextMode="MultiLine" Rows="8" ></asp:TextBox>
                                                </div>
                                                <div class="col-lg-12 col-md-12 col-12">
                                                    <asp:Button ID="Button1" runat="server" Text="Give Feedback" BorderColor="White" Font-Bold="true" ForeColor="White"  BorderStyle="Double" BorderWidth="5" Height="50px" BackColor="Black"  Width="200" Font-Size="Larger" OnClick="Button1_Click" />

                                                         
                                            </div>
                                                
                                                </div>
                                            </div>
                                     
                                        <p class="form-messege"></p>
                                    </div>
                                </div>                             
                            </div>
                        </div>
                    </div>
                </div>
</asp:Content>


