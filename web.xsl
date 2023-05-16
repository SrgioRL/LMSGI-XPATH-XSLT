<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="style.css" />
            </head>
            <body>
                <header id="cabecera">
                    <h1>
                        <xsl:value-of select="/ite/@nombre" />
                    </h1>
                </header>
                <div id="logo">
                    <a href="{/ite/@web}">
                        <img src="logo.png" />
                    </a>
                </div>


                <main>
                <div id="contenido">
                    <h2>Información de contacto:</h2>
                    <table>
                        <tr>
                            <td>Empresa:</td>
                            <td>
                                <xsl:value-of select="/ite/empresa" />
                            </td>
                        </tr>
                        <tr>
                            <td>Teléfono:</td>
                            <td>
                                <xsl:value-of select="/ite/telefono" />
                            </td>
                        </tr>
                    </table>

                    <h2>Profesores:</h2>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                        </tr>
                        <xsl:for-each select="/ite/profesores/profesor">
                            <tr>
                                <td>
                                    <xsl:value-of select="id" />
                                </td>
                                <td>
                                    <xsl:value-of select="nombre" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>

                    <h2>Director:</h2>
                    <p>
                        <strong>Nombre: </strong>
                        <xsl:value-of select="/ite/director/nombre" />
                    </p>
                    <p>
                        <strong>Despacho: </strong>
                        <xsl:value-of select="/ite/director/despacho" />
                    </p>

                    <h2>Jefe de Estudios:</h2>
                    <p>
                        <strong>Nombre: </strong>
                        <xsl:value-of select="/ite/jefe_estudios/nombre" />
                    </p>
                    <p>
                        <strong>Despacho: </strong>
                        <xsl:value-of select="/ite/jefe_estudios/despacho" />
                    </p>

                    <h2>Ciclos:</h2>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Grado</th>
                            <th>Año de decreto del título</th>
                        </tr>
                        <xsl:for-each select="/ite/ciclos/ciclo">
                            <tr>
                                <td>
                                    <xsl:value-of select="@id" />
                                </td>
                                <td>
                                    <xsl:value-of select="nombre" />
                                </td>
                                <td>
                                    <xsl:value-of select="grado" />
                                </td>
                                <td>
                                    <xsl:value-of select="decretoTitulo/@año" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>

                    <h2>Enlaces:</h2>
                    <ul>
                        <li>
                            <a href="{/ite/@web}">Enlace WEB 1</a>
                        </li>
                        <li>
                            <a href="{/ite/@web}">Enlace WEB 2</a>
                        </li>
                    </ul>


                    <h2>Formulario de contacto:</h2>
                    <form>
                        <label for="nombre">Nombre:</label>
                        <input type="text" id="nombre" name="nombre"/>
                        <br/>

                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email"/>
                        <br/>

                        <label for="mensaje">Mensaje:</label>
                        <textarea id="mensaje" name="mensaje"></textarea>
                        <br/>

                        <input type="submit" value="Enviar"/>
                    </form>
                    </div>
                </main>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>