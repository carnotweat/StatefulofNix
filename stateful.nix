systemd.services.my_app = {
      enable = true;
      script = ''
          mkdir -p /var/app/media/cache;
          mkdir -p /var/app/media/image;
          ${pkgs.php} ${my_app}/bin/console cache:clear --env=prod
        '';
      restartIfChanged = true;
    };
