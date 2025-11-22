.class Lnet/sf/scuba/tlv/TLVOutputState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private isAtStartOfLength:Z

.field private isAtStartOfTag:Z

.field private isReadingValue:Z

.field private state:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "net.sf.scuba.tlv"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/sf/scuba/tlv/TLVOutputState;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lnet/sf/scuba/tlv/TLVOutputState;-><init>(Ljava/util/Deque;ZZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Deque;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;",
            ">;ZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    iput-boolean p2, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfTag:Z

    iput-boolean p3, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfLength:Z

    iput-boolean p4, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isReadingValue:Z

    return-void
.end method

.method public constructor <init>(Lnet/sf/scuba/tlv/TLVOutputState;)V
    .locals 3

    invoke-direct {p1}, Lnet/sf/scuba/tlv/TLVOutputState;->getDeepCopyOfState()Ljava/util/Deque;

    move-result-object v0

    iget-boolean v1, p1, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfTag:Z

    iget-boolean v2, p1, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfLength:Z

    iget-boolean p1, p1, Lnet/sf/scuba/tlv/TLVOutputState;->isReadingValue:Z

    invoke-direct {p0, v0, v1, v2, p1}, Lnet/sf/scuba/tlv/TLVOutputState;-><init>(Ljava/util/Deque;ZZZ)V

    return-void
.end method

.method public static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lnet/sf/scuba/tlv/TLVOutputState;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private getDeepCopyOfState()Ljava/util/Deque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    new-instance v3, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    invoke-direct {v3, p0, v2}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;-><init>(Lnet/sf/scuba/tlv/TLVOutputState;Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public canBeWritten()Z
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    invoke-virtual {v1}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->isLengthSet()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getLength()I
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getLength()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Length not yet knwon."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Length not yet known."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()I
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getTag()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tag not yet read."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()[B
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getValue()[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueBytesLeft()I
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getLength()I

    move-result v1

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getValueBytesProcessed()I

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

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getValueBytesProcessed()I

    move-result v0

    return v0
.end method

.method public isAtStartOfLength()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfLength:Z

    return v0
.end method

.method public isAtStartOfTag()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfTag:Z

    return v0
.end method

.method public isDummyLengthSet()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->isLengthSet()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isProcessingValue()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isReadingValue:Z

    return v0
.end method

.method public setDummyLengthProcessed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfTag:Z

    iput-boolean v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfLength:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isReadingValue:Z

    return-void
.end method

.method public setLengthProcessed(I)V
    .locals 5

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    .line 10
    .line 11
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    .line 27
    .line 28
    invoke-static {p1}, Lnet/sf/scuba/tlv/TLVUtil;->getLengthAsBytes(I)[B

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    array-length v4, v3

    .line 33
    invoke-virtual {v1, v3, v2, v4}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->write([BII)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->setLength(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-boolean v2, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfTag:Z

    .line 45
    .line 46
    iput-boolean v2, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfLength:Z

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isReadingValue:Z

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v1, "Cannot set negative length (length = "

    .line 55
    .line 56
    const-string v2, ")."

    .line 57
    .line 58
    invoke-static {v1, p1, v2}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public setTagProcessed(I)V
    .locals 4

    new-instance v0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    invoke-direct {v0, p0, p1}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;-><init>(Lnet/sf/scuba/tlv/TLVOutputState;I)V

    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    invoke-static {p1}, Lnet/sf/scuba/tlv/TLVUtil;->getTagAsBytes(I)[B

    move-result-object p1

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->write([BII)V

    :cond_0
    iget-object p1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    iput-boolean v2, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfTag:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfLength:Z

    iput-boolean v2, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isReadingValue:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatePreviousLength(I)V
    .locals 3

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    invoke-static {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->access$000(Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getLength()I

    move-result v1

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->setLength(I)V

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getValueBytesProcessed()I

    move-result v1

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getLength()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    invoke-static {p1}, Lnet/sf/scuba/tlv/TLVUtil;->getLengthAsBytes(I)[B

    move-result-object p1

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getValue()[B

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lnet/sf/scuba/tlv/TLVOutputState;->updateValueBytesProcessed([BII)V

    array-length p1, v0

    invoke-virtual {p0, v0, v2, p1}, Lnet/sf/scuba/tlv/TLVOutputState;->updateValueBytesProcessed([BII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfTag:Z

    iput-boolean v2, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfLength:Z

    iput-boolean v2, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isReadingValue:Z

    :cond_2
    return-void
.end method

.method public updateValueBytesProcessed([BII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

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
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;

    .line 17
    .line 18
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getLength()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getValueBytesProcessed()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    if-gt p3, v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->write([BII)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getValueBytesProcessed()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getLength()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const/4 p3, 0x1

    .line 41
    const/4 v1, 0x0

    .line 42
    if-ne p1, p2, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->state:Ljava/util/Deque;

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getValue()[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVOutputState$TLVStruct;->getLength()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-virtual {p0, p1, v1, p2}, Lnet/sf/scuba/tlv/TLVOutputState;->updateValueBytesProcessed([BII)V

    .line 58
    .line 59
    .line 60
    iput-boolean p3, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfTag:Z

    .line 61
    .line 62
    iput-boolean v1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfLength:Z

    .line 63
    .line 64
    iput-boolean v1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isReadingValue:Z

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iput-boolean v1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfTag:Z

    .line 68
    .line 69
    iput-boolean v1, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isAtStartOfLength:Z

    .line 70
    .line 71
    iput-boolean p3, p0, Lnet/sf/scuba/tlv/TLVOutputState;->isReadingValue:Z

    .line 72
    .line 73
    :goto_0
    return-void

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string p2, "Cannot process "

    .line 77
    .line 78
    const-string v2, " bytes! Only "

    .line 79
    .line 80
    const-string v3, " bytes left in this TLV object "

    .line 81
    .line 82
    invoke-static {p2, p3, v2, v1, v3}, Landroidx/constraintlayout/core/a;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method
