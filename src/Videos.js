import React, { Component } from "react";

class Videos extends Component {
  render() {
    return (
      <div className="videos">
        <div>
          <iframe
            title="Ethereal 2018"
            width="560"
            height="315"
            src="https://www.youtube-nocookie.com/embed/9_kvYeWWwUI"
            frameborder="0"
            allowfullscreen
          />
        </div>
        <div>
          <iframe
            title="How Bitcoin Works... In Russia"
            width="560"
            height="315"
            src="https://www.youtube-nocookie.com/embed/bHly695Wfd0"
            frameborder="0"
            allowfullscreen
          />
        </div>
        <div>
          <iframe
            title="Columbia University Graduate School of Architecture, Planning and Preservation talk"
            width="560"
            height="315"
            src="https://www.youtube-nocookie.com/embed/nfJ2oCF_JLU?start=1996"
            frameborder="0"
            allowfullscreen
          />
        </div>
        <div>
          <iframe
            title="Creating a Humanist Blockchain Future podcast"
            width="560"
            height="315"
            src="https://www.youtube-nocookie.com/embed/5FdEX5UXxx0"
            frameborder="0"
            allowfullscreen
          />
        </div>
        <div>
          <iframe
            title="adChain, programming people"
            width="560"
            height="315"
            src="https://www.youtube-nocookie.com/embed/26ucqdLZMPw"
            frameborder="0"
            allowfullscreen
          />
        </div>
        <div>
          <iframe
            title="Dapp Digest"
            width="560"
            height="315"
            src="https://www.youtube-nocookie.com/embed/xw0DVdzbjo8"
            frameborder="0"
            allowfullscreen
          />
        </div>
        <div>
          <iframe
            title="Internet Security"
            width="560"
            height="315"
            src="https://www.youtube-nocookie.com/embed/n92MRtnN8Vs"
            frameborder="0"
            allowfullscreen
          />
        </div>
      </div>
    );
  }
}

export default Videos;
