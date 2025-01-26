_: let
  # colors = import ../config/colors/tokyo-night-neon.nix {};
  colors = import ../config/colors/rebel-scum.nix {};
in {
  plugins.transparent.enable = true;
  colorschemes = {
    base16 = {
      enable = true;
      colorscheme = {
        base00 = colors.bg_dark;
        base01 = colors.bg;
        base02 = colors.dark3;
        base03 = colors.fg_gutter;
        base04 = colors.dark5;
        base05 = colors.fg;
        base06 = colors.fg_dark;
        base07 = colors.fg_sidebar;
        base08 = colors.red;
        base09 = colors.orange;
        base0A = colors.yellow;
        base0B = colors.green1;
        base0C = colors.blue5;
        base0D = colors.blue;
        base0E = colors.magenta;
        base0F = colors.green;
      };
    };
  };

  highlight = {
    "@annotation" = {link = "PreProc";};
    "@attribute" = {link = "PreProc";};
    "@boolean" = {link = "Boolean";};
    "@character" = {link = "Character";};
    "@character.printf" = {link = "SpecialChar";};
    "@character.special" = {link = "SpecialChar";};
    "@comment" = {link = "Comment";};
    "@comment.error" = {
      fg = colors.red1;
    };
    "@comment.hint" = {
      fg = colors.hint;
    };
    "@comment.info" = {
      fg = colors.blue2;
    };
    "@comment.note" = {
      fg = colors.hint;
    };
    "@comment.todo" = {
      fg = colors.blue;
    };
    "@comment.warning" = {
      fg = colors.yellow;
    };
    "@constant" = {link = "Constant";};
    "@constant.builtin" = {link = "Special";};
    "@constant.macro" = {link = "Define";};
    "@constructor" = {
      fg = colors.magenta;
    };
    "@constructor.tsx" = {
      fg = colors.blue1;
    };
    "@diff.delta" = {link = "DiffChange";};
    "@diff.minus" = {link = "DiffDelete";};
    "@diff.plus" = {link = "DiffAdd";};
    "@function" = {link = "Function";};
    "@function.builtin" = {link = "Special";};
    "@function.call" = {link = "@function";};
    "@function.macro" = {link = "Macro";};
    "@function.method" = {link = "Function";};
    "@function.method.call" = {link = "@function.method";};
    "@keyword" = {
      fg = colors.purple;
      italic = true;
    };
    "@keyword.conditional" = {link = "Conditional";};
    "@keyword.coroutine" = {link = "@keyword";};
    "@keyword.debug" = {link = "Debug";};
    "@keyword.directive" = {link = "PreProc";};
    "@keyword.directive.define" = {link = "Define";};
    "@keyword.exception" = {link = "Exception";};
    "@keyword.function" = {
      fg = colors.magenta;
    };
    "@keyword.import" = {link = "Include";};
    "@keyword.operator" = {link = "@operator";};
    "@keyword.repeat" = {link = "Repeat";};
    "@keyword.return" = {link = "@keyword";};
    "@keyword.storage" = {link = "StorageClass";};
    "@label" = {
      fg = colors.blue;
    };
    "@lsp.type.boolean" = {link = "@boolean";};
    "@lsp.type.builtinType" = {link = "@type.builtin";};
    "@lsp.type.comment" = {link = "@comment";};
    "@lsp.type.decorator" = {link = "@attribute";};
    "@lsp.type.deriveHelper" = {link = "@attribute";};
    "@lsp.type.enum" = {link = "@type";};
    "@lsp.type.enumMember" = {link = "@constant";};
    "@lsp.type.escapeSequence" = {link = "@string.escape";};
    "@lsp.type.formatSpecifier" = {link = "@markup.list";};
    "@lsp.type.generic" = {link = "@variable";};
    "@lsp.type.interface" = {
      fg = colors.blue2;
    };
    "@lsp.type.keyword" = {link = "@keyword";};
    "@lsp.type.lifetime" = {link = "@keyword.storage";};
    "@lsp.type.namespace" = {link = "@module";};
    "@lsp.type.namespace.python" = {link = "@variable";};
    "@lsp.type.number" = {link = "@number";};
    "@lsp.type.operator" = {link = "@operator";};
    "@lsp.type.parameter" = {link = "@variable.parameter";};
    "@lsp.type.property" = {link = "@property";};
    "@lsp.type.selfKeyword" = {link = "@variable.builtin";};
    "@lsp.type.selfTypeKeyword" = {link = "@variable.builtin";};
    "@lsp.type.string" = {link = "@string";};
    "@lsp.type.typeAlias" = {link = "@type.definition";};
    "@lsp.type.unresolvedReference" = {
      sp = colors.red1;
      undercurl = true;
    };
    "@lsp.type.variable" = {};
    "@lsp.typemod.class.defaultLibrary" = {link = "@type.builtin";};
    "@lsp.typemod.enum.defaultLibrary" = {link = "@type.builtin";};
    "@lsp.typemod.enumMember.defaultLibrary" = {link = "@constant.builtin";};
    "@lsp.typemod.function.defaultLibrary" = {link = "@function.builtin";};
    "@lsp.typemod.keyword.async" = {link = "@keyword.coroutine";};
    "@lsp.typemod.keyword.injected" = {link = "@keyword";};
    "@lsp.typemod.macro.defaultLibrary" = {link = "@function.builtin";};
    "@lsp.typemod.method.defaultLibrary" = {link = "@function.builtin";};
    "@lsp.typemod.operator.injected" = {link = "@operator";};
    "@lsp.typemod.string.injected" = {link = "@string";};
    "@lsp.typemod.struct.defaultLibrary" = {link = "@type.builtin";};
    "@lsp.typemod.type.defaultLibrary" = {
      fg = colors.blue5;
    };
    "@lsp.typemod.typeAlias.defaultLibrary" = {
      fg = colors.blue5;
    };
    "@lsp.typemod.variable.callable" = {link = "@function";};
    "@lsp.typemod.variable.defaultLibrary" = {link = "@variable.builtin";};
    "@lsp.typemod.variable.injected" = {link = "@variable";};
    "@lsp.typemod.variable.static" = {link = "@constant";};
    "@markup" = {link = "@none";};
    "@markup.emphasis" = {
      italic = true;
    };
    "@markup.environment" = {link = "Macro";};
    "@markup.environment.name" = {link = "Type";};
    "@markup.heading" = {link = "Title";};
    "@markup.heading.1.markdown" = {
      bold = true;
      fg = colors.blue;
    };
    "@markup.heading.2.markdown" = {
      bold = true;
      fg = colors.yellow;
    };
    "@markup.heading.3.markdown" = {
      bold = true;
      fg = colors.green;
    };
    "@markup.heading.4.markdown" = {
      bold = true;
      fg = colors.red;
    };
    "@markup.heading.5.markdown" = {
      bold = true;
      fg = colors.purple;
    };
    "@markup.heading.6.markdown" = {
      bold = true;
      fg = colors.blue;
    };
    "@markup.italic" = {
      italic = true;
    };
    "@markup.link" = {
      fg = colors.hint;
    };
    "@markup.link.label" = {link = "SpecialChar";};
    "@markup.link.label.symbol" = {link = "Identifier";};
    "@markup.link.url" = {link = "Underlined";};
    "@markup.list" = {
      fg = colors.blue5;
    };
    "@markup.list.checked" = {
      fg = colors.green1;
    };
    "@markup.list.markdown" = {
      bold = true;
      fg = colors.orange;
    };
    "@markup.list.unchecked" = {
      fg = colors.blue;
    };
    "@markup.math" = {link = "Special";};
    "@markup.raw" = {link = "String";};
    "@markup.raw.markdown_inline" = {
      bg = colors.terminal_black;
      fg = colors.blue;
    };
    "@markup.strikethrough" = {
      strikethrough = true;
    };
    "@markup.strong" = {
      bold = true;
    };
    "@markup.underline" = {
      underline = true;
    };
    "@module" = {link = "Include";};
    "@module.builtin" = {
      fg = colors.red;
    };
    "@namespace.builtin" = {link = "@variable.builtin";};
    "@none" = {};
    "@number" = {link = "Number";};
    "@number.float" = {link = "Float";};
    "@operator" = {
      fg = colors.blue5;
    };
    "@property" = {
      fg = colors.green1;
    };
    "@punctuation.bracket" = {
      fg = colors.fg_dark;
    };
    "@punctuation.delimiter" = {
      fg = colors.blue5;
    };
    "@punctuation.special" = {
      fg = colors.blue5;
    };
    "@string" = {link = "String";};
    "@string.documentation" = {
      fg = colors.yellow;
    };
    "@string.escape" = {
      fg = colors.magenta;
    };
    "@string.regexp" = {
      fg = colors.blue6;
    };
    "@tag" = {link = "Label";};
    "@tag.attribute" = {link = "@property";};
    "@tag.delimiter" = {link = "Delimiter";};
    "@tag.delimiter.tsx" = {
      fg = "#5d7ab8";
    };
    "@tag.javascript" = {
      fg = colors.red;
    };
    "@tag.tsx" = {
      fg = colors.red;
    };
    "@text.strike" = {
      fg = colors.blue5;
    };
    "@text.underline" = {
      fg = colors.blue5;
    };
    "@type" = {link = "Type";};
    "@type.builtin" = {
      fg = colors.blue5;
    };
    "@type.definition" = {link = "Typedef";};
    "@type.qualifier" = {link = "@keyword";};
    "@variable" = {
      fg = colors.fg;
    };
    "@variable.builtin" = {
      fg = colors.red;
    };
    "@variable.member" = {
      fg = colors.green1;
    };
    "@variable.parameter" = {
      fg = colors.yellow;
    };
    "@variable.parameter.builtin" = {
      fg = "#dab484";
    };
    ALEErrorSign = {
      fg = colors.red1;
    };
    ALEWarningSign = {
      fg = colors.yellow;
    };
    AerialArrayIcon = {link = "LspKindArray";};
    AerialBooleanIcon = {link = "LspKindBoolean";};
    AerialClassIcon = {link = "LspKindClass";};
    AerialColorIcon = {link = "LspKindColor";};
    AerialConstantIcon = {link = "LspKindConstant";};
    AerialConstructorIcon = {link = "LspKindConstructor";};
    AerialEnumIcon = {link = "LspKindEnum";};
    AerialEnumMemberIcon = {link = "LspKindEnumMember";};
    AerialEventIcon = {link = "LspKindEvent";};
    AerialFieldIcon = {link = "LspKindField";};
    AerialFileIcon = {link = "LspKindFile";};
    AerialFolderIcon = {link = "LspKindFolder";};
    AerialFunctionIcon = {link = "LspKindFunction";};
    AerialGuide = {
      fg = colors.fg_gutter;
    };
    AerialInterfaceIcon = {link = "LspKindInterface";};
    AerialKeyIcon = {link = "LspKindKey";};
    AerialKeywordIcon = {link = "LspKindKeyword";};
    AerialLine = {link = "LspInlayHint";};
    AerialMethodIcon = {link = "LspKindMethod";};
    AerialModuleIcon = {link = "LspKindModule";};
    AerialNamespaceIcon = {link = "LspKindNamespace";};
    AerialNormal = {
      bg = "NONE";
      fg = colors.fg;
    };
    AerialNullIcon = {link = "LspKindNull";};
    AerialNumberIcon = {link = "LspKindNumber";};
    AerialObjectIcon = {link = "LspKindObject";};
    AerialOperatorIcon = {link = "LspKindOperator";};
    AerialPropertyIcon = {link = "LspKindProperty";};
    AerialReferenceIcon = {link = "LspKindReference";};
    AerialSnippetIcon = {link = "LspKindSnippet";};
    AerialStringIcon = {link = "LspKindString";};
    AerialStructIcon = {link = "LspKindStruct";};
    AerialTextIcon = {link = "LspKindText";};
    AerialTypeParameterIcon = {link = "LspKindTypeParameter";};
    AerialUnitIcon = {link = "LspKindUnit";};
    AerialValueIcon = {link = "LspKindValue";};
    AerialVariableIcon = {link = "LspKindVariable";};
    AlphaButtons = {
      fg = colors.cyan;
    };
    AlphaFooter = {
      fg = colors.blue1;
    };
    AlphaHeader = {
      fg = colors.blue;
    };
    AlphaHeaderLabel = {
      fg = colors.orange;
    };
    AlphaShortcut = {
      fg = colors.orange;
    };
    Bold = {
      bold = true;
      fg = colors.fg;
    };
    BufferAlternate = {
      bg = colors.fg_gutter;
      fg = colors.fg;
    };
    BufferAlternateERROR = {
      bg = colors.fg_gutter;
      fg = colors.red1;
    };
    BufferAlternateHINT = {
      bg = colors.fg_gutter;
      fg = colors.hint;
    };
    BufferAlternateINFO = {
      bg = colors.fg_gutter;
      fg = colors.blue2;
    };
    BufferAlternateIndex = {
      bg = colors.fg_gutter;
      fg = colors.blue2;
    };
    BufferAlternateMod = {
      bg = colors.fg_gutter;
      fg = colors.yellow;
    };
    BufferAlternateSign = {
      bg = colors.fg_gutter;
      fg = colors.blue2;
    };
    BufferAlternateTarget = {
      bg = colors.fg_gutter;
      fg = colors.red;
    };
    BufferAlternateWARN = {
      bg = colors.fg_gutter;
      fg = colors.yellow;
    };
    BufferCurrent = {
      bg = colors.bg;
      fg = colors.fg;
    };
    BufferCurrentERROR = {
      bg = colors.bg;
      fg = colors.red1;
    };
    BufferCurrentHINT = {
      bg = colors.bg;
      fg = colors.hint;
    };
    BufferCurrentINFO = {
      bg = colors.bg;
      fg = colors.blue2;
    };
    BufferCurrentIndex = {
      bg = colors.bg;
      fg = colors.blue2;
    };
    BufferCurrentMod = {
      bg = colors.bg;
      fg = colors.yellow;
    };
    BufferCurrentSign = {
      bg = colors.bg;
      fg = colors.blue1;
    };
    BufferCurrentTarget = {
      bg = colors.bg;
      fg = colors.red;
    };
    BufferCurrentWARN = {
      bg = colors.bg;
      fg = colors.yellow;
    };
    BufferInactive = {
      bg = "#202331";
      fg = "#616789";
    };
    BufferInactiveERROR = {
      bg = "#202331";
      fg = "#b44144";
    };
    BufferInactiveHINT = {
      bg = "#202331";
      fg = "#1a9c84";
    };
    BufferInactiveINFO = {
      bg = "#202331";
      fg = "#1099b4";
    };
    BufferInactiveIndex = {
      bg = "#202331";
      fg = colors.dark5;
    };
    BufferInactiveMod = {
      bg = "#202331";
      fg = "#b8915b";
    };
    BufferInactiveSign = {
      bg = "#202331";
      fg = colors.bg;
    };
    BufferInactiveTarget = {
      bg = "#202331";
      fg = colors.red;
    };
    BufferInactiveWARN = {
      bg = "#202331";
      fg = "#b8915b";
    };
    BufferLineBufferSelected = {
      fg = colors.blue;
    };
    BufferLineFill = {
      bg = colors.bg;
    };
    BufferLineIndicatorSelected = {
      fg = colors.git_change;
    };
    BufferOffset = {
      bg = colors.bg_dark;
      fg = colors.dark5;
    };
    BufferTabpageFill = {
      bg = "#262a3c";
      fg = colors.dark5;
    };
    BufferTabpages = {
      bg = colors.bg_dark;
      fg = "NONE";
    };
    BufferVisible = {
      bg = colors.bg_dark;
      fg = colors.fg;
    };
    BufferVisibleERROR = {
      bg = colors.bg_dark;
      fg = colors.red1;
    };
    BufferVisibleHINT = {
      bg = colors.bg_dark;
      fg = colors.hint;
    };
    BufferVisibleINFO = {
      bg = colors.bg_dark;
      fg = colors.blue2;
    };
    BufferVisibleIndex = {
      bg = colors.bg_dark;
      fg = colors.blue2;
    };
    BufferVisibleMod = {
      bg = colors.bg_dark;
      fg = colors.yellow;
    };
    BufferVisibleSign = {
      bg = colors.bg_dark;
      fg = colors.blue2;
    };
    BufferVisibleTarget = {
      bg = colors.bg_dark;
      fg = colors.red;
    };
    BufferVisibleWARN = {
      bg = colors.bg_dark;
      fg = colors.yellow;
    };
    Character = {
      fg = colors.green;
    };
    CmpDocumentation = {
      bg = colors.bg_dark;
      fg = colors.fg;
    };
    CmpDocumentationBorder = {
      bg = colors.bg_dark;
      fg = colors.border_highlight;
    };
    CmpGhostText = {
      fg = colors.blue2;
    };
    CmpItemAbbr = {
      bg = "NONE";
      fg = colors.fg;
    };
    CmpItemAbbrDeprecated = {
      bg = "NONE";
      fg = colors.fg_gutter;
      strikethrough = true;
    };
    CmpItemAbbrMatch = {
      bg = "NONE";
      fg = colors.blue1;
    };
    CmpItemAbbrMatchFuzzy = {
      bg = "NONE";
      fg = colors.blue1;
    };
    CmpItemKindArray = {link = "LspKindArray";};
    CmpItemKindBoolean = {link = "LspKindBoolean";};
    CmpItemKindClass = {link = "LspKindClass";};
    CmpItemKindCodeium = {
      bg = "NONE";
      fg = colors.hint;
    };
    CmpItemKindColor = {link = "LspKindColor";};
    CmpItemKindConstant = {link = "LspKindConstant";};
    CmpItemKindConstructor = {link = "LspKindConstructor";};
    CmpItemKindCopilot = {
      bg = "NONE";
      fg = colors.hint;
    };
    CmpItemKindDefault = {
      bg = "NONE";
      fg = colors.fg_dark;
    };
    CmpItemKindEnum = {link = "LspKindEnum";};
    CmpItemKindEnumMember = {link = "LspKindEnumMember";};
    CmpItemKindEvent = {link = "LspKindEvent";};
    CmpItemKindField = {link = "LspKindField";};
    CmpItemKindFile = {link = "LspKindFile";};
    CmpItemKindFolder = {link = "LspKindFolder";};
    CmpItemKindFunction = {link = "LspKindFunction";};
    CmpItemKindInterface = {link = "LspKindInterface";};
    CmpItemKindKey = {link = "LspKindKey";};
    CmpItemKindKeyword = {link = "LspKindKeyword";};
    CmpItemKindMethod = {link = "LspKindMethod";};
    CmpItemKindModule = {link = "LspKindModule";};
    CmpItemKindNamespace = {link = "LspKindNamespace";};
    CmpItemKindNull = {link = "LspKindNull";};
    CmpItemKindNumber = {link = "LspKindNumber";};
    CmpItemKindObject = {link = "LspKindObject";};
    CmpItemKindOperator = {link = "LspKindOperator";};
    CmpItemKindPackage = {link = "LspKindPackage";};
    CmpItemKindProperty = {link = "LspKindProperty";};
    CmpItemKindReference = {link = "LspKindReference";};
    CmpItemKindSnippet = {link = "LspKindSnippet";};
    CmpItemKindString = {link = "LspKindString";};
    CmpItemKindStruct = {link = "LspKindStruct";};
    CmpItemKindSupermaven = {
      bg = "NONE";
      fg = colors.hint;
    };
    CmpItemKindTabNine = {
      bg = "NONE";
      fg = colors.hint;
    };
    CmpItemKindText = {link = "LspKindText";};
    CmpItemKindTypeParameter = {link = "LspKindTypeParameter";};
    CmpItemKindUnit = {link = "LspKindUnit";};
    CmpItemKindValue = {link = "LspKindValue";};
    CmpItemKindVariable = {link = "LspKindVariable";};
    CmpItemMenu = {
      bg = "NONE";
      fg = colors.comment;
    };
    CodeBlock = {
      bg = colors.bg_dark;
    };
    ColorColumn = {
      bg = colors.bg;
    };
    Comment = {
      fg = colors.comment;
      italic = true;
    };
    Conceal = {
      fg = colors.dark5;
    };
    Constant = {
      fg = colors.orange;
    };
    CurSearch = {link = "IncSearch";};
    Cursor = {
      bg = colors.fg;
      fg = colors.bg;
    };
    CursorColumn = {
      bg = colors.bg_highlight;
    };
    CursorIM = {
      bg = colors.fg;
      fg = colors.bg;
    };
    CursorLine = {
      bg = colors.bg_highlight;
    };
    CursorLineNr = {
      bold = true;
      fg = colors.orange;
    };
    DapStoppedLine = {
      bg = "#2e2a2d";
    };
    DashboardDesc = {
      fg = colors.cyan;
    };
    DashboardFiles = {
      fg = colors.blue;
    };
    DashboardFooter = {
      fg = colors.blue1;
    };
    DashboardHeader = {
      fg = colors.blue;
    };
    DashboardIcon = {
      bold = true;
      fg = colors.cyan;
    };
    DashboardKey = {
      fg = colors.orange;
    };
    DashboardMruIcon = {
      fg = colors.purple;
    };
    DashboardMruTitle = {
      fg = colors.cyan;
    };
    DashboardProjectIcon = {
      fg = colors.yellow;
    };
    DashboardProjectTitle = {
      fg = colors.cyan;
    };
    DashboardProjectTitleIcon = {
      fg = colors.orange;
    };
    DashboardShortCut = {
      fg = colors.cyan;
    };
    DashboardShortCutIcon = {
      fg = colors.magenta;
    };
    Debug = {
      fg = colors.orange;
    };
    DefinitionCount = {
      fg = colors.purple;
    };
    DefinitionIcon = {
      fg = colors.blue;
    };
    Delimiter = {link = "Special";};
    DiagnosticError = {
      fg = colors.red1;
    };
    DiagnosticHint = {
      fg = colors.hint;
    };
    DiagnosticInfo = {
      fg = colors.blue2;
    };
    DiagnosticInformation = {link = "DiagnosticInfo";};
    DiagnosticUnderlineError = {
      sp = colors.red1;
      undercurl = true;
    };
    DiagnosticUnderlineHint = {
      sp = colors.hint;
      undercurl = true;
    };
    DiagnosticUnderlineInfo = {
      sp = colors.blue2;
      undercurl = true;
    };
    DiagnosticUnderlineWarn = {
      sp = colors.yellow;
      undercurl = true;
    };
    DiagnosticUnnecessary = {
      fg = colors.blue2;
    };
    DiagnosticVirtualTextError = {
      bg = "#2d202a";
      fg = colors.red1;
    };
    DiagnosticVirtualTextHint = {
      bg = "#1a2b32";
      fg = colors.hint;
    };
    DiagnosticVirtualTextInfo = {
      bg = "#192b38";
      fg = colors.blue2;
    };
    DiagnosticVirtualTextWarn = {
      bg = "#2e2a2d";
      fg = colors.yellow;
    };
    DiagnosticWarn = {
      fg = colors.yellow;
    };
    DiagnosticWarning = {link = "DiagnosticWarn";};
    DiffAdd = {
      fg = colors.bg;
      bg = colors.git_add;
    };
    DiffChange = {
      fg = colors.bg;
      bg = colors.git_change;
    };
    DiffDelete = {
      fg = colors.bg;
      bg = colors.git_delete;
    };
    DiffText = {
      bg = "#394b70";
    };
    Directory = {
      fg = colors.blue;
    };
    EndOfBuffer = {
      fg = colors.bg;
    };
    Error = {
      fg = colors.red1;
    };
    ErrorMsg = {
      fg = colors.red1;
    };
    FlashBackdrop = {
      fg = colors.comment;
    };
    FlashLabel = {
      bg = "#ff007c";
      bold = true;
      fg = colors.fg;
    };
    FloatBorder = {
      bg = colors.bg_dark;
      fg = colors.green1;
    };
    FloatTitle = {
      bg = colors.bg_dark;
      fg = colors.orange;
    };
    FoldColumn = {
      bg = colors.bg;
      fg = colors.comment;
    };
    Folded = {
      bg = colors.fg_gutter;
      fg = colors.blue;
    };
    Foo = {
      bg = "#ff007c";
      fg = colors.fg;
    };
    Function = {
      fg = colors.blue;
    };
    FzfLuaBorder = {
      bg = colors.bg_dark;
      fg = colors.border_highlight;
    };
    FzfLuaCursor = {link = "IncSearch";};
    FzfLuaDirPart = {
      fg = colors.fg_dark;
    };
    FzfLuaFilePart = {link = "FzfLuaFzfNormal";};

    FzfLuaFzfCursorLine = {link = "Visual";};
    FzfLuaFzfNormal = {
      fg = colors.fg;
    };
    FzfLuaFzfPointer = {
      fg = "#ff007c";
    };
    FzfLuaFzfSeparator = {
      bg = colors.bg_dark;
      fg = colors.orange;
    };
    FzfLuaHeaderBind = {link = "@punctuation.special";};
    FzfLuaHeaderText = {link = "Title";};
    FzfLuaNormal = {
      bg = colors.bg_dark;
      fg = colors.fg;
    };
    FzfLuaPath = {link = "Directory";};
    FzfLuaPreviewTitle = {
      bg = colors.bg_dark;
      fg = colors.border_highlight;
    };
    FzfLuaTitle = {
      bg = colors.bg_dark;
      fg = colors.orange;
    };
    GitGutterAdd = {
      fg = colors.git_add;
    };
    GitGutterAddLineNr = {
      fg = colors.git_add;
    };
    GitGutterChange = {
      fg = colors.git_change;
    };
    GitGutterChangeLineNr = {
      fg = colors.git_change;
    };
    GitGutterDelete = {
      fg = colors.git_delete;
    };
    GitGutterDeleteLineNr = {
      fg = colors.git_delete;
    };
    GitSignsAdd = {
      fg = colors.git_add;
    };
    GitSignsChange = {
      fg = colors.git_change;
    };
    GitSignsDelete = {
      fg = colors.git_delete;
    };
    GlyphPalette1 = {
      fg = colors.red1;
    };
    GlyphPalette2 = {
      fg = colors.green;
    };
    GlyphPalette3 = {
      fg = colors.yellow;
    };
    GlyphPalette4 = {
      fg = colors.blue;
    };
    GlyphPalette6 = {
      fg = colors.green1;
    };
    GlyphPalette7 = {
      fg = colors.fg;
    };
    GlyphPalette9 = {
      fg = colors.red;
    };
    GrugFarHelpHeader = {
      fg = colors.comment;
    };
    GrugFarHelpHeaderKey = {
      fg = colors.cyan;
    };
    GrugFarInputLabel = {
      fg = colors.blue1;
    };
    GrugFarInputPlaceholder = {
      fg = colors.comment;
    };
    GrugFarResultsChangeIndicator = {
      fg = colors.git_change;
    };
    GrugFarResultsHeader = {
      fg = colors.orange;
    };
    GrugFarResultsLineColumn = {
      fg = colors.comment;
    };
    GrugFarResultsLineNo = {
      fg = colors.comment;
    };
    GrugFarResultsMatch = {
      bg = colors.red;
      fg = colors.black;
    };
    GrugFarResultsStats = {
      fg = colors.blue;
    };
    Headline = {link = "Headline1";};
    Headline1 = {
      bg = "#1f2230";
    };
    Headline2 = {
      bg = "#242229";
    };
    Headline3 = {
      bg = "#212429";
    };
    Headline4 = {
      bg = "#1a232c";
    };
    Headline5 = {
      bg = "#222130";
    };
    Headline6 = {
      bg = "#21202f";
    };
    HopNextKey = {
      bold = true;
      fg = "#ff007c";
    };
    HopNextKey1 = {
      bold = true;
      fg = colors.blue2;
    };
    HopNextKey2 = {
      fg = "#127a90";
    };
    HopUnmatched = {
      fg = colors.comment;
    };
    IblIndent = {
      fg = colors.bg_visual;
      nocombine = true;
    };
    IblScope = {
      fg = colors.blue1;
      nocombine = true;
    };
    Identifier = {
      fg = colors.magenta;
    };
    IlluminatedWordRead = {
      bg = colors.fg_gutter;
    };
    IlluminatedWordText = {
      bg = colors.fg_gutter;
    };
    IlluminatedWordWrite = {
      bg = colors.fg_gutter;
    };
    IncSearch = {
      bg = colors.orange;
      fg = colors.black;
    };
    IndentBlanklineChar = {
      fg = colors.bg_visual;
      nocombine = true;
    };
    IndentBlanklineContextChar = {
      fg = colors.blue1;
      nocombine = true;
    };
    IndentLine = {
      fg = colors.bg_visual;
      nocombine = true;
    };
    IndentLineCurrent = {
      fg = colors.blue1;
      nocombine = true;
    };
    Italic = {
      fg = colors.fg;
      italic = true;
    };
    Keyword = {
      fg = colors.cyan;
      italic = true;
    };
    LazyProgressDone = {
      bold = true;
      fg = "#ff007c";
    };
    LazyProgressTodo = {
      bold = true;
      fg = colors.fg_gutter;
    };
    LeapBackdrop = {
      fg = colors.comment;
    };
    LeapLabel = {
      bold = true;
      fg = "#ff007c";
    };
    LeapMatch = {
      bg = "#ff007c";
      bold = true;
      fg = colors.fg;
    };
    LineNr = {
      fg = colors.fg_gutter;
    };
    LineNrAbove = {
      fg = colors.fg_gutter;
    };
    LineNrBelow = {
      fg = colors.fg_gutter;
    };
    LspCodeLens = {
      fg = colors.comment;
    };
    LspFloatWinBorder = {
      fg = colors.border_highlight;
    };
    LspFloatWinNormal = {
      bg = colors.bg_dark;
    };
    LspInfoBorder = {
      bg = colors.bg_dark;
      fg = colors.border_highlight;
    };
    LspInlayHint = {
      bg = "#1d202d";
      fg = colors.comment;
    };
    LspKindArray = {link = "@punctuation.bracket";};
    LspKindBoolean = {link = "@boolean";};
    LspKindClass = {link = "@type";};
    LspKindColor = {link = "Special";};
    LspKindConstant = {link = "@constant";};
    LspKindConstructor = {link = "@constructor";};
    LspKindEnum = {link = "@lsp.type.enum";};
    LspKindEnumMember = {link = "@lsp.type.enumMember";};
    LspKindEvent = {link = "Special";};
    LspKindField = {link = "@variable.member";};
    LspKindFile = {link = "Normal";};
    LspKindFolder = {link = "Directory";};
    LspKindFunction = {link = "@function";};
    LspKindInterface = {link = "@lsp.type.interface";};
    LspKindKey = {link = "@variable.member";};
    LspKindKeyword = {link = "@lsp.type.keyword";};
    LspKindMethod = {link = "@function.method";};
    LspKindModule = {link = "@module";};
    LspKindNamespace = {link = "@module";};
    LspKindNull = {link = "@constant.builtin";};
    LspKindNumber = {link = "@number";};
    LspKindObject = {link = "@constant";};
    LspKindOperator = {link = "@operator";};
    LspKindPackage = {link = "@module";};
    LspKindProperty = {link = "@property";};
    LspKindReference = {link = "@markup.link";};
    LspKindSnippet = {link = "Conceal";};
    LspKindString = {link = "@string";};
    LspKindStruct = {link = "@lsp.type.struct";};
    LspKindText = {link = "@markup";};
    LspKindTypeParameter = {link = "@lsp.type.typeParameter";};
    LspKindUnit = {link = "@lsp.type.struct";};
    LspKindValue = {link = "@string";};
    LspKindVariable = {link = "@variable";};
    LspReferenceRead = {
      bg = colors.fg_gutter;
    };
    LspReferenceText = {
      bg = colors.fg_gutter;
    };
    LspReferenceWrite = {
      bg = colors.fg_gutter;
    };
    LspSagaBorderTitle = {
      fg = colors.cyan;
    };
    LspSagaCodeActionBorder = {
      fg = colors.blue;
    };
    LspSagaCodeActionContent = {
      fg = colors.purple;
    };
    LspSagaCodeActionTitle = {
      fg = colors.blue1;
    };
    LspSagaDefPreviewBorder = {
      fg = colors.green;
    };
    LspSagaFinderSelection = {
      fg = colors.blue2;
    };
    LspSagaHoverBorder = {
      fg = colors.blue;
    };
    LspSagaRenameBorder = {
      fg = colors.green;
    };
    LspSagaSignatureHelpBorder = {
      fg = colors.red;
    };
    LspSignatureActiveParameter = {
      bg = "#20253a";
      bold = true;
    };
    MatchParen = {
      bold = true;
      fg = colors.orange;
    };
    MiniAnimateCursor = {
      nocombine = true;
      reverse = true;
    };
    MiniAnimateNormalFloat = {link = "NormalFloat";};
    MiniClueBorder = {link = "FloatBorder";};
    MiniClueDescGroup = {link = "DiagnosticFloatingWarn";};
    MiniClueDescSingle = {link = "NormalFloat";};
    MiniClueNextKey = {link = "DiagnosticFloatingHint";};
    MiniClueNextKeyWithPostkeys = {link = "DiagnosticFloatingError";};
    MiniClueSeparator = {link = "DiagnosticFloatingInfo";};
    MiniClueTitle = {link = "FloatTitle";};
    MiniCompletionActiveParameter = {
      underline = true;
    };
    MiniCursorword = {
      bg = colors.fg_gutter;
    };
    MiniCursorwordCurrent = {
      bg = colors.fg_gutter;
    };
    MiniDepsChangeAdded = {link = "diffAdded";};
    MiniDepsChangeRemoved = {link = "diffRemoved";};
    MiniDepsHint = {link = "DiagnosticHint";};
    MiniDepsInfo = {link = "DiagnosticInfo";};
    MiniDepsMsgBreaking = {link = "DiagnosticWarn";};
    MiniDepsPlaceholder = {link = "Comment";};
    MiniDepsTitle = {link = "Title";};
    MiniDepsTitleError = {
      bg = colors.git_delete;
      fg = colors.black;
    };
    MiniDepsTitleSame = {link = "Comment";};
    MiniDepsTitleUpdate = {
      bg = colors.git_add;
      fg = colors.black;
    };
    MiniDiffOverAdd = {link = "DiffAdd";};
    MiniDiffOverChange = {link = "DiffText";};
    MiniDiffOverContext = {link = "DiffChange";};
    MiniDiffOverDelete = {link = "DiffDelete";};
    MiniDiffSignAdd = {
      fg = colors.git_add;
    };
    MiniDiffSignChange = {
      fg = colors.git_change;
    };
    MiniDiffSignDelete = {
      fg = colors.git_delete;
    };
    MiniFilesBorder = {link = "FloatBorder";};
    MiniFilesBorderModified = {link = "DiagnosticFloatingWarn";};
    MiniFilesCursorLine = {link = "CursorLine";};
    MiniFilesDirectory = {link = "Directory";};
    MiniFilesFile = {
      fg = colors.fg;
    };
    MiniFilesNormal = {link = "NormalFloat";};
    MiniFilesTitle = {link = "FloatTitle";};
    MiniFilesTitleFocused = {
      bg = colors.bg_dark;
      bold = true;
      fg = colors.orange;
    };
    MiniHipatternsFixme = {
      bg = colors.red1;
      bold = true;
      fg = colors.black;
    };
    MiniHipatternsHack = {
      bg = colors.yellow;
      bold = true;
      fg = colors.black;
    };
    MiniHipatternsNote = {
      bg = colors.hint;
      bold = true;
      fg = colors.black;
    };
    MiniHipatternsTodo = {
      bg = colors.blue2;
      bold = true;
      fg = colors.black;
    };
    MiniIconsAzure = {
      fg = colors.blue2;
    };
    MiniIconsBlue = {
      fg = colors.blue;
    };
    MiniIconsCyan = {
      fg = colors.hint;
    };
    MiniIconsGreen = {
      fg = colors.green;
    };
    MiniIconsGrey = {
      fg = colors.fg;
    };
    MiniIconsOrange = {
      fg = colors.orange;
    };
    MiniIconsPurple = {
      fg = colors.purple;
    };
    MiniIconsRed = {
      fg = colors.red;
    };
    MiniIconsYellow = {
      fg = colors.yellow;
    };
    MiniIndentscopePrefix = {
      nocombine = true;
    };
    MiniIndentscopeSymbol = {
      fg = colors.blue1;
      nocombine = true;
    };
    MiniJump = {
      bg = "#ff007c";
      fg = "#ffffff";
    };
    MiniJump2dDim = {link = "Comment";};
    MiniJump2dSpot = {
      bold = true;
      fg = colors.fg;
      nocombine = true;
    };
    MiniJump2dSpotAhead = {
      bg = colors.bg_dark;
      fg = colors.hint;
      nocombine = true;
    };
    MiniJump2dSpotUnique = {
      bold = true;
      fg = colors.orange;
      nocombine = true;
    };
    MiniMapNormal = {link = "NormalFloat";};
    MiniMapSymbolCount = {link = "Special";};
    MiniMapSymbolLine = {link = "Title";};
    MiniMapSymbolView = {link = "Delimiter";};
    MiniNotifyBorder = {link = "FloatBorder";};
    MiniNotifyNormal = {link = "NormalFloat";};
    MiniNotifyTitle = {link = "FloatTitle";};
    MiniOperatorsExchangeFrom = {link = "IncSearch";};
    MiniPickBorder = {link = "FloatBorder";};
    MiniPickBorderBusy = {link = "DiagnosticFloatingWarn";};
    MiniPickBorderText = {
      bg = colors.bg_dark;
      fg = colors.hint;
    };
    MiniPickHeader = {link = "DiagnosticFloatingHint";};
    MiniPickIconDirectory = {link = "Directory";};
    MiniPickIconFile = {link = "MiniPickNormal";};
    MiniPickMatchCurrent = {link = "CursorLine";};
    MiniPickMatchMarked = {link = "Visual";};
    MiniPickMatchRanges = {link = "DiagnosticFloatingHint";};
    MiniPickNormal = {link = "NormalFloat";};
    MiniPickPreviewLine = {link = "CursorLine";};
    MiniPickPreviewRegion = {link = "IncSearch";};
    MiniPickPrompt = {
      bg = colors.bg_dark;
      fg = colors.blue2;
    };
    MiniStarterCurrent = {
      nocombine = true;
    };
    MiniStarterFooter = {
      fg = colors.yellow;
      italic = true;
    };
    MiniStarterHeader = {
      fg = colors.blue;
    };
    MiniStarterInactive = {
      fg = colors.comment;
      italic = true;
    };
    MiniStarterItem = {
      bg = colors.bg;
      fg = colors.fg;
    };
    MiniStarterItemBullet = {
      fg = colors.orange;
    };
    MiniStarterItemPrefix = {
      fg = colors.yellow;
    };
    MiniStarterQuery = {
      fg = colors.blue2;
    };
    MiniStarterSection = {
      fg = colors.blue1;
    };
    MiniStatuslineDevinfo = {
      bg = colors.fg_gutter;
      fg = colors.fg_dark;
    };
    MiniStatuslineFileinfo = {
      bg = colors.fg_gutter;
      fg = colors.fg_dark;
    };
    MiniStatuslineFilename = {
      bg = colors.bg_highlight;
      fg = colors.fg_dark;
    };
    MiniStatuslineInactive = {
      bg = colors.bg_dark;
      fg = colors.blue;
    };
    MiniStatuslineModeCommand = {
      bg = colors.yellow;
      bold = true;
      fg = colors.black;
    };
    MiniStatuslineModeInsert = {
      bg = colors.green;
      bold = true;
      fg = colors.black;
    };
    MiniStatuslineModeNormal = {
      bg = colors.blue;
      bold = true;
      fg = colors.black;
    };
    MiniStatuslineModeOther = {
      bg = colors.hint;
      bold = true;
      fg = colors.black;
    };
    MiniStatuslineModeReplace = {
      bg = colors.red;
      bold = true;
      fg = colors.black;
    };
    MiniStatuslineModeVisual = {
      bg = colors.magenta;
      bold = true;
      fg = colors.black;
    };
    MiniSurround = {
      bg = colors.orange;
      fg = colors.black;
    };
    MiniTablineCurrent = {
      bg = colors.fg_gutter;
      fg = colors.fg;
    };
    MiniTablineFill = {
      bg = colors.black;
    };
    MiniTablineHidden = {
      bg = colors.bg_dark;
      fg = colors.dark5;
    };
    MiniTablineModifiedCurrent = {
      bg = colors.fg_gutter;
      fg = colors.yellow;
    };
    MiniTablineModifiedHidden = {
      bg = colors.bg_dark;
      fg = "#a58354";
    };
    MiniTablineModifiedVisible = {
      bg = colors.bg_dark;
      fg = colors.yellow;
    };
    MiniTablineTabpagesection = {
      bg = colors.fg_gutter;
      fg = "NONE";
    };
    MiniTablineVisible = {
      bg = colors.bg_dark;
      fg = colors.fg;
    };
    MiniTestEmphasis = {
      bold = true;
    };
    MiniTestFail = {
      bold = true;
      fg = colors.red;
    };
    MiniTestPass = {
      bold = true;
      fg = colors.green;
    };
    MiniTrailspace = {
      bg = colors.red;
    };
    ModeMsg = {
      bold = true;
      fg = colors.fg_dark;
    };
    MoreMsg = {
      fg = colors.blue;
    };
    MsgArea = {
      fg = colors.fg_dark;
    };
    NavicIconsArray = {link = "LspKindArray";};
    NavicIconsBoolean = {link = "LspKindBoolean";};
    NavicIconsClass = {link = "LspKindClass";};
    NavicIconsColor = {link = "LspKindColor";};
    NavicIconsConstant = {link = "LspKindConstant";};
    NavicIconsConstructor = {link = "LspKindConstructor";};
    NavicIconsEnum = {link = "LspKindEnum";};
    NavicIconsEnumMember = {link = "LspKindEnumMember";};
    NavicIconsEvent = {link = "LspKindEvent";};
    NavicIconsField = {link = "LspKindField";};
    NavicIconsFile = {link = "LspKindFile";};
    NavicIconsFolder = {link = "LspKindFolder";};
    NavicIconsFunction = {link = "LspKindFunction";};
    NavicIconsInterface = {link = "LspKindInterface";};
    NavicIconsKey = {link = "LspKindKey";};
    NavicIconsKeyword = {link = "LspKindKeyword";};
    NavicIconsMethod = {link = "LspKindMethod";};
    NavicIconsModule = {link = "LspKindModule";};
    NavicIconsNamespace = {link = "LspKindNamespace";};
    NavicIconsNull = {link = "LspKindNull";};
    NavicIconsNumber = {link = "LspKindNumber";};
    NavicIconsObject = {link = "LspKindObject";};
    NavicIconsOperator = {link = "LspKindOperator";};
    NavicIconsPackage = {link = "LspKindPackage";};
    NavicIconsProperty = {link = "LspKindProperty";};
    NavicIconsReference = {link = "LspKindReference";};
    NavicIconsSnippet = {link = "LspKindSnippet";};
    NavicIconsString = {link = "LspKindString";};
    NavicIconsStruct = {link = "LspKindStruct";};
    NavicIconsText = {link = "LspKindText";};
    NavicIconsTypeParameter = {link = "LspKindTypeParameter";};
    NavicIconsUnit = {link = "LspKindUnit";};
    NavicIconsValue = {link = "LspKindValue";};
    NavicIconsVariable = {link = "LspKindVariable";};
    NavicSeparator = {
      bg = "NONE";
      fg = colors.fg;
    };
    NavicText = {
      bg = "NONE";
      fg = colors.fg;
    };
    NeoTreeDimText = {
      fg = colors.fg_gutter;
    };
    NeoTreeFileName = {
      fg = colors.fg_dark;
    };
    NeoTreeGitModified = {
      fg = colors.orange;
    };
    NeoTreeGitStaged = {
      fg = colors.green1;
    };
    NeoTreeGitUntracked = {
      fg = colors.magenta;
    };
    NeoTreeNormal = {
      bg = colors.bg_dark;
      fg = colors.fg_dark;
    };
    NeoTreeNormalNC = {
      bg = colors.bg_dark;
      fg = colors.fg_dark;
    };
    NeoTreeTabActive = {
      bg = colors.bg_dark;
      bold = true;
      fg = colors.blue;
    };
    NeoTreeTabInactive = {
      bg = "#121218";
      fg = colors.comment;
    };
    NeoTreeTabSeparatorActive = {
      bg = colors.bg_dark;
      fg = colors.blue;
    };
    NeoTreeTabSeparatorInactive = {
      bg = "#121218";
      fg = colors.bg;
    };
    NeogitBranch = {
      fg = colors.magenta;
    };
    NeogitDiffAddHighlight = {
      bg = "#20303b";
      fg = colors.git_add;
    };
    NeogitDiffContextHighlight = {
      bg = "#2b2f44";
      fg = colors.fg_dark;
    };
    NeogitDiffDeleteHighlight = {
      bg = "#37222c";
      fg = colors.git_delete;
    };
    NeogitHunkHeader = {
      bg = colors.bg_highlight;
      fg = colors.fg;
    };
    NeogitHunkHeaderHighlight = {
      bg = colors.fg_gutter;
      fg = colors.blue;
    };
    NeogitRemote = {
      fg = colors.purple;
    };
    NeotestAdapterName = {
      bold = true;
      fg = colors.purple;
    };
    NeotestBorder = {
      fg = colors.blue;
    };
    NeotestDir = {
      fg = colors.blue;
    };
    NeotestExpandMarker = {
      fg = colors.fg_dark;
    };
    NeotestFailed = {
      fg = colors.red;
    };
    NeotestFile = {
      fg = colors.hint;
    };
    NeotestFocused = {
      fg = colors.yellow;
    };
    NeotestIndent = {
      fg = colors.fg_dark;
    };
    NeotestMarked = {
      fg = colors.blue;
    };
    NeotestNamespace = {
      fg = "#41a6b5";
    };
    NeotestPassed = {
      fg = colors.green;
    };
    NeotestRunning = {
      fg = colors.yellow;
    };
    NeotestSkipped = {
      fg = colors.blue;
    };
    NeotestTarget = {
      fg = colors.blue;
    };
    NeotestTest = {
      fg = colors.fg_dark;
    };
    NeotestWinSelect = {
      fg = colors.blue;
    };
    NoicePopupBorder = {
      fg = colors.orange;
    };
    NoicePopupmenuBorder = {
      fg = colors.orange;
    };
    NoiceCmdlinePopupBorder = {
      fg = colors.orange;
    };
    NoiceCmdlineIcon = {
      fg = colors.blue;
    };
    NoiceCmdlineIconInput = {
      fg = colors.yellow;
    };
    NoiceCmdlineIconLua = {
      fg = colors.blue1;
    };
    NoiceCmdlinePopupBorderInput = {
      fg = colors.yellow;
    };
    NoiceCmdlinePopupBorderLua = {
      fg = colors.blue1;
    };
    NoiceCmdlinePopupTitleInput = {
      fg = colors.yellow;
    };
    NoiceCmdlinePopupTitleLua = {
      fg = colors.blue1;
    };
    NoiceCompletionItemKindArray = {link = "LspKindArray";};
    NoiceCompletionItemKindBoolean = {link = "LspKindBoolean";};
    NoiceCompletionItemKindClass = {link = "LspKindClass";};
    NoiceCompletionItemKindColor = {link = "LspKindColor";};
    NoiceCompletionItemKindConstant = {link = "LspKindConstant";};
    NoiceCompletionItemKindConstructor = {link = "LspKindConstructor";};
    NoiceCompletionItemKindDefault = {
      bg = "NONE";
      fg = colors.fg_dark;
    };
    NoiceCompletionItemKindEnum = {link = "LspKindEnum";};
    NoiceCompletionItemKindEnumMember = {link = "LspKindEnumMember";};
    NoiceCompletionItemKindEvent = {link = "LspKindEvent";};
    NoiceCompletionItemKindField = {link = "LspKindField";};
    NoiceCompletionItemKindFile = {link = "LspKindFile";};
    NoiceCompletionItemKindFolder = {link = "LspKindFolder";};
    NoiceCompletionItemKindFunction = {link = "LspKindFunction";};
    NoiceCompletionItemKindInterface = {link = "LspKindInterface";};
    NoiceCompletionItemKindKey = {link = "LspKindKey";};
    NoiceCompletionItemKindKeyword = {link = "LspKindKeyword";};
    NoiceCompletionItemKindMethod = {link = "LspKindMethod";};
    NoiceCompletionItemKindModule = {link = "LspKindModule";};
    NoiceCompletionItemKindNamespace = {link = "LspKindNamespace";};
    NoiceCompletionItemKindNull = {link = "LspKindNull";};
    NoiceCompletionItemKindNumber = {link = "LspKindNumber";};
    NoiceCompletionItemKindObject = {link = "LspKindObject";};
    NoiceCompletionItemKindOperator = {link = "LspKindOperator";};
    NoiceCompletionItemKindPackage = {link = "LspKindPackage";};
    NoiceCompletionItemKindProperty = {link = "LspKindProperty";};
    NoiceCompletionItemKindReference = {link = "LspKindReference";};
    NoiceCompletionItemKindSnippet = {link = "LspKindSnippet";};
    NoiceCompletionItemKindString = {link = "LspKindString";};
    NoiceCompletionItemKindStruct = {link = "LspKindStruct";};
    NoiceCompletionItemKindText = {link = "LspKindText";};
    NoiceCompletionItemKindTypeParameter = {link = "LspKindTypeParameter";};
    NoiceCompletionItemKindUnit = {link = "LspKindUnit";};
    NoiceCompletionItemKindValue = {link = "LspKindValue";};
    NoiceCompletionItemKindVariable = {link = "LspKindVariable";};
    NonText = {
      fg = colors.comment;
    };
    Normal = {
      bg = colors.bg;
      fg = colors.fg;
    };
    NormalFloat = {
      bg = colors.bg_dark;
      fg = colors.fg;
    };
    NormalNC = {
      bg = colors.bg;
      fg = colors.fg;
    };
    NormalSB = {
      bg = colors.bg_dark;
      fg = colors.fg_dark;
    };
    NotifyBackground = {
      bg = colors.bg;
      fg = colors.fg;
    };
    NotifyDEBUGBody = {
      bg = colors.bg;
      fg = colors.fg;
    };
    NotifyDEBUGBorder = {
      bg = colors.bg;
      fg = "#2c2f44";
    };
    NotifyDEBUGIcon = {
      fg = colors.comment;
    };
    NotifyDEBUGTitle = {
      fg = colors.comment;
    };
    NotifyERRORBody = {
      bg = colors.bg;
      fg = colors.fg;
    };
    NotifyERRORBorder = {
      bg = colors.bg;
      fg = "#542931";
    };
    NotifyERRORIcon = {
      fg = colors.red1;
    };
    NotifyERRORTitle = {
      fg = colors.red1;
    };
    NotifyINFOBody = {
      bg = colors.bg;
      fg = colors.fg;
    };
    NotifyINFOBorder = {
      bg = colors.bg;
      fg = "#164a5b";
    };
    NotifyINFOIcon = {
      fg = colors.blue2;
    };
    NotifyINFOTitle = {
      fg = colors.blue2;
    };
    NotifyTRACEBody = {
      bg = colors.bg;
      fg = colors.fg;
    };
    NotifyTRACEBorder = {
      bg = colors.bg;
      fg = "#41385b";
    };
    NotifyTRACEIcon = {
      fg = colors.purple;
    };
    NotifyTRACETitle = {
      fg = colors.purple;
    };
    NotifyWARNBody = {
      bg = colors.bg;
      fg = colors.fg;
    };
    NotifyWARNBorder = {
      bg = colors.bg;
      fg = "#55473a";
    };
    NotifyWARNIcon = {
      fg = colors.yellow;
    };
    NotifyWARNTitle = {
      fg = colors.yellow;
    };
    NvimTreeFolderIcon = {
      bg = "NONE";
      fg = colors.blue;
    };
    NvimTreeGitDeleted = {
      fg = colors.git_delete;
    };
    NvimTreeGitDirty = {
      fg = colors.git_change;
    };
    NvimTreeGitNew = {
      fg = colors.git_add;
    };
    NvimTreeImageFile = {
      fg = colors.fg_dark;
    };
    NvimTreeIndentMarker = {
      fg = colors.fg_gutter;
    };
    NvimTreeNormal = {
      bg = colors.bg_dark;
      fg = colors.fg_dark;
    };
    NvimTreeNormalNC = {
      bg = colors.bg_dark;
      fg = colors.fg_dark;
    };
    NvimTreeOpenedFile = {
      bg = colors.bg_highlight;
    };
    NvimTreeRootFolder = {
      bold = true;
      fg = colors.blue;
    };
    NvimTreeSpecialFile = {
      fg = colors.purple;
      underline = true;
    };
    NvimTreeSymlink = {
      fg = colors.blue;
    };
    NvimTreeWinSeparator = {
      bg = colors.bg_dark;
      fg = colors.bg_dark;
    };
    OctoDetailsLabel = {
      bold = true;
      fg = colors.blue1;
    };
    OctoDetailsValue = {link = "@variable.member";};
    OctoDirty = {
      bold = true;
      fg = colors.orange;
    };
    OctoIssueTitle = {
      bold = true;
      fg = colors.purple;
    };
    OctoStateChangesRequested = {link = "DiagnosticVirtualTextWarn";};
    OctoStateClosed = {link = "DiagnosticVirtualTextError";};
    OctoStateMerged = {
      bg = "#2a283b";
      fg = colors.magenta;
    };
    OctoStateOpen = {link = "DiagnosticVirtualTextHint";};
    OctoStatePending = {link = "DiagnosticVirtualTextWarn";};
    OctoStatusColumn = {
      fg = colors.blue1;
    };
    Operator = {
      fg = colors.blue5;
    };
    Pmenu = {
      bg = colors.bg_dark;
      fg = colors.fg;
    };
    PmenuMatch = {
      bg = colors.bg_dark;
      fg = colors.blue1;
    };
    PmenuMatchSel = {
      bg = "#343a55";
      fg = colors.blue1;
    };
    PmenuSbar = {
      bg = "#1f1f29";
    };
    PmenuSel = {
      bg = "#343a55";
    };
    PmenuThumb = {
      bg = colors.fg_gutter;
    };
    PreProc = {
      fg = colors.cyan;
    };
    Question = {
      fg = colors.blue;
    };
    QuickFixLine = {
      bg = colors.bg_visual;
      bold = true;
    };
    RainbowDelimiterBlue = {
      fg = colors.blue;
    };
    RainbowDelimiterCyan = {
      fg = colors.cyan;
    };
    RainbowDelimiterGreen = {
      fg = colors.green;
    };
    RainbowDelimiterOrange = {
      fg = colors.orange;
    };
    RainbowDelimiterRed = {
      fg = colors.red;
    };
    RainbowDelimiterViolet = {
      fg = colors.purple;
    };
    RainbowDelimiterYellow = {
      fg = colors.yellow;
    };
    ReferencesCount = {
      fg = colors.purple;
    };
    ReferencesIcon = {
      fg = colors.blue;
    };
    RenderMarkdownBullet = {
      fg = colors.orange;
    };
    RenderMarkdownCode = {
      bg = colors.bg_dark;
    };
    RenderMarkdownCodeInline = {link = "@markup.raw.markdown_inline";};
    RenderMarkdownDash = {
      fg = colors.orange;
    };
    RenderMarkdownH1Bg = {
      bg = colors.bg;
    };
    RenderMarkdownH1Fg = {
      bold = true;
      fg = colors.blue;
    };
    RenderMarkdownH2Bg = {
      bg = colors.bg;
    };
    RenderMarkdownH2Fg = {
      bold = true;
      fg = colors.yellow;
    };
    RenderMarkdownH3Bg = {
      bg = colors.bg;
    };
    RenderMarkdownH3Fg = {
      bold = true;
      fg = colors.green;
    };
    RenderMarkdownH4Bg = {
      bg = colors.bg;
    };
    RenderMarkdownH4Fg = {
      bold = true;
      fg = colors.blue0;
    };
    RenderMarkdownH5Bg = {
      bg = colors.bg;
    };
    RenderMarkdownH5Fg = {
      bold = true;
      fg = colors.magenta;
    };
    RenderMarkdownH6Bg = {
      bg = colors.bg;
    };
    RenderMarkdownH6Fg = {
      bold = true;
      fg = colors.purple;
    };
    RenderMarkdownTableHead = {
      fg = colors.red;
    };
    RenderMarkdownTableRow = {
      fg = colors.orange;
    };
    ScrollbarError = {
      bg = "NONE";
      fg = colors.red1;
    };
    ScrollbarErrorHandle = {
      bg = colors.bg_highlight;
      fg = colors.red1;
    };
    ScrollbarHandle = {
      bg = colors.bg_highlight;
      fg = "NONE";
    };
    ScrollbarHint = {
      bg = "NONE";
      fg = colors.hint;
    };
    ScrollbarHintHandle = {
      bg = colors.bg_highlight;
      fg = colors.hint;
    };
    ScrollbarInfo = {
      bg = "NONE";
      fg = colors.blue2;
    };
    ScrollbarInfoHandle = {
      bg = colors.bg_highlight;
      fg = colors.blue2;
    };
    ScrollbarMisc = {
      bg = "NONE";
      fg = colors.purple;
    };
    ScrollbarMiscHandle = {
      bg = colors.bg_highlight;
      fg = colors.purple;
    };
    ScrollbarSearch = {
      bg = "NONE";
      fg = colors.orange;
    };
    ScrollbarSearchHandle = {
      bg = colors.bg_highlight;
      fg = colors.orange;
    };
    ScrollbarWarn = {
      bg = "NONE";
      fg = colors.yellow;
    };
    ScrollbarWarnHandle = {
      bg = colors.bg_highlight;
      fg = colors.yellow;
    };
    Search = {
      bg = colors.bg_search;
      fg = colors.fg;
    };
    SignColumn = {
      bg = colors.bg;
      fg = colors.fg_gutter;
    };
    SignColumnSB = {
      bg = colors.bg_dark;
      fg = colors.fg_gutter;
    };
    Sneak = {
      bg = colors.magenta;
      fg = colors.bg_visual;
    };
    SneakScope = {
      bg = colors.bg_visual;
    };
    Special = {
      fg = colors.blue1;
    };
    SpecialKey = {
      fg = colors.comment;
    };
    SpellBad = {
      sp = colors.red1;
      undercurl = true;
    };
    SpellCap = {
      sp = colors.yellow;
      undercurl = true;
    };
    SpellLocal = {
      sp = colors.blue2;
      undercurl = true;
    };
    SpellRare = {
      sp = colors.hint;
      undercurl = true;
    };
    Statement = {
      fg = colors.magenta;
    };
    StatusLine = {
      bg = colors.bg_dark;
      fg = colors.fg_dark;
    };
    StatusLineNC = {
      bg = colors.bg_dark;
      fg = colors.fg_gutter;
    };
    String = {
      fg = colors.green;
    };
    Substitute = {
      bg = colors.red;
      fg = colors.black;
    };
    TabLine = {
      bg = colors.bg_dark;
      fg = colors.fg_gutter;
    };
    TabLineFill = {
      bg = colors.black;
    };
    TabLineSel = {
      bg = colors.blue;
      fg = colors.black;
    };
    TargetWord = {
      fg = colors.cyan;
    };
    TelescopeResultsComment = {
      fg = colors.comment;
    };
    TelescopeNormal = {
      bg = colors.bg_dark;
      fg = colors.fg_dark;
    };
    TelescopeBorder = {
      bg = colors.bg_dark;
      fg = colors.bg_dark;
    };
    TelescopePromptBorder = {
      bg = colors.prompt;
      fg = colors.prompt;
    };
    TelescopePromptNormal = {
      bg = colors.prompt;
      fg = colors.fg;
    };
    TelescopePromptPrefix = {
      bg = colors.prompt;
      fg = colors.fg;
    };
    TelescopePromptTitle = {
      bg = colors.prompt;
      fg = colors.orange;
    };
    TelescopePreviewLine = {
      bg = colors.fg;
      fg = colors.bg;
    };
    TelescopePreviewTitle = {
      bg = colors.bg_dark;
      fg = colors.orange;
    };
    TelescopeResultsTitle = {
      bg = colors.bg_dark;
      fg = colors.orange;
    };
    TelescopeSelection = {
      bg = colors.bg_highlight;
      fg = colors.orange;
    };
    Title = {
      bold = true;
      fg = colors.blue;
    };
    Todo = {
      bg = colors.yellow;
      fg = colors.bg;
    };
    TreesitterContext = {
      bg = colors.orange;
    };
    TroubleCount = {
      bg = colors.fg_gutter;
      fg = colors.magenta;
    };
    TroubleNormal = {
      bg = colors.bg_dark;
      fg = colors.fg;
    };
    TroubleText = {
      fg = colors.fg_dark;
    };
    Type = {
      fg = colors.blue1;
    };
    Underlined = {
      underline = true;
    };
    VertSplit = {
      fg = colors.black;
    };
    VimwikiHR = {
      bg = "NONE";
      fg = colors.yellow;
    };
    VimwikiHeader1 = {
      bg = "NONE";
      bold = true;
      fg = colors.blue;
    };
    VimwikiHeader2 = {
      bg = "NONE";
      bold = true;
      fg = colors.yellow;
    };
    VimwikiHeader3 = {
      bg = "NONE";
      bold = true;
      fg = colors.green;
    };
    VimwikiHeader4 = {
      bg = "NONE";
      bold = true;
      fg = colors.hint;
    };
    VimwikiHeader5 = {
      bg = "NONE";
      bold = true;
      fg = colors.magenta;
    };
    VimwikiHeader6 = {
      bg = "NONE";
      bold = true;
      fg = colors.purple;
    };
    VimwikiHeaderChar = {
      bg = "NONE";
      fg = colors.yellow;
    };
    VimwikiLink = {
      bg = "NONE";
      fg = colors.blue;
    };
    VimwikiList = {
      bg = "NONE";
      fg = colors.orange;
    };
    VimwikiMarkers = {
      bg = "NONE";
      fg = colors.blue;
    };
    VimwikiTag = {
      bg = "NONE";
      fg = colors.green;
    };
    Visual = {
      bg = colors.bg_visual;
    };
    VisualNOS = {
      bg = colors.bg_visual;
    };
    WarningMsg = {
      fg = colors.yellow;
    };
    WhichKey = {
      fg = colors.cyan;
    };
    WhichKeyDesc = {
      fg = colors.magenta;
    };
    WhichKeyGroup = {
      fg = colors.blue;
    };
    WhichKeyNormal = {
      bg = colors.bg_dark;
    };
    WhichKeySeparator = {
      fg = colors.comment;
    };
    WhichKeySeperator = {
      fg = colors.comment;
    };
    WhichKeyValue = {
      fg = colors.dark5;
    };
    Whitespace = {
      fg = colors.dark5;
    };
    WildMenu = {
      bg = colors.bg_visual;
    };
    WinBar = {link = "StatusLine";};
    WinBarNC = {link = "StatusLineNC";};
    WinSeparator = {
      bold = true;
      fg = colors.black;
    };
    YankyPut = {link = "Search";};
    YankyYanked = {link = "IncSearch";};
    debugBreakpoint = {
      bg = colors.bg;
      fg = colors.blue2;
    };
    debugPC = {
      bg = colors.bg_dark;
    };
    diffAdded = {
      fg = colors.git_add;
    };
    diffChanged = {
      fg = colors.git_change;
    };
    diffFile = {
      fg = colors.blue;
    };
    diffIndexLine = {
      fg = colors.magenta;
    };
    diffLine = {
      fg = colors.comment;
    };
    diffNewFile = {
      fg = colors.orange;
    };
    diffOldFile = {
      fg = colors.yellow;
    };
    diffRemoved = {
      fg = colors.git_delete;
    };
    dosIniLabel = {link = "@property";};
    healthError = {
      fg = colors.red1;
    };
    healthSuccess = {
      fg = colors.green1;
    };
    healthWarning = {
      fg = colors.yellow;
    };
    helpCommand = {
      bg = colors.terminal_black;
      fg = colors.blue;
    };
    helpExample = {
      fg = colors.comment;
    };
    htmlH1 = {
      bold = true;
      fg = colors.magenta;
    };
    htmlH2 = {
      bold = true;
      fg = colors.blue;
    };
    illuminatedCurWord = {
      bg = colors.fg_gutter;
    };
    illuminatedWord = {
      bg = colors.fg_gutter;
    };
    lCursor = {
      bg = colors.fg;
      fg = colors.bg;
    };
    qfFileName = {
      fg = colors.blue;
    };
    qfLineNr = {
      fg = colors.dark5;
    };
  };
  # Put theme here so that it is all in one place.
  plugins.lualine = {
    settings = {
      options = {
        theme = {
          normal = {
            a = {
              bg = colors.statusline_a_bg;
              fg = colors.statusline_a_fg;
            };
            b = {
              bg = colors.statusline_b_bg;
              fg = colors.statusline_b_fg;
            };
            c = {
              bg = colors.statusline_c_bg;
              fg = colors.statusline_c_fg;
            };
          };
          insert = {
            a = {
              bg = colors.statusline_a_bg;
              fg = colors.statusline_a_fg;
            };
            b = {
              bg = colors.statusline_b_bg;
              fg = colors.statusline_b_fg;
            };
            c = {
              bg = colors.statusline_c_bg;
              fg = colors.statusline_c_fg;
            };
          };
          visual = {
            a = {
              bg = colors.statusline_a_bg;
              fg = colors.statusline_a_fg;
            };
            b = {
              bg = colors.statusline_b_bg;
              fg = colors.statusline_b_fg;
            };
            c = {
              bg = colors.statusline_c_bg;
              fg = colors.statusline_c_fg;
            };
          };
          replace = {
            a = {
              bg = colors.statusline_a_bg;
              fg = colors.statusline_a_fg;
            };
            b = {
              bg = colors.statusline_b_bg;
              fg = colors.statusline_b_fg;
            };
            c = {
              bg = colors.statusline_c_bg;
              fg = colors.statusline_c_fg;
            };
          };
          command = {
            a = {
              bg = colors.statusline_a_bg;
              fg = colors.statusline_a_fg;
            };
            b = {
              bg = colors.statusline_b_bg;
              fg = colors.statusline_b_fg;
            };
            c = {
              bg = colors.statusline_c_bg;
              fg = colors.statusline_c_fg;
            };
          };
          inactive = {
            a = {
              bg = colors.statusline_a_bg;
              fg = colors.statusline_a_fg;
            };
            b = {
              bg = colors.statusline_b_bg;
              fg = colors.statusline_b_fg;
            };
            c = {
              bg = colors.statusline_c_bg;
              fg = colors.statusline_c_fg;
            };
          };
        };
      };
    };
  };
}
