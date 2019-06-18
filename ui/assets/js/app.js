// pull in desired CSS/SASS files
require('../css/app.scss');

// inject bundled Elm app into div#main
var Elm = require('../elm/Main');
Elm.Elm.Main.init({ node: document.getElementById('main'), flags: ""});
