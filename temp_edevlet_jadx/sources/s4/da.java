package s4;

/* loaded from: classes.dex */
public final class da {

    /* renamed from: a, reason: collision with root package name */
    public final String f14956a;

    public da(String str, int r32) {
        if (r32 != 1) {
            this.f14956a = "\n";
        } else {
            this.f14956a = str;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
    
        r0.append((java.lang.CharSequence) r3.f14956a);
        r1 = r4.next();
        r1.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
    
        if ((r1 instanceof java.lang.CharSequence) == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
    
        r1 = r1.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x001c, code lost:
    
        r1 = r1.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0018, code lost:
    
        if ((r1 instanceof java.lang.CharSequence) != false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001a, code lost:
    
        r1 = (java.lang.CharSequence) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001c, code lost:
    
        r0.append(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
    
        if (r4.hasNext() == false) goto L23;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0035 -> B:7:0x001a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(java.util.AbstractList r4) {
        /*
            r3 = this;
            java.util.Iterator r4 = r4.iterator()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            boolean r1 = r4.hasNext()     // Catch: java.io.IOException -> L40
            if (r1 == 0) goto L3b
            java.lang.Object r1 = r4.next()     // Catch: java.io.IOException -> L40
            r1.getClass()     // Catch: java.io.IOException -> L40
            boolean r2 = r1 instanceof java.lang.CharSequence     // Catch: java.io.IOException -> L40
            if (r2 == 0) goto L36
        L1a:
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1     // Catch: java.io.IOException -> L40
        L1c:
            r0.append(r1)     // Catch: java.io.IOException -> L40
            boolean r1 = r4.hasNext()     // Catch: java.io.IOException -> L40
            if (r1 == 0) goto L3b
            java.lang.String r1 = r3.f14956a     // Catch: java.io.IOException -> L40
            r0.append(r1)     // Catch: java.io.IOException -> L40
            java.lang.Object r1 = r4.next()     // Catch: java.io.IOException -> L40
            r1.getClass()     // Catch: java.io.IOException -> L40
            boolean r2 = r1 instanceof java.lang.CharSequence     // Catch: java.io.IOException -> L40
            if (r2 == 0) goto L36
            goto L1a
        L36:
            java.lang.String r1 = r1.toString()     // Catch: java.io.IOException -> L40
            goto L1c
        L3b:
            java.lang.String r4 = r0.toString()
            return r4
        L40:
            r4 = move-exception
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: s4.da.a(java.util.AbstractList):java.lang.String");
    }
}
