package ng;

/* loaded from: classes3.dex */
public final class j {
    /* JADX WARN: Removed duplicated region for block: B:48:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] a(android.content.SharedPreferences r6) {
        /*
            java.lang.String r0 = "recent_search_texts"
            r1 = 0
            java.lang.String r6 = r6.getString(r0, r1)
            r0 = 1
            r2 = 0
            if (r6 == 0) goto L14
            int r3 = r6.length()
            if (r3 != 0) goto L12
            goto L14
        L12:
            r3 = 0
            goto L15
        L14:
            r3 = 1
        L15:
            if (r3 != 0) goto Lae
            j7.h r3 = new j7.h
            r3.<init>()
            java.lang.Class<java.lang.String[]> r4 = java.lang.String[].class
            if (r6 != 0) goto L22
            goto L92
        L22:
            java.io.StringReader r5 = new java.io.StringReader
            r5.<init>(r6)
            q7.a r6 = new q7.a
            r6.<init>(r5)
            java.lang.String r5 = "AssertionError (GSON 2.8.5): "
            r6.f13409b = r0
            r6.B()     // Catch: java.lang.AssertionError -> L45 java.io.IOException -> L5c java.lang.Throwable -> L63 java.lang.IllegalStateException -> L65 java.io.EOFException -> L6c
            p7.a r0 = new p7.a     // Catch: java.io.EOFException -> L41 java.lang.AssertionError -> L45 java.io.IOException -> L5c java.lang.Throwable -> L63 java.lang.IllegalStateException -> L65
            r0.<init>(r4)     // Catch: java.io.EOFException -> L41 java.lang.AssertionError -> L45 java.io.IOException -> L5c java.lang.Throwable -> L63 java.lang.IllegalStateException -> L65
            j7.u r0 = r3.b(r0)     // Catch: java.io.EOFException -> L41 java.lang.AssertionError -> L45 java.io.IOException -> L5c java.lang.Throwable -> L63 java.lang.IllegalStateException -> L65
            java.lang.Object r1 = r0.a(r6)     // Catch: java.io.EOFException -> L41 java.lang.AssertionError -> L45 java.io.IOException -> L5c java.lang.Throwable -> L63 java.lang.IllegalStateException -> L65
            goto L6f
        L41:
            r0 = move-exception
            r3 = r0
            r0 = 0
            goto L6d
        L45:
            r0 = move-exception
            java.lang.AssertionError r1 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> L63
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L63
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L63
            java.lang.String r4 = r0.getMessage()     // Catch: java.lang.Throwable -> L63
            r3.append(r4)     // Catch: java.lang.Throwable -> L63
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L63
            r1.<init>(r3, r0)     // Catch: java.lang.Throwable -> L63
            throw r1     // Catch: java.lang.Throwable -> L63
        L5c:
            r0 = move-exception
            j7.s r1 = new j7.s     // Catch: java.lang.Throwable -> L63
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L63
            throw r1     // Catch: java.lang.Throwable -> L63
        L63:
            r0 = move-exception
            goto Lab
        L65:
            r0 = move-exception
            j7.s r1 = new j7.s     // Catch: java.lang.Throwable -> L63
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L63
            throw r1     // Catch: java.lang.Throwable -> L63
        L6c:
            r3 = move-exception
        L6d:
            if (r0 == 0) goto La5
        L6f:
            r6.f13409b = r2
            if (r1 == 0) goto L92
            int r6 = r6.B()     // Catch: java.io.IOException -> L84 q7.c -> L8b
            r0 = 10
            if (r6 != r0) goto L7c
            goto L92
        L7c:
            j7.m r6 = new j7.m     // Catch: java.io.IOException -> L84 q7.c -> L8b
            java.lang.String r0 = "JSON document was not fully consumed."
            r6.<init>(r0)     // Catch: java.io.IOException -> L84 q7.c -> L8b
            throw r6     // Catch: java.io.IOException -> L84 q7.c -> L8b
        L84:
            r6 = move-exception
            j7.m r0 = new j7.m
            r0.<init>(r6)
            throw r0
        L8b:
            r6 = move-exception
            j7.s r0 = new j7.s
            r0.<init>(r6)
            throw r0
        L92:
            java.util.Map<java.lang.Class<?>, java.lang.Class<?>> r6 = l7.k.f9442a
            java.lang.Object r6 = r6.get(r4)
            java.lang.Class r6 = (java.lang.Class) r6
            if (r6 != 0) goto L9d
            goto L9e
        L9d:
            r4 = r6
        L9e:
            java.lang.Object r6 = r4.cast(r1)
            java.lang.String[] r6 = (java.lang.String[]) r6
            return r6
        La5:
            j7.s r0 = new j7.s     // Catch: java.lang.Throwable -> L63
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L63
            throw r0     // Catch: java.lang.Throwable -> L63
        Lab:
            r6.f13409b = r2
            throw r0
        Lae:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ng.j.a(android.content.SharedPreferences):java.lang.String[]");
    }
}
