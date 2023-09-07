local id =525
addEventHandler('onClientResourceStart',resourceRoot,function () 
txd = engineLoadTXD( 'car.txd' ) 
engineImportTXD( txd, id) 
dff = engineLoadDFF('car.dff', id) 
engineReplaceModel( dff, id)
end)
