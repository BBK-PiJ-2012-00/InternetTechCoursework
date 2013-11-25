<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<xsl:variable name="uppercase" select=" 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' " />
<xsl:variable name="lowercase" select=" 'abcdefghijklmnopqrstuvwxyz' " />


	<xsl:template match="/">
		<html>
		
			<head>
				<title><xsl:value-of select="name(/*)" /></title> <!-- Title of html page is top element -->
				<link rel="stylesheet" type="text/css" href="CSSstylesheet.css" />
			</head>
			
			<body>
			
				<table border="1" id="embeddedTable">
					<tr id="headerTr">
						<xsl:for-each select="/*/*[1]/*" id="headers"> <!-- Picks out each child element
					 		of the first second-level element -->		 		
					 		<th><xsl:value-of select="translate(name(), $lowercase, $uppercase)" /></th><!-- Renders table headers
					 			to uppercase for increased clarity -->
						 </xsl:for-each>
					 </tr>
					 <xsl:for-each select="/*/*" id="tableRestrictions" ><!-- predicates restricting output belong here -->
					 	<tr id="awardTr">					 
					 		<xsl:for-each select="*" id="tableContents">
					 			<td id="embeddedTD">
					 				<xsl:value-of select="."/>
					 			</td>
					 		</xsl:for-each>					 		
					 	</tr>
					 </xsl:for-each>					 	
				</table>
					
			</body>
		</html>
		
	</xsl:template>       	
				
</xsl:stylesheet>

<!-- Anna Taylor, Internet & Web Technologies Coursework 1 -->

<!-- I confirm that this coursework submission is entirely my own work, except where explicitly 
stated otherwise. -->
	



