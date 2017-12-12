using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            UrunleriGetir();

        }
        NORTHWNDEntities db = new NORTHWNDEntities();
        private void UrunleriGetir()
        {
            Repeater1.DataSource = db.Products.Select(x => new {
                x.ProductID,
                x.ProductName,
                x.Category.CategoryName,
                x.UnitPrice,
                x.UnitsInStock
            }).ToList();
            Repeater1.DataBind();

        }

        protected void Repeater1_ItemCreated(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Footer)
            {
                var urunler = db.Products.ToList();
                int? stokmiktari = urunler.Sum(x => x.UnitsInStock);
                Label lbl = e.Item.FindControl("lblBilgilendirme") as Label;
                lbl.Text = string.Format("Toplamda {0} adet urun bulunmaktadır. Toplam stok miktarı {1} adettir",db.Products.Count(), stokmiktari);
            }
        }
    }
}