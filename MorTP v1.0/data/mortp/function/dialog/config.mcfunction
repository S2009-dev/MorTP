execute unless entity @s[team=mortp.master] run return run tellraw @s {translate: mortp.error.not_master}\

$dialog show @s {\
  type: "minecraft:notice",\
  title: {\
    translate: "mortp.config.title"\
  },\
  body: [\
    {\
      type: "minecraft:plain_message",\
      contents: {\
        translate: "mortp.config.body"\
      }\
    },\
    {\
      type: "minecraft:plain_message",\
      contents: {\
        translate: "mortp.config.current_timer",\
        with: [\
          {text: "$(current_timer)"}\
        ]\
      }\
    },\
    {\
      type: "minecraft:plain_message",\
      contents: {\
        translate: "mortp.config.current_countdown",\
        with: [\
          {text: "$(current_countdown)"}\
        ]\
      }\
    }\
  ],\
  inputs: [\
    {\
      type: "minecraft:number_range",\
      key: timer,\
      label: {\
        translate: "mortp.config.timer"\
      },\
      start: 10,\
      end: 3600,\
      step: 10,\
      initial: $(current_timer)\
    },\
    {\
      type: "minecraft:number_range",\
      key: countdown,\
      label: {\
        translate: "mortp.config.countdown"\
      },\
      start: 0,\
      end: 10,\
      step: 1,\
      initial: $(current_countdown)\
    }\
  ],\
  after_action: "close",\
  action: {\
    label: {\
      translate: mortp.config.save\
    },\
    tooltip: {\
      translate: mortp.config.save.tooltip\
    },\
    action: {\
      type: "dynamic/run_command",\
      template: "$(action_template)"\
    }\
  }\
}