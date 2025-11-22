.class public final Lnc/l;
.super Lnc/d1;
.source "SourceFile"


# instance fields
.field public final e:Lnc/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/j<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnc/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/j<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnc/d1;-><init>()V

    iput-object p1, p0, Lnc/l;->e:Lnc/j;

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnc/f1;->K()Lnc/g1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lnc/l;->e:Lnc/j;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lnc/j;->l(Lnc/g1;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0}, Lnc/j;->p()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, v0, Lnc/j;->d:Lp9/d;

    .line 20
    .line 21
    check-cast v1, Lkotlinx/coroutines/internal/g;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lkotlinx/coroutines/internal/g;->l(Ljava/lang/Throwable;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :goto_0
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lnc/j;->x(Ljava/lang/Throwable;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lnc/j;->p()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lnc/j;->i()V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_1
    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lnc/l;->J(Ljava/lang/Throwable;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
