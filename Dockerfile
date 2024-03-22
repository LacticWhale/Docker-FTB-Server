FROM openjdk:17-oracle

WORKDIR /minecraft-server

COPY --chown=1001:0 serverinstall_117_11766 .

RUN ./serverinstall_117_11766 --auto --nojava

RUN ./start.sh
RUN sed -i 's/eula=false/eula=true/g' eula.txt

CMD ./start.sh
