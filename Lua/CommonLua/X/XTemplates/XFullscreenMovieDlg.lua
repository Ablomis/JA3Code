PlaceObj("XTemplate", {
  group = "Common",
  id = "XFullscreenMovieDlg",
  save_in = "Common",
  PlaceObj("XTemplateWindow", {
    "__class",
    "XFullscreenMovieDlg",
    "DrawOnTop",
    true
  }, {
    PlaceObj("XTemplateWindow", {
      "comment",
      "Skip Hint",
      "__class",
      "XText",
      "Id",
      "idSkipHint",
      "ZOrder",
      0,
      "Margins",
      box(0, 0, 80, 80),
      "HAlign",
      "right",
      "VAlign",
      "bottom",
      "Visible",
      false,
      "HandleMouse",
      false,
      "Translate",
      true
    }),
    PlaceObj("XTemplateWindow", {
      "comment",
      "Subtitles",
      "__class",
      "XText",
      "Id",
      "idSubtitles",
      "ZOrder",
      0,
      "Margins",
      box(0, 0, 0, 80),
      "HAlign",
      "center",
      "VAlign",
      "bottom",
      "HandleKeyboard",
      false,
      "HandleMouse",
      false,
      "ChildrenHandleMouse",
      false,
      "TextStyle",
      "UISubtitles",
      "Translate",
      true,
      "TextHAlign",
      "center",
      "TextVAlign",
      "bottom"
    }),
    PlaceObj("XTemplateWindow", {
      "__class",
      "XVideo",
      "Id",
      "idVideoPlayer",
      "ZOrder",
      -1
    })
  })
})

