import React from "react";

class App extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      web3: null,
      account: null,
      mainInstance: null,
    };
  }

  render(){
    return <div><h1>Hello React application</h1></div>
  }

}

export default App;
