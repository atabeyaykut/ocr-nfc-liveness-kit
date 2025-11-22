package la;

import c5.y;
import ja.o;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import m9.g0;

/* loaded from: classes2.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public static final LinkedHashSet f9655a = g0.G(y.t("Collection", "toArray()[Ljava/lang/Object;", "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"), "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;");

    /* renamed from: b, reason: collision with root package name */
    public static final LinkedHashSet f9656b;

    /* renamed from: c, reason: collision with root package name */
    public static final LinkedHashSet f9657c;

    /* renamed from: d, reason: collision with root package name */
    public static final LinkedHashSet f9658d;

    /* renamed from: e, reason: collision with root package name */
    public static final LinkedHashSet f9659e;
    public static final LinkedHashSet f;

    static {
        List<tb.c> listT = b8.f.T(tb.c.BOOLEAN, tb.c.CHAR);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (tb.c cVar : listT) {
            String strO = cVar.t().f().o();
            kotlin.jvm.internal.h.e(strO, "it.wrapperFqName.shortName().asString()");
            String[] strArr = new String[1];
            StringBuilder sb2 = new StringBuilder();
            String str = cVar.f15662b;
            if (str == null) {
                tb.c.n(11);
                throw null;
            }
            sb2.append(str);
            sb2.append("Value()");
            sb2.append(cVar.q());
            strArr[0] = sb2.toString();
            m9.p.T0(y.s(strO, strArr), linkedHashSet);
        }
        f9656b = g0.F(g0.F(g0.F(g0.F(g0.F(g0.F(linkedHashSet, y.t("List", "sort(Ljava/util/Comparator;)V")), y.s("String", "codePointAt(I)I", "codePointBefore(I)I", "codePointCount(II)I", "compareToIgnoreCase(Ljava/lang/String;)I", "concat(Ljava/lang/String;)Ljava/lang/String;", "contains(Ljava/lang/CharSequence;)Z", "contentEquals(Ljava/lang/CharSequence;)Z", "contentEquals(Ljava/lang/StringBuffer;)Z", "endsWith(Ljava/lang/String;)Z", "equalsIgnoreCase(Ljava/lang/String;)Z", "getBytes()[B", "getBytes(II[BI)V", "getBytes(Ljava/lang/String;)[B", "getBytes(Ljava/nio/charset/Charset;)[B", "getChars(II[CI)V", "indexOf(I)I", "indexOf(II)I", "indexOf(Ljava/lang/String;)I", "indexOf(Ljava/lang/String;I)I", "intern()Ljava/lang/String;", "isEmpty()Z", "lastIndexOf(I)I", "lastIndexOf(II)I", "lastIndexOf(Ljava/lang/String;)I", "lastIndexOf(Ljava/lang/String;I)I", "matches(Ljava/lang/String;)Z", "offsetByCodePoints(II)I", "regionMatches(ILjava/lang/String;II)Z", "regionMatches(ZILjava/lang/String;II)Z", "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "replace(CC)Ljava/lang/String;", "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;", "split(Ljava/lang/String;I)[Ljava/lang/String;", "split(Ljava/lang/String;)[Ljava/lang/String;", "startsWith(Ljava/lang/String;I)Z", "startsWith(Ljava/lang/String;)Z", "substring(II)Ljava/lang/String;", "substring(I)Ljava/lang/String;", "toCharArray()[C", "toLowerCase()Ljava/lang/String;", "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;", "toUpperCase()Ljava/lang/String;", "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;", "trim()Ljava/lang/String;", "isBlank()Z", "lines()Ljava/util/stream/Stream;", "repeat(I)Ljava/lang/String;")), y.s("Double", "isInfinite()Z", "isNaN()Z")), y.s("Float", "isInfinite()Z", "isNaN()Z")), y.s("Enum", "getDeclaringClass()Ljava/lang/Class;", "finalize()V")), y.s("CharSequence", "isEmpty()Z"));
        f9657c = g0.F(g0.F(g0.F(g0.F(g0.F(g0.F(y.s("CharSequence", "codePoints()Ljava/util/stream/IntStream;", "chars()Ljava/util/stream/IntStream;"), y.t("Iterator", "forEachRemaining(Ljava/util/function/Consumer;)V")), y.s("Iterable", "forEach(Ljava/util/function/Consumer;)V", "spliterator()Ljava/util/Spliterator;")), y.s("Throwable", "setStackTrace([Ljava/lang/StackTraceElement;)V", "fillInStackTrace()Ljava/lang/Throwable;", "getLocalizedMessage()Ljava/lang/String;", "printStackTrace()V", "printStackTrace(Ljava/io/PrintStream;)V", "printStackTrace(Ljava/io/PrintWriter;)V", "getStackTrace()[Ljava/lang/StackTraceElement;", "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "getSuppressed()[Ljava/lang/Throwable;", "addSuppressed(Ljava/lang/Throwable;)V")), y.t("Collection", "spliterator()Ljava/util/Spliterator;", "parallelStream()Ljava/util/stream/Stream;", "stream()Ljava/util/stream/Stream;", "removeIf(Ljava/util/function/Predicate;)Z")), y.t("List", "replaceAll(Ljava/util/function/UnaryOperator;)V")), y.t("Map", "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "forEach(Ljava/util/function/BiConsumer;)V", "replaceAll(Ljava/util/function/BiFunction;)V", "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z", "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;", "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"));
        f9658d = g0.F(g0.F(y.t("Collection", "removeIf(Ljava/util/function/Predicate;)Z"), y.t("List", "replaceAll(Ljava/util/function/UnaryOperator;)V", "sort(Ljava/util/Comparator;)V")), y.t("Map", "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;", "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "remove(Ljava/lang/Object;Ljava/lang/Object;)Z", "replaceAll(Ljava/util/function/BiFunction;)V", "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"));
        tb.c cVar2 = tb.c.BYTE;
        List listT2 = b8.f.T(tb.c.BOOLEAN, cVar2, tb.c.DOUBLE, tb.c.FLOAT, cVar2, tb.c.INT, tb.c.LONG, tb.c.SHORT);
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        Iterator it = listT2.iterator();
        while (it.hasNext()) {
            String strO2 = ((tb.c) it.next()).t().f().o();
            kotlin.jvm.internal.h.e(strO2, "it.wrapperFqName.shortName().asString()");
            String[] strArrG = y.g("Ljava/lang/String;");
            m9.p.T0(y.s(strO2, (String[]) Arrays.copyOf(strArrG, strArrG.length)), linkedHashSet2);
        }
        String[] strArrG2 = y.g("D");
        LinkedHashSet linkedHashSetF = g0.F(linkedHashSet2, y.s("Float", (String[]) Arrays.copyOf(strArrG2, strArrG2.length)));
        String[] strArrG3 = y.g("[C", "[CII", "[III", "[BIILjava/lang/String;", "[BIILjava/nio/charset/Charset;", "[BLjava/lang/String;", "[BLjava/nio/charset/Charset;", "[BII", "[B", "Ljava/lang/StringBuffer;", "Ljava/lang/StringBuilder;");
        f9659e = g0.F(linkedHashSetF, y.s("String", (String[]) Arrays.copyOf(strArrG3, strArrG3.length)));
        String[] strArrG4 = y.g("Ljava/lang/String;Ljava/lang/Throwable;ZZ");
        f = y.s("Throwable", (String[]) Arrays.copyOf(strArrG4, strArrG4.length));
    }

    public static boolean a(lb.d dVar) {
        if (kotlin.jvm.internal.h.a(dVar, o.a.f8377g)) {
            return true;
        }
        return o.a.f8374c0.get(dVar) != null;
    }
}
