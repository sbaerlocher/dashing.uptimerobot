# dashing.uptimerobot

# Preview
![](https://gogs.sbaerlo.ch/sbaerlocher/dashing.uptimerobot/raw/master/uptimerobot.png)

## Description

Widget for [Dashing](http://dashing.io/) that shows a short list of [Uptime Robot](http://uptimerobot.com/) monitors.

## Usage

Add this to your Gemfile and run `bundle install`:
```bash
gem 'uptimerobot'
```

Copy the `uptimerobot.rb` file into your `/jobs` folder.

To include the widget in a dashboard, add the following snippet to the dashboard layout file:

```html
<li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
    <div data-id="uptimerobot" data-view="List"></div>
</li>
```

## Changelog

### 1.0

* Initial release
 
## Contributors

* [Simon Bärlocher](https://sbaerlocher.ch)
 
## License

This project is under the MIT License. See the [LICENSE](https://sbaerlo.ch/licence) file for the full license text.

## Copyright

(c) 2015, Simon Bärlocher