<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Instituto Tecnológico Edix</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
      </head>
      <body>
        <h1><xsl:value-of select="/ite/@nombre" /></h1>
        <p>Empresa: <xsl:value-of select="/ite/empresa" /></p>
        <p>Teléfono: <xsl:value-of select="/ite/telefono" /></p>
        
        <h2>Profesores</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>Nombre</th>
          </tr>
          <xsl:for-each select="/ite/profesores/profesor">
            <tr>
              <td><xsl:value-of select="id" /></td>
              <td><xsl:value-of select="nombre" /></td>
            </tr>
          </xsl:for-each>
        </table>
        
        <h2>Director</h2>
        <p>Nombre: <xsl:value-of select="/ite/director/nombre" /></p>
        <p>Despacho: <xsl:value-of select="/ite/director/despacho" /></p>
        
        <h2>Jefe de Estudios</h2>
        <p>Nombre: <xsl:value-of select="/ite/jefe_estudios/nombre" /></p>
        <p>Despacho: <xsl:value-of select="/ite/jefe_estudios/despacho" /></p>
        
        <h2>Ciclos</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Grado</th>
            <th>Año</th>
          </tr>
          <xsl:for-each select="/ite/ciclos/ciclo">
            <tr>
              <td><xsl:value-of select="@id" /></td>
              <td><xsl:value-of select="nombre" /></td>
              <td><xsl:value-of select="grado" /></td>
              <td><xsl:value-of select="decretoTitulo/@año" /></td>
            </tr>
          </xsl:for-each>
        </table>
        
        <h2>Enlaces</h2>
        <ul>
          <li><a href="{/ite/@web}">Sitio web</a></li>
          <li><a href="https://www.example.com">Ejemplo</a></li>
        </ul>
        
        <h2>Formulario de contacto</h2>
        <form action="submit.php" method="post">
          <label for="name">Nombre:</label>
          <input type="text" id="name" name="name"/>
          
          <label for="email">Email:</label>
          <input type="email" id="email" name="email"/>
          
          <label for="message">Mensaje:</label>
          <textarea id="message" name="message" ></textarea>
          
          <input type="submit" value="Enviar" />
        </form>
        
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
