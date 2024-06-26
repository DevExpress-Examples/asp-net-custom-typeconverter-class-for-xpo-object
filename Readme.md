<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128540757/15.1.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2210)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# ASP.NET Web Forms - How to implement a custom TypeConverter class for an XPO object

The [ASPxGridView](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxGridView) control caches object properties used in data-binding expressions. If you bind a grid to an XPO or custom objects that use a referenced association, the control tries to cache references too. Since the caching operation is similar to the `ToString` method and is performed smoothly, the object restoration from cache (from `String` to object) can be raised with the following exception: _TypeConverter cannot convert from System.String_.

This example demonstrates how to implement a custom **TypeConverter** class that can convert data from `String` to `object` type correctly.

## Files to Review

* [ChildObject.cs](./CS/WebSite/App_Code/ChildObject.cs)
* [ParentObject.cs](./CS/WebSite/App_Code/ParentObject.cs)
* [Default.aspx](./CS/WebSite/Default.aspx)
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs)
* [Global.asax](./CS/WebSite/Global.asax)

## Documentation

* [How to: Implement a Type Converter](https://learn.microsoft.com/en-us/previous-versions/ayybcxe5(v=vs.140))
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-custom-typeconverter-class-for-xpo-object&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-custom-typeconverter-class-for-xpo-object&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
