Cinch Channel List
==================

A Cinch IRC plugin to get channel lists -- let your bot execute `/LIST`. Use with caution! Very busy IRC servers will flood you with their prolific channel list!

Requirements
------------

* `cinch` >= 2.0.0
* `ruby` >= 1.9.3

Use
---

Require `cinch_channel_list` in your Cinch IRC bot. This plugin uses handler dispatch calls for invocation and return. You'll need to dispatch to `:get_channel_list` to start the /LIST and provide a handler for `:channel_list_received`. When the `:channel_list_received` handler is invoked, it will be passed the source message and a hash of the available channels. Hash format is:

 `{ :channel_name => { :user_count, :topic } }`

See `examples/list_channels.rb`
