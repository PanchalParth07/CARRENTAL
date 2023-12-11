<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Rents.aspx.cs" Inherits="CARRENTAL.View.Admin.Rents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger pl-4">Rented Carsr</h3>
                        <img src="../../Assets/img/car_front.png"/>
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
            
                            
                            
                            <button type="submit" class="btn btn-danger">Edit</button>
                            <button type="submit" class="btn btn-danger">Add</button>
                            <button type="submit" class="btn btn-danger">Delete</button>
                          </form>




                    </div>
                </div>
            </div>
            <div class="col-md-8"></div>
                <table class="table">

                </table>
        </div>
    </div>
</asp:Content>
