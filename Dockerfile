FROM webrecorder/browsertrix-crawler

WORKDIR /app

ENTRYPOINT ["crawl"]
CMD ["--url", "${CRAWL_URL}", "--generateWACZ", "--text", "--collection", "test"]
