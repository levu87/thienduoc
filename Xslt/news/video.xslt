<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <div class="video__gallery">
            <div class="row">
                <xsl:apply-templates select="NewsList/News"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <xsl:if test="position()&gt;0 and position()&lt;7">
            <xsl:if test="position()=1">
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-sm-12 col-lg-6 left' &gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;div class='row big' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=2">
                <xsl:text disable-output-escaping='yes'>&lt;div class='row small' &gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-6' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=3">
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-6' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=4">
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-sm-12 col-lg-6 right' &gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;div class='row small' &gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-6' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=5">
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-6' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=6">
                <xsl:text disable-output-escaping='yes'>&lt;div class='row big' &gt;</xsl:text>
            </xsl:if>

            <div class="item">
                <a data-fancybox="video">
                    <xsl:attribute name="href">
                        <xsl:value-of select="SubTitle"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <figure>
                            
                        <div class="image">
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                        <figcaption>
                            <img src="/Data/Sites/1/media/img/play-btn.png" alt="">
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                        <div class="title"><xsl:value-of select="Title"></xsl:value-of></div>
                        </figcaption>
                    </figure>
                </a>
            </div>
            <xsl:if test="position()=1">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=2">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=3">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=4">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=5">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=6">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>