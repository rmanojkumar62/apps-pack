<%@ Page Language="C#" MasterPageFile="~masterurl/default.master" Inherits="Monsanto.AdvanceRequest.Workflow.AdvanceRequestForm,Monsanto.AdvanceRequest.Workflow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=9ee8f69808007fae" %>

<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls"
    Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages"
    Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="OSRVWC" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.Server, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SPSWC" Namespace="Microsoft.SharePoint.Portal.WebControls"
    Assembly="Microsoft.SharePoint.Portal, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SEARCHWC" Namespace="Microsoft.Office.Server.Search.WebControls"
    Assembly="Microsoft.Office.Server.Search, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls"
    Assembly="Microsoft.SharePoint.Publishing, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
    <sharepoint:listproperty id="ListProperty1" property="Title" runat="server"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea"
    runat="server">
	New Advance Request
    <sharepoint:listproperty id="ListProperty2" property="Title" runat="server"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
	<sharepoint:rsslink id="RssLink1" runat="server"/>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PlaceHolderSearchArea" runat="server">
	<sharepoint:delegatecontrol id="DelegateControl1" runat="server" controlid="SmallSearchInputBox"/>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PlaceHolderPageImage" runat="server">
	<sharepoint:viewicon width="145" height="54" runat="server"/>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="PlaceHolderLeftActions" runat="server">
	<sharepoint:modifysettingslink id="ModifySettingsLink1" runat="server"/>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="PlaceHolderBodyLeftBorder" runat="server">
	<div height="100%" class="ms-pagemargin">
        <img src="/_layouts/images/blank.gif" width="6" height="1" alt=""></div>
</asp:Content>
<asp:Content ID="ContentMain" ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <script language="javascript" type="text/javascript" src="Calender.js"></script>

    <%-- Start of your control code --%><table width="100%">
        <tr width="100%">
            <td colspan="4">
                <asp:Label ID="lblError" runat="server" Font-Bold="true" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:Panel ID="pnlBody" runat="server">
    <table width="100%" >
        <tr width="100%">
            <td colspan="4">
                <asp:ValidationSummary ID="valSummary" runat="server" ShowSummary="true" HeaderText="Please correct following errors"/>
            </td>
        </tr>
        <tr width="100%">
            <td colspan="4">
                <asp:Label ID="Label2" runat="server" Font-Size="XX-Small" ForeColor="Red" Text="All * marked fields are mandatory"></asp:Label>
            </td>
        </tr>
        <tr width="100%">
            <td class="ms-formlabel" valign="top">
                <asp:Label ID="lblRequestorName" runat="server" Text="Requestor Name"></asp:Label>
            </td>
            <td class="ms-formbody">
                <asp:TextBox ID="txtRequestorName" runat="server" ReadOnly="true"></asp:TextBox>
            </td>
            <td class="ms-formlabel" valign="top">
                <asp:Label ID="lblDepartment" runat="server" Text="Department"></asp:Label>
            </td>
            <td class="ms-formbody">
                <asp:TextBox ID="txtDepartment" runat="server" ReadOnly="true"></asp:TextBox>
            </td>
        </tr>
        <tr width="100%">
            <td class="ms-formlabel" valign="top">
                <asp:Label ID="lblCompanyCode" runat="server" Text="Company Code"></asp:Label>
                <asp:Label ID="rqNotice1" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="ms-formbody">
                <%--<asp:TextBox ID="txtCompanyCode" runat="server" Width="100%" __designer:Preview="&lt;input name=&quot;txtCompanyCode&quot; type=&quot;text&quot; id=&quot;txtCompanyCode&quot; style=&quot;width:100%;&quot; /&gt;" __designer:Values="&lt;P N='ID' ID='1' T='txtCompanyCode' /&gt;&lt;P N='ControlStyle'&gt;&lt;P N='Font' ID='2' /&gt;&lt;P N='IsEmpty' T='False' /&gt;&lt;P N='Width' T='100%' /&gt;&lt;/P&gt;&lt;P N='Font' R='2' /&gt;&lt;P N='Width' T='100%' /&gt;&lt;P N='Page' ID='3' /&gt;&lt;P N='TemplateControl' R='3' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;"></asp:TextBox>--%><asp:DropDownList  ID="ddlCompanyCode" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RQCompanyCode" runat="server" ErrorMessage="Company code required"
                    ControlToValidate="ddlCompanyCode" InitialValue="-1"></asp:RequiredFieldValidator>
            </td>
            <td class="ms-formlabel" valign="top">
                <asp:Label ID="lblAdvanceType" runat="server" Text="Advance Type"></asp:Label>
                <asp:Label ID="rqNotice2" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="ms-formbody">
                <asp:DropDownList ID="ddlAdvanceType" runat="server" AutoPostBack="true">
                    <asp:ListItem Text="-Select-" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Employee Advance" Value="EA"></asp:ListItem>
                    <asp:ListItem Text="Vendor Advance" Value="VA"></asp:ListItem>                  
                    <asp:ListItem Text="MST" Value="MST"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RQFAdvanceType" runat="server" ControlToValidate="ddlAdvanceType"
                    ErrorMessage="Select an advance type" InitialValue="-1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <asp:Panel ID="pnlForEmployee" runat="server" Width="100%" Visible="false">
            <tr width="100%" valign="top">
                <td class="ms-formlabel">
                    <asp:Label ID="lblEmployeeFCPA" runat="server" Text="Declaration for FCPA"></asp:Label>
                </td>
                <td class="ms-formbody">
                    <asp:TextBox ID="txtEmpFCPA" runat="server" TextMode="MultiLine" ReadOnly="true"
                        Rows="5" Columns="25"></asp:TextBox>
                    <input type="checkbox" runat="server" id="chkEmpFCPANote" onclick="javascript:EnableSubmit(this)">I
					Agree</input>
                    <%-- <asp:CheckBox ID="chkEmpFCPA" runat="server" AutoPostBack="false" Text="Yes" />--%></td>
                <td class="ms-formlabel" valign="top">
                    <asp:Label ID="lblEmployeeType" runat="server" Text="Imprest Type"></asp:Label>
                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="ms-formbody">
                    <asp:DropDownList ID="ddlEmployeeType" runat="server" AutoPostBack="true">
                        <asp:ListItem Text="-Select-" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Temporary Imprest" Value="TE"></asp:ListItem>
                        <asp:ListItem Text="Permanent Imprest" Value="PE"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RQEmpSubType" runat="server" ControlToValidate="ddlEmployeeType"
                        ErrorMessage="Select an imprest type" InitialValue="-1"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </asp:Panel>
         <asp:Panel ID="pnlForMST" runat="server" Width="100%" Visible="false">
            <tr width="100%" valign="top">
                <td class="ms-formlabel">
                    <asp:Label ID="lblMSTFCPA" runat="server" Text="Declaration for FCPA"></asp:Label>
                </td>
                <td class="ms-formbody">
                    <asp:TextBox ID="txtMSTFCPA" runat="server" TextMode="MultiLine" ReadOnly="true"
                        Rows="5" Columns="25"></asp:TextBox>
                    <input type="checkbox" runat="server" id="chkMSTFCPANote" onclick="javascript:EnableSubmit(this)">I
					Agree</input>
                    <%-- <asp:CheckBox ID="chkEmpFCPA" runat="server" AutoPostBack="false" Text="Yes" />--%></td>
                <td class="ms-formlabel" valign="top">
                   <%-- <asp:Label ID="lblMSTVendorCode" runat="server" Text="Vendor Code"></asp:Label>
                    <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>--%>&nbsp;
                </td>
                <td class="ms-formbody">
                   <%-- <asp:TextBox ID="txtMSTVendorCode" runat="server" MaxLength="6" onkeypress="fncInputNumericValuesOnly()"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RQMSTVendor" runat="server" ControlToValidate="txtMSTVendorCode"
                        ErrorMessage="Vendor code is required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REMSTVendorCode" runat="server" ControlToValidate="txtMSTVendorCode"
                        ErrorMessage="Vendor code should be 6 digit number" ValidationExpression="[0-9]{6,}"></asp:RegularExpressionValidator>--%>&nbsp;
                </td>
            </tr>
        </asp:Panel>
        <asp:Panel ID="pnlMSTVendorCode" runat="server" Width="100%" Visible="false">
        <tr>
         <td class="ms-formlabel" valign="top">
                   <asp:Label ID="lblMSTVendorCode" runat="server" Text="Vendor Code"></asp:Label>
                    <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="ms-formbody">
                   <asp:TextBox ID="txtMSTVendorCode" runat="server" MaxLength="6" onkeypress="fncInputNumericValuesOnly()"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RQMSTVendor" runat="server" ControlToValidate="txtMSTVendorCode"
                        ErrorMessage="Vendor code is required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REMSTVendorCode" runat="server" ControlToValidate="txtMSTVendorCode"
                        ErrorMessage="Vendor code should be 6 digit number" ValidationExpression="[0-9]{6,}"></asp:RegularExpressionValidator>
                </td>
                <td> &nbsp;</td>
                <td> &nbsp;</td>
        </tr>
        </asp:Panel>
        <asp:Panel ID="pnlForVendor" runat="server" Width="100%" Visible="false">
            <tr width="100%">
                <td class="ms-formlabel" valign="top">
                    <asp:Label ID="lblDeclarationFCPA" runat="server" Text="Declaration for FCPA"></asp:Label>
                    <asp:Label ID="lable10" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <br /><br/><br />
                    <br /><br/>
<br /><br/>

                    <asp:Label ID="lblFCPADoc" runat="server" Text="FCPA Document"></asp:Label>
                   
                </td>
                <td class="ms-formbody">
                    <asp:DropDownList ID="ddlFCPA" runat="server" AutoPostBack="true">
                        <asp:ListItem Text="-Select" Value="-1" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="FCPA required" Value="FCPAR"></asp:ListItem>
                        <asp:ListItem Text="FCPA not required" Value="FCPANR"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RQVendorFCPA" runat="server" ControlToValidate="ddlFCPA"
                        ErrorMessage="Select FCPA type" InitialValue="-1"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtVendorFCPA" runat="server" TextMode="MultiLine" ReadOnly="true"
                        Rows="5" Columns="25"></asp:TextBox>
                    <input type="checkbox" runat="server" id="chkFCPAAgreement" onclick="javascript:EnableSubmit(this)">I Agree</input><br />
                    <asp:Panel id="pnlfcpaFile" runat="server" Visible="false">
                    <asp:FileUpload ID="fcpaUpload" runat="server" />
                    <asp:RequiredFieldValidator ID="RQVendorFCPAFileLoad" runat="server" ControlToValidate="fcpaUpload"
                        ErrorMessage="Upload FCPA approval file"></asp:RequiredFieldValidator>
                        </asp:Panel>
                    </td>
                <td class="ms-formlabel" valign="top">
                    <asp:Label ID="lblVendorCode" runat="server" Text="Vendor Code"></asp:Label>
                    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="ms-formbody">
                    <asp:TextBox ID="txtVendorCode" runat="server" MaxLength="6" onkeypress="fncInputNumericValuesOnly()"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RQVendor" runat="server" ControlToValidate="txtVendorCode"
                        ErrorMessage="Vendor code is required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REVendorCode" runat="server" ControlToValidate="txtVendorCode"
                        ErrorMessage="Vendor code should be 6 digit number" ValidationExpression="[0-9]{6,}"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </asp:Panel>
        <asp:Panel ID="pnlForTravel" runat="server" Width="100%" Visible="false">
            <tr width="100%" valign="top">
                <td class="ms-formlabel">
                    <asp:Label ID="Label1" runat="server" Text="Declaration for FCPA"></asp:Label>
                </td>
                <td class="ms-formbody">
                    <asp:TextBox ID="txtTravelFCPA" runat="server" TextMode="MultiLine" ReadOnly="true"
                        Rows="5" Columns="25"></asp:TextBox>
                    <input type="checkbox" runat="server" id="chkTravelFCPA" onclick="javascript:EnableSubmit(this)">I Agree</input>
                    <%--<asp:CheckBox ID="chkFCPA" runat="server" AutoPostBack="false" Text="Yes" />--%></td>
            </tr>
        </asp:Panel>
        <tr>
            <td class="ms-formlabel" valign="top">
                <asp:Label ID="lblAmount" runat="server" Text="Amount"></asp:Label>
                <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="ms-formbody">
                <asp:DropDownList ID="ddlCurrency" runat="server" AutoPostBack="false">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="*"
                    ErrorMessage="Currency type is required" ControlToValidate="ddlCurrency" InitialValue="-1"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Value required"
                    ErrorMessage="Amount is required" ControlToValidate="txtAmount"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAmount"
                    ErrorMessage="Incorrect amount format" ValidationExpression="\d+(\.\d{1,2})?"></asp:RegularExpressionValidator>
            </td>
            <td class="ms-formlabel" valign="top">
                <asp:Label ID="lblRequestDate" runat="server" Text="Request Date"></asp:Label>
            </td>
            <td class="ms-formbody">
                <asp:TextBox ID="txtRequestDate" runat="server" Enabled="false"></asp:TextBox>
            </td>
        </tr>
        <tr width="100%">
            <td class="ms-formlabel" valign="top">
                <asp:Label ID="lblType" runat="server" Text="Type"></asp:Label>
                <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="ms-formbody">
                <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="false">
                    <asp:ListItem Text="-Select-" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Manual Check" Value="MC"></asp:ListItem>
                    <asp:ListItem Text="EDI" Value="EDI"></asp:ListItem>
                       <asp:ListItem Text="TAX" Value="TAX"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RType" runat="server" ControlToValidate="ddlType"
                    ErrorMessage="Payment type is required" InitialValue="-1"></asp:RequiredFieldValidator>
            </td>
            <asp:Panel ID="pnlDueDate" runat="server">
                <td class="ms-formlabel" valign="top">
                    <asp:Label ID="lblDueDate" runat="server" Text="Recovery Date"></asp:Label>
                     <asp:Label ID="lblDueRq" runat="server" ForeColor="Red" Text="*"></asp:Label>

                </td>
                <td class="ms-formbody">
                    <input type="text" runat="server" id="txtDDAte" readonly="readonly" />
                    <%--<asp:TextBox ID="txtDueDate" runat="server"></asp:TextBox>--%><input type="button"
                        id="Button1" runat="server" Class="ms-HoverCellActiveDark" onclick="scwShow(this,event,'txtDDAte',90);" value=".." />
                    <asp:RequiredFieldValidator ID="rqDue" runat="server" ControlToValidate="txtDDAte"
                        ErrorMessage="Due date is required"></asp:RequiredFieldValidator>
                </td>
            </asp:Panel>
            <asp:Panel ID="pnlTravelDueDate" runat="server">
                <td class="ms-formlabel"  valign="top">
                    <asp:Label ID="lblTravelDueDate" runat="server" Text="Recovery Date"></asp:Label>
                     <asp:Label ID="lblDueDateTravelRQ" runat="server" ForeColor="Red" Text="*"></asp:Label>

                </td>
                <td class="ms-formbody">
                    <input type="text" runat="server" id="txtTravelDueDate" readonly="readonly" />
                    <%--<asp:TextBox ID="txtDueDate" runat="server"></asp:TextBox>--%><input type="button"
                        id="Button2" runat="server" Class="ms-HoverCellActiveDark" onclick="scwShow(this,event,'txtTravelDueDate',30);"
                        value=".." />
                    <asp:RequiredFieldValidator ID="rqDueDate" runat="server" ControlToValidate="txtTravelDueDate"
                        ErrorMessage="Recovery date is required"></asp:RequiredFieldValidator>
                </td>
            </asp:Panel>
            <asp:Panel ID="pnlExpectedDate" runat="server">
                <td class="ms-formlabel"  valign="top">
                    <asp:Label ID="lblRequiredDate" runat="server" Text="Advance Required Date"></asp:Label>
                </td>
                <td class="ms-formbody">
                    <asp:TextBox ID="txtExpectedDate" runat="server" ReadOnly="true"></asp:TextBox>
                    <input type="button" id="btnCalender" Class="ms-HoverCellActiveDark" runat="server" onclick="scwShow(this,event,'txtExpectedDate',900);"
                        value=".." />
                </td>
            </asp:Panel>
        </tr>
        <tr>
            <asp:Panel ID="pnlEmployeeCode" runat="server" Visible="false">
                <td class="ms-formlabel" valign="top">
                    <asp:Label ID="lblEmployeeCode" runat="server" Text="Employee Code"></asp:Label>
                </td>
                <td class="ms-formbody">
                    <asp:TextBox ID="txtEmployeeCode" runat="server" MaxLength="8" ReadOnly="true"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmployeeCode"
                        ErrorMessage="Employee code should be 8 charecter alpha numeric value" ValidationExpression="[0-9a-zA-Z]{8,}"></asp:RegularExpressionValidator>
                </td>
            </asp:Panel>
            <asp:Panel ID="pnlAdvanceTaken" runat="server" Visible="false">
                <td class="ms-formlabel" valign="top">
                    <asp:Label ID="lblAdvanceTaken" runat="server" Text="Opening Balance"></asp:Label>
                    <asp:Label ID="lblStarAdvanceTaken" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="ms-formbody">
                    <asp:Label ID="Label8" runat="server" Text="INR"></asp:Label>
                    <asp:TextBox ID="txtAdvanceTaken" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqAdvanceTaken" runat="server" ControlToValidate="txtAdvanceTaken"
                        ErrorMessage="Value is required"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtAdvanceTaken"
                    ErrorMessage="Incorrect amount format" ValidationExpression="\d+(\.\d{1,2})?"></asp:RegularExpressionValidator>
                </td>
            </asp:Panel>
        </tr>
        <tr width="100%">
            <td class="ms-formlabel" valign="top">
                <asp:Label ID="lblReason" runat="server" Text="Reason"></asp:Label>
                <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="ms-formbody">
                <asp:TextBox ID="txtReason" runat="server" TextMode="MultiLine" Rows="10" Columns="25"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Reason is required"
                    ControlToValidate="txtReason"></asp:RequiredFieldValidator>
            </td>
            <asp:Panel ID="pnlDescription" runat="server">
                <td class="ms-formlabel" valign="top">
                    <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
                </td>
                <td class="ms-formbody">
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="10" Columns="25"></asp:TextBox>
                </td>
            </asp:Panel>
        </tr>
        <tr>
            <td class="ms-formlabel" valign="top">
                <asp:Label ID="lblApprover" runat="server" Text="Approver Name"></asp:Label>
            </td>
            <td class="ms-formbody">
                <asp:TextBox ID="txtApprover" runat="server" ReadOnly="true"></asp:TextBox>
            </td>
            <asp:Panel ID="pnlReference" runat="server">
                <td class="ms-formlabel" valign="top">
                    <asp:Label ID="lblReference" runat="server" Text="Reference (PO/Invoice)"></asp:Label>
                </td>
                <td class="ms-formbody">
                    <asp:TextBox ID="txtReference" runat="server"></asp:TextBox>
                </td>
            </asp:Panel>
        </tr>
        <asp:Panel ID="pnlApprovalDoc" runat="server">
            <tr>
                <td class="ms-formlabel" valign="top">
                    <asp:Label ID="lblApprovalDoc" runat="server" Text="Approval Document"></asp:Label>
                    <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="ms-formbody">
                    <asp:FileUpload ID="approvalDoc" runat="server" />
                    <asp:RequiredFieldValidator ID="RQVendorAppFileLoad" runat="server" ControlToValidate="approvalDoc"
                        ErrorMessage="Upload vendor advance approval document"></asp:RequiredFieldValidator>
                </td>
                <td class="ms-formlabel" valign="top"></td>
 <td class="ms-formbody"></td>

            </tr>
        </asp:Panel>
        <tr>
            <td colspan="4" align="center">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="ms-buttonactivehover" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="ms-buttonactivehover"
                    CausesValidation="false" />
            </td>
        </tr>
    </table>
    </asp:Panel>
</asp:Content>
