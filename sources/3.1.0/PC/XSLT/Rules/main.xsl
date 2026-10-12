<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:decimal-format name="dformat" decimal-separator="." grouping-separator=","/>

	<!--Include templates/rules-->
	<xsl:include href="BathymetryCoverage.xsl"/> 
	<xsl:include href="select_bathymetric_coverage.xsl"/> 
	<xsl:include href="QualityOfBathymetryCoverage.xsl"/> 
	<xsl:include href="select_quality_coverage.xsl"/> 

	<xsl:param name="DeepContour" select="30.0"/>
	<xsl:param name="ShallowContour" select="2.0"/>
	<xsl:param name="SafetyContour" select="30.0"/>
	<xsl:param name="FourShades" select="false"/>

	<xsl:template match="/">
		<p:displayList xmlns:p="http://www.iho.int/S100Presentation/5.2">
			<xsl:apply-templates select="Dataset/Features/*"/>
		</p:displayList>
	</xsl:template>
</xsl:transform>
