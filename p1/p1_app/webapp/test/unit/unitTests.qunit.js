/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"p1_app/p1_app/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});
