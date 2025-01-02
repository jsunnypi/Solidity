const HelloToken = artifacts.require("HelloToken");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("HelloToken", ()=>{
  it("Hello fuction call", async()=>{
    // web3에서 abi를 bytecode 코드로 함축하기
    let instance = await HelloToken.deployed();
    let result = instance.hello();
    console.log(`이것은 콘솔 로그입니다`, result);
    return result;

  })
});
