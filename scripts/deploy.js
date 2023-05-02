
const hre = require("hardhat");

async function main() {
 const Lock = await hre.ethers.getContractFactory("Election");
 const lock = await Lock.deploy();
 await lock.deployed();

  console.log(
    `Lock deployed to ${lock.address}`
  );
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});


//0x79ce44C93756b1dF90582c04e72413224Ca7b7a3