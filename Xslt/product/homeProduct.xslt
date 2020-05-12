<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <section class="home-product">
            <div class="container">
                <div class="home-product__title">
                    <h2 class="main-title" data-aos="fade-down" data-aos-duration="600"><xsl:value-of disable-output-escaping="yes" select="ProductList/ModuleTitle"></xsl:value-of></h2>
                </div>
                <div class="home-product__list">
                    <xsl:apply-templates select="ProductList/Product"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Product">
        <div class="home-product__item">
        <div class="wrapper">
         <a>
        
            <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
        
            <a class="img"> <img class="lazyload blur-up">
            <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            </img></a>
            <div class="caption"> <a class="title">
                
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
             </a>
                <p class="brief-content"><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p><a class="main-btn">
            
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                
                chi tiết <em
                        class="lnr lnr-arrow-right"></em></a>
            </div>
        </a></div>
        </div>
    </xsl:template>

</xsl:stylesheet>