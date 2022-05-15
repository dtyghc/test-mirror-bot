FROM anasty17/mltb:latest

#clonning repo 
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

CMD ["bash", "start.sh"]
