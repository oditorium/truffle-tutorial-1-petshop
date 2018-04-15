# Truffle Tutorial 1: Pet Shop

That's a run through of the
[Pet Shop Tutorial](http://truffleframework.com/tutorials/pet-shop)
on the Truffle main site.

_Note: this file only appears half way through, and up to now
it is called `progress.md`. Sorry about that._


## Progress

Running `truffle test`

    Using network 'development'.

    Compiling ./contracts/Adoptions.sol...
    Compiling ./test/TestAdoption.sol...
    Compiling truffle/Assert.sol...
    Compiling truffle/DeployedAddresses.sol...

    Compilation warnings encountered:

    truffle/Assert.sol:1563:9: Warning: Use of the "var" keyword is deprecated.
            var nstr = _itoa(value, 10);
            ^------^
    ,truffle/Assert.sol:1580:9: Warning: Use of the "var" keyword is deprecated.
            var nstr = _utoa(value, 10);
            ^------^
    ,truffle/Assert.sol:1597:9: Warning: Use of the "var" keyword is deprecated.
            var nstr = _ltoa(value);
            ^------^
    ,truffle/Assert.sol:1347:13: Warning: Invoking events without "emit" prefix is deprecated.
                TestEvent(true, "");
                ^-----------------^
    ,truffle/Assert.sol:1349:13: Warning: Invoking events without "emit" prefix is deprecated.
                TestEvent(false, message);
                ^-----------------------^

Now installing MetaMask

- use the passphrase from ganache-cli
- connect to port 8545
- if working remotely, ensure port forwarding is enabled

Now running the server `npm run dev`

- the site is running in :3000
- browsersync is running on :3001

FIN
