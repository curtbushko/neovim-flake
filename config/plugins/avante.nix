{pkgs, ...}: {
  extraPlugins = [
    pkgs.vimPlugins.avante-nvim
  ];

  extraConfigLua = ''
    require('avante_lib').load()
       require('avante').setup({
         provider = "openai",
         openai = {
           endpoint = "https://api.openai.com/v1";
           model = "gpt-4o-mini",
           timeout = 30000;
           temperature = 0,
           max_tokens = 4096,
         }
       })
  '';
}
