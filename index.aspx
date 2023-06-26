<%@ Page Title="" Language="C#" MasterPageFile="~/navbar.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ConteudoWebsite" runat="Server">
    <form runat="server">

        <div class="album py-5 bg-body-tertiary">
            <div class="container">
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="cod_carro" DataSourceID="SqlDataSource1" OnItemDataBound="DataList1_ItemDataBound">
                        <ItemTemplate>
                            <div class="col">
                                <div class="card shadow-sm">
                                    <div class="bd-placeholder-img card-img-top" width="100%" height="225">
                                        <asp:Image ID="imgProduto" class="card-img-top" ImageUrl='<%# Eval("imagem")%>' runat="server" Height="250px" Width="347px" />
                                    </div>
                                    <div class="card-body">
                                        <p class="card-title">
                                            <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
                                        </p>
                                        <p class="card-text">
                                            <asp:Label ID="descricaoLabel" runat="server" Text='<%# Eval("descricao") %>' />
                                        </p>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="btn-group">
                                                <asp:Button class="btn btn-primary" OnClick="btnDetalhes_Click" ID="btnDetalhes" runat="server" Text="Ver Detalhes" />
                                            </div>
                                            <small class="text-body-secondary"></small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConcessionariaDBConnectionString %>" SelectCommand="SELECT * FROM [carrovrumvrum]" ProviderName="<%$ ConnectionStrings:ConcessionariaDBConnectionString.ProviderName %>"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </form>
</asp:Content>

