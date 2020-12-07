To compile contracts use `npm run compile`
To recompile contracts from scratch use `npm run clean` and then `npm run compile`
To go inside Hardhat console use `npm run console`

Inside console:

- Use `let testArtifact = artifacts.require('contractName')` to get artifact for the contract;
- Use `let testContractInstanceDeployed = await testArtifact.new()` to deploy new instance of the contract (inside new() - you should provide constructor parameters if it's required);
- Use `await testContractInstanceDeployed.sayHello()`, `await testContractInstanceDeployed.text()` to call functions from deployed contracts