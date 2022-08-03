cd ~
apt-get update \
    && DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y --no-install-recommends \
    tzdata \
    git \
    ca-certificates \
    curl \
    build-essential \
    libssl-dev \
    pkg-config \
    libclang-dev \
    cmake \

snap install rustup --classic
git clone https://github.com/$1/sui.git
cd sui
git remote add upstream https://github.com/MystenLabs/sui
git fetch upstream
git checkout --track upstream/devnet
cp crates/sui-config/data/fullnode-template.yaml fullnode.yaml
curl -fLJO https://github.com/MystenLabs/sui-genesis/raw/main/devnet/genesis.blob
rm fullnode.yaml
mv ../sui-deploy/fullnode.yaml .
mv ../sui-deploy/node.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start node.service
sudo systemctl status node.service