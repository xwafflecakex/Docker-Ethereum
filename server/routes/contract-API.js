/* 
 To compile and deploy the contract we have created APIs instead of manually compiling and deploying it on the network.
 If you remember, our Message smart contract’s constructor requires an initial message. To keep it simple, 
 by default we’re setting initial message as Hello World!.
 You can change it in the deploy router.
*/
const express = require("express");
const router = express.Router();
const compile = require("../../ethereum/compile");
const deploy = require("../../ethereum/deploy");

// Compile the contract
router.post("/compile", async function(req, res, next) {
    const result = compile();
    res.send(result); 
});

// Deploy the contract
router.post("/deploy", async function(req, res, next) {
    const result = await deploy("Hello World! Dapp Time!");
    res.send(JSON.parse(result).address); 
});

module.exports = router;