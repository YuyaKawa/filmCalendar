require 'open-uri'
require 'nokogiri'


###TOHOシネマズ渋谷の一般料金を取得する###

url = 'https://www.tohotheater.jp/theater/043/price.html'
# urlにアクセスしてhtmlを取得する
html = URI.open(url).read

# 取得したhtmlをNokogiriで解析する
doc = Nokogiri::HTML.parse(html)

# htmlの該当のxpathから値段取得
priceElement =  doc.xpath("//body[@id='top']/div[@class='grid']/div[@class='grid-wrapper is-col-02']/div[@class='gird-inner']/div[@class='grid-main']/div[@class='grid-main__inner'][1]/section[@class='price']/ul[@class='price__list']/li[@class='price__item'][1]/div[@class='price__table']/div[@class='price-cell']/p[@class='txt-price']")
puts priceElement.inner_text
