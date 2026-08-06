module.exports = function (eleventyConfig) {
  // Copies contents of src/static -> _site/static
  // (passthrough paths are relative to project root, not the input dir)
  eleventyConfig.addPassthroughCopy({ "src/static": "static" });

  return {
    dir: {
      input: "src",
      output: "_site",
      includes: "_includes",
      data: "_data",
    },
    markdownTemplateEngine: "njk",
    htmlTemplateEngine: "njk",
  };
};