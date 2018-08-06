import React from 'react';
import ReactDom from 'react-dom';
import { signup, login, logout } from './util/session_api_util';



document.addEventListener("DOMContentLoaded", () => {
  const root  = document.getElementById("root");
  ReactDOM.render(<h1> Welcome to BenchBNB </h1>, root);

});
