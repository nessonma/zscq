﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using zscq.DAL;
using zscq.Model;

public partial class Shop_Manage_NewManage_Goods_CategoryFees : System.Web.UI.Page
{
    private dal_Goods goods = new dal_Goods();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.lblmsg.Text = "";
        if (!IsPostBack)
        {
            t_GoodsCategoryFees model = goods.CategoryFees_Select_All().First(p=>p.i_Type==0);
            this.txtMainFees.Value = model.MainFees.Value.ToString();
            this.txtItemNum.Value = model.ItemNum.Value.ToString();
            this.txtExceedFees.Value = model.ExceedFees.Value.ToString();

            var modeRenewal = goods.CategoryFees_Select_All().First(p => p.i_Type == 1);
            this.txtRenewalFees.Value = modeRenewal.MainFees.Value.ToString();
            this.HiddenRenewalID.Value = modeRenewal.i_Id.ToString();
            this.HiddenID.Value = model.i_Id.ToString();
        }
    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        t_GoodsCategoryFees model = new t_GoodsCategoryFees();
        model.i_Id = int.Parse(this.HiddenID.Value);
        model.MainFees = decimal.Parse(txtMainFees.Value);
        model.ItemNum = int.Parse(txtItemNum.Value);
        model.ExceedFees =decimal.Parse(txtExceedFees.Value);
        int i= goods.CategoryFees_Update(model);

        var modeRenewal = new t_GoodsCategoryFees();
        modeRenewal.i_Id = int.Parse(this.HiddenRenewalID.Value);
        modeRenewal.MainFees = decimal.Parse(txtRenewalFees.Value);
        int k = goods.CategoryFees_Update(modeRenewal);
        if(i>0&&k>0)lblmsg.Text = "<script>alert('设置成功');</script>";
        else lblmsg.Text = "<script>alert('设置失败');</script>";
    }
}