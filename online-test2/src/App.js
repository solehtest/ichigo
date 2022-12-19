// import logo from './logo.svg';
import './App.css';
import { useMediaQuery } from 'react-responsive'

function App() {
  const isFullscreen = useMediaQuery({
    query: '(min-width: 601px)'
  })

  const isMobile = useMediaQuery({
    query: '(max-width: 600px)'
  })

  return (
    // <div className="grid-container">
    //   <div className="item1">Header</div>
    //   <div className="item2">Menu</div>
    //   <div className="item3">Main</div>  
    //   <div className="item4">Right</div>
    //   <div className="item5">Footer</div>
    // </div>

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

    // <div className="grid-container">
    //   <div className="item1">1</div>
    //   <div className="item2">2</div>
    //   <div className="item3">3</div>  
    //   <div className="item4">4</div>
    //   <div className="item5">5</div>
    //   <div className="item6">6</div>
    //   <div className="item7">7</div>
    //   <div className="item8">8</div>
    //   <div className="item9">9</div>
    // </div>
  );
}

export default App;
