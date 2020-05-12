<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="container">
        
        <div class="news__list clearfix">
            <xsl:apply-templates select="NewsList/News" mode="Big"></xsl:apply-templates>
            <xsl:apply-templates select="NewsList/News" mode="Small"></xsl:apply-templates>
            <xsl:apply-templates select="NewsList/News" mode="List"></xsl:apply-templates>
        </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Big">
        <xsl:if test="position() = 1">
             <div class="news__item"> <a class="img"> 
            
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
            </img></a>
                <div class="caption"> 
                    <date><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></date><a class="title">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </a>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Small">
        <xsl:if test="position() &gt; 1 and position() &lt; 4 ">
             <div class="news__item"> <a class="img"> 
            
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
            </img></a>
                <div class="caption"> 
                    <date><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></date><a class="title">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </a>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="List">
        <xsl:if test="position() &gt; 3">
             <div class="news__item"> <a class="img"> 
            
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
            </img></a>
                <div class="caption"> 
                    <date><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></date><a class="title">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </a>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>