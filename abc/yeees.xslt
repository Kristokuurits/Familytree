<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/journal">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Family Tree of the British Royal Family</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 10px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                    h1 {
                        text-align: center;
                    }
                </style>
            </head>
            <body>
                <h1>Family Tree of the British Royal Family</h1>
                <h1>TARpe22</h1>

                <table>
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Birth Year</th>
                            <th>Death Year</th>
                            <th>Title</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="Person">
                            <tr>
                                <td><xsl:value-of select="FirstName"/></td>
                                <td><xsl:value-of select="Lastname"/></td>
                                <td><xsl:value-of select="BirthYear"/></td>
                                <td><xsl:value-of select="DeathYear"/></td>
                                <td><xsl:value-of select="Title"/></td>
                                <td><xsl:value-of select="Info"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>