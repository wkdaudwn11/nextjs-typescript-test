import { createGlobalStyle } from "styled-components";
import { reset } from "styled-reset";

const GlobalStyle = createGlobalStyle`
    ${reset}
    html, body {
      margin: 0;
      padding: 0;
    }
`;

export default GlobalStyle;
