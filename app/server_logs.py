#!/usr/bin/env python3

import http.server
import socketserver

PORT = 8000  # Choose your port

Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Serving logs at http://localhost:{PORT}")
    httpd.serve_forever()
