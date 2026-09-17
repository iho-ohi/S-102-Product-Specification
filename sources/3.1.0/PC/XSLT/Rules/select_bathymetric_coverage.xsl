<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
  <xsl:template name="select_bathymetric_coverage">
    <xsl:param name="viewingGroup"/>
    <!--  The viewing group  -->
    <xsl:param name="displayPlane"/>
    <!--  The display plane  -->
    <xsl:param name="drawingPriority"/>
	<coverageInstruction>
		<featureReference>
			<xsl:value-of select="@id"/>
		</featureReference>			
		<viewingGroup>
			<xsl:value-of select="$viewingGroup"/>
		</viewingGroup>
		<displayPlane>
			<xsl:value-of select="$displayPlane"/>
		</displayPlane>
		<drawingPriority>
			<xsl:value-of select="$drawingPriority"/>
		</drawingPriority>
		<coverageFill>
			<attributeCode>depth</attributeCode>
			<xsl:variable name="shallow" select="'true'"/>
			<lookup>
				<label>BathymetryCoverageDepth0</label>
				<range>
					<xsl:attribute name="upper">0</xsl:attribute>
					<xsl:attribute name="closure">ltSemiInterval</xsl:attribute>  
				</range>
				<color>
					<startColor>DEPIT</startColor>
				</color>
			</lookup>
			<xsl:choose>
				<xsl:when test="$FourShades = 'true'">
					<lookup>
						<label>BathymetryCoverageDepth1</label>
						<range>
							<xsl:attribute name="lower"><xsl:value-of select="$DeepContour"/></xsl:attribute>
							<xsl:attribute name="closure">geSemiInterval</xsl:attribute>  
						</range>
						<color>
							<startColor>DEPDW</startColor>
						</color>
					</lookup>
					<lookup>
						<label>BathymetryCoverageDepth2</label>
						<range>
							<xsl:attribute name="lower"><xsl:value-of select="$SafetyContour"/></xsl:attribute>
							<xsl:attribute name="upper"><xsl:value-of select="$DeepContour"/></xsl:attribute>
							<xsl:attribute name="closure">geLtInterval</xsl:attribute>  
						</range>
						<color>
							<startColor>DEPMD</startColor>
						</color>
					</lookup>
					<lookup>
						<label>BathymetryCoverageDepth3</label>
						<range>
							<xsl:attribute name="lower"><xsl:value-of select="$ShallowContour"/></xsl:attribute>
							<xsl:attribute name="upper"><xsl:value-of select="$SafetyContour"/></xsl:attribute>
							<xsl:attribute name="closure">geLtInterval</xsl:attribute>  
						</range>
						<color>
							<startColor>DEPMS</startColor>
						</color>
					</lookup>
					<lookup>
						<label>BathymetryCoverageDepth4</label>
						<range>
							<xsl:attribute name="lower">0</xsl:attribute>
							<xsl:attribute name="upper"><xsl:value-of select="$ShallowContour"/></xsl:attribute>
							<xsl:attribute name="closure">geLtInterval</xsl:attribute>  
						</range>
						<color>
							<startColor>DEPVS</startColor>
						</color>
					</lookup>
				</xsl:when>
				<xsl:otherwise>
					<lookup>
						<label>BathymetryCoverageDepth1</label>
						<range>
							<xsl:attribute name="lower"><xsl:value-of select="$SafetyContour"/></xsl:attribute>
							<xsl:attribute name="closure">geSemiInterval</xsl:attribute>  
						</range>
						<color>
							<startColor>DEPDW</startColor>
						</color>
					</lookup>
					<lookup>
						<label>BathymetryCoverageDepth2</label>
						<range>
							<xsl:attribute name="lower">0</xsl:attribute>
							<xsl:attribute name="upper"><xsl:value-of select="$SafetyContour"/></xsl:attribute>
							<xsl:attribute name="closure">geLtInterval</xsl:attribute>  
						</range>
						<color>
							<startColor>DEPVS</startColor>
						</color>
					</lookup>
				</xsl:otherwise>
			</xsl:choose>
		</coverageFill>	
	</coverageInstruction>	
  </xsl:template>
</xsl:transform>
