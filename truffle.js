module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // for more about customizing your Truffle configuration!
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
        // the tutorial assumes the the Ganache app, but we use cli
        // those settings work with `ganache-cli`
      network_id: "*" // Match any network id
    }
  }
};
