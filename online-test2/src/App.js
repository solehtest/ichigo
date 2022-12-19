import './App.css';
import MediaQuery from 'react-responsive'

function App() {
  // list of colors
  const colors = ['royalblue', 'crimson', 'peru', 'indianred', 
                  'purple', 'palegreen', 'teal', 'mediumslateblue',
                  'darkslategrey'];

  // shuffle color in fullscreen mode
  const handleClickFullscreen = () => {
    let shuffleColors = colors.sort(() => Math.random() - 0.5);
    for (let i = 0; i < shuffleColors.length; i++) {
      document.getElementsByClassName('item'+(i+1))[0].style.backgroundColor = shuffleColors[i];
    }
  };

  // shuffle color in mobile mode
  const handleClickMobile = () => {
    let shuffleColors = colors.sort(() => Math.random() - 0.5);
    for (let i = 0; i < shuffleColors.length; i++) {
      document.getElementsByClassName('item-small'+(i+1))[0].style.backgroundColor = shuffleColors[i];
    }
  }

  return (
    <div>
      <MediaQuery minWidth={601}>
        <div className="grid-container">
          <div className="item1" onClick={handleClickFullscreen}>1</div>
          <div className="item2" onClick={handleClickFullscreen}>2</div>  
          <div className="item3" onClick={handleClickFullscreen}>3</div>
          <div className="item4" onClick={handleClickFullscreen}>4</div>
          <div className="item5" onClick={handleClickFullscreen}>5</div>
          <div className="item6" onClick={handleClickFullscreen}>6</div>
          <div className="item7" onClick={handleClickFullscreen}>7</div>
          <div className="item8" onClick={handleClickFullscreen}>8</div>
          <div className="item9" onClick={handleClickFullscreen}>9</div>
        </div>
      </MediaQuery>
      <MediaQuery maxWidth={600}>
        <div className="grid-container-small">
          <div className="item-small1" onClick={handleClickMobile}>1</div>
          <div className="item-small3" onClick={handleClickMobile}>3</div>  
          <div className="item-small4" onClick={handleClickMobile}>4</div>
          <div className="item-small2" onClick={handleClickMobile}>2</div>
          <div className="item-small7" onClick={handleClickMobile}>7</div>
          <div className="item-small5" onClick={handleClickMobile}>5</div>
          <div className="item-small8" onClick={handleClickMobile}>8</div>
          <div className="item-small6" onClick={handleClickMobile}>6</div>
          <div className="item-small9" onClick={handleClickMobile}>9</div>
        </div>
      </MediaQuery>
    </div>
  );
}

export default App;
