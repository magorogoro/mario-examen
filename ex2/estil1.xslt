<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Plantes en llista puntejada</title>
      </head>
      <body>
        <ol>
          <xsl:for-each select="garden/planta">
          
            <li>
              <strong><xsl:value-of select="nom"/></strong> 
              <ul>
                <li><xsl:value-of select="especie"/></li>
                <li><xsl:value-of select="color"/></li>
                <li><xsl:value-of select="temps_floracio"/></li>
              </ul>
            </li>
          </xsl:for-each>
        </ol>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
