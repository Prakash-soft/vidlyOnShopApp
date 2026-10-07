<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminAuthorManagement.aspx.cs" Inherits="ELibraryManagement.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Author Details</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/author.jpg" width="120" />
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
                            <div class="col-md-4 gap-2 mb-3">
                                <label>Author ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox3" runat="server"
                                            placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-info" ID="Button2" runat="server"
                                            Text="Go" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8 gap-2 mb-3">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server"
                                        placeholder="Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-4 mx-auto">
                                <div class="form-group d-grid">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server"
                                        Text="Add" />
                                </div>
                            </div>
                            <div class="col-4 mx-auto">
                                <div class="form-group d-grid">
                                    <asp:Button class="btn btn-info btn-block btn-lg" ID="Button3" runat="server"
                                        Text="Update" />
                                </div>
                        </div>
                        <div class="col-4 mx-auto">
                            <div class="form-group d-grid">
                                <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button4" runat="server"
                                    Text="Delete" />
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
                                <h3>Author List</h3>
                                
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
