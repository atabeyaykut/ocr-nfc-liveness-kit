package j7;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public abstract class b implements j7.c {

    /* renamed from: a, reason: collision with root package name */
    public static final a f8286a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ b[] f8287b;

    public enum a extends b {
        public a() {
            super("IDENTITY", 0);
        }

        @Override // j7.c
        public final String n(Field field) {
            return field.getName();
        }
    }

    static {
        a aVar = new a();
        f8286a = aVar;
        f8287b = new b[]{aVar, new b() { // from class: j7.b.b
            @Override // j7.c
            public final String n(Field field) {
                return b.q(field.getName());
            }
        }, new b() { // from class: j7.b.c
            @Override // j7.c
            public final String n(Field field) {
                return b.q(b.o(field.getName(), " "));
            }
        }, new b() { // from class: j7.b.d
            @Override // j7.c
            public final String n(Field field) {
                return b.o(field.getName(), "_").toLowerCase(Locale.ENGLISH);
            }
        }, new b() { // from class: j7.b.e
            @Override // j7.c
            public final String n(Field field) {
                return b.o(field.getName(), "-").toLowerCase(Locale.ENGLISH);
            }
        }, new b() { // from class: j7.b.f
            @Override // j7.c
            public final String n(Field field) {
                return b.o(field.getName(), ".").toLowerCase(Locale.ENGLISH);
            }
        }};
    }

    public b() {
        throw null;
    }

    public b(String str, int r22) {
    }

    public static String o(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        for (int r22 = 0; r22 < length; r22++) {
            char cCharAt = str.charAt(r22);
            if (Character.isUpperCase(cCharAt) && sb2.length() != 0) {
                sb2.append(str2);
            }
            sb2.append(cCharAt);
        }
        return sb2.toString();
    }

    public static String q(String str) {
        String strValueOf;
        StringBuilder sb2 = new StringBuilder();
        int r12 = 0;
        char cCharAt = str.charAt(0);
        int length = str.length();
        while (r12 < length - 1 && !Character.isLetter(cCharAt)) {
            sb2.append(cCharAt);
            r12++;
            cCharAt = str.charAt(r12);
        }
        if (Character.isUpperCase(cCharAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        int r13 = r12 + 1;
        if (r13 < str.length()) {
            strValueOf = upperCase + str.substring(r13);
        } else {
            strValueOf = String.valueOf(upperCase);
        }
        sb2.append(strValueOf);
        return sb2.toString();
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f8287b.clone();
    }
}
