<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="employeeServices.aspx.cs" Inherits="WebApplication6.employeeServices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"/>

    <style>
        .empbody{
            display:flex;
            justify-content:center;
            align-items:center;
            height:75vh;
        }
       
        img{
            display:block;
            padding:16px;
            border-radius:100%;
        }

        .menu-item:hover img{
            height:140px;
            width:140px;
            padding:4px;
            margin:6px;
            box-shadow: 0 4px 8px 0 #888888, 0 6px 20px 0 rgb(128, 128, 128);
            transition-duration:.5s;
        }

        label{
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-size:2ex;
            text-align:center;
            opacity: 0;
            text-decoration-color:azure;

        }
        .menu-item:hover label{            
            opacity:1;
        }
               
        h1{
            position: absolute;
            top:130px;
            display:block;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            text-align:center;
        }
         .menu-item{
            display:inline-block;
            text-align:center;
        }

    </style>

    <script>

        function changeUI() {

            document.getElementById('empview').style.visibility = "hidden";

            document.getElementById('empview').style.display = "none";
            document.getElementById('empview').style.transition = "display 0.5s ";
            document.getElementById('head').style.top = "100px"
            document.getElementById('idText').style.display = "block";
            document.getElementById('idText').style.opacity = "1";
            document.getElementById('card').style.height = "350px";
            document.getElementById('card').style.transition = "height 1.5s ease ";
            
        }


    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        <ContentTemplate>
            

            

    <div class="empbody w3-animate-opacity ">
          
        <h1 class="w3-blue w3-container"  id="head" style="position:absolute;width: 550px; "> Employee Services</h1>
        
        <div class="w3-container w3-center w3-card-16" id="card" style="width: 550px; height: 250px; padding-top:45px;">
            <div class="menu-item"  >
               <div class=" w3-circle w3-center w3-white ">
                   <img src="login.png" alt="User Login Image" height="125" width="125"  onclick="changeUI()"/>
                  
                    <br/>
                <label>View Details</label>
                    </div>
            </div>


            <div class="menu-item" id="empview"  >
                <div class=" w3-circle w3-white ">
                <a href="http://google.com">
                <img src="login.png" alt="User Login Image" height="125" width="125"/>
                    </a>
                    <br/>
                <label>View Employee</label>
                    </div>
            </div>
            <div id="idText" style="opacity:0; display:none;">

            <p>Enter employee ID to view details</p>
            <asp:TextBox ID="getdata1" runat="server"></asp:TextBox>
            <asp:Button ID="getData"  Text="Submit" runat="server"  OnClick="getData_Click"/>
            </div>
          
        </div>
        
    </div>   
       <asp:GridView ID="dataviewgrid" runat="server" AutoGenerateColumns="true">        
     </asp:GridView>

        </ContentTemplate>

    </asp:UpdatePanel>

</asp:Content>
