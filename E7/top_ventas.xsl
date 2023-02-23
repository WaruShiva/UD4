<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/clientes">

    <html>
        <body>
            <h2>Datos</h2>

            <table border = "1">
                <tr bgcolor="lightgreen">
                    <th>nombre</th>
                    <th>facturacion</th>
                    <th>pedidos</th>
                    <th>ciudad</th>
                </tr>

                    <xsl:for-each select="cliente">
                        <xsl:sort select="facturacion" order="descending"/>
                        <xsl:if test="position () &lt;=10">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="facturacion"/></td>
                        <td><xsl:value-of select="pedidos"/></td>
                    <xsl:for-each select="direccion">
                        <td><xsl:value-of select="ciudad"/></td>
                    </xsl:for-each>
                    </tr>
                        </xsl:if>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>