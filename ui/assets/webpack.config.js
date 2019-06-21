var path = require('path');
var webpack = require('webpack');
var merge = require('webpack-merge');
var HtmlWebpackPlugin = require('html-webpack-plugin');
var autoprefixer = require('autoprefixer');
var MiniCssExtractPlugin = require('mini-css-extract-plugin');
var CopyWebpackPlugin = require('copy-webpack-plugin');
var UglifyJsPlugin = require('uglifyjs-webpack-plugin');
var OptimizeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin');
const FileManagerPlugin = require('filemanager-webpack-plugin');
var entryPath = path.join(__dirname, 'js/app.js');


// common webpack config
var commonConfig = {
  entry: entryPath,
  mode: 'development',
  output: {
    filename: 'js/app.js',
    path: path.resolve(__dirname, '../priv/static')
  },

  resolve: {
    extensions: ['.js', '.elm']
  },

  module: {
    noParse: /\.elm$/,
    rules: [
      {
        test: /\.(eot|ttf|woff|woff2|svg)$/,
        use: 'file-loader'
      }
    ]
  },
};

module.exports = merge(commonConfig, {
    module: {
      rules: [
        {
          test: /\.elm$/,
          exclude: [/elm-stuff/, /node_modules/],
          use: 'elm-webpack-loader'
        },
        {
          test: /\.(css|scss)$/,
          use: [
            MiniCssExtractPlugin.loader,
            'css-loader',
            {
                loader: 'postcss-loader',
                options: { plugins: [autoprefixer()] }
            },
            'sass-loader'
          ]
        }
      ]
    },

    plugins: [
      new MiniCssExtractPlugin({ filename: 'css/app.css' }),
      new CopyWebpackPlugin([
        { 
          from: 'static/', 
          to: './' 
        },
      ]),
      new FileManagerPlugin({
        onEnd: {
          copy: [
            { 
              source: '../priv/static/*.eot',
              destination: '../priv/static/css/' 
            },
            { 
              source: '../priv/static/*.woff*',
              destination: '../priv/static/css/' 
            },
            { 
              source: '../priv/static/*.svg',
              destination: '../priv/static/css/' 
            },
            { 
              source: '../priv/static/*.ttf',
              destination: '../priv/static/css/' 
            },
          ]
        }
      })
    ]
  });
