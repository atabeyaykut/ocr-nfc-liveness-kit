package net.sf.scuba.tlv;

import androidx.appcompat.widget.v;
import androidx.browser.browseractions.a;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;

/* loaded from: classes2.dex */
class TLVInputState {
    private boolean isAtStartOfLength;
    private boolean isAtStartOfTag;
    private boolean isReadingValue;
    private Deque<TLStruct> state;

    public class TLStruct {
        private int length;
        private int tag;
        private int valueBytesRead;

        public TLStruct(TLVInputState tLVInputState, int r42) {
            this(r42, Integer.MAX_VALUE, 0);
        }

        public TLStruct(int r22, int r32, int r42) {
            this.tag = r22;
            this.length = r32;
            this.valueBytesRead = r42;
        }

        public TLStruct(TLVInputState tLVInputState, TLStruct tLStruct) {
            this(tLStruct.tag, tLStruct.length, tLStruct.valueBytesRead);
        }

        public int getLength() {
            return this.length;
        }

        public int getTag() {
            return this.tag;
        }

        public int getValueBytesProcessed() {
            return this.valueBytesRead;
        }

        public void setLength(int r12) {
            this.length = r12;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("[TLStruct ");
            sb2.append(Integer.toHexString(this.tag));
            sb2.append(", ");
            sb2.append(this.length);
            sb2.append(", ");
            return a.b(sb2, this.valueBytesRead, "]");
        }

        public void updateValueBytesProcessed(int r22) {
            this.valueBytesRead += r22;
        }
    }

    public TLVInputState() {
        this(new ArrayDeque(), true, false, false);
    }

    private TLVInputState(Deque<TLStruct> deque, boolean z10, boolean z11, boolean z12) {
        this.state = deque;
        this.isAtStartOfTag = z10;
        this.isAtStartOfLength = z11;
        this.isReadingValue = z12;
    }

    public TLVInputState(TLVInputState tLVInputState) {
        this(tLVInputState.getDeepCopyOfState(), tLVInputState.isAtStartOfTag, tLVInputState.isAtStartOfLength, tLVInputState.isReadingValue);
    }

    private Deque<TLStruct> getDeepCopyOfState() {
        ArrayDeque arrayDeque = new ArrayDeque(this.state.size());
        Iterator<TLStruct> it = this.state.iterator();
        while (it.hasNext()) {
            arrayDeque.addLast(new TLStruct(this, it.next()));
        }
        return arrayDeque;
    }

    public int getLength() {
        if (this.state.isEmpty()) {
            throw new IllegalStateException("Length not yet known.");
        }
        return this.state.peek().getLength();
    }

    public int getTag() {
        if (this.state.isEmpty()) {
            throw new IllegalStateException("Tag not yet read.");
        }
        return this.state.peek().getTag();
    }

    public int getValueBytesLeft() {
        if (this.state.isEmpty()) {
            throw new IllegalStateException("Length of value is unknown.");
        }
        TLStruct tLStructPeek = this.state.peek();
        return tLStructPeek.getLength() - tLStructPeek.getValueBytesProcessed();
    }

    public int getValueBytesProcessed() {
        return this.state.peek().getValueBytesProcessed();
    }

    public boolean isAtStartOfLength() {
        return this.isAtStartOfLength;
    }

    public boolean isAtStartOfTag() {
        return this.isAtStartOfTag;
    }

    public boolean isProcessingValue() {
        return this.isReadingValue;
    }

    public void setDummyLengthProcessed() {
        this.isAtStartOfTag = false;
        this.isAtStartOfLength = false;
        this.isReadingValue = true;
    }

    public void setLengthProcessed(int r32, int r42) {
        if (r32 < 0) {
            StringBuilder sbE = v.e("Cannot set negative length (length = ", r32, ", 0x");
            sbE.append(Integer.toHexString(r32));
            sbE.append(" for tag ");
            sbE.append(Integer.toHexString(getTag()));
            sbE.append(").");
            throw new IllegalArgumentException(sbE.toString());
        }
        TLStruct tLStructPop = this.state.pop();
        if (!this.state.isEmpty()) {
            this.state.peek().updateValueBytesProcessed(r42);
        }
        tLStructPop.setLength(r32);
        this.state.push(tLStructPop);
        this.isAtStartOfTag = false;
        this.isAtStartOfLength = false;
        this.isReadingValue = true;
    }

    public void setTagProcessed(int r22, int r32) {
        TLStruct tLStruct = new TLStruct(this, r22);
        if (!this.state.isEmpty()) {
            this.state.peek().updateValueBytesProcessed(r32);
        }
        this.state.push(tLStruct);
        this.isAtStartOfTag = false;
        this.isAtStartOfLength = true;
        this.isReadingValue = false;
    }

    public String toString() {
        return this.state.toString();
    }

    public void updateValueBytesProcessed(int r72) {
        if (this.state.isEmpty()) {
            return;
        }
        TLStruct tLStructPeek = this.state.peek();
        int length = tLStructPeek.getLength() - tLStructPeek.getValueBytesProcessed();
        if (r72 > length) {
            StringBuilder sbF = androidx.constraintlayout.core.a.f("Cannot process ", r72, " bytes! Only ", length, " bytes left in this TLV object ");
            sbF.append(tLStructPeek);
            throw new IllegalArgumentException(sbF.toString());
        }
        tLStructPeek.updateValueBytesProcessed(r72);
        int length2 = tLStructPeek.getLength();
        if (tLStructPeek.getValueBytesProcessed() != length2) {
            this.isAtStartOfTag = false;
            this.isAtStartOfLength = false;
            this.isReadingValue = true;
        } else {
            this.state.pop();
            updateValueBytesProcessed(length2);
            this.isAtStartOfTag = true;
            this.isAtStartOfLength = false;
            this.isReadingValue = false;
        }
    }
}
