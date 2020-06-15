<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Prova_2b.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">

                <div class="text-center text-black-50">
                    <h2>Cadastro de Funcionário</h2>
                </div>

                <div class="row" style="margin-top: 15px">
                    <div class="col-md-6">
                        <label>Nome:</label>
                        <asp:RequiredFieldValidator ID="rfvNome" ControlToValidate="txtNome"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtNome" runat="server" MaxLength="100" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label>E-Mail:</label>
                        <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="txtEmail"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtEmail" runat="server" MaxLength="120" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="row" style="margin-top: 15px">


                    <div class="col-md-6">
                        <label>Número de Telefone: </label>
                        <asp:RequiredFieldValidator ID="rfvTelefone" ControlToValidate="txtNumero_telefone"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtNumero_telefone" runat="server" MaxLength="8" CssClass="form-control"></asp:TextBox>
                    </div>


                    <div class="col-md-6">
                        <label>Número de Celular: </label>
                        <asp:RequiredFieldValidator ID="rfvCelular" ControlToValidate="txtNumero_celular"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtNumero_celular" runat="server" MaxLength="8" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>

                <div class="row">

                    <div class="col-md-4">
                        <label>Sexo: </label>
                        <asp:RequiredFieldValidator ID="rfvSexo" ControlToValidate="txtSexo"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="txtSexo" runat="server" CssClass="form-control">
                            <asp:ListItem Selected="True" Value=""></asp:ListItem>
                            <asp:ListItem Value="M">Feminino</asp:ListItem>
                            <asp:ListItem Value="H">Masculino</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="col-md-4">
                        <label>Data De Nascimento: </label>
                        <asp:RequiredFieldValidator ID="rfvNascimento" ControlToValidate="txtData_nascimento"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtData_nascimento" runat="server" MaxLength ="8" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="col-md-4">
                        <label>Numero Da Carteira: </label>
                        <asp:RequiredFieldValidator ID="rfvCarteira" ControlToValidate="txtNumero_carteira"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtNumero_carteira" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>


                <div class="row">

                    <div class="col-md-6">
                        <label>Cep: </label>
                        <asp:RequiredFieldValidator ID="rfvCep" ControlToValidate="txtN_cep"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtN_cep" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="col-md-6">
                        <label>Numero da Casa: </label>
                        <asp:RequiredFieldValidator ID="rfvN_casa" ControlToValidate="txtN_casa"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtN_casa" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>


                <div class="row">
                    <div class="col-md-6">
                        <label>Logradouro: </label>
                        <asp:RequiredFieldValidator ID="rfvLogradouro" ControlToValidate="txtLogradouro"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtLogradouro" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="col-md-6">
                        <label>Bairro: </label>
                        <asp:RequiredFieldValidator ID="rfvBairro" ControlToValidate="txtBairro"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtBairro" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>
                <div class="row" style="margin-top: 15px">
                    <div class="col-md-12 text-right">
                        <asp:Button ID="btnSalvar" CssClass="btn btn-outline-primary" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                    </div>
                </div>

                <div class="row" style="margin-top: 15px">
                    <div class="col-md-12 text-right">
                        <asp:Label ID="lblResultado" CssClass="text text-danger" runat="server"></asp:Label>
                    </div>
                </div>

            </div>
        </div>
    </form>
    <!-- JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
