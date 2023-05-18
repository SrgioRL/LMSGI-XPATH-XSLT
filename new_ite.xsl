<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">

        <edix>
            <xsl:attribute name="empresa">
                <xsl:value-of select="ite/empresa"/>
            </xsl:attribute>
            <xsl:attribute name="telefono">
                <xsl:value-of select="ite/telefono"/>
            </xsl:attribute>
            <nombre>
                <xsl:value-of select="ite/@nombre"/>
            </nombre>
            <web>
                <xsl:value-of select="ite/@web"/>
            </web>


            <equipo>
                <direccion>
                    <directora>
                        <nombre>
                            <xsl:value-of select="ite/director/nombre"/>
                        </nombre>
                        <despacho>
                            <xsl:value-of select="ite/director/despacho"/>
                        </despacho>
                    </directora>
                    <jefe_estudios>
                        <nombre>
                            <xsl:value-of select="ite/jefe_estudios/nombre"/>
                        </nombre>
                        <despacho>
                            <xsl:value-of select="ite/jefe_estudios/despacho"/>
                        </despacho>
                    </jefe_estudios>
                </direccion>

                <profesorado>
                    <xsl:for-each select="ite/profesores/profesor">
                        <profesor>
                            <xsl:attribute name="id">
                                <xsl:value-of select="id"/>
                            </xsl:attribute>
                            <nombre>
                                <xsl:value-of select="nombre"/>
                            </nombre>
                        </profesor>
                    </xsl:for-each>
                </profesorado>
            </equipo>

            <ciclosOfertados>
                <xsl:for-each select="ite/ciclos/ciclo">
                    <ciclo>
                        <xsl:attribute name="id">
                            <xsl:value-of select="@id"/>
                        </xsl:attribute>
                        <xsl:attribute name="grado">
                            <xsl:value-of select="grado"/>
                        </xsl:attribute>
                        <nombre>
                            <xsl:value-of select="nombre"/>
                        </nombre>
                        <año>
                            <xsl:value-of select="decretoTitulo/@año"/>
                        </año>

                    </ciclo>
                </xsl:for-each>
            </ciclosOfertados>

        </edix>
    </xsl:template>
</xsl:stylesheet>