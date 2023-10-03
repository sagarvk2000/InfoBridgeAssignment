<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="InfoBridgeAssignment.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:#ebdbdb;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 597px;
        }
        .auto-style4 {
            margin-left: 385px;
        }
        .auto-style5 {
            margin-left: 118px;
        }
        .auto-style8 {
            margin-left: 28px;
        }
        .auto-style9 {
            margin-left: 30px;
        }
        .auto-style10 {
            margin-left: 32px;
            margin-top: 0px;
        }
        .auto-style11 {
            margin-left: 155px;
        }
        .auto-style13 {
            margin-left: 145px;
            
        }
        h3{
            margin-left:250px;
        }
        .auto-style14 {
            margin-left: 43px;
        }
        .auto-style15 {
            margin-left: 132px;
        }
        .auto-style16 {
            margin-left: 131px;
        }
        .auto-style17 {
            margin-left: 130px;
        }
        .auto-style19 {
            width: 1245px;
            height: 30px;
        }
        .auto-style20 {
            margin-left: 29px;
        }
        .registerTable{
            height:450px;
            width:500px;
            border:2px solid black;
            margin-left: 389px;
            padding-left: 20px;
            padding-top: 39px;
        }
        .auto-style21 {
            width: 1245px;
        }
        h2{
            margin-left:389px;
        }
    </style>
</head>
<body style="height: 525px">
    <h2>Registration Form</h2>
    <form id="form1" runat="server">
        <div class="registerTable">
        
        <table class="auto-style1">

            <tr>
                

                <td class="auto-style21">
                    <asp:Label ID="lblId" runat="server" Text="Id"></asp:Label>
                    <asp:TextBox ID="txtId" runat="server" Width="160px" CssClass="auto-style11"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="ReqId" runat="server" ErrorMessage="Employee Id Is Required" ControlToValidate="txtId" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                 <td class="auto-style19">
                    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                    <asp:TextBox ID="txtName" runat="server" Width="160px" CssClass="auto-style16"></asp:TextBox>
                     <br />
                    <asp:RequiredFieldValidator ID="ReqName" runat="server" ErrorMessage="Employee Name Is Required" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                
                </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Label ID="lblDob" runat="server" Text="Date Of Birth" Width="126px"></asp:Label>
                    <asp:TextBox ID="TxtDOB" runat="server" Width="160px" CssClass="auto-style14"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="ReqDOB" runat="server" ErrorMessage="Employee DOB Is Required" ControlToValidate="TxtDOB" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Label ID="lblSex" runat="server" Text="Sex"></asp:Label>
                    <asp:TextBox ID="txtSex" runat="server" Width="160px" CssClass="auto-style13"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="ReqSex" runat="server" ErrorMessage="Employee Sex Is Required" ControlToValidate="txtSex" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
    
                <td class="auto-style21">
                    <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                    <asp:TextBox ID="txtPhone" runat="server" Width="160px" CssClass="auto-style17"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="ReqPhone" runat="server" ErrorMessage="Employee Phone Is Required" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                    <asp:TextBox ID="txtAddress" runat="server" Width="160px" CssClass="auto-style5" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="ReqAddress" runat="server" ErrorMessage="Employee Address Is Required" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Label ID="lblImage" runat="server" Text="Image"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style15" />
                    <asp:RequiredFieldValidator ID="ReqImage" runat="server" ErrorMessage="Employee Image Is Required" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Button ID="btnShow" runat="server" Text="Show" OnClick="btnShow_Click" />--%>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="65px" CssClass="auto-style10" Height="27px" />
                    <asp:Button ID="btnUpdate" runat="server" onClick="btnUpdate_Click" Text="Update" Width="65px" CssClass="auto-style9" Height="27px" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" Width="65px" CssClass="auto-style8" Height="27px" />
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="auto-style20" Width="67px" Height="27px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
            </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblMsg" runat="server" Text="[lblMsg]"></asp:Label>
                </td>
            </tr>
        </table>
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employee Table</h3>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style4" ForeColor="#333333" GridLines="None" Width="529px" Height="250px" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
                <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                    <ControlStyle height="80px" Width="60px"/>
                </asp:ImageField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </form>
</body>
</html>
