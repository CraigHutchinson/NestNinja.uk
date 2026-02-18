# frozen_string_literal: true
#
# Jekyll plugin: adds `silence_deprecations` support to jekyll-sass-converter.
#
# jekyll-sass-converter 3.0.0 does not forward `silence_deprecations` to the
# Dart Sass compiler, so warnings about deprecated @import rules cannot be
# silenced via _config.yml alone. This plugin patches the Scss converter's
# `sass_configs` method to include the option when present in _config.yml:
#
#   sass:
#     silence_deprecations:
#       - import
#       - global-builtin
#       - color-functions
#
module SassSilenceDeprecations
  def sass_configs
    configs  = super
    ids      = jekyll_sass_configuration.fetch("silence_deprecations", [])
    return configs if ids.empty?

    configs.merge(silence_deprecations: ids)
  end
end

Jekyll::Converters::Scss.prepend(SassSilenceDeprecations)
