.class public final Lkotlinx/coroutines/sync/a;
.super Lnc/g;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/sync/i;

.field public final b:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/i;I)V
    .locals 0

    invoke-direct {p0}, Lnc/g;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/sync/a;->a:Lkotlinx/coroutines/sync/i;

    iput p2, p0, Lkotlinx/coroutines/sync/a;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/sync/a;->a:Lkotlinx/coroutines/sync/i;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlinx/coroutines/sync/h;->e:Lkotlinx/coroutines/internal/u;

    .line 7
    .line 8
    iget-object v1, p1, Lkotlinx/coroutines/sync/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 9
    .line 10
    iget v2, p0, Lkotlinx/coroutines/sync/a;->b:I

    .line 11
    .line 12
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlinx/coroutines/internal/s;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sget v1, Lkotlinx/coroutines/sync/h;->f:I

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/e;->c()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/e;->d()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CancelSemaphoreAcquisitionHandler["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lkotlinx/coroutines/sync/a;->a:Lkotlinx/coroutines/sync/i;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lkotlinx/coroutines/sync/a;->b:I

    .line 19
    .line 20
    const/16 v2, 0x5d

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/a;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
