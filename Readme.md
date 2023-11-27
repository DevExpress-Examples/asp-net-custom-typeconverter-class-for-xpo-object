<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2210)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# ASP.NET Web Forms - How to implement a custom TypeConverter class for an XPO object
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/128540757/)**
<!-- run online end -->

[ASPxGridView](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxGridView) caches object properties used in data-binding expressions. If you use XPO or custom objects that use a referenced association, the ASPxGridView tries to cache references too. Since the caching operation is similar to the `ToString` method and is performed smoothly, the object restoration from cache (from `String` to object) can be raised with the following exception: _TypeConverter cannot convert from System.String_.

This example demonstrates how to implement a custom **TypeConverter** class that can convert from the `String` type correctly.

> [!NOTE]
> It is not recommended to serialize objects often, because serialized objects take much space, and the page size might become big.

## Files to Review

* [ChildObject.cs](./CS/WebSite/App_Code/ChildObject.cs)
* [ParentObject.cs](./CS/WebSite/App_Code/ParentObject.cs)
* [Default.aspx](./CS/WebSite/Default.aspx)
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs)
* [Global.asax](./CS/WebSite/Global.asax)

## Documentation

*[How to: Implement a Type Converter](https://learn.microsoft.com/en-us/previous-versions/ayybcxe5(v=vs.140))
