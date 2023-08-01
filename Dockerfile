FROM asaaqaa/ASAAQALIAS:alpine

#clonning repo 
RUN git clone https://github.com/asaaqaa/ASAAQALIAS/tree/main.git /root/AsAs
#working directory 
WORKDIR /root/AsAs

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/AsAs/bin:$PATH"

CMD ["python3","-m","AsAs"]
