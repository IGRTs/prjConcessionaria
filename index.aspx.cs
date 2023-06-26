using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Button btnDetalhes = (Button)e.Item.FindControl("btnDetalhes");
            btnDetalhes.CommandArgument = e.Item.ItemIndex.ToString();
        }
    }

    protected void btnDetalhes_Click(object sender, EventArgs e)
    {
        Button btnDetalhes = (Button)sender; // Obtém o botão que disparou o evento

        // Obtém a referência para o item do DataList
        DataListItem item = (DataListItem)btnDetalhes.NamingContainer;

        // Obtém os dados associados ao item do DataList
        DataRowView dataItem = (DataRowView)item.DataItem;

        if(dataItem != null)
        {
            // Acessa os valores das colunas do DataRowView
            string nome = dataItem["nome"].ToString();
            string imagem = dataItem["imagem"].ToString();
            string modelo = dataItem["modelo"].ToString();
            string combustivel = dataItem["combustivel"].ToString();
            string cor = dataItem["cor"].ToString();
            string ano = dataItem["ano"].ToString();
            string km = dataItem["km"].ToString();
            string descricao = dataItem["descricao"].ToString();
            string preco = dataItem["preco"].ToString();

            Session["infoCompleta"] = new
            {
                nomeCarro = nome,
                imagemCarro = imagem,
                modeloCarro = modelo,
                combustivelCarro = combustivel,
                corCarro = cor,
                anoCarro = ano,
                kmCarro = km,
                descricaoCarro = descricao,
                precoCarro = preco
            };
            Response.Redirect("carroDetalhe.aspx");
        }
    }
}