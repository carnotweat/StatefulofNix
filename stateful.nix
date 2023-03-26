# systemd.services.my_app = {
#       enable = true;
#       script = ''
#           mkdir -p /var/app/media/cache;
#           mkdir -p /var/app/media/image;
#           ${pkgs.php} ${my_app}/bin/console cache:clear --env=prod
#         '';
#       restartIfChanged = true;
#     };
systemd.user.services.ipfs-daemon = {
   description = "IPFS Daemon";
   serviceConfig = {
     Type = "forking";
     ExecStart = "${pkgs.ipfs}/bin/ipfs daemon";
     ExecStop = "pkill ipfs";
     Restart = "on-failure";
   };
   wantedBy = [ "default.target" ];
 };

 systemd.services.ipfs-daemon.enable = true;