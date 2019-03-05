#! /usr/bin/env python3

import subprocess as sbp
import os

domain_host = '10.10.11.122'
returned_code = sbp.call(['ping', '-c', '3', domain_host])
if returned_code != 0:
    os.system('reboot && exit')
