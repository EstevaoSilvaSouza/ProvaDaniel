<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Listar.aspx.cs" Inherits="ProvaDaniel.Listar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" />

    <script src="Scripts/jquery-3.0.0.min.js"></script>

    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js">
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="text-center text-primary">
        <h2>Listagem de Alunos</h2>
    </div>

 
    <p>
        <asp:Repeater ID="rptaluno" runat="server">
            <HeaderTemplate>
                <table class="table table-hover" id="sisDataTable">
                    <thead>
                        <tr>
                            <td><strong>ID</strong></td>
                            <td><strong>Ra</strong></td>
                            <td><strong>Nome</strong></td>
                            <td><strong>Sexo</strong></td>
                            <td><strong>Data Nascimento</strong></td>
                            <td><strong>Email</strong></td>
                            <td><strong>Endereco</strong></td>
                            <td><strong>Curso</strong></td>
                            <td><strong>Ano Ingresso</strong></td>
                        </tr>
                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                   
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "alu_id") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "alu_ra") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "alu_nome") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "alu_sexo") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "alu_data_nasc") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "alu_email") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "alu_endere") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "alu_curso") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "alu_ano_ingresso") %>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </p>

    <div class="row">
        <div class="col-md-12">
            <asp:Label runat="server" Text="" ID="lblMsg"></asp:Label>
        </div>
    </div>

    <script>
        $('#sisDataTable').dataTable({
            "language": {
                "url": "https://cdn.datatables.net/plug-ins/1.10.20/i18n/Portuguese-Brasil.json"
            }
        });
    </script>
</asp:Content>
