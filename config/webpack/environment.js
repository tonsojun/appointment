const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
  })
)
module.exports = environment

// import { environment } from '@rails/webpacker'

// import { ProvidePlugin } from 'webpack'
// environment.plugins.append('Provide',
//   new ProvidePlugin({
//     $: 'jquery',
//     jQuery: 'jquery',
//     Popper: ['popper.js', 'default']
//   })
// )
// exports default environment