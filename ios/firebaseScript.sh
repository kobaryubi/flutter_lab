if [ "$CONFIGURATION" == "Debug-local" ] || [ "$CONFIGURATION" == "Release-local" ]; then
  cp Runner/local/GoogleService-Info.plist Runner/GoogleService-Info.plist
fi

