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
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.tlv.TLVInputStream;
import net.sf.scuba.tlv.TLVOutputStream;
import net.sf.scuba.tlv.TLVUtil;
import net.sf.scuba.util.Hex;
import org.jmrtd.lds.DataGroup;

/* loaded from: classes2.dex */
public class DG12File extends DataGroup {
    public static final int CONTENT_SPECIFIC_CONSTRUCTED_TAG = 160;
    public static final int COUNT_TAG = 2;
    public static final int DATE_AND_TIME_OF_PERSONALIZATION_TAG = 24405;
    public static final int DATE_OF_ISSUE_TAG = 24358;
    public static final int ENDORSEMENTS_AND_OBSERVATIONS_TAG = 24347;
    public static final int IMAGE_OF_FRONT_TAG = 24349;
    public static final int IMAGE_OF_REAR_TAG = 24350;
    public static final int ISSUING_AUTHORITY_TAG = 24345;
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd");
    public static final int NAME_OF_OTHER_PERSON_TAG = 24346;
    public static final int PERSONALIZATION_SYSTEM_SERIAL_NUMBER_TAG = 24406;
    private static final String SDF = "yyyyMMdd";
    private static final String SDTF = "yyyyMMddhhmmss";
    private static final int TAG_LIST_TAG = 92;
    public static final int TAX_OR_EXIT_REQUIREMENTS_TAG = 24348;
    private static final long serialVersionUID = -1979367459379125674L;
    private String dateAndTimeOfPersonalization;
    private String dateOfIssue;
    private String endorsementsAndObservations;
    private byte[] imageOfFront;
    private byte[] imageOfRear;
    private String issuingAuthority;
    private List<String> namesOfOtherPersons;
    private String personalizationSystemSerialNumber;
    private List<Integer> tagPresenceList;
    private String taxOrExitRequirements;

    public DG12File(InputStream inputStream) throws IOException {
        super(108, inputStream);
    }

    public DG12File(String str, String str2, List<String> list, String str3, String str4, byte[] bArr, byte[] bArr2, String str5, String str6) {
        super(108);
        this.issuingAuthority = str;
        this.dateOfIssue = str2;
        this.namesOfOtherPersons = list == null ? new ArrayList() : new ArrayList(list);
        this.endorsementsAndObservations = str3;
        this.taxOrExitRequirements = str4;
        this.imageOfFront = bArr;
        this.imageOfRear = bArr2;
        this.dateAndTimeOfPersonalization = str5;
        this.personalizationSystemSerialNumber = str6;
    }

    public DG12File(String str, Date date, List<String> list, String str2, String str3, byte[] bArr, byte[] bArr2, Date date2, String str4) {
        this(str, date == null ? null : new SimpleDateFormat(SDF).format(date), list, str2, str3, bArr, bArr2, date2 != null ? new SimpleDateFormat(SDTF).format(date2) : null, str4);
    }

    private void parseDateAndTimeOfPersonalization(byte[] bArr) {
        try {
            this.dateAndTimeOfPersonalization = new String(bArr, "UTF-8").trim();
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
        }
    }

    private void parseDateOfIssue(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("Wrong date format");
        }
        if (bArr.length == 8) {
            try {
                this.dateOfIssue = new String(bArr, "UTF-8").trim();
                return;
            } catch (UnsupportedEncodingException e10) {
                LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
            }
        }
        LOGGER.warning("DG12 date of issue is not in expected ccyymmdd ASCII format");
        if (bArr.length != 4) {
            throw new IllegalArgumentException("Wrong date format");
        }
        this.dateOfIssue = Hex.bytesToHexString(bArr).trim();
    }

    private void parseEndorsementsAndObservations(byte[] bArr) {
        try {
            this.endorsementsAndObservations = new String(bArr, "UTF-8").trim();
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
            this.endorsementsAndObservations = new String(bArr).trim();
        }
    }

    private void parseImageOfFront(byte[] bArr) {
        this.imageOfFront = bArr;
    }

    private void parseImageOfRear(byte[] bArr) {
        this.imageOfRear = bArr;
    }

    private void parseIssuingAuthority(byte[] bArr) {
        try {
            this.issuingAuthority = new String(bArr, "UTF-8").trim();
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
            this.issuingAuthority = new String(bArr).trim();
        }
    }

    private synchronized void parseNameOfOtherPerson(byte[] bArr) {
        if (this.namesOfOtherPersons == null) {
            this.namesOfOtherPersons = new ArrayList();
        }
        try {
            this.namesOfOtherPersons.add(new String(bArr, "UTF-8").trim());
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
            this.namesOfOtherPersons.add(new String(bArr).trim());
        }
    }

    private void parsePersonalizationSystemSerialNumber(byte[] bArr) {
        try {
            this.personalizationSystemSerialNumber = new String(bArr, "UTF-8").trim();
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
            this.personalizationSystemSerialNumber = new String(bArr).trim();
        }
    }

    private void parseTaxOrExitRequirements(byte[] bArr) {
        try {
            this.taxOrExitRequirements = new String(bArr, "UTF-8").trim();
        } catch (UnsupportedEncodingException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
            this.taxOrExitRequirements = new String(bArr).trim();
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
                if (tag3 != 24346) {
                    throw new IllegalArgumentException("Expected " + Integer.toHexString(NAME_OF_OTHER_PERSON_TAG) + ", found " + Integer.toHexString(tag3));
                }
                tLVInputStream.readLength();
                parseNameOfOtherPerson(tLVInputStream.readValue());
            }
            return;
        }
        if (tag != r6) {
            throw new IllegalArgumentException("Expected " + Integer.toHexString(r6) + ", but found " + Integer.toHexString(tag));
        }
        tLVInputStream.readLength();
        byte[] value2 = tLVInputStream.readValue();
        if (tag == 24358) {
            parseDateOfIssue(value2);
            return;
        }
        if (tag == 24405) {
            parseDateAndTimeOfPersonalization(value2);
            return;
        }
        if (tag == 24406) {
            parsePersonalizationSystemSerialNumber(value2);
            return;
        }
        switch (tag) {
            case ISSUING_AUTHORITY_TAG /* 24345 */:
                parseIssuingAuthority(value2);
                return;
            case NAME_OF_OTHER_PERSON_TAG /* 24346 */:
                parseNameOfOtherPerson(value2);
                return;
            case ENDORSEMENTS_AND_OBSERVATIONS_TAG /* 24347 */:
                parseEndorsementsAndObservations(value2);
                return;
            case TAX_OR_EXIT_REQUIREMENTS_TAG /* 24348 */:
                parseTaxOrExitRequirements(value2);
                return;
            case IMAGE_OF_FRONT_TAG /* 24349 */:
                parseImageOfFront(value2);
                return;
            case IMAGE_OF_REAR_TAG /* 24350 */:
                parseImageOfRear(value2);
                return;
            default:
                throw new IllegalArgumentException(b.c(tag, new StringBuilder("Unknown field tag in DG12: ")));
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
            return toString().equals(((DG12File) obj).toString());
        }
        return false;
    }

    public String getDateAndTimeOfPersonalization() {
        return this.dateAndTimeOfPersonalization;
    }

    public String getDateOfIssue() {
        return this.dateOfIssue;
    }

    public String getEndorsementsAndObservations() {
        return this.endorsementsAndObservations;
    }

    public byte[] getImageOfFront() {
        return this.imageOfFront;
    }

    public byte[] getImageOfRear() {
        return this.imageOfRear;
    }

    public String getIssuingAuthority() {
        return this.issuingAuthority;
    }

    public List<String> getNamesOfOtherPersons() {
        return this.namesOfOtherPersons;
    }

    public String getPersonalizationSystemSerialNumber() {
        return this.personalizationSystemSerialNumber;
    }

    @Override // org.jmrtd.lds.AbstractTaggedLDSFile
    public int getTag() {
        return 108;
    }

    public List<Integer> getTagPresenceList() {
        List<Integer> list = this.tagPresenceList;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList(10);
        this.tagPresenceList = arrayList;
        if (this.issuingAuthority != null) {
            arrayList.add(Integer.valueOf(ISSUING_AUTHORITY_TAG));
        }
        if (this.dateOfIssue != null) {
            this.tagPresenceList.add(Integer.valueOf(DATE_OF_ISSUE_TAG));
        }
        List<String> list2 = this.namesOfOtherPersons;
        if (list2 != null && !list2.isEmpty()) {
            this.tagPresenceList.add(Integer.valueOf(NAME_OF_OTHER_PERSON_TAG));
        }
        if (this.endorsementsAndObservations != null) {
            this.tagPresenceList.add(Integer.valueOf(ENDORSEMENTS_AND_OBSERVATIONS_TAG));
        }
        if (this.taxOrExitRequirements != null) {
            this.tagPresenceList.add(Integer.valueOf(TAX_OR_EXIT_REQUIREMENTS_TAG));
        }
        if (this.imageOfFront != null) {
            this.tagPresenceList.add(Integer.valueOf(IMAGE_OF_FRONT_TAG));
        }
        if (this.imageOfRear != null) {
            this.tagPresenceList.add(Integer.valueOf(IMAGE_OF_REAR_TAG));
        }
        if (this.dateAndTimeOfPersonalization != null) {
            this.tagPresenceList.add(Integer.valueOf(DATE_AND_TIME_OF_PERSONALIZATION_TAG));
        }
        if (this.personalizationSystemSerialNumber != null) {
            this.tagPresenceList.add(Integer.valueOf(PERSONALIZATION_SYSTEM_SERIAL_NUMBER_TAG));
        }
        return this.tagPresenceList;
    }

    public String getTaxOrExitRequirements() {
        return this.taxOrExitRequirements;
    }

    public int hashCode() {
        return (toString().hashCode() * 13) + 112;
    }

    @Override // org.jmrtd.lds.AbstractTaggedLDSFile
    public void readContent(InputStream inputStream) throws IOException {
        TLVInputStream tLVInputStream = inputStream instanceof TLVInputStream ? (TLVInputStream) inputStream : new TLVInputStream(inputStream);
        if (tLVInputStream.readTag() != 92) {
            throw new IllegalArgumentException("Expected tag list in DG12");
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
        StringBuilder sb2 = new StringBuilder("DG12File [");
        String str = this.issuingAuthority;
        if (str == null) {
            str = "";
        }
        sb2.append(str);
        sb2.append(", ");
        String str2 = this.dateOfIssue;
        if (str2 == null) {
            str2 = "";
        }
        sb2.append(str2);
        sb2.append(", ");
        List<String> list = this.namesOfOtherPersons;
        sb2.append((list == null || list.isEmpty()) ? "" : this.namesOfOtherPersons);
        sb2.append(", ");
        String str3 = this.endorsementsAndObservations;
        if (str3 == null) {
            str3 = "";
        }
        sb2.append(str3);
        sb2.append(", ");
        String str4 = this.taxOrExitRequirements;
        if (str4 == null) {
            str4 = "";
        }
        sb2.append(str4);
        sb2.append(", ");
        sb2.append(this.imageOfFront == null ? "" : androidx.browser.browseractions.a.b(new StringBuilder("image ("), this.imageOfFront.length, ")"));
        sb2.append(", ");
        sb2.append(this.imageOfRear == null ? "" : androidx.browser.browseractions.a.b(new StringBuilder("image ("), this.imageOfRear.length, ")"));
        sb2.append(", ");
        String str5 = this.dateAndTimeOfPersonalization;
        if (str5 == null) {
            str5 = "";
        }
        sb2.append(str5);
        sb2.append(", ");
        String str6 = this.personalizationSystemSerialNumber;
        return c.h(sb2, str6 != null ? str6 : "", "]");
    }

    @Override // org.jmrtd.lds.AbstractTaggedLDSFile
    public void writeContent(OutputStream outputStream) throws IOException {
        TLVOutputStream tLVOutputStream = outputStream instanceof TLVOutputStream ? (TLVOutputStream) outputStream : new TLVOutputStream(outputStream);
        tLVOutputStream.writeTag(92);
        List<Integer> tagPresenceList = getTagPresenceList();
        DataOutputStream dataOutputStream = new DataOutputStream(tLVOutputStream);
        Iterator<Integer> it = tagPresenceList.iterator();
        while (it.hasNext()) {
            dataOutputStream.writeShort(it.next().intValue());
        }
        dataOutputStream.flush();
        tLVOutputStream.writeValueEnd();
        Iterator<Integer> it2 = tagPresenceList.iterator();
        while (it2.hasNext()) {
            int r12 = it2.next().intValue();
            if (r12 == 24358) {
                tLVOutputStream.writeTag(r12);
                tLVOutputStream.writeValue(this.dateOfIssue.getBytes("UTF-8"));
            } else if (r12 == 24405) {
                tLVOutputStream.writeTag(r12);
                tLVOutputStream.writeValue(this.dateAndTimeOfPersonalization.getBytes("UTF-8"));
            } else if (r12 != 24406) {
                switch (r12) {
                    case ISSUING_AUTHORITY_TAG /* 24345 */:
                        tLVOutputStream.writeTag(r12);
                        tLVOutputStream.writeValue(this.issuingAuthority.trim().getBytes("UTF-8"));
                        break;
                    case NAME_OF_OTHER_PERSON_TAG /* 24346 */:
                        if (this.namesOfOtherPersons == null) {
                            this.namesOfOtherPersons = new ArrayList();
                        }
                        tLVOutputStream.writeTag(160);
                        tLVOutputStream.writeTag(2);
                        tLVOutputStream.write(this.namesOfOtherPersons.size());
                        tLVOutputStream.writeValueEnd();
                        for (String str : this.namesOfOtherPersons) {
                            tLVOutputStream.writeTag(NAME_OF_OTHER_PERSON_TAG);
                            tLVOutputStream.writeValue(str.trim().getBytes("UTF-8"));
                        }
                        tLVOutputStream.writeValueEnd();
                        break;
                    case ENDORSEMENTS_AND_OBSERVATIONS_TAG /* 24347 */:
                        tLVOutputStream.writeTag(r12);
                        tLVOutputStream.writeValue(this.endorsementsAndObservations.trim().getBytes("UTF-8"));
                        break;
                    case TAX_OR_EXIT_REQUIREMENTS_TAG /* 24348 */:
                        tLVOutputStream.writeTag(r12);
                        tLVOutputStream.writeValue(this.taxOrExitRequirements.trim().getBytes("UTF-8"));
                        break;
                    case IMAGE_OF_FRONT_TAG /* 24349 */:
                        tLVOutputStream.writeTag(r12);
                        tLVOutputStream.writeValue(this.imageOfFront);
                        break;
                    case IMAGE_OF_REAR_TAG /* 24350 */:
                        tLVOutputStream.writeTag(r12);
                        tLVOutputStream.writeValue(this.imageOfRear);
                        break;
                    default:
                        throw new IllegalArgumentException(b.c(r12, new StringBuilder("Unknown field tag in DG12: ")));
                }
            } else {
                tLVOutputStream.writeTag(r12);
                tLVOutputStream.writeValue(this.personalizationSystemSerialNumber.trim().getBytes("UTF-8"));
            }
        }
    }
}
