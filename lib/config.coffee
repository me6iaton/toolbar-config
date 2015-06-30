class Config
  defaults:
    buttons: [
      {trigger: 'tree-view:toggle', target: 'workspace', class: 'icon-file-directory', title: 'Toggle Tree View Ctrl+\\'}
      {trigger: 'docapp:git-sync', target: 'workspace', class: 'icon-sync', title: 'Synchronize repository'}
      {trigger: 'docapp:deploy-ghpages', target: 'workspace', class: 'icon-mark-github', title: 'Deploy to GitHub Pages'}
      {trigger: 'docapp:preview', target: 'workspace', class: 'icon-device-desktop', title: 'Toggle Preview'}
      {class: 'spacer'}
      {trigger: 'core:save', target: 'text-editor', class: 'ion ion-archive', title: 'Save'}
      {trigger: 'find-and-replace:show', target: 'text-editor', class: 'ion ion-search', title: 'Find'}
      {class: 'spacer'}
      {trigger: 'markdown-writer:toggle-h3', target: 'text-editor', class: 'fa fa-header', title: 'Toggle Header H3'}
      {trigger: 'markdown-writer:toggle-bold-text', target: 'text-editor', class: 'fa fa-bold', title: 'Toggle Bold Text'}
      {trigger: 'markdown-writer:toggle-italic-text',target: 'text-editor',  class: 'fa fa-italic', title: 'Toggle Italic Text'}
      {trigger: 'markdown-writer:insert-link', target: 'text-editor', class: 'fa fa-link', title: 'Insert Link'}
      {trigger: 'markdown-writer:insert-image', target: 'text-editor', class: 'fa fa-image', title: 'Insert Image'}
      {trigger: 'markdown-writer:toggle-ul', target: 'text-editor', class: 'fa fa-list-ul', title: 'Toggle ul'}
      {trigger: 'markdown-writer:toggle-ol', target: 'text-editor', class: 'fa fa-list-ol', title: 'Toggle ol'}
      {trigger: 'markdown-writer:toggle-blockquote', target: 'text-editor', class: 'fa fa-quote-left', title: 'Toggle Blockquote'}
      {class: 'spacer'}
    ]

  getDefault: (key) ->
    return
module.exports = new Config()
