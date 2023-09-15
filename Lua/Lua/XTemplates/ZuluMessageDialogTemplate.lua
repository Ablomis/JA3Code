PlaceObj("XTemplate", {
  __is_kind_of = "XDialog",
  group = "Zulu",
  id = "ZuluMessageDialogTemplate",
  PlaceObj("XTemplateWindow", {
    "__class",
    "ZuluModalDialog",
    "Id",
    "idMain",
    "Background",
    RGBA(30, 30, 35, 115),
    "HostInParent",
    true
  }, {
    PlaceObj("XTemplateWindow", {
      "HAlign",
      "center",
      "VAlign",
      "center",
      "MinWidth",
      500,
      "LayoutMethod",
      "VList"
    }, {
      PlaceObj("XTemplateWindow", {
        "__class",
        "XFrame",
        "Dock",
        "box",
        "Image",
        "UI/PDA/os_background",
        "FrameBox",
        box(2, 2, 2, 2)
      }),
      PlaceObj("XTemplateWindow", {
        "VAlign",
        "top",
        "FoldWhenHidden",
        true
      }, {
        PlaceObj("XTemplateWindow", {
          "__class",
          "XText",
          "Id",
          "idTitle",
          "Margins",
          box(18, 5, 0, 0),
          "HAlign",
          "left",
          "MinHeight",
          30,
          "MaxWidth",
          450,
          "TextStyle",
          "PDARolloverHeader",
          "Translate",
          true
        }),
        PlaceObj("XTemplateWindow", {
          "Margins",
          box(0, 0, 8, 0),
          "HAlign",
          "right",
          "VAlign",
          "center",
          "MinWidth",
          22,
          "MinHeight",
          22,
          "MaxWidth",
          22,
          "MaxHeight",
          22,
          "Background",
          RGBA(78, 82, 91, 255)
        })
      }),
      PlaceObj("XTemplateWindow", {
        "comment",
        "above and docked to set size of text",
        "__class",
        "XToolBarList",
        "Id",
        "idActionBar",
        "Margins",
        box(8, 8, 8, 8),
        "Dock",
        "bottom",
        "HAlign",
        "center",
        "VAlign",
        "bottom",
        "MinHeight",
        35,
        "MaxHeight",
        35,
        "OnLayoutComplete",
        function(self)
          for _, button in ipairs(self.list) do
            button:SetMouseCursor("UI/Cursors/Hand.tga")
          end
        end,
        "LayoutHSpacing",
        30,
        "LayoutVSpacing",
        10,
        "Background",
        RGBA(255, 255, 255, 0),
        "Toolbar",
        "ActionBar",
        "ButtonTemplate",
        "PDACommonButton"
      }),
      PlaceObj("XTemplateWindow", {
        "Margins",
        box(8, 0, 8, 0),
        "Background",
        RGBA(32, 35, 47, 255)
      }, {
        PlaceObj("XTemplateWindow", {
          "__class",
          "XZuluScroll",
          "Id",
          "idScroll",
          "Dock",
          "right",
          "MouseCursor",
          "UI/Cursors/Hand.tga",
          "Target",
          "idTextArea",
          "SnapToItems",
          true,
          "AutoHide",
          true
        }),
        PlaceObj("XTemplateFunc", {
          "name",
          "Measure(self, max_width, max_height)",
          "func",
          function(self, max_width, max_height)
            local parent = self:ResolveId("node")
            local actionBar = parent:ResolveId("idActionBar")
            local minScaled = ScaleXY(self.scale, 484)
            max_width = Max(minScaled, actionBar.measure_width)
            return XWindow.Measure(self, max_width, max_height)
          end
        }),
        PlaceObj("XTemplateWindow", {
          "__class",
          "XScrollArea",
          "Id",
          "idTextArea",
          "IdNode",
          false,
          "Margins",
          box(8, 8, 8, 8),
          "MaxHeight",
          600,
          "VScroll",
          "idScroll"
        }, {
          PlaceObj("XTemplateWindow", {
            "__class",
            "XText",
            "Id",
            "idText",
            "TextStyle",
            "PDARolloverText",
            "Translate",
            true
          }),
          PlaceObj("XTemplateAction", {
            "ActionId",
            "actionScrollText",
            "ActionGamepad",
            "RightThumbDown",
            "ActionButtonTemplate",
            "PDACommonButton",
            "OnAction",
            function(self, host, source, ...)
              local target = host and host.idMain and host.idMain:ResolveId("idTextArea")
              if not target then
                return
              end
              target:ScrollDown()
            end,
            "FXPress",
            "none"
          }),
          PlaceObj("XTemplateAction", {
            "ActionId",
            "actionScrollText",
            "ActionGamepad",
            "RightThumbUp",
            "ActionButtonTemplate",
            "PDACommonButton",
            "OnAction",
            function(self, host, source, ...)
              local target = host and host.idMain and host.idMain:ResolveId("idTextArea")
              if not target then
                return
              end
              target:ScrollUp()
            end,
            "FXPress",
            "none"
          })
        })
      })
    })
  })
})

