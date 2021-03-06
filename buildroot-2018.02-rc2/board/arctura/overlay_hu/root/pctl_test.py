import pulsectl

with pulsectl.Pulse('volume-increaser') as pulse:
  for sink in pulse.sink_list():
    # Volume is usually in 0-1.0 range, with >1.0 being soft-boosted
    pulse.volume_change_all_chans(sink, 0.1)
