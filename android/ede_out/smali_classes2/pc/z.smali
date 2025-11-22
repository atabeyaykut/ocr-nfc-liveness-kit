.class public Lpc/z;
.super Lpc/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lpc/x;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final e:Lnc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/i<",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lnc/j;)V
    .locals 0

    invoke-direct {p0}, Lpc/x;-><init>()V

    iput-object p1, p0, Lpc/z;->d:Ljava/lang/Object;

    iput-object p2, p0, Lpc/z;->e:Lnc/i;

    return-void
.end method


# virtual methods
.method public final J()V
    .locals 1

    iget-object v0, p0, Lpc/z;->e:Lnc/i;

    invoke-interface {v0}, Lnc/i;->g()V

    return-void
.end method

.method public final K()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lpc/z;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final L(Lpc/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/k<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lpc/k;->P()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    move-result-object p1

    iget-object v0, p0, Lpc/z;->e:Lnc/i;

    invoke-interface {v0, p1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final M(Lkotlinx/coroutines/internal/j$c;)Lkotlinx/coroutines/internal/u;
    .locals 4

    sget-object v0, Ll9/m;->a:Ll9/m;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lkotlinx/coroutines/internal/j$c;->c:Lkotlinx/coroutines/internal/j$a;

    :goto_0
    iget-object v3, p0, Lpc/z;->e:Lnc/i;

    invoke-interface {v3, v0, v2}, Lnc/i;->d(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/coroutines/internal/u;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j$c;->d()V

    :goto_1
    sget-object p1, Lc5/w;->g:Lkotlinx/coroutines/internal/u;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lnc/c0;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x28

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lpc/z;->d:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x29

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method
