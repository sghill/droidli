function libraryViewModel(library) {

  var contributors = _.map(library.droidliContributorsTwitter, function(c) {
    return {
      displayName: "@" + c,
      address: "https://twitter.com/" + c
    };
  });

  return {
    name: ko.observable(library.name),
    licenses: ko.observable(library.licenses.join(", ")),
    sourceCodeHome: ko.observable(library.sourceCodeHome),
    documentationHome: ko.observable(library.documentationHome),
    tags: ko.observable(library.tags.join(", ")),
    projectTwitter: ko.observable(library.projectTwitter),
    droidliContributorsTwitter: ko.observable(contributors)
  }
}
