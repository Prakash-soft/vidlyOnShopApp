<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminMemberManagement.aspx.cs" Inherits="ELibraryManagement.WebForm7" %>

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
                                    <h4>Member Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/generalUser.png" width="100" />
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
                            <div class="col-md-3 gap-2 mb-3">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                                        <asp:Button class="btn btn-info" ID="Button2" runat="server"
                                            Text="Go" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 gap-2 mb-3">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5 gap-2 mb-3">
                                <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control me-1" ID="TextBox8" runat="server" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-success me-1" ID="LinkButton1"
                                            runat="server"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning me-1" ID="LinkButton2"
                                            runat="server"><i class="fa-solid fa-pause"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger me-1" ID="LinkButton3"
                                            runat="server"><i class="fa-solid fa-xmark"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-3 gap-2 mb-3">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" ReadOnly="True"
                                        TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 gap-2 mb-3">
                                <label>Contact No.</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server"
                                        ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5 gap-2 mb-3">
                                <label>Mail Id</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" ReadOnly="True"
                                        TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 gap-2 mb-3">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 gap-2 mb-3">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 gap-2 mb-3">
                                <label>PIN</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox10" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-12 gap-2 mb-3">
                                <label>Full Postal Address</label>
                                <div class="form-group d-grid">
                                    <asp:TextBox class="form-control" ID="TextBox11" runat="server" 
                                        TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6 gap-2 mb-1 mx-auto">
                                    <div class="form-group d-grid">
                                        <asp:Button class="btn btn-danger btn-block" ID="Button3" runat="server"
                                            Text="Delete User Permanently" />
                                    </div>
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
                                    <h4>Member List</h4>
                                </center>
                            </div>
                        </div>

                        <!--<div class="row">
                            <div class="col">
                                <asp:Label ID="Label1" runat="server" Text="Show"></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                <asp:Label ID="Label2" runat="server" Text="Entries"></asp:Label>
                            </div>
                            <div class="col d-flex justify-content-end align-items-center">
                                <asp:Label ID="Label3" runat="server" Text="Search"></asp:Label>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </div>
                        </div>-->

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
                                    runat="server">
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
