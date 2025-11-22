package net.sf.scuba.tlv;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public class TLVOutputStream extends OutputStream {
    private DataOutputStream outputStream;
    private TLVOutputState state;

    public TLVOutputStream(OutputStream outputStream) {
        this.outputStream = outputStream instanceof DataOutputStream ? (DataOutputStream) outputStream : new DataOutputStream(outputStream);
        this.state = new TLVOutputState();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.state.canBeWritten()) {
            throw new IllegalStateException("Cannot close stream yet, illegal TLV state.");
        }
        this.outputStream.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.outputStream.flush();
    }

    @Override // java.io.OutputStream
    public void write(int r42) throws IOException {
        write(new byte[]{(byte) r42}, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int r32, int r42) throws IOException {
        if (this.state.isAtStartOfTag()) {
            throw new IllegalStateException("Cannot write value bytes yet. Need to write a tag first.");
        }
        if (this.state.isAtStartOfLength()) {
            this.state.setDummyLengthProcessed();
        }
        this.state.updateValueBytesProcessed(bArr, r32, r42);
        if (this.state.canBeWritten()) {
            this.outputStream.write(bArr, r32, r42);
        }
    }

    public void writeLength(int r32) throws IOException {
        byte[] lengthAsBytes = TLVUtil.getLengthAsBytes(r32);
        this.state.setLengthProcessed(r32);
        if (this.state.canBeWritten()) {
            this.outputStream.write(lengthAsBytes);
        }
    }

    public void writeTag(int r32) throws IOException {
        byte[] tagAsBytes = TLVUtil.getTagAsBytes(r32);
        if (this.state.canBeWritten()) {
            this.outputStream.write(tagAsBytes);
        }
        this.state.setTagProcessed(r32);
    }

    public void writeValue(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("Cannot write null.");
        }
        if (this.state.isAtStartOfTag()) {
            throw new IllegalStateException("Cannot write value bytes yet. Need to write a tag first.");
        }
        if (this.state.isAtStartOfLength()) {
            writeLength(bArr.length);
            write(bArr);
        } else {
            write(bArr);
            this.state.updatePreviousLength(bArr.length);
        }
    }

    public void writeValueEnd() throws IOException {
        if (this.state.isAtStartOfLength()) {
            throw new IllegalStateException("Not processing value yet.");
        }
        if (!this.state.isAtStartOfTag() || this.state.isDummyLengthSet()) {
            byte[] value = this.state.getValue();
            int length = value.length;
            this.state.updatePreviousLength(length);
            if (this.state.canBeWritten()) {
                this.outputStream.write(TLVUtil.getLengthAsBytes(length));
                this.outputStream.write(value);
            }
        }
    }
}
