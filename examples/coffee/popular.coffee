###
Copyright (C) 2013, Jesus Perez <jesusprubio gmail com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
###
"use strict"

# SHODAN popular searches can be reached through RSS
# A valid API key is not needed here
# http://www.shodanhq.com/browse
ShodanClient = require("../../lib/shodan.js")
options      = timeout: 10000

shodanClient = new ShodanClient(options)

shodanClient.popular (data, err) ->
  console.log "\n------------------- popular -------------------"
  if err
    console.log "ERROR: shodanClient.popular: " + err
  else
    console.log data

# Even they can be searched using an specific tag ("Popular tags")
shodanClient.popularTag "voip", (data, err) ->
  console.log "\n------------------- popular (voip tag) -------------------"
  if err
    console.log "ERROR: shodanClient.popular: " + err
  else
    console.log data