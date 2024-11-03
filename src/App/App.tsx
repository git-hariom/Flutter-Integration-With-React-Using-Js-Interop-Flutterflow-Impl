import React, { useEffect, useState } from "react";
import { styled } from "@mui/material/styles";
import Box from "@mui/material/Box";
import { FlutterView } from "./FlutterView/FlutterView";

const FlutterAppWrapper = styled("div")(({ theme }) => ({
  border: "1px solid #eee",
  borderRadius: "5px",
  height: "480px",
  width: "320px",
  transition: theme.transitions.create("all", {
    easing: theme.transitions.easing.easeInOut,
    duration: theme.transitions.duration.enteringScreen,
  }),
  overflow: "hidden",
}));

function App() {
  const [PID, setPID] = useState("");

  const handleOnChange = (e: any) => {
    setPID((prev) => e.target.value);
  };

  const onFlutterStateChanged = (state: any) => {
    console.log("callback from Flutter when App state updates: ", state);
    setPID(state);
  };

  useEffect(() => {
    console.log(PID);
  }, [PID]);

  return (
    <Box>
      <input type="text" onChange={handleOnChange} value={PID}></input>
      <FlutterAppWrapper>
        <FlutterView
          assetBase={process.env.PUBLIC_URL + "/flutter/"}
          src={process.env.PUBLIC_URL + "/flutter/main.dart.js"}
          onPIDChange={setPID}
          PID={PID}
          onFlutterStateChanged={onFlutterStateChanged}
        />
      </FlutterAppWrapper>
    </Box>
  );
}

export default App;
