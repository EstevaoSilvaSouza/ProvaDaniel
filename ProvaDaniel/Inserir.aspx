<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Inserir.aspx.cs" Inherits="ProvaDaniel.Inserir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-primary text-center">
        <h2>Cadastro de Funcionarios</h2>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-12 " >
            <label>Nome:</label>
            <asp:RequiredFieldValidator ID="rfvNome" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtNome"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtNome" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-5 " >
            <label>Sexo M ou F :</label>
            <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtSexo"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtSexo" CssClass="form-control" runat="server" MaxLength="1"></asp:TextBox>
        </div>
        <div class="col-md-3 " >
            <label>Data de Nascimento:</label>
            <asp:RequiredFieldValidator ID="rfvDataNascimento" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtDataNascimento"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtDataNascimento" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-4 " >
            <label>Numero da Carteira de Trabalho:</label>
            <asp:RequiredFieldValidator ID="rfvCarteiraTrabalho" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtCarteiraTrabalho"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCarteiraTrabalho" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-5 " >
            <label>Telefone Fixo:</label>
            <asp:RequiredFieldValidator ID="rfvTelefoneFixo" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtTelefoneFixo"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtTelefoneFixo" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-3 " >
            <label>Telefone Celular:</label>
            <asp:RequiredFieldValidator ID="rfvCelular" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtCelular"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCelular" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-2 " >
            <label>Email:</label>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-2 " >
            <label>Endereco:</label>
            <asp:RequiredFieldValidator ID="rfvEndereco" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtEndereco"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtEndereco" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-12 text-right">
            <asp:Button ID="btnCadastrar" Text="Cadastrar" runat="server" CssClass="btn btn-primary" OnClick="btnCadastrar_Click" />
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-12 text-right">
            <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
