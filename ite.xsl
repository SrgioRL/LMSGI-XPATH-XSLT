<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="style.css" />
            </head>
            <body>
                <div id="contenedor">
                    <header id="cabecera">
                        <h1>
                            <xsl:value-of select="/ite/@nombre" />
                        </h1>
                    </header>

                    <div id="logo">
                        <a href="{/ite/@web}">
                            <img src="img/logo.png" />
                        </a>
                        <div id="sombra"></div>
                    </div>


                    <main>
                        <div id="contenido">

                            <h1>Información de contacto</h1>
                            <article id="contacto">

                                <table>
                                    <tr>
                                        <th class="celdasContacto">
                                            <h3>Empresa</h3>
                                        </th>
                                        <th class="celdasContacto">
                                            <h3>Teléfono</h3>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td class="celdasContacto">
                                            <xsl:value-of select="/ite/empresa" />
                                        </td>
                                        <td class="celdasContacto">
                                            <xsl:value-of select="/ite/telefono" />
                                        </td>
                                    </tr>
                                </table>
                            </article>

                            <h1>Nuestro equipo</h1>
                            <article id="personal">


                                <div id="director">
                                    <h3>Director</h3>
                                    <h4>Nombre </h4>
                                    <p>
                                        <xsl:value-of select="/ite/director/nombre" />
                                    </p>
                                    <h4>Despacho </h4>
                                    <p>
                                        <xsl:value-of select="/ite/director/despacho" />
                                    </p>
                                </div>

                                <div id="jestudios">
                                    <h3>Jefe de Estudios</h3>
                                    <h4>Nombre </h4>
                                    <p>
                                        <xsl:value-of select="/ite/jefe_estudios/nombre" />
                                    </p>
                                    <h4>Despacho </h4>
                                    <p>
                                        <xsl:value-of select="/ite/jefe_estudios/despacho" />
                                    </p>
                                </div>

                                <div id="profesores">
                                    <h3>Profesores</h3>
                                    <table id="proftable">
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
                                </div>
                            </article>

                            <h1>Ciclos</h1>
                            <article id="ciclos">

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
                            </article>

                            <h1>Formulario de contacto</h1>
                            <form>
                                <label for="nombre">Nombre:</label>
                                <input type="text" id="nombre" name="nombre" placeholder="Nombre"/>

                                <label for="email">Email:</label>
                                <input type="email" id="email" name="email" placeholder="Email"/>

                                <label for="mensaje">Mensaje:</label>
                                <textarea id="mensaje" name="mensaje" placeholder="Déjenos su mensaje..."></textarea>

                                <div id="submit">
                                    <input type="submit" value="Enviar"/>
                                </div>
                            </form>

                        </div>
                    </main>

                    <footer>
                        <ul>
                            <li>
                                <a href="{/ite/@web}">
                                    <img src="img/logo2.png" />
                                </a>
                            </li>
                            <li>
                                <a href="{/ite/@web}">
                                    <img src="img/logo2.png" />
                                </a>
                            </li>
                            <li>
                                <a href="{/ite/@web}">
                                    <img src="img/logo2.png" />
                                </a>
                            </li>
                            <li>
                                <a href="{/ite/@web}">
                                    <img src="img/logo2.png" />
                                </a>
                            </li>
                        </ul>
                    </footer>
                </div>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>