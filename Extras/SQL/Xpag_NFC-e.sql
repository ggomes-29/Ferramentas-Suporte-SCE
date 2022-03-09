UPDATE NFe
SET xmlprocnfe = REPLACE(xmlprocnfe,'<xPag>Diversos</xPag><xPag>Diversos</xPag>','<xPag>Diversos</xPag>')
where xmlprocnfe like N'%<xPag>Diversos</xPag><xPag>Diversos</xPag>%'