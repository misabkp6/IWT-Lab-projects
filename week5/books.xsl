<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Books List</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin: 20px 0;
                    }
                    th, td {
                        padding: 10px;
                        border: 1px solid #ddd;
                        text-align: left;
                    }
                    th {
                        background-color: #f4f4f4;
                        font-weight: bold;
                    }
                    td.title {
                        background-color: lightgreen;
                    }
                    td.author {
                        background-color: lightblue;
                    }
                    td.isbn {
                        background-color: lightcoral;
                    }
                    td.publisher {
                        background-color: lightgoldenrodyellow;
                    }
                    td.edition {
                        background-color: lightpink;
                    }
                    td.price {
                        background-color: lightseagreen;
                    }
                </style>
            </head>
            <body>
                <h2>Books Information</h2>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>ISBN</th>
                        <th>Publisher</th>
                        <th>Edition</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="books/book">
                        <tr>
                            <td class="title"><xsl:value-of select="title"/></td>
                            <td class="author"><xsl:value-of select="author"/></td>
                            <td class="isbn"><xsl:value-of select="isbn"/></td>
                            <td class="publisher"><xsl:value-of select="publisher"/></td>
                            <td class="edition"><xsl:value-of select="edition"/></td>
                            <td class="price"><xsl:value-of select="price"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
