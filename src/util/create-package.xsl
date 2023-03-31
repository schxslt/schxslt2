<xsl:transform version="3.0" expand-text="yes"
               xmlns:alias="http://www.w3.org/1999/XSL/TransformAlias"
               xmlns:schxslt="tag:dmaus@dmaus.name,2023:Schematron:SchXslt"
               xmlns:xs="http://www.w3.org/2001/XMLSchema"
               xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:mode on-no-match="shallow-copy"/>

  <xsl:namespace-alias result-prefix="xsl" stylesheet-prefix="alias"/>

  <xsl:param name="version" as="xs:string" required="yes"/>

  <xsl:template match="xsl:stylesheet | xsl:transform" as="element(xsl:package)">
    <alias:package name="tag:dmaus@dmaus.name,2023:Schematron:SchXslt" package-version="{$version}">
      <xsl:sequence select="@*"/>

      <alias:expose names="schxslt:transpile" component="template" visibility="final"/>
      <alias:expose names="*" component="*" visibility="private"/>

      <xsl:sequence select="node()"/>

    </alias:package>
  </xsl:template>

</xsl:transform>
