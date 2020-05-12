<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <div class="main-content">
            <xsl:apply-templates select="ZoneList/Zone"></xsl:apply-templates>
        </div>

    </xsl:template>
    <xsl:template match="Zone">

        <xsl:if test="position() = 1">
            <div class="section section__1" id="section-1">
                <xsl:apply-templates select="News" mode="Zone1-News"></xsl:apply-templates>
                <div class="box-content">
                    <div class="container">
                        <xsl:apply-templates select="Zone" mode="Zone1-Child"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 2">
            <div class="section section__2" id="section-2">
                <div class="about-history">
                    <xsl:apply-templates select="News" mode="Zone2-News"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 3">
            <div class="section section__3" id="section-3">
                <div class="container">
                    <h2 class="main-title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h2>
                    <ul class="nav-sub">
                        <xsl:apply-templates select="Zone" mode="Zone3-Nav"></xsl:apply-templates>
                    </ul>
                   
                        <xsl:apply-templates select="Zone" mode="Zone3-News"></xsl:apply-templates>
        
                </div>
            </div>

        </xsl:if>
        <xsl:if test="position() = 4">
            <div class="section section__4" id="section-4">
                <h2 class="main-title">
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </h2>
                <div class="container">
                    <div class="swiper-container">
                        <div class="swiper-wrapper"> 
                        <xsl:apply-templates select="News" mode="Zone4-News"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
                       
                    </div>
        </xsl:if>

    </xsl:template>
    <xsl:template match="News" mode="Zone1-News">
        <div class="box-content" setBackground="/Data/Sites/1/media/img/about-1.png">
            <div class="container">
                <div class="content">
                    <h2 class="main-title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h2>
                    <div class="name">
                        <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
                    </div>
                    <div class="quote">
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </div>
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone1-Child">
        <h2 class="main-title">
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </h2>
        <ul class="nav-sub">
            <xsl:apply-templates select="Zone" mode="Zone1-Nav"></xsl:apply-templates>
        </ul>
                        <xsl:apply-templates select="Zone" mode="Zone1-Content"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone1-Nav">
        <li class="tab-item">
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text>tab-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <!-- <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                <xsl:text>tab-item active</xsl:text>
                </xsl:attribute>
            </xsl:if> -->

            <xsl:attribute name="data-tab">
                <xsl:text>tab-</xsl:text>
                <xsl:value-of select="position()"></xsl:value-of>
              </xsl:attribute>
            <a class="tab-link">
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>

                  <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
              </a>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone1-Content">
        <div class="tab-content" style="display: none">
            <xsl:if test="position() = 1">
        <xsl:attribute name="class">
          <xsl:text>tab-content active</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>tab-content</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="id">
        <xsl:text>tab-</xsl:text>
        <xsl:value-of select="position()"></xsl:value-of>
      </xsl:attribute>
            
                <xsl:apply-templates select="News" mode="Zone1-1"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="nav">
        <li>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a class="navigation__link">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
    <!-- <xsl:template match="Zone" mode="Zone1-1">
        <xsl:apply-templates select="News" mode="Zone1-1-New1"></xsl:apply-templates>
    </xsl:template> -->
    <xsl:template match="News" mode="Zone1-1">
        <xsl:if test="position()= 1">
            <div class="row full-content">
                <div class="col-md-5 box-img"> <img class="lazyload blur-up">
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </div>
                <div class="col-md-7 text">
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 2">
            <div class="row">
                <div class="col-md-12">
                    <div class="text">
                        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                    </div>
                    <div class="viewmore-btn"><a id="show-more" href="javascript:void(0)">xem thêm</a></div>
                </div>
            </div>

        </xsl:if>



    </xsl:template>
    <xsl:template match="News" mode="Zone2-News">
        <xsl:if test="position() = 1">
            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
        </xsl:if>

        <xsl:if test="position()=2">
            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
        </xsl:if>
    </xsl:template>

    <xsl:template match="Zone" mode="Zone3-News">
         <div class="noidung" style="display: none">
            <xsl:if test="position() = 1">
        <xsl:attribute name="class">
          <xsl:text>noidung active</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>noidung</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="id">
        <xsl:text>tbl-</xsl:text>
        <xsl:value-of select="position()"></xsl:value-of>
      </xsl:attribute>
      <xsl:apply-templates select="News" mode="Zone3-News-News"></xsl:apply-templates>
    
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone3-Nav">
        <li class="tab-item">
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text>tab-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <!-- <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                <xsl:text>tab-item active</xsl:text>
                </xsl:attribute>
            </xsl:if> -->

            <xsl:attribute name="data-tab">
                <xsl:text>tbl-</xsl:text>
                <xsl:value-of select="position()"></xsl:value-of>
              </xsl:attribute>
            <a class="tab-link">
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>

                  <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
              </a>
        </li>
    </xsl:template>
    <xsl:template match="News" mode="Zone3-News-News">
        <div class="row">
        <div class="col-md-6">
            <div class="box-img">

                <img class="lazyload blur-up">
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
            </div>
        </div>
        <div class="col-md-6">
            <div class="box-content">
                <div class="content">
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
            </div>
        </div>
   </div>
    </xsl:template>
    <xsl:template match="News" mode="Zone4-News">
       
        
            <div class="swiper-slide"> 
                <div class="wrapper">
                    <div class="box-img">
                        <img class="lazyload blur-up">
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                        <div class="swiper-nav">
                            <div class="button-prev"><em class="lnr lnr-chevron-left"></em></div>
                            <div class="button-next"><em class="lnr lnr-chevron-right"></em></div>
                        </div>
                    </div>
                    <div class="box-content"> 
                        <div class="content">
                            <h4><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h4>
                            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                        </div>
                    </div>
                </div>
            </div>
       
    </xsl:template>
    
</xsl:stylesheet>