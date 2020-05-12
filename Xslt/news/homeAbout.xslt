<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <xsl:apply-templates select="ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <section class="home-about">
				<div class="home-about__content">
					<div class="layer-1">
						<div class="layer-1__empty" setBackground="/Data/Sites/1/media/img/home-bg-1.png"></div>
						<div class="layer-1__wf-image">
                        
                        
                        <img src="/Data/Sites/1/media/img/home-bg-2.png">
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                        
                        <svg class="section-divider" viewBox="0 0 28 520"><path fill="#fff" d="M1.028,0H0V520H.471C17.919,444.21,28,354.683,28,258.775,28,163.9,18.131,75.267,1.028,0Z"/></svg></div>
					</div>
					<div class="container"> 
						<div class="layer-2">
                            <xsl:apply-templates select="News" mode="News-1"></xsl:apply-templates>
							<div class="layer-2__empty"></div>
						</div>
					</div>
				</div>
				<div class="home-about__content">
					<div class="layer-1"> 
						<div class="layer-1__wf-image-1" setBackground="/Data/Sites/1/media/img/home-bg.png"><svg class="section-divider" viewBox="0 0 28 520"><path fill="#d8f5df" d="M1.028,0H0V520H.471C17.919,444.21,28,354.683,28,258.775,28,163.9,18.131,75.267,1.028,0Z"/></svg></div>
						<div class="layer-1__wf-image-2" setBackground="/Data/Sites/1/media/img/home-bg-3.png"></div>
					</div>
					<div class="container"> 
						<div class="layer-2">
                            <xsl:apply-templates select="News" mode="News-2"></xsl:apply-templates>
                            <xsl:apply-templates select="News" mode="News-3"></xsl:apply-templates>

							
							
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News" mode="News-1">
        <xsl:if test="position()=1">
            <div class="layer-2__content">
                <h3 class="sub-title"><xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of> </h3>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                <p class="brief-content">
                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </p><a class="main-btn"> xem thêm <em class="lnr lnr-arrow-right"></em></a>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News-2">
        <xsl:if test="position() = 2">
            <div class="layer-2__content">
            <h3 class="sub-title"><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></h3>
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            

            
                
            <a data-fancybox="video" class="play-btn">
                    <xsl:attribute name="href">
                        <xsl:value-of select="SubTitle"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                <img src="/Data/Sites/1/media/img/play-btn.png">
                
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
                <span>video clip</span>
            </a>
        </div>
        </xsl:if>
        
    </xsl:template>
    <xsl:template match="News" mode="News-3">
        <xsl:if test="position() = 3">
            <div class="layer-2__content">
            <h3 class="sub-title"><xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of></h3>
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            <p class="brief-content"><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p><a class="main-btn"> xem thêm <em class="lnr lnr-arrow-right"></em></a>
        </div>
        </xsl:if>
        
    </xsl:template>

</xsl:stylesheet>