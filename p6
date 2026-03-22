import { useState } from "react";

function App() {
  const [num1, setNum1] = useState("");
  const [num2, setNum2] = useState("");

  const a = Number(num1);
  const b = Number(num2);

  return (
    <div style={{ textAlign: "center", marginTop: "50px" }}>
      <h1>Real-Time Calculator</h1>

      <input
        type="number"
        placeholder="Enter first number"
        value={num1}
        onChange={(e) => setNum1(e.target.value)}
      />

      <input
        type="number"
        placeholder="Enter second number"
        value={num2}
        onChange={(e) => setNum2(e.target.value)}
      />

      <div>
        <h2>Results</h2>
        <p>Addition: {a + b}</p>
        <p>Subtraction: {a - b}</p>
        <p>Multiplication: {a * b}</p>
        <p>Division: {b === 0 ? "Cannot divide by zero" : a / b}</p>
      </div>
    </div>
  );
}

export default App;
