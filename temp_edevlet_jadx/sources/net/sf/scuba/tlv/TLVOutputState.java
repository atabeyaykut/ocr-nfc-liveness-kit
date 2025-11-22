package net.sf.scuba.tlv;

import androidx.browser.browseractions.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.util.Hex;

/* loaded from: classes2.dex */
class TLVOutputState {
    private static final Logger LOGGER = Logger.getLogger("net.sf.scuba.tlv");
    private boolean isAtStartOfLength;
    private boolean isAtStartOfTag;
    private boolean isReadingValue;
    private Deque<TLVStruct> state;

    public class TLVStruct {
        private boolean isLengthSet;
        private int length;
        private int tag;
        private ByteArrayOutputStream value;

        public TLVStruct(TLVOutputState tLVOutputState, int r82) {
            this(r82, Integer.MAX_VALUE, false, null);
        }

        public TLVStruct(int r22, int r32, boolean z10, byte[] bArr) throws IOException {
            this.tag = r22;
            this.length = r32;
            this.isLengthSet = z10;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.value = byteArrayOutputStream;
            if (bArr != null) {
                try {
                    byteArrayOutputStream.write(bArr);
                } catch (IOException e10) {
                    TLVOutputState.LOGGER.log(Level.FINE, "Exception writing bytes in memory", (Throwable) e10);
                }
            }
        }

        public TLVStruct(TLVOutputState tLVOutputState, TLVStruct tLVStruct) {
            this(tLVStruct.tag, tLVStruct.length, tLVStruct.isLengthSet, tLVStruct.getValue());
        }

        public int getLength() {
            return this.length;
        }

        public int getTag() {
            return this.tag;
        }

        public byte[] getValue() {
            return this.value.toByteArray();
        }

        public int getValueBytesProcessed() {
            return this.value.size();
        }

        public boolean isLengthSet() {
            return this.isLengthSet;
        }

        public void setLength(int r12) {
            this.length = r12;
            this.isLengthSet = true;
        }

        public String toString() {
            byte[] byteArray = this.value.toByteArray();
            StringBuilder sb2 = new StringBuilder("[TLVStruct ");
            sb2.append(Integer.toHexString(this.tag));
            sb2.append(", ");
            sb2.append(this.isLengthSet ? Integer.valueOf(this.length) : "UNDEFINED");
            sb2.append(", ");
            sb2.append(Hex.bytesToHexString(byteArray));
            sb2.append("(");
            return a.b(sb2, byteArray.length, ") ]");
        }

        public void write(byte[] bArr, int r32, int r42) {
            this.value.write(bArr, r32, r42);
        }
    }

    public TLVOutputState() {
        this(new ArrayDeque(), true, false, false);
    }

    private TLVOutputState(Deque<TLVStruct> deque, boolean z10, boolean z11, boolean z12) {
        this.state = deque;
        this.isAtStartOfTag = z10;
        this.isAtStartOfLength = z11;
        this.isReadingValue = z12;
    }

    public TLVOutputState(TLVOutputState tLVOutputState) {
        this(tLVOutputState.getDeepCopyOfState(), tLVOutputState.isAtStartOfTag, tLVOutputState.isAtStartOfLength, tLVOutputState.isReadingValue);
    }

    private Deque<TLVStruct> getDeepCopyOfState() {
        ArrayDeque arrayDeque = new ArrayDeque(this.state.size());
        Iterator<TLVStruct> it = this.state.iterator();
        while (it.hasNext()) {
            arrayDeque.add(new TLVStruct(this, it.next()));
        }
        return arrayDeque;
    }

    public boolean canBeWritten() {
        Iterator<TLVStruct> it = this.state.iterator();
        while (it.hasNext()) {
            if (!it.next().isLengthSet()) {
                return false;
            }
        }
        return true;
    }

    public int getLength() {
        if (this.state.isEmpty()) {
            throw new IllegalStateException("Length not yet known.");
        }
        int length = this.state.peek().getLength();
        if (length >= 0) {
            return length;
        }
        throw new IllegalStateException("Length not yet knwon.");
    }

    public int getTag() {
        if (this.state.isEmpty()) {
            throw new IllegalStateException("Tag not yet read.");
        }
        return this.state.peek().getTag();
    }

    public byte[] getValue() {
        if (this.state.isEmpty()) {
            throw new IllegalStateException("Cannot get value yet.");
        }
        return this.state.peek().getValue();
    }

    public int getValueBytesLeft() {
        if (this.state.isEmpty()) {
            throw new IllegalStateException("Length of value is unknown.");
        }
        TLVStruct tLVStructPeek = this.state.peek();
        return tLVStructPeek.getLength() - tLVStructPeek.getValueBytesProcessed();
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

    public boolean isDummyLengthSet() {
        if (this.state.isEmpty()) {
            return false;
        }
        return !this.state.peek().isLengthSet();
    }

    public boolean isProcessingValue() {
        return this.isReadingValue;
    }

    public void setDummyLengthProcessed() {
        this.isAtStartOfTag = false;
        this.isAtStartOfLength = false;
        this.isReadingValue = true;
    }

    public void setLengthProcessed(int r6) {
        if (r6 < 0) {
            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("Cannot set negative length (length = ", r6, ")."));
        }
        TLVStruct tLVStructPop = this.state.pop();
        if (!this.state.isEmpty()) {
            TLVStruct tLVStructPeek = this.state.peek();
            byte[] lengthAsBytes = TLVUtil.getLengthAsBytes(r6);
            tLVStructPeek.write(lengthAsBytes, 0, lengthAsBytes.length);
        }
        tLVStructPop.setLength(r6);
        this.state.push(tLVStructPop);
        this.isAtStartOfTag = false;
        this.isAtStartOfLength = false;
        this.isReadingValue = true;
    }

    public void setTagProcessed(int r52) {
        TLVStruct tLVStruct = new TLVStruct(this, r52);
        if (!this.state.isEmpty()) {
            TLVStruct tLVStructPeek = this.state.peek();
            byte[] tagAsBytes = TLVUtil.getTagAsBytes(r52);
            tLVStructPeek.write(tagAsBytes, 0, tagAsBytes.length);
        }
        this.state.push(tLVStruct);
        this.isAtStartOfTag = false;
        this.isAtStartOfLength = true;
        this.isReadingValue = false;
    }

    public String toString() {
        return this.state.toString();
    }

    public void updatePreviousLength(int r42) {
        if (this.state.isEmpty()) {
            return;
        }
        TLVStruct tLVStructPeek = this.state.peek();
        if (tLVStructPeek.isLengthSet && tLVStructPeek.getLength() == r42) {
            return;
        }
        tLVStructPeek.setLength(r42);
        if (tLVStructPeek.getValueBytesProcessed() == tLVStructPeek.getLength()) {
            this.state.pop();
            byte[] lengthAsBytes = TLVUtil.getLengthAsBytes(r42);
            byte[] value = tLVStructPeek.getValue();
            updateValueBytesProcessed(lengthAsBytes, 0, lengthAsBytes.length);
            updateValueBytesProcessed(value, 0, value.length);
            this.isAtStartOfTag = true;
            this.isAtStartOfLength = false;
            this.isReadingValue = false;
        }
    }

    public void updateValueBytesProcessed(byte[] bArr, int r6, int r72) {
        if (this.state.isEmpty()) {
            return;
        }
        TLVStruct tLVStructPeek = this.state.peek();
        int length = tLVStructPeek.getLength() - tLVStructPeek.getValueBytesProcessed();
        if (r72 > length) {
            StringBuilder sbF = androidx.constraintlayout.core.a.f("Cannot process ", r72, " bytes! Only ", length, " bytes left in this TLV object ");
            sbF.append(tLVStructPeek);
            throw new IllegalArgumentException(sbF.toString());
        }
        tLVStructPeek.write(bArr, r6, r72);
        if (tLVStructPeek.getValueBytesProcessed() != tLVStructPeek.getLength()) {
            this.isAtStartOfTag = false;
            this.isAtStartOfLength = false;
            this.isReadingValue = true;
        } else {
            this.state.pop();
            updateValueBytesProcessed(tLVStructPeek.getValue(), 0, tLVStructPeek.getLength());
            this.isAtStartOfTag = true;
            this.isAtStartOfLength = false;
            this.isReadingValue = false;
        }
    }
}
