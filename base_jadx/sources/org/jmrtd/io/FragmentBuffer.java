package org.jmrtd.io;

import androidx.camera.core.impl.a;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class FragmentBuffer implements Serializable {
    private static final int DEFAULT_SIZE = 2000;
    private static final long serialVersionUID = -3510872461790499721L;
    private byte[] buffer;
    private Collection<Fragment> fragments;

    public static class Fragment implements Serializable {
        private static final long serialVersionUID = -3795931618553980328L;
        private int length;
        private int offset;

        private Fragment(int r12, int r22) {
            this.offset = r12;
            this.length = r22;
        }

        public static Fragment getInstance(int r12, int r22) {
            return new Fragment(r12, r22);
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            if (!obj.getClass().equals(Fragment.class)) {
                return false;
            }
            Fragment fragment = (Fragment) obj;
            return fragment.offset == this.offset && fragment.length == this.length;
        }

        public int getLength() {
            return this.length;
        }

        public int getOffset() {
            return this.offset;
        }

        public int hashCode() {
            return a.d(this.length, 3, this.offset * 2, 5);
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("[");
            sb2.append(this.offset);
            sb2.append(" .. ");
            sb2.append((this.offset + this.length) - 1);
            sb2.append(" (");
            return androidx.browser.browseractions.a.b(sb2, this.length, ")]");
        }
    }

    public FragmentBuffer() {
        this(DEFAULT_SIZE);
    }

    public FragmentBuffer(int r12) {
        this.buffer = new byte[r12];
        this.fragments = new HashSet();
    }

    private void setLength(int r42) {
        synchronized (this) {
            byte[] bArr = this.buffer;
            if (r42 <= bArr.length) {
                return;
            }
            byte[] bArr2 = new byte[r42];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            this.buffer = bArr2;
        }
    }

    public synchronized void addFragment(int r32, byte b10) {
        addFragment(r32, new byte[]{b10});
    }

    public synchronized void addFragment(int r32, byte[] bArr) {
        addFragment(r32, bArr, 0, bArr.length);
    }

    public synchronized void addFragment(int r52, byte[] bArr, int r72, int r82) {
        Collection<Fragment> collection;
        int r02 = r52 + r82;
        byte[] bArr2 = this.buffer;
        if (r02 > bArr2.length) {
            setLength(Math.max(r02, bArr2.length) * 2);
        }
        System.arraycopy(bArr, r72, this.buffer, r52, r82);
        Iterator it = new ArrayList(this.fragments).iterator();
        while (it.hasNext()) {
            Fragment fragment = (Fragment) it.next();
            if (fragment.getOffset() <= r52 && r52 + r82 <= fragment.getOffset() + fragment.getLength()) {
                return;
            }
            if (fragment.getOffset() > r52 || r52 > fragment.getOffset() + fragment.getLength()) {
                if (r52 <= fragment.getOffset() && fragment.getOffset() + fragment.getLength() <= r52 + r82) {
                    collection = this.fragments;
                } else if (r52 <= fragment.getOffset() && fragment.getOffset() <= r52 + r82) {
                    r82 = (fragment.getOffset() + fragment.getLength()) - r52;
                    collection = this.fragments;
                }
                collection.remove(fragment);
            } else {
                int offset = (r52 + r82) - fragment.getOffset();
                int offset2 = fragment.getOffset();
                this.fragments.remove(fragment);
                r82 = offset;
                r52 = offset2;
            }
        }
        this.fragments.add(Fragment.getInstance(r52, r82));
    }

    public synchronized boolean equals(Object obj) {
        boolean z10 = false;
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(FragmentBuffer.class)) {
            return false;
        }
        FragmentBuffer fragmentBuffer = (FragmentBuffer) obj;
        byte[] bArr = fragmentBuffer.buffer;
        if (bArr == null && this.buffer != null) {
            return false;
        }
        if (bArr != null && this.buffer == null) {
            return false;
        }
        Collection<Fragment> collection = fragmentBuffer.fragments;
        if (collection == null && this.fragments != null) {
            return false;
        }
        if (collection != null && this.fragments == null) {
            return false;
        }
        if (Arrays.equals(bArr, this.buffer)) {
            if (fragmentBuffer.fragments.equals(this.fragments)) {
                z10 = true;
            }
        }
        return z10;
    }

    public byte[] getBuffer() {
        return this.buffer;
    }

    public synchronized int getBufferedLength(int r6) {
        int r42;
        int r12 = 0;
        if (r6 >= this.buffer.length) {
            return 0;
        }
        for (Fragment fragment : this.fragments) {
            int offset = fragment.getOffset();
            int offset2 = fragment.getOffset() + fragment.getLength();
            if (offset <= r6 && r6 < offset2 && (r42 = offset2 - r6) > r12) {
                r12 = r42;
            }
        }
        return r12;
    }

    public synchronized int getBytesBuffered() {
        int r12;
        r12 = 0;
        for (int r02 = 0; r02 < this.buffer.length; r02++) {
            if (isCoveredByFragment(r02)) {
                r12++;
            }
        }
        return r12;
    }

    public Collection<Fragment> getFragments() {
        return this.fragments;
    }

    public int getLength() {
        int length;
        synchronized (this) {
            length = this.buffer.length;
        }
        return length;
    }

    public synchronized int getPosition() {
        int r12;
        r12 = 0;
        for (int r02 = 0; r02 < this.buffer.length; r02++) {
            if (isCoveredByFragment(r02)) {
                r12 = r02 + 1;
            }
        }
        return r12;
    }

    public synchronized Fragment getSmallestUnbufferedFragment(int r72, int r82) {
        int r12;
        Iterator<Fragment> it = this.fragments.iterator();
        r12 = r72;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Fragment next = it.next();
            if (next.getOffset() <= r12 && r12 + r82 <= next.getOffset() + next.getLength()) {
                r82 = 0;
                break;
            }
            if (next.getOffset() <= r12 && r12 < next.getOffset() + next.getLength()) {
                int offset = next.getOffset() + next.getLength();
                r82 = (r12 + r82) - offset;
                r12 = offset;
            } else if (r12 > next.getOffset() || next.getOffset() + next.getLength() > r12 + r82) {
                if (r72 <= next.getOffset() && next.getOffset() < r12 + r82) {
                    r82 = next.getOffset() - r12;
                }
            }
        }
        return Fragment.getInstance(r12, r82);
    }

    public int hashCode() {
        return (this.fragments.hashCode() * 2) + (Arrays.hashCode(this.buffer) * 3) + 7;
    }

    public synchronized boolean isCoveredByFragment(int r22) {
        return isCoveredByFragment(r22, 1);
    }

    public synchronized boolean isCoveredByFragment(int r52, int r6) {
        for (Fragment fragment : this.fragments) {
            int offset = fragment.getOffset();
            int offset2 = fragment.getOffset() + fragment.getLength();
            if (offset <= r52 && r52 + r6 <= offset2) {
                return true;
            }
        }
        return false;
    }

    public synchronized String toString() {
        return "FragmentBuffer [" + this.buffer.length + ", " + this.fragments + "]";
    }

    public synchronized void updateFrom(FragmentBuffer fragmentBuffer) {
        for (Fragment fragment : fragmentBuffer.fragments) {
            addFragment(fragment.offset, fragmentBuffer.buffer, fragment.offset, fragment.length);
        }
    }
}
