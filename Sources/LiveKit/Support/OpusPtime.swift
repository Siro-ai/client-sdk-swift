/*
 * Siro fork addition — not upstream.
 *
 * Controls the Opus packetisation time on published audio. The stock SDK leaves it at
 * the WebRTC default of 20 ms, i.e. 50 packets per second, which on a cellular link
 * keeps the modem's inactivity timer permanently refreshed.
 */

import Foundation

public enum OpusPtime {
    /// Preferred packetisation in milliseconds. Opus supports 10/20/40/60/80/100/120.
    /// `0` (the default) leaves negotiation alone, so the fork behaves exactly like
    /// upstream until something opts in.
    public nonisolated(unsafe) static var preferredMs: Int = 0
}
