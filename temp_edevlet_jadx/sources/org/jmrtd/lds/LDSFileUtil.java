package org.jmrtd.lds;

import ab.b;
import android.support.v4.media.a;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jmrtd.PassportService;
import org.jmrtd.lds.icao.COMFile;
import org.jmrtd.lds.icao.DG11File;
import org.jmrtd.lds.icao.DG12File;
import org.jmrtd.lds.icao.DG14File;
import org.jmrtd.lds.icao.DG15File;
import org.jmrtd.lds.icao.DG1File;
import org.jmrtd.lds.icao.DG2File;
import org.jmrtd.lds.icao.DG3File;
import org.jmrtd.lds.icao.DG4File;
import org.jmrtd.lds.icao.DG5File;
import org.jmrtd.lds.icao.DG6File;
import org.jmrtd.lds.icao.DG7File;

/* loaded from: classes2.dex */
public final class LDSFileUtil {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd");
    public static final Map<Short, Byte> FID_TO_SFI = createFIDToSFIMap();

    private LDSFileUtil() {
    }

    private static Map<Short, Byte> createFIDToSFIMap() {
        HashMap map = new HashMap(20);
        map.put(Short.valueOf(PassportService.EF_COM), Byte.valueOf(PassportService.SFI_COM));
        map.put(Short.valueOf(PassportService.EF_DG1), (byte) 1);
        map.put(Short.valueOf(PassportService.EF_DG2), (byte) 2);
        map.put(Short.valueOf(PassportService.EF_DG3), (byte) 3);
        map.put(Short.valueOf(PassportService.EF_DG4), (byte) 4);
        map.put(Short.valueOf(PassportService.EF_DG5), (byte) 5);
        map.put(Short.valueOf(PassportService.EF_DG6), (byte) 6);
        map.put(Short.valueOf(PassportService.EF_DG7), (byte) 7);
        map.put(Short.valueOf(PassportService.EF_DG8), (byte) 8);
        map.put(Short.valueOf(PassportService.EF_DG9), (byte) 9);
        map.put(Short.valueOf(PassportService.EF_DG10), (byte) 10);
        map.put(Short.valueOf(PassportService.EF_DG11), Byte.valueOf(PassportService.SFI_DG11));
        map.put(Short.valueOf(PassportService.EF_DG12), Byte.valueOf(PassportService.SFI_DG12));
        map.put(Short.valueOf(PassportService.EF_DG13), Byte.valueOf(PassportService.SFI_DG13));
        map.put(Short.valueOf(PassportService.EF_DG14), (byte) 14);
        map.put(Short.valueOf(PassportService.EF_DG15), Byte.valueOf(PassportService.SFI_DG15));
        map.put(Short.valueOf(PassportService.EF_DG16), (byte) 16);
        map.put((short) 285, (byte) 29);
        map.put((short) 284, (byte) 28);
        return Collections.unmodifiableMap(map);
    }

    public static List<Integer> getDataGroupNumbers(SODFile sODFile) {
        ArrayList arrayList = new ArrayList();
        if (sODFile == null) {
            return arrayList;
        }
        arrayList.addAll(sODFile.getDataGroupHashes().keySet());
        Collections.sort(arrayList);
        return arrayList;
    }

    public static List<Integer> getDataGroupNumbers(COMFile cOMFile) {
        ArrayList arrayList = new ArrayList();
        if (cOMFile == null) {
            return arrayList;
        }
        arrayList.addAll(toDataGroupList(cOMFile.getTagList()));
        Collections.sort(arrayList);
        return arrayList;
    }

    public static AbstractLDSFile getLDSFile(short s7, InputStream inputStream) throws IOException {
        switch (s7) {
            case 257:
                return new DG1File(inputStream);
            case 258:
                return new DG2File(inputStream);
            case 259:
                return new DG3File(inputStream);
            case 260:
                return new DG4File(inputStream);
            case 261:
                return new DG5File(inputStream);
            case 262:
                return new DG6File(inputStream);
            case 263:
                return new DG7File(inputStream);
            case 264:
                throw new IllegalArgumentException("DG8 files are not yet supported");
            case 265:
                throw new IllegalArgumentException("DG9 files are not yet supported");
            case 266:
                throw new IllegalArgumentException("DG10 files are not yet supported");
            case 267:
                return new DG11File(inputStream);
            case 268:
                return new DG12File(inputStream);
            case 269:
                throw new IllegalArgumentException("DG13 files are not yet supported");
            case 270:
                return new DG14File(inputStream);
            case 271:
                return new DG15File(inputStream);
            case 272:
                throw new IllegalArgumentException("DG16 files are not yet supported");
            default:
                switch (s7) {
                    case 284:
                        return new CVCAFile(inputStream);
                    case 285:
                        return new SODFile(inputStream);
                    case 286:
                        return new COMFile(inputStream);
                    default:
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 37);
                        try {
                            bufferedInputStream.mark(37);
                            return new CVCAFile(s7, bufferedInputStream);
                        } catch (Exception e10) {
                            LOGGER.log(Level.WARNING, "Unknown file " + Integer.toHexString(s7), (Throwable) e10);
                            bufferedInputStream.reset();
                            throw new NumberFormatException(b.c(s7, new StringBuilder("Unknown file ")));
                        }
                }
        }
    }

    public static int lookupDataGroupNumberByFID(short s7) {
        switch (s7) {
            case 257:
                return 1;
            case 258:
                return 2;
            case 259:
                return 3;
            case 260:
                return 4;
            case 261:
                return 5;
            case 262:
                return 6;
            case 263:
                return 7;
            case 264:
                return 8;
            case 265:
                return 9;
            case 266:
                return 10;
            case 267:
                return 11;
            case 268:
                return 12;
            case 269:
                return 13;
            case 270:
                return 14;
            case 271:
                return 15;
            case 272:
                return 16;
            default:
                throw new NumberFormatException(b.c(s7, new StringBuilder("Unknown fid ")));
        }
    }

    public static int lookupDataGroupNumberByTag(int r32) {
        if (r32 == 97) {
            return 1;
        }
        if (r32 == 99) {
            return 3;
        }
        if (r32 == 117) {
            return 2;
        }
        if (r32 == 118) {
            return 4;
        }
        switch (r32) {
            case 101:
                return 5;
            case 102:
                return 6;
            case 103:
                return 7;
            case 104:
                return 8;
            case 105:
                return 9;
            case 106:
                return 10;
            case 107:
                return 11;
            case 108:
                return 12;
            case 109:
                return 13;
            case 110:
                return 14;
            case 111:
                return 15;
            case 112:
                return 16;
            default:
                throw new NumberFormatException(b.c(r32, new StringBuilder("Unknown tag ")));
        }
    }

    public static short lookupFIDByDataGroupNumber(int r22) {
        switch (r22) {
            case 1:
                return PassportService.EF_DG1;
            case 2:
                return PassportService.EF_DG2;
            case 3:
                return PassportService.EF_DG3;
            case 4:
                return PassportService.EF_DG4;
            case 5:
                return PassportService.EF_DG5;
            case 6:
                return PassportService.EF_DG6;
            case 7:
                return PassportService.EF_DG7;
            case 8:
                return PassportService.EF_DG8;
            case 9:
                return PassportService.EF_DG9;
            case 10:
                return PassportService.EF_DG10;
            case 11:
                return PassportService.EF_DG11;
            case 12:
                return PassportService.EF_DG12;
            case 13:
                return PassportService.EF_DG13;
            case 14:
                return PassportService.EF_DG14;
            case 15:
                return PassportService.EF_DG15;
            case 16:
                return PassportService.EF_DG16;
            default:
                throw new NumberFormatException(a.d("Unknown number ", r22));
        }
    }

    public static short lookupFIDBySFI(byte b10) {
        switch (b10) {
            case 1:
                return PassportService.EF_DG1;
            case 2:
                return PassportService.EF_DG2;
            case 3:
                return PassportService.EF_DG3;
            case 4:
                return PassportService.EF_DG4;
            case 5:
                return PassportService.EF_DG5;
            case 6:
                return PassportService.EF_DG6;
            case 7:
                return PassportService.EF_DG7;
            case 8:
                return PassportService.EF_DG8;
            case 9:
                return PassportService.EF_DG9;
            case 10:
                return PassportService.EF_DG10;
            case 11:
                return PassportService.EF_DG11;
            case 12:
                return PassportService.EF_DG12;
            case 13:
                return PassportService.EF_DG13;
            case 14:
                return PassportService.EF_DG14;
            case 15:
                return PassportService.EF_DG15;
            case 16:
                return PassportService.EF_DG16;
            default:
                switch (b10) {
                    case 28:
                        return (short) 284;
                    case 29:
                        return (short) 285;
                    case 30:
                        return PassportService.EF_COM;
                    default:
                        throw new NumberFormatException(b.c(b10, new StringBuilder("Unknown SFI ")));
                }
        }
    }

    public static short lookupFIDByTag(int r32) {
        switch (r32) {
            case 96:
                return PassportService.EF_COM;
            case 97:
                return PassportService.EF_DG1;
            case 98:
            case 100:
            case 113:
            case 114:
            case 115:
            case 116:
            default:
                throw new NumberFormatException(b.c(r32, new StringBuilder("Unknown tag ")));
            case 99:
                return PassportService.EF_DG3;
            case 101:
                return PassportService.EF_DG5;
            case 102:
                return PassportService.EF_DG6;
            case 103:
                return PassportService.EF_DG7;
            case 104:
                return PassportService.EF_DG8;
            case 105:
                return PassportService.EF_DG9;
            case 106:
                return PassportService.EF_DG10;
            case 107:
                return PassportService.EF_DG11;
            case 108:
                return PassportService.EF_DG12;
            case 109:
                return PassportService.EF_DG13;
            case 110:
                return PassportService.EF_DG14;
            case 111:
                return PassportService.EF_DG15;
            case 112:
                return PassportService.EF_DG16;
            case 117:
                return PassportService.EF_DG2;
            case 118:
                return PassportService.EF_DG4;
            case 119:
                return (short) 285;
        }
    }

    public static String lookupFileNameByFID(int r22) {
        if (r22 == 285) {
            return "EF_SOD";
        }
        if (r22 == 286) {
            return "EF_COM";
        }
        switch (r22) {
            case 257:
                return "EF_DG1";
            case 258:
                return "EF_DG2";
            case 259:
                return "EF_DG3";
            case 260:
                return "EF_DG4";
            case 261:
                return "EF_DG5";
            case 262:
                return "EF_DG6";
            case 263:
                return "EF_DG7";
            case 264:
                return "EF_DG8";
            case 265:
                return "EF_DG9";
            case 266:
                return "EF_DG10";
            case 267:
                return "EF_DG11";
            case 268:
                return "EF_DG12";
            case 269:
                return "EF_DG13";
            case 270:
                return "EF_DG14";
            case 271:
                return "EF_DG15";
            case 272:
                return "EF_DG16";
            default:
                return b.c(r22, new StringBuilder("File with FID 0x"));
        }
    }

    public static String lookupFileNameByTag(int r22) {
        switch (r22) {
            case 96:
                return "EF_COM";
            case 97:
                return "EF_DG1";
            case 98:
            case 100:
            case 113:
            case 114:
            case 115:
            case 116:
            default:
                return b.c(r22, new StringBuilder("File with tag 0x"));
            case 99:
                return "EF_DG3";
            case 101:
                return "EF_DG5";
            case 102:
                return "EF_DG6";
            case 103:
                return "EF_DG7";
            case 104:
                return "EF_DG8";
            case 105:
                return "EF_DG9";
            case 106:
                return "EF_DG10";
            case 107:
                return "EF_DG11";
            case 108:
                return "EF_DG12";
            case 109:
                return "EF_DG13";
            case 110:
                return "EF_DG14";
            case 111:
                return "EF_DG15";
            case 112:
                return "EF_DG16";
            case 117:
                return "EF_DG2";
            case 118:
                return "EF_DG4";
            case 119:
                return "EF_SOD";
        }
    }

    public static int lookupSFIByFID(short s7) {
        Byte b10 = FID_TO_SFI.get(Short.valueOf(s7));
        if (b10 != null) {
            return b10.byteValue() & 255;
        }
        throw new NumberFormatException(b.c(s7, new StringBuilder("Unknown FID ")));
    }

    public static int lookupTagByDataGroupNumber(int r22) {
        switch (r22) {
            case 1:
                return 97;
            case 2:
                return 117;
            case 3:
                return 99;
            case 4:
                return 118;
            case 5:
                return 101;
            case 6:
                return 102;
            case 7:
                return 103;
            case 8:
                return 104;
            case 9:
                return 105;
            case 10:
                return 106;
            case 11:
                return 107;
            case 12:
                return 108;
            case 13:
                return 109;
            case 14:
                return 110;
            case 15:
                return 111;
            case 16:
                return 112;
            default:
                throw new NumberFormatException(a.d("Unknown number ", r22));
        }
    }

    public static short lookupTagByFID(short s7) {
        if (s7 == 285) {
            return (short) 119;
        }
        if (s7 == 286) {
            return (short) 96;
        }
        switch (s7) {
            case 257:
                return (short) 97;
            case 258:
                return (short) 117;
            case 259:
                return (short) 99;
            case 260:
                return (short) 118;
            case 261:
                return (short) 101;
            case 262:
                return (short) 102;
            case 263:
                return (short) 103;
            case 264:
                return (short) 104;
            case 265:
                return (short) 105;
            case 266:
                return (short) 106;
            case 267:
                return (short) 107;
            case 268:
                return (short) 108;
            case 269:
                return (short) 109;
            case 270:
                return (short) 110;
            case 271:
                return (short) 111;
            case 272:
                return (short) 112;
            default:
                throw new NumberFormatException(b.c(s7, new StringBuilder("Unknown fid ")));
        }
    }

    private static List<Integer> toDataGroupList(int[] r92) {
        if (r92 == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(r92.length);
        for (int r32 : r92) {
            try {
                arrayList.add(Integer.valueOf(lookupDataGroupNumberByTag(r32)));
            } catch (NumberFormatException e10) {
                LOGGER.log(Level.WARNING, "Could not find DG number for tag: " + Integer.toHexString(r32), (Throwable) e10);
            }
        }
        return arrayList;
    }
}
