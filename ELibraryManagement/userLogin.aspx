<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="ELibraryManagement.userLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/userlogin.png" width="180" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server"
                                        placeholder="member ID"></asp:TextBox>
                                </div>
                                <label>Member Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server"
                                        placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group d-grid gap-2">
                                    <asp:Button class="btn btn-primary btn-lg" ID="Button1" runat="server"
                                        Text="Login" />
                                </div>
                                <br />
                                <div class="form-group d-grid gap-2">
                                    <input class="btn btn-info btn-lg" id="Button2" type="button" value="Sign up" />
                                   
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


                <a href="homePage.aspx"><< Back to Home Page</a>
            </div>
        </div>
    </div>


</asp:Content>
