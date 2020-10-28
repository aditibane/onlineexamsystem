﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ExamAttempt.aspx.vb" Inherits="ExamAttempt" %>

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
        {            color: #006600;
        }
        .style4
        {
            height: 26px;
            font-size: x-small;
            text-align: left;
            width: 172px;
        }
        .style5
        {
            font-size: x-small;
            text-align: left;
            }
        .style6
        {
            height: 341px;
        }
        .style7
        {
            font-size: x-small;
            text-align: left;
            width: 187px;
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
						<td align="left" valign="top" style="padding-left: 1px; padding-right: 4px" 
                            width="59%" class="style6">
						    <table class="style2">
                                <tr>
                                    <td class="style3" colspan="4">
                                        Exam Attempt Page</td>
                                </tr>
                                <tr>
                                    <td class="style4" colspan="2">
                                        Username</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="txtkaushalyaid" runat="server" Enabled="False"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5" colspan="2">
                                        Question_ID</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="txtqid" runat="server" Enabled="False">1</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5" colspan="2">
                                        Question</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="txtquestion" runat="server" Enabled="False"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5" colspan="2">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style5" colspan="2">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style5" colspan="2">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style5" colspan="2">
                                        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                                            GroupName="R" />
                                    </td>
                                    <td colspan="2">
                                        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                                            GroupName="R" style="font-size: x-small" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5" colspan="2">
                                        <asp:TextBox ID="txtselected" runat="server" Visible="False"></asp:TextBox>
                                    </td>
                                    <td colspan="2">
                                        <asp:TextBox ID="txtansdatabase" runat="server" Visible="False"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5" colspan="2">
                                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="R" />
                                    </td>
                                    <td colspan="2">
                                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="R" 
                                            style="font-size: x-small" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5" colspan="2">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style5" colspan="2">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        <asp:Button ID="Button2" runat="server" Text="Previous" />
                                    </td>
                                    <td class="style7" colspan="2">
                                        <asp:Button ID="Button3" runat="server" style="height: 26px" 
                                            Text="Save Answer" />
                                    </td>
                                    <td class="style5">
                                        <asp:Button ID="Button1" runat="server" Text="Next" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        &nbsp;</td>
                                    <td class="style7" colspan="2">
                                        <asp:Button ID="Button4" runat="server" Text="View Result and End Exam" />
                                    </td>
                                    <td class="style5">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
						<td align="left" valign="top" width="39%" class="style6">
						    </td>
					</tr>
					</table>
				<div align="center">
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