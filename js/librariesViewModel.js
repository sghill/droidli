function librariesViewModel(libraries) {

  function toViewModels(library) {
    return libraryViewModel(library);
  }

  var libs = _.map(libraries, toViewModels);

  return {
    libraries: ko.observable(libs)
  };
}
