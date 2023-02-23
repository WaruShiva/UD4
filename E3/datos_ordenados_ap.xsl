<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/clientes">

    <html>
        <body>
            <h2>Datos</h2>

            <table border = "1">
                <tr bgcolor="lightgreen">
                    <th>id</th>
                    <th>nombre</th>
                    <th>telefono</th>
                    <th>ciudad</th>
                </tr>

                    <xsl:for-each select="cliente">
                        <xsl:sort select="nombre"/>
                    <tr>
                        <td><xsl:value-of select="@id"/></td>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="telefono"/></td>
                    <xsl:for-each select="direccion">
                        <td><xsl:value-of select="ciudad"/></td>
                    </xsl:for-each>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>