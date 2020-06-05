sap.ui.define(["./BaseController","sap/ui/model/json/JSONModel","sap/ui/core/routing/History","../model/formatter"],function(e,t,n,i){"use strict";return e.extend("p1_app.p1_app.controller.Object",{formatter:i,onInit:function(){var e=new t({busy:true,delay:0});this.getRouter().getRoute("object").attachPatternMatched(this._onObjectMatched,this);this.setModel(e,"objectView")},onShareInJamPress:function(){var e=this.getModel("objectView"),t=sap.ui.getCore().createComponent({name:"sap.collaboration.components.fiori.sharing.dialog",settings:{object:{id:location.href,share:e.getProperty("/shareOnJamTitle")}}});t.open()},_onObjectMatched:function(e){var t=e.getParameter("arguments").objectId;this._bindView("/Ent1"+t)},_bindView:function(e){var t=this.getModel("objectView");this.getView().bindElement({path:e,events:{change:this._onBindingChange.bind(this),dataRequested:function(){t.setProperty("/busy",true)},dataReceived:function(){t.setProperty("/busy",false)}}})},_onBindingChange:function(){var e=this.getView(),t=this.getModel("objectView"),n=e.getElementBinding();if(!n.getBoundContext()){this.getRouter().getTargets().display("objectNotFound");return}var i=this.getResourceBundle();e.getBindingContext().requestObject().then(function(e){var n=e.id,o=e.description;this.addHistoryEntry({title:this.getResourceBundle().getText("objectTitle")+" - "+o,icon:"sap-icon://enter-more",intent:"#p1_app-display&/Ent1("+n+")"});t.setProperty("/busy",false);t.setProperty("/saveAsTileTitle",i.getText("saveAsTileTitle",[o]));t.setProperty("/shareOnJamTitle",o);t.setProperty("/shareSendEmailSubject",i.getText("shareSendEmailObjectSubject",[n]));t.setProperty("/shareSendEmailMessage",i.getText("shareSendEmailObjectMessage",[o,n,location.href]))}.bind(this))}})});