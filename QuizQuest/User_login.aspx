<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User_login.aspx.cs" Inherits="QuizQuest.User_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" src="abcdef.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>user Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Email_id</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email_id"></asp:TextBox>
                        </div><br />
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div><br />
                         <label>Re-enter Password</label>
  
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Re-enter Password" TextMode="Password"></asp:TextBox>
                        </div><br />
                          <center> 
                         <div class="form-group">
                           <asp:Button class="btn btn-success  btn-lg" width="100%" ID="Button1" runat="server" Text="Login" OnClick=" Button1_Click" />
                        </div>
                      <center>
                         
                          
                      <br />
                        
                           <center>
                               <div class="form-group">
                           <asp:Button class="btn btn-primary  btn-lg" width="100%" ID="Button2" runat="server" Text="SignUp" OnClick="Button2_Click" />
                        </div>
                          
                         </center>
                          

                     </div>
                  </div>
               </div>
            </div>
             </div>
            <a href="homepage.aspx"><< Back to Home<br><br>  </a>

         </div>
      </div>
    </div>
       
</asp:Content>
