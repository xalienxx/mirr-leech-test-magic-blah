FROM anasty17/mltb:latest

WORKDIR /usr/src/king
RUN chmod 777 /usr/src/king

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "lol.sh"]
