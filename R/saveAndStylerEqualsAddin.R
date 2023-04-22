#' Save and styler equal style active doc
#'
#' @export
saveAndStylerEqualsAddin = function() {
  ctx = rstudioapi::getActiveDocumentContext()
  rstudioapi::documentSave(id = ctx$id)
  styler::style_file(path = ctx$path)
  styler.equals::style_file(path = ctx$path)
}

