<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="ELibraryManagement.adminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card mb-5">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <img src="imgs/adminLoginImage.jpg" width="180" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <h3>Admin Login</h3>
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
                            <label>Admin ID</label>
                            <div class="form-group">
                                <asp:TextBox class="form-control" ID="TextBox1" runat="server"
                                    placeholder="Admin ID"></asp:TextBox>
                            </div>
                            <label>Admin Password</label>
                            <div class="form-group">
                                <asp:TextBox class="form-control" ID="TextBox2" runat="server"
                                    placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>

                            <div class="form-group d-grid gap-2 mt-3">
                                <asp:Button class="btn btn-primary btn-lg" ID="Button1" runat="server"
                                    Text="Login" />
                            </div>
                                                      
                        </div>
                    </div>

                </div>
            </div>
                        
        </div>
    </div>
</div>
</asp:Content>
