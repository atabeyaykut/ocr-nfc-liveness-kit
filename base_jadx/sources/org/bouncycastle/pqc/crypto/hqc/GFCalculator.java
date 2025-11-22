package org.bouncycastle.pqc.crypto.hqc;

import androidx.recyclerview.widget.ItemTouchHelper;
import net.sf.scuba.smartcards.ISO7816;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.math.Primes;
import org.jmrtd.PassportService;
import org.jmrtd.cbeff.ISO781611;
import org.jmrtd.lds.iso19794.IrisImageInfo;

/* loaded from: classes2.dex */
class GFCalculator {
    static int[] exp = {1, 2, 4, 8, 16, 32, 64, 128, 29, 58, 116, 232, 205, 135, 19, 38, 76, 152, 45, 90, 180, 117, 234, 201, 143, 3, 6, 12, 24, 48, 96, 192, 157, 39, 78, 156, 37, 74, 148, 53, 106, 212, 181, 119, 238, 193, 159, 35, 70, 140, 5, 10, 20, 40, 80, 160, 93, 186, 105, 210, 185, 111, 222, 161, 95, 190, 97, 194, ISO7816.TAG_SM_STATUS_WORD, 47, 94, 188, 101, 202, 137, 15, 30, 60, 120, 240, 253, 231, Primes.SMALL_FACTOR_LIMIT, 187, 107, 214, 177, CertificateBody.profileType, IrisImageInfo.IMAGE_QUAL_UNDEF, 225, PassportService.DEFAULT_MAX_BLOCKSIZE, 163, 91, 182, 113, 226, 217, 175, 67, ISO781611.CREATOR_OF_BIOMETRIC_REFERENCE_DATA, 17, 34, 68, ISO781611.FORMAT_TYPE_TAG, 13, 26, 52, 104, 208, 189, 103, 206, 129, 31, 62, 124, 248, 237, 199, 147, 59, 118, 236, 197, ISO7816.TAG_SM_EXPECTED_LENGTH, 51, 102, 204, 133, 23, 46, 92, 184, 109, 218, 169, 79, ISO781611.SMT_DO_DS, 33, 66, 132, 21, 42, 84, 168, 77, 154, 41, 82, 164, 85, 170, 73, 146, 57, 114, 228, 213, 183, 115, 230, 209, 191, 99, 198, 145, 63, 126, 252, 229, 215, 179, 123, 246, 241, 255, 227, 219, 171, 75, 150, 49, 98, 196, 149, 55, 110, 220, 165, 87, 174, 65, ISO781611.BIOMETRIC_SUBTYPE_TAG, 25, 50, 100, 200, 141, 7, 14, 28, 56, 112, BERTags.FLAGS, 221, 167, 83, 166, 81, 162, 89, 178, 121, 242, 249, 239, 195, 155, 43, 86, 172, 69, 138, 9, 18, 36, 72, 144, 61, 122, 244, 245, 247, 243, 251, 235, 203, 139, 11, 22, 44, 88, 176, 125, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 233, 207, ISO781611.CREATION_DATE_AND_TIME_TAG, 27, 54, 108, 216, 173, 71, 142, 1, 2, 4};
    static int[] log = {0, 0, 1, 25, 2, 50, 26, 198, 3, PassportService.DEFAULT_MAX_BLOCKSIZE, 51, 238, 27, 104, 199, 75, 4, 100, BERTags.FLAGS, 14, 52, 141, 239, 129, 28, 193, 105, 248, 200, 8, 76, 113, 5, 138, 101, 47, 225, 36, 15, 33, 53, 147, 142, 218, 240, 18, ISO781611.BIOMETRIC_SUBTYPE_TAG, 69, 29, 181, 194, 125, 106, 39, 249, 185, 201, 154, 9, 120, 77, 228, 114, 166, 6, 191, 139, 98, 102, 221, 48, 253, 226, 152, 37, 179, 16, 145, 34, ISO781611.FORMAT_TYPE_TAG, 54, 208, 148, 206, 143, 150, 219, 189, 241, 210, 19, 92, ISO781611.CREATION_DATE_AND_TIME_TAG, 56, 70, 64, 30, 66, 182, 163, 195, 72, 126, 110, 107, 58, 40, 84, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 133, 186, 61, 202, 94, 155, 159, 10, 21, 121, 43, 78, 212, 229, 172, 115, 243, 167, 87, 7, 112, 192, 247, 140, 128, 99, 13, 103, 74, 222, 237, 49, 197, IrisImageInfo.IMAGE_QUAL_UNDEF, 24, 227, 165, ISO7816.TAG_SM_STATUS_WORD, 119, 38, 184, 180, 124, 17, 68, 146, 217, 35, 32, 137, 46, 55, 63, 209, 91, 149, 188, 207, 205, 144, 135, ISO7816.TAG_SM_EXPECTED_LENGTH, 178, 220, 252, 190, 97, 242, 86, Primes.SMALL_FACTOR_LIMIT, 171, 20, 42, 93, ISO781611.SMT_DO_DS, 132, 60, 57, 83, 71, 109, 65, 162, 31, 45, 67, 216, 183, 123, 164, 118, 196, 23, 73, 236, CertificateBody.profileType, 12, 111, 246, 108, 161, 59, 82, 41, 157, 85, 170, 251, 96, ISO781611.CREATOR_OF_BIOMETRIC_REFERENCE_DATA, 177, 187, 204, 62, 90, 203, 89, 95, 176, 156, 169, 160, 81, 11, 245, 22, 235, 122, 117, 44, 215, 79, 174, 213, 233, 230, 231, 173, 232, 116, 214, 244, 234, 168, 80, 88, 175};

    public static int inverse(int r32) {
        return exp[255 - log[r32]] & Utils.toUnsigned16Bits((-r32) >> 31);
    }

    public static int mod(int r12) {
        int unsigned16Bits = Utils.toUnsigned16Bits(r12 - 255);
        return Utils.toUnsigned16Bits(unsigned16Bits + (Utils.toUnsigned8bits(-(unsigned16Bits >> 15)) & 255));
    }

    public static int mult(int r32, int r42) {
        int unsigned16Bits = Utils.toUnsigned16Bits((-r32) >> 31) & Utils.toUnsigned16Bits((-r42) >> 31);
        int[] r12 = exp;
        int[] r22 = log;
        return Utils.toUnsigned16Bits(r12[mod(r22[r32] + r22[r42])] & unsigned16Bits);
    }
}
