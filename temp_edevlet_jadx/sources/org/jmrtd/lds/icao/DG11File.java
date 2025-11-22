package org.jmrtd.lds.icao;

import ab.b;
import android.support.v4.media.a;
import androidx.camera.camera2.internal.c;
import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.tlv.TLVInputStream;
import net.sf.scuba.tlv.TLVOutputStream;
import net.sf.scuba.tlv.TLVUtil;
import net.sf.scuba.util.Hex;
import org.jmrtd.lds.DataGroup;

/* loaded from: classes2.dex */
public class DG11File extends DataGroup {
    public static final int CONTENT_SPECIFIC_CONSTRUCTED_TAG = 160;
    public static final int COUNT_TAG = 2;
    public static final int CUSTODY_INFORMATION_TAG = 24344;
    public static final int FULL_DATE_OF_BIRTH_TAG = 24363;
    public static final int FULL_NAME_TAG = 24334;
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd");
    public static final int OTHER_NAME_TAG = 24335;
    public static final int OTHER_VALID_TD_NUMBERS_TAG = 24343;
    public static final int PERMANENT_ADDRESS_TAG = 24386;
    public static final int PERSONAL_NUMBER_TAG = 24336;
    public static final int PERSONAL_SUMMARY_TAG = 24341;
    public static final int PLACE_OF_BIRTH_TAG = 24337;
    public static final int PROFESSION_TAG = 24339;
    public static final int PROOF_OF_CITIZENSHIP_TAG = 24342;
    private static final String SDF = "yyyyMMdd";
    public static final int TAG_LIST_TAG = 92;
    public static final int TELEPHONE_TAG = 24338;
    public static final int TITLE_TAG = 24340;
    private static final long serialVersionUID = 8566312538928662937L;
    private String custodyInformation;
    private String fullDateOfBirth;
    private String nameOfHolder;
    private List<String> otherNames;
    private List<String> otherValidTDNumbers;
    private List<String> permanentAddress;
    private String personalNumber;
    private String personalSummary;
    private List<String> placeOfBirth;
    private String profession;
    private byte[] proofOfCitizenship;
    private List<Integer> tagPresenceList;
    private String telephone;
    private String title;

    public DG11File(InputStream inputStream) throws IOException {
        super(107, inputStream);
    }

    public DG11File(String str, List<String> list, String str2, String str3, List<String> list2, List<String> list3, String str4, String str5, String str6, String str7, byte[] bArr, List<String> list4, String str8) {
        super(107);
        this.nameOfHolder = str;
        this.otherNames = list == null ? new ArrayList() : new ArrayList(list);
        this.personalNumber = str2;
        this.fullDateOfBirth = str3;
        this.placeOfBirth = list2 == null ? new ArrayList() : new ArrayList(list2);
        this.permanentAddress = list3;
        this.telephone = str4;
        this.profession = str5;
        this.title = str6;
        this.personalSummary = str7;
        this.proofOfCitizenship = bArr;
        this.otherValidTDNumbers = list4 == null ? new ArrayList() : new ArrayList(list4);
        this.custodyInformation = str8;
    }

    public DG11File(String str, List<String> list, String str2, Date date, List<String> list2, List<String> list3, String str3, String str4, String str5, String str6, byte[] bArr, List<String> list4, String str7) {
        this(str, list, str2, date == null ? null : new SimpleDateFormat(SDF).format(date), list2, list3, str3, str4, str5, str6, bArr, list4, str7);
    }

    private void parseCustodyInformation(byte[] bArr) {
        try {
            this.custodyInformation = new String(bArr, "UTF-8").trim();
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
            this.custodyInformation = new String(bArr).trim();
        }
    }

    private void parseFullDateOfBirth(byte[] bArr) {
        String str;
        if (bArr.length == 4) {
            str = Hex.bytesToHexString(bArr);
        } else {
            String str2 = new String(bArr);
            try {
                str = new String(bArr, "UTF-8");
            } catch (UnsupportedEncodingException e10) {
                LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
                str = str2;
            }
        }
        this.fullDateOfBirth = str;
    }

    private void parseNameOfHolder(byte[] bArr) {
        String str = new String(bArr);
        try {
            str = new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
        }
        this.nameOfHolder = str.trim();
    }

    private synchronized void parseOtherName(byte[] bArr) {
        if (this.otherNames == null) {
            this.otherNames = new ArrayList();
        }
        try {
            this.otherNames.add(new String(bArr, "UTF-8").trim());
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
            this.otherNames.add(new String(bArr).trim());
        }
    }

    private void parseOtherValidTDNumbers(byte[] bArr) {
        String strTrim = new String(bArr).trim();
        try {
            strTrim = new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
        }
        this.otherValidTDNumbers = new ArrayList();
        StringTokenizer stringTokenizer = new StringTokenizer(strTrim, "<");
        while (stringTokenizer.hasMoreTokens()) {
            this.otherValidTDNumbers.add(stringTokenizer.nextToken().trim());
        }
    }

    private void parsePermanentAddress(byte[] bArr) {
        String str = new String(bArr);
        try {
            str = new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, "<");
        this.permanentAddress = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            this.permanentAddress.add(stringTokenizer.nextToken().trim());
        }
    }

    private void parsePersonalNumber(byte[] bArr) {
        String str = new String(bArr);
        try {
            str = new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
        }
        this.personalNumber = str.trim();
    }

    private void parsePersonalSummary(byte[] bArr) {
        try {
            this.personalSummary = new String(bArr, "UTF-8").trim();
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
            this.personalSummary = new String(bArr).trim();
        }
    }

    private void parsePlaceOfBirth(byte[] bArr) {
        String str = new String(bArr);
        try {
            str = new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, "<");
        this.placeOfBirth = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            this.placeOfBirth.add(stringTokenizer.nextToken().trim());
        }
    }

    private void parseProfession(byte[] bArr) {
        String str = new String(bArr);
        try {
            str = new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
        }
        this.profession = str.trim();
    }

    private void parseProofOfCitizenShip(byte[] bArr) {
        this.proofOfCitizenship = bArr;
    }

    private void parseTelephone(byte[] bArr) {
        String str = new String(bArr);
        try {
            str = new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
        }
        this.telephone = str.replace("<", " ").trim();
    }

    private void parseTitle(byte[] bArr) {
        try {
            this.title = new String(bArr, "UTF-8").trim();
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
            this.title = new String(bArr).trim();
        }
    }

    private void readField(int r6, TLVInputStream tLVInputStream) throws IOException {
        int tag = tLVInputStream.readTag();
        if (tag == 160) {
            tLVInputStream.readLength();
            int tag2 = tLVInputStream.readTag();
            if (tag2 != 2) {
                throw new IllegalArgumentException("Expected " + Integer.toHexString(2) + ", found " + Integer.toHexString(tag2));
            }
            int length = tLVInputStream.readLength();
            if (length != 1) {
                throw new IllegalArgumentException(a.d("Expected length 1 count length, found ", length));
            }
            byte[] value = tLVInputStream.readValue();
            if (value == null || value.length != 1) {
                throw new IllegalArgumentException("Number of content specific fields should be encoded in single byte, found " + Arrays.toString(value));
            }
            int r62 = value[0] & 255;
            for (int r12 = 0; r12 < r62; r12++) {
                int tag3 = tLVInputStream.readTag();
                if (tag3 != 24335) {
                    throw new IllegalArgumentException("Expected " + Integer.toHexString(OTHER_NAME_TAG) + ", found " + Integer.toHexString(tag3));
                }
                tLVInputStream.readLength();
                parseOtherName(tLVInputStream.readValue());
            }
            return;
        }
        if (tag != r6) {
            throw new IllegalArgumentException("Expected " + Integer.toHexString(r6) + ", but found " + Integer.toHexString(tag));
        }
        tLVInputStream.readLength();
        byte[] value2 = tLVInputStream.readValue();
        if (tag == 24363) {
            parseFullDateOfBirth(value2);
            return;
        }
        if (tag == 24386) {
            parsePermanentAddress(value2);
            return;
        }
        switch (tag) {
            case FULL_NAME_TAG /* 24334 */:
                parseNameOfHolder(value2);
                return;
            case OTHER_NAME_TAG /* 24335 */:
                parseOtherName(value2);
                return;
            case PERSONAL_NUMBER_TAG /* 24336 */:
                parsePersonalNumber(value2);
                return;
            case PLACE_OF_BIRTH_TAG /* 24337 */:
                parsePlaceOfBirth(value2);
                return;
            case TELEPHONE_TAG /* 24338 */:
                parseTelephone(value2);
                return;
            case PROFESSION_TAG /* 24339 */:
                parseProfession(value2);
                return;
            case TITLE_TAG /* 24340 */:
                parseTitle(value2);
                return;
            case PERSONAL_SUMMARY_TAG /* 24341 */:
                parsePersonalSummary(value2);
                return;
            case PROOF_OF_CITIZENSHIP_TAG /* 24342 */:
                parseProofOfCitizenShip(value2);
                return;
            case OTHER_VALID_TD_NUMBERS_TAG /* 24343 */:
                parseOtherValidTDNumbers(value2);
                return;
            case CUSTODY_INFORMATION_TAG /* 24344 */:
                parseCustodyInformation(value2);
                return;
            default:
                throw new IllegalArgumentException(b.c(tag, new StringBuilder("Unknown field tag in DG11: ")));
        }
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj.getClass().equals(getClass())) {
            return toString().equals(((DG11File) obj).toString());
        }
        return false;
    }

    public String getCustodyInformation() {
        return this.custodyInformation;
    }

    public String getFullDateOfBirth() {
        return this.fullDateOfBirth;
    }

    public String getNameOfHolder() {
        return this.nameOfHolder;
    }

    public List<String> getOtherNames() {
        return this.otherNames == null ? new ArrayList() : new ArrayList(this.otherNames);
    }

    public List<String> getOtherValidTDNumbers() {
        return this.otherValidTDNumbers;
    }

    public List<String> getPermanentAddress() {
        return this.permanentAddress;
    }

    public String getPersonalNumber() {
        return this.personalNumber;
    }

    public String getPersonalSummary() {
        return this.personalSummary;
    }

    public List<String> getPlaceOfBirth() {
        return this.placeOfBirth;
    }

    public String getProfession() {
        return this.profession;
    }

    public byte[] getProofOfCitizenship() {
        return this.proofOfCitizenship;
    }

    @Override // org.jmrtd.lds.AbstractTaggedLDSFile
    public int getTag() {
        return 107;
    }

    public List<Integer> getTagPresenceList() {
        List<Integer> list = this.tagPresenceList;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList(12);
        this.tagPresenceList = arrayList;
        if (this.nameOfHolder != null) {
            arrayList.add(Integer.valueOf(FULL_NAME_TAG));
        }
        List<String> list2 = this.otherNames;
        if (list2 != null && !list2.isEmpty()) {
            this.tagPresenceList.add(Integer.valueOf(OTHER_NAME_TAG));
        }
        if (this.personalNumber != null) {
            this.tagPresenceList.add(Integer.valueOf(PERSONAL_NUMBER_TAG));
        }
        if (this.fullDateOfBirth != null) {
            this.tagPresenceList.add(Integer.valueOf(FULL_DATE_OF_BIRTH_TAG));
        }
        List<String> list3 = this.placeOfBirth;
        if (list3 != null && !list3.isEmpty()) {
            this.tagPresenceList.add(Integer.valueOf(PLACE_OF_BIRTH_TAG));
        }
        List<String> list4 = this.permanentAddress;
        if (list4 != null && !list4.isEmpty()) {
            this.tagPresenceList.add(Integer.valueOf(PERMANENT_ADDRESS_TAG));
        }
        if (this.telephone != null) {
            this.tagPresenceList.add(Integer.valueOf(TELEPHONE_TAG));
        }
        if (this.profession != null) {
            this.tagPresenceList.add(Integer.valueOf(PROFESSION_TAG));
        }
        if (this.title != null) {
            this.tagPresenceList.add(Integer.valueOf(TITLE_TAG));
        }
        if (this.personalSummary != null) {
            this.tagPresenceList.add(Integer.valueOf(PERSONAL_SUMMARY_TAG));
        }
        if (this.proofOfCitizenship != null) {
            this.tagPresenceList.add(Integer.valueOf(PROOF_OF_CITIZENSHIP_TAG));
        }
        List<String> list5 = this.otherValidTDNumbers;
        if (list5 != null && !list5.isEmpty()) {
            this.tagPresenceList.add(Integer.valueOf(OTHER_VALID_TD_NUMBERS_TAG));
        }
        if (this.custodyInformation != null) {
            this.tagPresenceList.add(Integer.valueOf(CUSTODY_INFORMATION_TAG));
        }
        return this.tagPresenceList;
    }

    public String getTelephone() {
        return this.telephone;
    }

    public String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (toString().hashCode() * 13) + 111;
    }

    @Override // org.jmrtd.lds.AbstractTaggedLDSFile
    public void readContent(InputStream inputStream) throws IOException {
        TLVInputStream tLVInputStream = inputStream instanceof TLVInputStream ? (TLVInputStream) inputStream : new TLVInputStream(inputStream);
        if (tLVInputStream.readTag() != 92) {
            throw new IllegalArgumentException("Expected tag list in DG11");
        }
        int length = tLVInputStream.readLength();
        int r12 = length / 2;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(tLVInputStream.readValue());
        try {
            ArrayList arrayList = new ArrayList(r12 + 1);
            int tagLength = 0;
            while (tagLength < length) {
                int tag = new TLVInputStream(byteArrayInputStream).readTag();
                tagLength += TLVUtil.getTagLength(tag);
                arrayList.add(Integer.valueOf(tag));
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                readField(((Integer) it.next()).intValue(), tLVInputStream);
            }
        } finally {
            byteArrayInputStream.close();
        }
    }

    @Override // org.jmrtd.lds.DataGroup, org.jmrtd.lds.AbstractTaggedLDSFile
    public String toString() {
        StringBuilder sb2 = new StringBuilder("DG11File [");
        String str = this.nameOfHolder;
        if (str == null) {
            str = "";
        }
        sb2.append(str);
        sb2.append(", ");
        List<String> list = this.otherNames;
        String string = "[]";
        sb2.append((list == null || list.isEmpty()) ? "[]" : this.otherNames);
        sb2.append(", ");
        String str2 = this.personalNumber;
        if (str2 == null) {
            str2 = "";
        }
        sb2.append(str2);
        sb2.append(", ");
        String str3 = this.fullDateOfBirth;
        if (str3 == null) {
            str3 = "";
        }
        sb2.append(str3);
        sb2.append(", ");
        List<String> list2 = this.placeOfBirth;
        sb2.append((list2 == null || list2.isEmpty()) ? "[]" : this.placeOfBirth.toString());
        sb2.append(", ");
        List<String> list3 = this.permanentAddress;
        sb2.append((list3 == null || list3.isEmpty()) ? "[]" : this.permanentAddress.toString());
        sb2.append(", ");
        String str4 = this.telephone;
        if (str4 == null) {
            str4 = "";
        }
        sb2.append(str4);
        sb2.append(", ");
        String str5 = this.profession;
        if (str5 == null) {
            str5 = "";
        }
        sb2.append(str5);
        sb2.append(", ");
        String str6 = this.title;
        if (str6 == null) {
            str6 = "";
        }
        sb2.append(str6);
        sb2.append(", ");
        String str7 = this.personalSummary;
        if (str7 == null) {
            str7 = "";
        }
        sb2.append(str7);
        sb2.append(", ");
        sb2.append(this.proofOfCitizenship == null ? "" : androidx.browser.browseractions.a.b(new StringBuilder("image ("), this.proofOfCitizenship.length, ")"));
        sb2.append(", ");
        List<String> list4 = this.otherValidTDNumbers;
        if (list4 != null && !list4.isEmpty()) {
            string = this.otherValidTDNumbers.toString();
        }
        sb2.append(string);
        sb2.append(", ");
        String str8 = this.custodyInformation;
        return c.h(sb2, str8 != null ? str8 : "", "]");
    }

    @Override // org.jmrtd.lds.AbstractTaggedLDSFile
    public void writeContent(OutputStream outputStream) throws IOException {
        TLVOutputStream tLVOutputStream = outputStream instanceof TLVOutputStream ? (TLVOutputStream) outputStream : new TLVOutputStream(outputStream);
        tLVOutputStream.writeTag(92);
        DataOutputStream dataOutputStream = new DataOutputStream(tLVOutputStream);
        List<Integer> tagPresenceList = getTagPresenceList();
        Iterator<Integer> it = tagPresenceList.iterator();
        while (it.hasNext()) {
            dataOutputStream.writeShort(it.next().intValue());
        }
        dataOutputStream.flush();
        tLVOutputStream.writeValueEnd();
        Iterator<Integer> it2 = tagPresenceList.iterator();
        while (it2.hasNext()) {
            int r12 = it2.next().intValue();
            if (r12 != 24363) {
                boolean z10 = true;
                if (r12 != 24386) {
                    switch (r12) {
                        case FULL_NAME_TAG /* 24334 */:
                            tLVOutputStream.writeTag(r12);
                            tLVOutputStream.writeValue(this.nameOfHolder.trim().getBytes("UTF-8"));
                            continue;
                        case OTHER_NAME_TAG /* 24335 */:
                            if (this.otherNames == null) {
                                this.otherNames = new ArrayList();
                            }
                            tLVOutputStream.writeTag(160);
                            tLVOutputStream.writeTag(2);
                            tLVOutputStream.write(this.otherNames.size());
                            tLVOutputStream.writeValueEnd();
                            for (String str : this.otherNames) {
                                tLVOutputStream.writeTag(OTHER_NAME_TAG);
                                tLVOutputStream.writeValue(str.trim().getBytes("UTF-8"));
                            }
                            break;
                        case PERSONAL_NUMBER_TAG /* 24336 */:
                            tLVOutputStream.writeTag(r12);
                            tLVOutputStream.writeValue(this.personalNumber.trim().getBytes("UTF-8"));
                            continue;
                        case PLACE_OF_BIRTH_TAG /* 24337 */:
                            tLVOutputStream.writeTag(r12);
                            for (String str2 : this.placeOfBirth) {
                                if (str2 != null) {
                                    if (z10) {
                                        z10 = false;
                                    } else {
                                        tLVOutputStream.write(60);
                                    }
                                    tLVOutputStream.write(str2.trim().getBytes("UTF-8"));
                                }
                            }
                            break;
                        case TELEPHONE_TAG /* 24338 */:
                            tLVOutputStream.writeTag(r12);
                            tLVOutputStream.writeValue(this.telephone.trim().replace(' ', '<').getBytes("UTF-8"));
                            continue;
                        case PROFESSION_TAG /* 24339 */:
                            tLVOutputStream.writeTag(r12);
                            tLVOutputStream.writeValue(this.profession.trim().replace(' ', '<').getBytes("UTF-8"));
                            continue;
                        case TITLE_TAG /* 24340 */:
                            tLVOutputStream.writeTag(r12);
                            tLVOutputStream.writeValue(this.title.trim().replace(' ', '<').getBytes("UTF-8"));
                            continue;
                        case PERSONAL_SUMMARY_TAG /* 24341 */:
                            tLVOutputStream.writeTag(r12);
                            tLVOutputStream.writeValue(this.personalSummary.trim().replace(' ', '<').getBytes("UTF-8"));
                            continue;
                        case PROOF_OF_CITIZENSHIP_TAG /* 24342 */:
                            tLVOutputStream.writeTag(r12);
                            tLVOutputStream.writeValue(this.proofOfCitizenship);
                            continue;
                        case OTHER_VALID_TD_NUMBERS_TAG /* 24343 */:
                            tLVOutputStream.writeTag(r12);
                            for (String str3 : this.otherValidTDNumbers) {
                                if (str3 != null) {
                                    if (z10) {
                                        z10 = false;
                                    } else {
                                        tLVOutputStream.write(60);
                                    }
                                    tLVOutputStream.write(str3.trim().replace(' ', '<').getBytes("UTF-8"));
                                }
                            }
                            break;
                        case CUSTODY_INFORMATION_TAG /* 24344 */:
                            tLVOutputStream.writeTag(r12);
                            tLVOutputStream.writeValue(this.custodyInformation.trim().replace(' ', '<').getBytes("UTF-8"));
                            continue;
                        default:
                            throw new IllegalStateException(b.c(r12, new StringBuilder("Unknown tag in DG11: ")));
                    }
                } else {
                    tLVOutputStream.writeTag(r12);
                    for (String str4 : this.permanentAddress) {
                        if (str4 != null) {
                            if (z10) {
                                z10 = false;
                            } else {
                                tLVOutputStream.write(60);
                            }
                            tLVOutputStream.write(str4.trim().getBytes("UTF-8"));
                        }
                    }
                }
                tLVOutputStream.writeValueEnd();
            } else {
                tLVOutputStream.writeTag(r12);
                tLVOutputStream.writeValue(this.fullDateOfBirth.getBytes("UTF-8"));
            }
        }
    }
}
