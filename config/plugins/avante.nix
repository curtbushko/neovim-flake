{pkgs, ...}: {
  extraPlugins = [
    pkgs.vimPlugins.avante-nvim
  ];

  extraConfigLua = ''
    require('avante_lib').load()
       require('avante').setup({
         provider = "openai",
         openai = {
           endpoint = "http://127.0.0.1:11434/v1/",
           model = "llama3.1:8b",
           temperature = 0,
           max_tokens = 4096,
           ["local"] = true,
         }
       })
  '';
}
