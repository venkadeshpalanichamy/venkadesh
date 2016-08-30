﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="add_employee.aspx.cs" Inherits="WebApplication6.add_employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="w3-container w3-teal" style="margin:15px;">
  <h2>Add Employee Details</h2>
</div>

 <div class="w3-container w3-card-4" style="margin:15px;">
<br/>
<h4 class="w3-label">Name : </h4>
<div class="w3-container">
        <p>      
        <label class="w3-text-grey">First Name</label>
        <input class="w3-input w3-animate-input" type="text" required=""/>
        </p>
        <p>      
        <label class="w3-text-grey">Last Name</label>
        <input class="w3-input w3-animate-input" type="text" required=""/>
</p>
</div>

<h4 class="w3-label">Contact : </h4>

<div class="w3-container">
    <p>      
        <label class="w3-text-grey">Email</label>
        <input class="w3-input w3-animate-input" type="text" required=""/>
        </p>
        <p>      
        <label class="w3-text-grey">Contact No</label>
        <input class="w3-input w3-animate-input" type="text" required=""/>
</p>
    <p>      
        <label class="w3-text-grey">Address</label>
        <input class="w3-input w3-animate-input" type="text" required=""/>
</p>
</div>

     <h4 class="w3-label">Professional : </h4>

<div class="w3-container">
    <p>      
        <label class="w3-text-grey">Years of Experience</label>
        <input class="w3-input w3-animate-input" type="text" required=""/>
        </p>
        <p>      
        <label class="w3-text-grey">Date of Joining</label>
        <input class="w3-input w3-animate-input" type="text" required=""/>
</p>
    <p>      
        <label class="w3-text-grey">CTC</label>
        <input class="w3-input w3-animate-input" type="text" required=""/>
</p>
</div>


          <h4 class="w3-label">Portal : </h4>

<div class="w3-container">
    <p>      
        <label class="w3-text-grey">Password</label>
        <input class="w3-input w3-animate-input" type="text" required=""/>
        </p>
        
    <p>      
        <label class="w3-text-grey">Place</label>
        <input class="w3-input w3-animate-input" type="text" required=""/>
</p>
    <p>      
        <label class="w3-text-grey">Status</label>
        <input class="w3-input w3-animate-input" type="text" required=""/>
</p>
</div>


     <h4 class="w3-label">Others : </h4>

<div class="w3-container">
    <p>      
        <label class="w3-text-grey">Date of Birth</label>
        <input class="w3-input w3-animate-input" type="text" required=""/>
        </p>
              
</div>
     
     <div class="w3-container">
          
  <div class="w3-row">
      <br />
     
     <h4 class="w3-label">Role : </h4>
  <div class="w3-half">
    <input id="SR" class="w3-radio" type="radio" name="role" checked=""/>
    <label class="w3-validate">SR</label>
    <br/>
    <input id="SRAsst" class="w3-radio" type="radio" name="role"/>
    <label class="w3-validate">SR Assistant</label>
    <br/>
    <input id="demodis" class="w3-radio" type="radio" disabled=""/>
    <label class="w3-validate">Admin (Disabled)</label>
  </div>

        <div class="w3-row">

    <h4 class="w3-label">Gender : </h4>

  <div class="w3-half">
    <input id="male" class="w3-radio" type="radio" name="gender" value="male" checked=""/>
    <label class="w3-validate">Male</label>
    <br/>
    <input id="female" class="w3-radio" type="radio" name="gender" value="female"/>
    <label class="w3-validate">Female</label>
    <br/>
</div>

  </div>
      </div>
         </div>
  <p><button type="button" class="w3-btn w3-padding w3-teal" style="width:120px">Submit &nbsp; ❯</button></p>
</div>

</asp:Content>
