{pkgs, ...}: let
  bgImageSection = name: ''
    #${name} {
      background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/${name}.png"));
    }
  '';
in {
  xdg.configFile."wlogout/style.css".text = ''
    * {
    	background-image: none;
      font-family: "Product Sans", Roboto, sans-serif;
    }

    window {
    	background-color: rgba(0, 0, 0, .5);
    }

    button {
      background: unset;
      border-radius: 8px;
      box-shadow: inset 0 0 0 1px rgba(255, 255, 255, .1), 0 0 rgba(0, 0, 0, .4);
      margin: 1rem;
    	background-repeat: no-repeat;
    	background-position: center;
    	background-size: 25%;
    }

    button:focus, button:active, button:hover {
      background-color: rgba(255, 255, 255, 0.2);
    	outline-style: none;
    }

    ${bgImageSection "lock"}
    ${bgImageSection "logout"}
    ${bgImageSection "suspend"}
    ${bgImageSection "hibernate"}
    ${bgImageSection "shutdown"}
    ${bgImageSection "reboot"}
  '';
}
