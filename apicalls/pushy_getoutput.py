from chef import autoconfigure, Node
import sys

import requests
from requests.packages.urllib3.exceptions import InsecureRequestWarning

requests.packages.urllib3.disable_warnings(InsecureRequestWarning)

ID=sys.argv[1]
node=sys.argv[2]
print ID
print node
api = autoconfigure()
headers={
"Accept": "application/octet-stream",
"content-type": "application/octet-stream",
"Accept-Encoding": "gzip;q=1.0,deflate;q=0.6,identity;q=0.3"
}
path='/pushy/jobs/'+ID+'/output/'+node
print "STDOUT:\n"+api.api_request('GET', path+"/stdout", headers)
print "\nSTDERR:\n"+api.api_request('GET', path+"/stderr", headers)

