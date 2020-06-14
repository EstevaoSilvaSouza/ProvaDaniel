<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="InserirAluno.aspx.cs" Inherits="ProvaDaniel.InserirAluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="text-primary text-center">
        <h2>Cadastro de Aluno - para professor Testar a listagem de alunos '-' By: Tete</h2>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-12 " >
            <label>Ra:</label>
            <asp:RequiredFieldValidator ID="rfvRa" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtRa"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtRa" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-5 " >
            <label>Nome:</label>
            <asp:RequiredFieldValidator ID="rfvNome" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtNome"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtNome" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-3 " >
            <label>Sexo M OU F :</label>
            <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtSexo"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtSexo" CssClass="form-control" runat="server" MaxLength="1"></asp:TextBox>
        </div>
        <div class="col-md-4 " >
            <label>Data de Nascimento:</label>
            <asp:RequiredFieldValidator ID="rfvDataNascimento" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtDataNascimento"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtDataNascimento" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-5 " >
            <label>Email:</label>
            <asp:RequiredFieldValidator ID="rfvmail" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-3 " >
            <label>Endereco:</label>
            <asp:RequiredFieldValidator ID="rfvEndereco" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtEndereco"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtEndereco" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-2 " >
            <label>Curso:</label>
            <asp:RequiredFieldValidator ID="rfvCurso" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtCurso"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCurso" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-2 " >
            <label>Ano de Ingresso:</label>
            <asp:RequiredFieldValidator ID="rfvIngresso" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtIngresso"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtIngresso" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-12 text-right">
            <asp:Button ID="btnCadastrar" Text="Cadastrar" runat="server" CssClass="btn btn-primary" OnClick="btnCadastrar_Click"  />
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-12 text-right">
            <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
