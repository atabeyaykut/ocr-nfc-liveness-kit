package org.bouncycastle.math.ec;

/* loaded from: classes2.dex */
public interface ECLookupTable {
    int getSize();

    ECPoint lookup(int r12);

    ECPoint lookupVar(int r12);
}
