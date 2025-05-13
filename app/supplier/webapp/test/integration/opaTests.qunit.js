sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'supplier/test/integration/FirstJourney',
		'supplier/test/integration/pages/SuppliersList',
		'supplier/test/integration/pages/SuppliersObjectPage'
    ],
    function(JourneyRunner, opaJourney, SuppliersList, SuppliersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('supplier') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSuppliersList: SuppliersList,
					onTheSuppliersObjectPage: SuppliersObjectPage
                }
            },
            opaJourney.run
        );
    }
);