sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'e1app/test/integration/pages/MainListReport' ,
        'e1app/test/integration/pages/MainObjectPage',
        'e1app/test/integration/OpaJourney'
    ],
    function(JourneyRunner, MainListReport, MainObjectPage, Journey) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('e1app') + '/index.html'
        });

        
        JourneyRunner.run(
            {
                pages: { onTheMainPage: MainListReport, onTheDetailPage: MainObjectPage }
            },
            Journey.run
        );
        
    }
);