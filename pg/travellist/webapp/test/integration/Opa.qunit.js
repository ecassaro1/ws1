sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ec/travellist/travellist/test/integration/pages/MainListReport' ,
        'ec/travellist/travellist/test/integration/pages/MainObjectPage',
        'ec/travellist/travellist/test/integration/OpaJourney'
    ],
    function(JourneyRunner, MainListReport, MainObjectPage, Journey) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ec/travellist/travellist') + '/index.html'
        });

        
        JourneyRunner.run(
            {
                pages: { onTheMainPage: MainListReport, onTheDetailPage: MainObjectPage }
            },
            Journey.run
        );
        
    }
);