<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home_page.aspx.cs" Inherits="QuizQuest.home_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
        <style>
            section {
                background-color: #0093E9;
background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 100%);

            }
 

        </style>
          <section>
             
       <img  width="1350px" height="400px" src="images%20(2).jfif" />
   </section>
        
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Material </h2>
                  
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                     <div class="p-2 ">
            <asp:ImageButton ID="ImageButton1" runat="server" src="dbms-full-form2.png" Height="75px" Width="75px" OnClick="ImageButton1_Click" ></asp:ImageButton></div>
                  <h4>DBMS</h4>
                  
                  
               </center>
            </div>
            <div class="col-md-4">
             
                   <center>
                       <asp:ImageButton ID="ImageButton2" runat="server" src="download (5).jfif" Height="75px" Width="75px" OnClick="ImageButton2_Click" ></asp:ImageButton>
                  <h4>Operating System</h4>
                    </center>
                   
                
            </div>
            <div class="col-md-4">
               <center>
                   <asp:ImageButton ID="ImageButton3" runat="server" src="unnamed.png" Height="75px" Width="75px" OnClick="ImageButton3_Click" ></asp:ImageButton>
                  <h4>Computer Network</h4><br />
                   
               </center>
            </div>
         </div>
      </div>
   </section>
    
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2> TRY A QUIZ</h2>
                  
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                    <asp:ImageButton ID="ImageButton4" runat="server" src="po.jpg" Height="75px" Width="75px" OnClick="ImageButton4_Click" ></asp:ImageButton>
                   
                  <h4> OOPs</h4>
                  
               </center>
            </div>
            <div class="col-md-4">
               <center>
                   
                    <asp:ImageButton ID="ImageButton6" runat="server" src="Quiz-Logo-Transparent-Background.png" Height="75px" Width="75px" OnClick="ImageButton6_Click" ></asp:ImageButton>
                   
                  <h4> Try This quiz to know the level</h4><br />
                  
                                     </center>
            </div>
            <div class="col-md-4">
               <center>
                   
                    <asp:ImageButton ID="ImageButton5" runat="server" src="dsa.jpg" Height="75px" Width="75px" OnClick="ImageButton5_Click" ></asp:ImageButton>
                   
                   
                  <h4>DSA</h4>
                   
               </center>
            </div>
         </div>
      </div>
   </section>
</asp:Content>
