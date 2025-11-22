package k6;

import android.util.JsonReader;
import androidx.annotation.NonNull;
import j6.b;
import j6.b0;
import j6.o;
import j6.r;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import v6.d;
import v6.e;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final d f8771a;

    /* renamed from: k6.a$a, reason: collision with other inner class name */
    public interface InterfaceC0162a<T> {
        T b(@NonNull JsonReader jsonReader) throws IOException;
    }

    static {
        e eVar = new e();
        j6.a.f8007a.a(eVar);
        eVar.f18252d = true;
        f8771a = new d(eVar);
    }

    public static r a(JsonReader jsonReader) throws IOException {
        r.a aVar = new r.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "offset":
                    aVar.f8245d = Long.valueOf(jsonReader.nextLong());
                    break;
                case "symbol":
                    String strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        throw new NullPointerException("Null symbol");
                    }
                    aVar.f8243b = strNextString;
                    break;
                case "pc":
                    aVar.f8242a = Long.valueOf(jsonReader.nextLong());
                    break;
                case "file":
                    aVar.f8244c = jsonReader.nextString();
                    break;
                case "importance":
                    aVar.f8246e = Integer.valueOf(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVar.a();
    }

    public static j6.d b(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        String strNextString = null;
        String strNextString2 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("key")) {
                strNextString = jsonReader.nextString();
                if (strNextString == null) {
                    throw new NullPointerException("Null key");
                }
            } else if (strNextName.equals("value")) {
                strNextString2 = jsonReader.nextString();
                if (strNextString2 == null) {
                    throw new NullPointerException("Null value");
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        String strConcat = strNextString == null ? " key" : "";
        if (strNextString2 == null) {
            strConcat = strConcat.concat(" value");
        }
        if (strConcat.isEmpty()) {
            return new j6.d(strNextString, strNextString2);
        }
        throw new IllegalStateException("Missing required properties:".concat(strConcat));
    }

    @NonNull
    public static <T> b0<T> c(@NonNull JsonReader jsonReader, @NonNull InterfaceC0162a<T> interfaceC0162a) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(interfaceC0162a.b(jsonReader));
        }
        jsonReader.endArray();
        return new b0<>(arrayList);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0475  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x012d  */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static j6.k d(@androidx.annotation.NonNull android.util.JsonReader r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k6.a.d(android.util.JsonReader):j6.k");
    }

    @NonNull
    public static o e(@NonNull JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        Integer numValueOf = null;
        String strNextString = null;
        String strNextString2 = null;
        b0 b0Var = null;
        o oVarE = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            strNextName.hashCode();
            switch (strNextName) {
                case "frames":
                    ArrayList arrayList = new ArrayList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        arrayList.add(a(jsonReader));
                    }
                    jsonReader.endArray();
                    b0Var = new b0(arrayList);
                    break;
                case "reason":
                    strNextString2 = jsonReader.nextString();
                    break;
                case "type":
                    strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        throw new NullPointerException("Null type");
                    }
                    break;
                case "causedBy":
                    oVarE = e(jsonReader);
                    break;
                case "overflowCount":
                    numValueOf = Integer.valueOf(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        String strF = strNextString == null ? " type" : "";
        if (b0Var == null) {
            strF = strF.concat(" frames");
        }
        if (numValueOf == null) {
            strF = android.support.v4.media.a.f(strF, " overflowCount");
        }
        if (strF.isEmpty()) {
            return new o(strNextString, strNextString2, b0Var, oVarE, numValueOf.intValue());
        }
        throw new IllegalStateException("Missing required properties:".concat(strF));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0130  */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static j6.b f(@androidx.annotation.NonNull android.util.JsonReader r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k6.a.f(android.util.JsonReader):j6.b");
    }

    @NonNull
    public static b g(@NonNull String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                b bVarF = f(jsonReader);
                jsonReader.close();
                return bVarF;
            } finally {
            }
        } catch (IllegalStateException e10) {
            throw new IOException(e10);
        }
    }
}
