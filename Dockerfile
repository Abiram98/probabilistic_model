FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install pip -y
#RUN apt-get install texlive texlive-latex-extra pandoc -y
RUN pip install notebook
RUN apt install pandoc -y
RUN apt-get install texlive-xetex -y 
#texlive-fonts-recommended texlive-plain-generic -y
RUN apt install graphviz
WORKDIR /all
COPY dataset /all/dataset
EXPOSE 8888
CMD ["jupyter", "notebook", "--allow-root"] 
