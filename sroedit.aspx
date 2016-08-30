<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sroedit.aspx.cs" Inherits="WebApplication6.sroedit" %>

<%@ Import Namespace="System.Data"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

     <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"/>

<script>
        $(function() {
            $( "#button" ).click(function() {
                $( "#item" ).toggle();
            });
        });
</script>

    <script>

        function toggle() {
            var div = document.getElementById("item");
            div.style.display = div.style.display == "none" ? "block" : "none";
            return false;
        }


    </script>

    <style>

        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */ 
        }

        /* Modal Content */
        .modal-content {
            position: relative;
            background-color: #fefefe;
            margin: auto;
            padding: 0;
            border: 1px solid #888;
            width: 80%;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
            -webkit-animation-name: animatetop;
            -webkit-animation-duration: 0.4s;
            animation-name: animatetop;
            animation-duration: 0.4s
        }

        /* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

        /* The Close Button */
        .close {
            color: white;
            float: right;
            color: #000;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #ff0000;
            text-decoration: none;
            cursor: pointer;
        }

        .modal-header {
            padding: 2px 16px;
            background-color: #5cb85c;
            color: white;
        }

        .modal-body {padding: 2px 16px;}

        .modal-footer {
            padding: 2px 16px;
            background-color: #5cb85c;
            color: white;
        }

        .textbox{

            display:inline-block;
            width:35%;

        }

    </style>

<script>

// When the user clicks the button, open the modal
    function f() {
        // Get the modal
        var modal = document.getElementById('myModal');

        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        modal.style.display = "block";
        return false;
}

// When the user clicks on <span> (x), close the modal
 function g() {
     modal.style.display = "none";
     return false;
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js" ></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        <ContentTemplate>

            <br />
            <br />
         
            <div class="w3-container w3-center" style="display:block;">

            <asp:TextBox CssClass="textbox w3-input" ID="sroID" runat="server" placeholder="SR Office ID"></asp:TextBox>

            <asp:TextBox CssClass="textbox w3-input" ID="TextBox1" runat="server" placeholder="Area/Location"></asp:TextBox>

            <asp:TextBox CssClass="textbox w3-input" ID="TextBox2" runat="server" placeholder="State"></asp:TextBox>

            <asp:TextBox CssClass="textbox w3-input" ID="TextBox3" runat="server" placeholder="District"></asp:TextBox>
         
            <asp:TextBox CssClass="textbox w3-input" ID="TextBox4" runat="server" placeholder="Bank name"></asp:TextBox>

            </div>
            <div class="w3-center">

                <br />
            <asp:Button runat="server" CssClass="w3-btn w3-green" ID="smtbtn" Text="Submit"/>

                <div onclick="toggle()">
                <asp:Label ID="button1"  CssClass="w3-light-blue" Text="Don't want to apply filters?"  runat="server"></asp:Label>
                </div>
                <div id="item" style="display:none;">
                 <br />   <code >To view all details please leave all the fields empty!</code>   
                    </div>
            </div>
            <hr />
    <div class="w3-container" id="cont" style="display:block; " >

        <% for(int i=0;i<5;i++) { %>

        <div class="w3-card-8" style="width:45%; display:inline-block;">

                    <div class="w3-container w3-center w3-animate-zoom">
                      <h3><%= i %> </h3>
                      
                      <h5>Karapakkam</h5>

                      <div class="w3-section">
                        <button   onclick="return f()" class="w3-btn w3-green">Edit</button>
                        
                      </div>
                    </div>

                    </div>

                    

           <% } %>
    </div>
         <!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <button onclick="return g()" class="close w3-green w3-btn">×</button>
      <h2>Edit SR Office</h2>
    </div>
    <div class="modal-body">
        <asp:Label Text="Address" runat="server"></asp:Label>
     <asp:TextBox ID="addL1" runat="server" CssClass="w3-input" placeholder="Address Line 1" ></asp:TextBox>  
     <asp:TextBox ID="TextBox5" runat="server" CssClass="w3-input" placeholder="Address Line 1" ></asp:TextBox>  
     <asp:TextBox ID="TextBox6" runat="server" CssClass="w3-input" placeholder="Address Line 2" ></asp:TextBox>  
     <asp:TextBox ID="TextBox7" runat="server" CssClass="w3-input" placeholder="Area" ></asp:TextBox>  
     
     <asp:Label runat="server" Text="Location"></asp:Label> 
              
     <asp:TextBox ID="TextBox8" runat="server" CssClass="w3-input" placeholder="District" ></asp:TextBox>  
     <asp:TextBox ID="TextBox9" runat="server" CssClass="w3-input" placeholder="State" ></asp:TextBox>  
     <asp:TextBox ID="TextBox10" runat="server" CssClass="w3-input" placeholder="Pin Code" ></asp:TextBox>  

      
        
     <br />
    </div>
    <div class="modal-footer">

        <p id="button"></p>

        <button onclick="return g()" class="w3-btn">Save</button>

            
               
    </div>
  </div>
            

        </ContentTemplate>
    </asp:UpdatePanel>
        
</asp:Content>
