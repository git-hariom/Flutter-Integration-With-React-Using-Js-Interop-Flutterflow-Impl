import React, { useEffect, useRef, memo } from 'react'
import CircularProgress from '@mui/material/CircularProgress'
import Box from '@mui/material/Box'

// The global _flutter namespace
declare var _flutter: any

const divStyle: React.CSSProperties = {
  height: '100%',
  width: '100%',
}

interface FlutterViewProps {
  assetBase?: string;
  src?: string;
  onPIDChange: (PID: string) => void;
  PID: string;
  onFlutterStateChanged: (state: object) => void;
}

export const FlutterView: React.FC<FlutterViewProps> = memo(
  ({
    assetBase = "",
    src = "main.dart.js",
    onPIDChange,
    PID,
    onFlutterStateChanged,
  }) => {
    const flutterState = useRef<any>(null);
    const ref = useRef<HTMLDivElement>(null);

    const onFlutterAppLoaded = (state: any) => {
      flutterState.current = state;
      flutterState.current.setClicks(PID);
      flutterState.current.updateFromFlutterToReactCallback(
        onFlutterStateChanged
      );
      flutterState.current.updatePID();
    };

    useEffect(() => {
      const target = ref.current;
      let isRendered = true;
      const initFlutterApp = async () => {
        if (!isRendered) return;
        const engineInitializer = await new Promise<any>((resolve) => {
          console.log("setup Flutter engine initializer...");
          _flutter.loader.loadEntrypoint({
            entrypointUrl: src,
            onEntrypointLoaded: resolve,
          });
        });
        if (!isRendered) return;

        console.log("initialize Flutter engine...");
        const appRunner = await engineInitializer?.initializeEngine({
          hostElement: target,
          assetBase: assetBase,
        });
        if (!isRendered) return;

        console.log("run Flutter engine...");
        await appRunner?.runApp();
      };
      initFlutterApp();

      const eventListener = (event: Event) => {
        let state = (event as CustomEvent).detail;
        console.log(state);
        onFlutterAppLoaded(state);
      };

      target?.addEventListener("flutter-initialized", eventListener, {
        once: true,
      });

      return () => {
        isRendered = false;
        target?.removeEventListener("flutter-initialized", eventListener);
      };
      // eslint-disable-next-line react-hooks/exhaustive-deps
    }, []);

    useEffect(() => {
      flutterState?.current?.updateFromFlutterToReactCallback(
        onFlutterStateChanged
      );
    }, [onFlutterStateChanged]);

    useEffect(() => {
      flutterState?.current?.setClicks(PID);
    }, [PID]);

    return (
      <div ref={ref} style={divStyle}>
        <Box
          sx={{
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
            height: "100%",
          }}
        >
          <CircularProgress />
        </Box>
      </div>
    );
  }
);