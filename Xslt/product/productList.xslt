<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="product"> 
				<div class="container"> 
					<h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="ProductList/ZoneTitle"></xsl:value-of></h2>
					<div class="product__list"> 
						<xsl:apply-templates select="ProductList/Product"></xsl:apply-templates>
					</div>
				</div>
			</section>
  </xsl:template>
  <xsl:template match="Product">
    <div class="product__item"> 
        <div class="caption"> <a class="title">
        <xsl:attribute name="href">
          <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
        </a>
          <p class="brief-content"><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p><a class="main-btn">
          
          <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
          </xsl:attribute>
          <xsl:text disable-output-escaping="yes">chi tiết </xsl:text>
          <em class="lnr lnr-arrow-right"></em></a>
        </div>
        <a class="img">
        
          <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
          <img class="lazyload blur-up">
          <xsl:attribute name="src">
            <xsl:value-of select="ImageUrl"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="alt">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
          </img>
        </a>
      </div>
      
  </xsl:template>

</xsl:stylesheet>