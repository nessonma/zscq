﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using zscq.DAL;
using zscq.Model;

public partial class aBrand_add_trademark : System.Web.UI.Page
{
    private dal_Goods goods = new dal_Goods();
    private dal_NewTrademark mark = new dal_NewTrademark();
    private dal_CaseNoOrder caseNo = new dal_CaseNoOrder();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind_Page_Member();
            t_GoodsCategoryFees fees = goods.CategoryFees_Select_One();
            hi_MainFees.Value = fees.MainFees.Value.ToString();
            hi_ItemNum.Value = fees.ItemNum.Value.ToString();
            hi_ExceedFees.Value = fees.ExceedFees.Value.ToString();
            Bind_Page_Type();
        }
    }
    public void Bind_Page_Type()// 绑定页面信息
    {
        if (Request.QueryString["t_r_id"] != null && Request.QueryString["t_r_id"].ToString() != "")
        {
            int trademarkId = int.Parse(Request.QueryString["t_r_id"].ToString());
            Bind_Page_EditInfo(trademarkId);
           // Bind_TradeMarkStatus();
        }
        else
        {
            //Response.Redirect("trademark_list.aspx");
        }

    }

    #region  编辑
    private void Bind_Page_EditInfo(int trademarkId)// 绑定商标详细数据
    {
        var model = mark.Trademark_Select_Id(trademarkId);
        if (model.ApplyType == 0) this.RdoCorp.Checked = true;
        else  this.RdoPeople.Checked = true;
        txt_applyname.Value = model.ApplyName;
        txt_applyCardNo.Value = model.CardNo;
        if (!string.IsNullOrEmpty(model.CardNoPDF))
        {
            hiUpCardNo.Value = model.CardNoPDF;
            aCardNoPdf.Visible = true;
        }
        if (!string.IsNullOrEmpty(model.Businesslicense))
        {
            upBusinessLinces.Value = model.Businesslicense;
            aBusinessLicense.Visible = true;
        }
        Hi_prov.Value = model.ProvinceId.ToString();////
        Hi_city.Value = model.CityId.ToString();
        Hi_country.Value = model.AreaId.ToString();
        this.txt_address.Value = model.Address;
        this.txt_ContactPerson.Value = model.ContactPerson;
        this.txt_phone.Value = model.Phone;
        this.txt_fax.Value = model.Fax;
        this.txt_postcode.Value = model.PostCode;
        this.lblCaseNo.Text = model.CaseNo;

        if (model.Is3D == true) Radio3DYES.Checked = true;
        else Radio3DNo.Checked = true;
        if (model.IsColor == true) rdoColorYes.Checked = true;
        else rdoColorNO.Checked = true;
        chkSound.Checked = model.IsSound == true ? true : false;
        if (model.IsSound != null && model.IsSound.Value == true)
            soundfiles.Visible = true;
        upSound.Value = model.SoundFile;
        txt_remark.Value = model.TrademarkRemark;
        sortarr.Value = model.TrademarkType;
        sortGoods.Value = model.TrademarkGoods;
        //
        if (!string.IsNullOrEmpty(model.TrademarkPattern1))
        {
            Image1.ImageUrl = model.TrademarkPattern1;
            upPattern1.Value = model.TrademarkPattern1;
        }
        if (!string.IsNullOrEmpty(model.TrademarkPattern2))
        {
            Image2.ImageUrl = model.TrademarkPattern2;
            upPattern2.Value = model.TrademarkPattern2;
        }
    }
    #endregion
    public void Bind_Page_Member()//绑定ID和用户名
    {
        if (Request.Cookies["hqhtshop"] != null && Request.Cookies["hqhtshop"]["hqht_sb_uid"] != null && Request.Cookies["hqhtshop"]["hqht_sb_uid"] != "")
        {
            Hi_MemberId.Value = Request.Cookies["hqhtshop"]["hqht_sb_uid"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx?flag=sb&pageurl=" + HttpUtility.UrlEncode(Request.Url.ToString()));
        }
    }
    protected void btnPreview_Click(object sender, EventArgs e)
    {
        txt_applyname.Value.Trim();
        Hi_prov.Value.Trim();
        Hi_city.Value.Trim();
        Hi_country.Value.Trim();
        txt_address.Value.Trim();
        txt_ContactPerson.Value.Trim();
        txt_phone.Value.Trim();
        txt_fax.Value.Trim();
        txt_postcode.Value.Trim();
        txt_remark.Value.Trim();

        sortarr.Value.Trim();//商标类别

        //Radio3DNo.Checked
        //chkSound.Checked
    }
    private t_NewTradeMarkInfo InitModel()
    {
        string filePath = "File_Zscq/File_ShangBiao/";
        if (!System.IO.Directory.Exists(Server.MapPath(filePath)))
        {
            System.IO.Directory.CreateDirectory(Server.MapPath(filePath));
        }

        t_NewTradeMarkInfo model = new t_NewTradeMarkInfo();
        model.i_MemberId = int.Parse(Hi_MemberId.Value);
        model.i_Type = 0;
        model.ApplyName = txt_applyname.Value.Trim();
        model.ApplyType = this.RdoPeople.Checked ? 1 : 0;
        string fileName = string.Empty;
        if (model.ApplyType == 1)
        {
            model.CardNoType = 0;
            model.CardNo = txt_applyCardNo.Value.Trim();
            fileName = this.hiUpCardNo.Value;//身份证
            if (fileName.Contains("File_ShangBiao"))
            {
                model.CardNoPDF = fileName;
            }
            else
            {
                System.IO.File.Move(HttpContext.Current.Server.MapPath("UploadTemp\\" + fileName),
                   HttpContext.Current.Server.MapPath(filePath + fileName));
                model.CardNoPDF = filePath + fileName;
            }
        }
        fileName = this.upBusinessLinces.Value;//营业执照
        if (fileName.Contains("File_ShangBiao"))
        {
            model.Businesslicense = fileName;
        }
        else
        {
            System.IO.File.Move(HttpContext.Current.Server.MapPath("UploadTemp\\" + fileName),
                    HttpContext.Current.Server.MapPath(filePath + fileName));
            model.Businesslicense = filePath + fileName;
        }

        model.ProvinceId = int.Parse(Hi_prov.Value);
        int cityid, areaid;
        if (int.TryParse(Hi_city.Value, out cityid))
            model.CityId = cityid;
        if (int.TryParse(Hi_country.Value, out areaid))
            model.AreaId = areaid;
        model.Address = txt_address.Value.Trim();
        model.ContactPerson = txt_ContactPerson.Value.Trim();
        model.Phone = txt_phone.Value.Trim();
        model.Fax = txt_fax.Value.Trim();
        model.PostCode = txt_postcode.Value.Trim();
        //日期+本日的序号，6位+3位，例如：141016001
        model.CaseNo = caseNo.GetTodayMaxCaseNo();
        model.Is3D = Radio3DNo.Checked ? false : true;
        model.IsColor = rdoColorNO.Checked ? false : true;
        model.IsSound = chkSound.Checked ? true : false;
        if (!string.IsNullOrEmpty(this.upSound.Value))
        {
            fileName = this.upSound.Value;//声音
            System.IO.File.Move(HttpContext.Current.Server.MapPath("UploadTemp\\" + fileName),
                   HttpContext.Current.Server.MapPath(filePath + fileName));
            model.SoundFile = filePath + fileName;
        }
        model.TrademarkRemark = txt_remark.Value.Trim();
        model.TrademarkType = sortarr.Value.Trim();
        model.TrademarkGoods = sortGoods.Value.Trim();
        fileName = this.upPattern1.Value;//图样1
        System.IO.File.Move(HttpContext.Current.Server.MapPath("UploadTemp\\" + fileName),
               HttpContext.Current.Server.MapPath(filePath + fileName));
        model.TrademarkPattern1 = filePath + fileName;


        if (!string.IsNullOrEmpty(this.upPattern2.Value))
        {
            fileName = this.upPattern2.Value;//图样2
            System.IO.File.Move(HttpContext.Current.Server.MapPath("UploadTemp\\" + fileName),
                   HttpContext.Current.Server.MapPath(filePath + fileName));
            model.TrademarkPattern2 = filePath + fileName;
        }
        return model;
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        var model = InitModel();
        model.Status = 0;
        if (mark.Trademark_Add(model) > 0)
        {

            UserLog.AddUserLog(model.i_Id, "商标系统", "添加商标内容");
            Response.Redirect("trademark_list.aspx");
        }
        else
        {
            div_a.InnerHtml = "<script>alert('信息添加失败!');<script>";
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        var model = InitModel();
        model.Status = 1;
        if (mark.Trademark_Add(model) > 0)
        {
            UserLog.AddUserLog(model.i_Id, "商标系统", "添加商标内容");
            Response.Redirect("trademark_list.aspx");
        }
        else
        {
            div_a.InnerHtml = "<script>alert('信息添加失败!');<script>";
        }
    }
    protected void btnCancle_Click(object sender, EventArgs e)
    {

    }
}