<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="CARRENTAL.View.Admin.Cars" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">

     <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger pl-4">Manage Cars</h3>
                        <img src="../../Assets/img/carx.png"/>

                    </div>
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <form runat="server">
                            <div class="mb-3">
                              <label for="exampleInputEmail1" class="form-label">Licence Number</label>
                              <input type="text" class="form-control" id="LNumberTb" placeholder="Enter Plate Number" runat="server">
                            </div>
                            
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Brand</label>
                                <input type="text" class="form-control" id="BrandTb" placeholder="Enter The Car's Brnad" runat="server">
                            </div>

                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Model</label>
                                <input type="text" class="form-control" id="ModelTb"  placeholder="Enter Model" runat="server">
                            </div>

                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Price</label>
                                <input type="text" class="form-control" id="PriceTb"  placeholder="Enter PriceTb" runat="server">
                            </div>

                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Color</label>
                                <input type="text" class="form-control" id="ColorTb"  placeholder="Enter Color" runat="server">
                            </div>

                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Available</label>
                                <asp:DropDownList ID="AvailableCb" runat="server" class="form-control">
                                    <asp:ListItem>Available</asp:ListItem>
                                    <asp:ListItem>Booked</asp:ListItem>
                                </asp:DropDownList>
                                
                            </div>

                        <br /> 
                            <label id="ErrorMsg" runat="server" class="text-danger"></label><br />
            
                           <asp:Button type="submit" id="EditBtn" class="btn btn-danger" Text="Edit" runat="server" OnClick="EditBtn_Click"/>
                            <asp:Button type="submit" id="SaveBtn" class="btn btn-danger" Text="Save" runat="server" OnClick="SaveBtn_Click"/>
                            <asp:Button type="submit" id="DeleteBtn" class="btn btn-danger" Text="Delete" runat="server" OnClick="DeleteBtn_Click"/>
                            
                            
                          </form>




                    </div>
                </div>
            </div>
            <div class="col-md-8">
            <h1>Cars List</h1>
                <asp:GridView runat="server" ID="CarList" Class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CarList_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White"/>
                    
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>


   

