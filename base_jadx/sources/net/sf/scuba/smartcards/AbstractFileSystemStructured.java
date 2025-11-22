package net.sf.scuba.smartcards;

/* loaded from: classes2.dex */
public abstract class AbstractFileSystemStructured implements FileSystemStructured {
    public static final short MF_ID = 16128;
    private ISOFileInfo fileInfo;
    private int length;

    /* renamed from: p2, reason: collision with root package name */
    private int f10878p2;
    private int selectLe;
    private short selectedFID;
    private CardService service;

    public AbstractFileSystemStructured(CardService cardService) {
        this.selectedFID = (short) 0;
        this.length = -1;
        this.f10878p2 = 0;
        this.selectLe = 256;
        this.fileInfo = null;
        this.service = cardService;
    }

    public AbstractFileSystemStructured(CardService cardService, boolean z10) {
        this.selectedFID = (short) 0;
        this.length = -1;
        this.f10878p2 = 0;
        this.selectLe = 256;
        this.fileInfo = null;
        this.service = cardService;
        this.f10878p2 = z10 ? 0 : 12;
        this.selectLe = z10 ? 256 : 0;
    }

    private CommandAPDU createSelectFileAPDU(int r11, int r12, byte[] bArr, int r14) {
        return r14 == 0 ? new CommandAPDU(0, -92, r11, r12, bArr) : new CommandAPDU(0, -92, r11, r12, bArr, r14);
    }

    private void selectFile(short s7, int r52) throws CardServiceException {
        selectFile(s7 == 0 ? new byte[0] : new byte[]{(byte) ((s7 >> 8) & 255), (byte) (s7 & 255)}, r52);
    }

    private void selectFile(byte[] bArr, int r42) throws CardServiceException {
        ResponseAPDU responseAPDUTransmit = this.service.transmit(createSelectFileAPDU(r42, this.f10878p2, bArr, this.selectLe));
        int sw = responseAPDUTransmit.getSW();
        byte[] data = responseAPDUTransmit.getData();
        if (sw != -28672) {
            throw new CardServiceException("File could not be selected.", sw);
        }
        ISOFileInfo iSOFileInfo = new ISOFileInfo(data);
        this.fileInfo = iSOFileInfo;
        short s7 = iSOFileInfo.fid;
        if (s7 != -1) {
            this.selectedFID = s7;
        }
        int r32 = iSOFileInfo.fileLength;
        if (r32 != -1) {
            this.length = r32;
        }
    }

    public int getFileLength() throws CardServiceException {
        return this.length;
    }

    public short getSelectedFID() {
        return this.selectedFID;
    }

    @Override // net.sf.scuba.smartcards.FileSystemStructured
    public abstract byte[] readBinary(int r12, int r22);

    public void selectAID(byte[] bArr) throws CardServiceException {
        selectFile(bArr, 4);
    }

    public void selectDFRelative(short s7) throws CardServiceException {
        selectFile(s7, 1);
    }

    public void selectEFRelative(short s7) throws CardServiceException {
        selectFile(s7, 2);
    }

    @Override // net.sf.scuba.smartcards.FileSystemStructured
    public void selectFile(short s7) throws CardServiceException {
        selectFile(s7, 0);
    }

    public void selectMF() throws CardServiceException {
        selectFile((short) 0, 0);
    }

    public void selectParent() throws CardServiceException {
        selectFile((short) 0, 3);
    }

    public void selectPath(byte[] bArr) throws CardServiceException {
        selectFile(bArr, 8);
    }

    public void selectPathRelative(byte[] bArr) throws CardServiceException {
        selectFile(bArr, 9);
    }
}
