-- GLOBALS: app, connect
local Class = require "Base.Class"
local Unit = require "Unit"
local PitchControl = require "Unit.ViewControl.PitchControl"
local GainBias = require "Unit.ViewControl.GainBias"
local Comparator = require "Unit.ViewControl.Comparator"
local Fader = require "Unit.ViewControl.Fader"
local Encoder = require "Encoder"
local ply = app.SECTION_PLY

local Ringmod = Class{}
Ringmod:include(Unit)

function Ringmod:init(args)
  args.title = "FM Op"
  args.mnemonic = "FM"
  args.version = 2
  Unit.init(self,args)
end

function Ringmod:onLoadGraph(pUnit,channelCount)
 
end

local views = {
  expanded = {"tune","freq","num","den","index","level"},
  collapsed = {},
}

function Ringmod:onLoadViews(objects,controls)

  return views
end

return Ringmod
