FROM golang

RUN apt update && apt install -y \
    curl \
    unzip \
  && mkdir -p /go/src/github.com/hashicorp/hcl/ \
  && cd /go/src/github.com/hashicorp/hcl/ \
  && curl -LsO https://github.com/hashicorp/hcl/archive/hcl2.zip \
  && unzip -qq hcl2.zip \
  && mv hcl-hcl2 v2 \
  && go get github.com/apparentlymart/terraform-clean-syntax \
  && makedir -p /code

CMD [ "terraform-clean-syntax", "/code" ]
