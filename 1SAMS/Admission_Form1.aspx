<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admission_Form1.aspx.cs" Inherits="_1SAMS.Admission_Form1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                   <div class="row">
                     <div class="col">
                        <center>
                            <img width="200" src="images/g&b.png" /><br />
                           <h3>Child's Details</h3>
                            <hr />
                        </center>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col">
                        <label>Child's Full Name :</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Child's Name"></asp:TextBox>
                        </div>
                         </div>
                        </div>
                    <div class="row">
                     <div class="col-md-4">
                        <label>Gender</label>
                        <div class="form-group">
                            <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Female" Value="Female" />
                              <asp:ListItem Text="Male" Value="Male" />                              
                           </asp:DropDownList>
                        </div>
                      </div>
                    </div>
                       <div class="row">
                     <div class="col-md-4">
                        <label>Standard</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="I" Value="I" />
                              <asp:ListItem Text="II" Value="II" />
                              <asp:ListItem Text="III" Value="III" />
                              <asp:ListItem Text="IV" Value="IV" />
                           </asp:DropDownList>
                        </div>
                     </div>
                    </div>
                    <div class="row">
                       <div class="col-md-6">
                        <label>Date of Birth</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                            </div>
                       </div>
                   </div>
                      <div class="row">
                     <div class="col-md-4">
                        <label>Child's Photo:</label>
                     </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                         <div class="form-group">
                               <asp:FileUpload ID="FileUpload3" runat="server" />
                         </div>
                      </div>  
                    </div>
                    <div class="row">
                     <div class="col-md-4">
                        <label>Child's Birth Certificate:</label>
                     </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                         <div class="form-group">
                               <asp:FileUpload ID="FileUpload1" runat="server" />
                         </div>
                      </div>
                    </div>
                         
                    <div class="row">
                     <div class="col-md-4">
                        <label>Child's Aaadhar Card: </label>
                     </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                         <div class="form-group">
                               <asp:FileUpload ID="FileUpload2" runat="server" />
                         </div>
                      </div>
                    </div>
                      <div class="row">
                      <div class="col-md-4">
                         <div class="form-group">
                      <label> Enter Aaadhar card No. :</label>
                          <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Enter 12 digit UIDAI No."></asp:TextBox>
                     </div>
                          </div>
                     </div>

                <div class="row">
                     <div class="col">
                        <hr />
                     </div>
              </div>

                       
                        <div class="row">
                     <div class="col">
                        <center>
                           <h3>Parent's Details</h3>
                        </center><br /><hr />
                     </div>
                  </div>
                   <div class="row">
                     <div class="col">
                         <center>
                          <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Father's Details"></asp:Label>
                         </center>
                        <label>Father's Full Name :</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Father's Full Name"></asp:TextBox>
                        </div>  
                     </div>
                      </div>
                   <div class="row">
                      <div class="col-md-4">
                         <div class="form-group">
                      <label> Enter Email ID :</label>
                          <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Enter Email ID"></asp:TextBox>
                     </div>
                          </div>
                     </div>
                    <div class="row">
                      <div class="col-md-4">
                         <div class="form-group">
                      <label> Enter Mobile Number :</label>
                          <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Enter 10 Digit Number" CausesValidation="True"></asp:TextBox>
                     </div>
                          </div>
                     </div>

                   <div class="row">
                      <div class="col">
                          <hr />
                      </div>
                   </div>
                     <div class="row">
                     <div class="col">
                         <center>
                          <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Mother's Details"></asp:Label>
                         </center>
                        <label>Mother's Full Name :</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Mother's Full Name"></asp:TextBox>
                        </div>  
                     </div>
                      </div>

                    <div class="row">
                      <div class="col-md-4">
                         <div class="form-group">
                      <label> Enter Email ID :</label>
                          <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Enter Email ID"></asp:TextBox>
                     </div>
                          </div>
                     </div>
    
                    <div class="row">
                      <div class="col-md-4">
                         <div class="form-group">
                      <label> Enter Mobile Number :</label>
                          <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Enter 10 Digit Number"></asp:TextBox>
                     </div>
                          </div>
                     </div>

                       <br /><br />
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" />
                       </div>
                        </div>                     
                  </div>
               </div>
    </div>
</asp:Content>
