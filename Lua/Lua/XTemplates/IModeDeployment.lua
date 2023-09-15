PlaceObj("XTemplate", {
  group = "Zulu",
  id = "IModeDeployment",
  PlaceObj("XTemplateWindow", {
    "__class",
    "IModeDeployment",
    "FocusOnOpen",
    ""
  }, {
    PlaceObj("XTemplateWindow", {
      "Margins",
      box(25, 20, 0, 0),
      "LayoutMethod",
      "VList"
    }, {
      PlaceObj("XTemplateTemplate", {
        "__template",
        "TeamMembers"
      }),
      PlaceObj("XTemplateTemplate", {
        "__template",
        "CombatLogButton",
        "Margins",
        box(0, 20, 0, 0),
        "HAlign",
        "left"
      })
    }),
    PlaceObj("XTemplateTemplate", {
      "__template",
      "CornerMenu",
      "Margins",
      box(0, 20, 25, 0)
    }),
    PlaceObj("XTemplateWindow", {
      "Margins",
      box(0, 0, 25, 25),
      "HAlign",
      "right",
      "VAlign",
      "bottom",
      "LayoutMethod",
      "VList"
    }, {
      PlaceObj("XTemplateTemplate", {"__template", "DeployMenu"}),
      PlaceObj("XTemplateTemplate", {
        "__context",
        function(parent, context)
          return "DeployUpdated"
        end,
        "__template",
        "GenericHUDButtonFrame",
        "Id",
        "idDeploy",
        "HAlign",
        "right",
        "FoldWhenHidden",
        true,
        "ContextUpdateOnOpen",
        true,
        "OnContextUpdate",
        function(self, context, ...)
          XContextWindow.OnContextUpdate(self, context, ...)
          self:SetVisible(not ShouldHideDeployButton())
        end
      }, {
        PlaceObj("XTemplateWindow", {
          "__class",
          "HUDButton",
          "RolloverTemplate",
          "SmallRolloverGeneric",
          "RolloverAnchor",
          "center-top",
          "MinWidth",
          170,
          "MaxWidth",
          170,
          "LayoutMethod",
          "HList",
          "ContextUpdateOnOpen",
          true,
          "OnContextUpdate",
          function(self, context, ...)
            if IsFirstSquadDeployment() then
              self.idLargeText:SetText(T(616845608282, "QUICK DEPLOY"))
            else
              self.idLargeText:SetText(T(496480198258, "DEPLOY"))
            end
          end,
          "OnPressEffect",
          "action",
          "OnPressParam",
          "DeploymentStartExploration"
        }, {
          PlaceObj("XTemplateWindow", {
            "__class",
            "XText",
            "Id",
            "idLargeText",
            "Padding",
            box(5, 2, 5, 2),
            "Dock",
            "box",
            "VAlign",
            "center",
            "TextStyle",
            "HUDHeaderBig",
            "Translate",
            true,
            "TextHAlign",
            "center"
          }),
          PlaceObj("XTemplateWindow", {
            "comment",
            "controller hint",
            "__context",
            function(parent, context)
              return "GamepadUIStyleChanged"
            end,
            "__class",
            "XText",
            "HAlign",
            "left",
            "VAlign",
            "bottom",
            "ScaleModifier",
            point(700, 700),
            "TextStyle",
            "HUDHeaderBig",
            "ContextUpdateOnOpen",
            true,
            "OnContextUpdate",
            function(self, context, ...)
              self:SetVisible(GetUIStyleGamepad())
              XText.OnContextUpdate(self, context, ...)
            end,
            "Translate",
            true,
            "Text",
            T(204834989852, "<ShortcutButton('DeploymentStartExploration')>")
          }),
          PlaceObj("XTemplateFunc", {
            "name",
            "OnSetRollover(self, rollover)",
            "func",
            function(self, rollover)
              self.idLargeText:SetTextStyle(rollover and "HUDHeaderBigLight" or "HUDHeaderBig")
              XButton.OnSetRollover(self, rollover)
            end
          })
        })
      })
    }),
    PlaceObj("XTemplateWindow", {
      "__class",
      "XDrawCache",
      "Id",
      "idBottomBar",
      "Margins",
      box(0, 0, 0, 25),
      "HAlign",
      "center",
      "VAlign",
      "bottom",
      "LayoutMethod",
      "HList",
      "HandleMouse",
      true
    }, {
      PlaceObj("XTemplateTemplate", {
        "__template",
        "FloorHudButton",
        "Margins",
        box(0, 0, 10, 0)
      })
    }),
    PlaceObj("XTemplateLayer", {
      "__context",
      function(parent, context)
        return context
      end,
      "layer",
      "XPauseLayer",
      "PauseReason",
      "DeploymentPause"
    }),
    PlaceObj("XTemplateFunc", {
      "name",
      "SetVisible(self, visible)",
      "func",
      function(self, visible)
        InterfaceModeDialog.SetVisible(self, visible)
        self.idCombatLogButton:OnLayoutComplete()
      end
    })
  })
})

