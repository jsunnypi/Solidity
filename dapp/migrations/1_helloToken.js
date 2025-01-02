// HelloToken.sol 파일을 가져와서 HelloToken이라는 변수에 담기
const HelloToken = artifacts.require("HelloToken"); // .sol 생략

module.exports = function(deployer){
    deployer.deploy(HelloToken);
}
