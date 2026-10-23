<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="project_login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="breadcrumb-area section-padding-1 bg-gray breadcrumb-ptb-1" style="background-image:url(assets/images/banner/breadcrumb.jpg);">
                <div class="container-fluid">
                    <div class="breadcrumb-content text-center">
                        <div class="breadcrumb-title">
                            <h2>Login / Register</h2>
                        </div>
                    </div>
                </div>
            </div>
     <div class="login-register-area pt-120 pb-120">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-8 ml-auto mr-auto">
                            <div class="login-register-wrap">
                                <h3><i class="fa fa-user-o"></i> Login</h3>
                                <div class="login-register-form">
                                    <form action="#">
                                        <div class="sin-login-register">
                                            <input type="text" name="user-name" placeholder="User name or email address *">
                                        </div>
                                        <div class="sin-login-register">
                                            <input type="password" name="password" placeholder="Password *">
                                        </div>
                                        <div class="login-register-btn">
                                            <button class="login" type="submit">Login</button>
                                            <button class="login-fb" type="submit">Login with Facebook</button>
                                        </div>
                                        <div class="remember-lost-wrap">
                                            <div class="remember-wrap">
                                                <input type="checkbox">
                                                <label>Remember me</label>
                                            </div>
                                            <div class="lost-wrap">
                                                <a href="#">Forget your password?</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                              <div class="login-register-wrap">
                                <h3><i class="fa fa-user-o"></i> <a class="register-active" href="#">Create Account</a></h3>
                                <div class="login-register-form register-form-wrap">
                                    <form action="#">
                                        <div class="sin-login-register">
                                            <input type="text" name="user-name" placeholder="User name or email address *">
                                        </div>
                                        <div class="sin-login-register">
                                            <input type="password" name="password" placeholder="Password *">
                                        </div>
                                        <div class="login-register-btn">
                                            <button class="login" type="submit">Register</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>


