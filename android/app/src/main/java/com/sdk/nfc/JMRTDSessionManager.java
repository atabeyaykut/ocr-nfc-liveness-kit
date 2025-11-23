package com.sdk.nfc;

import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import android.util.Log;

import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.IsoDepCardService;

import org.jmrtd.PassportService;

import java.io.IOException;

/**
 * Bridges the Android IsoDep tag to JMRTD's PassportService.
 * Subsequent BAC/PACE steps can reuse this session manager to keep the main
 * module clean.
 */
public final class JMRTDSessionManager {

    private static final String TAG = "JMRTDSession";

    private final Tag tag;
    private final IsoDep isoDep;
    private final CardService cardService;
    private final PassportService passportService;

    private JMRTDSessionManager(Tag tag,
            IsoDep isoDep,
            CardService cardService,
            PassportService passportService) {
        this.tag = tag;
        this.isoDep = isoDep;
        this.cardService = cardService;
        this.passportService = passportService;
    }

    public static JMRTDSessionManager open(Tag tag) throws IOException, CardServiceException {
        if (tag == null) {
            throw new IllegalArgumentException("Tag cannot be null");
        }

        IsoDep isoDep = IsoDep.get(tag);
        if (isoDep == null) {
            throw new IOException("IsoDep tech is not available on this tag");
        }

        isoDep.connect();
        isoDep.setTimeout(10_000);
        Log.d(TAG, "IsoDep connected (timeout=10s)");

        CardService cardService = new IsoDepCardService(isoDep);
        PassportService passportService = new PassportService(
                cardService,
                PassportService.NORMAL_MAX_TRANCEIVE_LENGTH,
                PassportService.DEFAULT_MAX_BLOCKSIZE,
                true,
                false);

        Log.d(TAG, "PassportService initialized with JMRTD defaults");
        return new JMRTDSessionManager(tag, isoDep, cardService, passportService);
    }

    public PassportService getPassportService() {
        return passportService;
    }

    public IsoDep getIsoDep() {
        return isoDep;
    }

    public Tag getTag() {
        return tag;
    }

    public void close() {
        try {
            passportService.close();
        } catch (Exception e) {
            Log.w(TAG, "Failed to close PassportService", e);
        }

        try {
            cardService.close();
        } catch (Exception e) {
            Log.w(TAG, "Failed to close CardService", e);
        }

        if (isoDep.isConnected()) {
            try {
                isoDep.close();
            } catch (IOException e) {
                Log.w(TAG, "Failed to close IsoDep", e);
            }
        }
    }
}
