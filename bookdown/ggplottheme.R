vision<-theme_bw()+
  theme(
    #####EJES
    axis.line =   element_line(colour = "black", size = 0.5),#líneas de los ejes
    axis.text.x = element_text(colour = "gray10",size = 8 ,hjust = 0.5, vjust = 0.5),#Número del eje x
    axis.text.y = element_text(colour = "gray10",size = 8,  hjust = 0.5, vjust = 0.5),#Número del eje y
    axis.ticks =  element_line(colour = "black", size = 0.1), #Lineas de los números en los ejes
    axis.title.x = element_text(face="plain", colour = "black",size = 12, vjust = 1), #Titulo del eje x
    axis.title.y = element_text(face="plain", colour = "black",size = 12, angle = 90, vjust = 0.5),#Título del eje y 
    axis.ticks.length = unit(0.3, "lines"), #tamaño de la linea de los números de los ejes
    #####FONDO
    panel.background =  element_rect(fill = "gray95", colour = NA), #fondo
    panel.border =      element_rect(fill = NA, colour=NA), #Lienas de los bordes
    panel.grid.major =  element_line(colour = "white", size = 0.2),#Lineas de los número de los ejes
    panel.grid.minor =  element_line(colour = "gray98", size = 0.5),#lineas medias entre los números de los ejes
    #####    
    strip.background =  element_rect(fill = "blue", colour = NA), 
    strip.text.x = element_text(size = 12),
    strip.text.y = element_text(size = 20, angle = -90),
    ####Caracteristicas de fondo de la imagen
    plot.background = element_rect(colour = NA, fill = NA),#Color del borde y color de fondo.
    plot.title = element_text(colour="black",size = 18, face = "bold", hjust = 0.5, vjust = 0.5), #Título de la imagen
    plot.margin = unit(c(0.5, 1, 1, 0.5), "lines"), #Margen de la imagen con los extremos.
    plot.subtitle = element_text(colour="black",size = 12, face = "plain", hjust = 0, vjust = 0.5), #subtítulo
    plot.caption =element_text(face="italic", colour = "gray70",size = 8, vjust = 0, hjust = 1),
    ####Leyenda
    legend.background = element_rect(colour=NA), 
    legend.key =        element_rect(fill = "gray98", colour = NA, size = 0.25),
    legend.key.size =   unit(1.2, "lines"),
    legend.text =       element_text(size = 8),
    legend.title =      element_text(size = 8, face = "plain", hjust = 0.5),
    legend.position =   "right"
)
