require 'prmd/rake_tasks/combine'
require "jdoc"

schema_root = "doc/schema"

namespace :schema do
  Prmd::RakeTasks::Combine.new do |t|
    t.paths << "#{schema_root}/schemata"
    t.output_file = "#{schema_root}/schema.json"
  end

end

desc 'Generate Markdown'
task :schema_generate_markdown do
  path = "#{schema_root}/schema.json"
  output_file = "#{schema_root}/schema.md"
  schema = JSON.parse(File.read(path))
  result = Jdoc::Generator.call(schema)
  File.open(output_file, 'w') do |file|
    file.write(result)
  end
end

desc 'Combine schema'
task schema: ['schema:combine', :schema_generate_markdown]
