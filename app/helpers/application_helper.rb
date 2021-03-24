module ApplicationHelper
    def default_meta_tags
        {
            site: 'intervieeew.net',
            title: '',
            reverse: true,
            description: 'それっぽいインタビュー記事を自分で作れる！',
            charset: 'utf-8',
            keywords: [],
            canonical: request.original_url,
            noindex: ! Rails.env.production?,
            separator: '-',
            locale: 'ja_JP',
            og: {
                site_name: 'intervieeew.net',
                title: '',
                description: 'それっぽいインタビュー記事を自分で作れる！', 
                type: 'website',
                url: request.original_url,
                locale: 'ja_JP',
              },
              twitter: {
                card: 'summary'
              }
        }
        
    end
end
