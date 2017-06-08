<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="galeria">
  <html>
  <head>
<title>Espaciolibre</title>
<link rel="stylesheet" type="text/css" href="xml.css" />
<style type="text/css">
    body{background-color: rgba(255, 255, 255, 0.3);}
    img{width:300px; margin:0; }
    div.fotos{
    width:70%; 
    margin:3% 15% 4% 15%;}
     div.polaroid{ float: left;
      width: 300px; 
      background-color: white; 
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); 
      margin-left: 8%; 
      margin-top: 5%; }
      h1{text-align:center;font-family:"Allura"}
      h2{text-align:center; font-family:"Allura"}
      img:hover{
      transform : scale(1.2);}
</style>
  </head>
    <body>
    
 
    <h1>Nuestros Espacios</h1>
    <h2>Fincas y restaurantes</h2>
    <xsl:for-each select="finca">
    <div class="fotos">
      <div class="polaroid">
        <img src="../imagenes_xml/{@ruta}"/>
      </div>
    </div>
     </xsl:for-each>
    <xsl:for-each select="restaurante">
    <div class="fotos">
      <div class="polaroid">
       <img src="../imagenes_xml/{@ruta}"/> 
      </div>
    </div>  
  </xsl:for-each>
    </body>
  </html>
  
  </xsl:template>
</xsl:stylesheet>
