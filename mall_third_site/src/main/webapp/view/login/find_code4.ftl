<!doctype html>
<html lang="en">
    <head>
    <#assign basePath=request.contextPath>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="renderer" content="webkit">
        <title>找回密码</title>
        <link rel="stylesheet" type="text/css" href="${basePath}/css/pages.css"/>
        <script type="text/javascript" src="${basePath}/js/jquery-1.9.1.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="head2">
                <a href="${basicSet.bsetAddress!'#'}">
                <#if basicSet.bsetThirdLogo??>
                    <img id="logo_pic" src="${basicSet.bsetThirdLogo}" alt="" style="height:45px;width:auto;"/>
                <#else>
                    <img alt="" src="${basePath}/images/logo.jpg" id="logo_pic"/>
                </#if>

                </a>
                <h1>找回密码</h1>
            </div>
        </div>
        <div class="container pb50">
            <div class="n_step" style="margin-left:150px;">
                <div class="n_step_con">
                    <div class="n_step4"></div>
                    <ul class="ml10 clearfix">
                        <li class="p100 prev">填写账户名</li>
                        <li class="p130 prev">验证身份</li>
                        <li class="p130 prev">设置新密码</li>
                        <li class="cur">完成</li>
                    </ul>
                </div>
                <div class="n_password">
                    <div class="n_set_over">
                        <p class="gx_nin">恭喜您，重置密码成功！</p>
                        <p class="col9 pt10">请牢记您新设置的密码。
                            <a href="${basePath}/login.html" class="col0 f14">返回商家登录</a>
                        </p>
                    </div>
                </div>
            </div>
            <!--n_step-->
        </div>

        <div class="wp">
            <#--<div class="service mt20 clearfix" style="padding-left:125px">-->
                <#--<dl class="svc_box svc_01 fl" style="background-image: url(http://img01.ningpai.com/1420529386315.jpg);width:170px;">-->
                    <#--<dt>购物指南</dt>-->
                    <#--<dd>-->
                        <#--<div>-->
                            <#--<a href="/help/54">交易条款</a>-->
                        <#--</div>-->
                        <#--<div>-->
                            <#--<a href="/help/55">积分说明</a>-->
                        <#--</div>-->
                        <#--<div>-->
                            <#--<a href="/help/71">查询账户余额</a>-->
                        <#--</div>-->
                        <#--<div>-->
                            <#--<a href="/help/57">什么是优惠券</a>-->
                        <#--</div>-->

                    <#--</dd>-->
                <#--</dl>-->
                <#--<dl class="svc_box svc_01 fl" style="background-image: url(http://img01.ningpai.com/1420529395146.jpg);width:170px;">-->
                    <#--<dt>支付方式</dt>-->
                    <#--<dd>-->
                        <#--<div>-->
                            <#--<a href="/help/1">货到付款</a>-->
                        <#--</div>-->

                    <#--</dd>-->
                <#--</dl>-->
                <#--<dl class="svc_box svc_01 fl" style="background-image: url(http://img01.ningpai.com/1420529403162.jpg);width:170px;">-->
                    <#--<dt>售后服务</dt>-->
                    <#--<dd>-->
                        <#--<div>-->
                            <#--<a href="/help/69">查询配送服务</a>-->
                        <#--</div>-->
                        <#--<div>-->
                            <#--<a href="/help/3">退款说明</a>-->
                        <#--</div>-->
                        <#--<div>-->
                            <#--<a href="/help/66">催办订单</a>-->
                        <#--</div>-->
                        <#--<div>-->
                            <#--<a href="/help/65">售后服务总则</a>-->
                        <#--</div>-->

                    <#--</dd>-->
                <#--</dl>-->
                <#--<dl class="svc_box svc_01 fl" style="background-image: url(http://img01.ningpai.com/1420529438986.jpg);width:170px;">-->
                    <#--<dt>关于我们</dt>-->
                    <#--<dd>-->
                        <#--<div>-->
                            <#--<a href="/help/4">公司简介</a>-->
                        <#--</div>-->

                    <#--</dd>-->
                <#--</dl>-->
                <#--<dl class="svc_box svc_01 fl" style="background-image: url(http://img01.ningpai.com/1420529447872.jpg);width:170px;">-->
                    <#--<dt>联系我们</dt>-->
                    <#--<dd>-->
                        <#--<div>-->
                            <#--<a href="/help/58">联系方式</a>-->
                        <#--</div>-->

                    <#--</dd>-->
                <#--</dl>-->
            <#--</div>-->
            <!--/service-->

            <div class="footer mt20">
                <ul class="ft_links tc">
                </ul>
                <!--/ft_links-->

                <div style="margin: 15px 0px;" id="bq">
                    <a style="color:#666666;font-family:tahoma, arial, 宋体;line-height:normal;text-align:center;background-color:#FFFFFF;"></a>
                    <span style="color:#666666;font-family:tahoma, arial, 宋体;line-height:normal;text-align:center;background-color:#FFFFFF;"> </span>
                    <#--<ul class="ft_links tc" style="color:#666666;font-family:tahoma, arial, 宋体;line-height:normal;text-align:center;margin:0px;padding:0px;list-style:none;background-color:#FFFFFF;">-->
                        <#--<a></a>-->
                        <#--<li style="margin:0px 5px;padding:0px;display:inline-block;zoom:1;">-->
                            <#--<a href="http://www.baidu.com"></a>-->
                            <#--<a href="http://www.qianmi.com" target="_blank">关于我们</a>-->
                        <#--</li>-->
                        <#--|-->
                        <#--<li style="margin:0px 5px;padding:0px;display:inline-block;zoom:1;">-->
                            <#--<a href="http://www.qianmi.com" target="_blank">联系我们</a>-->
                        <#--</li>-->
                        <#--|-->
                        <#--<li style="margin:0px 5px;padding:0px;display:inline-block;zoom:1;">-->
                            <#--<a href="http://www.qianmi.com" target="_blank">人才招聘</a>-->
                        <#--</li>-->
                        <#--|-->
                        <#--<li style="margin:0px 5px;padding:0px;display:inline-block;zoom:1;">-->
                            <#--<a href="http://www.baidu.com" target="_blank">商家入驻</a>-->
                        <#--</li>-->
                        <#--|-->
                        <#--<li style="margin:0px 5px;padding:0px;display:inline-block;zoom:1;">-->
                            <#--<a href="http://www.qianmi.com" target="_blank">广告服务</a>-->
                        <#--</li>-->
                        <#--|-->
                        <#--<li style="margin:0px 5px;padding:0px;display:inline-block;zoom:1;">-->
                            <#--<a href="http://www.qianmi.com" target="_blank">手机千米</a>-->
                        <#--</li>-->
                        <#--|-->
                        <#--<li style="margin:0px 5px;padding:0px;display:inline-block;zoom:1;">-->
                            <#--<a href="http://qpmall.qianmi.com/toFriendLink.html" target="_blank">友情链接</a>-->
                        <#--</li>-->
                        <#--|-->
                        <#--<li style="margin:0px 5px;padding:0px;display:inline-block;zoom:1;">-->
                            <#--<a href="http://www.qianmi.com" target="_blank">销售联盟</a>-->
                        <#--</li>-->
                        <#--|-->
                        <#--<li style="margin:0px 5px;padding:0px;display:inline-block;zoom:1;">-->
                            <#--<a href="http://www.qianmi.com" target="_blank">English Site</a>-->
                        <#--</li>-->
                    <#--</ul>-->
                    <div class="copyright tc mt15" style="color:#666666;font-family:tahoma, arial, 宋体;line-height:normal;text-align:center;margin:15px 0px 0px;padding:0px;background-color:#FFFFFF;">
                        <p class="mb20" style="margin-top:0px;margin-bottom:20px;padding:0px;">
                        ${basicSet.thirdCopyright!''}
                        </p>
                        <p>
                            <br>
                        </p>
                    </div>

                    <ul style="text-align:center;margin-top:20px;">
                        <!--站长统计-->
                        <li>
                            <script type="text/javascript">function show() {
                            }</script>
                        </li>
                    </ul>
                </div>

            </div>
            <!--/footer-->
        </div>


    </body>
<script type="text/javascript">


</script>
</html>