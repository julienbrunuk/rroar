module ReadConfig
  ConfigDir = "rroar-irc"
  @user_config_dir = File.expand_path('~/.' + ConfigDir + '/')
  if File.directory?(@user_config_dir) === false
    Dir.mkdir @user_config_dir
    FileUtils.cp('./config.default.yml', @user_config_dir)
  end
  $LOG = Logger.new('rroar.log', 'monthly')

end
