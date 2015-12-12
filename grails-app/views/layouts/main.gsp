<%@ page import="authorization.User" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>NanceCount: <g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="style.css"/>
    %{--<asset:stylesheet src="mobile-support.css"/>--}%
    <asset:javascript src="application.js"/>
    %{--<asset:javascript src="scripts.js"/>--}%
    <g:layoutHead/>
</head>

<body>
%{--<nav class="navbar navbar-default navbarOverRide">--}%
%{--<div class="container-fluid">--}%
%{--<div class="navbar-header" style="float:left">--}%
%{--<div class="logo">--}%
%{--<img src="${assetPath(src: 'logo.jpg')}" width="150" height="55" id="logoImg"/>--}%
%{--</div>--}%
%{--<!--<a class="navbar-brand" href="#">Brand</a>-->--}%
%{--</div>--}%
%{--<g:if test='${!request.requestURL.contains('/login')}'>--}%
%{--<a href="javascript:void(0);" id="menuSmall">--}%
%{--<div class="smallList" id="smallList">--}%
%{--<i class="fa fa-bars" style="font-size: 20px;color:#fff;text-align: center;"></i>--}%
%{--</div>--}%
%{--</a>--}%

%{--<div class="menuListSmall" id="menuListSmall">--}%
%{--<div class="menuItemSmall">--}%
%{--<i class="fa fa-tachometer menuSmallIcon"></i> <g:link controller="user" action="welcome">Dashboard</g:link>--}%
%{--</div>--}%

%{--<div class="menuItemSmall" id="smallAcc">--}%
%{--<i class="fa fa-folder menuSmallIcon"></i> <a href="#">Account</a>--}%
%{--</div>--}%

%{--<div class="menuItemSmall">--}%
%{--<i class="fa fa-cogs menuSmallIcon"></i> <a href="#">Setting</a>--}%
%{--</div>--}%

%{--<div class="menuItemSmall">--}%
%{--<i class="fa fa-user menuSmallIcon"></i> <a href="#">Username</a>--}%
%{--</div>--}%

%{--<div class="menuItemSmall">--}%
%{--<g:form controller="logout" method="post" style="display: inline">--}%
%{--<i class="glyphicon glyphicon-off"></i>--}%
%{--<input type="submit" class="unameLinkLogout" value="Logout">--}%
%{--</g:form>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="collapse navbar-collapse" id="menuItem">--}%
%{--<ul class="nav navbar-nav" id="menuUl">--}%
%{--<li>--}%
%{--<g:link controller="user" action="welcome">--}%
%{--<i class="fa fa-tachometer menuIcon"></i>--}%
%{--Dashboard--}%
%{--</g:link>--}%
%{--</li>--}%
%{--<li id="accMgnt">--}%
%{--<a href="#">--}%
%{--<i class="fa fa-folder menuIcon"></i>--}%
%{--Account--}%
%{--<i class="glyphicon glyphicon-triangle-bottom"></i>--}%
%{--</a>--}%

%{--<div class="menu_list">--}%
%{--<div id="arrowUp"></div>--}%

%{--<div><a href="#">Deposit <i class="glyphicon glyphicon-triangle-right subMenuListIcon"></i></a>--}%
%{--</div>--}%

%{--<div><a href="#">Withdraw <i class="glyphicon glyphicon-triangle-right subMenuListIcon"></i></a>--}%
%{--</div>--}%
%{--</div>--}%
%{--</li>--}%
%{--<li>--}%
%{--<a href="#">--}%
%{--<i class="fa fa-cogs menuIcon"></i>--}%
%{--Settings--}%
%{--</a>--}%
%{--</li>--}%
%{--</ul>--}%

%{--<div class="unameLogoutBox">--}%
%{--<g:if test="${authorization.UserController.getUserName()}">--}%
%{--<g:form method="get" action="myProfile" resource="${authorization.User.findByUsername(authorization.UserController.getUserName())}" style="display: inline">--}%
%{--<i class="fa fa-user menuIcon"></i>--}%
%{--<input type="submit" class="unameLinkLogout" value="${authorization.UserController.getUserName()}"/>--}%
%{--</g:form>--}%
%{--</g:if>--}%
%{--<g:form controller="logout" method="post" style="display: inline">--}%
%{--<i class="glyphicon glyphicon-off"></i>--}%
%{--<input type="submit" class="unameLinkLogout" value="Logout">--}%
%{--</g:form>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</g:if>--}%
%{--</nav>--}%

    <nav class="navbar navbar-default" id="nav">
        <div class="container-fluid">
            <div class="navbar-header">
                <g:if test="${!request.requestURL.contains('/login')}">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav-bar" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="fa fa-bars" style="font-size: 20px"></span>
                    </button>
                </g:if>
                <g:link controller="dashboard" action="index" class="navbar-brand">Brand</g:link>
            </div>
            <g:if test="${!request.requestURL.contains('/login')}">
                <div class="collapse navbar-collapse" id="main-nav-bar">
                    <ul class="nav navbar-nav">
                        <li id="active_link"><a href="#">Home <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Account</a></li>
                        <li><a href="dashboard.php">DashBoard</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                            aria-expanded="false">Dropdown <span class="fa fa-caret-down"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                    <g:if test="${authorization.UserController.getUserName()}">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-user" style="font-size: 18px"></i> ${authorization.UserController.getUserName().capitalize()} <span class="fa fa-caret-down"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li>
                                        <g:form controller="logout" method="post" style="display: inline">
                                            <input type="submit" class="unameLinkLogout" value="Logout">
                                        </g:form>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </g:if>
                </div>
            </g:if>
        </div>
    </nav>


%{--<div class="contentWrapper">--}%
%{--<g:if test='${!request.requestURL.contains('/login')}'>--}%
%{--<a href="javascript:void(0);" style="outline: none;">--}%
%{--<span id="fixedShowHideBtn">--}%
%{--<i class="fa fa-angle-right navToggleBtn" id="mobileView"></i>--}%
%{--</span>--}%
%{--</a>--}%

%{--<div class="panel panel-default leftPane" id="leftPane">--}%
%{--<div class="navigationHeading" id="navHeading"></div>--}%
%{--<a href="javascript:void(0);">--}%
%{--<span style="" id="showHideBtn">--}%
%{--<i class="fa fa-angle-left navToggleBtn"></i>--}%
%{--</span>--}%
%{--</a>--}%
%{--<ul>--}%
%{--<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.name }}">--}%
%{--<g:if test="${c.name != "Dbdoc" && c.name != "Login" && c.name != "Logout" && c.name != "Assets"}">--}%
%{--<li style="padding:3px;margin-left: 5px">--}%
%{--<g:link class="unameLink" style="padding:5px;"--}%
%{--controller="${c.logicalPropertyName}">${c.name}</g:link>--}%
%{--</li>--}%
%{--</g:if>--}%
%{--</g:each>--}%
%{--</ul>--}%
%{--</div>--}%
%{--</g:if>--}%
%{--<div class="panel panel-default rightPane" id="rightPane">--}%
%{--<g:if test="${flash.message}">--}%%{--this block is non-ajax--}%
%{--<div class="growlBox" id="growlBox">--}%
%{--<div class="message" role="status">${flash.message}</div>--}%
%{--</div>--}%
%{--</g:if>--}%%{--this whole block is non-ajax--}%
%{--<div class="growlBox" id="growlBox1">--}%%{--call this block after ajax request--}%
%{--<div class="message" role="status" id="message"></div>--}%
%{--</div>--}%
%{--<g:layoutBody/>--}%%{--This whole block--}%
%{--</div>--}%
%{--</div>--}%

%{--<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&help;"/></div>--}%


%{--<div class="popupBg" id="popupBg">--}%
%{--<div class="panel panel-info popupContainer" id="popContainer">--}%
%{--<div class="panel-heading" style="height: 37px;">--}%
%{--<h4 class="panel-title" id="heading" style="float:left">Role Transfer</h4>--}%
%{--<span id="formClose">--}%
%{--<a href="javascript:void(0);">--}%
%{--<i class="fa fa-times" style="font-size: 18px;" title="Close" alt="Close"></i>--}%
%{--</a>--}%
%{--</span>--}%
%{--</div>--}%

%{--<div class="panel-body" id="panelBody"></div>--}%

%{--<div id="loading" class="loading">--}%
%{--<img src="${resource(asset: "images", file: "loading.gif")}" height="31" width="31"/>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%

    <div class="popupBackground" id="popupBackground"></div>

<!--download panel start-->
    <div class="panel panel-default chooseFormatPanel" id="downloadOptions">
        <div class="panel-heading">Choose A File Format:
            <a href="javascript:void(0);" id="hideDownloadOption">
                <i class="fa fa-close"></i>
            </a>
        </div>

        <div class="panel-body" style="padding: 0px;">
            <div class="printIconsWrap">
                <a href="#" class="printIcons" alt="XLS Format" title="XLS Format">
                    <i class="fa fa-file-excel-o"></i>
                </a>
            </div>

            <div class="printIconsWrap">
                <a href="#" class="printIcons" alt="PDF Format" title="PDF Format">
                    <i class="fa fa-file-pdf-o"></i>
                </a>
            </div>

            <div class="printIconsWrap">
                <a href="#" class="printIcons" alt="Word Format" title="Word Format">
                    <i class="fa fa-file-word-o"></i>
                </a>
            </div>
        </div>
    </div>
    <!--download panel end-->

<!--sidebar start-->
    <div class="panel panel-default sidebar" id="sidebar">
        <div class="panel-heading" style="border-radius: 0px;">Sidebar
            <a href="javascript:void(0);" id="closeSidebar">
                <i class="fa fa-close"></i>
            </a>
        </div>

        <div class="panel-body sidebarList">
            <ul>
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.name }}">
                    <g:if test="${c.name != "Dbdoc" && c.name != "Login" && c.name != "Logout" && c.name != "Assets"}">
                        <li>
                            <g:link controller="${c.logicalPropertyName}">
                                <div>${c.name}</div>
                            </g:link>
                        </li>
                    </g:if>
                </g:each>
            </ul>
        </div>
    </div>
    <!--sidebar end-->
    <div class="content-wrap" id="cont-wrap">
        <div class="col-md-12 table-wrap">

            <g:layoutBody/>

        </div>
    </div>

    <div class="footer" id="footer">Copyright &copy; 2015 Accounting Practice. All Rights Reserved.</div>


%{--<nav class="navbar navbar-default navbarBottomOverride">--}%
%{--<div class="footer">--}%
%{--Copyright &COPY; Accounting Package 2015. All Rights Reserved.--}%
%{--</div>--}%
%{--</nav>--}%
</body>
</html>
