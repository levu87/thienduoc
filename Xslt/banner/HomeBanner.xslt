<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
      <section class="home-banner"> 
				<div class="swiper-container"> 
					<div class="swiper-wrapper"> 
						<xsl:apply-templates select="BannerList/Banner"></xsl:apply-templates>
						
					</div>
				</div>
			</section>
  </xsl:template>
  <xsl:template match="Banner">
    <div class="swiper-slide">
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
								<div class="home-banner__content"> 
									<div class="container">
										<p data-aos="fade-up" data-aos-duration="1400"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></p>
                    
                    <a class="button-scroll" data-aos="fade-up" data-aos-duration="2000"> 
                    
                      <xsl:attribute name="href">
                        <xsl:text disable-output-escaping="yes">#section-1</xsl:text>
                      </xsl:attribute>
                        <em class="lnr lnr-chevron-down"></em>
                    
                    </a>
									</div>
								</div></a>
    </div>
  </xsl:template>

</xsl:stylesheet>