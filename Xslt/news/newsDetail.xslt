<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="news-detail">
				<div class="container"> 
					<h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="NewsDetail/Title"></xsl:value-of></h2>
					<div class="heading"> 
						<date><xsl:value-of disable-output-escaping="yes" select="NewsDetail/CreatedDate"></xsl:value-of></date>
						<ul class="social-share">
							<li><a class="twt" href="#"><em class="fab fa-twitter"></em></a></li>
							<li><a class="fb" href="#"><em class="fab fa-facebook-f"></em></a></li>
							<li><a class="yt" href="#"><em class="fab fa-youtube"></em></a></li>
						</ul>
					</div>
					<div class="full-content"> 
						<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
					</div>
				</div>
				<div class="other-news">
					<div class="container"> 
                        <xsl:if test="count(/NewsDetail/NewsOther) &gt; 0">
                            <h2 class="main-title">Truyền thông</h2>
                            <div class="other-news__slider">
                                <div class="swiper-container"> 
                                    <div class="swiper-wrapper"> 
                                        <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                                        
                                    </div>
                                </div>
                                <div class="swiper-nav">
                                    <div class="button-prev"><em class="lnr lnr-chevron-left"></em></div>
                                    <div class="button-next"><em class="lnr lnr-chevron-right"></em></div>
                                </div>
                            </div>
                        </xsl:if>
						
					</div>
				</div>
			</div>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="swiper-slide"> 
            <div class="other-news__item"> <a class="img">
                
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
                <div class="caption"> 
                    <date><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></date><a class="title" >
                        
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>