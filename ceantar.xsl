<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <script>
    var ceant = window.prompt("Cuir isteach ceantar: ");

    
    </script>
    <head>
    <link rel="stylesheet" type="text/css" href="/style/xsl-style.css" />

    </head>
    <nav>
      <h4><a href="index.html"> Baile </a></h4>
<hr />
</nav>
  <h2>Corcaí</h2>
  <table border="1">
    <tr><td><img src="pic/IrisLeabhar-iii.jpg" alt="IG" ></img></td></tr>
      <tr>
      <th>Ainm</th>
      <th>Ceantar</th>
      <th>Nasc</th>
      
    </tr>
    <xsl:for-each select="cnuas/scl[ceantar="$ceant"]">
    <tr>
      <td><xsl:value-of select="ainm"/></td>
      <td><xsl:value-of select="ceantar"/></td>
    
      <td>
<a><xsl:attribute name="href">
<xsl:value-of select="LINK/@VALUE"/></xsl:attribute>
<xsl:value-of select="LINK"/>
</a>
</td>
 </tr>     
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 
