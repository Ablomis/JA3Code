PlaceObj("XTemplate", {
  group = "Zulu",
  id = "PhotoMode",
  PlaceObj("XTemplateWindow", {
    "__context",
    function(parent, context)
      return PhotoObjectCreateAndLoad()
    end,
    "__class",
    "XDialog",
    "Id",
    "idPhotoMode",
    "Margins",
    box(50, 100, 0, 0),
    "MarginPolicy",
    "FitInSafeArea",
    "HAlign",
    "left",
    "VAlign",
    "bottom"
  }, {
    PlaceObj("XTemplateLayer", {
      "layer",
      "XPauseLayer"
    }),
    PlaceObj("XTemplateLayer", {
      "layer",
      "XHideInGameInterfaceLayer"
    }),
    PlaceObj("XTemplateFunc", {
      "name",
      "Open",
      "func",
      function(self, ...)
        CloseIngameMainMenu()
        XDialog.Open(self, ...)
        local list = self:ResolveId("idContent"):ResolveId("idList")
        list:SetFocus(true)
        list:SelectFirstValidItem()
        self.isCameraUnlocked = false
        self.prev_interactablesOn = not interactablesOn and false and true
        self.isWorldUIHidden = false
        self.prevGamepadOn = GetUIStyleGamepad()
        StartPhotoMode()
        table.change(hr, "PhotoMode", {EnablePostProcDOF = 1})
        LockCamera("PhotoModeFlyCamera")
        HighlightAllInteractables(false)
      end
    }),
    PlaceObj("XTemplateFunc", {
      "name",
      "OnShortcut(self, shortcut, source)",
      "func",
      function(self, shortcut, source)
        if self.isCameraUnlocked and shortcut == "Alt" and cameraFly.IsActive() and g_MouseConnected then
          if not IsCameraLocked("PhotoModeFlyCamera") then
            SetMouseDeltaMode(false)
            LockCamera("PhotoModeFlyCamera")
          else
            SetMouseDeltaMode(true)
            UnlockCamera("PhotoModeFlyCamera")
          end
          return "break"
        end
        return XDialog.OnShortcut(self, shortcut, source)
      end
    }),
    PlaceObj("XTemplateFunc", {
      "name",
      "Close",
      "func",
      function(self, ...)
        PhotoModeEnd()
        HighlightAllInteractables(self.prev_interactablesOn)
        HideInWorldCombatUI(false)
        local mode_dlg = GetInGameInterfaceModeDlg()
        if self.prev_gamepadOn and mode_dlg and IsKindOf(mode_dlg, "GamepadUnitControl") then
          mode_dlg:ResumeGamepadThread()
        end
        XDialog.Close(self, ...)
      end
    }),
    PlaceObj("XTemplateFunc", {
      "name",
      "BlinkFilePath(self, path)",
      "func",
      function(self, path)
        self:DeleteThread("path")
        self:CreateThread("path", function(path)
          self.idPath:SetText(path)
          self.idPath:SetVisible(true)
          Sleep(3000)
          self.idPath:SetVisible(false)
        end, path)
      end
    }),
    PlaceObj("XTemplateFunc", {
      "name",
      "ToggleUI",
      "func",
      function(self, ...)
        local value = not self.idContent:GetVisible()
        self.idContent:SetVisible(value)
        self.idActionBar:RespawnContent()
        if value and GetUIStyleGamepad() then
          self.idList:SetSelection(self.idList.focused_item or 1)
        end
      end
    }),
    PlaceObj("XTemplateWindow", {
      "__class",
      "XLabel",
      "Id",
      "idPath",
      "Dock",
      "bottom",
      "HAlign",
      "left",
      "TextStyle",
      "DescriptionTextLightYellowBigger"
    }),
    PlaceObj("XTemplateWindow", {
      "Id",
      "idContent",
      "HAlign",
      "left",
      "MinWidth",
      512,
      "MaxWidth",
      512,
      "LayoutMethod",
      "VList",
      "HandleMouse",
      true
    }, {
      PlaceObj("XTemplateWindow", {
        "__class",
        "XContentTemplateList",
        "Id",
        "idList",
        "BorderWidth",
        0,
        "Padding",
        box(0, 0, 0, 0),
        "OnLayoutComplete",
        function(self)
        end,
        "UniformRowHeight",
        true,
        "Clip",
        false,
        "Background",
        RGBA(0, 0, 0, 0),
        "FocusedBackground",
        RGBA(0, 0, 0, 0),
        "VScroll",
        "idScroll",
        "ShowPartialItems",
        false,
        "MouseScroll",
        true,
        "SetFocusOnOpen",
        true,
        "OnContextUpdate",
        function(self, context, ...)
          if self.RespawnOnContext then
            if self.window_state == "open" then
              self.KeepSelectionOnRespawn = GetUIStyleGamepad()
              XContentTemplateList.RespawnContent(self, ...)
            end
          else
            local respawn_value = self:RespawnExpression(context)
            if rawget(self, "respawn_value") ~= respawn_value then
              self.respawn_value = respawn_value
              if self.window_state == "open" then
                self.KeepSelectionOnRespawn = GetUIStyleGamepad()
                XContentTemplateList.RespawnContent(self, ...)
              end
            end
          end
        end,
        "RespawnOnContext",
        false,
        "KeepSelectionOnRespawn",
        true
      }, {
        PlaceObj("XTemplateFunc", {
          "name",
          "RespawnContent"
        }),
        PlaceObj("XTemplateWindow", {
          "__class",
          "XButton",
          "MinHeight",
          64,
          "MaxHeight",
          64,
          "LayoutMethod",
          "HList",
          "FoldWhenHidden",
          true,
          "BorderColor",
          RGBA(0, 0, 0, 0),
          "Background",
          RGBA(255, 255, 255, 0),
          "FocusedBorderColor",
          RGBA(0, 0, 0, 0),
          "FocusedBackground",
          RGBA(128, 128, 128, 0),
          "DisabledBorderColor",
          RGBA(0, 0, 0, 0),
          "RolloverBackground",
          RGBA(255, 255, 255, 0),
          "PressedBackground",
          RGBA(255, 255, 255, 0)
        }, {
          PlaceObj("XTemplateWindow", {
            "__class",
            "XBlurRect",
            "Dock",
            "box",
            "BlurRadius",
            10,
            "Mask",
            "UI/Common/mm_panel",
            "FrameLeft",
            15,
            "FrameRight",
            10
          }),
          PlaceObj("XTemplateWindow", {
            "__class",
            "XFrame",
            "Id",
            "idEffect",
            "Margins",
            box(5, 5, 5, 5),
            "Dock",
            "box",
            "Transparency",
            179,
            "HandleKeyboard",
            false,
            "Image",
            "UI/Common/screen_effect",
            "ImageScale",
            point(100000, 1000),
            "TileFrame",
            true,
            "SqueezeX",
            false,
            "SqueezeY",
            false
          }),
          PlaceObj("XTemplateWindow", {
            "__class",
            "XFrame",
            "UIEffectModifierId",
            "MainMenuMainBar",
            "Id",
            "idImg1",
            "Dock",
            "box",
            "Transparency",
            38,
            "HandleKeyboard",
            false,
            "Image",
            "UI/Common/mm_title",
            "SqueezeX",
            false,
            "SqueezeY",
            false
          }),
          PlaceObj("XTemplateWindow", {
            "__class",
            "XText",
            "Id",
            "idName",
            "Margins",
            box(20, 0, 0, 0),
            "HAlign",
            "left",
            "VAlign",
            "center",
            "MinWidth",
            300,
            "MaxWidth",
            300,
            "HandleKeyboard",
            false,
            "HandleMouse",
            false,
            "TextStyle",
            "PDABrowserHeader",
            "Translate",
            true,
            "Text",
            T(207584479877, "Photo Mode"),
            "WordWrap",
            false,
            "TextVAlign",
            "center"
          }),
          PlaceObj("XTemplateFunc", {
            "name",
            "IsSelectable(self)",
            "func",
            function(self)
              return false
            end
          })
        }),
        PlaceObj("XTemplateForEach", {
          "comment",
          "props",
          "array",
          function(parent, context)
            return context:GetProperties()
          end,
          "condition",
          function(parent, context, item, i)
            local obj = ResolvePropObj(context)
            return not prop_eval(item.no_edit, obj, item)
          end,
          "item_in_context",
          "prop_meta",
          "run_after",
          function(child, context, item, i, n, last)
            if child.idSlider then
              child.idSlider:SetMinWidth(150)
              child.idSlider:SetMaxWidth(150)
            elseif child.idValue then
              child.idValue:SetMinWidth(150)
              child.idValue:SetMaxWidth(150)
            elseif child.idOn then
              child.idOn:SetMinWidth(150)
              child.idOn:SetMaxWidth(150)
              child.idOff:SetMinWidth(150)
              child.idOff:SetMaxWidth(150)
            end
          end
        }, {
          PlaceObj("XTemplateTemplate", {
            "__template",
            "PropEntry",
            "HAlign",
            "center",
            "OnLayoutComplete",
            function(self)
            end,
            "RolloverOnFocus",
            true
          })
        })
      }),
      PlaceObj("XTemplateWindow", {
        "__class",
        "XZuluScroll",
        "Id",
        "idScroll",
        "Margins",
        box(0, 0, 15, 0),
        "Dock",
        "right",
        "HAlign",
        "right",
        "MaxWidth",
        5,
        "MaxHeight",
        50,
        "MouseCursor",
        "UI/Cursors/Hand.tga",
        "Target",
        "idList",
        "Max",
        50,
        "SnapToItems",
        true,
        "AutoHide",
        true
      })
    }),
    PlaceObj("XTemplateWindow", {
      "__class",
      "XContentTemplate",
      "IdNode",
      false,
      "Dock",
      "bottom",
      "LayoutMethod",
      "HList",
      "FoldWhenHidden",
      true,
      "RespawnOnContext",
      false
    }, {
      PlaceObj("XTemplateFunc", {
        "name",
        "RespawnContent",
        "func",
        function(self, ...)
          XContentTemplate.RespawnContent(self, ...)
          local warning = self:ResolveId("idFreeCameraWarning")
          if warning then
            warning:SetVisible(cameraFly.IsActive())
          end
        end
      }),
      PlaceObj("XTemplateWindow", {
        "__condition",
        function(parent, context)
          return not GetUIStyleGamepad()
        end,
        "__class",
        "XText",
        "Id",
        "idFreeCameraWarning",
        "Margins",
        box(0, 0, 0, 15),
        "HAlign",
        "left",
        "VAlign",
        "bottom",
        "Visible",
        false,
        "HandleMouse",
        false,
        "TextStyle",
        "DescriptionTextLightYellowBigger",
        "Translate",
        true,
        "Text",
        T(679404141391, "<em><ShortcutName('actionPanUp')>,<ShortcutName('actionPanDown')>,<ShortcutName('actionPanLeft')>,<ShortcutName('actionPanRight')>,<ShortcutName('actionRotLeft')>,<ShortcutName('actionRotRight')></em> - Move, <em>Hold CTRL</em> - Move faster, <em>ALT</em> - Toggle mouse cursor"),
        "HideOnEmpty",
        true
      }),
      PlaceObj("XTemplateWindow", {
        "__condition",
        function(parent, context)
          return GetUIStyleGamepad()
        end,
        "__class",
        "XText",
        "Id",
        "idFreeCameraWarning",
        "Margins",
        box(0, 0, 0, 15),
        "HAlign",
        "left",
        "VAlign",
        "bottom",
        "Visible",
        false,
        "HandleMouse",
        false,
        "TextStyle",
        "DescriptionTextLightYellowBigger",
        "Translate",
        true,
        "Text",
        T(190145861232, "<LS> - Move, <RS> - Rotate, <LT><RT> - Move up/down."),
        "HideOnEmpty",
        true
      })
    }),
    PlaceObj("XTemplateWindow", {
      "__class",
      "XContentTemplate",
      "Id",
      "idActionBar",
      "IdNode",
      false,
      "Margins",
      box(0, 0, 0, 20),
      "Dock",
      "bottom",
      "HAlign",
      "left",
      "VAlign",
      "center",
      "MinWidth",
      512,
      "MinHeight",
      38,
      "LayoutMethod",
      "HList"
    }, {
      PlaceObj("XTemplateAction", {
        "ActionId",
        "idTakeScreenshot",
        "ActionName",
        T(877014493476, "Take Photo"),
        "ActionToolbar",
        "ActionBar",
        "ActionShortcut",
        "T",
        "ActionGamepad",
        "ButtonY",
        "OnAction",
        function(self, host, source, ...)
          local meta = host.context:GetPropertyMetadata("frameDuration")
          host.idActionBar:RespawnContent()
          PhotoModeTake(host.context.frameDuration, meta.max)
        end
      }),
      PlaceObj("XTemplateAction", {
        "ActionId",
        "idReset",
        "ActionName",
        T(800696391681, "Reset"),
        "ActionToolbar",
        "ActionBar",
        "ActionShortcut",
        "R",
        "ActionGamepad",
        "RightThumbClick",
        "OnAction",
        function(self, host, source, ...)
          host.context:ResetProperties()
          host.idActionBar:RespawnContent()
          host.idList:RespawnContent()
        end,
        "__condition",
        function(parent, context)
          return parent:ResolveId("idContent"):GetVisible()
        end
      }),
      PlaceObj("XTemplateAction", {
        "ActionId",
        "idToggleUI",
        "ActionName",
        T(778946363517, "Toggle UI"),
        "ActionToolbar",
        "ActionBar",
        "ActionShortcut",
        "U",
        "ActionGamepad",
        "LeftShoulder",
        "OnAction",
        function(self, host, source, ...)
          host:ToggleUI()
        end
      }),
      PlaceObj("XTemplateAction", {
        "ActionId",
        "idToggleCombatUI",
        "ActionName",
        T(879213936162, "Toggle World UI"),
        "ActionToolbar",
        "ActionBar",
        "ActionShortcut",
        "Y",
        "ActionGamepad",
        "RightShoulder",
        "OnAction",
        function(self, host, source, ...)
          host.isWorldUIHidden = not host.isWorldUIHidden
          host.idActionBar:RespawnContent()
          HideInWorldCombatUI(host.isWorldUIHidden)
        end
      }),
      PlaceObj("XTemplateAction", {
        "ActionId",
        "close",
        "ActionName",
        T(676109205191, "Close"),
        "ActionToolbar",
        "ActionBar",
        "ActionShortcut",
        "Escape",
        "ActionGamepad",
        "ButtonB",
        "OnAction",
        function(self, host, source, ...)
          CreateRealTimeThread(function(host)
            if WaitQuestion(terminal.desktop, T(463488345232, "Exit Photo Mode"), T(528652976882, "Are you sure you want to exit?"), T(1138, "Yes"), T(1139, "No")) == "ok" then
              host:Close()
            end
          end, host)
        end
      }),
      PlaceObj("XTemplateWindow", {
        "__class",
        "XZuluToolBarList",
        "Id",
        "idToolBar",
        "ZOrder",
        0,
        "HAlign",
        "left",
        "VAlign",
        "center",
        "MinWidth",
        512,
        "UniformColumnWidth",
        true,
        "Background",
        RGBA(255, 255, 255, 0),
        "Toolbar",
        "ActionBar",
        "Show",
        "text",
        "SeparatorColor",
        RGBA(160, 160, 160, 0),
        "ButtonTemplate",
        "OptionsActionsButton"
      }, {
        PlaceObj("XTemplateFunc", {
          "comment",
          "Position buttons in grid",
          "name",
          "RebuildActions(self, ...)",
          "func",
          function(self, ...)
            XZuluToolBarList.RebuildActions(self, ...)
            local parent = self:GetButtonParent()
            parent[1]:SetMargins(box(-5, 0, 0, 0))
          end
        })
      })
    })
  })
})

