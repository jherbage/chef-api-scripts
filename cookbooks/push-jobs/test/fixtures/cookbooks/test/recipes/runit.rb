# we need a fake pem file or push-jobs won't start
unless platform?('windows')
  directory '/etc/chef'

  file '/etc/chef/client.pem' do
    content '-----BEGIN RSA PRIVATE KEY-----\nMIIEowIBAAKCAQEAsFE0ic17WVkmCaAGPGqjuKig/K0Vs5gj93U9RR6Xi0VKyBuU\nsGsiffqLVtVDCOvAAqBh7cr1Lks3RkSV3/nxl+z95omAcDD+kaRVhzb7srx6umPd\nKgF/dt5vN9JYLsfieP6aB5LUnFMI7WrT+CtcniTkKQa1XkJY3vaPWxkmGz+Wt7nQ\nAW/y167nFrjM0BO+APJUYDsGKsQOipzn28WaTzdCqmgfkXOQv0zcc9nz1huuvyIJ\nc5FlgvBoRU4AkSANe33wW0HSnmOFAugbUcYbsVyD/RKgOELm3hQ3/QwQCw3GELUr\nnQH2kt5GR8vzy1sRPpvZrrRnJLdncbcnDl/4RwIDAQABAoIBAA+nBdz96udhrKjK\nFgOjC+nGvpPv4a9R4E+Fjuzl7Fomyp69JBQNTsCUT25j/FF8bE1PY6IylFWJw9xv\nFkcN706ncVrX9hj/oHnZduZMEUgqx1Joryedfm1VDdaMy9tLT2WiZJYriMhf7rj0\n9OBhKRW4/LBPsiYuCamxhcR2lRVyB/lUTWKV3pIjs3swFXIcrDPtdKUCP6DI9glS\njiKAMremydUSXkv5LNLKeWAtim+qnpo7JBp0hvTyha1ZA/vLgthPL4EBsaZWaJ9W\nwaSSaAEDRMDcNQvXLH/1juXsf+F4Sil65SH1Dph/+Jlbd00V2ptAmdV9SXZpKUGx\nmwtOhcECgYEA2fraHykOwCoI0YESe57xxiQqcIyhKv/CQU2cysOphPd/R3aYGXg6\nIRimFgiUlTHmM4UzNrM4cUWAiK5bOS2wMDZTmjCoUhx0Wtdu+uXD8RCa43aIb+v6\n2r5TMKHAlIpnMfKkZJTyEEgV+Y2eH8v4T45awqmep5G9bRE8x8QXEJECgYEAzxIM\nXWErM47V+Xj63CPARXRWKkvciMB/bvmQdkhSED6/ZW2Il+dwI4e0lYx+5X8dATeR\ncAewoXPYey8pok2492o2k8KHFJ1jdk2lQsXE5CnPA4XhquI6et6hIk7puFBUZnRD\nAAUPyYjjLiHBYTe+pSB+HbQ/xZJVQGOyOLRvZ1cCgYAri3UvbGBJ+xuv3nz2vRXH\nY0onGbDIijcgHIUJ7HRc36RJfmN8EwxpuCbVl/k2pLU77YwBjWPlHOFEbLBEh9/+\ngZvJ3ZaCcLS9wPOmo2e1LIAEmJVA5n9CW2r6+BUkl1FuJO66ORbyMbRSGfxQlcqQ\n+fsfkArlprOUqjDeJ0oEQQKBgC7pGNIC1GWuwzzsMnCyzLkvXOHiI8j7SyNZ+GdD\nhQvXG0cgJGS9csMp2DhVBt55CJog+5rUsygwdWeazKTPVMsATfL1i+KYsVK4zmqt\nISjLa/GRYAl1jOgPDZQXKo2t7SD0z8TuYKA4mbb2wLeEiHUiQk/6aMQanaOjsll0\nTxSrAoGBAM7vK94mNtA47yq3/9S6Tz7JnV+C+0ZgHB0OwNZWxWw38wyvUJ0sdz2+\njv7rrfQIDmFyrMBljofCDQedxEZQhpL/3ZjI4mf9na5QyO9uKMzFBKi+BtqcBX68\nJezgEUCT6biuQdaVJbYsBQTC6DPb9aXGgucjlnItY46DsectM2GJ\n-----END RSA PRIVATE KEY-----'
  end
end

push_jobs_service_runit 'service' do
  action [:start, :enable]
end
