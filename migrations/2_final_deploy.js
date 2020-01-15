const TiENToken = artifacts.require("TiENToken");

module.exports = function(deployer) {
  deployer.deploy(TiENToken,"Tien Token","TIEN",18,1000000000000000000000000000);
};