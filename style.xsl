<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
      </head>
      <body>
        <h1>Hello world</h1>
        <table border="1">
        <xsl:for-each select="root/user[@name='A']">
          <tr>
            <th><xsl:value-of select="concat(firstName, '++..++ OK OK ++..++', lastName)"/></th>
            <th><xsl:value-of select="lastName"/></th>
            <th><xsl:value-of select="address"/></th>
            <th><xsl:value-of select="price - 1"/></th>
          </tr>
        </xsl:for-each>
        <tr>
          <td colspan="4">
            The sum is: 
            <xsl:value-of select="sum(root/user/price)"/>
          </td>
        </tr>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
