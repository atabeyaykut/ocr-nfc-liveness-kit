package org.bouncycastle.asn1.eac;

import java.util.Enumeration;
import java.util.Hashtable;

/* loaded from: classes2.dex */
public class Flags {
    int value;

    public static class StringJoiner {
        boolean First = true;

        /* renamed from: b, reason: collision with root package name */
        StringBuffer f11378b = new StringBuffer();
        String mSeparator;

        public StringJoiner(String str) {
            this.mSeparator = str;
        }

        public void add(String str) {
            if (this.First) {
                this.First = false;
            } else {
                this.f11378b.append(this.mSeparator);
            }
            this.f11378b.append(str);
        }

        public String toString() {
            return this.f11378b.toString();
        }
    }

    public Flags() {
        this.value = 0;
    }

    public Flags(int r12) {
        this.value = r12;
    }

    public String decode(Hashtable hashtable) {
        StringJoiner stringJoiner = new StringJoiner(" ");
        Enumeration enumerationKeys = hashtable.keys();
        while (enumerationKeys.hasMoreElements()) {
            Integer num = (Integer) enumerationKeys.nextElement();
            if (isSet(num.intValue())) {
                stringJoiner.add((String) hashtable.get(num));
            }
        }
        return stringJoiner.toString();
    }

    public int getFlags() {
        return this.value;
    }

    public boolean isSet(int r22) {
        return (r22 & this.value) != 0;
    }

    public void set(int r22) {
        this.value = r22 | this.value;
    }
}
