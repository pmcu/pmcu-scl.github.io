<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <style>
      table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 70%;
      }
      th, td {
  padding: 10px;
}
img{
width:70%;

}
a:link{
text-decoration:none;
}
    </style>
<body>
<img src="../pic/IrisLeabhar-iii.jpg" alt="IG" ></img>
<h2>Irisleabhar na Gaeilge - IM3 - Scéalta</h2>

<table border="1">
  <tr bgcolor="#9acd32">
<th>ID</th>
    <th>Ainm</th>
    <th>Scéal</th>

</tr>
<xsl:for-each select="daoine/duine">
  <tr>
    <td>
<xsl:value-of select="@id"/>
</td>
<td><xsl:value-of select="ainm"/></td>
<td><xsl:value-of select="scl"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
