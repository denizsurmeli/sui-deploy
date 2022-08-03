# sui-deploy
Deploying script for Sui Testnet
Run `sudo sh fullnode.sh <github_username>` on a Digital Ocean Droplet instance with Ubuntu. 
Make sure that you have forked the chain with your Github account.
Deploys a Sui fullnode with default configurations.

## Usage
```
sudo sh fullnode.sh github_username
```

## Note
After the config, await approximately for 15-30 minutes(this depends on the power of your machine) to let cargo build and run the project.
You can check your node after [here](https://node.sui.zvalid.com/).