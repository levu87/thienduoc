<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/"><h3><xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of></h3>
							<ul class="main-footer__menu-list"> 
								<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
							</ul>
  </xsl:template>

  <!-- <xsl:template match="Zone">
    <xsl:if test="count(Zone)>0">
      <xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
    </xsl:if>
  </xsl:template> -->

  <xsl:template match="Zone">
    <li class="main-footer__menu-item">
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>main-footer__menu-item active</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="target">
          <xsl:value-of select="Target"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
      </a>
    </li>
  </xsl:template>
</xsl:stylesheet>