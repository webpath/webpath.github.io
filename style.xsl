<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
      </head>
      <body>
        <h1>Hello world</h1>
        <table>
        <xsl:for-each select="root/user[@name == 'A']">
          <tr>
            <th><xsl:value-of select="firstName"/></th>
            <th><xsl:value-of select="lastName"/></th>
            <th><xsl:value-of select="address"/></th>
          </tr>
        </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
