<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">

        <edix>
            <datos>
                <nombre>
                    <xsl:value-of select="ite/@nombre"/>
                </nombre>
                <empresa>
                    <xsl:value-of select="ite/empresa"/>
                </empresa>
                <telefono>
                    <xsl:value-of select="ite/telefono"/>
                </telefono>
                <web>
                    <xsl:value-of select="ite/@web"/>
                </web>
            </datos>

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
                <xsl:for-each select="ite/ciclos">
                    <ciclo>
                        <xsl:attribute name="id">
                            <xsl:value-of select="@id"/>
                        </xsl:attribute>
                        <xsl:attribute name="grado">
                            <xsl:value-of select="grado"/>
                        </xsl:attribute>
                        <año>
                            <xsl:value-of select="@año"/>
                        </año>
                        <nombre>
                            <xsl:value-of select="nombre"/>
                        </nombre>
                    </ciclo>
                </xsl:for-each>
            </ciclosOfertados>

        </edix>
    </xsl:template>
</xsl:stylesheet>