<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminAuthorManagement.aspx.cs" Inherits="ELibraryManagement.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
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
                                            Text="Go" OnClick="Button2_Click" />
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
                                    <asp:Button class="btn btn-success btn-block" ID="Button1" runat="server"
                                        Text="Add" OnClick="Button1_Click" />
                                </div>
                            </div>
                            <div class="col-4 mx-auto">
                                <div class="form-group d-grid">
                                    <asp:Button class="btn btn-info btn-block" ID="Button3" runat="server"
                                        Text="Update" OnClick="Button3_Click" />
                                </div>
                        </div>
                        <div class="col-4 mx-auto">
                            <div class="form-group d-grid">
                                <asp:Button class="btn btn-danger btn-block" ID="Button4" runat="server"
                                    Text="Delete" OnClick="Button4_Click" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibraryDBConnectionString %>" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:eLibraryDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1"
                                runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                    <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    </div>
</asp:Content>
