from chef import autoconfigure, Node

file_lines=[
'#!/bin/bash',
'echo "Hello, I am `whoami` and I like $FOO"',
'exit 0'
]
data={
 "command": "bash script",
  "run_timeout": 10,
  "nodes": ["chefnode"],
  "user": "vagrant",
  "env": {
    "FOO": "bears"
  },
  "file": "raw:"+"\n".join(file_lines),
  "capture_output": True
}
headers={
}


api = autoconfigure()
print api.api_request('POST', '/pushy/jobs', headers, data)
