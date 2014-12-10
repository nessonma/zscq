﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="trademark_detail.aspx.cs" Inherits="trademark_detail" %>
<%@ Register Src="ascx/zscqfoot.ascx" TagName="zscqfoot" TagPrefix="uc2" %>
<%@ Register Src="ascx/zscqadv.ascx" TagName="zscqadv" TagPrefix="uc3" %>
<%@ Register Src="ascx/zscqtop2.ascx" TagName="zscqtop2" TagPrefix="uc4" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="x-ua-compatible" content="ie=7" />
  <title></title>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link href="css/trademark.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('.ui-tabs-nav > li > a').click(function (e) { //Tab切换
                if (e.target == this) {
                    var tabs = $(this).parent().parent().children('li');
                    var panels = $(this).parent().parent().parent().children('.ui-tabs-panel');
                    var index = $.inArray(this, $(this).parent().parent().find('a'));
                    if (panels.eq(index)[0]) {
                        tabs.removeClass('ui-tabs-selected').eq(index).addClass('ui-tabs-selected');
                        panels.addClass('ui-tabs-hide').eq(index).removeClass('ui-tabs-hide');
                    }
                    if (index == 2) {
                        var ifpanel = panels.eq(index);
                        if (ifpanel.attr('url') != undefined && ifpanel.find('frame').length == 0) {
                            ifpanel.html('<iframe src="' + ifpanel.attr('url') + '" scrolling="no" frameborder="0" width="100%" onload="IFrameReSize(this);"></iframe>');
                            ifpanel.removeAttr('src');
                        }
                    }
                }
            });
        });
    </script>
    <style type="text/css">

 p.MsoNormal
	{margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Times New Roman","serif";
	        margin-left: 0cm;
            margin-right: 0cm;
            margin-top: 0cm;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
  <uc4:zscqtop2 ID="zscqtop21" runat="server" />
  <uc3:zscqadv ID="zscqadv1" TypeId="46" runat="server" />
  <table width="1001" border="0" align="center" cellpadding="0" cellspacing="0" style="margin: 0 auto;">
    <tr>
      <td height="3"></td>
    </tr>
  </table>

  <table width="1001" border="0" align="center" cellpadding="0" cellspacing="0" style="margin: 0 auto; background-color: #fff;">
    <tr>
      <td align="left" valign="top">
       
        <div class="infoMain">
					<ul class="ui-tabs-nav clearfix">
						<li class="ui-tabs-selected"><a href="javascript:;">商标信息</a></li>
						<li><a href="javascript:;">商标状态</a></li>
						<li><a href="javascript:;">HQHT留言</a></li>
					</ul>
					<div class="ui-tabs-panel">
						<div class="content reset">
						 <table width="689" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="115" align="center" valign="top">
                          <table width="689" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="639" height="28" align="left" valign="bottom" style="border-bottom: 1px solid #d34245;">
                                <table width="114" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="10" height="20">&nbsp; </td>
                                    <td width="98" align="center" class="font12bt">申请人信息 </td>
                                    <td width="6"></td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                            <tr>
                              <td height="18" align="left"></td>
                            </tr>
                            <tr>
                              <td height="115" align="left" valign="top">
                                <table width="689" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="260" height="32" align="right"><strong>申请人名称：</strong> </td>
                                    <td align="left">
                                      <%=model.ApplyName %>
                                    </td>
                                  </tr>
                                  <% if (model.ApplyType == 1)
                                     { %>
                                  <tr>
                                    <td height="32" align="right"><strong>身份证件名称：</strong> </td>
                                    <td align="left">
                                      身份证
                                    </td>
                                  </tr>
                                  <tr>
                                    <td height="32" align="right"><strong>身份证件号码：</strong> </td>
                                    <td align="left"><%=model.CardNo%>
                                    </td>
                                  </tr>
                                 
                                  <tr>
                                    <td height="32" align="right"><strong>身份证明文件（扫描件）：</strong> </td>
                                    <td align="left">
                                      <%=model.CardNoPDF%>
                                    </td>
                                  </tr>
                                  <%} %>
                                  <tr>
                                    <td height="32" align="right"><strong>营业执照副本（扫描件）：</strong> </td>
                                    <td align="left">
                                      <%=model.Businesslicense %>
                                    </td>
                                  </tr>
                                  
                                  <tr>
                                    <td height="32" align="right"><strong>申请人行政区划：</strong> </td>
                                    <td align="left">
                                      <%=division%>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td height="32" align="right"><strong>申请人地址：</strong> </td>
                                    <td align="left">
                                      <%=model.Address%>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td height="32" align="right"><strong>邮政编码：</strong> </td>
                                    <td align="left"><%=model.PostCode%>
                                    </td>
                                  </tr>
                                     <tr>
                                    <td height="32" align="right"><strong>联系人：</strong> </td>
                                    <td align="left">
                                      <%=model.ContactPerson%>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td height="32" align="right"><strong>联系电话：</strong> </td>
                                    <td align="left">
                                      <%=model.Phone%> </td>
                                  </tr>
                                  </table>
                              </td>
                            </tr>
                            <tr>
                              <td height="30" align="left">&nbsp; </td>
                            </tr>
                          </table>
                          <table width="689" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="639" height="20" align="left" valign="top" style="border-bottom: 1px solid #d34245;">
                                <table width="156" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="10" height="20">&nbsp; </td>
                                    <td width="140" align="center" class="font12bt">商标信息（第一部分） </td>
                                    <td width="6"></td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                            <tr>
                              <td height="18" align="left"></td>
                            </tr>
                            <tr>
                              <td height="115" align="left" valign="top">
                                <table width="689" border="0" cellspacing="0" cellpadding="0">
                                
                                     <tr id="dailifei">                                   
                                    <td width="260" height="32" align="right" ><strong>商标类别：</strong>
                                    </td>  
                                     <td> 
                                        <%=model.TrademarkType %> 
                                    </td>                                  
                                    </tr>
                                     <tr>
                                    <td width="260" height="32" align="right" ><strong>商标图样：</strong>
                                    </td>  
                                    <td> 
                                     </td>  
                                    </tr>
                                      
                                      <tr>
                                    <td width="260" height="32" align="right" ><strong>商标说明：</strong>
                                    </td>  
                                    <td> 
                                       <%=model.TrademarkRemark %>
                                    </td>                                  
                                    </tr>
                                    
                                      <tr>
                                    <td width="260" align="right" height="32"><strong>是否三维商标：</strong></td>
                                    <td>
                                        <%=model.Is3D==true ? "是":"否" %>
                                    </td>                                    
                                    </tr>   
                                      <tr>
                                    <td width="260" align="right" height="32">
                                      <strong> 是否颜色组合商标： </strong>
                                          </td><td> <%=model.IsColor==true ? "是":"否" %></td>                                    
                                    </tr>   
                                    
                                      <tr>
                                    <td width="260" align="right" height="32">
                                            <strong>是否声音商标：</strong> 
                                          </td><td><%=model.IsSound==true ? "是":"否" %></td>                                    
                                    </tr>   
                                       <% if (model.IsSound == true) { %>
                                      <tr style=''>
                                    <td width="260" align="right" height="32"><strong>声音文件：</strong></td>
                                    <td><%=model.SoundFile%></td>                                    
                                    </tr>   
                                    <%} %>
                                  <tr>
                                    <td align="left">&nbsp; </td>
                                  </tr>
                                </table>
                                                      
                                <table width="689" border="0" cellspacing="0" cellpadding="0" id="disanfang" runat="server">
                            <tr>
                              <td width="639" height="20" align="left" valign="top" style="border-bottom: 1px solid #d34245;">
                                <table width="156" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="10" height="20">&nbsp;</td>
                                    <td width="140" align="center" class="font12bt">商标信息（第二部分）</td>
                                    <td width="6"></td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                            <tr>
                              <td height="18" align="left"></td>
                            </tr>
                            <tr>
                              <td height="115" align="left" valign="top">
                                <table width="689" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="260" height="32" align="right" valign="middle"><strong>商标申请日：</strong></td>
                                    <td width="429" valign="middle">
                                    </td>
                                  </tr>
                                  <tr>
                                    <td width="260" height="32" align="right" valign="middle"><strong>初审公告日：</strong></td>
                                    <td width="429" valign="middle">
                                       
                                    </td>
                                  </tr>
                                  <tr>
                                    <td width="260" height="32" align="right" valign="middle"><strong>注册公告日：</strong></td>
                                    <td width="429" valign="middle">
                                     
                                    </td>
                                  </tr>
                                  <tr>
                                    <td width="260" height="32" align="right" valign="middle"><strong></strong></td>
                                    <td width="429" valign="middle">
                                    </td>
                                  </tr>
                                  <tr>
                                    <td width="260" height="32" align="right" valign="middle">&nbsp;</td>
                                    <td width="429" valign="middle">
                                        &nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td width="260" height="32" align="right" valign="middle"><b><span>续展期限日：</span></b></td>
                                    <td width="429" valign="middle">
                                        &nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td width="260" height="32" align="right" valign="middle"><b><span>所剩天数：</span></b></td>
                                    <td width="429" valign="middle">
                                        &nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td width="260" height="32" align="right" valign="middle"><b><span>最近状态：</span></b></td>
                                    <td width="429" valign="middle">
                                        <%=status%></td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                            <tr>
                              <td align="left">&nbsp;</td>
                            </tr>
                          </table>
                          
                                <table width="689" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="639" height="20" align="left" valign="top" style="border-bottom: 1px solid #d34245;">
                                      <table width="114" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td width="10" height="20">&nbsp; </td>
                                          <td width="98" align="center" class="font12bt">其它信息 </td>
                                          <td width="6"></td>
                                        </tr>
                                      </table>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td height="18" align="left"></td>
                                  </tr>
                                  <tr>
                                    <td height="115" align="left" valign="top">
                                      <table width="689" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td width="260" height="32" align="right"><strong><span>商标注册申请书</span>：<br />
                                          </strong></td>
                                          <td width="429" align="left">
                                            <%=model.AgentBook%>
                                          </td>
                                        </tr>
                                        <tr>
                                          <td width="260" height="32" align="right"><strong>商标申请委托书：<br />
                                          </strong></td>
                                          <td width="429" align="left">
                                            <%=model.AgentBook%>
                                          </td>
                                        </tr>
                                       
                                        <tr>
                                          <td width="260" height="32" align="right"><strong>商标续展申请书：</strong> </td>
                                          <td align="left" width="429">
                                           
                                          </td>
                                        </tr>
                                        
                                                                     
                                        <tr>
                                          <td height="32" align="right"><strong>商标续展委托书：</strong> </td>
                                          <td align="left">
                                            
                                          </td>
                                        </tr>
                                        
                                        <tr>
                                          <td height="32" align="right"><strong>备注：</strong></td>
                                          <td align="left">
                                              &nbsp;</td>
                                        </tr>
                                        </table>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td align="left">&nbsp; </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                            <tr>
                              <td align="left">&nbsp; </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
						</div>
					</div>
					<div class="ui-tabs-panel">
						<table width="689" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                          <td height="115" align="center" valign="top">
                            <table width="689" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="639" height="20" align="left" valign="top" >
                                    </td>
                                  </tr>
                                  <tr>
                                    <td height="18" align="left"></td>
                                  </tr>
                                  <tr>
                                    <td height="115" align="left" valign="top">
                                      <table width="689" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td width="260" height="32" align="right"><strong>① 商标注册待审中：
                                          </strong></td>
                                          <td width="429" align="left">
                                            
                                          </td>
                                        </tr>
                                        <tr>
                                          <td width="260" height="32" align="right"><strong>② 初步审定:
                                          </strong></td>
                                          <td width="429" align="left">
                                            
                                          </td>
                                        </tr>
                                       
                                        <tr>
                                          <td width="260" height="32" align="right"><strong>③ 已驳回：</strong> </td>
                                          <td align="left" width="429">
                                            
                                          </td>
                                        </tr>
                           
                                        <tr>
                                          <td height="32" align="right"><strong>④ 视为撤回：</strong> </td>
                                          <td align="left">
                                            
                                          </td>
                                        </tr>
                                       
                                        <tr>
                                          <td height="32" align="right"><strong>⑤ 已注册：</strong></td>
                                          <td align="left">
                                              &nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td height="32" align="right"><span>⑥第</span><span lang="EN-US">1</span><span>次续展期限</span><span 
                                                  lang="EN-US"> XXX<span>&nbsp; </span></span><span>已完成</span></td>
                                          <td align="left">
                                              &nbsp;</td>
                                        </tr>
                                        </table>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td align="left">&nbsp; </td>
                                  </tr>
                                </table>
                          </td>
                         </tr>
                        </table>
					</div>
					 
					<div class="ui-tabs-panel ui-tabs-hide" id="Div1">
                     3
				    </div>
				</div>
  
      </td>
    </tr>
  </table>
 
  <uc2:zscqfoot ID="zscqfoot2" runat="server" />
  </form>
</body>
</html>