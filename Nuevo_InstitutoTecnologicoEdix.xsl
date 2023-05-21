<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Copia el documento de entrada -->
  <xsl:template match="/">
    <nuevo_ite>
      <nombre>
        <xsl:value-of select="/ite/@nombre"/>
      </nombre>
      <web>
        <xsl:value-of select="/ite/@web"/>
      </web>
      <empresa>
        <xsl:value-of select="/ite/empresa"/>
      </empresa>
      <telefono>
        <xsl:value-of select="/ite/telefono"/>
      </telefono>
      <profesores>
        <xsl:apply-templates select="/ite/profesores/profesor"/>
      </profesores>
      <director>
        <nombre>
          <xsl:value-of select="/ite/director/nombre"/>
        </nombre>
        <despacho>
          <xsl:value-of select="/ite/director/despacho"/>
        </despacho>
      </director>
      <jefe_estudios>
        <nombre>
          <xsl:value-of select="/ite/jefe_estudios/nombre"/>
        </nombre>
        <despacho>
          <xsl:value-of select="/ite/jefe_estudios/despacho"/>
        </despacho>
      </jefe_estudios>
      <ciclos>
        <xsl:apply-templates select="/ite/ciclos/ciclo"/>
      </ciclos>
    </nuevo_ite>
  </xsl:template>

  <!-- Transforma cada profesor -->
  <xsl:template match="profesor">
    <profesor>
      <id>
        <xsl:value-of select="id"/>
      </id>
      <nombre>
        <xsl:value-of select="nombre"/>
      </nombre>
    </profesor>
  </xsl:template>

  <!-- Transforma cada ciclo -->
  <xsl:template match="ciclo">
    <ciclo>
      <id>
        <xsl:value-of select="@id"/>
      </id>
      <nombre>
        <xsl:value-of select="nombre"/>
      </nombre>
      <grado>
        <xsl:value-of select="grado"/>
      </grado>
      <decretoTitulo año="{decretoTitulo/@año}"/>
    </ciclo>
  </xsl:template>

</xsl:stylesheet>
