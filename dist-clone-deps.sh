#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
#
# Function that is invoked when the script fails.
#
# $1 - The message to display prior to exiting.
#
function fail() {
    echo $1
    echo "Exiting."
    cd $DIR
    exit 1
}

# Clone dependencies
git clone https://github.com/webrcade/webrcade-app-common.git || 
  { fail 'Unable to clone common'; }
git clone https://github.com/webrcade/webrcade-editor.git || 
  { fail 'Unable to clone editor'; }
git clone https://github.com/webrcade/webrcade-app-snes9x.git || 
  { fail 'Unable to clone snes9x'; }
git clone https://github.com/webrcade/webrcade-app-genplusgx.git || 
  { fail 'Unable to clone genplusgx'; }
git clone https://github.com/webrcade/webrcade-app-javatari.git || 
  { fail 'Unable to clone javatari'; }
git clone https://github.com/webrcade/webrcade-app-js7800.git || 
  { fail 'Unable to clone js7800'; }
git clone https://github.com/webrcade/webrcade-app-fceux.git || 
  { fail 'Unable to clone fceux'; }
git clone https://github.com/webrcade/webrcade-app-vba-m.git || 
  { fail 'Unable to clone vba-m'; }
git clone https://github.com/webrcade/webrcade-app-mednafen.git || 
  { fail 'Unable to clone vba-m'; }
