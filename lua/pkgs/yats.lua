---@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

-- TypeScript
-- > HerringtonDarkholme/yats.vim

local clrs = palette.clrs
local spec = palette.spec
local pkg = function()
  return {
    typescriptBOMWindowMethod {fg = clrs.nord8, gui = spec.italic},
    typescriptClassName {fg = clrs.nord7},
    typescriptDecorator {fg = clrs.nord12},
    typescriptInterfaceName {fg = clrs.nord7, gui = spec.bold},
    typescriptRegexpString {fg = clrs.nord13},
    -- TypeScript JSX
    tsxAttrib {fg = clrs.nord7},
    typescriptOperator {base.Operator},
    typescriptBinaryOp {base.Operator},
    typescriptAssign {base.Operator},
    typescriptMember {base.Identifier},
    typescriptDOMStorageMethod {base.Identifier},
    typescriptArrowFuncArg {base.Identifier},
    typescriptGlobal {typescriptClassName},
    typescriptBOMWindowProp {base.Function},
    typescriptArrowFuncDef {base.Function},
    typescriptAliasDeclaration {base.Function},
    typescriptPredefinedType {base.Type},
    typescriptTypeReference {typescriptClassName},
    typescriptTypeAnnotation {base.Structure},
    typescriptDocNamedParamType {base.SpecialComment},
    typescriptDocNotation {base.Keyword},
    typescriptDocTags {base.Keyword},
    typescriptImport {base.Keyword},
    typescriptExport {base.Keyword},
    typescriptTry {base.Keyword},
    typescriptVariable {base.Keyword},
    typescriptBraces {base.Normal},
    typescriptObjectLabel {base.Normal},
    typescriptCall {base.Normal},
    typescriptClassHeritage {typescriptClassName},
    typescriptFuncTypeArrow {base.Structure},
    typescriptMemberOptionality {base.Structure},
    typescriptNodeGlobal {typescriptGlobal},
    typescriptTypeBrackets {base.Structure},
    tsxEqual {base.Operator},
    tsxIntrinsicTagName {base.Keyword},
    tsxTagName {tsxIntrinsicTagName},
  }
end

return pkg

-- vi:nowrap
