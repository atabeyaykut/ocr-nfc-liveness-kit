.class Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/scuba/tlv/TLVInputState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TLStruct"
.end annotation


# instance fields
.field private length:I

.field private tag:I

.field final synthetic this$0:Lnet/sf/scuba/tlv/TLVInputState;

.field private valueBytesRead:I


# direct methods
.method public constructor <init>(Lnet/sf/scuba/tlv/TLVInputState;I)V
    .locals 2

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;-><init>(Lnet/sf/scuba/tlv/TLVInputState;III)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/scuba/tlv/TLVInputState;III)V
    .locals 0

    iput-object p1, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->this$0:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->tag:I

    iput p3, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->length:I

    iput p4, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->valueBytesRead:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/scuba/tlv/TLVInputState;Lnet/sf/scuba/tlv/TLVInputState$TLStruct;)V
    .locals 2

    iget v0, p2, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->tag:I

    iget v1, p2, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->length:I

    iget p2, p2, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->valueBytesRead:I

    invoke-direct {p0, p1, v0, v1, p2}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;-><init>(Lnet/sf/scuba/tlv/TLVInputState;III)V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget v0, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->length:I

    return v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->tag:I

    return v0
.end method

.method public getValueBytesProcessed()I
    .locals 1

    iget v0, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->valueBytesRead:I

    return v0
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->length:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[TLStruct "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->tag:I

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->length:I

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->valueBytesRead:I

    .line 31
    .line 32
    const-string v2, "]"

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public updateValueBytesProcessed(I)V
    .locals 1

    iget v0, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->valueBytesRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->valueBytesRead:I

    return-void
.end method
