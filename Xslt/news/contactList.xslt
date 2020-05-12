<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <section class="contact">
				<div class="container"> 
					<h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="NewsList/ModuleTitle"></xsl:value-of></h2>
					<div class="contact__wrapper"> 
						<div class="result-wrapper">
							<div id="results">
								<ul id="list">
									<xsl:apply-templates select="NewsList/News"></xsl:apply-templates>
									
								</ul>
							</div>
						</div>
						<div class="map-wrapper"> 
							<xsl:apply-templates select="NewsList/News" mode="maps"></xsl:apply-templates>
						</div>
					</div>
					<div class="form-wrap"></div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <li>
            <xsl:if test="position() = 1">
				<xsl:attribute name='class'>
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
            <p class="name"><xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
				<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
            </p>
            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
			<div class="map-iframe hidden">
				<xsl:value-of disable-output-escaping='yes' select='FullContent'></xsl:value-of>
			</div>
        </li>
    </xsl:template>
    <xsl:template match="News" mode="maps">
        <div id="map"> 
        <div id="map_canvas">

            <xsl:if test="position() = 1">
			<xsl:value-of disable-output-escaping='yes' select='FullContent'></xsl:value-of>
		</xsl:if>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>