require 'rss'
require 'builder'
def generate_rss_feed
    rss = RSS::Maker.make('2.0') do |maker|
        maker.channel.title = 'xxxx'
        maker.channel.link = 'xxxx'
        maker.channel.description = 'xxxx'
        maker.channel.language = 'en'

3.times do |i|
    maker.items.new_item do |item|
        item.title ="Item #{i + 1}"
        item.link = "/item#{i + 1}"
        item.pubDate = Time.now
    end
end
end

File.open('your_rss_feed.xml', 'w') do |file|
    file.write(rss.to.xml)
end
end

generate_rss_feed

