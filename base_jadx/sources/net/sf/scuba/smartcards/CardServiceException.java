package net.sf.scuba.smartcards;

import androidx.camera.camera2.internal.c;

/* loaded from: classes2.dex */
public class CardServiceException extends Exception {
    public static final int SW_NONE = -1;
    private static final long serialVersionUID = 4489156194716970879L;
    private final int sw;

    public CardServiceException(String str) {
        this(str, -1);
    }

    public CardServiceException(String str, int r22) {
        super(str);
        this.sw = r22;
    }

    public CardServiceException(String str, Throwable th2) {
        this(str, th2, getSW(th2));
    }

    public CardServiceException(String str, Throwable th2, int r32) {
        super(str, th2);
        this.sw = r32;
    }

    private static int getSW(Throwable th2) {
        if (th2 instanceof CardServiceException) {
            return ((CardServiceException) th2).getSW();
        }
        return -1;
    }

    private static String statusWordToString(short s7) {
        StringBuilder sb2;
        int r22;
        switch (s7) {
            case -28672:
                return "NO ERROR";
            case 25218:
                return "END OF FILE";
            case 25223:
                return "LESS DATA RESPONDED THAN REQUESTED";
            case 26368:
                return "WRONG LENGTH";
            case 27033:
                return "APPLET SELECT FAILED";
            case 27073:
                return "KEY USAGE ERROR";
            case 27270:
                return "INCORRECT P1P2";
            case 27272:
                return "KEY NOT FOUND";
            case 27392:
                return "WRONG P1P2";
            case 27904:
                return "INS NOT SUPPORTED";
            case 28160:
                return "CLA NOT SUPPORTED";
            case 28416:
                return "UNKNOWN";
            case 28671:
                return "CARD TERMINATED";
            default:
                switch (s7) {
                    case 26753:
                        return "LOGICAL CHANNEL NOT SUPPORTED";
                    case 26754:
                        return "SECURE MESSAGING NOT SUPPORTED";
                    case 26755:
                        return "LAST COMMAND EXPECTED";
                    default:
                        switch (s7) {
                            case 27010:
                                return "SECURITY STATUS NOT SATISFIED";
                            case 27011:
                                return "FILE INVALID";
                            case 27012:
                                return "DATA INVALID";
                            case 27013:
                                return "CONDITIONS NOT SATISFIED";
                            case 27014:
                                return "COMMAND NOT ALLOWED";
                            case 27015:
                                return "EXPECTED SM DATA OBJECTS MISSING";
                            case 27016:
                                return "SM DATA OBJECTS INCORRECT";
                            default:
                                switch (s7) {
                                    case 27264:
                                        return "WRONG DATA or FILEHEADER INCONSISTENT";
                                    case 27265:
                                        return "FUNC NOT SUPPORTED";
                                    case 27266:
                                        return "FILE NOT FOUND";
                                    case 27267:
                                        return "RECORD NOT FOUND";
                                    case 27268:
                                        return "OUT OF MEMORY or FILE FULL";
                                    default:
                                        int r02 = 65280 & s7;
                                        if (r02 == 24832) {
                                            sb2 = new StringBuilder("BYTES REMAINING ");
                                        } else {
                                            if (r02 != 27648) {
                                                if ((65520 & s7) != 25536) {
                                                    return "Unknown";
                                                }
                                                sb2 = new StringBuilder("NON VOLATILE MEMORY CHANGED COUNT ");
                                                r22 = s7 & 15;
                                                sb2.append(Integer.toString(r22));
                                                return sb2.toString();
                                            }
                                            sb2 = new StringBuilder("CORRECT LENGTH ");
                                        }
                                        r22 = s7 & 255;
                                        sb2.append(Integer.toString(r22));
                                        return sb2.toString();
                                }
                        }
                }
        }
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (this.sw == -1) {
            return super.getMessage();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.getMessage());
        sb2.append(" (SW = 0x");
        sb2.append(Integer.toHexString(this.sw).toUpperCase());
        sb2.append(": ");
        return c.h(sb2, statusWordToString((short) this.sw), ")");
    }

    public int getSW() {
        return this.sw;
    }
}
