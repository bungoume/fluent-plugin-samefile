module Fluent
  class SameFileOutput < Output
    Plugin.register_output('samefile', self)

    config_param :path, :string
    config_param :format, :string, :default => 'out_file'

    def initialize
      super
    end

    def configure(conf)
      if path = conf['path']
        @path = path
      end
      unless @path
        raise ConfigError, "'path' parameter is required on file output"
      end

      super

      FileUtils.mkdir_p File.dirname(@path)

      @formatter = Plugin.new_formatter(@format)
      @formatter.configure(conf)
    end

    def format(tag, time, record)
      @formatter.format(tag, time, record)
    end

    def write(data)
      File.open(@path, "a", DEFAULT_FILE_PERMISSION) do |f|
        f.write(data)
      end
    end

    def emit(tag, es, chain, key="")
      data = format_stream(tag, es)
      write(data)
    end

    def format_stream(tag, es)
      out = ''
      es.each {|time,record|
        out << format(tag, time, record)
      }
      out
    end

  end
end
