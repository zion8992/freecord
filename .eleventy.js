module.exports = async function (eleventyConfig) {
  // Copies contents of src/static -> _site/static
  // (passthrough paths are relative to project root, not the input dir)
  eleventyConfig.addPassthroughCopy({ "src/static": "static" });

  // required for pathPrefix to work
  const { HtmlBasePlugin } = await import("@11ty/eleventy");
  eleventyConfig.addPlugin(HtmlBasePlugin);

  return {
    dir: {
      input: "src",
      output: "_site",
      includes: "_includes",
      data: "_data",
    },
    markdownTemplateEngine: "njk",
    htmlTemplateEngine: "njk",
    pathPrefix: "/freecord/",
  };
};

