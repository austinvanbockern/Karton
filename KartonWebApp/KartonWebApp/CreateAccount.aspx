<%@ Page Title="Create Account" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="KartonWebApp.CreateAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Create Account
                    </div>

                    <div class="panel-body">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-12">
                                    Username: 
                                    <span style="color:red">*
                                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                                    </span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-12">
                                    E-mail: 
                                    <span style="color:red">*
                                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator><br />
                                    </span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-12">
                                    Password: 
                                    <span style="color:red">*
                                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                                    </span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-12">
                                    Confirm Password: 
                                    <span style="color:red">*
                                        <asp:RequiredFieldValidator ID="rfvPassword2" runat="server" ErrorMessage="Required" ControlToValidate="txtPassword2"></asp:RequiredFieldValidator>
                                    </span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:TextBox runat="server" ID="txtPassword2" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-12">
                                    Type of Account: 
                                    <span style="color:red">*
                                        <asp:RequiredFieldValidator ID="rfvType" runat="server" ErrorMessage="Required" ControlToValidate="ddlType"></asp:RequiredFieldValidator>
                                    </span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:DropDownList runat="server" ID="ddlType" CssClass="form-control">
                                        <asp:ListItem Selected="True">Select an account type...</asp:ListItem>
                                        <asp:ListItem>Personal</asp:ListItem>
                                        <asp:ListItem>Business</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-12">
                                    Description: (Tell us about yourself)
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <textarea runat="server" id="txtaDescription" cols="20" rows="10" class="form-control"></textarea>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-12" style="color:red">
                                    <asp:RegularExpressionValidator ID="rexEmail" runat="server" ErrorMessage="Please enter a valid e-mail address." ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    <br />
                                    <asp:CompareValidator ID="cvPassword" runat="server" ErrorMessage="Passwords do not match." ControlToCompare="txtPassword2" ControlToValidate="txtPassword"></asp:CompareValidator>
                                    <br />
                                    <%-- Username taken validator & 8 characters in password & 8 characters in username --%>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" cssclass="form-control btn btn-primary" OnClick="btnCreateAccount_Click"/>
                                </div>
                            </div>
                            <br />
                        </div>
                    </div>

                    <div class="panel-footer">
                        Already have an account? Click <a href="Login.aspx">here</a> to login.
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
