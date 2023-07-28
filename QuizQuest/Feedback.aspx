<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="QuizQuest.Feedback" %>
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
                           <img width="150px" src="images (1).jfif"/>
                             
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>FeedBack Form</h3>
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
                        <label>Email Id</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email ID"></asp:TextBox>
                        </div><br />
                          
                          
                         <div class="row">
                     <div class="col">
                        <label>Feedback-1</label>
                         <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder=""></asp:TextBox>
                        </div><br />
                          
                  </div>
                             </div>
                          <div class="row">
                     <div class="col">
                        <label> Feedback-2</label>
                             <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder=""></asp:TextBox>
                        </div><br />
                          
                  </div>
                          <div class="row">
                     <div class="col">
                        <label> Feedback-3</label>
                              <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder=""></asp:TextBox>
                        </div><br />
                          
                  </div>
                          <div class="row">
                     <div class="col">
                        <label> Feedback-4 </label>
                             <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder=""></asp:TextBox>
                        </div><br />
                          
                  </div>
                          <div class="row">
                     <div class="col">
                        <label> Feedback-5</label>
                            <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder=""></asp:TextBox>
                        </div><br />
                          
                  </div>
                           <div class="row">
                     <div class="col">
                        <label>Remark</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Remark" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        <br />
                             
                        </div>
                     </div>
                                
                  </div> 





                        
                         <br />
                              <br />
                        <div class="form-group">
                           <a href="usersignup.aspx">  
                <asp:Button class="btn btn-primary btn-block btn-lg" width="100%" ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click"   />

</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
                   </div>
                </div>
             </div>
          </div>
            </div>
        </div>




</asp:Content>
