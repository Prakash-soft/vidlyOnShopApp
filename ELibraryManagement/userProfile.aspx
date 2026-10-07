<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userProfile.aspx.cs" Inherits="ELibraryManagement.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/userlogin.png" width="90" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Your Profile</h3>
                                    <span>Account Status - </span>
                                    <asp:Label class="badge rounded-pill bg-info text-dark"
                                        ID="Label1" runat="server" Text="Your Status">

                                    </asp:Label>
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
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server"
                                        placeholder="Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server"
                                        placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact Name</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server"
                                        placeholder="Name" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server"
                                        placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1"
                                        runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Assam" Value="18" />
                                        <asp:ListItem Text="Paschimbanga" Value="19" />
                                        <asp:ListItem Text="Bihar" Value="12" />
                                        <asp:ListItem Text="UttarPradesh" Value="11" />
                                        <asp:ListItem Text="Maharastra" Value="06" />
                                    </asp:DropDownList>
                                    <!--<asp:TextBox class="form-control" ID="TextBox7" runat="server"
                                    placeholder="member ID"></asp:TextBox>-->
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server"
                                        placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>PIN</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server"
                                        placeholder="PIN" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox10" runat="server"
                                        placeholder="Address details" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr>
                                    <span class="badge rounded-pill bg-info">Login Credentials</span>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>User ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox11" runat="server"
                                        placeholder="member ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox12" runat="server"
                                        placeholder="member ID" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Confirm Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox13" runat="server"
                                        placeholder="member ID" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6 mx-auto">
                                <div class="form-group d-grid gap-2 mt-3">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server"
                                        Text="Update" />
                                </div>
                            </div>
                        </div>


                    </div>

                </div>
                <br>
                <a href="homePage.aspx"><< Back to Home</a><br>
                <br>
            </div>

            <div class="col-md-7 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/book1.png" width="90" />
                                </center>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <h3>Your issued Book</h3>
                                <asp:Label class="badge rounded-pill bg-info text-dark"
                                    ID="Label2" runat="server" Text="Info about book due date">

                                </asp:Label>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" 
                                    runat="server"></asp:GridView>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
