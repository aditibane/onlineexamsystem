<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="Content-Language" content="en-us">
    <title>Vidyalankar - Online Registration</title>
    <link href="style/Style1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-weight: bold;
            font-size: large;
            color: #FFFFFF;
            text-align: center;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
        }
        .style4
        {
            height: 26px;
            font-size: x-small;
            text-align: left;
        }
        .style5
        {
            font-size: x-small;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div align="center">
    	<table border="1" width="800" cellspacing="0" cellpadding="0" style="border-collapse: collapse" id="table3" bordercolor="#434367">
			<tr>
				<td align="left" valign="top">
		<table border="0" width="800" cellspacing="0" id="table4" height="548">
			<tr>
				<td background="images/header_background.gif" height="133" align="left" valign="top" width="796" colspan="2">
				<div align="left">
					<table border="0" width="796" id="table5" cellspacing="0">
						<tr>
							<td width="311" rowspan="5" colspan="2" align="left" valign="top">
							<img border="0" src="images/logo1.gif" width="306" height="82"></td>
							<td width="30">&nbsp;</td>
							<td style="width: 417px">&nbsp;</td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="30">&nbsp;</td>
							<td style="width: 417px">
							<p align="right">
                                <font color="#FFFFFF"><%=Now() %></font></td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="30">&nbsp;</td>
							<td style="width: 417px" class="style1">Vidyalankar Exam System</td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" >&nbsp;</td>
							<td valign="top" style="text-align: right">
                                &nbsp; </td>
							<td width="17" >&nbsp;</td>
						</tr>
						<tr>
							<td width="30" style="height: 15px">&nbsp;</td>
							<td style="width: 417px; height: 15px;">&nbsp;</td>
							<td width="17" style="height: 15px">&nbsp;</td>
						</tr>
						<tr>
							<td width="22" style="height: 15px">&nbsp;</td>
							<td width="289" align="left" style="height: 15px">&nbsp;</td>
							<td width="30" style="height: 15px">&nbsp;</td>
							<td style="width: 417px; height: 15px;">&nbsp;</td>
							<td width="17" style="height: 15px">&nbsp;</td>
						</tr>
						<tr>
							<td width="22">&nbsp;</td>
							<td width="289" align="left">&nbsp;</td>
							<td width="30">&nbsp;</td>
							<td style="width: 417px">&nbsp;</td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="22">&nbsp;</td>
							<td width="289" align="left"><a href="home.aspx">
							Home</a> | <a href="registration.aspx">Registration</a> 
							| <a href="starttest.aspx">Test</a>&nbsp; |&nbsp;
							<a href="login.aspx">Student Login</a></td>
							<td width="30">&nbsp;</td>
							<td style="width: 417px">
                                <p align="right"><a href="faq.asp">FAQ's</a> |&nbsp;
								<a href="contact.asp">Contact Us</a></td>
							<td width="17">&nbsp;</td>
						</tr>
					</table>
				</div>
				</td>
			</tr>
			<tr>
				<td width="135" align="left" valign="top" rowspan="2" style="border-left-width: 1px; border-top-width: 1px; border-bottom-width: 1px">
				<img border="0" src="images/admin_s.gif" width="150" height="500"></td>
				<td  align="left" valign="top" height="396" style=" padding-left:5pt; padding-top :5pt;"> 
				
				 
				
				 <table border="0" width="100%" cellspacing="1" id="table6">
					<tr>
						<td align="left" valign="top" style="padding-left: 1px; padding-right: 4px" width="59%">
						    <table class="style2">
                                <tr>
                                    <td class="style3" colspan="2">
                                        Login Page</td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        Username</td>
                                    <td>
                                        <asp:TextBox ID="txtkaushalyaid" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" Text="Generate OTP" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        Generated OTP</td>
                                    <td>
                                        <asp:TextBox ID="txtotp" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Password</td>
                                    <td>
                                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
						<td align="left" valign="top" width="39%">
						    &nbsp;</td>
					</tr>
					</table>
				<div align="center">
                    <asp:Button ID="Button1" runat="server" Text="Login" />
                    &nbsp;<br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </div>
				
				</td>
			</tr>
			<tr>
				<td width="661" height="19" align="left" valign="top" style="border-left-width: 1px; border-right-width: 1px; border-top-style: solid; border-top-width: 1px">
				<p align="center"> 
				 © 2016-2017, Vidyalankar Online Registration</td>
			</tr>
			</table>
				</td>
			</tr>
		</table>
	</div>
    
    </div>
    </form>
</body>
</html>