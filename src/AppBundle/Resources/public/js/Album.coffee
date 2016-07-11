App = App || {}

App.Album = Backbone.Model.extend
  defaults:
    id : null
    name : ''


App.AlbumsCollection = Backbone.Collection.extend
  model: App.Album

App.AlbumView = Backbone.Marionette.ItemView.extend
  tagName: 'li',
  template: '#template-albumItemView'

App.AlbumsListView = Backbone.Marionette.CollectionView.extend
  tagName: 'ul',
  childView: App.AlbumView
