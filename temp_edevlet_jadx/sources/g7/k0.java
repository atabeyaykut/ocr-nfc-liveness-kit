package g7;

import java.util.Locale;

/* loaded from: classes2.dex */
public final class k0 extends Exception {
    public k0(String str) {
        String str2;
        super(str);
        if (str == null) {
            return;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        switch (lowerCase.hashCode()) {
            case -1743242157:
                str2 = "service_not_available";
                break;
            case -1290953729:
                str2 = "toomanymessages";
                break;
            case -920906446:
                str2 = "invalid_parameters";
                break;
            case -617027085:
                str2 = "messagetoobig";
                break;
            case -95047692:
                str2 = "missing_to";
                break;
            default:
                return;
        }
        lowerCase.equals(str2);
    }
}
