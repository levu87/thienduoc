<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="about-nav">
            <div class="container">
                <a class="about-nav-trigger" href="javascript:void(0)">
                <div class="icon"></div>
                </a>
                    <ul class="about-nav__list"> 
                        <xsl:apply-templates select="ZoneList/Zone"></xsl:apply-templates>
                    </ul>
               
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position() &gt; 0 and position() &lt; 10">

            <li class="about-nav__item">
            <a class="about-nav__link">
                <xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			    </xsl:if>
                <xsl:attribute name="href">
					<xsl:text>#section-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </a></li>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>