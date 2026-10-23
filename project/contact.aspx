<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="project_contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
      <div class="breadcrumb-area section-padding-1 bg-gray breadcrumb-ptb-1" style="background-image:url(assets/images/banner/breadcrumb.jpg);">
                <div class="container">
                    <div class="breadcrumb-content text-center">
                        <div class="breadcrumb-title">
                            <h2>Contact Us</h2>
                        </div>
                    </div>
                </div>
            </div>
    
      <div class="contact-us-area pt-120 pb-100">
                <div class="container">
                    <div class="row">                      
                        <div class="col-lg-12 ml-auto mr-auto">
                            <div class="google-map">  
                                
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3711.4285086199984!2d70.45048167432098!3d21.530093770372893!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39580308e31d9633%3A0x942c94d927ddd3e!2sDr%20Haribhai%20Godhani%20Campus!5e0!3m2!1sen!2sin!4v1735120726867!5m2!1sen!2sin" width="600" height="450" style="border:0;"></iframe>
                            </div>
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
                                                
                                                <div class="col-lg-12 col-md-12 col-12">
                                                    
                                                    
                                                     <asp:TextBox ID="msgtxt" runat="server" placeholder="Message" TextMode="MultiLine" Rows="8" ></asp:TextBox>
                                                </div>
                                                <div class="col-lg-12 col-md-12 col-12">
                                                    <asp:Button ID="subbtn" runat="server" Text="Contact" BorderColor="White" Font-Bold="true" ForeColor="White"  BorderStyle="Double" BorderWidth="5" Height="50px" BackColor="Black"  Width="200" Font-Size="Larger" OnClick="Button1_Click"/>

                                                        
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


