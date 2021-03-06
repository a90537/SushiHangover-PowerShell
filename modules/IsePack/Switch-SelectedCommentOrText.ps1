function Switch-SelectedCommentOrText {
    <#
    .Synopsis
        Toggles Comments on the selected text
    .Description
        Toggles comments on the currently selected text.
        Comment lines will be uncommented and uncommented lines will be commented
    .Example
        Switch-SelectedCommentOrText
    #>    
    param()
    $curFile = $psISE.CurrentFile
    $selection = $curFile.Editor.SelectedText
    if ($selection) {
        $curFile.Editor.InsertText((Switch-CommentOrText $selection))
    }
}
