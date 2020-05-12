<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/">
    <section class="product-detail">
      <div class="container">
        <div class="product-detail__inner">
          <div class="product-detail__slider">
            <div class="thumbnail-wrap">
              <div class="product-button-up"><em class="lnr lnr-chevron-up"></em></div>
              <div class="product-button-down"><em class="lnr lnr-chevron-down"></em></div>
              <div class="swiper-container gallery-thumbs">
                <div class="swiper-wrapper">

                  <xsl:apply-templates select="/ProductDetail/ProductImages" mode="Thumbs"></xsl:apply-templates>

                </div>
              </div>
            </div>
            <div class="swiper-container gallery-top">
              <div class="swiper-wrapper">

                <xsl:apply-templates select="/ProductDetail/ProductImages" mode="Top"></xsl:apply-templates>

              </div>
            </div>
          </div>
          <div class="product-detail__info">
            <h3 class="title">
              <xsl:value-of disable-output-escaping="yes" select="ProductDetail/Title"></xsl:value-of>
            </h3>
            <div class="brief-content">
              <!-- <p>
                <xsl:value-of disable-output-escaping="yes" select="ProductDetail/BriefContent"></xsl:value-of>
              </p> -->
              <xsl:value-of disable-output-escaping="yes" select="ProductDetail/FullContent"></xsl:value-of>
              <!-- <div class="social-icon">
                <div class="like"> <span>Thích </span><span>0 </span></div>
                <div class="share"> <span>Chia sẽ</span></div>
              </div> -->
             <div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-width="" data-layout="button_count" data-action="like" data-size="small" data-share="true"></div>

            </div>
          </div>
        </div>
        <div class="product-detail__information">
          <div class="info-wrapper">
            <div class="contain">
              <div class="tab-wrapper">
                <ul class="detail-navigation">
                  <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Navigation">
                  </xsl:apply-templates>
                </ul>
              </div>
              <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Content"></xsl:apply-templates>

            </div>
            <div class="faq-accordion">
              <h1 class="main-title">Câu hỏi thường gặp</h1>
              <ul class="accordions">
                <xsl:apply-templates select='/ProductDetail/NewsRelated'></xsl:apply-templates>


              </ul>
            </div>
          </div>


        </div>
      </div>
      <div class="other-product">
        <xsl:if test="count(/ProductDetail/ProductOther) &gt; 0">
          <h2 class="main-title">Sản phẩm khác</h2>
          <div class="container">
            <div class="other-product__slider">
              <div class="swiper-container">
                <div class="swiper-wrapper">
                  <xsl:apply-templates select="ProductDetail/ProductOther"></xsl:apply-templates>
                </div>
              </div>
              <div class="swiper-nav">
                <div class="button-prev"><em class="lnr lnr-chevron-left"></em></div>
                <div class="button-next"><em class="lnr lnr-chevron-right"></em></div>
              </div>
            </div>
          </div>
        </xsl:if>

      </div>
    </section>
  </xsl:template>
  <xsl:template match="ProductImages" mode="Top">
    <div class="swiper-slide">
      <a data-fancybox="Image">
        <xsl:attribute name="href">
          <xsl:value-of select="ImageUrl"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <div class="img">
          <img class="lazyload blur-up">
          <xsl:attribute name="src">
            <xsl:value-of select="ImageUrl"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="alt">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
          </img>
        </div>
      </a>
    </div>
  </xsl:template>
  <xsl:template match="ProductImages" mode="Thumbs">
    <div class="swiper-slide">
      <div class="img">
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
  </xsl:template>

  <xsl:template match="ProductAttributes" mode="Content">
    <div class="tab-content noi-dung" id="tab-1">

      <xsl:if test="position() = 1">
        <xsl:attribute name="class">
          <xsl:text>tab-content noi-dung current</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>tab-content noi-dung</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="id">
        <xsl:text>tab-</xsl:text>
        <xsl:value-of select="position()"></xsl:value-of>
      </xsl:attribute>


      <xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
      <div class="viewmore-btn"><a class="main-btn">xem thêm </a></div>
    </div>
  </xsl:template>
  <xsl:template match="ProductAttributes" mode="Navigation">
    <li class="tab-link">
      <xsl:if test="position() =1">
        <xsl:attribute name="class">
          <xsl:text>tab-link current</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="title">
        <xsl:value-of select="Title"></xsl:value-of>
      </xsl:attribute>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>tab-link current</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="data-tab">
        <xsl:text>tab-</xsl:text>
        <xsl:value-of select="position()"></xsl:value-of>
      </xsl:attribute>
      <xsl:attribute name="title">
        <xsl:value-of select="Title"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
    </li>
  </xsl:template>

  <xsl:template match="NewsRelated">
    <li class="accordion-item">
      <div class="accordion-title">
        <div class="number">
          <xsl:attribute name="Title">
          <xsl:text></xsl:text>
          <xsl:value-of select="position()"></xsl:value-of>
        </xsl:attribute>
        <xsl:text disable-output-escaping="yes">.</xsl:text>
        </div>
        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        <div class="icon"></div>
      </div>
      <div class="accordion-content">
        <p>
          <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
        </p>
      </div>
    </li>
  </xsl:template>
  <xsl:template match="ProductOther">
    <div class="swiper-slide">
      <div class="other-product__item">
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
        <a class="title">

          <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
          <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>

        </a>
        <div class="overlay">
          <a class="title-ol">

            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
          </a>
          <a class="main-btn">

            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:text disable-output-escaping="yes">Chi tiết</xsl:text>
            <em class="lnr lnr-arrow-right"></em>

          </a>
        </div>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>