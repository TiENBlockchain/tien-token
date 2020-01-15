const TiENToken = artifacts.require('TiENToken');

module.exports = function(deployer) {
  deployer.deploy(TiENToken, 'TiEN Token', 'TiEN', 18, 1000000000);
};
