import "styled-components";

declare module "styled-components" {
  export interface DefaultTheme {
    color: {
      red: string;
      blue: string;
    };
  }
}
