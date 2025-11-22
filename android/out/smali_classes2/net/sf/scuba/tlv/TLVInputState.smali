.class Lnet/sf/scuba/tlv/TLVInputState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    }
.end annotation


# instance fields
.field private isAtStartOfLength:Z

.field private isAtStartOfTag:Z

.field private isReadingValue:Z

.field private state:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lnet/sf/scuba/tlv/TLVInputState$TLStruct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lnet/sf/scuba/tlv/TLVInputState;-><init>(Ljava/util/Deque;ZZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Deque;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lnet/sf/scuba/tlv/TLVInputState$TLStruct;",
            ">;ZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    iput-boolean p2, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    iput-boolean p3, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    iput-boolean p4, p0, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    return-void
.end method

.method public constructor <init>(Lnet/sf/scuba/tlv/TLVInputState;)V
    .locals 3

    invoke-direct {p1}, Lnet/sf/scuba/tlv/TLVInputState;->getDeepCopyOfState()Ljava/util/Deque;

    move-result-object v0

    iget-boolean v1, p1, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    iget-boolean v2, p1, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    iget-boolean p1, p1, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    invoke-direct {p0, v0, v1, v2, p1}, Lnet/sf/scuba/tlv/TLVInputState;-><init>(Ljava/util/Deque;ZZZ)V

    return-void
.end method

.method private getDeepCopyOfState()Ljava/util/Deque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lnet/sf/scuba/tlv/TLVInputState$TLStruct;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    new-instance v3, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    invoke-direct {v3, p0, v2}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;-><init>(Lnet/sf/scuba/tlv/TLVInputState;Lnet/sf/scuba/tlv/TLVInputState$TLStruct;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getLength()I
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getLength()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Length not yet known."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()I
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getTag()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tag not yet read."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueBytesLeft()I
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getLength()I

    move-result v1

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getValueBytesProcessed()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Length of value is unknown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueBytesProcessed()I
    .locals 1

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getValueBytesProcessed()I

    move-result v0

    return v0
.end method

.method public isAtStartOfLength()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    return v0
.end method

.method public isAtStartOfTag()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    return v0
.end method

.method public isProcessingValue()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    return v0
.end method

.method public setDummyLengthProcessed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    iput-boolean v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    return-void
.end method

.method public setLengthProcessed(II)V
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    .line 10
    .line 11
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    .line 26
    .line 27
    invoke-virtual {v1, p2}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->updateValueBytesProcessed(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->setLength(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    .line 40
    .line 41
    iput-boolean p1, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string v0, "Cannot set negative length (length = "

    .line 50
    .line 51
    const-string v1, ", 0x"

    .line 52
    .line 53
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/v;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, " for tag "

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lnet/sf/scuba/tlv/TLVInputState;->getTag()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, ")."

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p2
.end method

.method public setTagProcessed(II)V
    .locals 1

    new-instance v0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    invoke-direct {v0, p0, p1}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;-><init>(Lnet/sf/scuba/tlv/TLVInputState;I)V

    iget-object p1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    invoke-virtual {p1, p2}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->updateValueBytesProcessed(I)V

    :cond_0
    iget-object p1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    iput-boolean p1, p0, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateValueBytesProcessed(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    .line 17
    .line 18
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getLength()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getValueBytesProcessed()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    if-gt p1, v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->updateValueBytesProcessed(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getLength()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getValueBytesProcessed()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x1

    .line 41
    const/4 v2, 0x0

    .line 42
    if-ne v0, p1, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lnet/sf/scuba/tlv/TLVInputState;->updateValueBytesProcessed(I)V

    .line 50
    .line 51
    .line 52
    iput-boolean v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    .line 53
    .line 54
    iput-boolean v2, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    .line 55
    .line 56
    iput-boolean v2, p0, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iput-boolean v2, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    .line 60
    .line 61
    iput-boolean v2, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    .line 62
    .line 63
    iput-boolean v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string v3, "Cannot process "

    .line 69
    .line 70
    const-string v4, " bytes! Only "

    .line 71
    .line 72
    const-string v5, " bytes left in this TLV object "

    .line 73
    .line 74
    invoke-static {v3, p1, v4, v1, v5}, Landroidx/constraintlayout/core/a;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v2
.end method
