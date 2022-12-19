// import logo from './logo.svg';
import './App.css';
import MediaQuery from 'react-responsive'

function App() {
  return (
    <div>
      <MediaQuery minWidth={601}>
        <div className="grid-container">
          <div className="item1">1</div>
          <div className="item2">2</div>  
          <div className="item3">3</div>
          <div className="item4">4</div>
          <div className="item5">5</div>
          <div className="item6">6</div>
          <div className="item7">7</div>
          <div className="item8">8</div>
          <div className="item9">9</div>
        </div>
      </MediaQuery>
      <MediaQuery maxWidth={600}>
        <div className="grid-container-small">
          <div className="item-small1">1</div>
          <div className="item-small3">3</div>  
          <div className="item-small4">4</div>
          <div className="item-small2">2</div>
          <div className="item-small7">7</div>
          <div className="item-small5">5</div>
          <div className="item-small8">8</div>
          <div className="item-small6">6</div>
          <div className="item-small9">9</div>
        </div>
      </MediaQuery>
    </div>
  );
}

export default App;
