<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Plantes d'estiu</title>
      </head>
      <body>
        <h1>Plantes que floreixen a l'estiuu:</h1>
        <table>
          <tr>
            <th>Nom</th>
            <th>Especie</th>
            <th>Color</th>
          </tr>
          <xsl:for-each select="garden/planta[temps_floracio='Estiu']">
            <tr>
              <td><xsl:value-of select="nom"/></td>
              <td><xsl:value-of select="especie"/></td>
              <td><xsl:value-of select="color"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
