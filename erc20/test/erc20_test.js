const erc20 = artifacts.require('erc20');
let token;

contract('ERC20', (accounts) =>{
    const name = "JeongTae";
    const symbol = 'JT';
    const decimals = 18;
    const totalSupply = '10000000000000000000000000'

    beforeEach(async() =>{
        token = await erc20.new(name, symbol, decimals, totalSupply, {from: accounts[0]});
    });

    it('creation: initial balance', async() =>{
        const balance = await token.balanceOf.call(accounts[0]);
        assert.strictEqual(balance.toString(), totalSupply);
    });

    it('creation: initial name, symbol, decimals, totalSupply', async() =>{
        const _name = await token.name.call();
        assert.strictEqual(_name, name);

        const _symbol = await token.symbol.call();
        assert.strictEqual(_symbol, symbol);

        const _decimals = await token.decimals.call();
        assert.strictEqual(_decimals.toString(), decimals.toString());

        const _totalSupply = await token.totalSupply.call();
        assert.strictEqual(_totalSupply.toString(), totalSupply);
    });

    it('transfer: account[0] to accounts[1]', async() =>{
        const beforeBalance = await token.balanceOf.call(accounts[0]);
        const amount = 1000;
        await token.transfer(accounts[1], amount, {from: accounts[0]});

        const afterBalance0 = await token.balanceOf.call(accounts[0]);
        const afterBalance1 = await token.balanceOf.call(accounts[1]);

        assert.strictEqual(beforeBalance.toString(), totalSupply);
        assert.strictEqual(afterBalance0.toString(), "9999999999999999999999000");
        assert.strictEqual(afterBalance1.toString(), "1000");

    });
});