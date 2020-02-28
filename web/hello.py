def wsgiapp(environ, start_response):
    data = [_ + '\n' for _ in environ['QUERY_STRING'].split('&')]
    start_response('200 OK', [("Content-Type", "text/plain")])
    return data
