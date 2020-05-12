<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
    
            <div class="heading"> 
                <h1 class="main-title"><xsl:value-of disable-output-escaping="yes" select="ZoneList/Title"></xsl:value-of></h1>
                <div class="sort">
                    <label for="#sort">Câu hỏi</label>
                    <div class="select">
                        <select id="sort" name="speed">
                            <xsl:apply-templates select="ZoneList/Zone/Zone" mode="Select"></xsl:apply-templates>
                        </select>
                    </div>
                </div>
            </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Select">
        <option>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
		</option>
                           
    </xsl:template>

</xsl:stylesheet>