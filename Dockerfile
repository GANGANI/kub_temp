FROM webrecorder/browsertrix-crawler

WORKDIR /crawls

ENTRYPOINT ["crawl"]
CMD ["--url", "${CRAWL_URL}", "--generateWACZ", "--text", "--collection", "test"]
