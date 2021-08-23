import { PROPS_ATTR } from "react_ujs";

const Page = (prps) => {
  const renderPages = () => {
    PROPS_ATTR.pages.map(page => {
      return(
        <div style={{border:'1px solid', margin: "40px"}}>
          <h1>{page.title}</h1>
          <h6></h6>
          <p>{page.body}</p>
        </div>
      );
    });
  };
  // this is not html this is JSX
  // which embedded html in js'
  return (
    <div>
      <h1>Pages</h1>
      <a href="/pages/new">New Page</a>
      {renderPages()}
    </div>
  );
};

export default Page;