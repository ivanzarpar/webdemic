<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <link rel="stylesheet" type="text/css" href="main.css" media="screen" />
      <title>SEO</title>
    </head>
    <body>
      <xsl:value-of select="//seo/introduction/description"/>
      <img>
        <xsl:attribute name="src">
          <xsl:value-of select="//keyWords/image" />
        </xsl:attribute>
      </img>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
