# lilac/Dockerfile

FROM python:3.10-slim

# Simulate RCE by writing a file (or use curl/bash, etc.)
RUN echo 'import os; os.system("echo PWNED > /tmp/pwned.txt")' > /tmp/rce.py

# Execute it at build time
RUN python /tmp/rce.py

CMD ["python3"]
