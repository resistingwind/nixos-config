{ pkgs, ... }:
{
  hardware.sensor.iio.enable = true;

  environment.etc."fan2go/fan2go.yaml".text = ''
    dbPath: /var/lib/fan2go/fan2go.db
  
    sensors:
      - id: cpu_temp
        hwmon:
          platform: coretemp
          index: 1
  
    fans:
      - id: dell_fan
        hwmon:
          platform: dell_smm
          rpmChannel: 1
          pwmChannel: 1
  
        neverStop: true
        curve: cpu_curve
  
        controlMode:
          active: pwm
          onExit: restore
  
    curves:
      - id: cpu_curve
        linear:
          sensor: cpu_temp
          steps:
            - 35: 40%
            - 45: 45%
            - 55: 55%
            - 65: 70%
            - 75: 85%
            - 85: 100%
  '';
}
