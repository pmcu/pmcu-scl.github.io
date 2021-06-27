<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <head>
    <link rel="stylesheet" type="text/css" href="/style/xsl-style.css" />

    </head>
    <nav>
<a href="index.html"> Baile </a>
<hr />
</nav>
  <h2>Corcaí</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Ainm</th>
      <th>Ceantar</th>
    </tr>
    <xsl:for-each select="cnuas/scl[ceantar='Corcaí']">
    <tr>
      <td><xsl:value-of select="ainm"/></td>
      <td><xsl:value-of select="ceantar"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 
