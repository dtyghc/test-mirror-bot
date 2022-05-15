FROM anasty17/mltb:latest

#clonning repo 
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot.git /root/userbot
#working directory 
WORKDIR /root/userbot

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
