const BigNumber = web3.BigNumber;

const Token = artifacts.require('TiENToken');

require('chai')
  .use(require('chai-bignumber').default(BigNumber))
  .should();

contract('Token', accounts => {
  const _name = 'TiEN Token';
  const _symbol = 'TiEN';
  const _decimals = 18;
  const _cap = 1000000000;

  beforeEach(async function() {
    this.token = await Token.new(_name, _symbol, _decimals, _cap);
  });

  describe('token attributes', function() {
    it('has the correct name', async function() {
      const name = await this.token.name();
      name.should.equal(_name);
    });

    it('has the correct symbol', async function() {
      const symbol = await this.token.symbol();
      symbol.should.equal(_symbol);
    });

    it('has the correct decimals', async function() {
      const decimals = await this.token.decimals();
      decimals.should.be.bignumber.equal(_decimals);
    });

    it('has the correct total supply', async function() {
      const cap = await this.token.cap();
      cap.should.be.bignumber.equal(_cap);
    });
  });
});
