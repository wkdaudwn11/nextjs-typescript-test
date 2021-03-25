import Link from "next/link";
import Layout from "../components/Layout";
import styled from "styled-components";

const H1 = styled.h1`
  color: ${({ theme }) => theme.color.blue};
  font-size: 32px;
  font-weight: bold;
  margin: 12px 0;
`;

const IndexPage = () => (
  <Layout title="Home | Next.js + TypeScript Example">
    <H1>Hello Next.js 👋</H1>
    <p>
      <Link href="/about">
        <a>About</a>
      </Link>
    </p>
  </Layout>
);

export default IndexPage;
