package org.jmrtd.protocol;

import androidx.browser.browseractions.b;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.Random;
import javax.crypto.SecretKey;
import net.sf.scuba.smartcards.CardServiceException;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.jmrtd.APDULevelBACCapable;
import org.jmrtd.AccessKeySpec;
import org.jmrtd.BACKeySpec;
import org.jmrtd.CardServiceProtocolException;
import org.jmrtd.Util;

/* loaded from: classes2.dex */
public class BACProtocol {
    private int maxTranceiveLength;
    private Random random = new SecureRandom();
    private APDULevelBACCapable service;
    private boolean shouldCheckMAC;

    public BACProtocol(APDULevelBACCapable aPDULevelBACCapable, int r22, boolean z10) {
        this.service = aPDULevelBACCapable;
        this.maxTranceiveLength = r22;
        this.shouldCheckMAC = z10;
    }

    private static byte[] computeKeySeedForBAC(String str, String str2, String str3) throws GeneralSecurityException {
        return Util.computeKeySeed(str, str2, str3, McElieceCCA2KeyGenParameterSpec.SHA1, true);
    }

    public static byte[] computeKeySeedForBAC(BACKeySpec bACKeySpec) throws GeneralSecurityException {
        String documentNumber = bACKeySpec.getDocumentNumber();
        String dateOfBirth = bACKeySpec.getDateOfBirth();
        String dateOfExpiry = bACKeySpec.getDateOfExpiry();
        if (dateOfBirth == null || dateOfBirth.length() != 6) {
            throw new IllegalArgumentException(b.e("Wrong date format used for date of birth. Expected yyMMdd, found ", dateOfBirth));
        }
        if (dateOfExpiry == null || dateOfExpiry.length() != 6) {
            throw new IllegalArgumentException(b.e("Wrong date format used for date of expiry. Expected yyMMdd, found ", dateOfExpiry));
        }
        if (documentNumber != null) {
            return computeKeySeedForBAC(fixDocumentNumber(documentNumber), dateOfBirth, dateOfExpiry);
        }
        throw new IllegalArgumentException(b.e("Wrong document number. Found ", documentNumber));
    }

    public static long computeSendSequenceCounter(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr.length != 8 || bArr2 == null || bArr2.length != 8) {
            throw new IllegalStateException("Wrong length input");
        }
        long j10 = 0;
        for (int r42 = 4; r42 < 8; r42++) {
            j10 = (j10 << 8) + (bArr[r42] & 255);
        }
        for (int r02 = 4; r02 < 8; r02++) {
            j10 = (j10 << 8) + (bArr2[r02] & 255);
        }
        return j10;
    }

    private SecureMessagingWrapper doBACStep(SecretKey secretKey, SecretKey secretKey2) throws GeneralSecurityException, CardServiceException {
        try {
            byte[] bArrSendGetChallenge = this.service.sendGetChallenge();
            byte[] bArr = new byte[8];
            this.random.nextBytes(bArr);
            byte[] bArr2 = new byte[16];
            this.random.nextBytes(bArr2);
            try {
                byte[] bArr3 = new byte[16];
                System.arraycopy(this.service.sendMutualAuth(bArr, bArrSendGetChallenge, bArr2, secretKey, secretKey2), 16, bArr3, 0, 16);
                byte[] bArr4 = new byte[16];
                for (int r52 = 0; r52 < 16; r52++) {
                    bArr4[r52] = (byte) ((bArr2[r52] & 255) ^ (bArr3[r52] & 255));
                }
                return new DESedeSecureMessagingWrapper(Util.deriveKey(bArr4, 1), Util.deriveKey(bArr4, 2), this.maxTranceiveLength, this.shouldCheckMAC, computeSendSequenceCounter(bArrSendGetChallenge, bArr));
            } catch (Exception e10) {
                throw new CardServiceProtocolException("BAC failed in MUTUAL AUTH", 2, e10);
            }
        } catch (Exception e11) {
            throw new CardServiceProtocolException("BAC failed in GET CHALLENGE", 1, e11);
        }
    }

    private static String fixDocumentNumber(String str) {
        StringBuilder sb2 = new StringBuilder(str == null ? "" : str.replace('<', ' ').trim().replace(' ', '<'));
        while (sb2.length() < 9) {
            sb2.append('<');
        }
        return sb2.toString();
    }

    public BACResult doBAC(SecretKey secretKey, SecretKey secretKey2) throws GeneralSecurityException, CardServiceException {
        return new BACResult(doBACStep(secretKey, secretKey2));
    }

    public BACResult doBAC(AccessKeySpec accessKeySpec) throws CardServiceException {
        try {
            byte[] key = accessKeySpec.getKey();
            return new BACResult(accessKeySpec, doBACStep(Util.deriveKey(key, 1), Util.deriveKey(key, 2)));
        } catch (GeneralSecurityException e10) {
            throw new CardServiceException("Error during BAC", e10);
        }
    }
}
