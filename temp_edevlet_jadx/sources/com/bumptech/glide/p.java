package com.bumptech.glide;

import com.bumptech.glide.p;

/* loaded from: classes.dex */
public abstract class p<CHILD extends p<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public o1.e<? super TranscodeType> f2845a = o1.c.f11063b;

    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof p) {
            return q1.m.b(this.f2845a, ((p) obj).f2845a);
        }
        return false;
    }

    public int hashCode() {
        o1.e<? super TranscodeType> eVar = this.f2845a;
        if (eVar != null) {
            return eVar.hashCode();
        }
        return 0;
    }
}
