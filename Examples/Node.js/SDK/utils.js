var path = require("path"),
    fs = require("fs"),
    StorageApi = require("asposestoragecloud"),
    ImagingApi = require("asposeimagingcloud")

var APP_SID = null,
    APP_KEY = null;

exports.storageApi = new StorageApi({
    "appSid": APP_SID,
    "apiKey": APP_KEY,
});

exports.imagingApi = new ImagingApi ({
    "appSid": APP_SID,
    "apiKey": APP_KEY,
});

exports.getPath = function(example, filename) {
    var name = path.basename(example, '.js');
    var pkg = path.basename(path.dirname(example));
    var r = path.dirname(path.dirname(path.dirname(path.dirname(example))))
    var datadir = path.join(r, 'data', pkg, name)
    if (fs.existsSync(datadir)) {
        console.info("Using data directory " + datadir);
    } else {
        fs.mkdirSync(datadir);
        console.info("Create data directory " + datadir);
    }

    if (filename) {
        return path.join(datadir, filename);
    } else {
        return datadir
    }
};
