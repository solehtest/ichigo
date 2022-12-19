import { render, screen } from '@testing-library/react';
import App from './App';
import { Context as ResponsiveContext } from 'react-responsive'

test('renders as fullscreen', () => {
  const { container: layout } = render(
    <ResponsiveContext.Provider value={{ width: 601 }}>
      <App />
    </ResponsiveContext.Provider>
  )
  expect(layout).toMatchSnapshot()

  let containers = layout.getElementsByClassName('grid-container')[0].childNodes;
  let values = [];
  for (let i = 0; i < containers.length; i++) {
    values.push(containers[i].textContent);
  }
  console.log('Fullscreen Box : ' + values)

  // text 1
  let elementOne = screen.getByText(values[0]);
  expect(elementOne).toBeInTheDocument();
  expect(elementOne).toHaveClass('item1');
  
  // text 2
  let elementTwo = screen.getByText(values[1]);
  expect(elementTwo).toBeInTheDocument();
  expect(elementTwo).toHaveClass('item2');

  // text 3
  let elementThree = screen.getByText(values[2]);
  expect(elementThree).toBeInTheDocument();
  expect(elementThree).toHaveClass('item3');

  // text 4
  let elementFour = screen.getByText(values[3]);
  expect(elementFour).toBeInTheDocument();
  expect(elementFour).toHaveClass('item4');

  // text 5
  let elementFive = screen.getByText(values[4]);
  expect(elementFive).toBeInTheDocument();
  expect(elementFive).toHaveClass('item5');

  // text 6
  let elementSix = screen.getByText(values[5]);
  expect(elementSix).toBeInTheDocument();
  expect(elementSix).toHaveClass('item6');

  // text 7
  let elementSeven = screen.getByText(values[6]);
  expect(elementSeven).toBeInTheDocument();
  expect(elementSeven).toHaveClass('item7');

  // text 8
  let elementEight = screen.getByText(values[7]);
  expect(elementEight).toBeInTheDocument();
  expect(elementEight).toHaveClass('item8');

  // text 9
  let elementNine = screen.getByText(values[8]);
  expect(elementNine).toBeInTheDocument();
  expect(elementNine).toHaveClass('item9');
});

test('renders as mobile', () => {
  const { container: layout } = render(
    <ResponsiveContext.Provider value={{ width: 300 }}>
      <App />
    </ResponsiveContext.Provider>
  )
  expect(layout).toMatchSnapshot()

  let containers = layout.getElementsByClassName('grid-container-small')[0].childNodes;
  let values = [];
  for (let i = 0; i < containers.length; i++) {
    values.push(containers[i].textContent);
  }
  console.log('Mobile Box : ' + values)

  // text 1
  let elementOne = screen.getByText(values[0]);
  expect(elementOne).toBeInTheDocument();
  expect(elementOne).toHaveClass('item-small1');

  // text 3
  let elementThree = screen.getByText(values[1]);
  expect(elementThree).toBeInTheDocument();
  expect(elementThree).toHaveClass('item-small3');

  // text 4
  let elementFour = screen.getByText(values[2]);
  expect(elementFour).toBeInTheDocument();
  expect(elementFour).toHaveClass('item-small4');

  // text 2
  let elementTwo = screen.getByText(values[3]);
  expect(elementTwo).toBeInTheDocument();
  expect(elementTwo).toHaveClass('item-small2');

  // text 7
  let elementSeven = screen.getByText(values[4]);
  expect(elementSeven).toBeInTheDocument();
  expect(elementSeven).toHaveClass('item-small7');

  // text 5
  let elementFive = screen.getByText(values[5]);
  expect(elementFive).toBeInTheDocument();
  expect(elementFive).toHaveClass('item-small5');

  // text 8
  let elementEight = screen.getByText(values[6]);
  expect(elementEight).toBeInTheDocument();
  expect(elementEight).toHaveClass('item-small8');

  // text 6
  let elementSix = screen.getByText(values[7]);
  expect(elementSix).toBeInTheDocument();
  expect(elementSix).toHaveClass('item-small6');

  // text 9
  let elementNine = screen.getByText(values[8]);
  expect(elementNine).toBeInTheDocument();
  expect(elementNine).toHaveClass('item-small9');
});