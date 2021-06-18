sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var AdditionalCustomListReportDefinition = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'e1app',
            componentId: 'Entity1List',
            entitySet: 'Entity1'
        },
        AdditionalCustomListReportDefinition
    );
});