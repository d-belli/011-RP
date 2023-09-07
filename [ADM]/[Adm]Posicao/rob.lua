function teste (source)
x, y, z = getElementPosition (source)
xr, yr, zr = getElementRotation (source)
Dimension = getElementDimension (source)
Interior = getElementDimension (source)

outputChatBox ( "Posição :"..x..","..y..","..z, source, 255, 255, 255, true )
outputChatBox ( "Rotação :"..xr..","..yr..","..zr, source, 255, 255, 255, true )
outputChatBox ( "Dimension :"..Dimension, source, 255, 255, 255, true )
outputChatBox ( "Interior :"..Interior, source, 255, 255, 255, true )
end
addCommandHandler ("ps" ,teste)