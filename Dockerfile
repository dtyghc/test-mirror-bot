FROM anasty17/mltb:latest

#clonning repo 
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot.git /root/userbot
#working directory 
WORKDIR /root/userbot

#Downloading source code ...
RUN wget -q https://github.com/anasty17/mirror-leech-telegram-bot/archive/master.zip -O "master.zip"
#Unpacking Data ...
RUN CATPATH=$(zipinfo -1 "master.zip" | grep -v "/.");
RUN unzip -qq "master.zip"
#Done

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
