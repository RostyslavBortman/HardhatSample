require("@nomiclabs/hardhat-truffle5");
require("@nomiclabs/hardhat-web3");

// This is a sample Hardhat task. To learn how to create your own go to
// https://hardhat.org/guides/create-task.html
task("accounts", "Prints the list of accounts", async () => {
  const accounts = await ethers.getSigners();

  for (const account of accounts) {
    console.log(account.address);
  }
});


// You need to export an object to set up your config
// Go to https://hardhat.org/config/ to learn more

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: {
  	compilers: [
      {
        version: "0.6.12",
        settings: {
	      optimizer: {
	        enabled: true,
	        runs: 200
	      }
        }
      },
      {
        version: "0.7.3",
        settings: {
	      optimizer: {
	        enabled: true,
	        runs: 200
	      }
        }
      }
    ]
  },
  networks: {
    hardhat: {
    },
    rinkeby: {
      url: "https://kovan.infura.io/v3/6c7fceaca1a3433dad73cb537f87644b",
      accounts: ['b54af05e2e82eaf695857e0aa1a351792c1e98420885f09e405afea3aaa879b5']
    }
  },
};

