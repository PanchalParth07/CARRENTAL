<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="CARRENTAL.View.Admin.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger pl-4">Manage Customer</h3>
                        <img src="../../Assets/img/customer.png" height="130px"/>
                        </div>
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <form runat="server">
                            <div class="mb-3">
                              <label for="exampleInputEmail1" class="form-label">Customer Name</label>
                              <input type="text" class="form-control" id="CustNameTb" placeholder="Enter Customer's Name" runat="server">
                            </div>
                            
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Customer Address</label>
                                <input type="text" class="form-control" id="AddTb" placeholder="Enter Customer's Address" runat="server">
                            </div>

                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Customer Phone</label>
                                <input type="text" class="form-control" id="PhoneTb"  placeholder="Enter Phone" runat="server">
                            </div>

                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">MCustomer Password</label>
                                <input type="text" class="form-control" id="Text1"  placeholder="Enter Password" runat="server">
                            </div>

                            
                                
                            
                       <br />
                        <br /> 
            
                            
                            
                           <label id="ErrorMsg" runat="server" class="text-danger"></label><br />
            
                           <asp:Button type="submit" id="EditBtn" class="btn btn-danger" Text="Edit" runat="server" OnClick="EditBtn_Click"/>
                            <asp:Button type="submit" id="SaveBtn" class="btn btn-danger" Text="Save" runat="server" OnClick="SaveBtn_Click"/>
                            <asp:Button type="submit" id="DeleteBtn" class="btn btn-danger" Text="Delete" runat="server" OnClick="DeleteBtn_Click"/>
                          </form>




                    </div>
                </div>
            </div>
            <div class="col-md-8"></div>
                <asp:GridView runat="server" ID="CustomersList" Class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CarList_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White"/>
                    
                </asp:GridView>
        </div>
    </div>
</asp:Content>
