sap.ui.define(["sap/ui/test/Opa5","sap/ui/core/routing/HashChanger","sap/ui/dom/includeStylesheet"],function(t,e,n){"use strict";function s(){n(sap.ui.require.toUrl("sap/ui/test/OpaCss.css"));var t=document.body;t.style.width="80%";t.style.left="20%";t.style.position="absolute";if(!t.classList.contains("sapUiOpaBodyComponent")){t.classList.add("sapUiOpaBodyComponent")}var e=document.getElementById("content");if(!e){e=document.createElement("div");e.setAttribute("id","content");t.appendChild(e)}e.style.width="80%"}document.readyState==="loading"?document.addEventListener("DOMContentLoaded",s):s();return t.extend("p1_app.p1_app.test.integration.arrangements.FLP",{iLeaveMyFLPApp:function(){return this.waitFor({success:function(){(new e).setHash("Shell-home")}})}})});