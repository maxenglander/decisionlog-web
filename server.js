var sys = require("sys"),
    http = require("http"),
    fs = require("fs"),
    path = require("path"),
    url = require("url"),
    filesys = require("fs");

http.createServer(function(request,response){
    var pathname = url.parse(request.url).pathname;
    if(pathname == '' || pathname == '/') {
        pathname = '/index.html';
    }
    var full_path = path.join(process.cwd(), pathname);
    fs.exists(full_path, function(exists){
        if(!exists){
            response.writeHeader(404, {"Content-Type": "text/plain"});  
            response.write("404 Not Found\n");  
            response.end();
        } else {
            filesys.readFile(full_path, "binary", function(err, file) {  
                if(err) {  
                    response.writeHeader(500, {"Content-Type": "text/plain"});  
                    response.write(err + "\n");  
                    response.end();  
                } else {
                    response.writeHeader(200);  
                    response.write(file, "binary");  
                    response.end();
                }
            });
        }
    });
}).listen(8080);
