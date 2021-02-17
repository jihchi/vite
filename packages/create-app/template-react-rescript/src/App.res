@module("./logo.svg") external logo: string = "default"

%%raw(`import './App.css';`)

@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0)

  <div className="App">
    <header className="App-header">
      <img src={logo} className="App-logo" alt="logo" />
      <p> {React.string("Hello Vite + React + ReScript!")} </p>
      <p>
        <button onClick={_e => setCount(count => count + 1)}>
          {React.string(Printf.sprintf("count is: %d", count))}
        </button>
      </p>
      <p>
        {React.string("Edit ")}
        <code> {React.string("App.res")} </code>
        {React.string(" and save to test HMR updates.")}
      </p>
      <p>
        <a
          className="App-link" href="https://reactjs.org" target="_blank" rel="noopener noreferrer">
          {React.string("Learn React")}
        </a>
        {React.string(" | ")}
        <a
          className="App-link"
          href="https://vitejs.dev/guide/features.html"
          target="_blank"
          rel="noopener noreferrer">
          {React.string("Vite Docs")}
        </a>
        {React.string(" | ")}
        <a
          className="App-link"
          href="https://rescript-lang.org"
          target="_blank"
          rel="noopener noreferrer">
          {React.string("ReScript")}
        </a>
      </p>
    </header>
  </div>
}
