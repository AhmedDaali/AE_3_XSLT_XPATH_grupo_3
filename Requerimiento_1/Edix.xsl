<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 
       <html>
           <head>
               <link rel="stylesheet" href="Edix.css"/>
               <title>Edix</title>
           </head>
           <body>
               <header class="cabezal">
                   <h2 style="color: white;"><xsl:value-of select="/ite/@nombre"/></h2>
               </header>
               <main>
                   <section class="principal">
                        <table class="tablaCiclos">
                            <caption><h2 style="color: blue;" >Ciclos</h2></caption>
                                <tr>
                                    <th><h3 style="color: blue">ID</h3></th>
                                    <th><h3 style="color: blue">Nombre</h3></th>
                                    <th><h3 style="color: blue">Grado</h3></th>
                                    <th><h3 style="color: blue">Año</h3></th>
                                </tr>
                                <tr>
                                    <td><xsl:value-of select="//ciclo[@id='ASIR']/@id"/></td>
                                    <th><a target="blank" href="https://www.edix.com/es/fp/administracion-y-finanzas/"><xsl:value-of select="//ciclo[@id='ASIR']/nombre"/></a></th>
                                    <th><xsl:value-of select="//ciclo[@id='ASIR']/grado"/></th>
                                    <th><xsl:value-of select="//ciclo[@id='ASIR']/decretoTitulo/@año"/></th>
                                </tr>
                                <tr>
                                    <td><xsl:value-of select="//ciclo[@id='DAW']/@id"/></td>
                                    <th><a target="blank" href="https://www.edix.com/es/fp/daw-desarrollo-de-aplicaciones-web/"><xsl:value-of select="//ciclo[@id='DAW']/nombre"/></a></th>
                                    <th><xsl:value-of select="//ciclo[@id='DAW']/grado"/></th>
                                    <th><xsl:value-of select="//ciclo[@id='DAW']/decretoTitulo/@año"/></th>
                                </tr>
                                <tr>
                                    <td><xsl:value-of select="//ciclo[@id='DAM']/@id"/></td>
                                    <th><a target="blank" href="https://www.edix.com/es/fp/desarrollo-de-aplicaciones-multiplataforma-dam/"><xsl:value-of select="//ciclo[@id='DAM']/nombre"/></a></th>
                                    <th><xsl:value-of select="//ciclo[@id='DAM']/grado"/></th>
                                    <th><xsl:value-of select="//ciclo[@id='DAM']/decretoTitulo/@año"/></th>
                                </tr>
                        </table>
                        <table class="tablaDireccion">
                            <caption><h2 style="color: blue;">Dirección</h2></caption>
                                <tr>
                                    <th><h3 style="color: blue">Cargo</h3></th>
                                    <th><h3 style="color: blue">Nombre</h3></th>
                                    <th><h3 style="color: blue">Despacho</h3></th>
                                </tr>
                                <tr>
                                    <th>Director</th>
                                    <th><xsl:value-of select="//director/nombre"/></th>
                                    <th><xsl:value-of select="//director/despacho"/></th>
                                </tr>
                                <tr>
                                    <th>Jefe de estudios</th>
                                    <th><xsl:value-of select="//jefe_estudios/nombre"/></th>
                                    <th><xsl:value-of select="//jefe_estudios/despacho"/></th>
                                </tr>
                        </table>
                            <ul class="listaProfesores">
                                <h2 style="color: blue;" >Profesores</h2>
                                <li><xsl:value-of select="//profesor[1]"/></li>
                                <li><xsl:value-of select="//profesor[2]"/></li>
                                <li><xsl:value-of select="//profesor[3]"/></li>
                                <li><xsl:value-of select="//profesor[4]"/></li>
                            </ul>
                        <div class="listaContacto">
                            <h2 style="color: blue ;">Contacto</h2>
                            <dl>
                                <dt>Nombre de la empresa:</dt>
                                <dd><xsl:value-of select= "//empresa" /></dd>
                                <dt>Teléfono:</dt>
                                <dd>(<xsl:value-of select= "//telefono" />) </dd>
                            </dl>
                        </div>
                    </section>   
                    <aside class="lateral">
                        <form>
                        
                            <h3>Solicita información</h3>
                            <br/>
                            <label for="name">Nombre</label>
                            <br/>
                            <input id="name" style="width : 100%;height:35px"></input>
                            <br/>
                            <br/>
                            <label for="lastName">Apellido</label>
                            <br/>
                            <input id="lastName" style="width : 100%;height:35px"/>
                            <br/>
                            <br/>
                            <label for="tel">Teléfono</label>
                            <br/>
                            <input id="tel" style="width : 100%;height:35px"/>
                            <br/> 
                            <br/>
                            <label for="email">Email</label>
                            <br/>
                            <input id="email" style="width : 100%;height:35px"/>
                            <br/>
                            <br/>
                            <label for="grado">Elija un grado</label>
                            <br/>
                            <select id="grado" style="width : 100%;height:35px">
                                <option value="ASIR">Administración de Sistemas Informáticos en Red</option>
                                <option value="DAW">Desarrollo de Aplicaciones Web</option>
                                <option value="DAM">Desarrollo de Aplicaciones Multiplataforma</option>
                            </select>
                            <br/>
                            <br/>
                            <label for="mensaje">Escriba un mensaje</label>
                            <br/>
                            <textarea style="resize: none; max-width : 100%;" rows="10" cols="58" id="mensaje"></textarea>
                            <br/>
                            <br/>
                            <button style="width : 100%;height:60px; color:white"><h3 style="color:black">Enviar Datos</h3></button>
                            <br/>
                        </form>
                    </aside>
               </main>
           </body>
       </html>
</xsl:template>
</xsl:stylesheet>