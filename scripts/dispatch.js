const http = require('https');
const querystring = require('querystring');

var options = {
    host: 'api.github.com',
    port: 443,
    path: '/repos/darklast980/infra-valid/dispatches',
    method: 'POST',
    headers: {
        'Accept': 'application/vnd.github.v3+json',
        'Authorization': `token ${process.env.AUTH_TOKEN}`
    }
}


const request = http.request(options, response => {
    response.on('data', function (chunk) {
        process.stdout.write(chunk);
    });
});

request.on('error', (e) => {
    console.error(e);
});

request.write(querystring.stringify({
    event_type: 'build'
}));

request.end();