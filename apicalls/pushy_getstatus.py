from chef import autoconfigure, Node
import sys

# Gets rid of warnings about ignoring the ssl cert
import requests
from requests.packages.urllib3.exceptions import InsecureRequestWarning
requests.packages.urllib3.disable_warnings(InsecureRequestWarning)

ID=sys.argv[1]
api = autoconfigure()
headers={
}
path='/pushy/jobs/'+ID
print "JOB STATUS:\n"+api.api_request('GET', path, headers)

