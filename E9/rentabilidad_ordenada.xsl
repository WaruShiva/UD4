<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <body>
            <h2>Datos</h2>
            <table border="1">
                <tr bgcolor="lightgreen">
                    <th>nombre</th>
                    <th>facturacion</th>
                    <th>pedidos</th>
                    <th>rentabilidad</th>
                    <th>ciudad</th>
                </tr>
                <xsl:for-each select="clientes/cliente">
                    <xsl:sort select="number(translate(facturacion, '€', '')) div number(pedidos)" data-type="number" order="descending" />
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="facturacion"/></td>
                        <td><xsl:value-of select="pedidos"/></td>
                        <td><xsl:value-of select="format-number(number(translate(facturacion, '€', '')) div number(pedidos), '###.## €')"/></td>
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
