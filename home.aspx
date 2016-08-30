<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication6.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


<style>
    .myBody{
  
        display:flex;
        justify-content:center;
        align-items:center;

    }
    .roundedcorners{
        -webkit-border-radius: 10px;
        -khtml-border-radius: 10px;	
        -moz-border-radius: 10px;
        border-radius: 10px;
    }
</style>  

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="myBody">
        <asp:Image runat="server" ImageUrl="logo.jpg" Height="250px" Width="250px"  CssClass="roundedcorners"/>
    </div>
    <div class="myBody">
        <h2>Marriage Registrations</h2>
    </div>
    <label class="myBody" style="color:red" >An initiative by Tamil Nadu Government
    </label>
    <br />
    <hr />
    
    <p> Welcome to our Admin Portal</p>
    <p>Upon login you can perform several functions here!</p>
</asp:Content>

