<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registeration.aspx.vb" Inherits="Registeration" %>

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
            font-size: small;
        }
        .style4
        {
            font-size: x-small;
            text-align: left;
        }
        .style5
        {
            font-size: x-small;
            text-align: left;
            width: 283px;
        }
        .style6
        {
            width: 283px;
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
                                    <td colspan="2">
                                        Registration</td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Kaushalya Id</td>
                                    <td class="style3">
                                        <asp:TextBox ID="txtkaushalyaid" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        &nbsp;</td>
                                    <td class="style3">
                                        <asp:Button ID="Button1" runat="server" Text="Show Details" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Password</td>
                                    <td class="style4">
                                        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Name</td>
                                    <td class="style4">
                                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Address</td>
                                    <td class="style4">
                                        <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Email</td>
                                    <td class="style4">
                                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Institute Code</td>
                                    <td class="style4">
                                        <asp:TextBox ID="txtinstitutecode" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Branch</td>
                                    <td class="style4">
                                        <asp:TextBox ID="txtbranch" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Exam name</td>
                                    <td class="style4">
                                        <asp:DropDownList ID="ddexamname" runat="server">
                                            <asp:ListItem>Pretest</asp:ListItem>
                                            <asp:ListItem>Postest</asp:ListItem>
                                            <asp:ListItem>Maintest</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Month</td>
                                    <td class="style4">
                                        <asp:DropDownList ID="ddmonth" runat="server">
                                            <asp:ListItem>Jan</asp:ListItem>
                                            <asp:ListItem>Feb</asp:ListItem>
                                            <asp:ListItem>Mar</asp:ListItem>
                                            <asp:ListItem>Apr</asp:ListItem>
                                            <asp:ListItem>May</asp:ListItem>
                                            <asp:ListItem>Jun</asp:ListItem>
                                            <asp:ListItem>Jul</asp:ListItem>
                                            <asp:ListItem>Aug</asp:ListItem>
                                            <asp:ListItem>Sep</asp:ListItem>
                                            <asp:ListItem>Oct</asp:ListItem>
                                            <asp:ListItem>Nov</asp:ListItem>
                                            <asp:ListItem>Dec</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Year</td>
                                    <td class="style4">
                                        <asp:DropDownList ID="ddyear" runat="server">
                                            <asp:ListItem>2016</asp:ListItem>
                                            <asp:ListItem>2017</asp:ListItem>
                                            <asp:ListItem>2018</asp:ListItem>
                                            <asp:ListItem>2019</asp:ListItem>
                                            <asp:ListItem>2020</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        <asp:Button ID="Button2" runat="server" Text="Register" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
						<td align="left" valign="top" width="39%">
						    &nbsp;</td>
					</tr>
					</table>
				<div align="center">
                    &nbsp;</div>
				
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
