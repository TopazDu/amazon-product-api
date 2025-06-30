const amazonScraper = require('amazon-buddy');

// 示例：根据关键字爬取产品数据
(async () => {
    try {
        const products = await amazonScraper.products({ keyword: 'vacuum cleaner', number: 40 });
        console.log(products);
    } catch (error) {
        console.error(error);
    }
})();
