import logging
import socket
import json
import datetime
import logging.handlers

logging.basicConfig(format='%(message)s', level=logging.INFO)
mylogger = logging.getLogger('myLogger')
handler = logging.handlers.RotatingFileHandler(
              '/tmp/myapp.log', maxBytes=500, backupCount=3)
mylogger.addHandler(handler)

message = {
		"app": "example_logger.py",
		"event_time": datetime.datetime.now().isoformat(),
        "host_name": socket.gethostname(),
		"log_level": "WARNING",
		"log_msg": "some message"
}


#counter for log rotation test
#random double
#later for aggregation

mylogger.info(json.dumps(message))
