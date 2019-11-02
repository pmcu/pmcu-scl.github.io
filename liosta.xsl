<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <style>
      body {
          margin: 10%;
          background-image:url("pic/old_moon.png");
      }

     a{
     text-decoration:none;
      }
      table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 60%;
      }
      th, td {
  padding: 10px;
}

img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
#tdl{
text-align:center;
}
#tag{
text-align:left;
}
    </style>
<body>
  <table border="1">
    <tr>
      <td><img src="pic/IrisLeabhar-iii.jpg" alt="IG" ></img></td>
    </tr>
    <ht />
<tr><td id="tdl"><h2>Scéalta as Irisleabhar na Gaeilge</h2></td></tr>
</table>
<table border="1">

  <tr >
    <th>ID</th>
    <th>Ainm</th>
    <th>Ceantar</th>
    <th>Nasc</th>
</tr>
<xsl:for-each select="cnuas/scl">
<tr>
<td>
<xsl:value-of select="@id"/>
</td>
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
<br></br>
<table><tr><td ><img src="/pic/home.png"></img></td><td><a href="index.html">Baile</a></td></tr></table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
