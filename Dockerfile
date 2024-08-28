FROM ruby:3.1.3

WORKDIR /app

RUN curl -sL https://deb.nodesource.com/setup_20.x | bash -

RUN apt-get update && \
    apt-get install -y nodejs && \
    apt-get install -y openjdk-11-jdk       

RUN gem install jekyll

RUN npm update

RUN npm install -g npm@10.8.1

RUN npm install -g fsh-sushi@3.11.0

RUN echo && sushi --version

RUN mkdir -p /root/.fhir/packages

COPY . /app

RUN ./_updatePublisher.sh -y

RUN mkdir -p /root/.fhir/packages/br.gov.saude.fhir.terminologia#1.0.0

RUN wget -P /root/.fhir/packages/br.gov.saude.fhir.terminologia#1.0.0 https://terminologia.saude.gov.br/fhir/package.tgz

RUN tar -xvzf /root/.fhir/packages/br.gov.saude.fhir.terminologia#1.0.0/package.tgz -C /root/.fhir/packages/br.gov.saude.fhir.terminologia#1.0.0

RUN mkdir -p /root/.fhir/packages/br.gov.saude.fhir.ips#1.0.0

RUN wget -P /root/.fhir/packages/br.gov.saude.fhir.ips#1.0.0 https://ips.saude.gov.br/fhir/package.tgz

RUN tar -xvzf /root/.fhir/packages/br.gov.saude.fhir.ips#1.0.0/package.tgz -C /root/.fhir/packages/br.gov.saude.fhir.ips#1.0.0

CMD ["./_genonce.sh"]