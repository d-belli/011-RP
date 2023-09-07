txd = engineLoadTXD( '50.txd' )
engineImportTXD( txd, 50 )
dff = engineLoadDFF('50.dff', 50)
engineReplaceModel( dff, 50 )