var Voting = artifacts.require("./Voting.sol");

contract("Voting", function(accounts) {
  it("initializes with two candidates", function() {
    return Voting.deployed().then(function(instance) {
      return instance.candidatesCount();
    }).then(function(count) {
      assert.equal(count, 2);
    });
  });
});
