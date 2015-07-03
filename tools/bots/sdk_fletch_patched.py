#!/usr/bin/python

# Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
# for details. All rights reserved. Use of this source code is governed by a
# BSD-style license that can be found in the LICENSE file.

"""
Buildbot steps for building Dart SDK with Fletch-specific patches.
"""
import bot
import bot_utils
import re

utils = bot_utils.GetUtils()

PATCHED_X64_BUILDER = r'dart-sdk-fletch-patched-(linux|mac)-x64'
PATCHED_ARM_BUILDER = r'dart-sdk-fletch-patched-cross-linux-arm'


def Run(command):
  print "Running: %s" % ' '.join(command)
  sys.stdout.flush()
  bot.RunProcess(command)


def BuildConfig(name, is_buildbot):
  """Returns info for the current buildbot."""
  x64_pattern = re.match(PATCHED_X64_BUILDER, name)
  if x64_pattern:
    system = x64_pattern.group(1)
    return bot.BuildInfo('none', 'none', 'release', system, arch='x64')

  arm_pattern = re.match(PATCHED_ARM_BUILDER, name)
  if arm_pattern:
    return bot.BuildInfo('none', 'none', 'release', 'linux', arch='arm')

  return None


def BuildSteps(build_info):
  # TODO(kasperl): Do something useful here.
  pass


if __name__ == '__main__':
  bot.RunBot(BuildConfig, BuildSteps)
