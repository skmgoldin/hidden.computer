import React, { Component } from "react";

class Papers extends Component {
  render() {
    return (
      <div className="papers">
        <div>
          <h3>
            <a href="https://docs.google.com/document/d/1BWWC__-Kmso9b7yCI_R7ysoGFIT9D_sfjH3axQsmB6E/edit?usp=sharing">
              Token-Curated Registries 1.0
            </a>
          </h3>
          <div>
            <p>
              Following the completion of the AdChain whitepaper, the authors
              began to discuss other potential applications of the system. In
              the weeks following we entertained several ideas that left us
              increasingly curious as to the system's complete potential. After
              discussing the AdChain paper in depth with Karl Floersch and
              discovering he had designed very similar system (never
              implemented) for the Ujo project in September of 2016, the
              lightbulb went off as to the underlying system's genericity. At
              the urging of James Young, I wrote Token-Curated Registries 1.0.
              Token-curated registries are cryptosystems for decentrally
              curating lists, with intrinsic economic incentives for token
              holders to curate the list's contents judiciously.
            </p>
          </div>
        </div>
        <div>
          <h3>
            <a href="https://docs.google.com/document/d/1CNBjz4oTUTQo2VjRh2jK0VBY5z7GAVPwT8YsVtOv1Ns/edit?usp=sharing">
              Delphi
            </a>
          </h3>
          <div>
            <p>
              This very concise paper describes a generalized dispute resolution
              system backed by a token-curated registry. The system itself is
              quite nice, but it also contains an idea I find quite interesting:
              stake pools of undefined size that defer subjectivity regarding
              suitability to the user. Mark Beylin did most of the original
              thinking for this paper, but I like to think I was a useful
              sounding board for bouncing his ideas off of.
            </p>
          </div>
        </div>
      </div>
    );
  }
}

export default Papers;
