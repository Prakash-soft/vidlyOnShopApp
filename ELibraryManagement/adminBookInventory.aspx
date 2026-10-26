<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminBookInventory.aspx.cs" Inherits="ELibraryManagement.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgView').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            } 
        }
    </script>
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
                                    <h4>Book Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img id="imgView" Height="150" Width="100" src="book_inventory/book1.png"/>
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
                            <div class="col mb-2">
                                <center>
                                    <asp:FileUpload onchange="readURL(this);" class="form-control"
                                        ID="FileUpload1" runat="server" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3 mb-2">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                                        <asp:Button class="btn btn-info" ID="Button2" runat="server"
                                            Text="Go" OnClick="Button2_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9 mb-2">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4 ">
                                <label>Language</label>
                                <div class="form-group mb-2">
                                    <asp:DropDownList class="form-control" ID="DropDownList11" runat="server">
                                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                        <asp:ListItem Text="Bengali" Value="Bengali"></asp:ListItem>
                                        <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                        <asp:ListItem Text="Marathi" Value="Marathi"></asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList21" runat="server">
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1"></asp:ListItem>
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4 ">
                                <label>Author Name</label>
                                <div class="form-group mb-2">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Author 1" Value="Author 1"></asp:ListItem>
                                        <asp:ListItem Text="Author 2" Value="Author 2"></asp:ListItem>
                                        <asp:ListItem Text="Author 3" Value="Author 3"></asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                                <label>Publish Date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 ">
                                <label>Genere</label>
                                <div class="form-group">
                                    <asp:ListBox class="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="Adventure" Value="Adventure"></asp:ListItem>
                                        <asp:ListItem Text="Novel" Value="Novel"></asp:ListItem>
                                        <asp:ListItem Text="Cosmic Book" Value="Cosmic Book"></asp:ListItem>
                                        <asp:ListItem Text="Self Help" Value="Self Help"></asp:ListItem>
                                        <asp:ListItem Text="Motivation" Value="Motivation"></asp:ListItem>
                                        <asp:ListItem Text="Poetry" Value="Poetry"></asp:ListItem>
                                        <asp:ListItem Text="Drama" Value="Drama"></asp:ListItem>
                                        <asp:ListItem Text="Fantasy" Value="Fantasy"></asp:ListItem>
                                    </asp:ListBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 mb-2">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 mb-2">
                                <label>Book Cost(per unit)</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server"
                                        TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 mb-2">
                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox10" runat="server"
                                        TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 mb-2">
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server"
                                        TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 mb-2">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server"
                                        TextMode="Number" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 mb-2">
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server"
                                        TextMode="Number" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-12 mb-2">
                                <label>Book Description</label>
                                <div class="form-group d-grid">
                                    <asp:TextBox class="form-control" ID="TextBox11" runat="server"
                                        TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-4 mb-1 ">
                                    <div class="form-group d-grid">
                                        <asp:Button class="btn btn-info btn-block" ID="Button3" runat="server"
                                            Text="Add" OnClick="Button3_Click" />
                                    </div>
                                </div>
                                <div class="col-4 mb-1">
                                    <div class="form-group d-grid">
                                        <asp:Button class="btn btn-success btn-block" ID="Button1" runat="server"
                                            Text="Update" OnClick="Button1_Click" />
                                    </div>
                                </div>
                                <div class="col-4 mb-1 ">
                                    <div class="form-group d-grid">
                                        <asp:Button class="btn btn-danger btn-block" ID="Button4" runat="server"
                                            Text="Delete" OnClick="Button4_Click" />
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
                                    <h4>Book Inventory List</h4>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1"
                                    runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="book_id" ReadOnly="True" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                        <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                        <asp:BoundField DataField="publish_date" HeaderText="publish_date" SortExpression="publish_date" />
                                        <asp:BoundField DataField="language" HeaderText="language" SortExpression="language" />
                                        <asp:BoundField DataField="edition" HeaderText="edition" SortExpression="edition" />
                                        <asp:BoundField DataField="book_cost" HeaderText="book_cost" SortExpression="book_cost" />
                                        <asp:BoundField DataField="no_of_pages" HeaderText="no_of_pages" SortExpression="no_of_pages" />
                                        <asp:BoundField DataField="book_description" HeaderText="book_description" SortExpression="book_description" />
                                        <asp:BoundField DataField="actual_stock" HeaderText="actual_stock" SortExpression="actual_stock" />
                                        <asp:BoundField DataField="current_stock" HeaderText="current_stock" SortExpression="current_stock" />
                                        <asp:BoundField DataField="book_img_link" HeaderText="book_img_link" SortExpression="book_img_link" />
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
