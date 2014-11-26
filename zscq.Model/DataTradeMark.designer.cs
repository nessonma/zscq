﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.33440
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace zscq.Model
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="db_zscq")]
	public partial class DataTradeMarkDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region 可扩展性方法定义
    partial void OnCreated();
    partial void Insertt_Apply(t_Apply instance);
    partial void Updatet_Apply(t_Apply instance);
    partial void Deletet_Apply(t_Apply instance);
    partial void Insertt_GoodsMainCategory(t_GoodsMainCategory instance);
    partial void Updatet_GoodsMainCategory(t_GoodsMainCategory instance);
    partial void Deletet_GoodsMainCategory(t_GoodsMainCategory instance);
    partial void Insertt_GoodsDetailCategory(t_GoodsDetailCategory instance);
    partial void Updatet_GoodsDetailCategory(t_GoodsDetailCategory instance);
    partial void Deletet_GoodsDetailCategory(t_GoodsDetailCategory instance);
    partial void Insertt_Goods(t_Goods instance);
    partial void Updatet_Goods(t_Goods instance);
    partial void Deletet_Goods(t_Goods instance);
    partial void Insertt_GoodsCategoryFees(t_GoodsCategoryFees instance);
    partial void Updatet_GoodsCategoryFees(t_GoodsCategoryFees instance);
    partial void Deletet_GoodsCategoryFees(t_GoodsCategoryFees instance);
    #endregion
		
		public DataTradeMarkDataContext() : 
				base(global::zscq.Model.Properties.Settings.Default.db_zscqConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DataTradeMarkDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataTradeMarkDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataTradeMarkDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataTradeMarkDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<t_Apply> t_Apply
		{
			get
			{
				return this.GetTable<t_Apply>();
			}
		}
		
		public System.Data.Linq.Table<t_GoodsMainCategory> t_GoodsMainCategory
		{
			get
			{
				return this.GetTable<t_GoodsMainCategory>();
			}
		}
		
		public System.Data.Linq.Table<t_GoodsDetailCategory> t_GoodsDetailCategory
		{
			get
			{
				return this.GetTable<t_GoodsDetailCategory>();
			}
		}
		
		public System.Data.Linq.Table<t_Goods> t_Goods
		{
			get
			{
				return this.GetTable<t_Goods>();
			}
		}
		
		public System.Data.Linq.Table<t_GoodsSearch> t_GoodsSearch
		{
			get
			{
				return this.GetTable<t_GoodsSearch>();
			}
		}
		
		public System.Data.Linq.Table<t_GoodsCategoryFees> t_GoodsCategoryFees
		{
			get
			{
				return this.GetTable<t_GoodsCategoryFees>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.t_Apply")]
	public partial class t_Apply : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _i_Id;
		
		private int _MemberID;
		
		private int _ApplyType;
		
		private string _ApplyName;
		
		private string _ApplyPinYin;
		
		private string _ApplyCardNo;
		
		private string _PhoneNo;
		
		private string _FaxNo;
		
		private System.Nullable<int> _provinceID;
		
		private System.Nullable<int> _cityID;
		
		private System.Nullable<int> _areaID;
		
		private string _Address;
		
		private string _PostCode;
		
		private string _MobilePhone;
		
		private string _Email;
		
		private System.Nullable<int> _QQ;
		
		private string _MainQualificationPath;
		
		private string _CardNoPath;
		
		private System.Nullable<System.DateTime> _AddTime;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void Oni_IdChanging(int value);
    partial void Oni_IdChanged();
    partial void OnMemberIDChanging(int value);
    partial void OnMemberIDChanged();
    partial void OnApplyTypeChanging(int value);
    partial void OnApplyTypeChanged();
    partial void OnApplyNameChanging(string value);
    partial void OnApplyNameChanged();
    partial void OnApplyPinYinChanging(string value);
    partial void OnApplyPinYinChanged();
    partial void OnApplyCardNoChanging(string value);
    partial void OnApplyCardNoChanged();
    partial void OnPhoneNoChanging(string value);
    partial void OnPhoneNoChanged();
    partial void OnFaxNoChanging(string value);
    partial void OnFaxNoChanged();
    partial void OnprovinceIDChanging(System.Nullable<int> value);
    partial void OnprovinceIDChanged();
    partial void OncityIDChanging(System.Nullable<int> value);
    partial void OncityIDChanged();
    partial void OnareaIDChanging(System.Nullable<int> value);
    partial void OnareaIDChanged();
    partial void OnAddressChanging(string value);
    partial void OnAddressChanged();
    partial void OnPostCodeChanging(string value);
    partial void OnPostCodeChanged();
    partial void OnMobilePhoneChanging(string value);
    partial void OnMobilePhoneChanged();
    partial void OnEmailChanging(string value);
    partial void OnEmailChanged();
    partial void OnQQChanging(System.Nullable<int> value);
    partial void OnQQChanged();
    partial void OnMainQualificationPathChanging(string value);
    partial void OnMainQualificationPathChanged();
    partial void OnCardNoPathChanging(string value);
    partial void OnCardNoPathChanged();
    partial void OnAddTimeChanging(System.Nullable<System.DateTime> value);
    partial void OnAddTimeChanged();
    #endregion
		
		public t_Apply()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_i_Id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int i_Id
		{
			get
			{
				return this._i_Id;
			}
			set
			{
				if ((this._i_Id != value))
				{
					this.Oni_IdChanging(value);
					this.SendPropertyChanging();
					this._i_Id = value;
					this.SendPropertyChanged("i_Id");
					this.Oni_IdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MemberID", DbType="Int NOT NULL")]
		public int MemberID
		{
			get
			{
				return this._MemberID;
			}
			set
			{
				if ((this._MemberID != value))
				{
					this.OnMemberIDChanging(value);
					this.SendPropertyChanging();
					this._MemberID = value;
					this.SendPropertyChanged("MemberID");
					this.OnMemberIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ApplyType", DbType="Int NOT NULL")]
		public int ApplyType
		{
			get
			{
				return this._ApplyType;
			}
			set
			{
				if ((this._ApplyType != value))
				{
					this.OnApplyTypeChanging(value);
					this.SendPropertyChanging();
					this._ApplyType = value;
					this.SendPropertyChanged("ApplyType");
					this.OnApplyTypeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ApplyName", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string ApplyName
		{
			get
			{
				return this._ApplyName;
			}
			set
			{
				if ((this._ApplyName != value))
				{
					this.OnApplyNameChanging(value);
					this.SendPropertyChanging();
					this._ApplyName = value;
					this.SendPropertyChanged("ApplyName");
					this.OnApplyNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ApplyPinYin", DbType="NVarChar(50)")]
		public string ApplyPinYin
		{
			get
			{
				return this._ApplyPinYin;
			}
			set
			{
				if ((this._ApplyPinYin != value))
				{
					this.OnApplyPinYinChanging(value);
					this.SendPropertyChanging();
					this._ApplyPinYin = value;
					this.SendPropertyChanged("ApplyPinYin");
					this.OnApplyPinYinChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ApplyCardNo", DbType="NVarChar(20)")]
		public string ApplyCardNo
		{
			get
			{
				return this._ApplyCardNo;
			}
			set
			{
				if ((this._ApplyCardNo != value))
				{
					this.OnApplyCardNoChanging(value);
					this.SendPropertyChanging();
					this._ApplyCardNo = value;
					this.SendPropertyChanged("ApplyCardNo");
					this.OnApplyCardNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PhoneNo", DbType="NVarChar(20)")]
		public string PhoneNo
		{
			get
			{
				return this._PhoneNo;
			}
			set
			{
				if ((this._PhoneNo != value))
				{
					this.OnPhoneNoChanging(value);
					this.SendPropertyChanging();
					this._PhoneNo = value;
					this.SendPropertyChanged("PhoneNo");
					this.OnPhoneNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FaxNo", DbType="NVarChar(20)")]
		public string FaxNo
		{
			get
			{
				return this._FaxNo;
			}
			set
			{
				if ((this._FaxNo != value))
				{
					this.OnFaxNoChanging(value);
					this.SendPropertyChanging();
					this._FaxNo = value;
					this.SendPropertyChanged("FaxNo");
					this.OnFaxNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_provinceID", DbType="Int")]
		public System.Nullable<int> provinceID
		{
			get
			{
				return this._provinceID;
			}
			set
			{
				if ((this._provinceID != value))
				{
					this.OnprovinceIDChanging(value);
					this.SendPropertyChanging();
					this._provinceID = value;
					this.SendPropertyChanged("provinceID");
					this.OnprovinceIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_cityID", DbType="Int")]
		public System.Nullable<int> cityID
		{
			get
			{
				return this._cityID;
			}
			set
			{
				if ((this._cityID != value))
				{
					this.OncityIDChanging(value);
					this.SendPropertyChanging();
					this._cityID = value;
					this.SendPropertyChanged("cityID");
					this.OncityIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_areaID", DbType="Int")]
		public System.Nullable<int> areaID
		{
			get
			{
				return this._areaID;
			}
			set
			{
				if ((this._areaID != value))
				{
					this.OnareaIDChanging(value);
					this.SendPropertyChanging();
					this._areaID = value;
					this.SendPropertyChanged("areaID");
					this.OnareaIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Address", DbType="NVarChar(100)")]
		public string Address
		{
			get
			{
				return this._Address;
			}
			set
			{
				if ((this._Address != value))
				{
					this.OnAddressChanging(value);
					this.SendPropertyChanging();
					this._Address = value;
					this.SendPropertyChanged("Address");
					this.OnAddressChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PostCode", DbType="NVarChar(10)")]
		public string PostCode
		{
			get
			{
				return this._PostCode;
			}
			set
			{
				if ((this._PostCode != value))
				{
					this.OnPostCodeChanging(value);
					this.SendPropertyChanging();
					this._PostCode = value;
					this.SendPropertyChanged("PostCode");
					this.OnPostCodeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MobilePhone", DbType="NVarChar(20)")]
		public string MobilePhone
		{
			get
			{
				return this._MobilePhone;
			}
			set
			{
				if ((this._MobilePhone != value))
				{
					this.OnMobilePhoneChanging(value);
					this.SendPropertyChanging();
					this._MobilePhone = value;
					this.SendPropertyChanged("MobilePhone");
					this.OnMobilePhoneChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Email", DbType="NVarChar(50)")]
		public string Email
		{
			get
			{
				return this._Email;
			}
			set
			{
				if ((this._Email != value))
				{
					this.OnEmailChanging(value);
					this.SendPropertyChanging();
					this._Email = value;
					this.SendPropertyChanged("Email");
					this.OnEmailChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_QQ", DbType="Int")]
		public System.Nullable<int> QQ
		{
			get
			{
				return this._QQ;
			}
			set
			{
				if ((this._QQ != value))
				{
					this.OnQQChanging(value);
					this.SendPropertyChanging();
					this._QQ = value;
					this.SendPropertyChanged("QQ");
					this.OnQQChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MainQualificationPath", DbType="NVarChar(100)")]
		public string MainQualificationPath
		{
			get
			{
				return this._MainQualificationPath;
			}
			set
			{
				if ((this._MainQualificationPath != value))
				{
					this.OnMainQualificationPathChanging(value);
					this.SendPropertyChanging();
					this._MainQualificationPath = value;
					this.SendPropertyChanged("MainQualificationPath");
					this.OnMainQualificationPathChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CardNoPath", DbType="NVarChar(100)")]
		public string CardNoPath
		{
			get
			{
				return this._CardNoPath;
			}
			set
			{
				if ((this._CardNoPath != value))
				{
					this.OnCardNoPathChanging(value);
					this.SendPropertyChanging();
					this._CardNoPath = value;
					this.SendPropertyChanged("CardNoPath");
					this.OnCardNoPathChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AddTime", DbType="DateTime")]
		public System.Nullable<System.DateTime> AddTime
		{
			get
			{
				return this._AddTime;
			}
			set
			{
				if ((this._AddTime != value))
				{
					this.OnAddTimeChanging(value);
					this.SendPropertyChanging();
					this._AddTime = value;
					this.SendPropertyChanged("AddTime");
					this.OnAddTimeChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.t_GoodsMainCategory")]
	public partial class t_GoodsMainCategory : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _i_Id;
		
		private string _CategoryCode;
		
		private string _CategoryRemark;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void Oni_IdChanging(int value);
    partial void Oni_IdChanged();
    partial void OnCategoryCodeChanging(string value);
    partial void OnCategoryCodeChanged();
    partial void OnCategoryRemarkChanging(string value);
    partial void OnCategoryRemarkChanged();
    #endregion
		
		public t_GoodsMainCategory()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_i_Id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int i_Id
		{
			get
			{
				return this._i_Id;
			}
			set
			{
				if ((this._i_Id != value))
				{
					this.Oni_IdChanging(value);
					this.SendPropertyChanging();
					this._i_Id = value;
					this.SendPropertyChanged("i_Id");
					this.Oni_IdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CategoryCode", DbType="NVarChar(50)")]
		public string CategoryCode
		{
			get
			{
				return this._CategoryCode;
			}
			set
			{
				if ((this._CategoryCode != value))
				{
					this.OnCategoryCodeChanging(value);
					this.SendPropertyChanging();
					this._CategoryCode = value;
					this.SendPropertyChanged("CategoryCode");
					this.OnCategoryCodeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CategoryRemark", DbType="NVarChar(500)")]
		public string CategoryRemark
		{
			get
			{
				return this._CategoryRemark;
			}
			set
			{
				if ((this._CategoryRemark != value))
				{
					this.OnCategoryRemarkChanging(value);
					this.SendPropertyChanging();
					this._CategoryRemark = value;
					this.SendPropertyChanged("CategoryRemark");
					this.OnCategoryRemarkChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.t_GoodsDetailCategory")]
	public partial class t_GoodsDetailCategory : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _i_Id;
		
		private int _MainCategoryID;
		
		private string _CategoryCode;
		
		private string _CategoryRemark;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void Oni_IdChanging(int value);
    partial void Oni_IdChanged();
    partial void OnMainCategoryIDChanging(int value);
    partial void OnMainCategoryIDChanged();
    partial void OnCategoryCodeChanging(string value);
    partial void OnCategoryCodeChanged();
    partial void OnCategoryRemarkChanging(string value);
    partial void OnCategoryRemarkChanged();
    #endregion
		
		public t_GoodsDetailCategory()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_i_Id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int i_Id
		{
			get
			{
				return this._i_Id;
			}
			set
			{
				if ((this._i_Id != value))
				{
					this.Oni_IdChanging(value);
					this.SendPropertyChanging();
					this._i_Id = value;
					this.SendPropertyChanged("i_Id");
					this.Oni_IdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MainCategoryID", DbType="Int NOT NULL")]
		public int MainCategoryID
		{
			get
			{
				return this._MainCategoryID;
			}
			set
			{
				if ((this._MainCategoryID != value))
				{
					this.OnMainCategoryIDChanging(value);
					this.SendPropertyChanging();
					this._MainCategoryID = value;
					this.SendPropertyChanged("MainCategoryID");
					this.OnMainCategoryIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CategoryCode", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string CategoryCode
		{
			get
			{
				return this._CategoryCode;
			}
			set
			{
				if ((this._CategoryCode != value))
				{
					this.OnCategoryCodeChanging(value);
					this.SendPropertyChanging();
					this._CategoryCode = value;
					this.SendPropertyChanged("CategoryCode");
					this.OnCategoryCodeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CategoryRemark", DbType="NVarChar(500)")]
		public string CategoryRemark
		{
			get
			{
				return this._CategoryRemark;
			}
			set
			{
				if ((this._CategoryRemark != value))
				{
					this.OnCategoryRemarkChanging(value);
					this.SendPropertyChanging();
					this._CategoryRemark = value;
					this.SendPropertyChanged("CategoryRemark");
					this.OnCategoryRemarkChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.t_Goods")]
	public partial class t_Goods : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _i_Id;
		
		private int _DetailCategoryID;
		
		private string _GoodsCode;
		
		private string _GoodsRemark;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void Oni_IdChanging(int value);
    partial void Oni_IdChanged();
    partial void OnDetailCategoryIDChanging(int value);
    partial void OnDetailCategoryIDChanged();
    partial void OnGoodsCodeChanging(string value);
    partial void OnGoodsCodeChanged();
    partial void OnGoodsRemarkChanging(string value);
    partial void OnGoodsRemarkChanged();
    #endregion
		
		public t_Goods()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_i_Id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int i_Id
		{
			get
			{
				return this._i_Id;
			}
			set
			{
				if ((this._i_Id != value))
				{
					this.Oni_IdChanging(value);
					this.SendPropertyChanging();
					this._i_Id = value;
					this.SendPropertyChanged("i_Id");
					this.Oni_IdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DetailCategoryID", DbType="Int NOT NULL")]
		public int DetailCategoryID
		{
			get
			{
				return this._DetailCategoryID;
			}
			set
			{
				if ((this._DetailCategoryID != value))
				{
					this.OnDetailCategoryIDChanging(value);
					this.SendPropertyChanging();
					this._DetailCategoryID = value;
					this.SendPropertyChanged("DetailCategoryID");
					this.OnDetailCategoryIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GoodsCode", DbType="NVarChar(50)")]
		public string GoodsCode
		{
			get
			{
				return this._GoodsCode;
			}
			set
			{
				if ((this._GoodsCode != value))
				{
					this.OnGoodsCodeChanging(value);
					this.SendPropertyChanging();
					this._GoodsCode = value;
					this.SendPropertyChanged("GoodsCode");
					this.OnGoodsCodeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GoodsRemark", DbType="NVarChar(500)")]
		public string GoodsRemark
		{
			get
			{
				return this._GoodsRemark;
			}
			set
			{
				if ((this._GoodsRemark != value))
				{
					this.OnGoodsRemarkChanging(value);
					this.SendPropertyChanging();
					this._GoodsRemark = value;
					this.SendPropertyChanged("GoodsRemark");
					this.OnGoodsRemarkChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="")]
	public partial class t_GoodsSearch
	{
		
		private int _id;
		
		private string _DetailCategoryCode;
		
		private string _GoodsCode;
		
		private string _GoodsRemark;
		
		private string _MainCategoryCode;
		
		private int _MainCategoryID;
		
		public t_GoodsSearch()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id")]
		public int id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this._id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DetailCategoryCode", CanBeNull=false)]
		public string DetailCategoryCode
		{
			get
			{
				return this._DetailCategoryCode;
			}
			set
			{
				if ((this._DetailCategoryCode != value))
				{
					this._DetailCategoryCode = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GoodsCode", CanBeNull=false)]
		public string GoodsCode
		{
			get
			{
				return this._GoodsCode;
			}
			set
			{
				if ((this._GoodsCode != value))
				{
					this._GoodsCode = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GoodsRemark", CanBeNull=false)]
		public string GoodsRemark
		{
			get
			{
				return this._GoodsRemark;
			}
			set
			{
				if ((this._GoodsRemark != value))
				{
					this._GoodsRemark = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MainCategoryCode", CanBeNull=false)]
		public string MainCategoryCode
		{
			get
			{
				return this._MainCategoryCode;
			}
			set
			{
				if ((this._MainCategoryCode != value))
				{
					this._MainCategoryCode = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MainCategoryID")]
		public int MainCategoryID
		{
			get
			{
				return this._MainCategoryID;
			}
			set
			{
				if ((this._MainCategoryID != value))
				{
					this._MainCategoryID = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.t_GoodsCategoryFees")]
	public partial class t_GoodsCategoryFees : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _i_Id;
		
		private System.Nullable<decimal> _MainFees;
		
		private System.Nullable<int> _ItemNum;
		
		private System.Nullable<decimal> _ExceedFees;
		
		private System.Nullable<System.DateTime> _UpdateTime;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void Oni_IdChanging(int value);
    partial void Oni_IdChanged();
    partial void OnMainFeesChanging(System.Nullable<decimal> value);
    partial void OnMainFeesChanged();
    partial void OnItemNumChanging(System.Nullable<int> value);
    partial void OnItemNumChanged();
    partial void OnExceedFeesChanging(System.Nullable<decimal> value);
    partial void OnExceedFeesChanged();
    partial void OnUpdateTimeChanging(System.Nullable<System.DateTime> value);
    partial void OnUpdateTimeChanged();
    #endregion
		
		public t_GoodsCategoryFees()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_i_Id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int i_Id
		{
			get
			{
				return this._i_Id;
			}
			set
			{
				if ((this._i_Id != value))
				{
					this.Oni_IdChanging(value);
					this.SendPropertyChanging();
					this._i_Id = value;
					this.SendPropertyChanged("i_Id");
					this.Oni_IdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MainFees", DbType="Decimal(18,0)")]
		public System.Nullable<decimal> MainFees
		{
			get
			{
				return this._MainFees;
			}
			set
			{
				if ((this._MainFees != value))
				{
					this.OnMainFeesChanging(value);
					this.SendPropertyChanging();
					this._MainFees = value;
					this.SendPropertyChanged("MainFees");
					this.OnMainFeesChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ItemNum", DbType="Int")]
		public System.Nullable<int> ItemNum
		{
			get
			{
				return this._ItemNum;
			}
			set
			{
				if ((this._ItemNum != value))
				{
					this.OnItemNumChanging(value);
					this.SendPropertyChanging();
					this._ItemNum = value;
					this.SendPropertyChanged("ItemNum");
					this.OnItemNumChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ExceedFees", DbType="Decimal(18,0)")]
		public System.Nullable<decimal> ExceedFees
		{
			get
			{
				return this._ExceedFees;
			}
			set
			{
				if ((this._ExceedFees != value))
				{
					this.OnExceedFeesChanging(value);
					this.SendPropertyChanging();
					this._ExceedFees = value;
					this.SendPropertyChanged("ExceedFees");
					this.OnExceedFeesChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UpdateTime", DbType="DateTime")]
		public System.Nullable<System.DateTime> UpdateTime
		{
			get
			{
				return this._UpdateTime;
			}
			set
			{
				if ((this._UpdateTime != value))
				{
					this.OnUpdateTimeChanging(value);
					this.SendPropertyChanging();
					this._UpdateTime = value;
					this.SendPropertyChanged("UpdateTime");
					this.OnUpdateTimeChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
