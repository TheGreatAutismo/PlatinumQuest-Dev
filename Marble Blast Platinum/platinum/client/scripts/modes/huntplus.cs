//-----------------------------------------------------------------------------
// Hunt - Plus mode
//
// Copyright (c) 2021 The Platinum Team
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.
//-----------------------------------------------------------------------------

ModeInfoGroup.add(new ScriptObject(ModeInfo_huntplus) {
	class = "ModeInfo_huntplus";
	superclass = "ModeInfo";

	identifier = "huntplus";
	file = "huntplus";

	name = "Hunt - Plus";
	desc = "Something special might happen after a spawn is cleared out! Look next to the Gem Counter to figure out what modifier is active!";

	teams = 0;
});


function ClientMode_huntplus::onLoad(%this) {
	%this.registerCallback("onShowPlayGui");
	echo("[Mode" SPC %this.name @ " Client]: Loaded!");
}

function ClientMode_huntplus::onShowPlayGui(%this) {
	if (missioninfo.ragingbull) {
	    RagingBullIcon.setVisible(true);
	}

	if (missioninfo.additionaltime != "") {
	    TimeBonusIcon.setVisible(true);
	}

	if (missioninfo.gravitex || $MPPref::Server::GravitexHP && mp()) {
		GravitexIcon.setVisible(true);
	}
}
