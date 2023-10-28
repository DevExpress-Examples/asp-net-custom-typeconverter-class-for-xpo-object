<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Xpo.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to implement a custom TypeConverter class for an XPO object</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="xds" KeyFieldName="Oid">
            <Columns>
                <dx:GridViewCommandColumn ShowEditButton="True"/>
                <dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" />
                <dx:GridViewDataTextColumn FieldName="Child!Key" />
                <dx:GridViewDataTextColumn FieldName="Child!.ChildName" />
                <dx:GridViewDataTextColumn FieldName="Name" />
            </Columns>
            <Templates>
                <EditForm>
                    <table>
                        <tr>
                            <td>
                                Child Name:
                            </td>
                            <td>
                                <%# Eval("Child!.ChildName") %>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Name:
                            </td>
                            <td>
                                <dx:ASPxTextBox ID="name" runat="server" Value='<%# Bind("Name") %>' Width="170px" />
                            </td>
                        </tr>
                    </table>
                    <dx:ASPxGridViewTemplateReplacement ID="update" ReplacementType="EditFormUpdateButton" runat="server" />
                    <dx:ASPxGridViewTemplateReplacement ID="cancel" ReplacementType="EditFormCancelButton" runat="server" />
                </EditForm>
            </Templates>
        </dx:ASPxGridView>
        <dx:XpoDataSource ID="xds" runat="server" TypeName="ParentObject" />
    </div>
    </form>
</body>
</html>
