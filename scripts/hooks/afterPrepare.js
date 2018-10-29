(function() {
  // properties

  const configPreferences = require("../npm/processConfigXml.js");
  const androidManifest = require("../android/updateAndroidManifest.js");
  const ANDROID = "android";

  // entry
  module.exports = run;

  // builds after platform config
  function run(context) {
    const preferences = configPreferences.read(context);
    const platforms = context.opts.cordova.platforms;
    console.log("afterPrepare");

    platforms.forEach(platform => {
      if (platform === ANDROID) {
        androidManifest.writePreferences(context, preferences);
      }
    });
  }
})();
