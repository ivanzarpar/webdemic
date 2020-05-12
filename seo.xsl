<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html version="-//W3C//DTD XHTML 1.1//EN"
        xmlns="http://www.w3.org/1999/xhtml" xml:lang="es"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.w3.org/1999/xhtml
                            http://www.w3.org/MarkUp/SCHEMA/xhtml11.xsd">

    <head>
      <meta http-equiv="content-type" content="text/html; charset=utf-8" />
      <link rel="stylesheet" type="text/css" href="styles.css" media="screen" />
      <script type="text/javascript" src="codigo.js">
    </script>
      <title>SEO</title>
    </head>

    <body>
  	<div id="contenedor">
  	  <div id="cabecera">
        <a href="https://www.etwinning.net/" target="_blank"><img id="logo" alt="logo etwinning" style="float:left;" src="./images/etwinning.png"/></a>
        <a class="activo" id="active" href="#">XML</a>
      <!--  <a href="index.html">Home</a>-->

  	  </div>
  	  <div class="header" id="headerCity">
  		    <h1></h1>
  		    <p></p>
  	  </div>

  	  <div id="contenido">
  		  <h1>SEO</h1>
        <h5 style="font-weight:normal; text-align: center; margin-top: -1em; font-style: italic;">Search Engine Optimization</h5>

        Buscar: <input type="text" id="busqueda"/>
        &#160; <input type="button" value="buscar" onclick="buscar();"/>


        <xsl:for-each select="//introductionSeo/item">
          <p> <!--BUSQUE  -->
            <h2><xsl:value-of select="title"/></h2>
            <xsl:choose>
              <xsl:when test="./image">
                <div id="seo" class="containerTextIndex">
                  <div class="boxImage" style="float: right; margin-left: 50px;">
                    <img alt="SEO" title="Search Engine Optimization" style="width:100%;">
                      <xsl:attribute name="src">
                        <xsl:value-of select="./image"/>
                      </xsl:attribute>
                    </img>
                    <!--<div class="container">
                      <p style="margin-bottom: 1em;"><em>Search Engine</em></p>
                    </div>-->
                  </div>
                </div>
              </xsl:when>
            </xsl:choose>
            <div id="seo" class="containerTextIndex" style="margin-bottom: 3em;">
              <p class="texto">
                <xsl:value-of select="texto"/>
              </p>

            </div>

        </p>
      </xsl:for-each>

            <!-- ///////////////////////////////////////  -->

            <p class="texto">
              <h2>Search Engines</h2>
              <xsl:value-of select="//searchEngines/introduction"/>
            </p><!--BUSQUEDA  -->

            <xsl:for-each select="//principalEngines/engine">
              <p>
              <h2><xsl:value-of select="title"/></h2>
              <xsl:choose>
                <xsl:when test="image">
                  <div id="seo" class="containerTextIndex">
                    <div class="boxImage" style="float: right; margin-left: 50px;">
                      <img alt="SEO" title="Search Engine Optimization" style="width:100%;">
                        <xsl:attribute name="src">
                          <xsl:value-of select="image"/>
                        </xsl:attribute>
                      </img>
                      <!--<div class="container">
                        <p style="margin-bottom: 1em;"><em>(Search Engine Optimization)</em></p>
                      </div>-->
                    </div>
                  </div>
                </xsl:when>
              </xsl:choose>
          <div id="seo" class="containerTextIndex" style="margin-bottom: 3em;">
          <p class="texto">
              <xsl:value-of select="texto"/>
          </p>
        </div>

      </p>
        </xsl:for-each>

        <!-- /////////////////////////////////////// -->

        <p class="texto">
          <h2>Optimization</h2>
          <xsl:value-of select="//optimization/introduction"/>
        </p>

        <xsl:for-each select="//optimization/type">
          <p><!--BUSQUEDA  -->
          <h2><xsl:value-of select="title"/></h2>
          <xsl:choose>
            <xsl:when test="image">
              <div id="seo" class="containerTextIndex">
                <div class="boxImage" style="float: right; margin-left: 50px;">
                  <img alt="SEO" title="Search Engine Optimization" style="width:100%;">
                    <xsl:attribute name="src">
                      <xsl:value-of select="image"/>
                    </xsl:attribute>
                  </img>
                  <!--<div class="container">
                    <p style="margin-bottom: 1em;"><em>(Search Engine Optimization)</em></p>
                  </div>-->
                </div>
              </div>
            </xsl:when>
          </xsl:choose>
            <div id="seo" class="containerTextIndex" style="margin-bottom: 3em;">
              <p class="texto">
                <xsl:value-of select="use"/>
              </p>
            </div>

          </p>
        </xsl:for-each>

    <!-- /////////////////////////////////////// -->


      <p class="texto">
        <h2>TYPES</h2>
        <xsl:value-of select="//typesSeo/introduction"/>
      </p>

      <xsl:for-each select="//typesSeo/type">
        <p><!--BUSQUEDA  -->
          <h2><xsl:value-of select="title"/></h2>
          <xsl:choose>
            <xsl:when test="image">
              <div id="seo" class="containerTextIndex">
                <div class="boxImage" style="float: right; margin-left: 50px;">
                  <img alt="SEO" title="Search Engine Optimization" style="width:100%;">
                    <xsl:attribute name="src">
                      <xsl:value-of select="image"/>
                    </xsl:attribute>
                  </img>
                  <!--<div class="container">
                    <p style="margin-bottom: 1em;"><em>(Search Engine Optimization)</em></p>
                  </div>-->
                </div>
              </div>
            </xsl:when>
          </xsl:choose>
          <div id="seo" class="containerTextIndex" style="margin-bottom: 3em;">
            <p class="texto">
              <xsl:value-of select="description"/>
              <ol style="list-style-type: lower-alpha">
                <xsl:for-each select="examples/type">
                  <li><xsl:value-of select="title"/></li>
                  <ul style="list-style-type: square">
                    <li><xsl:value-of select="texto"/></li>
                  </ul>
                </xsl:for-each>
              </ol>
            </p>
          </div>


        </p>
      </xsl:for-each>

      </div>

      <!-- ***  PIE DE PAGINA **** -->

  	  <div id="pie">
      <!--<p styles="float:right;">
          <a href="http://validator.w3.org/check?uri=referer">
          <img src="http://www.w3.org/Icons/valid-xhtml11" alt="Valid XHTML 1.1" height="31" width="88" /></a>
        </p>
  		<p styles="float:right;">
  		<a href="http://jigsaw.w3.org/css-validator/check/referer">
          <img style="border:0;width:88px;height:31px"
              src="http://jigsaw.w3.org/css-validator/images/vcss"
              alt="Valid CSS!" />
          </a>
        </p>-->
        <p style="color:grey">
          <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">
            <img alt = "Licencia Creative Commons" style = "border-width: 0" src = "https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /> </a>
            <a href="https://www.etwinning.net/" target="_blank">
            <img id="logopie" alt="logo etwinning" src="./images/etwinning2.jpg" /></a>
            <br /> Este trabajo está licenciado bajo una <a style="color:grey" rel = "license" href = "http://creativecommons.org/licenses/by-nc-sa/4.0/">
            Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License
          </a>
  		  </p>
  	  </div>
  	</div>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
