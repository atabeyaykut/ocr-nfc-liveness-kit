package org.bouncycastle.crypto.generators;

import androidx.appcompat.widget.v;
import androidx.camera.core.impl.a;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.Blake2bDigest;
import org.bouncycastle.crypto.params.Argon2Parameters;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Longs;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class Argon2BytesGenerator {
    private static final int ARGON2_ADDRESSES_IN_BLOCK = 128;
    private static final int ARGON2_BLOCK_SIZE = 1024;
    private static final int ARGON2_PREHASH_DIGEST_LENGTH = 64;
    private static final int ARGON2_PREHASH_SEED_LENGTH = 72;
    private static final int ARGON2_QWORDS_IN_BLOCK = 128;
    private static final int ARGON2_SYNC_POINTS = 4;
    private static final long M32L = 4294967295L;
    private static final int MAX_PARALLELISM = 16777216;
    private static final int MIN_ITERATIONS = 1;
    private static final int MIN_OUTLEN = 4;
    private static final int MIN_PARALLELISM = 1;
    private static final byte[] ZERO_BYTES = new byte[4];
    private int laneLength;
    private Block[] memory;
    private Argon2Parameters parameters;
    private int segmentLength;

    public static class Block {
        private static final int SIZE = 128;

        /* renamed from: v, reason: collision with root package name */
        private final long[] f11540v;

        private Block() {
            this.f11540v = new long[128];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void copyBlock(Block block) {
            System.arraycopy(block.f11540v, 0, this.f11540v, 0, 128);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void xor(Block block, Block block2) {
            long[] jArr = this.f11540v;
            long[] jArr2 = block.f11540v;
            long[] jArr3 = block2.f11540v;
            for (int r12 = 0; r12 < 128; r12++) {
                jArr[r12] = jArr2[r12] ^ jArr3[r12];
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void xorWith(Block block) {
            long[] jArr = this.f11540v;
            long[] jArr2 = block.f11540v;
            for (int r12 = 0; r12 < 128; r12++) {
                jArr[r12] = jArr[r12] ^ jArr2[r12];
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void xorWith(Block block, Block block2) {
            long[] jArr = this.f11540v;
            long[] jArr2 = block.f11540v;
            long[] jArr3 = block2.f11540v;
            for (int r12 = 0; r12 < 128; r12++) {
                jArr[r12] = jArr[r12] ^ (jArr2[r12] ^ jArr3[r12]);
            }
        }

        public Block clear() {
            Arrays.fill(this.f11540v, 0L);
            return this;
        }

        public void fromBytes(byte[] bArr) {
            if (bArr.length < 1024) {
                throw new IllegalArgumentException("input shorter than blocksize");
            }
            Pack.littleEndianToLong(bArr, 0, this.f11540v);
        }

        public void toBytes(byte[] bArr) {
            if (bArr.length < 1024) {
                throw new IllegalArgumentException("output shorter than blocksize");
            }
            Pack.longToLittleEndian(this.f11540v, bArr, 0);
        }
    }

    public static class FillBlock {
        Block R;
        Block Z;
        Block addressBlock;
        Block inputBlock;

        private FillBlock() {
            this.R = new Block();
            this.Z = new Block();
            this.addressBlock = new Block();
            this.inputBlock = new Block();
        }

        private void applyBlake() {
            for (int r22 = 0; r22 < 8; r22++) {
                int r32 = r22 * 16;
                Argon2BytesGenerator.roundFunction(this.Z, r32, r32 + 1, r32 + 2, r32 + 3, r32 + 4, r32 + 5, r32 + 6, r32 + 7, r32 + 8, r32 + 9, r32 + 10, r32 + 11, r32 + 12, r32 + 13, r32 + 14, r32 + 15);
            }
            for (int r12 = 0; r12 < 8; r12++) {
                int r23 = r12 * 2;
                Argon2BytesGenerator.roundFunction(this.Z, r23, r23 + 1, r23 + 16, r23 + 17, r23 + 32, r23 + 33, r23 + 48, r23 + 49, r23 + 64, r23 + 65, r23 + 80, r23 + 81, r23 + 96, r23 + 97, r23 + 112, r23 + 113);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillBlock(Block block, Block block2) {
            this.Z.copyBlock(block);
            applyBlake();
            block2.xor(block, this.Z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillBlock(Block block, Block block2, Block block3) {
            this.R.xor(block, block2);
            this.Z.copyBlock(this.R);
            applyBlake();
            block3.xor(this.R, this.Z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillBlockWithXor(Block block, Block block2, Block block3) {
            this.R.xor(block, block2);
            this.Z.copyBlock(this.R);
            applyBlake();
            block3.xorWith(this.R, this.Z);
        }
    }

    public static class Position {
        int lane;
        int pass;
        int slice;
    }

    private static void F(long[] jArr, int r22, int r32, int r42, int r52) {
        quarterRound(jArr, r22, r32, r52, 32);
        quarterRound(jArr, r42, r52, r32, 24);
        quarterRound(jArr, r22, r32, r52, 16);
        quarterRound(jArr, r42, r52, r32, 63);
    }

    private static void addByteString(byte[] bArr, Digest digest, byte[] bArr2) {
        if (bArr2 == null) {
            digest.update(ZERO_BYTES, 0, 4);
            return;
        }
        Pack.intToLittleEndian(bArr2.length, bArr, 0);
        digest.update(bArr, 0, 4);
        digest.update(bArr2, 0, bArr2.length);
    }

    private void digest(byte[] bArr, byte[] bArr2, int r82, int r92) {
        Block block = this.memory[this.laneLength - 1];
        for (int r12 = 1; r12 < this.parameters.getLanes(); r12++) {
            int r32 = this.laneLength;
            block.xorWith(this.memory[(r32 - 1) + (r12 * r32)]);
        }
        block.toBytes(bArr);
        hash(bArr, bArr2, r82, r92);
    }

    private void doInit(Argon2Parameters argon2Parameters) {
        int memory = argon2Parameters.getMemory();
        if (memory < argon2Parameters.getLanes() * 8) {
            memory = argon2Parameters.getLanes() * 8;
        }
        int lanes = memory / (argon2Parameters.getLanes() * 4);
        this.segmentLength = lanes;
        this.laneLength = lanes * 4;
        initMemory(argon2Parameters.getLanes() * 4 * lanes);
    }

    private void fillFirstBlocks(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[72];
        System.arraycopy(bArr2, 0, bArr3, 0, 64);
        bArr3[64] = 1;
        for (int r22 = 0; r22 < this.parameters.getLanes(); r22++) {
            Pack.intToLittleEndian(r22, bArr2, 68);
            Pack.intToLittleEndian(r22, bArr3, 68);
            hash(bArr2, bArr, 0, 1024);
            this.memory[(this.laneLength * r22) + 0].fromBytes(bArr);
            hash(bArr3, bArr, 0, 1024);
            this.memory[(this.laneLength * r22) + 1].fromBytes(bArr);
        }
    }

    private void fillMemoryBlocks() {
        FillBlock fillBlock = new FillBlock();
        Position position = new Position();
        for (int r32 = 0; r32 < this.parameters.getIterations(); r32++) {
            position.pass = r32;
            for (int r42 = 0; r42 < 4; r42++) {
                position.slice = r42;
                for (int r52 = 0; r52 < this.parameters.getLanes(); r52++) {
                    position.lane = r52;
                    fillSegment(fillBlock, position);
                }
            }
        }
    }

    private void fillSegment(FillBlock fillBlock, Position position) {
        Block block;
        Block block2;
        boolean zIsDataIndependentAddressing = isDataIndependentAddressing(position);
        int startingIndex = getStartingIndex(position);
        int r12 = a.d(position.slice, this.segmentLength, position.lane * this.laneLength, startingIndex);
        int prevOffset = getPrevOffset(r12);
        if (zIsDataIndependentAddressing) {
            Block blockClear = fillBlock.addressBlock.clear();
            Block blockClear2 = fillBlock.inputBlock.clear();
            initAddressBlocks(fillBlock, position, blockClear2, blockClear);
            block = blockClear;
            block2 = blockClear2;
        } else {
            block = null;
            block2 = null;
        }
        boolean zIsWithXor = isWithXor(position);
        int r14 = startingIndex;
        int r15 = r12;
        int r16 = prevOffset;
        while (r14 < this.segmentLength) {
            long pseudoRandom = getPseudoRandom(fillBlock, r14, block, block2, r16, zIsDataIndependentAddressing);
            int refLane = getRefLane(position, pseudoRandom);
            int refColumn = getRefColumn(position, r14, pseudoRandom, refLane == position.lane);
            Block[] blockArr = this.memory;
            Block block3 = blockArr[r16];
            Block block4 = blockArr[(this.laneLength * refLane) + refColumn];
            Block block5 = blockArr[r15];
            if (zIsWithXor) {
                fillBlock.fillBlockWithXor(block3, block4, block5);
            } else {
                fillBlock.fillBlock(block3, block4, block5);
            }
            r14++;
            r16 = r15;
            r15++;
        }
    }

    private int getPrevOffset(int r32) {
        return r32 % this.laneLength == 0 ? (r32 + r0) - 1 : r32 - 1;
    }

    private long getPseudoRandom(FillBlock fillBlock, int r22, Block block, Block block2, int r52, boolean z10) {
        if (!z10) {
            return this.memory[r52].f11540v[0];
        }
        int r23 = r22 % 128;
        if (r23 == 0) {
            nextAddresses(fillBlock, block2, block);
        }
        return block.f11540v[r23];
    }

    private int getRefColumn(Position position, int r72, long j10, boolean z10) {
        int r73;
        int r6;
        int r02 = position.pass;
        int r22 = 0;
        int r62 = position.slice;
        if (r02 != 0) {
            int r03 = this.segmentLength;
            int r32 = this.laneLength;
            int r63 = ((r62 + 1) * r03) % r32;
            int r33 = r32 - r03;
            if (z10) {
                r73 = (r33 + r72) - 1;
            } else {
                r73 = r33 + (r72 != 0 ? 0 : -1);
            }
            r22 = r63;
            r6 = r73;
        } else if (z10) {
            r6 = ((r62 * this.segmentLength) + r72) - 1;
        } else {
            r6 = (r62 * this.segmentLength) + (r72 != 0 ? 0 : -1);
        }
        long j11 = j10 & 4294967295L;
        return ((int) (r22 + ((r6 - 1) - ((r6 * ((j11 * j11) >>> 32)) >>> 32)))) % this.laneLength;
    }

    private int getRefLane(Position position, long j10) {
        int lanes = (int) ((j10 >>> 32) % this.parameters.getLanes());
        return (position.pass == 0 && position.slice == 0) ? position.lane : lanes;
    }

    private static int getStartingIndex(Position position) {
        return (position.pass == 0 && position.slice == 0) ? 2 : 0;
    }

    private void hash(byte[] bArr, byte[] bArr2, int r92, int r10) {
        byte[] bArr3 = new byte[4];
        Pack.intToLittleEndian(r10, bArr3, 0);
        if (r10 <= 64) {
            Blake2bDigest blake2bDigest = new Blake2bDigest(r10 * 8);
            blake2bDigest.update(bArr3, 0, 4);
            blake2bDigest.update(bArr, 0, bArr.length);
            blake2bDigest.doFinal(bArr2, r92);
            return;
        }
        Blake2bDigest blake2bDigest2 = new Blake2bDigest(512);
        byte[] bArr4 = new byte[64];
        blake2bDigest2.update(bArr3, 0, 4);
        blake2bDigest2.update(bArr, 0, bArr.length);
        blake2bDigest2.doFinal(bArr4, 0);
        System.arraycopy(bArr4, 0, bArr2, r92, 32);
        int r93 = r92 + 32;
        int r12 = 2;
        int r02 = ((r10 + 31) / 32) - 2;
        while (r12 <= r02) {
            blake2bDigest2.update(bArr4, 0, 64);
            blake2bDigest2.doFinal(bArr4, 0);
            System.arraycopy(bArr4, 0, bArr2, r93, 32);
            r12++;
            r93 += 32;
        }
        Blake2bDigest blake2bDigest3 = new Blake2bDigest((r10 - (r02 * 32)) * 8);
        blake2bDigest3.update(bArr4, 0, 64);
        blake2bDigest3.doFinal(bArr2, r93);
    }

    private void initAddressBlocks(FillBlock fillBlock, Position position, Block block, Block block2) {
        block.f11540v[0] = intToLong(position.pass);
        block.f11540v[1] = intToLong(position.lane);
        block.f11540v[2] = intToLong(position.slice);
        block.f11540v[3] = intToLong(this.memory.length);
        block.f11540v[4] = intToLong(this.parameters.getIterations());
        block.f11540v[5] = intToLong(this.parameters.getType());
        if (position.pass == 0 && position.slice == 0) {
            nextAddresses(fillBlock, block, block2);
        }
    }

    private void initMemory(int r42) {
        this.memory = new Block[r42];
        int r43 = 0;
        while (true) {
            Block[] blockArr = this.memory;
            if (r43 >= blockArr.length) {
                return;
            }
            blockArr[r43] = new Block();
            r43++;
        }
    }

    private void initialize(byte[] bArr, byte[] bArr2, int r72) {
        Blake2bDigest blake2bDigest = new Blake2bDigest(512);
        Pack.intToLittleEndian(new int[]{this.parameters.getLanes(), r72, this.parameters.getMemory(), this.parameters.getIterations(), this.parameters.getVersion(), this.parameters.getType()}, bArr, 0);
        blake2bDigest.update(bArr, 0, 24);
        addByteString(bArr, blake2bDigest, bArr2);
        addByteString(bArr, blake2bDigest, this.parameters.getSalt());
        addByteString(bArr, blake2bDigest, this.parameters.getSecret());
        addByteString(bArr, blake2bDigest, this.parameters.getAdditional());
        byte[] bArr3 = new byte[72];
        blake2bDigest.doFinal(bArr3, 0);
        fillFirstBlocks(bArr, bArr3);
    }

    private long intToLong(int r52) {
        return r52 & 4294967295L;
    }

    private boolean isDataIndependentAddressing(Position position) {
        if (this.parameters.getType() != 1) {
            return this.parameters.getType() == 2 && position.pass == 0 && position.slice < 2;
        }
        return true;
    }

    private boolean isWithXor(Position position) {
        return (position.pass == 0 || this.parameters.getVersion() == 16) ? false : true;
    }

    private void nextAddresses(FillBlock fillBlock, Block block, Block block2) {
        long[] jArr = block.f11540v;
        jArr[6] = jArr[6] + 1;
        fillBlock.fillBlock(block, block2);
        fillBlock.fillBlock(block2, block2);
    }

    private static void quarterRound(long[] jArr, int r13, int r14, int r15, int r16) {
        long j10 = jArr[r13];
        long j11 = jArr[r14];
        long j12 = jArr[r15];
        long jB = v.b((j10 & 4294967295L) * 2, j11 & 4294967295L, j11, j10);
        long jRotateRight = Longs.rotateRight(j12 ^ jB, r16);
        jArr[r13] = jB;
        jArr[r15] = jRotateRight;
    }

    private void reset() {
        if (this.memory == null) {
            return;
        }
        int r02 = 0;
        while (true) {
            Block[] blockArr = this.memory;
            if (r02 >= blockArr.length) {
                return;
            }
            Block block = blockArr[r02];
            if (block != null) {
                block.clear();
            }
            r02++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void roundFunction(Block block, int r17, int r18, int r19, int r20, int r21, int r22, int r23, int r24, int r25, int r26, int r27, int r28, int r29, int r30, int r31, int r32) {
        long[] jArr = block.f11540v;
        F(jArr, r17, r21, r25, r29);
        F(jArr, r18, r22, r26, r30);
        F(jArr, r19, r23, r27, r31);
        F(jArr, r20, r24, r28, r32);
        F(jArr, r17, r22, r27, r32);
        F(jArr, r18, r23, r28, r29);
        F(jArr, r19, r24, r25, r30);
        F(jArr, r20, r21, r26, r31);
    }

    public int generateBytes(byte[] bArr, byte[] bArr2) {
        return generateBytes(bArr, bArr2, 0, bArr2.length);
    }

    public int generateBytes(byte[] bArr, byte[] bArr2, int r42, int r52) {
        if (r52 < 4) {
            throw new IllegalStateException("output length less than 4");
        }
        byte[] bArr3 = new byte[1024];
        initialize(bArr3, bArr, r52);
        fillMemoryBlocks();
        digest(bArr3, bArr2, r42, r52);
        reset();
        return r52;
    }

    public int generateBytes(char[] cArr, byte[] bArr) {
        return generateBytes(this.parameters.getCharToByteConverter().convert(cArr), bArr);
    }

    public int generateBytes(char[] cArr, byte[] bArr, int r42, int r52) {
        return generateBytes(this.parameters.getCharToByteConverter().convert(cArr), bArr, r42, r52);
    }

    public void init(Argon2Parameters argon2Parameters) {
        this.parameters = argon2Parameters;
        if (argon2Parameters.getLanes() < 1) {
            throw new IllegalStateException("lanes must be greater than 1");
        }
        if (argon2Parameters.getLanes() > 16777216) {
            throw new IllegalStateException("lanes must be less than 16777216");
        }
        if (argon2Parameters.getMemory() >= argon2Parameters.getLanes() * 2) {
            if (argon2Parameters.getIterations() < 1) {
                throw new IllegalStateException("iterations is less than: 1");
            }
            doInit(argon2Parameters);
        } else {
            throw new IllegalStateException("memory is less than: " + (argon2Parameters.getLanes() * 2) + " expected " + (argon2Parameters.getLanes() * 2));
        }
    }
}
