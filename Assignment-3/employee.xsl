<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Employee Data</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        text-align: center;
                        margin: 0;
                        padding: 0;
                        background-color: #f4f4f4;
                    }
                    h1 {
                        color: #333;
                    }
                    table {
                        width: 80%;
                        margin: auto;
                        border-collapse: collapse;
                        border: 2px solid #ddd;
                        background-color: #fff;
                    }
                    th, td {
                        border: 1px solid #ddd;
                        padding: 10px;
                    }
                    th {
                        background-color: #333;
                        color: #fff;
                        font-size: 20px;
                    }
                    td {
                        font-size: 18px;
                    }
                </style>
            </head>
            <body>
                <h1>Employee's Data</h1>
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Salary</th>
                            <th>Address</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="employees/info">
                            <tr>
                                <td><xsl:value-of select="name"/></td>
                                <td><xsl:value-of select="age"/></td>
                                <td><xsl:value-of select="salary"/></td>
                                <td><xsl:value-of select="address"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
