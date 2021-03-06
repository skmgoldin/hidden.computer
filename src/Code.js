import React, { Component } from "react";

class Code extends Component {
  render() {
    return (
      <div className="code">
        <div>
          <h3>
            <a href="http://www.github.com/skmgoldin/tcr">tcr</a>
          </h3>
          <div>
            <p>
              A string-keyed token-curated registry. This repo will track
              developments in the Token-Curated Registries paper series until
              2.0 TCRs. Originally developed by for the AdChain project by
              ConsenSys interns working under my direction, this is now the
              canonical implementation of a generic token-curated registry, and
              is actively developed.
            </p>
          </div>
        </div>
        <div>
          <h3>
            <a href="http://www.github.com/consensys/plcrvoting">PLCRVoting</a>
          </h3>
          <div>
            <p>
              Partial-lock commit/reveal (PLCR) voting was originally described
              by the Colony project in 2016, but not implemented until 2017 by
              ConsenSys interns working under my direction. Most of the smart
              contract code and extremely high-quality data structures work was
              done by Yorke Rhodes and Cem Ozer. All I can really claim here are
              contributions to the test suite and deployment pipeline. Still,
              this is one of my proudest projects.
            </p>
          </div>
        </div>
        <div>
          <h3>
            <a href="http://www.github.com/skmgoldin/simple-token-sale">
              simple-token-sale
            </a>
          </h3>
          <div>
            <p>
              This is a simple fixed-price, finite-supply token sale originally
              developed for the AdChain token launch. It has since been forked
              by ConsenSys and adopted by projects like Grid+. I like this
              codebase a lot. In a way it is an artifact of a bygone era, but I
              actually still use this code all the time for small token sales.
            </p>
          </div>
        </div>
        <div>
          <h3>
            <a href="http://www.github.com/consensys/tokens">Tokens</a>
          </h3>
          <div>
            <p>
              I became a maintainer of the ConsenSys tokens repo after doing an
              aggressive refactor for EIP-610 compliance at a time when the repo
              had been languishing. I've made contributions in the EVM code,
              deployment pipeline, and extensive contributions in the test
              suite. I published the tokens repo on EPM without really asking
              anybody and consequently became what is now one of two mnemonic
              holders.{" "}
            </p>
          </div>
        </div>
        <div>
          <h3>
            <a href="http://www.github.com/skmgoldin/sol-sdll">sol-sdll</a>
          </h3>
          <div>
            <p>
              Data structures on Ethereum are extremely interesting to me
              because of how difficult it is to implement them. This repo
              composes the DLL and AttributeStore libraries from EPM into a
              sorted DLL.
            </p>
          </div>
        </div>
      </div>
    );
  }
}

export default Code;
