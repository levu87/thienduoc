<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
       
            
            <ul class="accordions">
                <xsl:apply-templates select="NewsList/News"></xsl:apply-templates>
            </ul>
     
    </xsl:template>
    <xsl:template match="News">
        <li class="accordion-item">

            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            <div class="accordion-title">
            <div class="number">
          <xsl:attribute name="Title">
          <xsl:text></xsl:text>
          <xsl:value-of select="position()"></xsl:value-of>
        </xsl:attribute>
        <xsl:text disable-output-escaping="yes">.</xsl:text>
        </div>
            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
            
            <div class="icon"></div></div>
            <div class="accordion-content">
                <p><xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of></p>
            </div>
        </li>
    </xsl:template>

</xsl:stylesheet>