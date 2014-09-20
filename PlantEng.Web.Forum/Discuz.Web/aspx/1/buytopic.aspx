<%@ Page Language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.buytopic" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="Discuz.Common" %>
<%@ Import Namespace="Discuz.Forum" %>
<%@ Import Namespace="Discuz.Entity" %>
<%@ Import Namespace="Discuz.Config" %>

<script runat="server">
    override protected void OnInit(EventArgs e)
    {

        /* 
            This page was created by Discuz!NT Template Engine at 2011/6/2 16:12:39.
            本页面代码由Discuz!NT模板引擎生成于 2011/6/2 16:12:39. 
        */

        base.OnInit(e);

        templateBuilder.Capacity = 220000;



        if (infloat != 1)
        {

            templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    ");
            if (pagetitle == "首页")
            {

                templateBuilder.Append("\r\n        <title>");
                templateBuilder.Append(config.Forumtitle.ToString().Trim());
                templateBuilder.Append(" ");
                templateBuilder.Append(config.Seotitle.ToString().Trim());
                templateBuilder.Append("</title>\r\n    ");
            }
            else
            {

                templateBuilder.Append("\r\n        <title>");
                templateBuilder.Append(pagetitle.ToString());
                templateBuilder.Append(" - ");
                templateBuilder.Append(config.Forumtitle.ToString().Trim());
                templateBuilder.Append(" ");
                templateBuilder.Append(config.Seotitle.ToString().Trim());
                templateBuilder.Append("</title>\r\n    ");
            }	//end if

            templateBuilder.Append("\r\n    ");
            templateBuilder.Append(meta.ToString());
            templateBuilder.Append("\r\n   <meta http-equiv=\"x-ua-compatible\" content=\"ie=7\" />\r\n    <link rel=\"icon\" href=\"");
            templateBuilder.Append(forumurl.ToString());
            templateBuilder.Append("favicon.ico\" type=\"image/x-icon\" />\r\n    <link rel=\"shortcut icon\" href=\"");
            templateBuilder.Append(forumurl.ToString());
            templateBuilder.Append("favicon.ico\" type=\"image/x-icon\" />\r\n    ");
            if (pagename != "website.aspx")
            {

                templateBuilder.Append("\r\n        <link rel=\"stylesheet\" href=\"");
                templateBuilder.Append(cssdir.ToString());
                templateBuilder.Append("/dnt.css\" type=\"text/css\" media=\"all\" />\r\n    ");
            }	//end if

            templateBuilder.Append("\r\n    <link rel=\"stylesheet\" href=\"");
            templateBuilder.Append(cssdir.ToString());
            templateBuilder.Append("/float.css\" type=\"text/css\" />\r\n    ");
            if (isnarrowpage)
            {

                templateBuilder.Append("\r\n        <link type=\"text/css\" rel=\"stylesheet\" href=\"");
                templateBuilder.Append(cssdir.ToString());
                templateBuilder.Append("/widthauto.css\" id=\"css_widthauto\" />\r\n    ");
            }	//end if

            templateBuilder.Append("\r\n    ");
            templateBuilder.Append(link.ToString());
            templateBuilder.Append("\r\n    <script type=\"text/javascript\">\r\n        var creditnotice='");
            templateBuilder.Append(Scoresets.GetValidScoreNameAndId().ToString().Trim());
            templateBuilder.Append("';	\r\n        var forumpath = \"");
            templateBuilder.Append(forumpath.ToString());
            templateBuilder.Append("\";\r\n    </");
            templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
            templateBuilder.Append(config.Jqueryurl.ToString().Trim());
            templateBuilder.Append("\"></");
            templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">jQuery.noConflict();</");
            templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
            templateBuilder.Append(jsdir.ToString());
            templateBuilder.Append("/common.js\"></");
            templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
            templateBuilder.Append(jsdir.ToString());
            templateBuilder.Append("/template_report.js\"></");
            templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
            templateBuilder.Append(jsdir.ToString());
            templateBuilder.Append("/template_utils.js\"></");
            templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
            templateBuilder.Append(jsdir.ToString());
            templateBuilder.Append("/ajax.js\"></");
            templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n	    var aspxrewrite = ");
            templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
            templateBuilder.Append(";\r\n	    var IMGDIR = '");
            templateBuilder.Append(imagedir.ToString());
            templateBuilder.Append("';\r\n        var disallowfloat = '");
            templateBuilder.Append(config.Disallowfloatwin.ToString().Trim());
            templateBuilder.Append("';\r\n	    var rooturl=\"");
            templateBuilder.Append(rooturl.ToString());
            templateBuilder.Append("\";\r\n	    var imagemaxwidth='");
            templateBuilder.Append(Templates.GetTemplateWidth(templatepath).ToString().Trim());
            templateBuilder.Append("';\r\n	    var cssdir='");
            templateBuilder.Append(cssdir.ToString());
            templateBuilder.Append("';\r\n    </");
            templateBuilder.Append("script>\r\n    ");
            templateBuilder.Append(script.ToString());
            templateBuilder.Append("\r\n</head>");

            templateBuilder.Append("\r\n<body onkeydown=\"if(event.keyCode==27) return false;\">\r\n<div id=\"append_parent\"></div><div id=\"ajaxwaitid\"></div>\r\n");
            if (headerad != "")
            {

                templateBuilder.Append("\r\n	<div id=\"ad_headerbanner\">");
                templateBuilder.Append(headerad.ToString());
                templateBuilder.Append("</div>\r\n");
            }	//end if

            templateBuilder.Append("\r\n<div id=\"hd\">\r\n	<div class=\"wrap\">\r\n		<div class=\"head cl\">\r\n			<h2><a href=\"");
            templateBuilder.Append(forumpath.ToString());
            templateBuilder.Append("index.aspx\" title=\"");
            templateBuilder.Append(config.Forumtitle.ToString().Trim());
            templateBuilder.Append("\"><img src=\"");
            templateBuilder.Append(imagedir.ToString());
            templateBuilder.Append("/logo.png\" alt=\"");
            templateBuilder.Append(config.Forumtitle.ToString().Trim());
            templateBuilder.Append("\"/></a></h2>\r\n			");
            if (userid == -1)
            {


                if (pagename != "login.aspx" && pagename != "register.aspx")
                {

                    templateBuilder.Append("<div class=\"fastlg c1\">\r\n					<div class=\"y pns\">\r\n						<p><a href=\"" + loginUrl + currentPageUrl + "\">登录</a>&nbsp;&nbsp;<a href=\"" + registerUrl + currentPageUrl + "\">注册</a></p>\r\n					</div>\r\n				</div>\r\n            ");
                }	//end if


            }
            else
            {

                templateBuilder.Append("\r\n			<div id=\"um\">\r\n				<div class=\"avt y\"><a alt=\"用户名称\" target=\"_blank\" href=\"");
                templateBuilder.Append(forumpath.ToString());
                templateBuilder.Append("usercp.aspx\"><img src=\"");
                templateBuilder.Append(useravatar.ToString());
                templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
                templateBuilder.Append(forumpath.ToString());
                templateBuilder.Append("images/common/noavatar_small.gif';\" /></a></div>\r\n				<p>\r\n					<strong><a href=\"");
                templateBuilder.Append(forumpath.ToString());
                templateBuilder.Append("userinfo.aspx?userid=");
                templateBuilder.Append(userid.ToString());
                templateBuilder.Append("\" class=\"vwmy\">");
                templateBuilder.Append(username.ToString());
                templateBuilder.Append("</a></strong><span class=\"xg1\">在线</span><span class=\"pipe\">|</span>\r\n                    "); string linktitle = "";

                string showoverflow = "";


                if (oluserinfo.Newpms > 0)
                {


                    if (oluserinfo.Newpms >= 1000)
                    {

                        showoverflow = "大于";


                    }	//end if

                    linktitle = "您有" + showoverflow + oluserinfo.Newpms + "条新短消息";


                }
                else
                {

                    linktitle = "您没有新短消息";


                }	//end if

                templateBuilder.Append("\r\n					<a id=\"pm_ntc\" href=\"");
                templateBuilder.Append(forumpath.ToString());
                templateBuilder.Append("usercpinbox.aspx\" title=\"");
                templateBuilder.Append(linktitle.ToString());
                templateBuilder.Append("\">短消息\r\n                    ");
                if (oluserinfo.Newpms > 0 && oluserinfo.Newpms <= 1000)
                {

                    templateBuilder.Append("\r\n                                (");
                    templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
                    if (oluserinfo.Newpms >= 1000)
                    {

                        templateBuilder.Append("1000+");
                    }	//end if

                    templateBuilder.Append(")\r\n                    ");
                }	//end if

                templateBuilder.Append("</a>\r\n                    <span class=\"pipe\">|</span>\r\n                    "); showoverflow = "";


                if (oluserinfo.Newnotices > 0)
                {


                    if (oluserinfo.Newnotices >= 1000)
                    {

                        showoverflow = "大于";


                    }	//end if

                    linktitle = "您有" + showoverflow + oluserinfo.Newnotices + "条新通知";


                }
                else
                {

                    linktitle = "您没有新通知";


                }	//end if

                templateBuilder.Append("\r\n					<a href=\"");
                templateBuilder.Append(forumpath.ToString());
                templateBuilder.Append("usercpnotice.aspx?filter=all\" title=\"");
                templateBuilder.Append(linktitle.ToString());
                templateBuilder.Append("\">\r\n                        通知");
                if (oluserinfo.Newnotices > 0)
                {

                    templateBuilder.Append("\r\n                                (");
                    templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
                    if (oluserinfo.Newnotices >= 1000)
                    {

                        templateBuilder.Append("+");
                    }	//end if

                    templateBuilder.Append(")\r\n                            ");
                }	//end if

                templateBuilder.Append("\r\n                    </a>\r\n                    <span class=\"pipe\">|</span>\r\n					<a id=\"usercenter\" href=\"");
                templateBuilder.Append(forumpath.ToString());
                templateBuilder.Append("usercp.aspx\">用户中心</a>\r\n				");
                if (config.Regstatus == 2 || config.Regstatus == 3)
                {


                    if (userid > 0)
                    {

                        templateBuilder.Append("\r\n					<span class=\"pipe\">|</span><a href=\"");
                        templateBuilder.Append(forumpath.ToString());
                        templateBuilder.Append("invite.aspx\">邀请</a>\r\n					");
                    }	//end if


                }	//end if


                if (useradminid == 1)
                {

                    templateBuilder.Append("\r\n					<span class=\"pipe\">|</span><a href=\"");
                    templateBuilder.Append(forumpath.ToString());
                    templateBuilder.Append("admin/index.aspx\" target=\"_blank\">系统设置</a>\r\n					");
                }	//end if

                templateBuilder.Append("\r\n					<span class=\"pipe\">|</span><a href=\"");
                templateBuilder.Append(forumpath.ToString());
                templateBuilder.Append("logout.aspx?userkey=");
                templateBuilder.Append(userkey.ToString());
                templateBuilder.Append("\">退出</a>\r\n				</p>\r\n				");
                templateBuilder.Append(userinfotips.ToString());
                templateBuilder.Append("\r\n			</div> \r\n			<div id=\"pm_ntc_menu\" class=\"g_up\" style=\"display:none;\">\r\n				<div class=\"mncr\"></div>\r\n				<div class=\"crly\">\r\n					<div style=\"clear:both;font-size:0;\"></div>\r\n					<span class=\"y\"><a onclick=\"javascript:$('pm_ntc_menu').style.display='none';closenotice(");
                templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
                templateBuilder.Append(");\" href=\"javascript:;\"><img src=\"");
                templateBuilder.Append(imagedir.ToString());
                templateBuilder.Append("/delete.gif\" alt=\"关闭\"/></a></span>\r\n					<a href=\"");
                templateBuilder.Append(forumpath.ToString());
                templateBuilder.Append("usercpinbox.aspx\">您有");
                if (oluserinfo.Newpms >= 1000)
                {

                    templateBuilder.Append("大于");
                }	//end if
                templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
                templateBuilder.Append("条新消息</a>\r\n				</div>\r\n			</div>\r\n            <script type=\"text/javascript\">\r\n            setMenuPosition('pm_ntc', 'pm_ntc_menu', '43');\r\n            if(");
                templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
                templateBuilder.Append(" > 0 && (getcookie(\"shownotice\") != \"0\" || getcookie(\"newpms\") != ");
                templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
                templateBuilder.Append("))\r\n            {\r\n                $(\"pm_ntc_menu\").style.display='';\r\n            }            \r\n            </");
                templateBuilder.Append("script>\r\n            ");
            }	//end if

            templateBuilder.Append("\r\n		</div>\r\n		<div id=\"menubar\">\r\n			<a onMouseOver=\"showMenu(this.id, false);\" href=\"javascript:void(0);\" id=\"mymenu\">我的中心</a>\r\n            <div class=\"popupmenu_popup headermenu_popup\" id=\"mymenu_menu\" style=\"display: none\">\r\n            ");
            if (userid != -1)
            {

                templateBuilder.Append("\r\n			<ul class=\"sel_my\">\r\n				<li><a href=\"");
                templateBuilder.Append(forumpath.ToString());
                templateBuilder.Append("mytopics.aspx\">我的主题</a></li>\r\n				<li><a href=\"");
                templateBuilder.Append(forumpath.ToString());
                templateBuilder.Append("myposts.aspx\">我的帖子</a></li>\r\n				<li><a href=\"");
                templateBuilder.Append(forumpath.ToString());
                templateBuilder.Append("search.aspx?posterid=current&type=digest&searchsubmit=1\">我的精华</a></li>\r\n				<li><a href=\"");
                templateBuilder.Append(forumpath.ToString());
                templateBuilder.Append("myattachment.aspx\">我的附件</a></li>\r\n				<li><a href=\"");
                templateBuilder.Append(forumpath.ToString());
                templateBuilder.Append("usercpsubscribe.aspx\">我的收藏</a></li>\r\n			");
                if (config.Enablespace == 1)
                {

                    templateBuilder.Append("\r\n				<li class=\"myspace\"><a href=\"");
                    templateBuilder.Append(forumpath.ToString());
                    templateBuilder.Append("space/\">我的空间</a></li>\r\n			");
                }	//end if


                if (config.Enablealbum == 1)
                {

                    templateBuilder.Append("\r\n				<li class=\"myalbum\"><a href=\"");
                    templateBuilder.Append(forumpath.ToString());
                    templateBuilder.Append("showalbumlist.aspx?uid=");
                    templateBuilder.Append(userid.ToString());
                    templateBuilder.Append("\">我的相册</a></li>\r\n			");
                }	//end if

                templateBuilder.Append("\r\n            </ul>\r\n            ");
            }
            else
            {

                templateBuilder.Append("\r\n			<p class=\"reg_tip\">\r\n				<a href=\"");
                templateBuilder.Append(forumpath.ToString());
                templateBuilder.Append("register.aspx\" onClick=\"showWindow('register', '");
                templateBuilder.Append(rooturl.ToString());
                templateBuilder.Append("register.aspx');hideWindow('login');\" class=\"xg2\">登录或注册新用户,开通自己的个人中心</a>\r\n			</p>\r\n            ");
            }	//end if


            if (config.Allowchangewidth == 1 && pagename != "website.aspx")
            {

                templateBuilder.Append("\r\n           <ul class=\"sel_mb\">\r\n				<li><a href=\"javascript:;\" onclick=\"widthauto(this,'");
                templateBuilder.Append(cssdir.ToString());
                templateBuilder.Append("')\">");
                if (isnarrowpage)
                {

                    templateBuilder.Append("切换到宽版");
                }
                else
                {

                    templateBuilder.Append("切换到窄版");
                }	//end if

                templateBuilder.Append("</a></li>\r\n 			</ul>\r\n        ");
            }	//end if

            templateBuilder.Append("\r\n            </div>\r\n			<ul id=\"menu\" class=\"cl\">\r\n				");
            templateBuilder.Append(mainnavigation.ToString());
            templateBuilder.Append("\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>\r\n");
        }
        else
        {


            Response.Clear();
            Response.ContentType = "Text/XML";
            Response.Expires = 0;
            Response.Cache.SetNoStore();

            templateBuilder.Append("<?xml version=\"1.0\" encoding=\"utf-8\"?><root><![CDATA[\r\n");
        }	//end if



        templateBuilder.Append("\r\n<div class=\"wrap s_clear pageinfo\">\r\n	<div id=\"nav\">\r\n		<a href=\"");
        templateBuilder.Append(config.Forumurl.ToString().Trim());
        templateBuilder.Append("\" class=\"title\">");
        templateBuilder.Append(config.Forumtitle.ToString().Trim());
        templateBuilder.Append("</a> &raquo;");
        templateBuilder.Append(ShowForumAspxRewrite(forum.Pathlist.Trim(), forumid, forumpageid).ToString().Trim());
        templateBuilder.Append("\r\n		 "); aspxrewriteurl = this.ShowTopicAspxRewrite(topicid, 0);

        templateBuilder.Append("\r\n	     &raquo; <a href=\"");
        templateBuilder.Append(aspxrewriteurl.ToString());
        templateBuilder.Append("\">");
        templateBuilder.Append(topic.Title.ToString().Trim());
        templateBuilder.Append("</a> &raquo; <strong>交易信息</strong>\r\n	</div>\r\n</div>\r\n");
        if (page_err == 0)
        {


            if (ispost)
            {


                templateBuilder.Append("<div class=\"wrap s_clear\" id=\"wrap\">\r\n<div class=\"main\">\r\n	<div class=\"msgbox\">\r\n		<h1>");
                templateBuilder.Append(config.Forumtitle.ToString().Trim());
                templateBuilder.Append("　提示信息</h1>\r\n		<hr class=\"solidline\"/>\r\n		<div class=\"msg_inner\">\r\n			<p>");
                templateBuilder.Append(msgbox_text.ToString());
                templateBuilder.Append("</p>\r\n			");
                if (msgbox_url != "")
                {

                    templateBuilder.Append("\r\n			<p><a href=\"");
                    templateBuilder.Append(msgbox_url.ToString());
                    templateBuilder.Append("\">如果浏览器没有转向, 请点击这里.</a></p>\r\n			");
                }	//end if

                templateBuilder.Append("\r\n		</div>\r\n	</div>\r\n</div>\r\n</div>");


            }
            else
            {

                templateBuilder.Append("\r\n    <div class=\"wrap s_clear\" id=\"wrap\">\r\n	<div class=\"main datalist\">\r\n	    ");
                if (buyit == 1)
                {

                    templateBuilder.Append("\r\n		    <form id=\"form1\" name=\"form1\" method=\"post\" action=\"\">\r\n		    <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" summary=\"购买主题\" class=\"datatable infotable\">\r\n		    <tbody>\r\n		    <tr>\r\n			    <th>用户名:</th>\r\n			    <td>");
                    templateBuilder.Append(username.ToString());
                    templateBuilder.Append(" [<a href=\"logout.aspx?userkey=");
                    templateBuilder.Append(userkey.ToString());
                    templateBuilder.Append("\">退出登录</a>]</td>\r\n		    </tr>\r\n		    <tr>\r\n			    <th>作者:</th>\r\n			    <td>"); aspxrewriteurl = this.UserInfoAspxRewrite(topic.Posterid);

                    templateBuilder.Append("\r\n			    <a href=\"");
                    templateBuilder.Append(aspxrewriteurl.ToString());
                    templateBuilder.Append("\">");
                    templateBuilder.Append(topic.Poster.ToString().Trim());
                    templateBuilder.Append("</a>\r\n			    </td>\r\n		    </tr>\r\n		    <tr>\r\n			    <th>标题:</th>\r\n			    <td class=\"datatitle\">\r\n			    "); aspxrewriteurl = this.ShowTopicAspxRewrite(topicid, 0);

                    templateBuilder.Append("\r\n			    <a href=\"");
                    templateBuilder.Append(aspxrewriteurl.ToString());
                    templateBuilder.Append("\">");
                    templateBuilder.Append(topic.Title.ToString().Trim());
                    templateBuilder.Append("</a>\r\n			    </td>\r\n		    </tr>\r\n		    <tr>\r\n			    <th>售价(");
                    templateBuilder.Append(userextcreditsinfo.Name.ToString().Trim());
                    templateBuilder.Append("):</th>\r\n			    <td>");
                    templateBuilder.Append(topicprice.ToString());
                    templateBuilder.Append("</td>\r\n		    </tr>\r\n		    <tr>\r\n			    <th>作者所得(");
                    templateBuilder.Append(userextcreditsinfo.Name.ToString().Trim());
                    templateBuilder.Append("):</th>\r\n			    <td>");
                    templateBuilder.Append(netamount.ToString());
                    templateBuilder.Append("</td>\r\n		    </tr>\r\n		    <tr>\r\n			    <th>购买后余额(");
                    templateBuilder.Append(userextcreditsinfo.Name.ToString().Trim());
                    templateBuilder.Append("):</th>\r\n			    <td>");
                    templateBuilder.Append(userlastprice.ToString());
                    templateBuilder.Append("</td>\r\n		    </tr>\r\n		    <tr>\r\n			    <th>&nbsp;</th>\r\n			    <td>\r\n			    <input type=\"submit\" name=\"paysubmit\" value=\"提交\">\r\n			    </td>\r\n		    </tr>\r\n		    </tbody>\r\n		    </table>\r\n		    </form>\r\n        ");
                }
                else
                {


                    if (showpayments == 1)
                    {


                        if (paymentloglist.Rows.Count > 0)
                        {

                            templateBuilder.Append("\r\n		        <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\"  summary=\"购买主题\"  class=\"datatable infotable\">\r\n			        <thead>\r\n			        <tr>\r\n				        <th>");
                            templateBuilder.Append(userextcreditsinfo.Name.ToString().Trim());
                            templateBuilder.Append("</th>\r\n				        <th>用户名</th>\r\n				        <th>时间</th>\r\n			        </tr>\r\n			        </thead>\r\n			        ");
                            int paymentlog__loop__id = 0;
                            foreach (DataRow paymentlog in paymentloglist.Rows)
                            {
                                paymentlog__loop__id++;

                                templateBuilder.Append("\r\n			        <tbody>\r\n			        <tr>\r\n				        <td><div class=\"ForumBuyTopicLeft\">" + paymentlog["amount"].ToString().Trim() + "</div></td>\r\n				        <th>"); aspxrewriteurl = this.UserInfoAspxRewrite(paymentlog["uid"].ToString().Trim());

                                templateBuilder.Append("\r\n                          <a href=\"");
                                templateBuilder.Append(aspxrewriteurl.ToString());
                                templateBuilder.Append("\" target=\"_blank\">" + paymentlog["username"].ToString().Trim() + "</a></th>\r\n				        <td>" + paymentlog["buydate"].ToString().Trim() + "</td>\r\n			        </tr>\r\n			        </tbody>\r\n			        ");
                            }	//end loop

                            templateBuilder.Append("\r\n		        </table>\r\n		        ");
                        }
                        else
                        {

                            templateBuilder.Append("\r\n		        该主题暂无购买记录\r\n	            ");
                        }	//end if


                    }	//end if


                    if (price > 0)
                    {

                        templateBuilder.Append("\r\n	        <h3>标题:");
                        templateBuilder.Append(topic.Title.ToString().Trim());
                        templateBuilder.Append("</h3>\r\n	        ");
                        templateBuilder.Append(postmessage.ToString());
                        templateBuilder.Append("\r\n	        <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\"  class=\"datatable infotable\">\r\n	        <thead>\r\n	        <tr>\r\n		        <th>&nbsp</th>\r\n		        <td>本主题需向作者支付相应积分才能浏览，您可根据作者信誉、出售价格及已购买用户的评价确定购买与否。</td>\r\n	        </tr>\r\n	        </thead>\r\n	        <tbody>\r\n	        <tr>\r\n		        <th >售价(");
                        templateBuilder.Append(userextcreditsinfo.Name.ToString().Trim());
                        templateBuilder.Append(")</th>\r\n		        <td>");
                        templateBuilder.Append(topicprice.ToString());
                        templateBuilder.Append("</td>\r\n	        </tr>\r\n	        <tr>\r\n		        <th>积分交易税</th>\r\n		        <td>");
                        templateBuilder.Append(creditstax.ToString());
                        templateBuilder.Append("%</td>\r\n	        </tr>\r\n	        <tr>\r\n		        <th>作者所得(");
                        templateBuilder.Append(userextcreditsinfo.Name.ToString().Trim());
                        templateBuilder.Append(")</th>\r\n		        <td>");
                        templateBuilder.Append(netamount.ToString());
                        templateBuilder.Append("</td>\r\n	        </tr>\r\n	        <tr>\r\n		        <th>已购买人数</th>\r\n		        <td>");
                        templateBuilder.Append(buyers.ToString());
                        templateBuilder.Append("</td>\r\n	        </tr>\r\n	        <tr>\r\n		        <th>作者最高收入(");
                        templateBuilder.Append(userextcreditsinfo.Name.ToString().Trim());
                        templateBuilder.Append(")</th>\r\n		        <td>");
                        templateBuilder.Append(maxincpertopic.ToString());
                        templateBuilder.Append("</td>\r\n	        </tr>\r\n	        <tr>\r\n		        <th>强制免费期限(小时)</th>\r\n		        <td>");
                        templateBuilder.Append(maxchargespan.ToString());
                        templateBuilder.Append("</td>\r\n	        </tr>\r\n	        <tr>\r\n		        <th>&nbsp;</th>\r\n		        <td>\r\n		        <a href=\"buytopic.aspx?topicid=");
                        templateBuilder.Append(topicid.ToString());
                        templateBuilder.Append("&showpayments=1\">[查看付款记录]</a><a href=\"buytopic.aspx?topicid=");
                        templateBuilder.Append(topicid.ToString());
                        templateBuilder.Append("&buyit=1\">[购买主题]</a> <a href=\"#\" onclick=\"history.go(-1)\">[返回上一页]</a>\r\n		        </td>\r\n	        </tr>\r\n	        </tbody>\r\n	        </table>\r\n	        <h3>最后5帖</h3>\r\n	        <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\"  class=\"datatable infotable\">\r\n	        ");
                        int lastpost__loop__id = 0;
                        foreach (DataRow lastpost in lastpostlist.Rows)
                        {
                            lastpost__loop__id++;

                            templateBuilder.Append("\r\n	        <tbody>\r\n	        <tr>\r\n		        <th>"); aspxrewriteurl = this.UserInfoAspxRewrite(lastpost["posterid"].ToString().Trim());

                            templateBuilder.Append("\r\n		        <a href=\"");
                            templateBuilder.Append(aspxrewriteurl.ToString());
                            templateBuilder.Append("\"><strong>" + lastpost["poster"].ToString().Trim() + "</strong></a>&nbsp;&nbsp;" + lastpost["postdatetime"].ToString().Trim() + "\r\n		        </th>\r\n	        </tr>\r\n	        <tr>\r\n		        <td>" + lastpost["message"].ToString().Trim() + "</td>\r\n	        </tr>\r\n	        </tbody>\r\n	        ");
                        }	//end loop

                        templateBuilder.Append("\r\n	        </table>\r\n	        ");
                    }
                    else
                    {

                        templateBuilder.Append("\r\n		        此主题无需购买\r\n	        ");
                    }	//end if


                }	//end if


            }	//end if

            templateBuilder.Append("\r\n    </div>\r\n    </div>\r\n");
        }
        else
        {


            if (needlogin)
            {



                if (infloat != 1)
                {

                    templateBuilder.Append("\r\n<div class=\"wrap cl\">\r\n	<div class=\"blr\">\r\n	<div class=\"msgbox\" style=\"margin:4px auto;padding:0 !important;margin-left:0;background:none;\">\r\n		<div class=\"msg_inner error_msg\">\r\n			<p>您无权进行当前操作，这可能因以下原因之一造成</p>\r\n			<p><b>");
                    templateBuilder.Append(msgbox_text.ToString());
                    templateBuilder.Append("</b></p>\r\n			<p>您还没有登录，请登录后再尝试访问。</p>\r\n		</div>\r\n	</div>\r\n	<hr class=\"solidline\"/>\r\n\r\n</div>\r\n</div>\r\n");
                }
                else
                {

                    templateBuilder.Append("\r\n<div class=\"main\">\r\n	<div class=\"msgbox\">\r\n		<h1>");
                    templateBuilder.Append(config.Forumtitle.ToString().Trim());
                    templateBuilder.Append(" 提示信息</h1>\r\n		<hr class=\"solidline\"/>\r\n		<div class=\"msg_inner error_msg\">\r\n			<p>您无权进行当前操作，这可能因以下原因之一造成</p>\r\n			<p><b>");
                    templateBuilder.Append(msgbox_text.ToString());
                    templateBuilder.Append("</b></p>\r\n			<p>您还没有登录，请登录后再尝试访问。</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n");
                }	//end if

            }
            else
            {


                templateBuilder.Append("<div class=\"wrap cl\">\r\n<div class=\"main\">\r\n	<div class=\"msgbox\">\r\n		<h1>出现了");
                templateBuilder.Append(page_err.ToString());
                templateBuilder.Append("个错误</h1>\r\n		<hr class=\"solidline\"/>\r\n		<div class=\"msg_inner error_msg\">\r\n			<p>");
                templateBuilder.Append(msgbox_text.ToString());
                templateBuilder.Append("</p>\r\n			<p class=\"errorback\">\r\n				<script type=\"text/javascript\">\r\n					if(");
                templateBuilder.Append(msgbox_showbacklink.ToString());
                templateBuilder.Append(")\r\n					{\r\n						document.write(\"<a href=\\\"");
                templateBuilder.Append(msgbox_backlink.ToString());
                templateBuilder.Append("\\\">返回上一步</a> &nbsp; &nbsp;|&nbsp; &nbsp  \");\r\n					}\r\n				</");
                templateBuilder.Append("script>\r\n				<a href=\"forumindex.aspx\">论坛首页</a>\r\n				");
                templateBuilder.Append("\r\n			</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n</div>");


            }	//end if


        }	//end if



        if (infloat != 1)
        {


            if (pagename == "website.aspx")
            {

                templateBuilder.Append("    \r\n       <div id=\"websitebottomad\"></div>\r\n");
            }
            else if (footerad != "")
            {

                templateBuilder.Append(" \r\n     <div id=\"ad_footerbanner\">");
                templateBuilder.Append(footerad.ToString());
                templateBuilder.Append("</div>   \r\n");
            }	//end if

            templateBuilder.Append("\r\n<div id=\"footer\">\r\n	<div class=\"wrap\"  id=\"wp\">\r\n		<div id=\"footlinks\">\r\n			<p><a href=\"");
            templateBuilder.Append(config.Weburl.ToString().Trim());
            templateBuilder.Append("\" target=\"_blank\">");
            templateBuilder.Append(config.Webtitle.ToString().Trim());
            templateBuilder.Append("</a> - ");
            templateBuilder.Append(config.Linktext.ToString().Trim());
            templateBuilder.Append(" - <a target=\"_blank\" href=\"");
            templateBuilder.Append(forumurl.ToString());
            templateBuilder.Append("stats.aspx\">统计</a> - ");
            if (config.Sitemapstatus == 1)
            {

                templateBuilder.Append("&nbsp;<a href=\"");
                templateBuilder.Append(forumurl.ToString());
                templateBuilder.Append("tools/sitemap.aspx\" target=\"_blank\" title=\"百度论坛收录协议\">Sitemap</a>");
            }	//end if

            templateBuilder.Append("\r\n			");
            templateBuilder.Append(config.Statcode.ToString().Trim());
            templateBuilder.Append(config.Icp.ToString().Trim());
            templateBuilder.Append("\r\n			</p>\r\n			<div>\r\n				<a href=\"http://www.comsenz.com/\" target=\"_blank\">Comsenz Technology Ltd</a>\r\n				- <a href=\"");
            templateBuilder.Append(forumurl.ToString());
            templateBuilder.Append("archiver/index.aspx\" target=\"_blank\">简洁版本</a>\r\n			");
            if (config.Stylejump == 1)
            {


                if (userid != -1 || config.Guestcachepagetimeout <= 0)
                {

                    templateBuilder.Append("\r\n				- <span id=\"styleswitcher\" class=\"drop\" onmouseover=\"showMenu({'ctrlid':this.id, 'pos':'21'})\" onclick=\"window.location.href='");
                    templateBuilder.Append(forumurl.ToString());
                    templateBuilder.Append("showtemplate.aspx'\">界面风格</span>\r\n				");
                }	//end if


            }	//end if

            templateBuilder.Append("\r\n			</div>\r\n		</div>\r\n		<a title=\"Powered by Discuz!NT\" target=\"_blank\" href=\"http://nt.discuz.net\"><img border=\"0\" alt=\"Discuz!NT\" src=\"");
            templateBuilder.Append(imagedir.ToString());
            templateBuilder.Append("/discuznt_logo.gif\"/></a>\r\n		<p id=\"copyright\">\r\n			Powered by <strong><a href=\"http://nt.discuz.net\" target=\"_blank\" title=\"Discuz!NT\">Discuz!NT</a></strong> <em class=\"f_bold\">3.6.601</em>\r\n			");
            if (config.Licensed == 1)
            {

                templateBuilder.Append("\r\n				(<a href=\"\" onclick=\"this.href='http://nt.discuz.net/certificate/?host='+location.href.substring(0, location.href.lastIndexOf('/'))\" target=\"_blank\">Licensed</a>)\r\n			");
            }	//end if

            templateBuilder.Append("\r\n				");
            templateBuilder.Append(config.Forumcopyright.ToString().Trim());
            templateBuilder.Append("\r\n		</p>\r\n		<p id=\"debuginfo\" class=\"grayfont\">\r\n		");
            if (config.Debug != 0)
            {

                templateBuilder.Append("\r\n			Processed in ");
                templateBuilder.Append(this.Processtime.ToString().Trim());
                templateBuilder.Append(" second(s)\r\n			");
                if (isguestcachepage == 1)
                {

                    templateBuilder.Append("\r\n				(Cached).\r\n			");
                }
                else if (querycount > 1)
                {

                    templateBuilder.Append("\r\n				 , ");
                    templateBuilder.Append(querycount.ToString());
                    templateBuilder.Append(" queries.\r\n			");
                }
                else
                {

                    templateBuilder.Append("\r\n				 , ");
                    templateBuilder.Append(querycount.ToString());
                    templateBuilder.Append(" query.\r\n			");
                }	//end if


            }	//end if

            templateBuilder.Append("\r\n		</p>\r\n	</div>\r\n</div>\r\n<a id=\"scrolltop\" href=\"javascript:;\" style=\"display:none;\" class=\"scrolltop\" onclick=\"setScrollToTop(this.id);\">TOP</a>\r\n\r\n\r\n");
            int prentid__loop__id = 0;
            foreach (string prentid in mainnavigationhassub)
            {
                prentid__loop__id++;

                templateBuilder.Append("\r\n<ul class=\"p_pop\" id=\"menu_");
                templateBuilder.Append(prentid.ToString());
                templateBuilder.Append("_menu\" style=\"display: none\">\r\n");
                int subnav__loop__id = 0;
                foreach (DataRow subnav in subnavigation.Rows)
                {
                    subnav__loop__id++;

                    bool isoutput = false;


                    if (subnav["parentid"].ToString().Trim() == prentid)
                    {


                        if (subnav["level"].ToString().Trim() == "0")
                        {

                            isoutput = true;


                        }
                        else
                        {


                            if (subnav["level"].ToString().Trim() == "1" && userid != -1)
                            {

                                isoutput = true;


                            }
                            else
                            {

                                bool leveluseradmindi = true;

                                leveluseradmindi = (useradminid == 3 || useradminid == 1 || useradminid == 2);


                                if (subnav["level"].ToString().Trim() == "2" && leveluseradmindi)
                                {

                                    isoutput = true;


                                }	//end if


                                if (subnav["level"].ToString().Trim() == "3" && useradminid == 1)
                                {

                                    isoutput = true;


                                }	//end if


                            }	//end if


                        }	//end if


                    }	//end if


                    if (isoutput)
                    {


                        if (subnav["id"].ToString().Trim() == "11" || subnav["id"].ToString().Trim() == "12")
                        {


                            if (config.Statstatus == 1)
                            {

                                templateBuilder.Append("\r\n	" + subnav["nav"].ToString().Trim() + "\r\n        "); continue;


                            }
                            else
                            {

                                continue;


                            }	//end if


                        }	//end if


                        if (subnav["id"].ToString().Trim() == "18")
                        {


                            if (config.Oltimespan > 0)
                            {

                                templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n	"); continue;


                            }
                            else
                            {

                                continue;


                            }	//end if


                        }	//end if


                        if (subnav["id"].ToString().Trim() == "24")
                        {


                            if (config.Enablespace == 1)
                            {

                                templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n 	"); continue;


                            }
                            else
                            {

                                continue;


                            }	//end if


                        }	//end if


                        if (subnav["id"].ToString().Trim() == "25")
                        {


                            if (config.Enablealbum == 1)
                            {

                                templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n 	"); continue;


                            }
                            else
                            {

                                continue;


                            }	//end if


                        }	//end if


                        if (subnav["id"].ToString().Trim() == "26")
                        {


                            if (config.Enablemall >= 1)
                            {

                                templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n   	"); continue;


                            }
                            else
                            {

                                continue;


                            }	//end if


                        }	//end if

                        templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n");
                    }	//end if


                }	//end loop

                templateBuilder.Append("\r\n</ul>\r\n");
            }	//end loop


            if (config.Stylejump == 1)
            {


                if (userid != -1 || config.Guestcachepagetimeout <= 0)
                {

                    templateBuilder.Append("\r\n	<ul id=\"styleswitcher_menu\" class=\"popupmenu_popup s_clear\" style=\"display: none;\">\r\n	");
                    templateBuilder.Append(templatelistboxoptions.ToString());
                    templateBuilder.Append("\r\n	</ul>\r\n	");
                }	//end if


            }	//end if




            templateBuilder.Append("</body>\r\n</html>\r\n");
        }
        else
        {

            templateBuilder.Append("\r\n]]></root>\r\n");
        }	//end if




        Response.Write(templateBuilder.ToString());
    }
</script>

