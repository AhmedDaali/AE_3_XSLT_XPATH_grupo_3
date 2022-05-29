<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
   <xml>
    <!--Aquí vamos a hacer que los dos atributos del elemento <ite>,  aparezcan como elementos también-->
    <xsl:value-of select="/ite/@nombre"/>-----
    <xsl:value-of select="/ite/@web"/>-----

    <xsl:value-of select="//empresa"/>-----
    <xsl:value-of select="//telefono"/>-----------------
     <!--Aquí vamos a sacar sólo el elemento <nombre> de la etiqueta <profesor>-->
    <xsl:value-of select="//profesor[1]/nombre"/>-----
    <xsl:value-of select="//profesor[2]/nombre"/>-----
    <xsl:value-of select="//profesor[3]/nombre"/>-----
    <xsl:value-of select="//profesor[4]/nombre"/>------------------------

    <xsl:value-of select="//director/nombre"/>------
    <xsl:value-of select="//director/despacho"/>------------------------
    <xsl:value-of select="//jefe_estudios/nombre"/>-----
    <xsl:value-of select="//jefe_estudios/despacho"/>------------------------------------------
    <!--Aquí vamos a hacer que los atributos de los elementos <ciclo id="DAM"> y <decretoTitulo año="2010" />,  aparezcan como elementos también-->
    <xsl:value-of select="//ciclo[1]/@id"/>-----
    <xsl:value-of select="//ciclo[1]/nombre"/>-----
    <xsl:value-of select="//decretoTitulo[1]/@año"/>------------------------------------
    <xsl:value-of select="//ciclo[2]/@id"/>-----
    <xsl:value-of select="//ciclo[2]/nombre"/>-----
    <xsl:value-of select="//ciclo[2]/decretoTitulo/@año"/>-----
    <xsl:value-of select="//ciclo[3]/@id"/>------
    <xsl:value-of select="//ciclo[3]/nombre"/>------
    <xsl:value-of select="//ciclo[3]/decretoTitulo/@año"/>

   </xml>
</xsl:template>
</xsl:stylesheet> 