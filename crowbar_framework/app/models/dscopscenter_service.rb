# Copyright 2011, Dell
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

class DscopscenterService < ServiceObject

  def initialize(thelogger)
    @bc_name = "dscopscenter"
    @logger = thelogger
  end

  def create_proposal
    @logger.debug("Dscopscenter create_proposal: entering")
    base = super
    @logger.debug("Dscopscenter create_proposal: exiting")
    base
  end

  def transition(inst, name, state)
    @logger.debug("Dscopscenter transition: make sure that network role is on all nodes: #{name} for #{state}")

    @logger.debug("Dscopscenter transition: leaving for #{name} for #{state}")
    [200, NodeObject.find_node_by_name(name).to_hash ]
  end



end


