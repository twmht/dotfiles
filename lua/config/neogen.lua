require('neogen').setup {
    enable = true,
    input_after_comment = true,
    languages = {
        python = {
            template = {
                annotation_convention = 'numpydoc'
            }
        }
    }
}
