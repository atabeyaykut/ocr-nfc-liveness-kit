package org.bouncycastle.util;

/* loaded from: classes2.dex */
public interface StringList extends Iterable<String> {
    boolean add(String str);

    String get(int r12);

    int size();

    String[] toStringArray();

    String[] toStringArray(int r12, int r22);
}
