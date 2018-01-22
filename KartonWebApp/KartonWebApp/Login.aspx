<%@ Page Title="Login" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KartonWebApp.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />

    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
                <asp:Panel ID="pnlLogin" runat="server" DefaultButton = "btnLogin">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Login
                    </div>
                    <div class="panel-body">
                        <div class="container-fluid">
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
                            <br />
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <asp:Button ID="btnLogin" runat="server" Text="Login" cssclass="form-control btn btn-primary" OnClick="btnLogin_Click"/>
                                </div>
                            </div>
                            <br />
                        </div>
                    </div>

                    <div class="panel-footer">
                        <a href="CreateAccount.aspx">Create An Account</a>
                    </div>

                </div>
                </asp:Panel>
            </div>
        </div>
    </div>

</asp:Content>
