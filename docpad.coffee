# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
  checkVersion: false
  reportStatistics: true

  templateData:
    site:
      url: "http://neoffice.io"

  plugins:
    # deploy to Github pages in repository netofficefw.github.io
    ghpages:
        deployRemote: 'origin'
        deployBranch: 'master'
}

# Export the DocPad Configuration
module.exports = docpadConfig