#!/usr/bin/env sh

######################################################################
# @author      : Maurice-Jörg Nießen (post@mjniessen.com)
# @file        : smoke-test
# @created     : Saturday Apr 22, 2023 08:11:09 CEST
#
# @description : Test font settings
######################################################################

echo
echo "\033[4mText Modes\033[24m"
echo " Normal"
echo " \033[1mBold\033[22m"
echo " \033[3mItalic\033[23m"
echo " \033[3;1mBold Italic\033[0m"
echo " \033[4mUnderline\033[24m"
echo

echo "\033[4mLigatures\033[24m"
echo " == === !== >= <= =>"

echo

echo "\033[4mSymbols\033[24m"
echo " 契          勒 鈴  "

echo

echo "\033[4mColored Emojis\033[24m"
echo " 😀😃😄😁😆😅🤣😂🙂🙃😉😊😇🥰😍🤩😘"

echo
echo "\033[4mFlags\033[24m"
echo -n " "
# AC - Ascension Island
echo -n "🇦🇨 "
#
echo -n "🇿🇼 "
#
echo -n "🇨🇭 " 
# EU - E
echo -n "🇪🇺 "

echo -n "🇩🇪 "

# UN - United Nations
echo -n "🇺🇳 "
echo


echo
echo "\033[4mEmoji Modifier Sequence\033[24m"
echo -n " "
echo -n "🖖🏼"
echo -n "🖖🏾"
echo -n "🫸🏻"
echo -n ""

echo

echo
echo "\033[4mEmoji ZWJ Sequences\033[24m"
echo -n " "
echo -n "👨‍👧"
echo -n "🏴‍☠️" 
echo -n "🏳️‍🌈"
echo -n "😶‍🌫️"
echo -n "❤️‍🩹"
echo -n "👩‍🔧"
echo -n "🧛🏻‍♀️"


