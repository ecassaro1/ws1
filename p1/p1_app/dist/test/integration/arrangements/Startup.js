sap.ui.define(["sap/ui/test/Opa5","sap/ui/core/routing/HashChanger","p1_app/p1_app/test/flpSandbox","sap/ui/fl/FakeLrepConnectorLocalStorage"],function(t,a,e,i){"use strict";return t.extend("p1_app.p1_app.test.integration.arrangements.Startup",{iStartMyFLPApp:function(t){var n=t||{};n.delay=n.delay||1;var p=[];p.push(e.init());this.iWaitForPromise(Promise.all(p));i.enableFakeConnector();this.waitFor({autoWait:n?n.autoWait:true,success:function(){(new a).setHash(n.intent+(n.hash?"&/"+n.hash:""))}})}})});