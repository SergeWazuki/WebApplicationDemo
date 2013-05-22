<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HTML5&CSS3 Demo</title>
    <style>
        header, section, footer, aside, nav, article, figure
        {
            display: block;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <aside id="sidebar">
        <h1>Search</h1>
        <section style="border: 5px solid;">
            This is search section
        </section>
    </aside>
    <section>This is content section</section>
    </div>
    </form>
</body>
</html>
