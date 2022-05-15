FROM anasty17/mltb:latest


#working directory 
WORKDIR /root/userbot


COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
