<%@ Page Title="" Language="C#" MasterPageFile="~/navbar.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ConteudoWebsite" runat="Server">
    <form runat="server">
        <div class="jumbotron">
        </div>

        <div class="row">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="cod_carro" DataSourceID="SqlDataSource1" OnItemDataBound="DataList1_ItemDataBound">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <asp:Image ID="imgProduto" class="card-img-top" ImageUrl='<%# Eval("imagem")%>' runat="server" Height="250px" Width="287px" />
                            <div class="card-body">
                                <h5 class="card-title">
                                    <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' /></h5>
                                <p class="card-text">
                                    <asp:Label ID="descricaoLabel" runat="server" Text='<%# Eval("descricao") %>' />
                                </p>
                                <asp:Button class="btn btn-primary" OnClick="btnDetalhes_Click" ID="btnDetalhes" runat="server" Text="Ver Detalhes" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConcessionariaDBConnectionString %>" SelectCommand="SELECT * FROM [carrovrumvrum]" ProviderName="<%$ ConnectionStrings:ConcessionariaDBConnectionString.ProviderName %>"></asp:SqlDataSource>
        </div>
    </form>
</asp:Content>

