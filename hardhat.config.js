require("@nomiclabs/hardhat-waffle");
require('solidity-coverage');
//require('@openzeppelin/hardhat-upgrades');

/**
 * @type import('hardhat/config').HardhatUserConfig
 */

const ALCHEMY_API_KEY = "https://eth-rinkeby.alchemyapi.io/v2/_5QVXV_ygFJeaurW7DOS91fvJa64ufY-";
const RINKEBY_PRIVATE_KEY = "cd092112a556a2debb7de717d6ae346b9e03fba7bb766ed65f9d4def9026fb5b";

module.exports = {
  solidity: "0.8.10",
  networks: {
    rinkeby: {
      url: ALCHEMY_API_KEY,
      accounts: [`${RINKEBY_PRIVATE_KEY}`]
    }
  },
  plugins: ["solidity-coverage"]
};

0x61b2Ee77f43471eDa7A2A71471DF8658E6CAC65A


