-- Doesn't Work
require("flutter-tools").setup({
	flutter_lookup_cmd = "dirname $(which flutter)",
	root_patterns = { "pubspec.yaml" },
})
