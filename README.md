# Ika2

[![Build Status](https://travis-ci.org/YutaGoto/ika2gem.svg?branch=master)](https://travis-ci.org/YutaGoto/ika2gem)

To get of Stage and Role of Splatoon2.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ika2', github: 'YutaGoto/ika2gem'
```

And then execute:

    $ bundle install

## Usage

```ruby
require 'ika2'

Ika2::Truf.now
# => {"rule"=>"ナワバリバトル", "rule_ex"=>{"key"=>"turf_war", "name"=>"ナワバリバトル", "statink"=>"nawabari"}, "maps"=>["アンチョビットゲームズ", "ガンガゼ野外音楽堂"], "maps_ex"=>[{"id"=>21, "name"=>"アンチョビットゲームズ", "image"=>"https://app.splatoon2.nintendo.net/images/stage/1430e5ac7ae9396a126078eeab824a186b490b5a.png", "statink"=>"anchovy"}, {"id"=>2, "name"=>"ガンガゼ野外音楽堂", "image"=>"https://app.splatoon2.nintendo.net/images/stage/187987856bf575c4155d021cb511034931d06d24.png", "statink"=>"gangaze"}], "start"=>"2020-04-26T23:00:00", "start_utc"=>"2020-04-26T14:00:00+00:00", "start_t"=>1587909600, "end"=>"2020-04-27T01:00:00", "end_utc"=>"2020-04-26T16:00:00+00:00", "end_t"=>1587916800}

Ika2::Truf.now.maps # => ["アンチョビットゲームズ", "ガンガゼ野外音楽堂"]
Ika2::Ranked.now.maps # => ["ショッツル鉱山", "ムツゴ楼"]
Ika2::League.now.rule # => "ガチエリア"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/YutaGoto/ika2. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/YutaGoto/ika2/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Ika2 project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/YutaGoto/ika2/blob/master/CODE_OF_CONDUCT.md).
