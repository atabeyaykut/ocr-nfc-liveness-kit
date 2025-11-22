.class Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/scuba/tlv/TLVOutputState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TLVStruct"
.end annotation


# instance fields
.field private isLengthSet:Z

.field private length:I

.field private tag:I

.field final synthetic this$0:Lnet/sf/scuba/tlv/TLVOutputState;

.field private value:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lnet/sf/scuba/tlv/TLVOutputState;I)V
    .locals 6

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;-><init>(Lnet/sf/scuba/tlv/TLVOutputState;IIZ[B)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/scuba/tlv/TLVOutputState;IIZ[B)V
    .locals 0

    iput-object p1, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->this$0:Lnet/sf/scuba/tlv/TLVOutputState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->tag:I

    iput p3, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->length:I

    iput-boolean p4, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->isLengthSet:Z

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->value:Ljava/io/ByteArrayOutputStream;

    if-eqz p5, :cond_0

    :try_start_0
    invoke-virtual {p1, p5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lnet/sf/scuba/tlv/TLVOutputState;->access$100()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string p4, "Exception writing bytes in memory"

    invoke-virtual {p2, p3, p4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Lnet/sf/scuba/tlv/TLVOutputState;Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;)V
    .locals 6

    iget v2, p2, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->tag:I

    iget v3, p2, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->length:I

    iget-boolean v4, p2, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->isLengthSet:Z

    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getValue()[B

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;-><init>(Lnet/sf/scuba/tlv/TLVOutputState;IIZ[B)V

    return-void
.end method

.method public static synthetic access$000(Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->isLengthSet:Z

    return p0
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget v0, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->length:I

    return v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->tag:I

    return v0
.end method

.method public getValue()[B
    .locals 1

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->value:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getValueBytesProcessed()I
    .locals 1

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->value:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public isLengthSet()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->isLengthSet:Z

    return v0
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->length:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->isLengthSet:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->value:Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "[TLVStruct "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->tag:I

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ", "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v3, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->isLengthSet:Z

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    iget v3, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->length:I

    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string v3, "UNDEFINED"

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "("

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    array-length v0, v0

    .line 60
    const-string v2, ") ]"

    .line 61
    .line 62
    invoke-static {v1, v0, v2}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->value:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method
