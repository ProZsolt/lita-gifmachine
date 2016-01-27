# lita-gifmachine

[gifmachine](https://github.com/wolfd/gifmachine) handler for Lita chatbot

## Installation

Add lita-gifmachine to your Lita instance's Gemfile:

``` ruby
gem "lita-gifmachine"
```

## Configuration

```
config.handlers.gifmachine.base_url = 'https://example.com'
config.handlers.gifmachine.seekrit = 'xxxxxxxx'
```

## Usage

```
gifmachine <img> [| <top text> [| <bottom text>]]
```
