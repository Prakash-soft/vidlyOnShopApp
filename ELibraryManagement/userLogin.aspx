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
                                    <h4>Member Login</h4>
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
                                        placeholder="member ID" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                </div>
                                <label>Member Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server"
                                        placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group d-grid gap-2 mt-3">
                                    <asp:Button class="btn btn-primary btn-lg" ID="Button1" runat="server"
                                        Text="Login" OnClick="Button1_Click" />
                                </div>
                                <%--<br>
                                <div class="form-group d-grid gap-2">
                                    <a href="userSignUp.aspx">
                                        <input class="btn btn-info btn-lg btn-block" id="Button2" 
                                            type="button" value="Sign up" />
                                    </a>
                                </div>--%>
                                <div class="form-group d-grid gap-2 mt-3 mb-3">
                                    <a href="userSignUp.aspx" class="btn btn-info btn-lg">Sign up
                                    </a>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>

                <br>
                <a href="homePage.aspx"><< Back to Home</a><br>
                <br>
            </div>
        </div>
    </div>


</asp:Content>
